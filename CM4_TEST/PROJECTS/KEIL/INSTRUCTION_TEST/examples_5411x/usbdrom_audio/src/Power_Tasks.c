// KWW - new file

#include "board.h"
#include "Power_Tasks.h"
#include "audio_codec.h"
#include "i2s_if.h"
#include "stopwatch.h"

volatile unsigned int powerFlags;
#define SYSCON_PDRUNCFG_PD_FROEN         (1 << 3)		/*!< FRO oscillator enable */

const PINMUX_GRP_T unusedPins[] = {
#if !defined(DEBUG_UART)
			{ // TO_MUX_P0_0-ISP_RX
					0, 0, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_1-ISP_TX
					0, 1, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
#endif
			{ // P0_2-GPIO_SPI_CS
					0, 2, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_3-GPIO_SPI_CS
					0, 3, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // BRIDGE_T_INTR-ISP1
					0, 4, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},

			// P0_5-FC6_RXD_SDA_MOSI_DATA
			// P0_6-FC6_TXD_SCL_MISO_FRAME - not altered
			// P0_7-FC6_SCK - not altered
			{
					0, 5, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{
					0, 6, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{
					0, 7, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},

			{ // P0_8-FC2_RXD_SDA_MOSI
					0, 8, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_9-FC2_TXD_SCL_MISO
					0, 9, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_10-FC2_SCK-CT32B3_MAT0
					0, 10, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // BRIDGE_T_SCK
					0, 11, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // BRIDGE_T_MOSI
					0, 12, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // BRIDGE_T_MISO
					0, 13, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // BRIDGE_T_SSEL-SPIFI_IO3
					0, 14, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
#if !defined(ENABLEJTAG)
			{ // TDO-SWO_TRGT-SPIFI_IO2
					0, 15, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // TCK-SWDCLK_TRGT-SPIFI_IO1
					0, 16, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // IF_TMS_SWDIO-SPIFI_IO0
					0, 17, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
#endif
			{ // P0_18-FC5_TXD_SCL_MISO
					0, 18, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_19-FC5_SCK-SPIFI_CSn
					0, 19, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_20-FC5_RXD_SDA_MOSI
					0, 20, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_21-CLKOUT-SPIFI_CLK
					0, 21, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_22-BRIDGE_GPIO
					0, 22, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // BRIDGE_SCL
					0, 23, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // BRIDGE_SDA-WAKEUP
					0, 24, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_25-FC4_SCLX
					0, 25, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_26-FC4_SDAX
					0, 26, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},

			// USB_DP_RES - not altered
			// USB_DM_RES - not altered

			{ // P0_29-CT32B0_MAT3-RED
					0, 29, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_30-ADC1
					0, 30, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P0_31-PDM0_CLK-ISP0_EN
					0, 31, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_0/PDM0_DATA/FC2_RTS_SCL_SSELN1/CT3MAT1//CT0CAP0
					1, 0, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_1//SWO/SCT0_OUT4/FC5_SSELN2/FC4_TXD_SCL_MISO
					1, 1, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_2/MCLK/FC7_SSELN3/SCT0_OUT5/FC5_SSELN3/FC4_RXD_SDA_MOSI
					1, 2, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_3//FC7_SSELN2/SCT0_OUT6//FC3_SCK/CT0CAP1/USB0_LEDN
					1, 3, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_4/PDM1_CLK/FC7_RTS_SCL_SSELN1/SCT0_OUT7//FC3_TXD_SCL_MISO
					1, 4, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_5/PDM1_DATA/FC7_CTS_SDA_SSELN0/CT1CAP0//CT1MAT3/PVT_AM0_ALRT
					1, 5, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_7//FC7_RXD_SDA_MOSI/CT1MAT2//CT1CAP2/PVT_AMBER1_ALERT
					1, 7, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_8//FC7_TXD_SCL_MISO/CT1MAT3//CT1CAP3/PVT_RED1_ALERT
					1, 8, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_9//FC3_RXD_SDA_MOSI/CT0CAP2///USB0_LEDN/USB0_CONNECTN
					1, 9, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_10//FC6_TXD_SCL_MISO/SCT0_OUT4/FC1_SCK///USB0_FRAME
					1, 10, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},

			// P1_11//FC6_RTS_SCL_SSELN1/CT1CAP0/FC4_SCK///USB0_VBUS
			{
					1, 11, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},

			{ // P1_12//FC5_RXD_SDA_MOSI/CT1MAT0/FC7_SCK/UTICK_CAP2
					1, 12, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_13//FC5_TXD_SCL_MISO/CT1MAT1/FC7_RXD_SDA_MOSI
					1, 13, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_14//FC2_RXD_SDA_MOSI/SCT0_OUT7/FC7_TXD_SCL_MISO
					1, 14, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_15/PDM0_CLK/SCT0_OUT5/CT1CAP3/FC7_CTS_SDAX_SSELN0
					1, 15, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			{ // P1_16/PDM0_DATA/CT0MAT0/CT0CAP0/FC7_RTS_SCLX_SSELN1
					1, 16, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
			// P1_17////MCLK/UTICK_CAP3 - not altered
			{
					1, 17, (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN),
			},
};

/* Additional low power setup */
void Power_Init(void)
{
	int i;

	/* OK to use a lower system clock with DMA */
#if LOWPOWERCLOCKMODE == 1
	Chip_POWER_SetVoltage(Chip_Clock_GetMainClockRate());

#else
#if LOWPOWERCLOCKMODE == 4
	Chip_Clock_SetMainClockSource(SYSCON_MAINCLKSRC_FRO12MHZ);
	Chip_POWER_SetVoltage(POWER_LOW_POWER_MODE, Chip_Clock_GetMainClockRate());
	Chip_SYSCON_SetFLASHAccess(0); /* 1 system clock wait state time for 12MHz */

#else
	Chip_Clock_SetSysClockDiv(LOWPOWERCLOCKMODE);
	Chip_POWER_SetVoltage(POWER_LOW_POWER_MODE, 48000000 / LOWPOWERCLOCKMODE); //Chip_Clock_GetMainClockRate());
	Chip_SYSCON_SetFLASHAccess(1); /* 2 systems clock wait state time for up to 30MHz */
#endif
#endif

	SystemCoreClockUpdate();
	Chip_Clock_DisableRTCOsc();
	Chip_SYSCON_PowerDown(SYSCON_PDRUNCFG_PD_TS | SYSCON_PDRUNCFG_PD_BOD_RST | SYSCON_PDRUNCFG_PD_BOD_INTR |
			SYSCON_PDRUNCFG_PD_ADC0);
	Chip_Clock_SetCLKOUTSource(SYSCON_CLKOUTSRC_DISABLED, 1);

#if 1
	/* Unused IRAM, power down with CARE */
	Chip_SYSCON_PowerDown(SYSCON_PDRUNCFG_PD_SRAM1 | SYSCON_PDRUNCFG_PD_SRAM2 | SYSCON_PDRUNCFG_PD_SRAMX);
#endif

	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_IOCON);

	for (i = 0; i < (sizeof(unusedPins) / sizeof(unusedPins[0])); i++) {
		Chip_IOCON_PinMuxSet(LPC_IOCON, unusedPins[i].port, unusedPins[i].pin,
				unusedPins[i].modefunc);
		Chip_GPIO_SetPinDIRInput(LPC_GPIO, unusedPins[i].port, unusedPins[i].pin);
	}

	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_IOCON);
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_INPUTMUX);
}

void Power_Tasks(void)
{
    CHIP_SYSCON_MAINCLKSRC_T srcClk;

	/* Caution: The USB stack may issue a SUSPEND event during enumeration.
	 */
	if ((powerFlags & POWERFLAGS_SUSPEND) != 0) {
		if ((LPC_SYSCON->USBCLKSTAT & 1) == 0) {
			powerFlags &= ~POWERFLAGS_SUSPEND;
			__disable_irq();

			Codec_Suspend();

			NVIC_ClearPendingIRQ(USBACT_IRQn);
			NVIC_EnableIRQ(USBACT_IRQn);
#if defined(USEINRAMDEEPSLEEP)
			/* UNKNOWN!!!!!!!!
			 * Will not wakeup reliably with USBNEEDCLK alone in POWERDOWN.
			 */
			NVIC_DisableIRQ(USB_IRQn);
#endif

			/* Setup wakeup states, disable others */
			LPC_SYSCON->STARTERPCLR[0] = LPC_SYSCON->STARTERP[0];
			Chip_SYSCON_EnableWakeup(SYSCON_STARTER_USBNEEDCLK);
#if defined(USEINRAMDEEPSLEEP)
			/* UNKNOWN!!!!!!!!
			 * Will not wakeup reliably with USBNEEDCLK alone in POWERDOWN.
			 */
			LPC_SYSCON->USBCLKCTRL = (1 << 1);
#endif

			/* These clocks can be safely shut down temporarily
			 * during the low power state. */
			Chip_SYSCON_PowerDown(SYSCON_PDRUNCFG_PD_USB_PHY);
			Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_FLEXCOMM6);
			Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_FLEXCOMM7);
			Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_GPIO0);
			Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_GPIO1);

			/* Switching to a lower main clock can save some power */
			srcClk = Chip_Clock_GetMainClockSource();
			if (srcClk != SYSCON_MAINCLKSRC_FRO12MHZ) {
				Chip_Clock_SetMainClockSource(SYSCON_MAINCLKSRC_FRO12MHZ);
			}

#if defined(USEINRAMDEEPSLEEP)
			/* ALWAYS Deep sleep 1 */
			Chip_POWER_EnterPowerMode(POWER_DEEP_SLEEP, 0x0);

			/* Requires
			 * Chip_POWER_EnterPowerModeRel(POWER_DEEP_SLEEP, 0x4);
			 * if main clock is operating at 48MHz.
			 */

#else
			/* Power down mode, may not work if called when main clock is at 48MHz */
			Chip_POWER_EnterPowerMode(POWER_DEEP_SLEEP2, 0x0);

			/* Requires
			 * Chip_POWER_EnterPowerMode(POWER_POWER_DOWN, 0x4);
			 * if main clock is operating at 48MHz.
			 */
#endif

			if (srcClk != SYSCON_MAINCLKSRC_FRO12MHZ) {
				Chip_Clock_SetMainClockSource(srcClk);
			}

			Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_GPIO1);
			Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_GPIO0);
			Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_FLEXCOMM7);
			Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_FLEXCOMM6);
			Chip_SYSCON_PowerUp(SYSCON_PDRUNCFG_PD_USB_PHY);

			Codec_Resume();

			Chip_SYSCON_DisableWakeup(SYSCON_STARTER_USBNEEDCLK);
			NVIC_DisableIRQ(USBACT_IRQn);
			NVIC_EnableIRQ(USB_IRQn);

			__enable_irq(); /* Don't trust power API calls to not re-enable IRQs */
		}
	}
	else if ((powerFlags & POWERFLAGS_RESUME) != 0) {
		/* Resume */
		powerFlags &= ~POWERFLAGS_RESUME;
		/* Nothing to really do here, as wakeup from suspend does everything */
	}
	else {
		/* Sleep until next IRQ happens */
		__WFI();
	}
}
