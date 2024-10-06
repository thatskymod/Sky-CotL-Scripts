# That Sky Mod V2.5.1 by @XeTrinityz

## Added
```diff
+ Player Options > Misc > Interactive Menus > Remote Keyboard Menu
+ Player Options > Misc > Interactive Menus > Constellation Quick Menu
+ Player Options > Misc > Interactive Menus > Control Input Menu
+ Player Options > Misc > Interactive Menus > Random Game Menu
+ Player > Misc > Facades > Increase All Currencies
+ Player > Misc > Facades > Decrease All Currencies
+ Player > Misc > Facades > Enable Candle Collection
+ Player > Misc > Facades > Enable Currency Notifications
+ Player > Misc > Facades > All Friends Gifted Hearts
+ Player > Misc > Facades > All Friends Gifted Light 
+ Player > Misc > Facades > All Friends Online
+ Progression > Misc > Shops > All Shop Items
+ World > Gameplay > Disable Gravity
+ World > Visuals > Shrink UI
+ World > Visuals > Enlarge UI
+ World > Visuals > Disable Constellation Zoom
+ World > Visuals > Show Author IDs
+ Music > Instrument Options > Misc > Disable Dynamic Button Sizing
+ Music > Instrument Options > Misc > Enable Reverb
+ Music > Instrument Options > Misc > Disable Lines
+ Music > Instrument Options > Misc > Disable Bouncing Star
+ Settings > General > Reload Files
+ Settings > General > Discord RPC
```

## Updates & Fixes
- Start Auto Run
  - Stability improvements

- Disconnect Session Loop
  - Stability Improvements

- Logs
  - In addition to displaying logs in the menu, they will now also be saved in a file named `TSM.log`

- Backend
  - Optimization

## Automated Installation Instructions
1. Download `ThatSkyApp.exe` from this release and run it
2. Click `Install` (If a folder selection dialog appears, you need to select your game folder)
3. Click `Launch Sky`

## Manual Installation Instructions
1. Download and install `VC_redist.x64` [here](https://aka.ms/vs/17/release/vc_redist.x64.exe)
2. Download `TSM.zip` from this release
3. Download `SML` from the official repo [here](https://github.com/lukas0x1/sml-pc/releases)
4. Right click the game in Steam and go to **Manage > Browse Local Files**
5. SML: Extract `powrprof.dll`, `sml_config.json` and the `fonts` & `mods` folders into the root of the game's directory where Sky.exe is located
6. TSM: Extract `TSM.dll` and the `TSM Resources` folder into the `mods` folder
