/*
 * @brief Basic CMSIS include file for LPC5411x M4 core
 *
 * @note
 * Copyright(C) NXP Semiconductors, 2014
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

#ifndef __CMSIS_5411X_H_
#define __CMSIS_5411X_H_

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup CMSIS_5411X_M4 CHIP: LPC5411X M4 core CMSIS include file
 * @ingroup CHIP_5411X_CMSIS_DRIVERS
 * @{
 */

#if defined(__ARMCC_VERSION)
// Kill warning "#pragma push with no matching #pragma pop"
  #pragma diag_suppress 2525
  #pragma push
  #pragma anon_unions
#elif defined(__CWCC__)
  #pragma push
  #pragma cpp_extensions on
#elif defined(__GNUC__)
/* anonymous unions are enabled by default */
#elif defined(__IAR_SYSTEMS_ICC__)
//  #pragma push // FIXME not usable for IAR
  #pragma language=extended
#else
  #error Not supported compiler type
#endif

/*
 * ==========================================================================
 * ---------- Interrupt Number Definition -----------------------------------
 * ==========================================================================
 */

#if !defined(CORE_M4)
#error "CORE_M4 is not defined"
#endif

/** @defgroup CMSIS_5411X_M4_IRQ CHIP_5411X: LPC5411X M4 core peripheral interrupt numbers
 * @{
 */

typedef enum {
	/******  Cortex-M4 Processor Exceptions Numbers ***************************************************/
	Reset_IRQn                    = -15,    /*!< 1  Reset Vector, invoked on Power up and warm reset */
	NonMaskableInt_IRQn           = -14,    /*!< 2  Non maskable Interrupt, cannot be stopped or preempted */
	HardFault_IRQn                = -13,    /*!< 3  Hard Fault, all classes of Fault */
	MemoryManagement_IRQn         = -12,    /*!< 4  Memory Management, MPU mismatch, including Access Violation and No Match */
	BusFault_IRQn                 = -11,    /*!< 5  Bus Fault, Pre-Fetch-, Memory Access Fault, other address/memory related Fault */
	UsageFault_IRQn               = -10,    /*!< 6  Usage Fault, i.e. Undef Instruction, Illegal State Transition */
	SVCall_IRQn                   =  -5,    /*!< 11  System Service Call via SVC instruction */
	DebugMonitor_IRQn             =  -4,    /*!< 12  Debug Monitor                    */
	PendSV_IRQn                   =  -2,    /*!< 14  Pendable request for system service */
	SysTick_IRQn                  =  -1,    /*!< 15  System Tick Timer                */

	/******  LPC5411X Specific Interrupt Numbers ********************************************************/
	WDTBOD_IRQn,        /*!< WWDT                                             */
	DMA_IRQn,           /*!< DMA                                              */
	GINT0_IRQn,         /*!< GINT0                                            */
	GINT1_IRQn,         /*!< GINT1                                            */
	PIN_INT0_IRQn,      /*!< PININT0                                          */
	PIN_INT1_IRQn,      /*!< PININT1                                          */
	PIN_INT2_IRQn,      /*!< PININT2                                          */
	PIN_INT3_IRQn,      /*!< PININT3                                          */
	UTICK_IRQn,         /*!< Micro-tick Timer interrupt                       */
	MRT_IRQn,           /*!< Multi-rate timer interrupt                       */
	CT32B0_IRQn,        /*!< CTMR0                                            */
	CT32B1_IRQn,        /*!< CTMR1                                            */
	SCT0_IRQn,          /*!< SCT                                              */
	CT32B3_IRQn,        /*!< CTMR3                                            */
	FLEXCOMM0_IRQn,     /*!< FLEXCOMM0                                        */
	FLEXCOMM1_IRQn,     /*!< FLEXCOMM1                                        */
	FLEXCOMM2_IRQn,     /*!< FLEXCOMM2                                        */
	FLEXCOMM3_IRQn,     /*!< FLEXCOMM3                                        */
	FLEXCOMM4_IRQn,     /*!< FLEXCOMM4                                        */
	FLEXCOMM5_IRQn,     /*!< FLEXCOMM5                                        */
	FLEXCOMM6_IRQn,     /*!< FLEXCOMM6                                        */
	FLEXCOMM7_IRQn,     /*!< FLEXCOMM7                                        */
	ADC_SEQA_IRQn,      /*!< ADC0 sequence A completion                       */
	ADC_SEQB_IRQn,      /*!< ADC0 sequence B completion                       */
	ADC_THCMP_IRQn,     /*!< ADC0 threshold compare and error                 */
	DMIC_IRQn,          /*!< Digital Mic                                      */
	HWVAD_IRQn,         /*!< Hardware Voice acitivity detect                  */
	USBACT_IRQn,        /*!< USB Activity                                     */
	USB_IRQn,           /*!< USB                                              */
	RTC_IRQn,           /*!< RTC alarm and wake-up interrupts                 */
	Reserved_IRQn,      /*!< Reserved Interrupt                               */
	MAILBOX_IRQn,       /*!< Mailbox                                          */
	PIN_INT4_IRQn,      /*!< External Interrupt 4                             */
	PIN_INT5_IRQn,      /*!< External Interrupt 5                             */
	PIN_INT6_IRQn,      /*!< External Interrupt 6                             */
	PIN_INT7_IRQn,      /*!< External Interrupt 7                             */
	CT32B2_IRQn,        /*!< CTMR2                                            */
	CT32B4_IRQn,        /*!< CTMR4                                            */
	Reserved1_IRQn,     /*!< Reserved Interrupt                               */
	SPIFI_IRQn,         /*!< SPI Flash interface                              */
} LPC5411X_IRQn_Type;

/**
 * @}
 */

/*
 * ==========================================================================
 * ----------- Processor and Core Peripheral Section ------------------------
 * ==========================================================================
 */

/** @defgroup CMSIS_5411X_M4_COMMON CHIP: LPC5411X M4 core Cortex CMSIS definitions
 * @{
 */

/* Configuration of the Cortex-M4 Processor and Core Peripherals */
#define __CM4_REV                 0x0001	/*!< Cortex-M4 Core Revision                          */
#define __MPU_PRESENT             1			/*!< MPU present or not                               */
#define __NVIC_PRIO_BITS          3			/*!< Number of Bits used for Priority Levels          */
#define __Vendor_SysTickConfig    0			/*!< Set to 1 if different SysTick Config is used     */
#define __FPU_PRESENT             1

/** @brief interrupt Alias */
#define TIMER0_IRQn CT32B0_IRQn
#define TIMER1_IRQn CT32B1_IRQn
#define TIMER2_IRQn CT32B2_IRQn
#define TIMER3_IRQn CT32B3_IRQn
#define TIMER4_IRQn CT32B4_IRQn
#define SCT_IRQn SCT0_IRQn
#define ADC0_SEQA_IRQn ADC_SEQA_IRQn
#define ADC0_SEQB_IRQn ADC_SEQB_IRQn
#define ADC0_THCMP_IRQn ADC_THCMP_IRQn

/** @brief	Interrupt handler Alias */
#define TIMER0_IRQHandler CT32B0_IRQHandler
#define TIMER1_IRQHandler CT32B1_IRQHandler
#define TIMER2_IRQHandler CT32B2_IRQHandler
#define TIMER3_IRQHandler CT32B3_IRQHandler
#define TIMER4_IRQHandler CT32B4_IRQHandler
#define SCT_IRQHandler SCT0_IRQHandler
#define ADC0_SEQA_IRQHandler ADC_SEQA_IRQHandler
#define ADC0_SEQB_IRQHandler ADC_SEQB_IRQHandler
#define ADC0_THCMP_IRQHandler ADC_THCMP_IRQHandler

/**
 * @}
 */

/**
 * @}
 */

#ifdef __cplusplus
}
#endif

#endif /* __CMSIS_5411X_H_ */
