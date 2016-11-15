/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
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
#include "pin_mux.h"

/*******************************************************************************
 * Code
 ******************************************************************************/

/* Function Name : BOARD_InitPins */
void BOARD_InitPins(void)
{
    /* Initialize UART0 pins below */
    /* Ungate the port clock */
    CLOCK_EnableClock(kCLOCK_PortB);
    /* Affects PORTB_PCR0 register */
    PORT_SetPinMux(PORTB, 0U, kPORT_MuxAlt7);
    /* Affects PORTB_PCR1 register */
    PORT_SetPinMux(PORTB, 1U, kPORT_MuxAlt7);

    /* Enable SW port clock */
    CLOCK_EnableClock(kCLOCK_PortE);
    /* Affects PORTA_PCR4 register */
    port_pin_config_t config = {0};
    config.pullSelect = kPORT_PullUp;
    config.mux = kPORT_MuxAsGpio;
    PORT_SetPinConfig(PORTE, 4U, &config);

    /* Enable GPIO port clock */
    CLOCK_EnableClock(kCLOCK_PortE);
    /* LED PIN_MUX Configuration */
    PORT_SetPinMux(PORTE, 11U, kPORT_MuxAsGpio);
}