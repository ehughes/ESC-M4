LPC5411x DMA memory to memory transfer example
==============================================

Example description
-------------------
This example shows how to setup and use the DMA controller for a limited
software triggered memory to memory transfer. Because of the limited burst
transfer size of the DMA (1024 transfers max) and limited burst size, DMA
M2M operations are somewhat specialized, but they do have a good performance
boost over memcpy() and memmove() functions. They would work best for
smaller transfers.

Time measurement for performance is in timer ticks, Lower values indicate
higher data transfer performance. A tick count 50% smaller than another
count would mean the same operation was about 2x faster. Tick counts are
provided for similar memmove(), memcpy(), and DMA data move operations.

The example also includes a test enable definition (XFERTEST) that will
also perform data testing when it is defined.

Special connection requirements
-------------------------------
There are no special connection requirements for this example.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
