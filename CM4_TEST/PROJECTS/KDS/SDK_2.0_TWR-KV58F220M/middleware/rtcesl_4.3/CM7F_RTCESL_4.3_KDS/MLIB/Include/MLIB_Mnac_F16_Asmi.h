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
* @brief  Multiply negate accumulate
* 
*******************************************************************************/
#ifndef _MLIB_MNAC_F16_ASM_H_
#define _MLIB_MNAC_F16_ASM_H_

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
#define MLIB_Mnac_F16_Asmi( f16Accum, f16Mult1, f16Mult2)                      \
        MLIB_Mnac_F16_FAsmi( f16Accum, f16Mult1, f16Mult2)
#define MLIB_MnacSat_F16_Asmi( f16Accum, f16Mult1, f16Mult2)                   \
        MLIB_MnacSat_F16_FAsmi( f16Accum, f16Mult1, f16Mult2)
  
/***************************************************************************//*!
*
* f16Out = - f16Accum + ( f16Mult1 * f16Mult2)
* Without saturation
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
static inline frac16_t MLIB_Mnac_F16_FAsmi(register frac16_t f16Accum, 
                                           register frac16_t f16Mult1, register frac16_t f16Mult2)
{
    #if defined(__CC_ARM)                                    /* For ARM Compiler */
        __asm volatile{ sxth f16Accum, f16Accum              /* Transforms 16-bit input f16Val to 32-bit */
                        smulbb f16Mult1, f16Mult1, f16Mult2  /* f16Mult1 * f16Mult2 */
                        asr f16Mult1, f16Mult1, #15          /* f16Mult1 * f16Mult2 >> 15 */ 
                        sub f16Accum, f16Mult1, f16Accum};   /* f16Accum = f16Mult1 * f16Mult2 - f16Accum*/
    #else
        __asm volatile( "sxth %0, %0 \n"                     /* Transforms 16-bit input f16Val to 32-bit */
                        "smulbb %1, %1, %2 \n"               /* f16Mult1 * f16Mult2 */
                        "asr %1, %1, #15 \n"                 /* f16Mult1 * f16Mult2 >> 15 */ 
                        "sub %0, %1, %0 \n"                  /* f16Accum = f16Mult1 * f16Mult2 - f16Accum*/
                        : "+l"(f16Accum), "+l"(f16Mult1): "l"(f16Mult2));
    #endif

    return f16Accum;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

/***************************************************************************//*!
*
* f16Out = - f16Accum + ( f16Mult1 * f16Mult2)
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
static inline frac16_t MLIB_MnacSat_F16_FAsmi(register frac16_t f16Accum, 
                                              register frac16_t f16Mult1, register frac16_t f16Mult2)
{
    #if defined(__CC_ARM)                                    /* For ARM Compiler */
        __asm volatile{ sxth f16Accum, f16Accum              /* Transforms 16-bit input f16Val to 32-bit */
                        smulbb f16Mult1, f16Mult1, f16Mult2  /* f16Mult1 * f16Mult2 */
                        asr f16Mult1, f16Mult1, #15          /* f16Mult1 * f16Mult2 >> 15 */ 
                        sub f16Accum, f16Mult1, f16Accum     /* f16Accum = f16Mult1 * f16Mult2 - f16Accum*/
                        ssat f16Accum, #16, f16Accum};       /* Saturation */
    #else
        __asm volatile( "sxth %0, %0 \n"                     /* Transforms 16-bit input f16Val to 32-bit */
                        "smulbb %1, %1, %2 \n"               /* f16Mult1 * f16Mult2 */
                        "asr %1, %1, #15 \n"                 /* f16Mult1 * f16Mult2 >> 15 */ 
                        "sub %0, %1, %0 \n"                  /* f16Accum = f16Mult1 * f16Mult2 - f16Accum*/
                        "ssat %0, #16, %0 \n"                /* Saturation */
                        : "+l"(f16Accum), "+l"(f16Mult1): "l"(f16Mult2));
    #endif

    return f16Accum;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

#if defined(__cplusplus)
}
#endif

#endif /* _MLIB_MNAC_F16_ASM_H_ */
