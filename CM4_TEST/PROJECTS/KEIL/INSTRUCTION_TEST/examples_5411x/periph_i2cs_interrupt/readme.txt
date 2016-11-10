LPC5411x I2CS bus slave example using interrupt mode
====================================================

Example description
-------------------
This example shows how to configure I2C as a bus slave in interrupt mode using
the I2CS driver.

This example provides 2 simple (emulated) EEPROMs at different I2C slave
addresses. Both are on the same I2C bus, but the slave controller will be
configured to support 2 slave addresses on the single bus. The emulated
EEPROMs have their memory locations set and read via I2C write and read
operations. Operations can be as little as a byte or continuous until the
master terminates the transfer. The following operations are supported:<br>
- <START> <ADDR><W> Write 16-bit address <STOP><br>
- <START> <ADDR><W> Write 16-bit address <REPEAT START><R> READ READ ... READ <STOP> (unbound read)<br>
- <START> <ADDR><W> Write 16-bit address WRITE WRITE ... WRITE <STOP> (unbound write)<br>
- <START> <ADDR><R> READ READ ... READ <STOP> (unbound read)<br>
Note: Slave address is 0x28.

Unbound read oeprations have no limit on size and will go as long as the master
requests or sends data. If the end of emulated EEPROM is reached, the EEPROM address
will wrap. All reads and write operations auto-increment. Read operations without a
16-bit address will use the last incremented address.

The I2C slave processing is handled entirely in the I2C slave interrupt handler.
This example doesn't use the Chip_I2CS_Xfer() function and implements the slave
support inside the I2C interrupt handler in real-time.

The example also provides the master interface on the same I2C bus as the slave
to communicate with the emulated EEPROMs without requiring an external I2C master.

Special connection requirements
-------------------------------
None.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
