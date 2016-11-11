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
* @brief  Absolute Value
* 
*******************************************************************************/
#ifndef _MLIB_ABS_F32_ASM_H_
#define _MLIB_ABS_F32_ASM_H_

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
#define MLIB_AbsSat_F32_Asmi(f32Val) MLIB_AbsSat_F32_FAsmi(f32Val)
  
/***************************************************************************//*!
*  Absolute value saturated
*     f32Out = |f32In|
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
static inline frac32_t MLIB_AbsSat_F32_FAsmi(register frac32_t f32Val)
{
      register frac32_t f32Temp = 1;
      #if defined(__CC_ARM)                                     /* For ARM Compiler */
              __asm volatile{ cmp f32Val, #0                    /* Compares f32Val with 0 */
                              itt lt                            /* If f32Val < 0, then executes next two commands */
                              mvnlt f32Val, f32Val              /* f32Val = ~f32Val */
                              qaddlt f32Val, f32Val, f32Temp }; /* f32Val = f32Val + 1 */
      #else
              __asm volatile( "cmp %0, #0 \n"                   /* Compares f32Val with 0 */
                              "itt lt \n"                       /* If f32Val < 0, then executes next two commands */
                              "mvnlt %0, %0 \n"                 /* f32Val = ~f32Val */
                              "qaddlt %0, %0, %1 \n"            /* f32Val = f32Val + 1 */
                              : "+l"(f32Val): "l"(f32Temp));
      #endif

      return f32Val;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 


#if defined(__cplusplus)
}
#endif

#endif  /* _MLIB_ABS_F32_ASM_H_*/
