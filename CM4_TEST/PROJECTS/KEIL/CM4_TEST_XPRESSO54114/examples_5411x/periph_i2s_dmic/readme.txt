LPC5411x Audio DMIC / WM8904 demo
=================================

Example description
-------------------
Demonstrates the DMIC working with I2S. Audio is converted to samples in the DMIC module.
Then, the data is placed into the I2S buffer. Last, it is read from the I2S buffer and sent
to the headphone output of the MAO board.

Special connection requirements
-------------------------------
This demo has two connection requirements:
1. Board requirements:
   a. This demo requires the MAO board. It contains the WM8904 CODEC that is used for this demo.
   b. This demo was written on a LPCXpresso 5411x board, PCBrev 1.

2. This demo requires the following jumpers:
   a. On the MAO board, JP-3 must be set on 1-2.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
