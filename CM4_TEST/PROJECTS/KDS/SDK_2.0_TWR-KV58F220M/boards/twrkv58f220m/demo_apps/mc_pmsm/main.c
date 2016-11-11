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

#include "board.h"
#include "mcdrv.h"
#include "m1_sm_demo.h"

#include "fsl_common.h"
#include "pin_mux.h"
/*******************************************************************************
 * Definitions
 ******************************************************************************/


/* Three instruction added after interrupt flag clearing as required */
#define M1_END_OF_ISR \
    {                 \
        __asm("nop"); \
        __asm("nop"); \
        __asm("nop"); \
        __asm("nop"); \
        __asm("nop"); \
        __asm("nop"); \
        __asm("nop"); \
    }

/* RED TWR-LV3PH LED control */
#define LED_LV3PH_RED_TOGGLE() (GPIOB->PTOR = (1U << 6U))
#define LED_LV3PH_RED_ON() (GPIOB->PSOR = (1U << 6U))
#define LED_LV3PH_RED_OFF() (GPIOB->PCOR = (1U << 6U))

/*******************************************************************************
 * Variables
 ******************************************************************************/

static bool_t bDemoMode;                /* Demo mode control SW2 button  */
static uint32_t ui32SpeedStimulatorCnt; /* Used for demo mode */
static uint32_t ui32ButtonFilter;       /* Counter for button pressing */

/*******************************************************************************
 * Prototypes
 ******************************************************************************/

static void DemoSpeedStimulator(void);

/*******************************************************************************
 * Code
 ******************************************************************************/

/*!
* @brief   Application main function processing peripheral function calling and
*          infinite loop
*
* @param   void
*
* @return  none
*/
int main(void)
{
    uint32_t ui32PrimaskReg;

    /* Disable all interrupts before peripherals are initialized */
    ui32PrimaskReg = DisableGlobalIRQ();

    /* Init board hardware. */
    BOARD_InitPins();
    BOARD_BootClockHSRUN();

    /* Init application clock dependent variables */
    InitClock();

    /* Initialize peripheral motor control driver for motor M1*/
    MCDRV_Init_M1();

    /* Disable demo mode after reset */
    bDemoMode = FALSE;
    ui32SpeedStimulatorCnt = 0;

    /* Enable interrupts  */
    EnableGlobalIRQ(ui32PrimaskReg);

    /* Infinite loop */
    while (1)
    {
    }
}

/*!
* @brief   ADC conversion complete ISR called with 100us period processes
*           - motor M1 fast application machine function
*           - demo mode if enabled
*
* @param   void
*
* @return  none
*/
void HSADC0_CCA_IRQHandler(void)
{
    /* StateMachine call */
    SM_StateMachineFast(&g_sM1Ctrl);

    /* Clear the EOS flag */
    HSADC0->STAT |= HSADC_STAT_EOSIA_MASK;

    /* Add empty instructions for correct interrupt flag clearing */
    M1_END_OF_ISR;
}

/*!
* @brief   FTM2 reload ISR called with 1ms period and processes following functions:
*           - motor M1 slow application machine function
*
* @param   void
*
* @return  none
*/
void FTM2_IRQHandler(void)
{
    static int16_t ui16i = 0;

    /* Slow StateMachine call */
    SM_StateMachineSlow(&g_sM1Ctrl);

    /* If in STOP state turn on red */
    if (M1_GetAppState() == 2)
    {
        LED_LV3PH_RED_ON();
    }
    /* If in FAULT state red blinking */
    else if (M1_GetAppState() == 0)
    {
        if (ui16i-- < 0)
        {
            LED_LV3PH_RED_TOGGLE();
            ui16i = 125;
        }
    }
    else
        LED_LV3PH_RED_OFF();

    /* Demo speed stimulator */
    DemoSpeedStimulator();

    /* Clear the TOF flag */
    FTM2->SC &= ~(FTM_SC_TOF_MASK);

    /* Add empty instructions for correct interrupt flag clearing */
    M1_END_OF_ISR;
}

/*!
* @brief   Port interrupt handler
*
* @param   void
*
* @return  none
*/
void PORTA_IRQHandler(void)
{
    if (PORTA->PCR[4] & PORT_PCR_ISF_MASK)
    {
        /* Clear the flag */
        PORTA->PCR[4] |= PORT_PCR_ISF_MASK;

        /* Proceed only if pressing longer than timeout */
        if (ui32ButtonFilter > 200)
        {
            ui32ButtonFilter = 0;
            if (bDemoMode)
            {
                M1_SetSpeed(0);
                M1_SetAppSwitch(FALSE);
                bDemoMode = FALSE;
            }
            else
            {
                M1_SetAppSwitch(TRUE);
                bDemoMode = TRUE;
                ui32SpeedStimulatorCnt = 0;
            }
        }
    }
}

/*!
* @brief   DemoSpeedStimulator
*           - When demo mode is enabled it changes the required speed according
*             to predefined profile
*
* @param   void
*
* @return  none
*/
static void DemoSpeedStimulator(void)
{
    /* Increment push button pressing counter  */
    if (ui32ButtonFilter < 1000)
        ui32ButtonFilter++;

    if (bDemoMode)
    {
        ui32SpeedStimulatorCnt++;
        switch (ui32SpeedStimulatorCnt)
        {
            case 1:
                M1_SetSpeed(FRAC16(1000.0 / M1_N_MAX));
                break;
            case 3000:
                M1_SetSpeed(FRAC16(2000.0 / M1_N_MAX));
                break;
            case 6000:
                M1_SetSpeed(FRAC16(4000.0 / M1_N_MAX));
                break;
            case 9000:
                M1_SetSpeed(-FRAC16(1000.0 / M1_N_MAX));
                break;
            case 12000:
                M1_SetSpeed(-FRAC16(2000.0 / M1_N_MAX));
                break;
            case 15000:
                M1_SetSpeed(-FRAC16(4000.0 / M1_N_MAX));
                break;
            case 18000:
                ui32SpeedStimulatorCnt = 0;
                break;
            default:
                break;
        }
    }
}
