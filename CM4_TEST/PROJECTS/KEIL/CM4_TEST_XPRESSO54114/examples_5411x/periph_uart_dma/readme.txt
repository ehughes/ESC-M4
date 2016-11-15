LPC5411x UART interrupt example with DMA
========================================

Example description
-------------------
The UART example shows how to use the UART in DMA mode.

The LPC54114 LPCxpresso board has three possible UART connections:
1)	UART0 (FLEXCOMM 0) is connected through the CMSIS DAP processor.
	This will appear as an "LPC-LinkII UCom Port (COMx).
	It is part of the CMSIS DAP USB connection.
2)	UART0 (FLEXCOMM 0) is also connected to P3, an FTDI 3V3 RS-232 to USB cable interface.
3)	UART1 (FLEXCOMM 2) (P0-9:tx / P0-8:rx) is connected to J2-13/J2-15.
	This is the Arduino interface. This is the port that works with this example.

To use the example, connect a serial cable to the board's Arduino UART port (J2-13 tx, J2-15 rx, J1-4 gnd)
and start a terminal program to monitor the port.  The terminal program on the host PC should be setup for
115200-8-N-1. Once the example is started, a small message is printed on terminal. Any data received will be
sent back through the UART port. The RED LED will blink for every character recevied.

Special connection requirements
-------------------------------
Connect a serial cable to the board's Arduino UART port (J2-13 tx, J2-15 rx, J1-4 gnd).

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
