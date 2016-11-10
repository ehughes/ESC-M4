LPC5411x Pin Interrupt example
==============================

Example description
-------------------
The Pin interrupt example demonstrates how to configure pin interrupts 
to generate an interrupt and wake up from sleep, deep sleep, and power down state.

This example configures a pin interrupt as a falling edge interrupt.
The WAKEUP/SW1 switch generates the interrupt signal to the input.

The application will sleep spin in a loop.  With every pin interrupt the 
board LED0 will be toggled.

Sleep modes can be selected by changing the PDOWNMODE define.  For this example,
the possible modes are POWER_SLEEP, POWER_DEEP_SLEEP.

POWER_DEEP_SLEEP2 is the same as POWER_DEEP_SLEEP but the FLASH too is disabled.
To wake from this mode, the wake function must be located in RAM.

To wake from POWER_DEEP_POWER_DOWN a RESET must be done.

Special connection requirements
-------------------------------
There are no special connection requirements for this example.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
