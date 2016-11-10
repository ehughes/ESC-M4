LPC5411x SPI master and slave example using spim (master) and spis (slave) drivers
==================================================================================

Example description
-------------------
This example shows how to use the SPI master and slave drivers in a simple polled configuration.

The example sends and receive data between the 2 SPI controllers on the device. After
the data is transferred, it's compared for errors.

Make sure JP-6 is fitted to use the PMOD SPI port.

Special connection requirements
-------------------------------
SPI0 - FC5								SPI1 - FC3
SSEL  (J1-15) P1_1 / FC5 SSEL2		SSEL (J4-1) P0_14 / FC3 SSELN0
MOSI  (J1-13) P0_20 / FC5 MOSI		MOSI (J4-2) P0_12 / FC3 MOSI
MISO  (J1-11) P0_18 / FC5 MISO		MISO (J4-3) P0_13 / FC3 MISO
SCK   (J1-9)  P0_19 / FC5 SCK		SCK  (J4-4) P0_11 / FC3 SCK

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
