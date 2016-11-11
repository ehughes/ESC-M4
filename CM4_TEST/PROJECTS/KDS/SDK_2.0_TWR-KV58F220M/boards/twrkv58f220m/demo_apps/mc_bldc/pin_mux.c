/*
 * Copyright (c) 2016, Freescale Semiconductor, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of Freescale Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "fsl_common.h"
#include "fsl_port.h"
#include "fsl_gpio.h"
#include "fsl_xbara.h"

/*******************************************************************************
 * Code
 ******************************************************************************/

void BOARD_InitPins(void)
{
    const port_pin_config_t port_config = {
        kPORT_PullUp,
        kPORT_FastSlewRate,
        kPORT_PassiveFilterDisable,
        kPORT_OpenDrainDisable,
        kPORT_LowDriveStrength,
        kPORT_MuxAsGpio,
    };

    const gpio_pin_config_t gpio_config = {
        kGPIO_DigitalOutput, 
        0,
    };

    /* Enable the ports' clock */
    CLOCK_EnableClock(kCLOCK_PortA);
    CLOCK_EnableClock(kCLOCK_PortB);
    CLOCK_EnableClock(kCLOCK_PortC);
    CLOCK_EnableClock(kCLOCK_PortD);
    CLOCK_EnableClock(kCLOCK_PortE);

    /* Init XBARA */
    XBARA_Init(XBARA);

    /* Initialize UART0 pins below */
    /* Affects PORTB_PCR0 register */
    PORT_SetPinMux(PORTB, 0U, kPORT_MuxAlt7);
    /* Affects PORTB_PCR1 register */
    PORT_SetPinMux(PORTB, 1U, kPORT_MuxAlt7);

    /* Enable port for push button SW2 */
    PORT_SetPinConfig(PORTA, 4U, &port_config);
    PORT_SetPinInterruptConfig(PORTA, 4U, kPORT_InterruptRisingEdge);

    /* Enable & setup interrupts */
    EnableIRQ(PORTA_IRQn);
    NVIC_SetPriority(PORTA_IRQn, 4);

    /* Enable port for LV3PH RED USER LED and turn it off */
    PORT_SetPinMux(PORTB, 6U, kPORT_MuxAsGpio);
    GPIO_PinInit(GPIOB, 6U, &gpio_config);
    GPIO_ClearPinsOutput(GPIOB, 1 << 6U);

    /* PORT for FTM0 initialization */
    PORT_SetPinMux(PORTD, 10U, kPORT_MuxAlt6);
    PORT_SetPinMux(PORTD, 11U, kPORT_MuxAlt6);
    PORT_SetPinMux(PORTD, 12U, kPORT_MuxAlt6);
    PORT_SetPinMux(PORTD, 13U, kPORT_MuxAlt6);
    PORT_SetPinMux(PORTD, 14U, kPORT_MuxAlt6);
    PORT_SetPinMux(PORTD, 15U, kPORT_MuxAlt6);

    /* PORT for SPI0 initialization */
    PORT_SetPinMux(PORTE, 16U, kPORT_MuxAlt2);
    PORT_SetPinMux(PORTE, 17U, kPORT_MuxAlt2);
    PORT_SetPinMux(PORTE, 18U, kPORT_MuxAlt2);
    PORT_SetPinMux(PORTE, 19U, kPORT_MuxAlt2);

    /* Enable XBARA module clock */
    SIM->SCGC5 |= (SIM_SCGC5_XBARA_MASK);

    /* PWMA0_TRIG0 (XBARA_IN20) is connected to HSADC0A_TRIG (XBARA_OUT12)
       and HSADC1A_TRIG (XBARA_OUT42) */
    XBARA_SetSignalsConnection(XBARA, kXBARA_InputPwm0Ch0Trg0, kXBARA_OutputHsadc0ATrig);
    XBARA_SetSignalsConnection(XBARA, kXBARA_InputPwm0Ch0Trg0, kXBARA_OutputHsadc1ATrig);
}
