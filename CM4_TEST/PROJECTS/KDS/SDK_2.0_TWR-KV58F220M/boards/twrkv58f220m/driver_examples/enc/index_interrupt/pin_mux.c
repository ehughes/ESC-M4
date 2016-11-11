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
#include "fsl_xbara.h"

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

    /*
     * For ENC connection
     * PTE22 -> XB_IN2 -> XBARA_OUT44 -> ENC_PHA
     * PTE23 -> XB_IN3 -> XBARA_OUT45 -> ENC_PHB
     * PTE21 -> XB_IN9 -> XBARA_OUT46 -> ENC_INDEX
     *                    XBARA_OUT47 -> ENC_HOME
     *                    XBARA_OUT48 -> ENC_TRIGGER(Capture)
     * PTE21 can be used as one of INDEX, HOME or TRIGGER.
     */
    /* Ungate the port clock */
    CLOCK_EnableClock(kCLOCK_PortE);
    PORT_SetPinMux(PORTE, 22U, kPORT_MuxAlt4); /* XB_IN2. */
    PORT_SetPinMux(PORTE, 23U, kPORT_MuxAlt4); /* XB_IN3. */
    PORT_SetPinMux(PORTE, 21U, kPORT_MuxAlt2); /* XB_IN9. */
    /* Configure the XBARA for ENC signals. */
    XBARA_Init(XBARA);
    XBARA_SetSignalsConnection(XBARA, kXBARA_InputXbarIn2, kXBARA_OutputEncPhA);
    XBARA_SetSignalsConnection(XBARA, kXBARA_InputXbarIn3, kXBARA_OutputEncPhB);
    XBARA_SetSignalsConnection(XBARA, kXBARA_InputXbarIn9, kXBARA_OutputEncIndex);
    /* kXBARA_OutputEncIndex
     * kXBARA_OutputEncHome
     * kXBARA_OutputEncCapTrigger
     */
}
