LPC5411x Multi-Rate Timer example
=================================

Example description
-------------------
The MRT example demonstrates using the Multi-Rate Timer API functions.
This example configures timers 0 and 1 as periodic interrupts that
blink LED0. Timer 2 is configured as a one-shot interrupt that gets
reset in the interrupt handler. Timer 3 is setup as a one-shot interrupt
that gets reset in the background loop.

Special connection requirements
-------------------------------
There are no special connection requirements for this example.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
