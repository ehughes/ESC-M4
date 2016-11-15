Multicore blinky example (M4 core as master, M0 as slave)
=========================================================

Example description
-------------------
This multicore example sets up the M4 core as the MCU master that communicates with
the M0 core running as a slave. This project is meant to work with the m0slave_blinky
project as the slave and the m4master_blinky project as the master.

When this example works correctly and both cores are running, board LEDs 0 and 1
will toggle at about 1Hz. When one LED is on, the other LED is off.

What this example does: m4master_blinky
- Sets up the system via SystemInit() and initializes the board layer via Board_Init()
The M0 slave does not repeat this step.
- Shares a 32-bit value bewteen both cores that contains LED on/off state for board
LEDs 0 and 1 in bit position 0 for the master and bit position 1 for the slave. A
0 or 1 in these bit locations indicates the LED off(0) or on(1) state for board
LEDs 0 or 1, respectively.
- Sets up the mailbox and hardware mutex. This is only performed once by the master
core. Enables the mailbox interrupt.
- Initializes the M0 slave core boot entry address and stack pointer. The startup
code for both the M0 and M4 cores is shared with the M0 core being placed into a
safe, low power state. Once the master sets up the necessary addresses, the M0
slave core is reset and boots with the address and stack given by the master.
Note the shared M0/M4 startup code handles this part of the boot sequence.
- Grabs the hardware mutex for the shared LED state value.
- Sets up a periodic system tick event which toggles the LED0 state value at about
1Hz. This doesn't yet toggle board LED0 yet, only the state value.
- Triggers a mailbox event to the M0 slave core with the address of the shared LED
state value.
- Returns the hardware mutex for the shared LED state value.
There might be a small overlap period where both cores attempt to access the
hardware mutex. The core attempted to get the mutex will keep trying until the
mutex is available.
- At some point, the mailbox will be triggered from the slave core. When this
happens, a mailbox interrupt is generated and both of the board LED states are
updated from the shared LED state value.
- The mailbox interrupt is cleared.
- The master MCU sleeps while not performing any other tasks.

What this example does: m0slave_blinky
- Uses a special version of the startup code that bypasses SystemInit().
- Does not link agains tthe board library (M4 does board init)
- Enables the mailbox interrupt.
- At some point, the mailbox will be triggered from the master core. When this
happens, a mailbox interrupt is generated. The mailbox contains an addrsss that
points to the M4's shared LED state value.
- Grabs the hardware mutex for the shared LED state value.
- The LED1 state value is toggled in the shared LED state value. This doesn't yet
toggle board LED1 yet, only the state value.
- Returns the hardware mutex for the shared LED state value.
- The mailbox interrupt is cleared.
- Triggers a mailbox event to the M4 master core that the M0 slave side is done.
- The slave MCU sleeps while not performing any other tasks.

IMPORTANT NOTE:
--------------
LPCXPRESSO: LPCXpresso will build the M0 blinky as a image lodable in RAM (for faster access), and will link the image
with the M4 image. The M4 image when executed will relocate the M0 image from flash to RAM and boots it. M0 executable
image must be small enough to fit in the RAM during execution.


KEIL (Flash): Keil tool will build the M0 blinky (iflash) image for flash loading (slower than running from RAM as
the flash is being accessed simultaniously by both M0+ and M4 cores). M0 image must be programmed before execution
of the M4 image. Projects with _ram suffix should not be mixed with projects without _ram suffix.

KEIL (RAM): Keil tool will build the M0 blinky (iram) image for RAM loading (only smaller images are supported due to
limited RAM size) and generates a bin file. The M4 image will include the bin file in its readonly data section (see
incbin.s in the M4_blinky_ram project) and will load into the RAM and execute it during run time. M4 image will
still be loaded and executed from flash. Projects with _ram suffix should not be mixed with projects without _ram suffix.

IAR (Flash) : IAR will build M0 blinky (iflash) for flash loading (slower than running from RAM as the flash is
being accessed by M0+ and M4 cores simultaniously). Program the M0 image to flash prior to programming and executing
the M4 image.

IAR (RAM): IAR tool will build the M0 blinky (iram) image for RAM loading (only smaller images are supported due to
limited RAM size) and generates a bin file. The M4 image will include the bin file in its read only data section (see
"input" tab in the "linker" section of the project options) and will load into RAM and execute it during run time. M4
image will still be loaded an executed from the flash.

Build procedures:
-----------------
Visit the http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides
to get started building LPCOpen projects,
