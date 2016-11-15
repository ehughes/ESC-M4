LPC5411x Wakeup example
=======================

Example description
-------------------
This example shows how to wakeup the chip from the different low power
modes. All power modes are available: sleep, deep sleep, power down, and
deep power down. Note that wakeup from deep power down mode requires a
system reset - the example will determine that this type of wakeup
occurred to properly handle the next wakeup event.

Sleep modes can be selected by changing the PDOWNMODE define.  For this example,
the possible modes are POWER_SLEEP, POWER_DEEP_SLEEP, POWER_POWER_DOWN, and
POWER_DEEP_POWER_DOWN.

The WAKE button is used as the wakup source. The red LED will turn off when
the chip is placed into sleep mode and turn on when the chip is awake.

SPECIAL NOTES:
In sleep mode, all clocks are left enabled. The example tends to mostly use 
FRO as the main clock. The sleep mode example averages approximately TBD uA.

In deep sleep mode, the main clock (and other clocks) are disabled.
Use the WAKE button for wakeup. The deep sleep mode example averages 
approximately TBD uA.

In power down mode, additional clocks are powered down over deep sleep
mode, use the WAKE button for wakeup. When using J6 (link) to power the chip
(and debug), the example uses approximately TBD uA. When using J4 (target) to power
the chip, the example uses approximately TBD uA.

In deep power down mode, All system clocks are disabled. Device wakeup
can occur by asserting the reset pin; RTC and BOD also can be used for
wakeup from this mode. The deep power down mode averages approximately 
 TBD uA.

Power measurement notes
-----------------------
1) Power measurement was taken by removing JS6 and measuring current
across JP4.
2) Power measurements above are for the processor only. The rest of the board was
powered by the standard board power supplies.

Special connection requirements
-------------------------------
There are no special connection requirements for this example.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
