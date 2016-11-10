LPC5411x Brown-out detector example
===================================

Example description
-------------------
The brown-out example shows how to use the brown-out detector (BOD)
on the LPC5411x. The BOD is setup to generate a BOD interrupt when
power drops below the highest BOD detection level. The interrupt will
attempt to light the RED LED on when this happens.

To use this example, build and program it and then run it on the board.

At power-up, the reset status register is tested to determine the reset source.
All reset sources are sent to UART0 -- connected through the CMSIS-DAP.
If a brown-out reset occured, the LED will be white. If no brown-out reset
occured, the LED will be green.

After one second, the LED will blink Magenta at 1Hz.

Power off the board by removing the power (USB) cable. As the power is
declining on the board, the RED LED will illuminate then turn-off as power is lost.

Also, a test GPIO line (P0_6 located at J1-18) is asserted when the BOD interrupt occurs.

Special connection requirements
-------------------------------
There are no special connection requirements for this example.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
