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
* @brief  Rounding
* 
*******************************************************************************/
#ifndef _MLIB_RND_F32_ASM_H_
#define _MLIB_RND_F32_ASM_H_

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
#define MLIB_RndSat_F16l_Asmi(f32Val) MLIB_RndSat_F16l_FAsmi(f32Val)
  
/***************************************************************************//*!
*
* Converts 32-bit number into 16-bit with rounding
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
static inline frac16_t MLIB_RndSat_F16l_FAsmi(register frac32_t f32Val)
{
    register frac32_t f32RndVal = 0x8000;
    #if defined(__CC_ARM)                              /* For ARM Compiler */
        __asm volatile{ qadd f32Val, f32Val, f32RndVal /* f32Val = f32Val + 0x00008000 with saturation */
                        asr f32Val, f32Val, #16 };     /* f32Val >> 16 */

    #else
        __asm volatile( "qadd %0, %0, %1 \n"           /* f32Val = f32Val + 0x00008000 with saturation */
                        "asr %0, %0, #16 \n"           /* f32Val >> 16 */
                        : "+l"(f32Val): "l"(f32RndVal));
    #endif

    return (frac16_t)f32Val;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

#if defined(__cplusplus)
}
#endif

#endif /* _MLIB_RND_F32_ASM_H_ */
