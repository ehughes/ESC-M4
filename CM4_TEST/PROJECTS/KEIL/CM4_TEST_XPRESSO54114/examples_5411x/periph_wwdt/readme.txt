LPC5411x Windowed Watchdog Timer example
========================================

Example description
-------------------
The WWDT example demonstrates the WDT warning trigger interrupt handler.
The watchdog generates a warning WWDT interrupt and then feeds the WWDT
on the warning (the LED0 will toggle on each warning interval cycle).
After 5 warning interrupts the feed is stopped to generates a watchdog reset.

Special connection requirements
-------------------------------
There are no special connection requirements for this example.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
