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
* @brief  Multiply 
* 
*******************************************************************************/
#ifndef _MLIB_MUL_A32_ASM_H_
#define _MLIB_MUL_A32_ASM_H_

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
#define MLIB_MulSat_F16as_Asmi(a32Accum, f16Mult) MLIB_MulSat_F16as_FAsmi(a32Accum, f16Mult)
#define MLIB_MulNegSat_F16as_Asmi(a32Accum, f16Mult) MLIB_MulNegSat_F16as_FAsmi(a32Accum, f16Mult)
#define MLIB_MulSat_A32_Asmi(a32Mult1, a32Mult2) MLIB_MulSat_A32_FAsmi(a32Mult1, a32Mult2)
#define MLIB_MulNegSat_A32_Asmi(a32Mult1, a32Mult2) MLIB_MulNegSat_A32_FAsmi(a32Mult1, a32Mult2)
/***************************************************************************//*!
*
* f16Out = a32Accum * f16Mult
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
static inline frac16_t MLIB_MulSat_F16as_FAsmi(register acc32_t a32Accum, register frac16_t f16Mult)
{
    #if defined(__CC_ARM)                                            /* For ARM Compiler */
        __asm volatile{ lsl f16Mult, f16Mult, #16                    /* f16Mult << 16 */
                        smull a32Accum, f16Mult, f16Mult, a32Accum   /* a32Accum * (f16Mult << 16) */
                        lsr a32Accum, a32Accum, #31                  /* a32Accum >> 31 */
                        qdadd f16Mult, a32Accum, f16Mult             /* Correction of result for fractional multiplication */
                        ssat f16Mult, #16, f16Mult };                /* Saturation */
    #else
        __asm volatile( "lsl %0, %0, #16 \n"                         /* f16Mult << 16 */
                        "smull %1, %0, %0, %1 \n"                    /* a32Accum * (f16Mult << 16) */
                        "lsr %1, %1, #31 \n"                         /* a32Accum >> 31 */
                        "qdadd %0, %1, %0 \n"                        /* Correction of result for fractional multiplication */
                        "ssat %0, #16, %0 \n"                        /* Saturation */
                        : "+l"(f16Mult), "+l"(a32Accum):);
    #endif

    return f16Mult;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

/***************************************************************************//*!
*
* f16Out = - a32Accum * f16Mult
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
static inline frac16_t MLIB_MulNegSat_F16as_FAsmi(register acc32_t a32Accum, register frac16_t f16Mult)
{
    #if defined(__CC_ARM)                                            /* For ARM Compiler */
        __asm volatile{ lsl f16Mult, f16Mult, #16                    /* f16Mult << 16 */
                        smull a32Accum, f16Mult, f16Mult, a32Accum   /* a32Accum * (f16Mult << 16) */
                        lsr a32Accum, a32Accum, #31                  /* a32Accum >> 31 */
                        rsb a32Accum, a32Accum, #0                   /* a32Accum = - a32Accum */
                        qdsub f16Mult, a32Accum, f16Mult             /* f16Mult = a32Accum - 2 * f16Mult */
                        ssat f16Mult, #16, f16Mult };                /* Saturation */
    #else
        __asm volatile( "lsl %0, %0, #16 \n"                         /* f16Mult << 16 */
                        "smull %1, %0, %0, %1 \n"                    /* a32Accum * (f16Mult << 16) */
                        "lsr %1, %1, #31 \n"                         /* a32Accum >> 31 */
                        "rsb %1, %1, #0 \n"                          /* a32Accum = - a32Accum */
                        "qdsub %0, %1, %0 \n"                        /* f16Mult = a32Accum - 2 * f16Mult */
                        "ssat %0, #16, %0 \n"                        /* Saturation */
                        : "+l"(f16Mult), "+l"(a32Accum):);
    #endif

    return f16Mult;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

/***************************************************************************//*!
*
* f32Out = f32Mult1 * f32Mult2
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
static inline acc32_t MLIB_MulSat_A32_FAsmi(register acc32_t a32Mult1, register acc32_t a32Mult2)
{
    register acc32_t a32Out=0;
    #if defined(__CC_ARM)                                            /* For ARM Compiler */
        __asm volatile{ smull a32Mult1, a32Mult2, a32Mult2, a32Mult1 /* a32Mult1 * a32Mult2 */
                        ssat a32Out, #15, a32Mult2                   /* Saturates to a signed 15-bit value */
                        cmp a32Out, a32Mult2                         /* Compares saturated and unsaturated values */
                        lsl a32Out, a32Out, #17                      /* a32Out << 17 */
                        ite eq                                       /* Condition block */
                        addeq a32Out, a32Out, a32Mult1, lsr #15      /* If saturated and unsaturated values are equal, then does not saturate result */
                        qaddne a32Out, a32Out, a32Out };             /* If saturated and unsaturated values are not equal, then saturates result */
    #else
        __asm volatile( "smull %1, %2, %2, %1 \n"                    /* a32Mult1 * a32Mult2 */
                        "ssat %0, #15, %2 \n"                        /* Saturates to a signed 15-bit value */
                        "cmp %0, %2 \n"                              /* Compares saturated and unsaturated values */
                        "lsl %0, %0, #17 \n"                         /* a32Out << 17 */
                        "ite eq \n"                                  /* Condition block */
                        "addeq %0, %0, %1, lsr #15 \n"               /* If saturated and unsaturated values are equal, then does not saturate result */
                        "qaddne %0, %0, %0 \n"                       /* If saturated and unsaturated values are not equal, then saturates result */
                        : "=&l"(a32Out), "+l"(a32Mult1), "+l"(a32Mult2):);
    #endif

    return a32Out;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

/***************************************************************************//*!
*
* f32Out = - f32Mult1 * f32Mult2
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
static inline acc32_t MLIB_MulNegSat_A32_FAsmi(register acc32_t a32Mult1, register acc32_t a32Mult2)
{
    register acc32_t a32Out=0;
    #if defined(__CC_ARM)                                            /* For ARM Compiler */
        __asm volatile{ smull a32Mult1, a32Mult2, a32Mult2, a32Mult1 /* a32Mult1 * a32Mult2 */
                        ssat a32Out, #15, a32Mult2                   /* Saturates to a signed 15-bit value */
                        cmp a32Out, a32Mult2                         /* Compares saturated and unsaturated values */
                        lsl a32Out, a32Out, #17                      /* a32Out << 17 */
                        ittee eq                                     /* Condition block */
                        addeq a32Out, a32Out, a32Mult1, lsr #15      /* If saturated and unsaturated values are equal, then does not saturate result */
                        rsbeq a32Out, a32Out, #0                     /* Negation */
                        qaddne a32Out, a32Out, a32Out                /* If saturated and unsaturated values are not equal, then saturates result */
                        mvnne a32Out, a32Out };                      /* Negation */
    #else
        __asm volatile( "smull %1, %2, %2, %1 \n"                    /* a32Mult1 * a32Mult2 */
                        "ssat %0, #15, %2 \n"                        /* Saturates to a signed 15-bit value */
                        "cmp %0, %2 \n"                              /* Compares saturated and unsaturated values */
                        "lsl %0, %0, #17 \n"                         /* a32Out << 17 */
                        "ittee eq \n"                                /* Condition block */
                        "addeq %0, %0, %1, lsr #15 \n"               /* If saturated and unsaturated values are equal, then does not saturate result */
                        "rsbeq %0, %0, #0 \n"                        /* Negation */
                        "qaddne %0, %0, %0 \n"                       /* If saturated and unsaturated values are not equal, then saturates result */
                        "mvnne %0, %0 \n"                            /* Negation */
                        : "=&l"(a32Out), "+l"(a32Mult1), "+l"(a32Mult2):);
    #endif

    return a32Out;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

#if defined(__cplusplus)
}
#endif

#endif /* _MLIB_MUL_A32_ASM_H_ */
