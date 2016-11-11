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
* @brief  Multiply subtract of four inputs with rounding
* 
*******************************************************************************/
#ifndef _MLIB_MSU4RND_F32_ASM_H_
#define _MLIB_MSU4RND_F32_ASM_H_

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
#define MLIB_Msu4RndSat_F32_Asmi( f32MinMul1, f32MinMul2, f32SubMul1, f32SubMul2) MLIB_Msu4RndSat_F32_FAsmi( f32MinMul1, f32MinMul2, f32SubMul1, f32SubMul2)

/***************************************************************************//*!
*
* f32Out = (f32MinMul1 * f32MinMul2) - (f32SubMul1 * f32SubMul2)
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
static inline frac32_t MLIB_Msu4RndSat_F32_FAsmi(register frac32_t f32MinMul1,register frac32_t f32MinMul2,register frac32_t f32SubMul1,register frac32_t f32SubMul2)
{         
    #if defined(__CC_ARM)                                                        /* For ARM Compiler */
        __asm volatile{ smull f32MinMul2, f32MinMul1, f32MinMul2, f32MinMul1     /* f16Add1Mul1 * f16Add1Mul2 */
                        smull f32SubMul2, f32SubMul1, f32SubMul2, f32SubMul1     /* f16Add2Mul1 * f16Add2Mul2 */
                        subs f32MinMul2, f32MinMul2, f32SubMul2                  /* Subtraction of lower parts */
                        sbc f32MinMul1, f32MinMul1, f32SubMul1                   /* Subtraction of higher parts */
                        adds f32MinMul2, f32MinMul2, #0x40000000                 /* Rounding */
                        adc f32MinMul1, f32MinMul1, #0                           /* Adds carry bit */
                        add f32SubMul1, f32MinMul1, f32MinMul1                   /* Converts high part of result to fractional value */
                        qadd f32MinMul1, f32MinMul1, f32MinMul1                  /* Converts high part of result to fractional value with saturation */
                        cmp f32MinMul1, f32SubMul1                               /* Compares result with saturation and result without saturation */
                        it eq                                                    /* If values are equal, then adds the last bit */
                        orreq f32MinMul1, f32MinMul1, f32MinMul2, lsr #31 };     /* Result = Result + Last bit */
    #else
        __asm volatile( "smull %1, %0, %1, %0 \n"                                /* f16Add1Mul1 * f16Add1Mul2 */
                        "smull %3, %2, %3, %2 \n"                                /* f16Add2Mul1 * f16Add2Mul2 */
                        "subs %1, %1, %3 \n"                                     /* Subtraction of lower parts */
                        "sbc %0, %0, %2 \n"                                      /* Subtraction of higher parts */
                        "adds %1, %1, #0x40000000 \n"                            /* Rounding */
                        "adc %0, %0, #0 \n"                                      /* Adds carry bit */
                        "add %2, %0, %0 \n"                                      /* Converts high part of result to fractional value */
                        "qadd %0, %0, %0 \n"                                     /* Converts high part of result to fractional value with saturation */
                        "cmp %0, %2 \n"                                          /* Compares result with saturation and result without saturation */
                        "it eq \n"                                               /* If values are equal, then adds the last bit */
                        "orreq %0, %0, %1, lsr #31 \n"                           /* Result = Result + Last bit */
                        : "+l"(f32MinMul1), "+l"(f32MinMul2), "+l"(f32SubMul1), "+l"(f32SubMul2):);
    #endif

    return f32MinMul1;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

#if defined(__cplusplus)
}
#endif

#endif /* _MLIB_MSU4RND_F32_ASM_H_ */
