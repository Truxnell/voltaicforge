---
title: "Emulator suggestions"
image: /guides/steam_emulation/steam_big_picture_retrogaming.png
weight: 3
---

#### Emulator list

Please note that this is just a guide with some suggestions. There is a selection of emulators available, and your favorite game may work better with a less popular emulator. Feel free to explore beyond this list.

| Console      | Emulator                          | Command Arguments                                                  |
| ------------ | --------------------------------- | ------------------------------------------------------------------ |
| NES          | [RetroArch] (nestopia UE core)    | -f -L d:\Emulation\RetroArch\cores\nestopia_libretro.dll %r        |
| SNES         | [RetroArch] (bsnes balanced Core) | -f -L d:\Emulation\RetroArch\cores\bsnes_balanced_libretro.dll %r  |
| Gamecube     | [Dolphin]                         | --batch --exec=%r                                                  |
| Wii          | [Dolphin]                         | --batch --exec=%r                                                  |
| PS1          | [RetroArch] (mednafen psx core)   | -f -L d:\Emulation\RetroArch\cores\mednafen_psx_libretro.dll %r    |
| PS2          | [PCSX2]                           | --nogui --fullscreen --fullboot %r                                 |
| SEGA Genesis | [RetroArch] (genesis plus core)   | -f -L d:\Emulation\RetroArch\cores\genesis_plus_gx_libretro.dll %r |
| N64          | [RetroArch] (mupen64plus core)    | -f -L d:\Emulation\RetroArch\cores\mupen64plus_libretro.dll %r     |
| Atari 2600   | [RetroArch] (stella core)         | -f -L d:\Emulation\RetroArch\cores\stella_libretro.dll %r          |
| Atari 7800   | [RetroArch] (prosystem core)      | -f -L d:\Emulation\RetroArch\cores\prosystem_libretro.dll %r       |

Another list can be found at the [BigBox forums][LaunchBoxForumPost].
[RetroArch]: https://www.libretro.com/
[LaunchBoxForumPost]: https://forums.launchbox-app.com/topic/28762-command-line-parameters-arguments/
[PCSX2]: http://pcsx2.net/
[Dolphin]: https://dolphin-emu.org
