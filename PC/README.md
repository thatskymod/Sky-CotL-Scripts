# That Sky Mod V1.9.5 Latest

@XeTrinityz

# That Sky Mod V1.9.5
## Added
```diff
+ Player Options > Camera > Utilities > Disable Zoom Restrictions
+ Player Options > Camera > Utilities > Disable Camera Rotation
+ Player Options > Camera > Positioning > Custom Zoom Limit
+ Player Options > Camera > Positioning > FOV
+ Player Options > Spells > All
+ Outfit Options > Custom > Settings > Save Outfit
+ Outfit Options > Custom > Settings > Load Outfits
+ Outfit Options > Custom > Preset Outfits
+ World Options > Visuals > Show Player Locations
```
## Removed
```diff
- World Options > Gameplay > Disable Auto Reporting
```
## Updates & Fixes
- Stats
 - The stat names are now retrieved via an endpoint

- Disable UI
 - New method which disables more UI elements

- First Person
 - New method
 - Moved to Player Options > Camera

- Fake Cape Level
 - Now automatically enables when the value is > 0 and disables when < 1

- Disable Auto Reporting
 - This is now enabled by default and can not be disabled

- Teleporting
 - This will no longer place you at ground level regardless of the Y value

- Game Update
 - Updated to Sky V26.3 [279033]

### Installation Instructions
1. Download and install `VC_redist.x64` provided from this release.
2. Download `TSM.zip` from this release.
3. Right click the game in Steam and go to `Manage > Browse Local Files`.
4. Extract `powrprof.dll`, `sml_config.json`, `libcurl.dll`, and the `fonts` & `mods` folders into the root of the game's directory.
5. Launch the game.
