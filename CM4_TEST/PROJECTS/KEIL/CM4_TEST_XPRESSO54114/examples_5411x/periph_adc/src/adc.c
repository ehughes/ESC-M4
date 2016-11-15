/*
 * @brief ADC Example
 *
 * @note
 * Copyright(C) NXP Semiconductors, 2016
 * All rights reserved.
 *
 * @par
 * Software that is described herein is for illustrative purposes only
 * which provides customers with programming information regarding the
 * LPC products.  This software is supplied "AS IS" without any warranties of
 * any kind, and NXP Semiconductors and its licensor disclaim any and
 * all warranties, express or implied, including all implied warranties of
 * merchantability, fitness for a particular purpose and non-infringement of
 * intellectual property rights.  NXP Semiconductors assumes no responsibility
 * or liability for the use of the software, conveys no license or rights under any
 * patent, copyright, mask work right, or any other intellectual property rights in
 * or to any products. NXP Semiconductors reserves the right to make changes
 * in the software without notification. NXP Semiconductors also makes no
 * representation or warranty that such application will be suitable for the
 * specified use without further testing or modification.
 *
 * @par
 * Permission to use, copy, modify, and distribute this software and its
 * documentation is hereby granted, under NXP Semiconductors' and its
 * licensor's relevant copyrights in the software, without fee, provided that it
 * is used in conjunction with NXP Semiconductors microcontrollers.  This
 * copyright, permission, and disclaimer notice must appear in all copies of
 * this code.
 */

#include "board.h"

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

#define TICKRATE_HZ (3)	/* 3 ticks per second */

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

uint16_t adcOut;
uint8_t endConversion;

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	Handle interrupt from SysTick timer
 * @return	Nothing
 */
void SysTick_Handler(void)
{
    /* Start ADC conversion for SeqA */
	Chip_ADC_StartSequencer(LPC_ADC, ADC_SEQA_IDX);
}

/**
 * @brief	Handle ADC SeqA interrupt
 * @return	Nothing
 */
void ADC_SEQA_IRQHandler(void)
{
    /* If SeqA flags is set i.e. data in global register is valid then read it */
    if(Chip_ADC_GetFlags(LPC_ADC) & ADC_FLAGS_SEQA_INT_MASK) {
        adcOut = (Chip_ADC_GetGlobalDataReg(LPC_ADC, ADC_SEQA_IDX) & ADC_SEQ_GDAT_RESULT_MASK) >> ADC_SEQ_GDAT_RESULT_BITPOS;
        endConversion = 1;
    }
}

/* Main application entry point */
int main(void)
{
	int loop = 1;	/* Used to fix the unreachable statement warning */

	SystemCoreClockUpdate();
	Board_Init();

	Board_LED_Set(0, false);

    DEBUGSTR("ADC Example converts internal temperature sensor to digital data at 3Hz: \r\n");
    
    /* Initialization ADC to 12 bit and set clock divide to 1 to operate synchronously at System clock */
    Chip_ADC_Init(LPC_ADC, ADC_CR_RESOL(3) | ADC_CR_CLKDIV(0));
    /* Power up Temperature Sensor */
    Chip_SYSCON_PowerUp(SYSCON_PDRUNCFG_PD_TS);
    /* Select Temperature Sensor as the input for channel 0 */
    Chip_ADC_SelectTempSensorInput(LPC_ADC);
    /* Enable Channel 0 conversion in Sequence A */
    Chip_ADC_SetSequencerBits(LPC_ADC, ADC_SEQA_IDX, ADC_SEQ_CTRL_SEQ_ENA | ADC_SEQ_CTRL_CHANNEL_EN(0));
    /* Enable Sequence A interrupt */
    Chip_ADC_EnableInt(LPC_ADC, ADC_INTEN_SEQA_ENABLE);
    
    /* Calibrate ADC */
    if(Chip_ADC_Calibration(LPC_ADC) == LPC_OK) {
        /* Enable ADC SeqA Interrupt */
        NVIC_EnableIRQ(ADC_SEQA_IRQn);
        /* Enable SysTick Timer */
        SysTick_Config(SystemCoreClock / TICKRATE_HZ);
        endConversion = 0;
    }
    else {
        DEBUGSTR("ADC Calibration Failed \r\n");
        Board_LED_Set(0, true);
        return 0;
    }
    
	while (loop) {
		__WFI();
        /* After each conversion display result on UART */
        if(endConversion) {
            endConversion = 0;
            DEBUGOUT("ADC Output = %d\r\n", adcOut);
        }
	}
	return 0;
}
