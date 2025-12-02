# Welcome to Canvas!

## What's Canvas?
- ⚙️ **Canvas**, also known as **Sky Modloader**, is a lightweight wrapper around the Sky app made by [@artdeell](https://github.com/artdeell) and [@lukas0x1](https://github.com/lukas0x1). It takes up a sole **~15 MB** of storage and hooks into Sky at runtime, thus acting as "bridge" and providing an interface that developers can build plug-ins on top of. It's completely modular, so you can load existing plug-ins or write your own. The main advantage of Canvas over traditional mods is that it doesn't require elevated privileges or any specific programming skills. Canvas is important, but requires libs to be fully operational.

## Libs?
- 📚 **Userlibs**, or simply **Libs**, are fan-made helper programs (libraries) for Canvas that actually unleash its true power. Some of these libs include Auto CRing, melting, spell modification, or virtually anything as per your liking.

## Available Libs:
- **libTSM** - Android port of *That Sky Mod* by [@XeTrinityz](https://github.com/XeTrinityz), providing a unified mod menu for Sky: Children of the Light. Designed for use with Canvas on Android; regularly updated to match the latest Sky versions.
- **libAuthPuller** - misc/dev library that extracts Sky account identifiers (Sky ID/session ID) at runtime for development, debugging, and automation testing. **Dev-only**: use in controlled environments with explicit consent.

Discontinued - **!! do not use !!**
- **AutoWax** or **libaw4c** - A popular program that utilized the Sky protocol (API) to collect candles, quests, spirits and winged light. Development stopped.
- **libdukun** - A successor to libaw4c, later merged into the larger and more comprehensive liblangit.
- **libLangit** - Discontinued as a Canvas library. Now a closed, paywalled standalone APK (Dukun Langit), not open-source and reliant on private servers for no good reason. Obfuscated and unauditable; users report bans and telemetry. For safety and user trust, we strongly recommend not using libLangit/Dukun Langit. Prefer mods and libraries backed by responsible, user-respecting communities.
- **libsMite** - Universal mod with Semi-AutoCR, Auto burn, Relationship unlocks, etc. No further updates.
- **reHell** or **libgxost** - Universal mod, no longer maintained
- **libHellboy** - Universal mod, no longer maintained
- **libRomanDev** - Redirects all game traffic to the Dev server (a private server reserved for TGC staff). Access is now restricted.
- **libRomanBeta** - Mod for Sky Beta, now defunct after TGC closed and unpublished the beta builds of their game.

> [!NOTE]
> These add-ons are fan-made and can have advantages (or otherwise cause trouble) depending on the author's intentions. As for the current repository though, mods undergo a quick plausibility review, so they should generally be safe to use.

## System Requirements:
- A mobile phone capable of running Sky and Android not less than version 8.0 (Oreo)
- Root is not necessary, but a basic understanding of sideloading, navigating the filesystem and technical troubleshooting might come in handy
- Apple iOS and emulators are not supported

## Getting Started

1. Download **Canvas.apk** from [here](https://github.com/XeTrinityz/ThatSkyMod-Android/releases/latest) and **AutoWax** from [here](https://github.com/thatskymod/Sky-CotL-Scripts/blob/main/Canvas/Libs/libLangit057.so).
2. Open your File Manager and navigate to your **Downloads** (e.g. `/storage/emulated/0/Download/`).
3. Tap on **Canvas.apk**. If prompted, allow the installation from unknown sources and proceed.
4. Find the newly added **"Canvas"** in your app drawer. It looks somewhat like a black and white icon resembling a clock.
5. Hit **"Add Mod"** on the top left of the **"Mods"** section.
6. Navigate to your downloads and import **libLangit.so**.
7. Repeat step 6 for any other mods you might have.
8. Select your Sky version from underneath the **"Play"** section, sign in to Sky and enjoy!

## Updating old Mods
To update your existing mods (files ending in *.so), do the following:
1. Find and download a newer version of your mod.
2. Navigate to the **Canvas** on your home screen.
3. **Remove** the desired mod. To do so, press the 🗑️ (recycle bin) icon next to its name.
4. Tap **"Add Mod"** > locate your new mod > import it.
5. Confirm that the mod has been imported successfully.
6. Your mod is updated and ready to use!

## Is Canvas safe?
- Canvas, at its core, is generally [safe](https://www.virustotal.com/gui/file/4fd94cb32ea814070449e628e3bee6283664c8a5953a0df99b5eb1b244496a56) from a programming standpoint, with its source code being [available](https://github.com/artdeell/Canvas-Open-Source) to the public. This contributes to transparency, and allows others to view, use, modify, and reproduce its source code. Canvas does permit modifications, from either direct or third-party sources, to take complete charge of your Sky instance, which includes the ability to access your account information and more. Exercising discretion and considering user reviews prior to usage is strongly recommended. Certain modifications present features viewed as 'risky', such as spam honk, teleportation by coordinates, auto melt, and more. These can attract attention from others and potentially result in reporting to TGC. It's important to note that any actions related to **cheating**, **hacking** or **exploiting** are **expressly forbidden** by TGC's [EULA/ToS](https://thatgamecompany.helpshift.com/hc/en/17-sky-children-of-the-light/faq/460-eula-terms-of-service/). Accounts identified as participating in these activities may be subject to **permanent closure**.

## Knowledge Base
Answers to frequently asked questions and usage guides for particular functions are provided in the [Knowledge Base](./KNOWLEDGE.md).

## Troubleshooting
Please visit the [Troubleshooting Guide](./TROUBLESHOOTING.md) to learn solutions for common problems.

## Credits & Resources
This section has moved to [Credits & Resources](../README.md#credits--resources)
