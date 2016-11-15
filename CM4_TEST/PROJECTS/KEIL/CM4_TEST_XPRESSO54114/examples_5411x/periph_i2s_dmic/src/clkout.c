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

#include "board.h"
#include "clkout.h"

//------------------------------------------------------------------------------
//	local typedefs
//------------------------------------------------------------------------------
typedef struct {
	CHIP_SYSCON_CLKOUTSRC_T src;
	const char *name;
} CLKOUT_LIST_T;

typedef struct {
	CHIP_SYSCON_MCLKSRC_T src;
	const char *name;
} MCLK_LIST_T;

//------------------------------------------------------------------------------
//	local const variables
//------------------------------------------------------------------------------
const CLKOUT_LIST_T clkout_list[] = {
	{ SYSCON_CLKOUTSRC_DISABLED,	"Disabled"				},
	{ SYSCON_CLKOUTSRC_MAINCLK,		"Main system clock"		},
	{ SYSCON_CLKOUTSRC_WDTOSC,		"Watchdog oscillator"	},
	{ SYSCON_CLKOUTSRC_FROHF,		"48MHz / 96MHz FRO"		},
	{ SYSCON_CLKOUTSRC_PLL,			"Main PLL"				},
	{ SYSCON_CLKOUTSRC_FRO12MHZ,	"12MHz FRO"				},
};
const uint32_t clkout_list_ct = sizeof(clkout_list)/sizeof(CLKOUT_LIST_T);

const MCLK_LIST_T mclk_list[] = {
	{ SYSCON_MCLKSRC_DISABLED,	"Disabled"					},
	{ SYSCON_MCLKSRC_FROHF,		"HF-FRO 48MHz / 96MHz"		},
	{ SYSCON_MCLKSRC_PLL,		"Main PLL"					},
	{ SYSCON_MCLKSRC_MCLKIN,	"MCLK IOCON-INPUT clock"	},
};
const uint32_t mclk_list_ct = sizeof(mclk_list)/sizeof(MCLK_LIST_T);

//------------------------------------------------------------------------------
//	local variables
//------------------------------------------------------------------------------
static CHIP_SYSCON_CLKOUTSRC_T	clk_out_src	= SYSCON_CLKOUTSRC_DISABLED;
static uint32_t					clk_out_div	= 0;
static uint8_t					clk_out_idx	= 0;

static CHIP_SYSCON_MCLKSRC_T	mclk_src	= SYSCON_MCLKSRC_DISABLED;
static uint32_t					mclk_div	= 0;
//static uint8_t					mclk_idx	= 0;

//------------------------------------------------------------------------------
//	clock out functions
//	note: no error checking on these functions
//------------------------------------------------------------------------------
void clkout_init(void)
{
	clk_out_src = SYSCON_CLKOUTSRC_DISABLED;
	clk_out_div = 1;
	clk_out_idx = 0;

	Chip_Clock_SetCLKOUTSource(clk_out_src, clk_out_div);
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 21, (IOCON_FUNC1 | IOCON_MODE_INACT | IOCON_DIGITAL_EN));
}

void clkout_set_src(uint8_t i, uint32_t div)
{
	clk_out_src = clkout_list[i].src;
	clk_out_div = div;
	clk_out_idx = i;
	Chip_Clock_SetCLKOUTSource(clk_out_src, clk_out_div);
}

const char* clkout_get_src(void)
{
	return clkout_list[clk_out_idx].name;
}

void clkout_enable(void)
{
	Chip_Clock_SetCLKOUTSource(clk_out_src, clk_out_div);
}

void clkout_disable(void)
{
	Chip_Clock_SetCLKOUTSource(SYSCON_CLKOUTSRC_DISABLED, 1);
}

//------------------------------------------------------------------------------
//	MCLK functions
//	note: no error checking on these functions
//------------------------------------------------------------------------------
void mclk_init(void)
{
	mclk_src = SYSCON_MCLKSRC_DISABLED;
	mclk_div = 4;
	//mclk_idx = 0;

	Chip_Clock_SetMCLKDirOutput();
	Chip_Clock_SetMCLKClockSource(mclk_src, mclk_div);
	Chip_IOCON_PinMuxSet(LPC_IOCON, 1, 2, (IOCON_FUNC1 | IOCON_MODE_INACT | IOCON_DIGITAL_EN));
}

void mclk_set_src(uint8_t i, uint32_t div)
{
	mclk_src = mclk_list[i].src;
	mclk_div = div;
	//mclk_idx = i;

	Chip_Clock_SetMCLKClockSource(mclk_list[i].src, div);
}
const char* mclk_get_sr(void)
{
	return mclk_list[clk_out_idx].name;
}
void mclk_enable(void)
{
	Chip_Clock_SetMCLKClockSource(mclk_src, mclk_div);
}

void mclk_disable(void)
{
	Chip_Clock_SetMCLKClockSource(SYSCON_MCLKSRC_DISABLED, 1);
}

