LPC5411x UART interrupt example with ring buffers
=================================================

Example description
-------------------
The UART example shows how to use the UART in interrupt mode with transmit
and receive ring buffers.<br>

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

When the ESC (escape key) is pressed, the program exits the primary loop and displays interrupt statistics
before exiting back to the system.  Here is a typical output with notes:

Statistics:
- interrupts: 114			Total number of interrupts processed.
- fifo tx level: 42			TX level interrupt count.
- fifo rx level: 36			RX level interrupt count.
- fifo tx error: 0			TX error interrupt count.
- fifo rx error: 0			RX error interrupt count.
- uart delta CTS: 0			CTS change interrupt count.
- uart delta break: 0		Break change interrupt count.
- uart start count: 36		Character start interrupt count.
- uart framing error: 0		Framing error interrupt count.
- uart parity error: 0		Parity error interrupt count.
- uart rx noise error: 0	RX noisy error interrupt count.
- uart auto baud error: 0	Auto-baud error interrupt count.

Note that in the example, the UART is called UART1 but is connected to Flexcomm 2. There's no requirement for
a UART to have the same ID as the Flexcomm.

Special connection requirements
-------------------------------
Connect a serial cable to the board's Arduino UART port (J2-13 tx, J2-15 rx, J1-4 gnd).

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
