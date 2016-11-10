LPC5411x Cyclic Redundancy Check (CRC) generator example
========================================================

Example description
-------------------
The CRC example demonstrates using the CRC engine for 8-bit, 16-bit, and
32-bit CRC computation. The CRC engine will continuously run via CRC
computations and verify the CRC checksum. The system tick is used to
occasionally introduce CRC errors into the expected data. The board LED
will turn on for an error and turn off for no errors.

Special connection requirements
-------------------------------
There are no special connection requirements for this example.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
