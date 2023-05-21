---
title: "Finishing up the install"
image: /guides/steam_emulation/steam_big_picture_retrogaming.png
weight: 5
---

### Setup for steam controller

If you have a Steam controller, you may need to set up a custom profile for the emulator. When you enter each game for the first time, make sure to set the profile to avoid incorrect button commands from Steam and undesired results.

Alternatively, you can use an Xbox controller for emulator games. It's more plug and play for emulation on the Steam Link/Big Picture.

### Finished

Sit back on the couch, grab a controller and your favorite beverage, and enjoy!

Many emulators support multiple controllers if the game supports it, so invite your friends over for a game!

### Troubleshooting

**Q. My game is missing from the Steam list!**

A. Check the Ice command line window for information. Is the game listed as being added? Are the console and emulator detected? If not, check your setup for any missing components. Also, ensure that the file extension in the `console.txt` file is correct.

**Q. My game is missing cover art.**

A. Download and set your own custom cover art manually. It's worth the effort!

**Q. The link does nothing in Steam.**

A. Verify if the link is working in Steam. Right-click on the build shortcut in Steam, go to "Properties," and check the target link. You should be able to copy this into a command line and execute it with a working ROM. If it doesn't work, double-check that all paths are correct and make necessary corrections in your config files.

[Steam Controller]: {{< relref "/post/2016/2016-09-18-steam-controller-worthy-addition" >}}
