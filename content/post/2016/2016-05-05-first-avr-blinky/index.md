---
title: 'First AVR LED blinky'
aliases: /electronics/first-avr-blinky/
description: 'First MCU LED blinky upload to test my new programming gear'
image: avr_attiny_2313a_first_blinky.jpg
toc: false
categories:
  - Electronics
tags:
  - AVR
---

## Testing out new AVR Gear

Well, I’ve received the new programmers I ordered. Amongst them was the [Atmel ICE][atmelice], which I have chosen to be the first thing I would test.

I’ve been meaning to get fully into MCU development, but I have to say that the Arduino craze didn’t really grab me. A sketch? Shield? Buy pre-assembled gear and push it together, copy and paste code?

Pass. I prefer to code, learning and assembling circuitry myself and learning code from examples.

I’m actually struggling a bit to find decent tutorials for MCU programming (I can’t be looking in the right places). However, it wasn’t too hard to figure out the pinout of the Atmel-ICE and compare to the pinout of the ATtiny 2313A using the data-sheets. I build a miniature shield that plugged in over the top of the MCU and had a neat little 6-pin plugin header (I may cover it in another post).

{{< hint info >}}
The Atmel-ICE data-sheet nicely doesn’t include the direction of the tab in the user guide. The pinout on the user guide doesn’t include the tab on the 6-pin connector. I have added it to the data-sheet image below - the tabbed connector is on the side of MISO, SCK and RESET (for SPI programming)
{{< /hint >}}

![Pinout of Ateml-ICE SPI 6 pin wire clarified with tab connector](ateml_ice_SPI_pinout_clarified.png)

So after plugging in the programmer I confirmed all was well in Atmel Studio 7. `Tools -> Device programming` gets you to the device programming screen, and selecting `Atmel-ICE` tool and your chosen device (in my case I had the ATTiny 2313A, so I selected `ATtiny2313a` from the device selection). The interface is `ISP` and you can click Apply.

Once this has been selected, you should be able to click on Read for the device signature. If it reads an address and target voltage, you have succeeded.

![Atmel Studio 7 Device programming screen confirming Device signature for ATtiny2313a](atmel_studio_check_device_id.png)

I proceeded to load up a blinky led program to confirm all was well, and well, all was well.

![ATtiny 2313A dual-led blinking circuit](avr_attiny_2313a_first_blinky.jpg)

Out of curiosity, I was interested to know the maximum frequency this would have out of the box on the output pins with no `_delay_ms()`, with its default 1Mhz clock cycle (8Mhz internal oscillator with the CKDIV8 fuse clocking it down to 1MHz)

Whilst I did leave it with two I/O operations per cycle, I did come up with a frequency of 103khz.

![DS1054z showing 103khz for AVR blinking circuit](avr_stock_max_freq_103khz.jpg)

[atmelice]: http://www.atmel.com/tools/atatmel-ice.aspx
