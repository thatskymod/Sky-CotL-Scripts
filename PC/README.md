# That Sky Mod V2.2.0 by @XeTrinityz

### Added
```diff
+ Player Options > Camera > Filters > Filter Intensity
+ Player Options > Camera > Filters > Filter
+ Network Options > Friends List > Delete
+ Progression Tools > Wax > Summon Candles
+ Progression Tools > Map
+ Progression Tools > Misc > Quests > Skip Intro Sequence
+ Outfit Options > Misc > Tattered Cape
+ Overlay > Context Menu > Copy Coordinates
```

### Removed
```diff
- Unlock Options > Collectibles > Collect
- Unlock Options > Collectibles > Drop
```

### Updates & Fixes
- **Collectibles**
  - Implemented a new method that eliminates the need for manual "dropping"
  - Owned collectibles are no longer visible

- **Candle ESP**
  - Now uses in-game pointers instead of reading from Candles.json
  - Replaces the "Candle" label with a visual candle icon

- **Godmode**
  - Includes the features of Defanged Krills

- **Semi CR, Semi WLR & Semi Eden**
  - Teleportation now logs the name of the location instead of coordinates

- **Fixed**
  - **Defanged Krills:** Resolved an issue causing crashes when attacked by a Krill
  - **Semi WLR:** Correctly retrieves the current level
  - **Save Outfit:** Hats are now saved under the appropriate key

### Installation Instructions
1. Download and install `VC_redist.x64` provided from this release.
2. Download `TSM.zip` from this release.
3. Download `SML` from the official repo here: [https://github.com/lukas0x1/sml-pc/releases](https://github.com/lukas0x1/sml-pc/releases).
4. Right click the game in Steam and go to `Manage > Browse Local Files`.
5. **SML:** Extract `powrprof.dll`, `sml_config.json` and the `fonts` & `mods` folders into the root of the game's directory where `Sky.exe` is located.
6. **TSM:** Extract `TSM.dll` and the `TSM Resources` folder into the `mods` folder.

