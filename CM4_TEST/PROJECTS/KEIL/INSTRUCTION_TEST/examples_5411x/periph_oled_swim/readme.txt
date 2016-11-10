LPC5411x OLED SWIM shield example
=================================

Example description
-------------------
This example demonstrates SWIM on an OLED display. The interface to the OLED is SPI.
When the demo starts, it creates a SWIM window and displays it on the OLED.
It does not put any additional graphics on the screen. There are three buttons that 
enable / disable the various graphics demos:

Press SW1 (WAKE) to bring up a graphics demo. This demo has two parts.
Part 1 centers an NXP logo on the display. The logo is
displayed in four different orientations: normal, left, inverted, right.
The logo is placed bit-for-bit. That is, it is not scaled.
Note that when the image is rendered normal or inverted, the first 12 lines are
not displayed.
Part 2 centers a car bitmap on the display.  The bitmap is also displayed in four
different orientations: normal, left, inverted, right.
The car bitmap is scaled as it is placed on the screen.
This demo updates every 2 seconds.

Press SW2 (ISP0) to bring up a Lines / Figures demo.
This demo "bounces" a small diamond around the window.
This demo updates every 50ms.

Press SW3 (ISP1) to bring up a Text / Fonts demo.
This demo shows a short string (tick count) on the screen. SWIM has six different
fonts that are built with the library.  If a font is not being used it can be 
removed from the build. 
This demo updates every second.

The display is updated every 50ms and is done out of phase with the other updates.

Notes:
1) Any or all of the three demo's described above can be shown at once.
2) There is a Z order that is built into the objects.
	a) The Tick display (fonts) is on top.
	b) The diamond (lines) is in the middle.
	c) The NXP logo / car picture (bitmaps) is in the back.
3) SWIM supports several configurations.  Review the source code for details.
4) There are two low level I/O files: oled_io.c and oled_io_bb.c. oled_io.c uses the SPI
   port to drive the data to the OLED. oled_io_bb.c uses "bit bang" to output the SPI
   commands bit-by-bit via software.

Special connection requirements
-------------------------------
This demo requires the Microphone, Audio, OLED (MAO) shield.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
