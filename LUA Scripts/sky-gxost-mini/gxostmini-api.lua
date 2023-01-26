local response = gg.makeRequest("https://raw.githubusercontent.com/gxosty/sky-gxost-mini/main/sky-gxost-mini.lua")
load(response.content)()