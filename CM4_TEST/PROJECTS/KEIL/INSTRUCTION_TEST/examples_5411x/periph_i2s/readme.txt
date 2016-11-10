LPC5411x Audio / WM8904 demo
============================

Example description
-------------------
This demo demonstrates I2S input / output:
It is a framework to experiment with I2S in general. The sample configuration is 48kHz, 16-bit, stereo.
The read/write ring buffer contains 12,000 elements and is stored in RAM_2. This is exactly a 250ms delay.
The demo supports a number of build time configurations.
- i2s.c: at line 94, there are several WM8904 configurations that can be set:
	-- CONFIG_ANALOG_BYPASS:	Pure analog channel goodness, no digital I/O
	-- CONFIG_DIGITAL_LOOPBACK:	Same as digital I/O with the addition of an internal WM8904 loop-back
	-- CONFIG_DIGITAL_IO:		I2S I/O without loop-back

- i2s_if.c: at line 296, there are four generator functions and one write function:
	-- i2s_buff_write():			Transmit data from the ring-buffer to I2S port (normal digital audio I/O)
	-- i2s_buff_sine_left():		Generator function: Transmit a sine wave to left-channel
	-- i2s_buff_sine_right():		Generator function: Transmit a sine wave to right-channel
	-- i2s_buff_sine_mono():		Generator function: Transmit sine waves to left/right channels
	-- i2s_buff_sine_phase():		Generator function: Transmit sine waves to left/right channels with amplitude / phase adjustments
	Note: select only one of these functions at a time...

- i2s_if.c: at line 307, there are two read functions:
	-- i2s_buff_read():				Read data from I2S port into the ring-buffer (normal digital audio I/O)
	-- i2s_buff_audio_echo():		Read data from I2S port into the ring-buffer using a simple "echo" algorithm
	Note: select only one of these functions at a time...

There are two PDF files in the example directory that graphically show the configuration:
- i2s_config.pdf:		This pdf shows the three different Wolfson 8904 configurations.
- i2s_interface.pdf:	This pdf shows the various I2S signals and how they are connected.
						It also shows the master/slave relationship among the devices.


Special connection requirements
-------------------------------
This demo has two connection requirements:
1. Board requirements:
   a. This demo requires the MAO board. It contains the WM8904 CODEC that is used for this demo.
   b. This demo was written on a LPCXpresso 5411x board, PCBrev 1.

2. This demo requires the following jumpers:
   a. JP-3 must be set on 1-2.

Build procedures:
-----------------
Visit the at 'LPCOpen quickstart guides' [http://www.lpcware.com/content/project/lpcopen-platform-nxp-lpc-microcontrollers/lpcopen-v200-quickstart-guides]
to get started building LPCOpen projects.
