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
* @brief  Shift
* 
*******************************************************************************/
#ifndef _MLIB_SHIFT_F32_ASM_H_
#define _MLIB_SHIFT_F32_ASM_H_

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
#define MLIB_Sh1LSat_F32_Asmi(f32Val) MLIB_Sh1LSat_F32_FAsmi(f32Val)
#define MLIB_ShLSat_F32_Asmi(f32Val, u16Sh) MLIB_ShLSat_F32_FAsmi(f32Val, u16Sh)

/***************************************************************************//*!
*
* This function returns the f32Val input shifted by 1 to the left. 
*              The function saturates the output.
*
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
static inline frac32_t MLIB_Sh1LSat_F32_FAsmi(register frac32_t f32Val)
{
    #if defined(__CC_ARM)                              /* For ARM Compiler */
        __asm volatile{ qadd f32Val, f32Val, f32Val }; /* Addition with saturation */
    #else
        __asm volatile("qadd %0, %0, %0 \n"            /* Addition with saturation */
                        : "+l"(f32Val):);
    #endif

    return f32Val;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

/***************************************************************************//*!
*
* This function returns the f32Val input shifted by the number of u16Sh to the left. 
*          The function saturates the output.
*
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
static inline frac32_t MLIB_ShLSat_F32_FAsmi(register frac32_t f32Val, register uint16_t u16Sh)
{
    register frac32_t f32Out=0;
    register frac32_t f32SatVal = f32Val;
    #if defined(__CC_ARM)                                    /* For ARM Compiler */
        __asm volatile{ ssat f32SatVal, #2, f32SatVal        /* Saturates f32SatVal to 2-bit value */
                        lsl f32SatVal, f32SatVal, #30        /* f32SatVal << 30 */
                        qadd f32SatVal, f32SatVal, f32SatVal /* Addition with saturation */
                        lsl f32Out, f32Val, u16Sh            /* f32Out = f32Val << u16Sh */
                        asr u16Sh, f32Out, u16Sh             /* u16Sh = f32Out << u16Sh */
                        cmp u16Sh, f32Val                    /* Compares u16Sh and f32Val */
                        it ne                                /* If u16Sh != f32Val, then returns the saturate value */
                        movne f32Out, f32SatVal };
    #else
        __asm volatile( "ssat %1, #2, %1 \n"                 /* Saturates f32SatVal to 2-bit value */
                        "lsl %1, %1, #30 \n"                 /* f32SatVal << 30 */
                        "qadd %1, %1, %1 \n"                 /* Addition with saturation */
                        "lsl %0, %2, %3 \n"                  /* f32Out = f32Val << u16Sh */
                        "asr %3, %0, %3 \n"                  /* u16Sh = f32Out << u16Sh */
                        "cmp %3, %2 \n"                      /* Compares u16Sh and f32Val */
                        "it ne \n"                           /* If u16Sh != f32Val, then returns the saturate value */
                        "movne %0, %1 \n"
                        : "=&l"(f32Out), "+l"(f32SatVal), "+l"(f32Val), "+l"(u16Sh):);
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

#endif /* _MLIB_SHIFT_F32_ASM_H_ */
