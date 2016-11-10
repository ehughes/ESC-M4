/*
 * @brief Clock output implementation
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
 * is used in conjunction with NXP Semiconductors microcontrollers.	 This
 * copyright, permission, and disclaimer notice must appear in all copies of
 * this code.
 */

//------------------------------------------------------------------------------
//	clkout defines and functions
//	Note: this list must line up with CLKOUT_LIST_T.
//------------------------------------------------------------------------------
#define	CLKOUTSRC_DISABLED			0
#define	CLKOUTSRC_MAINCLK			1
#define	CLKOUTSRC_WDTOSC			2
#define	CLKOUTSRC_FROHF				3
#define	CLKOUTSRC_PLL				4
#define	CLKOUTSRC_FRO12MHZ			5

void		clkout_init(void);
void		clkout_set_src(uint8_t i, uint32_t div);
const char*	clkout_get_src(void);
void		clkout_enable(void);
void		clkout_disable(void);

//------------------------------------------------------------------------------
//	MCLK defines and functions
//	Note: this list must line up with MCLK_LIST_T.
//------------------------------------------------------------------------------
#define	MCLKSRC_DISABLED			0
#define	MCLKSRC_FROHF				1
#define	MCLKSRC_PLL					2
#define	MCLKSRC_MCLKIN				3

void		mclk_init(void);
void		mclk_set_src(uint8_t i, uint32_t div);
const char*	mclk_get_src(void);
void		mclk_enable(void);
void		mclk_disable(void);
