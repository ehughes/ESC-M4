/*******************************************************************************
*
* Copyright 2007-2016 Freescale Semiconductor, Inc.
*
* This software is owned or controlled by Freescale Semiconductor.
* Use of this software is governed by the Freescale License
* distributed with this Material.
* See the LICENSE file distributed for more details.
* 
*
****************************************************************************//*!
*
* @brief  Multiply with rounding
* 
*******************************************************************************/
#ifndef _MLIB_MULRND_F16_ASM_H_
#define _MLIB_MULRND_F16_ASM_H_

#if defined(__cplusplus)
extern "C" {
#endif

/*******************************************************************************
* Includes
*******************************************************************************/
#include "mlib_types.h"

/*******************************************************************************
* Macros
*******************************************************************************/  
#define MLIB_MulRndSat_F16_Asmi(f16Mult1, f16Mult2) MLIB_MulRndSat_F16_FAsmi(f16Mult1, f16Mult2)

/***************************************************************************//*!
*
* f16Out = f16Mult1 * f16Mult2
* With saturation
*******************************************************************************/
/* inline function without any optimization (compilation issue) */
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=save        /* Save existing optimization level */
    #pragma optimize=none        /* Optimization none level now */        
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */
    #pragma O0                   /* Optimization level now O0 */                    
#else                            /* set no optimization for GCC(KDS) compiler */
    __attribute__((optimize("O0")))  
#endif
static inline frac16_t MLIB_MulRndSat_F16_FAsmi(register frac16_t f16Mult1, register frac16_t f16Mult2)
{
    #if defined(__CC_ARM)                                        /* For ARM Compiler */
        __asm volatile{ smulbb f16Mult1, f16Mult1, f16Mult2      /* f16Mult1 * f16Mult2 */
                        add f16Mult1, f16Mult1, #0x4000          /* Rounding */
                        ssat f16Mult1, #16, f16Mult1, asr #15 }; /* Converts result to frac16 and saturates */
    #else
        __asm volatile( "smulbb %0, %0, %1 \n"              /* f16Mult1 * f16Mult2 */
                        "add %0, %0, #0x4000 \n"            /* Rounding */
                        "ssat %0, #16, %0, asr #15 \n"      /* Converts result to frac16 and saturates */
                        : "+l"(f16Mult1): "l"(f16Mult2));
    #endif

    return f16Mult1;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

#if defined(__cplusplus)
}
#endif

#endif /* _MLIB_MULRND_F16_ASM_H_ */
