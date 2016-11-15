LPC5411x PLL setup example
==========================

Example description
-------------------
This example shows how to setup and use the clock driver to
generate different PLL rates at run-time. The example will
switch the main system clock to the safe (IRC) clock, set a
new PLL frequency, and then the main system clock to the PLL.

The example also attempts to estimate the generated PLL frequency
and routes it out to the CLKOUT pin (divided by 10). The requested
PLL rate, estimated PLL rate, and CLKOUT rate are displayed on the
DEBUG output.

Press the WAKE button on the board to advance to the next PLL
rate. Attach an oscilloscope to the CLKOUT pin to monitor PLL
rate changes and output frequency.

Special connection requirements
-------------------------------
There are no special connection requirements for this example.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
