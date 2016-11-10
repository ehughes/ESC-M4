LPC5411x Simple timer example
=============================

Example description
-------------------
The Timer example uses 2 timers to blink 2 LEDs at different rates. The
timers are configured to generate interrupts upon expiration which is
when the LEDs are toggled. The first timer is Timer 0 set to expire
at 1-second (1Hz) intervals.  The second timer is Timer 1 used with a
prescale value to expire at .5-second (2Hz) intervals. The LED on/off state
should be slightly out of sync.

Special connection requirements
-------------------------------
There are no special connection requirements for this example.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.


