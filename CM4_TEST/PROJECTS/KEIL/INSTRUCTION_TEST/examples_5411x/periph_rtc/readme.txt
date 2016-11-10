LPC5411x Real-Time clock example
====================

Example description
-------------------
This example shows how to setup and use the RTC and to use the alarm
to wake up the device from a sleep, deep sleep, and power down mode.

Sleep modes can be selected by changing the PDOWNMODE define.  For this example,
the possible modes are POWER_SLEEP, and POWER_DEEP_SLEEP.

The chip will be put to sleep mode and the RTC Wakeup timer will wakeup
the chip at varying intervals. Then the chip will go to a longer sleep and after 
4 seconds, the RTC alarm will wakeup the chip. Each time the chip is woken up by
the RTC the board LED will toggle and debug messages are sent out through the UART.

Special connection requirements
-------------------------------
There are no special connection requirements for this example.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
