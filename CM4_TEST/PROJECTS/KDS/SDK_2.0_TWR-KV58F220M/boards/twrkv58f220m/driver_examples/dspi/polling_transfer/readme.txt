Overview
========
The dspi_polling_transfer example shows how to use DSPI driver in polling way:

In this example , one dspi instance used as DSPI master and another dspi instance used as DSPI slave in the same board.

1. DSPI master send/received data to/from DSPI slave in polling . (DSPI Slave using interrupt to receive/send the data)

Toolchain supported
===================
- IAR embedded Workbench 7.60.1
- Keil MDK 5.18a
- GCC ARM Embedded 2015-4.9-q3
- Kinetis Development Studio IDE 3.2.0
- Atollic TrueSTUDIO 5.5.1

Hardware requirements
=====================
- Micro USB cable
- TWR-KV58F220M board
- Personal Computer
- Elevator Tower

Board settings
==============
The connection should be set as following:
Transfer data from instance0 to instance 1 of SPI interface.
SPI0 pins are connected with SPI1 pins of board
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
INSTANCE0(SPI0)     CONNECTS TO         INSTANCE1(SPI1)
Pin Name   Elevator Tower       Pin Name  Elevator Tower
MOSI       B45                  MOSI      B76
MISO       B44                  MISO      B75
SCK        B48                  SCK       B74
PCS0       B46                  PCS0      B73
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Prepare the Demo
================
1.  Connect a USB cable between the host PC and the OpenSDA USB port on the target board.
2.  Open a serial terminal with the following settings:
    - 115200 baud rate
    - 8 data bits
    - No parity
    - One stop bit
    - No flow control
3.  Download the program to the target board.
4.  Either press the reset button on your board or launch the debugger in your IDE to begin running the demo.

Running the demo
================
When the demo runs successfully, the log would be seen on the OpenSDA terminal like:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DSPI polling example start.
This example use one dspi instance as master and another as slave on one board.
Master uses polling way and slave uses interrupt way.
Please make sure you make the correct line connection. Basically, the connection is:
DSPI_master -- DSPI_slave
   CLK      --    CLK
   PCS      --    PCS
   SOUT     --    SIN
   SIN      --    SOUT
This is DSPI slave transfer completed callback.
It's a successful transfer.
DSPI transfer all data matched!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Customization options
=====================


