LPC5411x I2CS bus slave example using DMA
=========================================

Example description
-------------------
This example shows how to configure I2C as a bus slave using the I2CS driver and
DMA.

The example uses the I2CS slave driver to setup the I2C slave controller for DMA
operation. The I2CM master driver is also used with this example on the same I2C
controller to communicate with the slave.<br>

The master sends out some predefined data to the slave at the slave address. The
master then reads data back from the slave, with the slave returning the data
it was sent from the master. The slave transfers are handled using DMA. The I2C
slave address match callback is used to setup and start the DMA transfer in
the application. The master then compares the data it received with what it sent
to verify that the data is correct.

During the I2C slave transfer when DMA data is available, the I2CS interrupt is
not triggered. This allows the CPU to sleep during the entire transfer - either
until the DMA buffer is full/empty or the I2C master terminates the I2C
transfer. The DMA descriptors for the slave send and receive operations are
setup in the send and receive data callbacks.

Special connection requirements
-------------------------------
There are no special connection requirements for this example.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
