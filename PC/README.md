# That Sky Mod V3.2.0 by @XeTrinityz

## Added

```diff
+ Player > Misc > Entity Interactions > Spawn Butterflies
+ Player > Misc > Avatar Actions > Join Random Game\r\n+ Outfit > Dyes > Apply Dye
+ Outfit > Dyes > Remove Dye\r\n+ Progression > Wax Tools > Start Wax Tools Auto Run
+ World > Environment > Rain Intensity
+ World > Events > Get Start Time
+ World > ESP > Darkstone ESP
```

## Removed
```diff
- Player > Misc > Random Game Joiner
```

## Updates & Fixes
- Show Cursor
  - This can now be set in keybinds

- Keybinds
  - Now supports mouse controls

- Combo Boxes
  - The background opacity of combo boxes is set to maximum when expanded

- Commands
  - /post now supports the following format examples
    1. `/post /account/collect_pickup_batch -c level_id:1694829989 -c pickup_ids:[325463124, 5183528, 1474552153, 674149054, 1252953490] -c global_pickup_ids:[] -c emitters:[] `
    2. `/post /account/get_spirit_shops -c l:1000 -c o:0 -c v:0`

- Fixes
  - Auto Play Music Sheets
  - Instrument Easy Mode

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
