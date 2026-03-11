// Sky HTTP hook — Frida script
// Usage:  frida -p <PID> -l sky_http_hook.js
//         frida -p <PID> -l sky_http_hook.js > http_log.txt
//
// Hooks the game's AccountServerClient REST pipeline, logging every outgoing
// HTTP request to live.radiance.thatgamecompany.com (method, URL, headers, body).
//
// RVAs confirmed from Sky.exe.c decompilation (Ghidra base 0x140000000):
//   FUN_14006fa90 — request queue / body choke point
//   FUN_140071350 — HTTP/1.1 request line builder
//   FUN_140071430 — per-header appender ("\r\nName: Value")

"use strict";

const base = Process.findModuleByName("Sky.exe")?.base ?? null;
if (!base) {
    console.error("[http_hook] Sky.exe not found");
} else {
    console.log("[http_hook] Sky.exe base: " + base);

    // ── Per-request accumulator (single-threaded HTTP pipeline) ────────────────
    let req = null;

    // ── FUN_14006fa90 — outer request assembly ─────────────────────────────────
    // void* FUN_14006fa90(longlong queue, undefined4* tmp, longlong urlObj, undefined4* bodyObj)
    // urlObj+0x8   = path (null-terminated string)
    // urlObj+0x8e  = host (null-terminated string)
    // bodyObj is undefined4* so pointer arithmetic × 4:
    //   *(bodyObj + 0x204) @ byte offset 0x810 = body char* pointer
    //   bodyObj[0x206]     @ byte offset 0x818 = body size (uint32)
    Interceptor.attach(base.add(0x6fa90), {
        onEnter(args) {
            req = { host: "?", path: "?", method: "?", headers: [], body: "" };
            try {
                const urlObj = args[2];
                req.host = urlObj.add(0x08).readCString() || "?";   // confirmed live
                req.path = urlObj.add(0x8e).readCString() || "?";
            } catch (_) {}
            try {
                const bodyObj = args[3];
                const bodySize = bodyObj.add(0x818).readU32();
                if (bodySize > 0 && bodySize < 0x10000) {
                    const bodyPtr = bodyObj.add(0x810).readPointer();
                    if (!bodyPtr.isNull()) {
                        req.body = bodyPtr.readUtf8String(bodySize) || "";
                    }
                }
            } catch (_) {}
        },
        onLeave(_ret) {
            if (!req) return;
            const hdrs = req.headers.length ? "\n" + req.headers.join("\n") : "";
            const body = req.body ? "\nBODY: " + req.body.slice(0, 1024) : "";
            console.log(
                "\n── HTTP " + req.method + " ──\n" +
                "https://" + req.host + req.path +
                hdrs + body
            );
            req = null;
        }
    });
    console.log("[http_hook] Request queue hooked @ " + base.add(0x6fa90));

    // ── FUN_140071350 — HTTP/1.1 line builder ─────────────────────────────────
    // void FUN_140071350(char *outBuf, longlong reqObj, int method)
    // Writes "METHOD /path HTTP/1.1\r\nHost: host" into outBuf.
    // We read method from args[2] here; the assembled string is a bonus check.
    const METHODS = ["GET", "POST", "PUT", "DELETE"];
    Interceptor.attach(base.add(0x71350), {
        onEnter(args) {
            if (!req) return;
            const m = args[2].toInt32();
            req.method = METHODS[m] ?? ("0x" + m.toString(16));
        }
    });

    // ── FUN_140071430 — per-header appender ───────────────────────────────────
    // void FUN_140071430(char *buf, const char *name, const char *value)
    // Appends "\r\nname: value" to the HTTP header buffer.
    Interceptor.attach(base.add(0x71430), {
        onEnter(args) {
            if (!req) return;
            try {
                const name = args[1].readCString();
                const val  = args[2].readCString();
                if (name && val) req.headers.push(name + ": " + val);
            } catch (_) {}
        }
    });
    console.log("[http_hook] Header hooks attached");

    // ── FUN_140071a60 — HTTP response parser ──────────────────────────────────
    // int FUN_140071a60(int *respStruct, int *rawData, int byteCount, undefined8 outBuf)
    // Called each time the HTTP client feeds raw TCP bytes into the response parser.
    // rawData points to the start of the HTTP response text (may be called multiple
    // times for chunked or fragmented responses).
    Interceptor.attach(base.add(0x71a60), {
        onEnter(args) {
            const size = args[2].toInt32();
            if (size <= 0 || size > 0x80000) return;
            try {
                const raw = args[1].readUtf8String(size) || "";
                if (!raw) return;
                // Trim to 4 KB so logs stay readable; status+headers are always first.
                console.log("\n── HTTP RESPONSE (" + size + " B) ──\n" + raw.slice(0, 4096));
            } catch (_) {}
        }
    });
    console.log("[http_hook] Response parser hooked @ " + base.add(0x71a60));
}
