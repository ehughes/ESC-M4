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
* @brief  Negation
* 
*******************************************************************************/
#ifndef _MLIB_NEG_F32_ASM_H_
#define _MLIB_NEG_F32_ASM_H_

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
#define MLIB_NegSat_F32_Asmi(f32Val) MLIB_NegSat_F32_FAsmi(f32Val)

/***************************************************************************//*!
*
* f32Out = -f32Val
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
static inline frac32_t MLIB_NegSat_F32_FAsmi(register frac32_t f32Val)
{
    register frac32_t f32Out = 0;
    #if defined(__CC_ARM)                                 /* For ARM Compiler */
        __asm volatile{ qsub f32Out, f32Out, f32Val };    /* f32Out = 0 - f32Val */
    #else
        __asm volatile( "qsub %0, %0, %1 \n"              /* f32Out = 0 - f32Val */
                        : "+l"(f32Out): "l"(f32Val));
    #endif

    return f32Out;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 


#if defined(__cplusplus)
}
#endif

#endif /* _MLIB_NEG_F32_ASM_H_ */
