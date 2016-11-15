LPC5411x I2CM bus master example using interrupts
=================================================

Example description
-------------------
This demo supports scanning, reading and writing devices on the I2C bus.
When started it sends a simple menu to the serial port.

**************** I2C Demo Menu ****************
        0: Exit Demo
        1: Select I2C peripheral [I2C0]
        2: Toggle mode POLLING/INTERRUPT/DMA [POLLING]
        3: Probe for Slave devices
        4: Read slave data
        5: Write slave data
        6: Write/Read slave data
Select an option [0 - 6]:
0: Exit Demo
This selection exits the demo.

1: Select I2C peripheral [I2C0]
This selection doesn't do anything.  It does indicate the I2C port in use.

2: Toggle mode POLLING/INTERRUPT/DMA [POLLING]
This selection sets one of three I2C operational modes.

3: Probe for Slave devices
This selection probes the I2C port for devices.  It outputs the following status codes as it probes the bus:
er -- unknown error.
na -- NAK address.  This occurs when there is no device at the probed address.
be -- Bus error.
nd -- NAK data.
al -- Arbitration lost.
bs -- Device busy.

4: Read slave data
This selection reads data from the specified device.

5: Write slave data
This selection writes data to the specified device.

6: Write/Read slave data
This selection reads/writes data from/to the specified device.

Special connection requirements
-------------------------------
No special connections are required, but if a board is used, it will be probed and can be read/written.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
