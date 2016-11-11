Overview
========


Toolchain supported
===================
- IAR embedded Workbench 7.60.1
- Keil MDK 5.18a
- GCC ARM Embedded 2015-4.9-q3
- Kinetis Development Studio IDE 3.2.0
- Atollic TrueSTUDIO 5.5.1

Hardware requirements
=====================
- Mini/Micro USB cable
- TWR-KV58 board
- Personal Computer

Board settings
==============
No special configure is needed.

Prepare the Demo
================
1.  Connect a mini/micro USB cable between the PC host and the OpenSDA USB port on the board.
2.  Open a serial terminal on PC for OpenSDA serial device with these settings:
    - 115200 baud rate
    - 8 data bits
    - No parity
    - One stop bit
    - No flow control
3.  Download the program to the target board.
4.  Unplug the usb cable about 10 second then plug again to begin running the demo.

Running the demo
================
  When the board is programmed, simply tilt the board to see the LED illuminate. One LED color
indicates X-axis angle while another indicates Y-axis angle.
  When the example runs successfully, you can see the similar information from the terminal as below.
Welcome to BUBBLE example
You will see the change of LED brightness when change angles of board
x= -72 y = -328
x= -16 y = -268
x= -40 y = -296
x= -40 y = -296
x= -96 y = -288
x= -96 y = -288

Customization options
=====================


