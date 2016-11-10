State Configurable Timer (SCT) PWM example
==========================================

Example description
-------------------
This example, uses the SCT PWM driver to create 2 independent PWMs (running at
the same frequency). The PWM1 is used to output a square wave to an Output pin
and PWM2 is used to control the brightness of the LED, the brightness goes
from 0% to 100% in steps of 0.5% every 20 Milliseconds and goes down to 0% in
the same step. Connect oscilloscope to the PWM OUT pin and the waveform
displayed on the scope will have its duty cycle increasing from 0% to 100% in
steps of 10% every second

Special connection requirements
-------------------------------
LPC54114 LPCXpresso board:
Use PIN1 of J2 as PWM OUT (to Oscilloscope)

Build procedures:
-----------------
Visit the LPCOpen Quick start guide at
[http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
