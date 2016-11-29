#line 1 "..\\..\\SRC\\CMSIS_DSP_4_5\\src\\TransformFunctions\\arm_dct4_init_f32.c"






































 


#line 1 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"






































 



















































































































 




 








 









 



 






































































 



 



 



 


 






 



 





#line 1 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cm4.h"
 







 

























 
























 




 


 

 













#line 110 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cm4.h"



 
#line 125 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cm4.h"

#line 186 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cm4.h"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 188 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cm4.h"
#line 1 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 










 











 









 









 









 











 











 











 







 










 










 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}









 









 









 









 









 









 





#line 877 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cmInstr.h"

   

#line 189 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cm4.h"
#line 1 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}








 







 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}











 
static __inline uint32_t __get_FPSCR(void)
{

  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}







 
static __inline void __set_FPSCR(uint32_t fpscr)
{

  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);

}




#line 634 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cmFunc.h"

 

#line 190 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cm4.h"
#line 1 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cmSimd.h"
 







 

























 
















 


 



 


 
#line 122 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cmSimd.h"











#line 689 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cmSimd.h"

 






#line 191 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\core_cm4.h"







#line 290 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"
#line 301 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 304 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"




 





 












 






   









 






#line 61 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 75 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   




 















 
#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











 





extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double  , double  );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double  );
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 230 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   
  typedef float float_t;
  typedef double double_t;
#line 251 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"



extern const int math_errhandling;
#line 261 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    inline double _sqrt(double __x) { return sqrt(__x); }


    inline float _sqrtf(float __x) { return __sqrtf(__x); }



    



 

extern __declspec(__nothrow) __attribute__((const)) double ceil(double  );
    
    
extern __declspec(__nothrow) __attribute__((const)) double fabs(double  );
    
    

extern __declspec(__nothrow) __attribute__((const)) double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
inline __declspec(__nothrow) __attribute__((const)) double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
inline __declspec(__nothrow) __attribute__((const)) float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 479 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __attribute__((const)) double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __attribute__((const)) float _fabsf(float);  
inline __declspec(__nothrow) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __attribute__((const)) float ceilf(float  );
extern __declspec(__nothrow) __attribute__((const)) float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );






 
extern __declspec(__nothrow) double exp2(double  );  
extern __declspec(__nothrow) float exp2f(float  );
__declspec(__nothrow) long double exp2l(long double );
extern __declspec(__nothrow) double fdim(double  , double  );
extern __declspec(__nothrow) float fdimf(float  , float  );
__declspec(__nothrow) long double fdiml(long double , long double );
#line 803 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"
extern __declspec(__nothrow) double fma(double  , double  , double  );
extern __declspec(__nothrow) float fmaf(float  , float  , float  );

inline __declspec(__nothrow) long double fmal(long double __x, long double __y, long double __z)     { return (long double)fma((double)__x, (double)__y, (double)__z); }


extern __declspec(__nothrow) __attribute__((const)) double fmax(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fmaxf(float  , float  );
__declspec(__nothrow) long double fmaxl(long double , long double );
extern __declspec(__nothrow) __attribute__((const)) double fmin(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fminf(float  , float  );
__declspec(__nothrow) long double fminl(long double , long double );
extern __declspec(__nothrow) double log2(double  );  
extern __declspec(__nothrow) float log2f(float  );
__declspec(__nothrow) long double log2l(long double );
extern __declspec(__nothrow) long lrint(double  );
extern __declspec(__nothrow) long lrintf(float  );

inline __declspec(__nothrow) long lrintl(long double __x)     { return lrint((double)__x); }


extern __declspec(__nothrow) long long llrint(double  );
extern __declspec(__nothrow) long long llrintf(float  );

inline __declspec(__nothrow) long long llrintl(long double __x)     { return llrint((double)__x); }


extern __declspec(__nothrow) long lround(double  );
extern __declspec(__nothrow) long lroundf(float  );

inline __declspec(__nothrow) long lroundl(long double __x)     { return lround((double)__x); }


extern __declspec(__nothrow) long long llround(double  );
extern __declspec(__nothrow) long long llroundf(float  );

inline __declspec(__nothrow) long long llroundl(long double __x)     { return llround((double)__x); }


extern __declspec(__nothrow) __attribute__((const)) double nan(const char * );
extern __declspec(__nothrow) __attribute__((const)) float nanf(const char * );

inline __declspec(__nothrow) __attribute__((const)) long double nanl(const char *__t)     { return (long double)nan(__t); }
#line 856 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"
extern __declspec(__nothrow) __attribute__((const)) double nearbyint(double  );
extern __declspec(__nothrow) __attribute__((const)) float nearbyintf(float  );
__declspec(__nothrow) long double nearbyintl(long double );
extern  double remquo(double  , double  , int * );
extern  float remquof(float  , float  , int * );

inline long double remquol(long double __x, long double __y, int *__q)     { return (long double)remquo((double)__x, (double)__y, __q); }


extern __declspec(__nothrow) __attribute__((const)) double round(double  );
extern __declspec(__nothrow) __attribute__((const)) float roundf(float  );
__declspec(__nothrow) long double roundl(long double );
extern __declspec(__nothrow) double tgamma(double  );  
extern __declspec(__nothrow) float tgammaf(float  );
__declspec(__nothrow) long double tgammal(long double );
extern __declspec(__nothrow) __attribute__((const)) double trunc(double  );
extern __declspec(__nothrow) __attribute__((const)) float truncf(float  );
__declspec(__nothrow) long double truncl(long double );






#line 896 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 1087 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











#line 1317 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





 
#line 305 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"






  

 

#line 321 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"

  

 

#line 333 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"

  

 
   
   


  

 
#line 353 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"

  

 

  typedef enum
  {
    ARM_MATH_SUCCESS = 0,                 
    ARM_MATH_ARGUMENT_ERROR = -1,         
    ARM_MATH_LENGTH_ERROR = -2,           
    ARM_MATH_SIZE_MISMATCH = -3,          
    ARM_MATH_NANINF = -4,                 
    ARM_MATH_SINGULAR = -5,               
    ARM_MATH_TEST_FAILURE = -6            
  } arm_status;

  

 
  typedef int8_t q7_t;

  

 
  typedef int16_t q15_t;

  

 
  typedef int32_t q31_t;

  

 
  typedef int64_t q63_t;

  

 
  typedef float float32_t;

  

 
  typedef double float64_t;

  

 
#line 417 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"








#line 435 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"


   

 


#line 454 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"


  

 
  static __inline q31_t clip_q63_to_q31(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFFFFFF ^ ((q31_t) (x >> 63)))) : (q31_t) x;
  }

  

 
  static __inline q15_t clip_q63_to_q15(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFF ^ ((q15_t) (x >> 63)))) : (q15_t) (x >> 15);
  }

  

 
  static __inline q7_t clip_q31_to_q7(
  q31_t x)
  {
    return ((q31_t) (x >> 24) != ((q31_t) x >> 23)) ?
      ((0x7F ^ ((q7_t) (x >> 31)))) : (q7_t) x;
  }

  

 
  static __inline q15_t clip_q31_to_q15(
  q31_t x)
  {
    return ((q31_t) (x >> 16) != ((q31_t) x >> 15)) ?
      ((0x7FFF ^ ((q15_t) (x >> 31)))) : (q15_t) x;
  }

  

 

  static __inline q63_t mult32x64(
  q63_t x,
  q31_t y)
  {
    return ((((q63_t) (x & 0x00000000FFFFFFFF) * y) >> 32) +
            (((q63_t) (x >> 32) * y)));
  }






#line 536 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"

  

 

  static __inline uint32_t arm_recip_q31(
  q31_t in,
  q31_t * dst,
  q31_t * pRecipTable)
  {

    uint32_t out, tempVal;
    uint32_t index, i;
    uint32_t signBits;

    if(in > 0)
    {
      signBits = __clz(in) - 1;
    }
    else
    {
      signBits = __clz(-in) - 1;
    }

     
    in = in << signBits;

     
    index = (uint32_t) (in >> 24u);
    index = (index & 0x0000003F);

     
    out = pRecipTable[index];

     
     
    for (i = 0u; i < 2u; i++)
    {
      tempVal = (q31_t) (((q63_t) in * out) >> 31u);
      tempVal = 0x7FFFFFFF - tempVal;
       
      
      out = (q31_t) clip_q63_to_q31(((q63_t) out * tempVal) >> 30u);
    }

     
    *dst = out;

     
    return (signBits + 1u);

  }

  

 
  static __inline uint32_t arm_recip_q15(
  q15_t in,
  q15_t * dst,
  q15_t * pRecipTable)
  {

    uint32_t out = 0, tempVal = 0;
    uint32_t index = 0, i = 0;
    uint32_t signBits = 0;

    if(in > 0)
    {
      signBits = __clz(in) - 17;
    }
    else
    {
      signBits = __clz(-in) - 17;
    }

     
    in = in << signBits;

     
    index = in >> 8;
    index = (index & 0x0000003F);

     
    out = pRecipTable[index];

     
     
    for (i = 0; i < 2; i++)
    {
      tempVal = (q15_t) (((q31_t) in * out) >> 15);
      tempVal = 0x7FFF - tempVal;
       
      out = (q15_t) (((q31_t) out * tempVal) >> 14);
    }

     
    *dst = out;

     
    return (signBits + 1);

  }


  

 
#line 682 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"



  

 
#line 1065 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"


  

 
  typedef struct
  {
    uint16_t numTaps;         
    q7_t *pState;             
    q7_t *pCoeffs;            
  } arm_fir_instance_q7;

  

 
  typedef struct
  {
    uint16_t numTaps;          
    q15_t *pState;             
    q15_t *pCoeffs;            
  } arm_fir_instance_q15;

  

 
  typedef struct
  {
    uint16_t numTaps;          
    q31_t *pState;             
    q31_t *pCoeffs;            
  } arm_fir_instance_q31;

  

 
  typedef struct
  {
    uint16_t numTaps;      
    float32_t *pState;     
    float32_t *pCoeffs;    
  } arm_fir_instance_f32;


  






 
  void arm_fir_q7(
  const arm_fir_instance_q7 * S,
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  







 
  void arm_fir_init_q7(
  arm_fir_instance_q7 * S,
  uint16_t numTaps,
  q7_t * pCoeffs,
  q7_t * pState,
  uint32_t blockSize);


  






 
  void arm_fir_q15(
  const arm_fir_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  






 
  void arm_fir_fast_q15(
  const arm_fir_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  








 

  arm_status arm_fir_init_q15(
  arm_fir_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  






 
  void arm_fir_q31(
  const arm_fir_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 
  void arm_fir_fast_q31(
  const arm_fir_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  







 
  void arm_fir_init_q31(
  arm_fir_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);

  






 
  void arm_fir_f32(
  const arm_fir_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  







 
  void arm_fir_init_f32(
  arm_fir_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  

 
  typedef struct
  {
    int8_t numStages;          
    q15_t *pState;             
    q15_t *pCoeffs;            
    int8_t postShift;          

  } arm_biquad_casd_df1_inst_q15;


  

 
  typedef struct
  {
    uint32_t numStages;       
    q31_t *pState;            
    q31_t *pCoeffs;           
    uint8_t postShift;        

  } arm_biquad_casd_df1_inst_q31;

  

 
  typedef struct
  {
    uint32_t numStages;          
    float32_t *pState;           
    float32_t *pCoeffs;          


  } arm_biquad_casd_df1_inst_f32;



  






 

  void arm_biquad_cascade_df1_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  







 

  void arm_biquad_cascade_df1_init_q15(
  arm_biquad_casd_df1_inst_q15 * S,
  uint8_t numStages,
  q15_t * pCoeffs,
  q15_t * pState,
  int8_t postShift);


  






 

  void arm_biquad_cascade_df1_fast_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cascade_df1_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_biquad_cascade_df1_fast_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  







 

  void arm_biquad_cascade_df1_init_q31(
  arm_biquad_casd_df1_inst_q31 * S,
  uint8_t numStages,
  q31_t * pCoeffs,
  q31_t * pState,
  int8_t postShift);

  






 

  void arm_biquad_cascade_df1_f32(
  const arm_biquad_casd_df1_inst_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_biquad_cascade_df1_init_f32(
  arm_biquad_casd_df1_inst_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    float32_t *pData;      
  } arm_matrix_instance_f32;


  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    float64_t *pData;      
  } arm_matrix_instance_f64;

  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    q15_t *pData;          

  } arm_matrix_instance_q15;

  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    q31_t *pData;          

  } arm_matrix_instance_q31;



  






 

  arm_status arm_mat_add_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  






 

  arm_status arm_mat_add_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst);

  






 

  arm_status arm_mat_add_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  






 

  arm_status arm_mat_cmplx_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  






 

  arm_status arm_mat_cmplx_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pScratch);

  






 

  arm_status arm_mat_cmplx_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  





 

  arm_status arm_mat_trans_f32(
  const arm_matrix_instance_f32 * pSrc,
  arm_matrix_instance_f32 * pDst);


  





 

  arm_status arm_mat_trans_q15(
  const arm_matrix_instance_q15 * pSrc,
  arm_matrix_instance_q15 * pDst);

  





 

  arm_status arm_mat_trans_q31(
  const arm_matrix_instance_q31 * pSrc,
  arm_matrix_instance_q31 * pDst);


  






 

  arm_status arm_mat_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  







 

  arm_status arm_mat_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pState);

  







 

  arm_status arm_mat_mult_fast_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pState);

  






 

  arm_status arm_mat_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  






 

  arm_status arm_mat_mult_fast_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  






 

  arm_status arm_mat_sub_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  






 

  arm_status arm_mat_sub_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst);

  






 

  arm_status arm_mat_sub_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  






 

  arm_status arm_mat_scale_f32(
  const arm_matrix_instance_f32 * pSrc,
  float32_t scale,
  arm_matrix_instance_f32 * pDst);

  







 

  arm_status arm_mat_scale_q15(
  const arm_matrix_instance_q15 * pSrc,
  q15_t scaleFract,
  int32_t shift,
  arm_matrix_instance_q15 * pDst);

  







 

  arm_status arm_mat_scale_q31(
  const arm_matrix_instance_q31 * pSrc,
  q31_t scaleFract,
  int32_t shift,
  arm_matrix_instance_q31 * pDst);


  






 

  void arm_mat_init_q31(
  arm_matrix_instance_q31 * S,
  uint16_t nRows,
  uint16_t nColumns,
  q31_t * pData);

  






 

  void arm_mat_init_q15(
  arm_matrix_instance_q15 * S,
  uint16_t nRows,
  uint16_t nColumns,
  q15_t * pData);

  






 

  void arm_mat_init_f32(
  arm_matrix_instance_f32 * S,
  uint16_t nRows,
  uint16_t nColumns,
  float32_t * pData);



  

 
  typedef struct
  {
    q15_t A0;     




    q31_t A1;            

    q15_t state[3];        
    q15_t Kp;            
    q15_t Ki;            
    q15_t Kd;            
  } arm_pid_instance_q15;

  

 
  typedef struct
  {
    q31_t A0;             
    q31_t A1;             
    q31_t A2;             
    q31_t state[3];       
    q31_t Kp;             
    q31_t Ki;             
    q31_t Kd;             

  } arm_pid_instance_q31;

  

 
  typedef struct
  {
    float32_t A0;           
    float32_t A1;           
    float32_t A2;           
    float32_t state[3];     
    float32_t Kp;                
    float32_t Ki;                
    float32_t Kd;                
  } arm_pid_instance_f32;



  




 
  void arm_pid_init_f32(
  arm_pid_instance_f32 * S,
  int32_t resetStateFlag);

  



 
  void arm_pid_reset_f32(
  arm_pid_instance_f32 * S);


  




 
  void arm_pid_init_q31(
  arm_pid_instance_q31 * S,
  int32_t resetStateFlag);


  



 

  void arm_pid_reset_q31(
  arm_pid_instance_q31 * S);

  




 
  void arm_pid_init_q15(
  arm_pid_instance_q15 * S,
  int32_t resetStateFlag);

  



 
  void arm_pid_reset_q15(
  arm_pid_instance_q15 * S);


  

 
  typedef struct
  {
    uint32_t nValues;            
    float32_t x1;                
    float32_t xSpacing;          
    float32_t *pYData;           
  } arm_linear_interp_instance_f32;

  

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    float32_t *pData;    
  } arm_bilinear_interp_instance_f32;

   

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q31_t *pData;        
  } arm_bilinear_interp_instance_q31;

   

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q15_t *pData;        
  } arm_bilinear_interp_instance_q15;

   

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q7_t *pData;                 
  } arm_bilinear_interp_instance_q7;


  






 

  void arm_mult_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_mult_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_mult_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_mult_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);






  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q15_t *pTwiddle;                      
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix2_instance_q15;

 
  arm_status arm_cfft_radix2_init_q15(
  arm_cfft_radix2_instance_q15 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_q15(
  const arm_cfft_radix2_instance_q15 * S,
  q15_t * pSrc);



  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q15_t *pTwiddle;                  
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix4_instance_q15;

 
  arm_status arm_cfft_radix4_init_q15(
  arm_cfft_radix4_instance_q15 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix4_q15(
  const arm_cfft_radix4_instance_q15 * S,
  q15_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q31_t *pTwiddle;                      
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix2_instance_q31;

 
  arm_status arm_cfft_radix2_init_q31(
  arm_cfft_radix2_instance_q31 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_q31(
  const arm_cfft_radix2_instance_q31 * S,
  q31_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q31_t *pTwiddle;                  
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix4_instance_q31;

 
  void arm_cfft_radix4_q31(
  const arm_cfft_radix4_instance_q31 * S,
  q31_t * pSrc);

 
  arm_status arm_cfft_radix4_init_q31(
  arm_cfft_radix4_instance_q31 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    uint8_t ifftFlag;                   
    uint8_t bitReverseFlag;             
    float32_t *pTwiddle;                
    uint16_t *pBitRevTable;             
    uint16_t twidCoefModifier;          
    uint16_t bitRevFactor;              
    float32_t onebyfftLen;                  
  } arm_cfft_radix2_instance_f32;

 
  arm_status arm_cfft_radix2_init_f32(
  arm_cfft_radix2_instance_f32 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_f32(
  const arm_cfft_radix2_instance_f32 * S,
  float32_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    uint8_t ifftFlag;                   
    uint8_t bitReverseFlag;             
    float32_t *pTwiddle;                
    uint16_t *pBitRevTable;             
    uint16_t twidCoefModifier;          
    uint16_t bitRevFactor;              
    float32_t onebyfftLen;                  
  } arm_cfft_radix4_instance_f32;

 
  arm_status arm_cfft_radix4_init_f32(
  arm_cfft_radix4_instance_f32 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix4_f32(
  const arm_cfft_radix4_instance_f32 * S,
  float32_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    const q15_t *pTwiddle;              
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_q15;

void arm_cfft_q15( 
    const arm_cfft_instance_q15 * S, 
    q15_t * p1,
    uint8_t ifftFlag,
    uint8_t bitReverseFlag);  

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    const q31_t *pTwiddle;              
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_q31;

void arm_cfft_q31( 
    const arm_cfft_instance_q31 * S, 
    q31_t * p1,
    uint8_t ifftFlag,
    uint8_t bitReverseFlag);  
  
  

 

  typedef struct
  {
    uint16_t fftLen;                    
    const float32_t *pTwiddle;          
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_f32;

  void arm_cfft_f32(
  const arm_cfft_instance_f32 * S,
  float32_t * p1,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  

 

  typedef struct
  {
    uint32_t fftLenReal;                       
    uint8_t ifftFlagR;                         
    uint8_t bitReverseFlagR;                   
    uint32_t twidCoefRModifier;                
    q15_t *pTwiddleAReal;                      
    q15_t *pTwiddleBReal;                      
    const arm_cfft_instance_q15 *pCfft;        
  } arm_rfft_instance_q15;

  arm_status arm_rfft_init_q15(
  arm_rfft_instance_q15 * S,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_q15(
  const arm_rfft_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst);

  

 

  typedef struct
  {
    uint32_t fftLenReal;                         
    uint8_t ifftFlagR;                           
    uint8_t bitReverseFlagR;                     
    uint32_t twidCoefRModifier;                  
    q31_t *pTwiddleAReal;                        
    q31_t *pTwiddleBReal;                        
    const arm_cfft_instance_q31 *pCfft;          
  } arm_rfft_instance_q31;

  arm_status arm_rfft_init_q31(
  arm_rfft_instance_q31 * S,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_q31(
  const arm_rfft_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst);

  

 

  typedef struct
  {
    uint32_t fftLenReal;                         
    uint16_t fftLenBy2;                          
    uint8_t ifftFlagR;                           
    uint8_t bitReverseFlagR;                     
    uint32_t twidCoefRModifier;                      
    float32_t *pTwiddleAReal;                    
    float32_t *pTwiddleBReal;                    
    arm_cfft_radix4_instance_f32 *pCfft;         
  } arm_rfft_instance_f32;

  arm_status arm_rfft_init_f32(
  arm_rfft_instance_f32 * S,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_f32(
  const arm_rfft_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst);

  

 

typedef struct
  {
    arm_cfft_instance_f32 Sint;       
    uint16_t fftLenRFFT;                         
	float32_t * pTwiddleRFFT;					 
  } arm_rfft_fast_instance_f32 ;

arm_status arm_rfft_fast_init_f32 (
	arm_rfft_fast_instance_f32 * S,
	uint16_t fftLen);

void arm_rfft_fast_f32(
  arm_rfft_fast_instance_f32 * S,
  float32_t * p, float32_t * pOut,
  uint8_t ifftFlag);

  

 

  typedef struct
  {
    uint16_t N;                          
    uint16_t Nby2;                       
    float32_t normalize;                 
    float32_t *pTwiddle;                 
    float32_t *pCosFactor;               
    arm_rfft_instance_f32 *pRfft;         
    arm_cfft_radix4_instance_f32 *pCfft;  
  } arm_dct4_instance_f32;

  








 

  arm_status arm_dct4_init_f32(
  arm_dct4_instance_f32 * S,
  arm_rfft_instance_f32 * S_RFFT,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  float32_t normalize);

  





 

  void arm_dct4_f32(
  const arm_dct4_instance_f32 * S,
  float32_t * pState,
  float32_t * pInlineBuffer);

  

 

  typedef struct
  {
    uint16_t N;                          
    uint16_t Nby2;                       
    q31_t normalize;                     
    q31_t *pTwiddle;                     
    q31_t *pCosFactor;                   
    arm_rfft_instance_q31 *pRfft;         
    arm_cfft_radix4_instance_q31 *pCfft;  
  } arm_dct4_instance_q31;

  








 

  arm_status arm_dct4_init_q31(
  arm_dct4_instance_q31 * S,
  arm_rfft_instance_q31 * S_RFFT,
  arm_cfft_radix4_instance_q31 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  q31_t normalize);

  





 

  void arm_dct4_q31(
  const arm_dct4_instance_q31 * S,
  q31_t * pState,
  q31_t * pInlineBuffer);

  

 

  typedef struct
  {
    uint16_t N;                          
    uint16_t Nby2;                       
    q15_t normalize;                     
    q15_t *pTwiddle;                     
    q15_t *pCosFactor;                   
    arm_rfft_instance_q15 *pRfft;         
    arm_cfft_radix4_instance_q15 *pCfft;  
  } arm_dct4_instance_q15;

  








 

  arm_status arm_dct4_init_q15(
  arm_dct4_instance_q15 * S,
  arm_rfft_instance_q15 * S_RFFT,
  arm_cfft_radix4_instance_q15 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  q15_t normalize);

  





 

  void arm_dct4_q15(
  const arm_dct4_instance_q15 * S,
  q15_t * pState,
  q15_t * pInlineBuffer);

  






 

  void arm_add_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_add_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_add_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_add_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_scale_f32(
  float32_t * pSrc,
  float32_t scale,
  float32_t * pDst,
  uint32_t blockSize);

  







 

  void arm_scale_q7(
  q7_t * pSrc,
  q7_t scaleFract,
  int8_t shift,
  q7_t * pDst,
  uint32_t blockSize);

  







 

  void arm_scale_q15(
  q15_t * pSrc,
  q15_t scaleFract,
  int8_t shift,
  q15_t * pDst,
  uint32_t blockSize);

  







 

  void arm_scale_q31(
  q31_t * pSrc,
  q31_t scaleFract,
  int8_t shift,
  q31_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_dot_prod_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  uint32_t blockSize,
  float32_t * result);

  






 

  void arm_dot_prod_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  uint32_t blockSize,
  q31_t * result);

  






 

  void arm_dot_prod_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  uint32_t blockSize,
  q63_t * result);

  






 

  void arm_dot_prod_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  uint32_t blockSize,
  q63_t * result);

  






 

  void arm_shift_q7(
  q7_t * pSrc,
  int8_t shiftBits,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_shift_q15(
  q15_t * pSrc,
  int8_t shiftBits,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_shift_q31(
  q31_t * pSrc,
  int8_t shiftBits,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_f32(
  float32_t * pSrc,
  float32_t offset,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_q7(
  q7_t * pSrc,
  q7_t offset,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_q15(
  q15_t * pSrc,
  q15_t offset,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_q31(
  q31_t * pSrc,
  q31_t offset,
  q31_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);
  





 
  void arm_copy_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  





 
  void arm_copy_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 
  void arm_copy_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_copy_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);
  





 
  void arm_fill_f32(
  float32_t value,
  float32_t * pDst,
  uint32_t blockSize);

  





 
  void arm_fill_q7(
  q7_t value,
  q7_t * pDst,
  uint32_t blockSize);

  





 
  void arm_fill_q15(
  q15_t value,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_fill_q31(
  q31_t value,
  q31_t * pDst,
  uint32_t blockSize);









 

  void arm_conv_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst);


  









 


  void arm_conv_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);










 

  void arm_conv_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst);

  







 

  void arm_conv_fast_q15(
			  q15_t * pSrcA,
			 uint32_t srcALen,
			  q15_t * pSrcB,
			 uint32_t srcBLen,
			 q15_t * pDst);

  









 

  void arm_conv_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);



  







 

  void arm_conv_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);

  







 

  void arm_conv_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);


    









 

  void arm_conv_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);



  







 

  void arm_conv_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst);


  









 

  arm_status arm_conv_partial_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);

    











 

  arm_status arm_conv_partial_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);












 

  arm_status arm_conv_partial_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);

  









 

  arm_status arm_conv_partial_fast_q15(
				        q15_t * pSrcA,
				       uint32_t srcALen,
				        q15_t * pSrcB,
				       uint32_t srcBLen,
				       q15_t * pDst,
				       uint32_t firstIndex,
				       uint32_t numPoints);


  











 

  arm_status arm_conv_partial_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);


  









 

  arm_status arm_conv_partial_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  









 

  arm_status arm_conv_partial_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  











 

  arm_status arm_conv_partial_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);












 

  arm_status arm_conv_partial_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);



  

 

  typedef struct
  {
    uint8_t M;                       
    uint16_t numTaps;                
    q15_t *pCoeffs;                   
    q15_t *pState;                    
  } arm_fir_decimate_instance_q15;

  

 

  typedef struct
  {
    uint8_t M;                   
    uint16_t numTaps;            
    q31_t *pCoeffs;               
    q31_t *pState;                

  } arm_fir_decimate_instance_q31;

  

 

  typedef struct
  {
    uint8_t M;                           
    uint16_t numTaps;                    
    float32_t *pCoeffs;                   
    float32_t *pState;                    

  } arm_fir_decimate_instance_f32;



  






 

  void arm_fir_decimate_f32(
  const arm_fir_decimate_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  









 

  arm_status arm_fir_decimate_init_f32(
  arm_fir_decimate_instance_f32 * S,
  uint16_t numTaps,
  uint8_t M,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_q15(
  const arm_fir_decimate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_fast_q15(
  const arm_fir_decimate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);



  









 

  arm_status arm_fir_decimate_init_q15(
  arm_fir_decimate_instance_q15 * S,
  uint16_t numTaps,
  uint8_t M,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_q31(
  const arm_fir_decimate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_fast_q31(
  arm_fir_decimate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  









 

  arm_status arm_fir_decimate_init_q31(
  arm_fir_decimate_instance_q31 * S,
  uint16_t numTaps,
  uint8_t M,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);



  

 

  typedef struct
  {
    uint8_t L;                       
    uint16_t phaseLength;            
    q15_t *pCoeffs;                  
    q15_t *pState;                   
  } arm_fir_interpolate_instance_q15;

  

 

  typedef struct
  {
    uint8_t L;                       
    uint16_t phaseLength;            
    q31_t *pCoeffs;                   
    q31_t *pState;                    
  } arm_fir_interpolate_instance_q31;

  

 

  typedef struct
  {
    uint8_t L;                      
    uint16_t phaseLength;           
    float32_t *pCoeffs;              
    float32_t *pState;               
  } arm_fir_interpolate_instance_f32;


  






 

  void arm_fir_interpolate_q15(
  const arm_fir_interpolate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  









 

  arm_status arm_fir_interpolate_init_q15(
  arm_fir_interpolate_instance_q15 * S,
  uint8_t L,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  






 

  void arm_fir_interpolate_q31(
  const arm_fir_interpolate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  









 

  arm_status arm_fir_interpolate_init_q31(
  arm_fir_interpolate_instance_q31 * S,
  uint8_t L,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  






 

  void arm_fir_interpolate_f32(
  const arm_fir_interpolate_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  









 

  arm_status arm_fir_interpolate_init_f32(
  arm_fir_interpolate_instance_f32 * S,
  uint8_t L,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);

  

 

  typedef struct
  {
    uint8_t numStages;        
    q63_t *pState;            
    q31_t *pCoeffs;           
    uint8_t postShift;        

  } arm_biquad_cas_df1_32x64_ins_q31;


  





 

  void arm_biquad_cas_df1_32x64_q31(
  const arm_biquad_cas_df1_32x64_ins_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cas_df1_32x64_init_q31(
  arm_biquad_cas_df1_32x64_ins_q31 * S,
  uint8_t numStages,
  q31_t * pCoeffs,
  q63_t * pState,
  uint8_t postShift);



  

 

  typedef struct
  {
    uint8_t numStages;          
    float32_t *pState;          
    float32_t *pCoeffs;         
  } arm_biquad_cascade_df2T_instance_f32;



  

 

  typedef struct
  {
    uint8_t numStages;          
    float32_t *pState;          
    float32_t *pCoeffs;         
  } arm_biquad_cascade_stereo_df2T_instance_f32;



  

 

  typedef struct
  {
    uint8_t numStages;          
    float64_t *pState;          
    float64_t *pCoeffs;         
  } arm_biquad_cascade_df2T_instance_f64;


  






 

  void arm_biquad_cascade_df2T_f32(
  const arm_biquad_cascade_df2T_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cascade_stereo_df2T_f32(
  const arm_biquad_cascade_stereo_df2T_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_biquad_cascade_df2T_f64(
  const arm_biquad_cascade_df2T_instance_f64 * S,
  float64_t * pSrc,
  float64_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cascade_df2T_init_f32(
  arm_biquad_cascade_df2T_instance_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  






 

  void arm_biquad_cascade_stereo_df2T_init_f32(
  arm_biquad_cascade_stereo_df2T_instance_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  






 

  void arm_biquad_cascade_df2T_init_f64(
  arm_biquad_cascade_df2T_instance_f64 * S,
  uint8_t numStages,
  float64_t * pCoeffs,
  float64_t * pState);



  

 

  typedef struct
  {
    uint16_t numStages;                           
    q15_t *pState;                                
    q15_t *pCoeffs;                               
  } arm_fir_lattice_instance_q15;

  

 

  typedef struct
  {
    uint16_t numStages;                           
    q31_t *pState;                                
    q31_t *pCoeffs;                               
  } arm_fir_lattice_instance_q31;

  

 

  typedef struct
  {
    uint16_t numStages;                   
    float32_t *pState;                    
    float32_t *pCoeffs;                   
  } arm_fir_lattice_instance_f32;

  






 

  void arm_fir_lattice_init_q15(
  arm_fir_lattice_instance_q15 * S,
  uint16_t numStages,
  q15_t * pCoeffs,
  q15_t * pState);


  






 
  void arm_fir_lattice_q15(
  const arm_fir_lattice_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_fir_lattice_init_q31(
  arm_fir_lattice_instance_q31 * S,
  uint16_t numStages,
  q31_t * pCoeffs,
  q31_t * pState);


  






 

  void arm_fir_lattice_q31(
  const arm_fir_lattice_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);








 

  void arm_fir_lattice_init_f32(
  arm_fir_lattice_instance_f32 * S,
  uint16_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);

  






 

  void arm_fir_lattice_f32(
  const arm_fir_lattice_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  

 
  typedef struct
  {
    uint16_t numStages;                          
    q15_t *pState;                               
    q15_t *pkCoeffs;                             
    q15_t *pvCoeffs;                             
  } arm_iir_lattice_instance_q15;

  

 
  typedef struct
  {
    uint16_t numStages;                          
    q31_t *pState;                               
    q31_t *pkCoeffs;                             
    q31_t *pvCoeffs;                             
  } arm_iir_lattice_instance_q31;

  

 
  typedef struct
  {
    uint16_t numStages;                          
    float32_t *pState;                           
    float32_t *pkCoeffs;                         
    float32_t *pvCoeffs;                         
  } arm_iir_lattice_instance_f32;

  






 

  void arm_iir_lattice_f32(
  const arm_iir_lattice_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  








 

  void arm_iir_lattice_init_f32(
  arm_iir_lattice_instance_f32 * S,
  uint16_t numStages,
  float32_t * pkCoeffs,
  float32_t * pvCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  






 

  void arm_iir_lattice_q31(
  const arm_iir_lattice_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  








 

  void arm_iir_lattice_init_q31(
  arm_iir_lattice_instance_q31 * S,
  uint16_t numStages,
  q31_t * pkCoeffs,
  q31_t * pvCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  






 

  void arm_iir_lattice_q15(
  const arm_iir_lattice_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);











 

  void arm_iir_lattice_init_q15(
  arm_iir_lattice_instance_q15 * S,
  uint16_t numStages,
  q15_t * pkCoeffs,
  q15_t * pvCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  

 

  typedef struct
  {
    uint16_t numTaps;     
    float32_t *pState;    
    float32_t *pCoeffs;   
    float32_t mu;         
  } arm_lms_instance_f32;

  








 

  void arm_lms_f32(
  const arm_lms_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pRef,
  float32_t * pOut,
  float32_t * pErr,
  uint32_t blockSize);

  








 

  void arm_lms_init_f32(
  arm_lms_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  float32_t mu,
  uint32_t blockSize);

  

 

  typedef struct
  {
    uint16_t numTaps;     
    q15_t *pState;        
    q15_t *pCoeffs;       
    q15_t mu;             
    uint32_t postShift;   
  } arm_lms_instance_q15;


  









 

  void arm_lms_init_q15(
  arm_lms_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  q15_t mu,
  uint32_t blockSize,
  uint32_t postShift);

  








 

  void arm_lms_q15(
  const arm_lms_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pRef,
  q15_t * pOut,
  q15_t * pErr,
  uint32_t blockSize);


  

 

  typedef struct
  {
    uint16_t numTaps;     
    q31_t *pState;        
    q31_t *pCoeffs;       
    q31_t mu;             
    uint32_t postShift;   

  } arm_lms_instance_q31;

  








 

  void arm_lms_q31(
  const arm_lms_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pRef,
  q31_t * pOut,
  q31_t * pErr,
  uint32_t blockSize);

  









 

  void arm_lms_init_q31(
  arm_lms_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  q31_t mu,
  uint32_t blockSize,
  uint32_t postShift);

  

 

  typedef struct
  {
    uint16_t numTaps;      
    float32_t *pState;     
    float32_t *pCoeffs;    
    float32_t mu;         
    float32_t energy;     
    float32_t x0;         
  } arm_lms_norm_instance_f32;

  








 

  void arm_lms_norm_f32(
  arm_lms_norm_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pRef,
  float32_t * pOut,
  float32_t * pErr,
  uint32_t blockSize);

  








 

  void arm_lms_norm_init_f32(
  arm_lms_norm_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  float32_t mu,
  uint32_t blockSize);


  

 
  typedef struct
  {
    uint16_t numTaps;      
    q31_t *pState;         
    q31_t *pCoeffs;        
    q31_t mu;              
    uint8_t postShift;     
    q31_t *recipTable;     
    q31_t energy;          
    q31_t x0;              
  } arm_lms_norm_instance_q31;

  








 

  void arm_lms_norm_q31(
  arm_lms_norm_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pRef,
  q31_t * pOut,
  q31_t * pErr,
  uint32_t blockSize);

  









 

  void arm_lms_norm_init_q31(
  arm_lms_norm_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  q31_t mu,
  uint32_t blockSize,
  uint8_t postShift);

  

 

  typedef struct
  {
    uint16_t numTaps;     
    q15_t *pState;         
    q15_t *pCoeffs;        
    q15_t mu;             
    uint8_t postShift;    
    q15_t *recipTable;    
    q15_t energy;         
    q15_t x0;             
  } arm_lms_norm_instance_q15;

  








 

  void arm_lms_norm_q15(
  arm_lms_norm_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pRef,
  q15_t * pOut,
  q15_t * pErr,
  uint32_t blockSize);


  









 

  void arm_lms_norm_init_q15(
  arm_lms_norm_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  q15_t mu,
  uint32_t blockSize,
  uint8_t postShift);

  







 

  void arm_correlate_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst);


   








 
  void arm_correlate_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch);


  







 

  void arm_correlate_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst);

  







 

  void arm_correlate_fast_q15(
			       q15_t * pSrcA,
			      uint32_t srcALen,
			       q15_t * pSrcB,
			      uint32_t srcBLen,
			      q15_t * pDst);



  








 

  void arm_correlate_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch);

  







 

  void arm_correlate_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);

  







 

  void arm_correlate_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);



 









 

  void arm_correlate_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);


  







 

  void arm_correlate_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst);


  

 
  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    float32_t *pState;             
    float32_t *pCoeffs;            
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_f32;

  

 

  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q31_t *pState;                 
    q31_t *pCoeffs;                
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q31;

  

 

  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q15_t *pState;                 
    q15_t *pCoeffs;                
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q15;

  

 

  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q7_t *pState;                  
    q7_t *pCoeffs;                 
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q7;

  







 

  void arm_fir_sparse_f32(
  arm_fir_sparse_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  float32_t * pScratchIn,
  uint32_t blockSize);

  









 

  void arm_fir_sparse_init_f32(
  arm_fir_sparse_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  







 

  void arm_fir_sparse_q31(
  arm_fir_sparse_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  q31_t * pScratchIn,
  uint32_t blockSize);

  









 

  void arm_fir_sparse_init_q31(
  arm_fir_sparse_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  








 

  void arm_fir_sparse_q15(
  arm_fir_sparse_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  q15_t * pScratchIn,
  q31_t * pScratchOut,
  uint32_t blockSize);


  









 

  void arm_fir_sparse_init_q15(
  arm_fir_sparse_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  








 

  void arm_fir_sparse_q7(
  arm_fir_sparse_instance_q7 * S,
  q7_t * pSrc,
  q7_t * pDst,
  q7_t * pScratchIn,
  q31_t * pScratchOut,
  uint32_t blockSize);

  









 

  void arm_fir_sparse_init_q7(
  arm_fir_sparse_instance_q7 * S,
  uint16_t numTaps,
  q7_t * pCoeffs,
  q7_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);


  





 

  void arm_sin_cos_f32(
  float32_t theta,
  float32_t * pSinVal,
  float32_t * pCcosVal);

  





 

  void arm_sin_cos_q31(
  q31_t theta,
  q31_t * pSinVal,
  q31_t * pCosVal);


  





 

  void arm_cmplx_conj_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_conj_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_conj_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);



  





 

  void arm_cmplx_mag_squared_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_squared_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_squared_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);


 

 

  






















































 

  


 

  




 

  static __inline float32_t arm_pid_f32
  (
  arm_pid_instance_f32 * S,
  float32_t in)
  {
    float32_t out;

     
    out = (S->A0 * in) +
      (S->A1 * S->state[0]) + (S->A2 * S->state[1]) + (S->state[2]);

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);

  }

  












 

  static __inline q31_t arm_pid_q31(
  arm_pid_instance_q31 * S,
  q31_t in)
  {
    q63_t acc;
    q31_t out;

     
    acc = (q63_t) S->A0 * in;

     
    acc += (q63_t) S->A1 * S->state[0];

     
    acc += (q63_t) S->A2 * S->state[1];

     
    out = (q31_t) (acc >> 31u);

     
    out += S->state[2];

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);

  }

  













 

  static __inline q15_t arm_pid_q15(
  arm_pid_instance_q15 * S,
  q15_t in)
  {
    q63_t acc;
    q15_t out;


    int32_t __packed *vstate;

     

     
    acc = (q31_t) __smuad(S->A0, in);

     
    vstate = ((int32_t __packed *)(S->state));
    acc = __smlald(S->A1, (q31_t) *vstate, acc);

#line 5199 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"

     
    acc += (q31_t) S->state[2] << 15;

     
    out = (q15_t) (__ssat((acc >> 15), 16));

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);

  }

  

 


  





 

  arm_status arm_mat_inverse_f32(
  const arm_matrix_instance_f32 * src,
  arm_matrix_instance_f32 * dst);


  





 

  arm_status arm_mat_inverse_f64(
  const arm_matrix_instance_f64 * src,
  arm_matrix_instance_f64 * dst);



  

 


  



















 

  


 

  







 

  static __inline void arm_clarke_f32(
  float32_t Ia,
  float32_t Ib,
  float32_t * pIalpha,
  float32_t * pIbeta)
  {
     
    *pIalpha = Ia;

     
    *pIbeta =
      ((float32_t) 0.57735026919 * Ia + (float32_t) 1.15470053838 * Ib);

  }

  












 

  static __inline void arm_clarke_q31(
  q31_t Ia,
  q31_t Ib,
  q31_t * pIalpha,
  q31_t * pIbeta)
  {
    q31_t product1, product2;                     

     
    *pIalpha = Ia;

     
    product1 = (q31_t) (((q63_t) Ia * 0x24F34E8B) >> 30);

     
    product2 = (q31_t) (((q63_t) Ib * 0x49E69D16) >> 30);

     
    *pIbeta = __qadd(product1, product2);
  }

  

 

  





 
  void arm_q7_to_q31(
  q7_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);




  

 

  













 

  


 

   






 


  static __inline void arm_inv_clarke_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pIa,
  float32_t * pIb)
  {
     
    *pIa = Ialpha;

     
    *pIb = -0.5 * Ialpha + (float32_t) 0.8660254039 *Ibeta;

  }

  












 

  static __inline void arm_inv_clarke_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pIa,
  q31_t * pIb)
  {
    q31_t product1, product2;                     

     
    *pIa = Ialpha;

     
    product1 = (q31_t) (((q63_t) (Ialpha) * (0x40000000)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Ibeta) * (0x6ED9EBA1)) >> 31);

     
    *pIb = __qsub(product2, product1);

  }

  

 

  





 
  void arm_q7_to_q15(
  q7_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);



  

 

  





















 

  


 

  











 

  static __inline void arm_park_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pId,
  float32_t * pIq,
  float32_t sinVal,
  float32_t cosVal)
  {
     
    *pId = Ialpha * cosVal + Ibeta * sinVal;

     
    *pIq = -Ialpha * sinVal + Ibeta * cosVal;

  }

  














 


  static __inline void arm_park_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pId,
  q31_t * pIq,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;                     
    q31_t product3, product4;                     

     
    product1 = (q31_t) (((q63_t) (Ialpha) * (cosVal)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Ibeta) * (sinVal)) >> 31);


     
    product3 = (q31_t) (((q63_t) (Ialpha) * (sinVal)) >> 31);

     
    product4 = (q31_t) (((q63_t) (Ibeta) * (cosVal)) >> 31);

     
    *pId = __qadd(product1, product2);

     
    *pIq = __qsub(product4, product3);
  }

  

 

  





 
  void arm_q7_to_float(
  q7_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  

 

  














 

  


 

   








 

  static __inline void arm_inv_park_f32(
  float32_t Id,
  float32_t Iq,
  float32_t * pIalpha,
  float32_t * pIbeta,
  float32_t sinVal,
  float32_t cosVal)
  {
     
    *pIalpha = Id * cosVal - Iq * sinVal;

     
    *pIbeta = Id * sinVal + Iq * cosVal;

  }


  














 


  static __inline void arm_inv_park_q31(
  q31_t Id,
  q31_t Iq,
  q31_t * pIalpha,
  q31_t * pIbeta,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;                     
    q31_t product3, product4;                     

     
    product1 = (q31_t) (((q63_t) (Id) * (cosVal)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Iq) * (sinVal)) >> 31);


     
    product3 = (q31_t) (((q63_t) (Id) * (sinVal)) >> 31);

     
    product4 = (q31_t) (((q63_t) (Iq) * (cosVal)) >> 31);

     
    *pIalpha = __qsub(product1, product2);

     
    *pIbeta = __qadd(product4, product3);

  }

  

 


  





 
  void arm_q31_to_float(
  q31_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  

 

  





























 

  


 

  





 

  static __inline float32_t arm_linear_interp_f32(
  arm_linear_interp_instance_f32 * S,
  float32_t x)
  {

    float32_t y;
    float32_t x0, x1;                             
    float32_t y0, y1;                             
    float32_t xSpacing = S->xSpacing;             
    int32_t i;                                    
    float32_t *pYData = S->pYData;                

     
    i = (int32_t) ((x - S->x1) / xSpacing);

    if(i < 0)
    {
       
      y = pYData[0];
    }
    else if((uint32_t)i >= S->nValues)
    {
       
      y = pYData[S->nValues - 1];
    }
    else
    {
       
      x0 = S->x1 + i * xSpacing;
      x1 = S->x1 + (i + 1) * xSpacing;

       
      y0 = pYData[i];
      y1 = pYData[i + 1];

       
      y = y0 + (x - x0) * ((y1 - y0) / (x1 - x0));

    }

     
    return (y);
  }

   











 


  static __inline q31_t arm_linear_interp_q31(
  q31_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;                                      
    q31_t y0, y1;                                 
    q31_t fract;                                  
    int32_t index;                                

     
     
     
    index = ((x & 0xFFF00000) >> 20);

    if(index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if(index < 0)
    {
      return (pYData[0]);
    }
    else
    {

       
       
      fract = (x & 0x000FFFFF) << 11;

       
      y0 = pYData[index];
      y1 = pYData[index + 1u];

       
      y = ((q31_t) ((q63_t) y0 * (0x7FFFFFFF - fract) >> 32));

       
      y += ((q31_t) (((q63_t) y1 * fract) >> 32));

       
      return (y << 1u);

    }

  }

  











 


  static __inline q15_t arm_linear_interp_q15(
  q15_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q63_t y;                                      
    q15_t y0, y1;                                 
    q31_t fract;                                  
    int32_t index;                                

     
     
     
    index = ((x & 0xFFF00000) >> 20u);

    if(index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if(index < 0)
    {
      return (pYData[0]);
    }
    else
    {
       
       
      fract = (x & 0x000FFFFF);

       
      y0 = pYData[index];
      y1 = pYData[index + 1u];

       
      y = ((q63_t) y0 * (0xFFFFF - fract));

       
      y += ((q63_t) y1 * (fract));

       
      return (y >> 20);
    }


  }

  










 


  static __inline q7_t arm_linear_interp_q7(
  q7_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;                                      
    q7_t y0, y1;                                  
    q31_t fract;                                  
    uint32_t index;                               

     
     
     
    if (x < 0)
    {
      return (pYData[0]);
    }
    index = (x >> 20) & 0xfff;


    if(index >= (nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else
    {

       
       
      fract = (x & 0x000FFFFF);

       
      y0 = pYData[index];
      y1 = pYData[index + 1u];

       
      y = ((y0 * (0xFFFFF - fract)));

       
      y += (y1 * fract);

       
      return (y >> 20u);

    }

  }
  

 

  



 

  float32_t arm_sin_f32(
  float32_t x);

  



 

  q31_t arm_sin_q31(
  q31_t x);

  



 

  q15_t arm_sin_q15(
  q15_t x);

  



 

  float32_t arm_cos_f32(
  float32_t x);

  



 

  q31_t arm_cos_q31(
  q31_t x);

  



 

  q15_t arm_cos_q15(
  q15_t x);


  

 


  

















 


  


 

  





 

  static __inline arm_status arm_sqrt_f32(
  float32_t in,
  float32_t * pOut)
  {
    if(in > 0)
    {



      *pOut = __sqrtf(in);




      return (ARM_MATH_SUCCESS);
    }
    else
    {
      *pOut = 0.0f;
      return (ARM_MATH_ARGUMENT_ERROR);
    }

  }


  





 
  arm_status arm_sqrt_q31(
  q31_t in,
  q31_t * pOut);

  





 
  arm_status arm_sqrt_q15(
  q15_t in,
  q15_t * pOut);

  

 






  

 

  static __inline void arm_circularWrite_f32(
  int32_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const int32_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = wOffset;
  }



  

 
  static __inline void arm_circularRead_f32(
  int32_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  int32_t * dst,
  int32_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;
    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (int32_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }

  

 

  static __inline void arm_circularWrite_q15(
  q15_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q15_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = wOffset;
  }



  

 
  static __inline void arm_circularRead_q15(
  q15_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q15_t * dst,
  q15_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;

    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (q15_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }


  

 

  static __inline void arm_circularWrite_q7(
  q7_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q7_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = wOffset;
  }



  

 
  static __inline void arm_circularRead_q7(
  q7_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q7_t * dst,
  q7_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;

    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (q7_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }


  





 

  void arm_power_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q63_t * pResult);

  





 

  void arm_power_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_power_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q63_t * pResult);

  





 

  void arm_power_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_mean_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * pResult);

  





 
  void arm_mean_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 
  void arm_mean_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 
  void arm_mean_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_var_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_var_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_var_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 

  void arm_rms_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_rms_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_rms_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 

  void arm_std_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_std_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_std_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 

  void arm_cmplx_mag_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);

  







 

  void arm_cmplx_dot_prod_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  uint32_t numSamples,
  q31_t * realResult,
  q31_t * imagResult);

  







 

  void arm_cmplx_dot_prod_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  uint32_t numSamples,
  q63_t * realResult,
  q63_t * imagResult);

  







 

  void arm_cmplx_dot_prod_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  uint32_t numSamples,
  float32_t * realResult,
  float32_t * imagResult);

  






 

  void arm_cmplx_mult_real_q15(
  q15_t * pSrcCmplx,
  q15_t * pSrcReal,
  q15_t * pCmplxDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_real_q31(
  q31_t * pSrcCmplx,
  q31_t * pSrcReal,
  q31_t * pCmplxDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_real_f32(
  float32_t * pSrcCmplx,
  float32_t * pSrcReal,
  float32_t * pCmplxDst,
  uint32_t numSamples);

  






 

  void arm_min_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * result,
  uint32_t * index);

  






 

  void arm_min_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult,
  uint32_t * pIndex);

  






 
  void arm_min_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult,
  uint32_t * pIndex);

  






 

  void arm_min_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult,
  uint32_t * pIndex);

  






 

  void arm_cmplx_mult_cmplx_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_cmplx_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_cmplx_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t numSamples);

  





 
  void arm_float_to_q31(
  float32_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  





 
  void arm_float_to_q15(
  float32_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_float_to_q7(
  float32_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  





 
  void arm_q31_to_q15(
  q31_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_q31_to_q7(
  q31_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 
  void arm_q15_to_float(
  q15_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  





 
  void arm_q15_to_q31(
  q15_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  





 
  void arm_q15_to_q7(
  q15_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  

 

  

















































 

  


 

  






 


  static __inline float32_t arm_bilinear_interp_f32(
  const arm_bilinear_interp_instance_f32 * S,
  float32_t X,
  float32_t Y)
  {
    float32_t out;
    float32_t f00, f01, f10, f11;
    float32_t *pData = S->pData;
    int32_t xIndex, yIndex, index;
    float32_t xdiff, ydiff;
    float32_t b1, b2, b3, b4;

    xIndex = (int32_t) X;
    yIndex = (int32_t) Y;

     
     
    if(xIndex < 0 || xIndex > (S->numRows - 1) || yIndex < 0
       || yIndex > (S->numCols - 1))
    {
      return (0);
    }

     
    index = (xIndex - 1) + (yIndex - 1) * S->numCols;


     
    f00 = pData[index];
    f01 = pData[index + 1];

     
    index = (xIndex - 1) + (yIndex) * S->numCols;


     
    f10 = pData[index];
    f11 = pData[index + 1];

     
    b1 = f00;
    b2 = f01 - f00;
    b3 = f10 - f00;
    b4 = f00 - f01 - f10 + f11;

     
    xdiff = X - xIndex;

     
    ydiff = Y - yIndex;

     
    out = b1 + b2 * xdiff + b3 * ydiff + b4 * xdiff * ydiff;

     
    return (out);

  }

  






 

  static __inline q31_t arm_bilinear_interp_q31(
  arm_bilinear_interp_instance_q31 * S,
  q31_t X,
  q31_t Y)
  {
    q31_t out;                                    
    q31_t acc = 0;                                
    q31_t xfract, yfract;                         
    q31_t x1, x2, y1, y2;                         
    int32_t rI, cI;                               
    q31_t *pYData = S->pData;                     
    uint32_t nCols = S->numCols;                  


     
     
     
    rI = ((X & 0xFFF00000) >> 20u);

     
     
     
    cI = ((Y & 0xFFF00000) >> 20u);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & 0x000FFFFF) << 11u;

     
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];

     
     
    yfract = (Y & 0x000FFFFF) << 11u;

     
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

     
    out = ((q31_t) (((q63_t) x1 * (0x7FFFFFFF - xfract)) >> 32));
    acc = ((q31_t) (((q63_t) out * (0x7FFFFFFF - yfract)) >> 32));

     
    out = ((q31_t) ((q63_t) x2 * (0x7FFFFFFF - yfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (xfract) >> 32));

     
    out = ((q31_t) ((q63_t) y1 * (0x7FFFFFFF - xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));

     
    out = ((q31_t) ((q63_t) y2 * (xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));

     
    return (acc << 2u);

  }

  





 

  static __inline q15_t arm_bilinear_interp_q15(
  arm_bilinear_interp_instance_q15 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;                                
    q31_t out;                                    
    q15_t x1, x2, y1, y2;                         
    q31_t xfract, yfract;                         
    int32_t rI, cI;                               
    q15_t *pYData = S->pData;                     
    uint32_t nCols = S->numCols;                  

     
     
     
    rI = ((X & 0xFFF00000) >> 20);

     
     
     
    cI = ((Y & 0xFFF00000) >> 20);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & 0x000FFFFF);

     
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];


     
     
    yfract = (Y & 0x000FFFFF);

     
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

     

     
     
    out = (q31_t) (((q63_t) x1 * (0xFFFFF - xfract)) >> 4u);
    acc = ((q63_t) out * (0xFFFFF - yfract));

     
    out = (q31_t) (((q63_t) x2 * (0xFFFFF - yfract)) >> 4u);
    acc += ((q63_t) out * (xfract));

     
    out = (q31_t) (((q63_t) y1 * (0xFFFFF - xfract)) >> 4u);
    acc += ((q63_t) out * (yfract));

     
    out = (q31_t) (((q63_t) y2 * (xfract)) >> 4u);
    acc += ((q63_t) out * (yfract));

     
     
    return (acc >> 36);

  }

  





 

  static __inline q7_t arm_bilinear_interp_q7(
  arm_bilinear_interp_instance_q7 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;                                
    q31_t out;                                    
    q31_t xfract, yfract;                         
    q7_t x1, x2, y1, y2;                          
    int32_t rI, cI;                               
    q7_t *pYData = S->pData;                      
    uint32_t nCols = S->numCols;                  

     
     
     
    rI = ((X & 0xFFF00000) >> 20);

     
     
     
    cI = ((Y & 0xFFF00000) >> 20);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & 0x000FFFFF);

     
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];


     
     
    yfract = (Y & 0x000FFFFF);

     
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

     
    out = ((x1 * (0xFFFFF - xfract)));
    acc = (((q63_t) out * (0xFFFFF - yfract)));

     
    out = ((x2 * (0xFFFFF - yfract)));
    acc += (((q63_t) out * (xfract)));

     
    out = ((y1 * (0xFFFFF - xfract)));
    acc += (((q63_t) out * (yfract)));

     
    out = ((y2 * (yfract)));
    acc += (((q63_t) out * (xfract)));

     
    return (acc >> 40);

  }

  

 
   





























#line 7469 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"


#line 7477 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"







#line 7526 "..\\..\\SRC\\CMSIS_DSP_4_5\\inc\\arm_math.h"

extern void arm_bitreversal_32(
    uint32_t * pSrc,
    const uint16_t bitRevLen,
    const uint16_t * pBitRevTable);














 
#line 43 "..\\..\\SRC\\CMSIS_DSP_4_5\\src\\TransformFunctions\\arm_dct4_init_f32.c"



 




 



 

















 

static const float32_t Weights_128[256] = {
  1.000000000000000000f, 0.000000000000000000f, 0.999924701839144500f,
  -0.012271538285719925f,
  0.999698818696204250f, -0.024541228522912288f, 0.999322384588349540f,
  -0.036807222941358832f,
  0.998795456205172410f, -0.049067674327418015f, 0.998118112900149180f,
  -0.061320736302208578f,
  0.997290456678690210f, -0.073564563599667426f, 0.996312612182778000f,
  -0.085797312344439894f,
  0.995184726672196930f, -0.098017140329560604f, 0.993906970002356060f,
  -0.110222207293883060f,
  0.992479534598709970f, -0.122410675199216200f, 0.990902635427780010f,
  -0.134580708507126170f,
  0.989176509964781010f, -0.146730474455361750f, 0.987301418157858430f,
  -0.158858143333861450f,
  0.985277642388941220f, -0.170961888760301220f, 0.983105487431216290f,
  -0.183039887955140950f,
  0.980785280403230430f, -0.195090322016128250f, 0.978317370719627650f,
  -0.207111376192218560f,
  0.975702130038528570f, -0.219101240156869800f, 0.972939952205560180f,
  -0.231058108280671110f,
  0.970031253194543970f, -0.242980179903263870f, 0.966976471044852070f,
  -0.254865659604514570f,
  0.963776065795439840f, -0.266712757474898370f, 0.960430519415565790f,
  -0.278519689385053060f,
  0.956940335732208820f, -0.290284677254462330f, 0.953306040354193860f,
  -0.302005949319228080f,
  0.949528180593036670f, -0.313681740398891520f, 0.945607325380521280f,
  -0.325310292162262930f,
  0.941544065183020810f, -0.336889853392220050f, 0.937339011912574960f,
  -0.348418680249434560f,
  0.932992798834738960f, -0.359895036534988110f, 0.928506080473215590f,
  -0.371317193951837540f,
  0.923879532511286740f, -0.382683432365089780f, 0.919113851690057770f,
  -0.393992040061048100f,
  0.914209755703530690f, -0.405241314004989860f, 0.909167983090522380f,
  -0.416429560097637150f,
  0.903989293123443340f, -0.427555093430282080f, 0.898674465693953820f,
  -0.438616238538527660f,
  0.893224301195515320f, -0.449611329654606540f, 0.887639620402853930f,
  -0.460538710958240010f,
  0.881921264348355050f, -0.471396736825997640f, 0.876070094195406600f,
  -0.482183772079122720f,
  0.870086991108711460f, -0.492898192229784040f, 0.863972856121586810f,
  -0.503538383725717580f,
  0.857728610000272120f, -0.514102744193221660f, 0.851355193105265200f,
  -0.524589682678468950f,
  0.844853565249707120f, -0.534997619887097150f, 0.838224705554838080f,
  -0.545324988422046460f,
  0.831469612302545240f, -0.555570233019602180f, 0.824589302785025290f,
  -0.565731810783613120f,
  0.817584813151583710f, -0.575808191417845340f, 0.810457198252594770f,
  -0.585797857456438860f,
  0.803207531480644940f, -0.595699304492433360f, 0.795836904608883570f,
  -0.605511041404325550f,
  0.788346427626606340f, -0.615231590580626820f, 0.780737228572094490f,
  -0.624859488142386340f,
  0.773010453362736990f, -0.634393284163645490f, 0.765167265622458960f,
  -0.643831542889791390f,
  0.757208846506484570f, -0.653172842953776760f, 0.749136394523459370f,
  -0.662415777590171780f,
  0.740951125354959110f, -0.671558954847018330f, 0.732654271672412820f,
  -0.680600997795453020f,
  0.724247082951467000f, -0.689540544737066830f, 0.715730825283818590f,
  -0.698376249408972920f,
  0.707106781186547570f, -0.707106781186547460f, 0.698376249408972920f,
  -0.715730825283818590f,
  0.689540544737066940f, -0.724247082951466890f, 0.680600997795453130f,
  -0.732654271672412820f,
  0.671558954847018330f, -0.740951125354959110f, 0.662415777590171780f,
  -0.749136394523459260f,
  0.653172842953776760f, -0.757208846506484460f, 0.643831542889791500f,
  -0.765167265622458960f,
  0.634393284163645490f, -0.773010453362736990f, 0.624859488142386450f,
  -0.780737228572094380f,
  0.615231590580626820f, -0.788346427626606230f, 0.605511041404325550f,
  -0.795836904608883460f,
  0.595699304492433470f, -0.803207531480644830f, 0.585797857456438860f,
  -0.810457198252594770f,
  0.575808191417845340f, -0.817584813151583710f, 0.565731810783613230f,
  -0.824589302785025290f,
  0.555570233019602290f, -0.831469612302545240f, 0.545324988422046460f,
  -0.838224705554837970f,
  0.534997619887097260f, -0.844853565249707010f, 0.524589682678468840f,
  -0.851355193105265200f,
  0.514102744193221660f, -0.857728610000272120f, 0.503538383725717580f,
  -0.863972856121586700f,
  0.492898192229784090f, -0.870086991108711350f, 0.482183772079122830f,
  -0.876070094195406600f,
  0.471396736825997810f, -0.881921264348354940f, 0.460538710958240010f,
  -0.887639620402853930f,
  0.449611329654606600f, -0.893224301195515320f, 0.438616238538527710f,
  -0.898674465693953820f,
  0.427555093430282200f, -0.903989293123443340f, 0.416429560097637320f,
  -0.909167983090522270f,
  0.405241314004989860f, -0.914209755703530690f, 0.393992040061048100f,
  -0.919113851690057770f,
  0.382683432365089840f, -0.923879532511286740f, 0.371317193951837600f,
  -0.928506080473215480f,
  0.359895036534988280f, -0.932992798834738850f, 0.348418680249434510f,
  -0.937339011912574960f,
  0.336889853392220050f, -0.941544065183020810f, 0.325310292162262980f,
  -0.945607325380521280f,
  0.313681740398891570f, -0.949528180593036670f, 0.302005949319228200f,
  -0.953306040354193750f,
  0.290284677254462330f, -0.956940335732208940f, 0.278519689385053060f,
  -0.960430519415565790f,
  0.266712757474898420f, -0.963776065795439840f, 0.254865659604514630f,
  -0.966976471044852070f,
  0.242980179903263980f, -0.970031253194543970f, 0.231058108280671280f,
  -0.972939952205560070f,
  0.219101240156869770f, -0.975702130038528570f, 0.207111376192218560f,
  -0.978317370719627650f,
  0.195090322016128330f, -0.980785280403230430f, 0.183039887955141060f,
  -0.983105487431216290f,
  0.170961888760301360f, -0.985277642388941220f, 0.158858143333861390f,
  -0.987301418157858430f,
  0.146730474455361750f, -0.989176509964781010f, 0.134580708507126220f,
  -0.990902635427780010f,
  0.122410675199216280f, -0.992479534598709970f, 0.110222207293883180f,
  -0.993906970002356060f,
  0.098017140329560770f, -0.995184726672196820f, 0.085797312344439880f,
  -0.996312612182778000f,
  0.073564563599667454f, -0.997290456678690210f, 0.061320736302208648f,
  -0.998118112900149180f,
  0.049067674327418126f, -0.998795456205172410f, 0.036807222941358991f,
  -0.999322384588349540f,
  0.024541228522912264f, -0.999698818696204250f, 0.012271538285719944f,
  -0.999924701839144500f
};

static const float32_t Weights_512[1024] = {
  1.000000000000000000f, 0.000000000000000000f, 0.999995293809576190f,
  -0.003067956762965976f,
  0.999981175282601110f, -0.006135884649154475f, 0.999957644551963900f,
  -0.009203754782059819f,
  0.999924701839144500f, -0.012271538285719925f, 0.999882347454212560f,
  -0.015339206284988100f,
  0.999830581795823400f, -0.018406729905804820f, 0.999769405351215280f,
  -0.021474080275469508f,
  0.999698818696204250f, -0.024541228522912288f, 0.999618822495178640f,
  -0.027608145778965740f,
  0.999529417501093140f, -0.030674803176636626f, 0.999430604555461730f,
  -0.033741171851377580f,
  0.999322384588349540f, -0.036807222941358832f, 0.999204758618363890f,
  -0.039872927587739811f,
  0.999077727752645360f, -0.042938256934940820f, 0.998941293186856870f,
  -0.046003182130914623f,
  0.998795456205172410f, -0.049067674327418015f, 0.998640218180265270f,
  -0.052131704680283324f,
  0.998475580573294770f, -0.055195244349689934f, 0.998301544933892890f,
  -0.058258264500435752f,
  0.998118112900149180f, -0.061320736302208578f, 0.997925286198596000f,
  -0.064382630929857465f,
  0.997723066644191640f, -0.067443919563664051f, 0.997511456140303450f,
  -0.070504573389613856f,
  0.997290456678690210f, -0.073564563599667426f, 0.997060070339482960f,
  -0.076623861392031492f,
  0.996820299291165670f, -0.079682437971430126f, 0.996571145790554840f,
  -0.082740264549375692f,
  0.996312612182778000f, -0.085797312344439894f, 0.996044700901251970f,
  -0.088853552582524600f,
  0.995767414467659820f, -0.091908956497132724f, 0.995480755491926940f,
  -0.094963495329638992f,
  0.995184726672196930f, -0.098017140329560604f, 0.994879330794805620f,
  -0.101069862754827820f,
  0.994564570734255420f, -0.104121633872054590f, 0.994240449453187900f,
  -0.107172424956808840f,
  0.993906970002356060f, -0.110222207293883060f, 0.993564135520595300f,
  -0.113270952177564350f,
  0.993211949234794500f, -0.116318630911904750f, 0.992850414459865100f,
  -0.119365214810991350f,
  0.992479534598709970f, -0.122410675199216200f, 0.992099313142191800f,
  -0.125454983411546230f,
  0.991709753669099530f, -0.128498110793793170f, 0.991310859846115440f,
  -0.131540028702883120f,
  0.990902635427780010f, -0.134580708507126170f, 0.990485084256457090f,
  -0.137620121586486040f,
  0.990058210262297120f, -0.140658239332849210f, 0.989622017463200890f,
  -0.143695033150294470f,
  0.989176509964781010f, -0.146730474455361750f, 0.988721691960323780f,
  -0.149764534677321510f,
  0.988257567730749460f, -0.152797185258443440f, 0.987784141644572180f,
  -0.155828397654265230f,
  0.987301418157858430f, -0.158858143333861450f, 0.986809401814185530f,
  -0.161886393780111830f,
  0.986308097244598670f, -0.164913120489969890f, 0.985797509167567480f,
  -0.167938294974731170f,
  0.985277642388941220f, -0.170961888760301220f, 0.984748501801904210f,
  -0.173983873387463820f,
  0.984210092386929030f, -0.177004220412148750f, 0.983662419211730250f,
  -0.180022901405699510f,
  0.983105487431216290f, -0.183039887955140950f, 0.982539302287441240f,
  -0.186055151663446630f,
  0.981963869109555240f, -0.189068664149806190f, 0.981379193313754560f,
  -0.192080397049892440f,
  0.980785280403230430f, -0.195090322016128250f, 0.980182135968117430f,
  -0.198098410717953560f,
  0.979569765685440520f, -0.201104634842091900f, 0.978948175319062200f,
  -0.204108966092816870f,
  0.978317370719627650f, -0.207111376192218560f, 0.977677357824509930f,
  -0.210111836880469610f,
  0.977028142657754390f, -0.213110319916091360f, 0.976369731330021140f,
  -0.216106797076219520f,
  0.975702130038528570f, -0.219101240156869800f, 0.975025345066994120f,
  -0.222093620973203510f,
  0.974339382785575860f, -0.225083911359792830f, 0.973644249650811980f,
  -0.228072083170885730f,
  0.972939952205560180f, -0.231058108280671110f, 0.972226497078936270f,
  -0.234041958583543430f,
  0.971503890986251780f, -0.237023605994367200f, 0.970772140728950350f,
  -0.240003022448741500f,
  0.970031253194543970f, -0.242980179903263870f, 0.969281235356548530f,
  -0.245955050335794590f,
  0.968522094274417380f, -0.248927605745720150f, 0.967753837093475510f,
  -0.251897818154216970f,
  0.966976471044852070f, -0.254865659604514570f, 0.966190003445412500f,
  -0.257831102162158990f,
  0.965394441697689400f, -0.260794117915275510f, 0.964589793289812760f,
  -0.263754678974831350f,
  0.963776065795439840f, -0.266712757474898370f, 0.962953266873683880f,
  -0.269668325572915090f,
  0.962121404269041580f, -0.272621355449948980f, 0.961280485811320640f,
  -0.275571819310958140f,
  0.960430519415565790f, -0.278519689385053060f, 0.959571513081984520f,
  -0.281464937925757940f,
  0.958703474895871600f, -0.284407537211271880f, 0.957826413027532910f,
  -0.287347459544729510f,
  0.956940335732208820f, -0.290284677254462330f, 0.956045251349996410f,
  -0.293219162694258630f,
  0.955141168305770780f, -0.296150888243623790f, 0.954228095109105670f,
  -0.299079826308040480f,
  0.953306040354193860f, -0.302005949319228080f, 0.952375012719765880f,
  -0.304929229735402370f,
  0.951435020969008340f, -0.307849640041534870f, 0.950486073949481700f,
  -0.310767152749611470f,
  0.949528180593036670f, -0.313681740398891520f, 0.948561349915730270f,
  -0.316593375556165850f,
  0.947585591017741090f, -0.319502030816015690f, 0.946600913083283530f,
  -0.322407678801069850f,
  0.945607325380521280f, -0.325310292162262930f, 0.944604837261480260f,
  -0.328209843579092500f,
  0.943593458161960390f, -0.331106305759876430f, 0.942573197601446870f,
  -0.333999651442009380f,
  0.941544065183020810f, -0.336889853392220050f, 0.940506070593268300f,
  -0.339776884406826850f,
  0.939459223602189920f, -0.342660717311994380f, 0.938403534063108060f,
  -0.345541324963989090f,
  0.937339011912574960f, -0.348418680249434560f, 0.936265667170278260f,
  -0.351292756085567090f,
  0.935183509938947610f, -0.354163525420490340f, 0.934092550404258980f,
  -0.357030961233429980f,
  0.932992798834738960f, -0.359895036534988110f, 0.931884265581668150f,
  -0.362755724367397230f,
  0.930766961078983710f, -0.365612997804773850f, 0.929640895843181330f,
  -0.368466829953372320f,
  0.928506080473215590f, -0.371317193951837540f, 0.927362525650401110f,
  -0.374164062971457930f,
  0.926210242138311380f, -0.377007410216418260f, 0.925049240782677580f,
  -0.379847208924051160f,
  0.923879532511286740f, -0.382683432365089780f, 0.922701128333878630f,
  -0.385516053843918850f,
  0.921514039342042010f, -0.388345046698826250f, 0.920318276709110590f,
  -0.391170384302253870f,
  0.919113851690057770f, -0.393992040061048100f, 0.917900775621390500f,
  -0.396809987416710310f,
  0.916679059921042700f, -0.399624199845646790f, 0.915448716088267830f,
  -0.402434650859418430f,
  0.914209755703530690f, -0.405241314004989860f, 0.912962190428398210f,
  -0.408044162864978690f,
  0.911706032005429880f, -0.410843171057903910f, 0.910441292258067250f,
  -0.413638312238434500f,
  0.909167983090522380f, -0.416429560097637150f, 0.907886116487666260f,
  -0.419216888363223910f,
  0.906595704514915330f, -0.422000270799799680f, 0.905296759318118820f,
  -0.424779681209108810f,
  0.903989293123443340f, -0.427555093430282080f, 0.902673318237258830f,
  -0.430326481340082610f,
  0.901348847046022030f, -0.433093818853151960f, 0.900015892016160280f,
  -0.435857079922255470f,
  0.898674465693953820f, -0.438616238538527660f, 0.897324580705418320f,
  -0.441371268731716670f,
  0.895966249756185220f, -0.444122144570429200f, 0.894599485631382700f,
  -0.446868840162374160f,
  0.893224301195515320f, -0.449611329654606540f, 0.891840709392342720f,
  -0.452349587233770890f,
  0.890448723244757880f, -0.455083587126343840f, 0.889048355854664570f,
  -0.457813303598877170f,
  0.887639620402853930f, -0.460538710958240010f, 0.886222530148880640f,
  -0.463259783551860150f,
  0.884797098430937790f, -0.465976495767966180f, 0.883363338665731580f,
  -0.468688822035827900f,
  0.881921264348355050f, -0.471396736825997640f, 0.880470889052160750f,
  -0.474100214650549970f,
  0.879012226428633530f, -0.476799230063322090f, 0.877545290207261350f,
  -0.479493757660153010f,
  0.876070094195406600f, -0.482183772079122720f, 0.874586652278176110f,
  -0.484869248000791060f,
  0.873094978418290090f, -0.487550160148436000f, 0.871595086655950980f,
  -0.490226483288291160f,
  0.870086991108711460f, -0.492898192229784040f, 0.868570705971340900f,
  -0.495565261825772540f,
  0.867046245515692650f, -0.498227666972781870f, 0.865513624090569090f,
  -0.500885382611240710f,
  0.863972856121586810f, -0.503538383725717580f, 0.862423956111040610f,
  -0.506186645345155230f,
  0.860866938637767310f, -0.508830142543106990f, 0.859301818357008470f,
  -0.511468850437970300f,
  0.857728610000272120f, -0.514102744193221660f, 0.856147328375194470f,
  -0.516731799017649870f,
  0.854557988365400530f, -0.519355990165589640f, 0.852960604930363630f,
  -0.521975292937154390f,
  0.851355193105265200f, -0.524589682678468950f, 0.849741768000852550f,
  -0.527199134781901280f,
  0.848120344803297230f, -0.529803624686294610f, 0.846490938774052130f,
  -0.532403127877197900f,
  0.844853565249707120f, -0.534997619887097150f, 0.843208239641845440f,
  -0.537587076295645390f,
  0.841554977436898440f, -0.540171472729892850f, 0.839893794195999520f,
  -0.542750784864515890f,
  0.838224705554838080f, -0.545324988422046460f, 0.836547727223512010f,
  -0.547894059173100190f,
  0.834862874986380010f, -0.550457972936604810f, 0.833170164701913190f,
  -0.553016705580027470f,
  0.831469612302545240f, -0.555570233019602180f, 0.829761233794523050f,
  -0.558118531220556100f,
  0.828045045257755800f, -0.560661576197336030f, 0.826321062845663530f,
  -0.563199344013834090f,
  0.824589302785025290f, -0.565731810783613120f, 0.822849781375826430f,
  -0.568258952670131490f,
  0.821102514991104650f, -0.570780745886967260f, 0.819347520076796900f,
  -0.573297166698042200f,
  0.817584813151583710f, -0.575808191417845340f, 0.815814410806733780f,
  -0.578313796411655590f,
  0.814036329705948410f, -0.580813958095764530f, 0.812250586585203880f,
  -0.583308652937698290f,
  0.810457198252594770f, -0.585797857456438860f, 0.808656181588174980f,
  -0.588281548222645220f,
  0.806847553543799330f, -0.590759701858874160f, 0.805031331142963660f,
  -0.593232295039799800f,
  0.803207531480644940f, -0.595699304492433360f, 0.801376171723140240f,
  -0.598160706996342270f,
  0.799537269107905010f, -0.600616479383868970f, 0.797690840943391160f,
  -0.603066598540348160f,
  0.795836904608883570f, -0.605511041404325550f, 0.793975477554337170f,
  -0.607949784967773630f,
  0.792106577300212390f, -0.610382806276309480f, 0.790230221437310030f,
  -0.612810082429409710f,
  0.788346427626606340f, -0.615231590580626820f, 0.786455213599085770f,
  -0.617647307937803870f,
  0.784556597155575240f, -0.620057211763289100f, 0.782650596166575730f,
  -0.622461279374149970f,
  0.780737228572094490f, -0.624859488142386340f, 0.778816512381475980f,
  -0.627251815495144080f,
  0.776888465673232440f, -0.629638238914926980f, 0.774953106594873930f,
  -0.632018735939809060f,
  0.773010453362736990f, -0.634393284163645490f, 0.771060524261813820f,
  -0.636761861236284200f,
  0.769103337645579700f, -0.639124444863775730f, 0.767138911935820400f,
  -0.641481012808583160f,
  0.765167265622458960f, -0.643831542889791390f, 0.763188417263381270f,
  -0.646176012983316280f,
  0.761202385484261780f, -0.648514401022112440f, 0.759209188978388070f,
  -0.650846684996380880f,
  0.757208846506484570f, -0.653172842953776760f, 0.755201376896536550f,
  -0.655492852999615350f,
  0.753186799043612520f, -0.657806693297078640f, 0.751165131909686480f,
  -0.660114342067420480f,
  0.749136394523459370f, -0.662415777590171780f, 0.747100605980180130f,
  -0.664710978203344790f,
  0.745057785441466060f, -0.666999922303637470f, 0.743007952135121720f,
  -0.669282588346636010f,
  0.740951125354959110f, -0.671558954847018330f, 0.738887324460615110f,
  -0.673829000378756040f,
  0.736816568877369900f, -0.676092703575315920f, 0.734738878095963500f,
  -0.678350043129861470f,
  0.732654271672412820f, -0.680600997795453020f, 0.730562769227827590f,
  -0.682845546385248080f,
  0.728464390448225200f, -0.685083667772700360f, 0.726359155084346010f,
  -0.687315340891759050f,
  0.724247082951467000f, -0.689540544737066830f, 0.722128193929215350f,
  -0.691759258364157750f,
  0.720002507961381650f, -0.693971460889654000f, 0.717870045055731710f,
  -0.696177131491462990f,
  0.715730825283818590f, -0.698376249408972920f, 0.713584868780793640f,
  -0.700568793943248340f,
  0.711432195745216430f, -0.702754744457225300f, 0.709272826438865690f,
  -0.704934080375904880f,
  0.707106781186547570f, -0.707106781186547460f, 0.704934080375904990f,
  -0.709272826438865580f,
  0.702754744457225300f, -0.711432195745216430f, 0.700568793943248450f,
  -0.713584868780793520f,
  0.698376249408972920f, -0.715730825283818590f, 0.696177131491462990f,
  -0.717870045055731710f,
  0.693971460889654000f, -0.720002507961381650f, 0.691759258364157750f,
  -0.722128193929215350f,
  0.689540544737066940f, -0.724247082951466890f, 0.687315340891759160f,
  -0.726359155084346010f,
  0.685083667772700360f, -0.728464390448225200f, 0.682845546385248080f,
  -0.730562769227827590f,
  0.680600997795453130f, -0.732654271672412820f, 0.678350043129861580f,
  -0.734738878095963390f,
  0.676092703575316030f, -0.736816568877369790f, 0.673829000378756150f,
  -0.738887324460615110f,
  0.671558954847018330f, -0.740951125354959110f, 0.669282588346636010f,
  -0.743007952135121720f,
  0.666999922303637470f, -0.745057785441465950f, 0.664710978203344900f,
  -0.747100605980180130f,
  0.662415777590171780f, -0.749136394523459260f, 0.660114342067420480f,
  -0.751165131909686370f,
  0.657806693297078640f, -0.753186799043612410f, 0.655492852999615460f,
  -0.755201376896536550f,
  0.653172842953776760f, -0.757208846506484460f, 0.650846684996380990f,
  -0.759209188978387960f,
  0.648514401022112550f, -0.761202385484261780f, 0.646176012983316390f,
  -0.763188417263381270f,
  0.643831542889791500f, -0.765167265622458960f, 0.641481012808583160f,
  -0.767138911935820400f,
  0.639124444863775730f, -0.769103337645579590f, 0.636761861236284200f,
  -0.771060524261813710f,
  0.634393284163645490f, -0.773010453362736990f, 0.632018735939809060f,
  -0.774953106594873820f,
  0.629638238914927100f, -0.776888465673232440f, 0.627251815495144190f,
  -0.778816512381475870f,
  0.624859488142386450f, -0.780737228572094380f, 0.622461279374150080f,
  -0.782650596166575730f,
  0.620057211763289210f, -0.784556597155575240f, 0.617647307937803980f,
  -0.786455213599085770f,
  0.615231590580626820f, -0.788346427626606230f, 0.612810082429409710f,
  -0.790230221437310030f,
  0.610382806276309480f, -0.792106577300212390f, 0.607949784967773740f,
  -0.793975477554337170f,
  0.605511041404325550f, -0.795836904608883460f, 0.603066598540348280f,
  -0.797690840943391040f,
  0.600616479383868970f, -0.799537269107905010f, 0.598160706996342380f,
  -0.801376171723140130f,
  0.595699304492433470f, -0.803207531480644830f, 0.593232295039799800f,
  -0.805031331142963660f,
  0.590759701858874280f, -0.806847553543799220f, 0.588281548222645330f,
  -0.808656181588174980f,
  0.585797857456438860f, -0.810457198252594770f, 0.583308652937698290f,
  -0.812250586585203880f,
  0.580813958095764530f, -0.814036329705948300f, 0.578313796411655590f,
  -0.815814410806733780f,
  0.575808191417845340f, -0.817584813151583710f, 0.573297166698042320f,
  -0.819347520076796900f,
  0.570780745886967370f, -0.821102514991104650f, 0.568258952670131490f,
  -0.822849781375826320f,
  0.565731810783613230f, -0.824589302785025290f, 0.563199344013834090f,
  -0.826321062845663420f,
  0.560661576197336030f, -0.828045045257755800f, 0.558118531220556100f,
  -0.829761233794523050f,
  0.555570233019602290f, -0.831469612302545240f, 0.553016705580027580f,
  -0.833170164701913190f,
  0.550457972936604810f, -0.834862874986380010f, 0.547894059173100190f,
  -0.836547727223511890f,
  0.545324988422046460f, -0.838224705554837970f, 0.542750784864516000f,
  -0.839893794195999410f,
  0.540171472729892970f, -0.841554977436898330f, 0.537587076295645510f,
  -0.843208239641845440f,
  0.534997619887097260f, -0.844853565249707010f, 0.532403127877198010f,
  -0.846490938774052020f,
  0.529803624686294830f, -0.848120344803297120f, 0.527199134781901390f,
  -0.849741768000852440f,
  0.524589682678468840f, -0.851355193105265200f, 0.521975292937154390f,
  -0.852960604930363630f,
  0.519355990165589530f, -0.854557988365400530f, 0.516731799017649980f,
  -0.856147328375194470f,
  0.514102744193221660f, -0.857728610000272120f, 0.511468850437970520f,
  -0.859301818357008360f,
  0.508830142543106990f, -0.860866938637767310f, 0.506186645345155450f,
  -0.862423956111040500f,
  0.503538383725717580f, -0.863972856121586700f, 0.500885382611240940f,
  -0.865513624090568980f,
  0.498227666972781870f, -0.867046245515692650f, 0.495565261825772490f,
  -0.868570705971340900f,
  0.492898192229784090f, -0.870086991108711350f, 0.490226483288291100f,
  -0.871595086655951090f,
  0.487550160148436050f, -0.873094978418290090f, 0.484869248000791120f,
  -0.874586652278176110f,
  0.482183772079122830f, -0.876070094195406600f, 0.479493757660153010f,
  -0.877545290207261240f,
  0.476799230063322250f, -0.879012226428633410f, 0.474100214650550020f,
  -0.880470889052160750f,
  0.471396736825997810f, -0.881921264348354940f, 0.468688822035827960f,
  -0.883363338665731580f,
  0.465976495767966130f, -0.884797098430937790f, 0.463259783551860260f,
  -0.886222530148880640f,
  0.460538710958240010f, -0.887639620402853930f, 0.457813303598877290f,
  -0.889048355854664570f,
  0.455083587126343840f, -0.890448723244757880f, 0.452349587233771000f,
  -0.891840709392342720f,
  0.449611329654606600f, -0.893224301195515320f, 0.446868840162374330f,
  -0.894599485631382580f,
  0.444122144570429260f, -0.895966249756185110f, 0.441371268731716620f,
  -0.897324580705418320f,
  0.438616238538527710f, -0.898674465693953820f, 0.435857079922255470f,
  -0.900015892016160280f,
  0.433093818853152010f, -0.901348847046022030f, 0.430326481340082610f,
  -0.902673318237258830f,
  0.427555093430282200f, -0.903989293123443340f, 0.424779681209108810f,
  -0.905296759318118820f,
  0.422000270799799790f, -0.906595704514915330f, 0.419216888363223960f,
  -0.907886116487666150f,
  0.416429560097637320f, -0.909167983090522270f, 0.413638312238434560f,
  -0.910441292258067140f,
  0.410843171057903910f, -0.911706032005429880f, 0.408044162864978740f,
  -0.912962190428398100f,
  0.405241314004989860f, -0.914209755703530690f, 0.402434650859418540f,
  -0.915448716088267830f,
  0.399624199845646790f, -0.916679059921042700f, 0.396809987416710420f,
  -0.917900775621390390f,
  0.393992040061048100f, -0.919113851690057770f, 0.391170384302253980f,
  -0.920318276709110480f,
  0.388345046698826300f, -0.921514039342041900f, 0.385516053843919020f,
  -0.922701128333878520f,
  0.382683432365089840f, -0.923879532511286740f, 0.379847208924051110f,
  -0.925049240782677580f,
  0.377007410216418310f, -0.926210242138311270f, 0.374164062971457990f,
  -0.927362525650401110f,
  0.371317193951837600f, -0.928506080473215480f, 0.368466829953372320f,
  -0.929640895843181330f,
  0.365612997804773960f, -0.930766961078983710f, 0.362755724367397230f,
  -0.931884265581668150f,
  0.359895036534988280f, -0.932992798834738850f, 0.357030961233430030f,
  -0.934092550404258870f,
  0.354163525420490510f, -0.935183509938947500f, 0.351292756085567150f,
  -0.936265667170278260f,
  0.348418680249434510f, -0.937339011912574960f, 0.345541324963989150f,
  -0.938403534063108060f,
  0.342660717311994380f, -0.939459223602189920f, 0.339776884406826960f,
  -0.940506070593268300f,
  0.336889853392220050f, -0.941544065183020810f, 0.333999651442009490f,
  -0.942573197601446870f,
  0.331106305759876430f, -0.943593458161960390f, 0.328209843579092660f,
  -0.944604837261480260f,
  0.325310292162262980f, -0.945607325380521280f, 0.322407678801070020f,
  -0.946600913083283530f,
  0.319502030816015750f, -0.947585591017741090f, 0.316593375556165850f,
  -0.948561349915730270f,
  0.313681740398891570f, -0.949528180593036670f, 0.310767152749611470f,
  -0.950486073949481700f,
  0.307849640041534980f, -0.951435020969008340f, 0.304929229735402430f,
  -0.952375012719765880f,
  0.302005949319228200f, -0.953306040354193750f, 0.299079826308040480f,
  -0.954228095109105670f,
  0.296150888243623960f, -0.955141168305770670f, 0.293219162694258680f,
  -0.956045251349996410f,
  0.290284677254462330f, -0.956940335732208940f, 0.287347459544729570f,
  -0.957826413027532910f,
  0.284407537211271820f, -0.958703474895871600f, 0.281464937925758050f,
  -0.959571513081984520f,
  0.278519689385053060f, -0.960430519415565790f, 0.275571819310958250f,
  -0.961280485811320640f,
  0.272621355449948980f, -0.962121404269041580f, 0.269668325572915200f,
  -0.962953266873683880f,
  0.266712757474898420f, -0.963776065795439840f, 0.263754678974831510f,
  -0.964589793289812650f,
  0.260794117915275570f, -0.965394441697689400f, 0.257831102162158930f,
  -0.966190003445412620f,
  0.254865659604514630f, -0.966976471044852070f, 0.251897818154216910f,
  -0.967753837093475510f,
  0.248927605745720260f, -0.968522094274417270f, 0.245955050335794590f,
  -0.969281235356548530f,
  0.242980179903263980f, -0.970031253194543970f, 0.240003022448741500f,
  -0.970772140728950350f,
  0.237023605994367340f, -0.971503890986251780f, 0.234041958583543460f,
  -0.972226497078936270f,
  0.231058108280671280f, -0.972939952205560070f, 0.228072083170885790f,
  -0.973644249650811870f,
  0.225083911359792780f, -0.974339382785575860f, 0.222093620973203590f,
  -0.975025345066994120f,
  0.219101240156869770f, -0.975702130038528570f, 0.216106797076219600f,
  -0.976369731330021140f,
  0.213110319916091360f, -0.977028142657754390f, 0.210111836880469720f,
  -0.977677357824509930f,
  0.207111376192218560f, -0.978317370719627650f, 0.204108966092817010f,
  -0.978948175319062200f,
  0.201104634842091960f, -0.979569765685440520f, 0.198098410717953730f,
  -0.980182135968117320f,
  0.195090322016128330f, -0.980785280403230430f, 0.192080397049892380f,
  -0.981379193313754560f,
  0.189068664149806280f, -0.981963869109555240f, 0.186055151663446630f,
  -0.982539302287441240f,
  0.183039887955141060f, -0.983105487431216290f, 0.180022901405699510f,
  -0.983662419211730250f,
  0.177004220412148860f, -0.984210092386929030f, 0.173983873387463850f,
  -0.984748501801904210f,
  0.170961888760301360f, -0.985277642388941220f, 0.167938294974731230f,
  -0.985797509167567370f,
  0.164913120489970090f, -0.986308097244598670f, 0.161886393780111910f,
  -0.986809401814185420f,
  0.158858143333861390f, -0.987301418157858430f, 0.155828397654265320f,
  -0.987784141644572180f,
  0.152797185258443410f, -0.988257567730749460f, 0.149764534677321620f,
  -0.988721691960323780f,
  0.146730474455361750f, -0.989176509964781010f, 0.143695033150294580f,
  -0.989622017463200780f,
  0.140658239332849240f, -0.990058210262297120f, 0.137620121586486180f,
  -0.990485084256456980f,
  0.134580708507126220f, -0.990902635427780010f, 0.131540028702883280f,
  -0.991310859846115440f,
  0.128498110793793220f, -0.991709753669099530f, 0.125454983411546210f,
  -0.992099313142191800f,
  0.122410675199216280f, -0.992479534598709970f, 0.119365214810991350f,
  -0.992850414459865100f,
  0.116318630911904880f, -0.993211949234794500f, 0.113270952177564360f,
  -0.993564135520595300f,
  0.110222207293883180f, -0.993906970002356060f, 0.107172424956808870f,
  -0.994240449453187900f,
  0.104121633872054730f, -0.994564570734255420f, 0.101069862754827880f,
  -0.994879330794805620f,
  0.098017140329560770f, -0.995184726672196820f, 0.094963495329639061f,
  -0.995480755491926940f,
  0.091908956497132696f, -0.995767414467659820f, 0.088853552582524684f,
  -0.996044700901251970f,
  0.085797312344439880f, -0.996312612182778000f, 0.082740264549375803f,
  -0.996571145790554840f,
  0.079682437971430126f, -0.996820299291165670f, 0.076623861392031617f,
  -0.997060070339482960f,
  0.073564563599667454f, -0.997290456678690210f, 0.070504573389614009f,
  -0.997511456140303450f,
  0.067443919563664106f, -0.997723066644191640f, 0.064382630929857410f,
  -0.997925286198596000f,
  0.061320736302208648f, -0.998118112900149180f, 0.058258264500435732f,
  -0.998301544933892890f,
  0.055195244349690031f, -0.998475580573294770f, 0.052131704680283317f,
  -0.998640218180265270f,
  0.049067674327418126f, -0.998795456205172410f, 0.046003182130914644f,
  -0.998941293186856870f,
  0.042938256934940959f, -0.999077727752645360f, 0.039872927587739845f,
  -0.999204758618363890f,
  0.036807222941358991f, -0.999322384588349540f, 0.033741171851377642f,
  -0.999430604555461730f,
  0.030674803176636581f, -0.999529417501093140f, 0.027608145778965820f,
  -0.999618822495178640f,
  0.024541228522912264f, -0.999698818696204250f, 0.021474080275469605f,
  -0.999769405351215280f,
  0.018406729905804820f, -0.999830581795823400f, 0.015339206284988220f,
  -0.999882347454212560f,
  0.012271538285719944f, -0.999924701839144500f, 0.009203754782059960f,
  -0.999957644551963900f,
  0.006135884649154515f, -0.999981175282601110f, 0.003067956762966138f,
  -0.999995293809576190f
};

static const float32_t Weights_2048[4096] = {
  1.000000000000000000f, 0.000000000000000000f, 0.999999705862882230f,
  -0.000766990318742704f,
  0.999998823451701880f, -0.001533980186284766f, 0.999997352766978210f,
  -0.002300969151425805f,
  0.999995293809576190f, -0.003067956762965976f, 0.999992646580707190f,
  -0.003834942569706228f,
  0.999989411081928400f, -0.004601926120448571f, 0.999985587315143200f,
  -0.005368906963996343f,
  0.999981175282601110f, -0.006135884649154475f, 0.999976174986897610f,
  -0.006902858724729756f,
  0.999970586430974140f, -0.007669828739531097f, 0.999964409618118280f,
  -0.008436794242369799f,
  0.999957644551963900f, -0.009203754782059819f, 0.999950291236490480f,
  -0.009970709907418031f,
  0.999942349676023910f, -0.010737659167264491f, 0.999933819875236000f,
  -0.011504602110422714f,
  0.999924701839144500f, -0.012271538285719925f, 0.999914995573113470f,
  -0.013038467241987334f,
  0.999904701082852900f, -0.013805388528060391f, 0.999893818374418490f,
  -0.014572301692779064f,
  0.999882347454212560f, -0.015339206284988100f, 0.999870288328982950f,
  -0.016106101853537287f,
  0.999857641005823860f, -0.016872987947281710f, 0.999844405492175240f,
  -0.017639864115082053f,
  0.999830581795823400f, -0.018406729905804820f, 0.999816169924900410f,
  -0.019173584868322623f,
  0.999801169887884260f, -0.019940428551514441f, 0.999785581693599210f,
  -0.020707260504265895f,
  0.999769405351215280f, -0.021474080275469508f, 0.999752640870248840f,
  -0.022240887414024961f,
  0.999735288260561680f, -0.023007681468839369f, 0.999717347532362190f,
  -0.023774461988827555f,
  0.999698818696204250f, -0.024541228522912288f, 0.999679701762987930f,
  -0.025307980620024571f,
  0.999659996743959220f, -0.026074717829103901f, 0.999639703650710200f,
  -0.026841439699098531f,
  0.999618822495178640f, -0.027608145778965740f, 0.999597353289648380f,
  -0.028374835617672099f,
  0.999575296046749220f, -0.029141508764193722f, 0.999552650779456990f,
  -0.029908164767516555f,
  0.999529417501093140f, -0.030674803176636626f, 0.999505596225325310f,
  -0.031441423540560301f,
  0.999481186966166950f, -0.032208025408304586f, 0.999456189737977340f,
  -0.032974608328897335f,
  0.999430604555461730f, -0.033741171851377580f, 0.999404431433671300f,
  -0.034507715524795750f,
  0.999377670388002850f, -0.035274238898213947f, 0.999350321434199440f,
  -0.036040741520706229f,
  0.999322384588349540f, -0.036807222941358832f, 0.999293859866887790f,
  -0.037573682709270494f,
  0.999264747286594420f, -0.038340120373552694f, 0.999235046864595850f,
  -0.039106535483329888f,
  0.999204758618363890f, -0.039872927587739811f, 0.999173882565716380f,
  -0.040639296235933736f,
  0.999142418724816910f, -0.041405640977076739f, 0.999110367114174890f,
  -0.042171961360347947f,
  0.999077727752645360f, -0.042938256934940820f, 0.999044500659429290f,
  -0.043704527250063421f,
  0.999010685854073380f, -0.044470771854938668f, 0.998976283356469820f,
  -0.045236990298804590f,
  0.998941293186856870f, -0.046003182130914623f, 0.998905715365818290f,
  -0.046769346900537863f,
  0.998869549914283560f, -0.047535484156959303f, 0.998832796853527990f,
  -0.048301593449480144f,
  0.998795456205172410f, -0.049067674327418015f, 0.998757527991183340f,
  -0.049833726340107277f,
  0.998719012233872940f, -0.050599749036899282f, 0.998679908955899090f,
  -0.051365741967162593f,
  0.998640218180265270f, -0.052131704680283324f, 0.998599939930320370f,
  -0.052897636725665324f,
  0.998559074229759310f, -0.053663537652730520f, 0.998517621102622210f,
  -0.054429407010919133f,
  0.998475580573294770f, -0.055195244349689934f, 0.998432952666508440f,
  -0.055961049218520569f,
  0.998389737407340160f, -0.056726821166907748f, 0.998345934821212370f,
  -0.057492559744367566f,
  0.998301544933892890f, -0.058258264500435752f, 0.998256567771495180f,
  -0.059023934984667931f,
  0.998211003360478190f, -0.059789570746639868f, 0.998164851727646240f,
  -0.060555171335947788f,
  0.998118112900149180f, -0.061320736302208578f, 0.998070786905482340f,
  -0.062086265195060088f,
  0.998022873771486240f, -0.062851757564161406f, 0.997974373526346990f,
  -0.063617212959193106f,
  0.997925286198596000f, -0.064382630929857465f, 0.997875611817110150f,
  -0.065148011025878833f,
  0.997825350411111640f, -0.065913352797003805f, 0.997774502010167820f,
  -0.066678655793001557f,
  0.997723066644191640f, -0.067443919563664051f, 0.997671044343441000f,
  -0.068209143658806329f,
  0.997618435138519550f, -0.068974327628266746f, 0.997565239060375750f,
  -0.069739471021907307f,
  0.997511456140303450f, -0.070504573389613856f, 0.997457086409941910f,
  -0.071269634281296401f,
  0.997402129901275300f, -0.072034653246889332f, 0.997346586646633230f,
  -0.072799629836351673f,
  0.997290456678690210f, -0.073564563599667426f, 0.997233740030466280f,
  -0.074329454086845756f,
  0.997176436735326190f, -0.075094300847921305f, 0.997118546826979980f,
  -0.075859103432954447f,
  0.997060070339482960f, -0.076623861392031492f, 0.997001007307235290f,
  -0.077388574275265049f,
  0.996941357764982160f, -0.078153241632794232f, 0.996881121747813850f,
  -0.078917863014784942f,
  0.996820299291165670f, -0.079682437971430126f, 0.996758890430818000f,
  -0.080446966052950014f,
  0.996696895202896060f, -0.081211446809592441f, 0.996634313643869900f,
  -0.081975879791633066f,
  0.996571145790554840f, -0.082740264549375692f, 0.996507391680110820f,
  -0.083504600633152432f,
  0.996443051350042630f, -0.084268887593324071f, 0.996378124838200210f,
  -0.085033124980280275f,
  0.996312612182778000f, -0.085797312344439894f, 0.996246513422315520f,
  -0.086561449236251170f,
  0.996179828595696980f, -0.087325535206192059f, 0.996112557742151130f,
  -0.088089569804770507f,
  0.996044700901251970f, -0.088853552582524600f, 0.995976258112917790f,
  -0.089617483090022959f,
  0.995907229417411720f, -0.090381360877864983f, 0.995837614855341610f,
  -0.091145185496681005f,
  0.995767414467659820f, -0.091908956497132724f, 0.995696628295663520f,
  -0.092672673429913310f,
  0.995625256380994310f, -0.093436335845747787f, 0.995553298765638470f,
  -0.094199943295393204f,
  0.995480755491926940f, -0.094963495329638992f, 0.995407626602534900f,
  -0.095726991499307162f,
  0.995333912140482280f, -0.096490431355252593f, 0.995259612149133390f,
  -0.097253814448363271f,
  0.995184726672196930f, -0.098017140329560604f, 0.995109255753726110f,
  -0.098780408549799623f,
  0.995033199438118630f, -0.099543618660069319f, 0.994956557770116380f,
  -0.100306770211392860f,
  0.994879330794805620f, -0.101069862754827820f, 0.994801518557617110f,
  -0.101832895841466530f,
  0.994723121104325700f, -0.102595869022436280f, 0.994644138481050710f,
  -0.103358781848899610f,
  0.994564570734255420f, -0.104121633872054590f, 0.994484417910747600f,
  -0.104884424643134970f,
  0.994403680057679100f, -0.105647153713410620f, 0.994322357222545810f,
  -0.106409820634187680f,
  0.994240449453187900f, -0.107172424956808840f, 0.994157956797789730f,
  -0.107934966232653650f,
  0.994074879304879370f, -0.108697444013138720f, 0.993991217023329380f,
  -0.109459857849717980f,
  0.993906970002356060f, -0.110222207293883060f, 0.993822138291519660f,
  -0.110984491897163390f,
  0.993736721940724600f, -0.111746711211126590f, 0.993650721000219120f,
  -0.112508864787378690f,
  0.993564135520595300f, -0.113270952177564350f, 0.993476965552789190f,
  -0.114032972933367200f,
  0.993389211148080650f, -0.114794926606510080f, 0.993300872358093280f,
  -0.115556812748755260f,
  0.993211949234794500f, -0.116318630911904750f, 0.993122441830495580f,
  -0.117080380647800590f,
  0.993032350197851410f, -0.117842061508324980f, 0.992941674389860470f,
  -0.118603673045400720f,
  0.992850414459865100f, -0.119365214810991350f, 0.992758570461551140f,
  -0.120126686357101500f,
  0.992666142448948020f, -0.120888087235777080f, 0.992573130476428810f,
  -0.121649416999105530f,
  0.992479534598709970f, -0.122410675199216200f, 0.992385354870851670f,
  -0.123171861388280480f,
  0.992290591348257370f, -0.123932975118512160f, 0.992195244086673920f,
  -0.124694015942167640f,
  0.992099313142191800f, -0.125454983411546230f, 0.992002798571244520f,
  -0.126215877078990350f,
  0.991905700430609330f, -0.126976696496885870f, 0.991808018777406430f,
  -0.127737441217662310f,
  0.991709753669099530f, -0.128498110793793170f, 0.991610905163495370f,
  -0.129258704777796140f,
  0.991511473318743900f, -0.130019222722233350f, 0.991411458193338540f,
  -0.130779664179711710f,
  0.991310859846115440f, -0.131540028702883120f, 0.991209678336254060f,
  -0.132300315844444650f,
  0.991107913723276890f, -0.133060525157139060f, 0.991005566067049370f,
  -0.133820656193754720f,
  0.990902635427780010f, -0.134580708507126170f, 0.990799121866020370f,
  -0.135340681650134210f,
  0.990695025442664630f, -0.136100575175706200f, 0.990590346218950150f,
  -0.136860388636816380f,
  0.990485084256457090f, -0.137620121586486040f, 0.990379239617108160f,
  -0.138379773577783890f,
  0.990272812363169110f, -0.139139344163826200f, 0.990165802557248400f,
  -0.139898832897777210f,
  0.990058210262297120f, -0.140658239332849210f, 0.989950035541608990f,
  -0.141417563022303020f,
  0.989841278458820530f, -0.142176803519448030f, 0.989731939077910570f,
  -0.142935960377642670f,
  0.989622017463200890f, -0.143695033150294470f, 0.989511513679355190f,
  -0.144454021390860470f,
  0.989400427791380380f, -0.145212924652847460f, 0.989288759864625170f,
  -0.145971742489812210f,
  0.989176509964781010f, -0.146730474455361750f, 0.989063678157881540f,
  -0.147489120103153570f,
  0.988950264510302990f, -0.148247678986896030f, 0.988836269088763540f,
  -0.149006150660348450f,
  0.988721691960323780f, -0.149764534677321510f, 0.988606533192386450f,
  -0.150522830591677400f,
  0.988490792852696590f, -0.151281037957330220f, 0.988374471009341280f,
  -0.152039156328246050f,
  0.988257567730749460f, -0.152797185258443440f, 0.988140083085692570f,
  -0.153555124301993450f,
  0.988022017143283530f, -0.154312973013020100f, 0.987903369972977790f,
  -0.155070730945700510f,
  0.987784141644572180f, -0.155828397654265230f, 0.987664332228205710f,
  -0.156585972692998430f,
  0.987543941794359230f, -0.157343455616238250f, 0.987422970413855410f,
  -0.158100845978376980f,
  0.987301418157858430f, -0.158858143333861450f, 0.987179285097874340f,
  -0.159615347237193060f,
  0.987056571305750970f, -0.160372457242928280f, 0.986933276853677710f,
  -0.161129472905678810f,
  0.986809401814185530f, -0.161886393780111830f, 0.986684946260146690f,
  -0.162643219420950310f,
  0.986559910264775410f, -0.163399949382973230f, 0.986434293901627180f,
  -0.164156583221015810f,
  0.986308097244598670f, -0.164913120489969890f, 0.986181320367928270f,
  -0.165669560744784120f,
  0.986053963346195440f, -0.166425903540464100f, 0.985926026254321130f,
  -0.167182148432072940f,
  0.985797509167567480f, -0.167938294974731170f, 0.985668412161537550f,
  -0.168694342723617330f,
  0.985538735312176060f, -0.169450291233967960f, 0.985408478695768420f,
  -0.170206140061078070f,
  0.985277642388941220f, -0.170961888760301220f, 0.985146226468662230f,
  -0.171717536887049970f,
  0.985014231012239840f, -0.172473083996795950f, 0.984881656097323700f,
  -0.173228529645070320f,
  0.984748501801904210f, -0.173983873387463820f, 0.984614768204312600f,
  -0.174739114779627200f,
  0.984480455383220930f, -0.175494253377271430f, 0.984345563417641900f,
  -0.176249288736167880f,
  0.984210092386929030f, -0.177004220412148750f, 0.984074042370776450f,
  -0.177759047961107170f,
  0.983937413449218920f, -0.178513770938997510f, 0.983800205702631600f,
  -0.179268388901835750f,
  0.983662419211730250f, -0.180022901405699510f, 0.983524054057571260f,
  -0.180777308006728590f,
  0.983385110321551180f, -0.181531608261124970f, 0.983245588085407070f,
  -0.182285801725153300f,
  0.983105487431216290f, -0.183039887955140950f, 0.982964808441396440f,
  -0.183793866507478450f,
  0.982823551198705240f, -0.184547736938619620f, 0.982681715786240860f,
  -0.185301498805081900f,
  0.982539302287441240f, -0.186055151663446630f, 0.982396310786084690f,
  -0.186808695070359270f,
  0.982252741366289370f, -0.187562128582529600f, 0.982108594112513610f,
  -0.188315451756732120f,
  0.981963869109555240f, -0.189068664149806190f, 0.981818566442552500f,
  -0.189821765318656410f,
  0.981672686196983110f, -0.190574754820252740f, 0.981526228458664770f,
  -0.191327632211630900f,
  0.981379193313754560f, -0.192080397049892440f, 0.981231580848749730f,
  -0.192833048892205230f,
  0.981083391150486710f, -0.193585587295803610f, 0.980934624306141640f,
  -0.194338011817988600f,
  0.980785280403230430f, -0.195090322016128250f, 0.980635359529608120f,
  -0.195842517447657850f,
  0.980484861773469380f, -0.196594597670080220f, 0.980333787223347960f,
  -0.197346562240965920f,
  0.980182135968117430f, -0.198098410717953560f, 0.980029908096990090f,
  -0.198850142658750090f,
  0.979877103699517640f, -0.199601757621130970f, 0.979723722865591170f,
  -0.200353255162940450f,
  0.979569765685440520f, -0.201104634842091900f, 0.979415232249634780f,
  -0.201855896216568050f,
  0.979260122649082020f, -0.202607038844421130f, 0.979104436975029250f,
  -0.203358062283773320f,
  0.978948175319062200f, -0.204108966092816870f, 0.978791337773105670f,
  -0.204859749829814420f,
  0.978633924429423210f, -0.205610413053099240f, 0.978475935380616830f,
  -0.206360955321075510f,
  0.978317370719627650f, -0.207111376192218560f, 0.978158230539735050f,
  -0.207861675225075070f,
  0.977998514934557140f, -0.208611851978263490f, 0.977838223998050430f,
  -0.209361906010474160f,
  0.977677357824509930f, -0.210111836880469610f, 0.977515916508569280f,
  -0.210861644147084860f,
  0.977353900145199960f, -0.211611327369227550f, 0.977191308829712280f,
  -0.212360886105878420f,
  0.977028142657754390f, -0.213110319916091360f, 0.976864401725312640f,
  -0.213859628358993750f,
  0.976700086128711840f, -0.214608810993786760f, 0.976535195964614470f,
  -0.215357867379745550f,
  0.976369731330021140f, -0.216106797076219520f, 0.976203692322270560f,
  -0.216855599642632620f,
  0.976037079039039020f, -0.217604274638483640f, 0.975869891578341030f,
  -0.218352821623346320f,
  0.975702130038528570f, -0.219101240156869800f, 0.975533794518291360f,
  -0.219849529798778700f,
  0.975364885116656980f, -0.220597690108873510f, 0.975195401932990370f,
  -0.221345720647030810f,
  0.975025345066994120f, -0.222093620973203510f, 0.974854714618708430f,
  -0.222841390647421120f,
  0.974683510688510670f, -0.223589029229789990f, 0.974511733377115720f,
  -0.224336536280493600f,
  0.974339382785575860f, -0.225083911359792830f, 0.974166459015280320f,
  -0.225831154028026170f,
  0.973992962167955830f, -0.226578263845610000f, 0.973818892345666100f,
  -0.227325240373038860f,
  0.973644249650811980f, -0.228072083170885730f, 0.973469034186131070f,
  -0.228818791799802220f,
  0.973293246054698250f, -0.229565365820518870f, 0.973116885359925130f,
  -0.230311804793845440f,
  0.972939952205560180f, -0.231058108280671110f, 0.972762446695688570f,
  -0.231804275841964780f,
  0.972584368934732210f, -0.232550307038775240f, 0.972405719027449770f,
  -0.233296201432231590f,
  0.972226497078936270f, -0.234041958583543430f, 0.972046703194623500f,
  -0.234787578054000970f,
  0.971866337480279400f, -0.235533059404975490f, 0.971685400042008540f,
  -0.236278402197919570f,
  0.971503890986251780f, -0.237023605994367200f, 0.971321810419786160f,
  -0.237768670355934190f,
  0.971139158449725090f, -0.238513594844318420f, 0.970955935183517970f,
  -0.239258379021299980f,
  0.970772140728950350f, -0.240003022448741500f, 0.970587775194143630f,
  -0.240747524688588430f,
  0.970402838687555500f, -0.241491885302869330f, 0.970217331317979160f,
  -0.242236103853696010f,
  0.970031253194543970f, -0.242980179903263870f, 0.969844604426714830f,
  -0.243724113013852160f,
  0.969657385124292450f, -0.244467902747824150f, 0.969469595397413060f,
  -0.245211548667627540f,
  0.969281235356548530f, -0.245955050335794590f, 0.969092305112506210f,
  -0.246698407314942410f,
  0.968902804776428870f, -0.247441619167773270f, 0.968712734459794780f,
  -0.248184685457074780f,
  0.968522094274417380f, -0.248927605745720150f, 0.968330884332445190f,
  -0.249670379596668570f,
  0.968139104746362440f, -0.250413006572965220f, 0.967946755628987800f,
  -0.251155486237741920f,
  0.967753837093475510f, -0.251897818154216970f, 0.967560349253314360f,
  -0.252640001885695520f,
  0.967366292222328510f, -0.253382036995570160f, 0.967171666114676640f,
  -0.254123923047320620f,
  0.966976471044852070f, -0.254865659604514570f, 0.966780707127683270f,
  -0.255607246230807380f,
  0.966584374478333120f, -0.256348682489942910f, 0.966387473212298900f,
  -0.257089967945753120f,
  0.966190003445412500f, -0.257831102162158990f, 0.965991965293840570f,
  -0.258572084703170340f,
  0.965793358874083680f, -0.259312915132886230f, 0.965594184302976830f,
  -0.260053593015495190f,
  0.965394441697689400f, -0.260794117915275510f, 0.965194131175724720f,
  -0.261534489396595520f,
  0.964993252854920320f, -0.262274707023913590f, 0.964791806853447900f,
  -0.263014770361779000f,
  0.964589793289812760f, -0.263754678974831350f, 0.964387212282854290f,
  -0.264494432427801630f,
  0.964184063951745830f, -0.265234030285511790f, 0.963980348415994110f,
  -0.265973472112875590f,
  0.963776065795439840f, -0.266712757474898370f, 0.963571216210257320f,
  -0.267451885936677620f,
  0.963365799780954050f, -0.268190857063403180f, 0.963159816628371360f,
  -0.268929670420357260f,
  0.962953266873683880f, -0.269668325572915090f, 0.962746150638399410f,
  -0.270406822086544820f,
  0.962538468044359160f, -0.271145159526808010f, 0.962330219213737400f,
  -0.271883337459359720f,
  0.962121404269041580f, -0.272621355449948980f, 0.961912023333112210f,
  -0.273359213064418680f,
  0.961702076529122540f, -0.274096909868706380f, 0.961491563980579000f,
  -0.274834445428843940f,
  0.961280485811320640f, -0.275571819310958140f, 0.961068842145519350f,
  -0.276309031081271080f,
  0.960856633107679660f, -0.277046080306099900f, 0.960643858822638590f,
  -0.277782966551857690f,
  0.960430519415565790f, -0.278519689385053060f, 0.960216615011963430f,
  -0.279256248372291180f,
  0.960002145737665960f, -0.279992643080273220f, 0.959787111718839900f,
  -0.280728873075797190f,
  0.959571513081984520f, -0.281464937925757940f, 0.959355349953930790f,
  -0.282200837197147560f,
  0.959138622461841890f, -0.282936570457055390f, 0.958921330733213170f,
  -0.283672137272668430f,
  0.958703474895871600f, -0.284407537211271880f, 0.958485055077976100f,
  -0.285142769840248670f,
  0.958266071408017670f, -0.285877834727080620f, 0.958046524014818600f,
  -0.286612731439347790f,
  0.957826413027532910f, -0.287347459544729510f, 0.957605738575646350f,
  -0.288082018611004130f,
  0.957384500788975860f, -0.288816408206049480f, 0.957162699797670210f,
  -0.289550627897843030f,
  0.956940335732208820f, -0.290284677254462330f, 0.956717408723403050f,
  -0.291018555844085090f,
  0.956493918902395100f, -0.291752263234989260f, 0.956269866400658030f,
  -0.292485798995553880f,
  0.956045251349996410f, -0.293219162694258630f, 0.955820073882545420f,
  -0.293952353899684660f,
  0.955594334130771110f, -0.294685372180514330f, 0.955368032227470350f,
  -0.295418217105532010f,
  0.955141168305770780f, -0.296150888243623790f, 0.954913742499130520f,
  -0.296883385163778270f,
  0.954685754941338340f, -0.297615707435086200f, 0.954457205766513490f,
  -0.298347854626741400f,
  0.954228095109105670f, -0.299079826308040480f, 0.953998423103894490f,
  -0.299811622048383350f,
  0.953768189885990330f, -0.300543241417273450f, 0.953537395590833280f,
  -0.301274683984317950f,
  0.953306040354193860f, -0.302005949319228080f, 0.953074124312172200f,
  -0.302737036991819140f,
  0.952841647601198720f, -0.303467946572011320f, 0.952608610358033350f,
  -0.304198677629829110f,
  0.952375012719765880f, -0.304929229735402370f, 0.952140854823815830f,
  -0.305659602458966120f,
  0.951906136807932350f, -0.306389795370860920f, 0.951670858810193860f,
  -0.307119808041533100f,
  0.951435020969008340f, -0.307849640041534870f, 0.951198623423113230f,
  -0.308579290941525090f,
  0.950961666311575080f, -0.309308760312268730f, 0.950724149773789610f,
  -0.310038047724637890f,
  0.950486073949481700f, -0.310767152749611470f, 0.950247438978705230f,
  -0.311496074958275910f,
  0.950008245001843000f, -0.312224813921824880f, 0.949768492159606680f,
  -0.312953369211560200f,
  0.949528180593036670f, -0.313681740398891520f, 0.949287310443502120f,
  -0.314409927055336660f,
  0.949045881852700560f, -0.315137928752522440f, 0.948803894962658490f,
  -0.315865745062183960f,
  0.948561349915730270f, -0.316593375556165850f, 0.948318246854599090f,
  -0.317320819806421740f,
  0.948074585922276230f, -0.318048077385014950f, 0.947830367262101010f,
  -0.318775147864118480f,
  0.947585591017741090f, -0.319502030816015690f, 0.947340257333192050f,
  -0.320228725813099860f,
  0.947094366352777220f, -0.320955232427875210f, 0.946847918221148000f,
  -0.321681550232956580f,
  0.946600913083283530f, -0.322407678801069850f, 0.946353351084490590f,
  -0.323133617705052330f,
  0.946105232370403450f, -0.323859366517852850f, 0.945856557086983910f,
  -0.324584924812532150f,
  0.945607325380521280f, -0.325310292162262930f, 0.945357537397632290f,
  -0.326035468140330240f,
  0.945107193285260610f, -0.326760452320131730f, 0.944856293190677210f,
  -0.327485244275178000f,
  0.944604837261480260f, -0.328209843579092500f, 0.944352825645594750f,
  -0.328934249805612200f,
  0.944100258491272660f, -0.329658462528587490f, 0.943847135947092690f,
  -0.330382481321982780f,
  0.943593458161960390f, -0.331106305759876430f, 0.943339225285107720f,
  -0.331829935416461110f,
  0.943084437466093490f, -0.332553369866044220f, 0.942829094854802710f,
  -0.333276608683047930f,
  0.942573197601446870f, -0.333999651442009380f, 0.942316745856563780f,
  -0.334722497717581220f,
  0.942059739771017310f, -0.335445147084531600f, 0.941802179495997650f,
  -0.336167599117744520f,
  0.941544065183020810f, -0.336889853392220050f, 0.941285396983928660f,
  -0.337611909483074620f,
  0.941026175050889260f, -0.338333766965541130f, 0.940766399536396070f,
  -0.339055425414969640f,
  0.940506070593268300f, -0.339776884406826850f, 0.940245188374650880f,
  -0.340498143516697160f,
  0.939983753034014050f, -0.341219202320282360f, 0.939721764725153340f,
  -0.341940060393402190f,
  0.939459223602189920f, -0.342660717311994380f, 0.939196129819569900f,
  -0.343381172652115040f,
  0.938932483532064600f, -0.344101425989938810f, 0.938668284894770170f,
  -0.344821476901759290f,
  0.938403534063108060f, -0.345541324963989090f, 0.938138231192824360f,
  -0.346260969753160010f,
  0.937872376439989890f, -0.346980410845923680f, 0.937605969960999990f,
  -0.347699647819051380f,
  0.937339011912574960f, -0.348418680249434560f, 0.937071502451759190f,
  -0.349137507714084970f,
  0.936803441735921560f, -0.349856129790134920f, 0.936534829922755500f,
  -0.350574546054837510f,
  0.936265667170278260f, -0.351292756085567090f, 0.935995953636831410f,
  -0.352010759459819080f,
  0.935725689481080370f, -0.352728555755210730f, 0.935454874862014620f,
  -0.353446144549480810f,
  0.935183509938947610f, -0.354163525420490340f, 0.934911594871516090f,
  -0.354880697946222790f,
  0.934639129819680780f, -0.355597661704783850f, 0.934366114943725790f,
  -0.356314416274402410f,
  0.934092550404258980f, -0.357030961233429980f, 0.933818436362210960f,
  -0.357747296160341900f,
  0.933543772978836170f, -0.358463420633736540f, 0.933268560415712050f,
  -0.359179334232336500f,
  0.932992798834738960f, -0.359895036534988110f, 0.932716488398140250f,
  -0.360610527120662270f,
  0.932439629268462360f, -0.361325805568454280f, 0.932162221608574430f,
  -0.362040871457584180f,
  0.931884265581668150f, -0.362755724367397230f, 0.931605761351257830f,
  -0.363470363877363760f,
  0.931326709081180430f, -0.364184789567079890f, 0.931047108935595280f,
  -0.364899001016267320f,
  0.930766961078983710f, -0.365612997804773850f, 0.930486265676149780f,
  -0.366326779512573590f,
  0.930205022892219070f, -0.367040345719767180f, 0.929923232892639670f,
  -0.367753696006581980f,
  0.929640895843181330f, -0.368466829953372320f, 0.929358011909935500f,
  -0.369179747140620020f,
  0.929074581259315860f, -0.369892447148934100f, 0.928790604058057020f,
  -0.370604929559051670f,
  0.928506080473215590f, -0.371317193951837540f, 0.928221010672169440f,
  -0.372029239908285010f,
  0.927935394822617890f, -0.372741067009515760f, 0.927649233092581180f,
  -0.373452674836780300f,
  0.927362525650401110f, -0.374164062971457930f, 0.927075272664740100f,
  -0.374875230995057540f,
  0.926787474304581750f, -0.375586178489217220f, 0.926499130739230510f,
  -0.376296905035704790f,
  0.926210242138311380f, -0.377007410216418260f, 0.925920808671770070f,
  -0.377717693613385640f,
  0.925630830509872720f, -0.378427754808765560f, 0.925340307823206310f,
  -0.379137593384847320f,
  0.925049240782677580f, -0.379847208924051160f, 0.924757629559513910f,
  -0.380556601008928520f,
  0.924465474325262600f, -0.381265769222162380f, 0.924172775251791200f,
  -0.381974713146567220f,
  0.923879532511286740f, -0.382683432365089780f, 0.923585746276256670f,
  -0.383391926460808660f,
  0.923291416719527640f, -0.384100195016935040f, 0.922996544014246250f,
  -0.384808237616812880f,
  0.922701128333878630f, -0.385516053843918850f, 0.922405169852209880f,
  -0.386223643281862980f,
  0.922108668743345180f, -0.386931005514388580f, 0.921811625181708120f,
  -0.387638140125372730f,
  0.921514039342042010f, -0.388345046698826250f, 0.921215911399408730f,
  -0.389051724818894380f,
  0.920917241529189520f, -0.389758174069856410f, 0.920618029907083970f,
  -0.390464394036126590f,
  0.920318276709110590f, -0.391170384302253870f, 0.920017982111606570f,
  -0.391876144452922350f,
  0.919717146291227360f, -0.392581674072951470f, 0.919415769424947070f,
  -0.393286972747296400f,
  0.919113851690057770f, -0.393992040061048100f, 0.918811393264170050f,
  -0.394696875599433560f,
  0.918508394325212250f, -0.395401478947816350f, 0.918204855051430900f,
  -0.396105849691696270f,
  0.917900775621390500f, -0.396809987416710310f, 0.917596156213972950f,
  -0.397513891708632330f,
  0.917290997008377910f, -0.398217562153373560f, 0.916985298184123000f,
  -0.398920998336982910f,
  0.916679059921042700f, -0.399624199845646790f, 0.916372282399289140f,
  -0.400327166265690090f,
  0.916064965799331720f, -0.401029897183575620f, 0.915757110301956720f,
  -0.401732392185905010f,
  0.915448716088267830f, -0.402434650859418430f, 0.915139783339685260f,
  -0.403136672790995300f,
  0.914830312237946200f, -0.403838457567654070f, 0.914520302965104450f,
  -0.404540004776553000f,
  0.914209755703530690f, -0.405241314004989860f, 0.913898670635911680f,
  -0.405942384840402510f,
  0.913587047945250810f, -0.406643216870369030f, 0.913274887814867760f,
  -0.407343809682607970f,
  0.912962190428398210f, -0.408044162864978690f, 0.912648955969793900f,
  -0.408744276005481360f,
  0.912335184623322750f, -0.409444148692257590f, 0.912020876573568340f,
  -0.410143780513590240f,
  0.911706032005429880f, -0.410843171057903910f, 0.911390651104122430f,
  -0.411542319913765220f,
  0.911074734055176360f, -0.412241226669882890f, 0.910758281044437570f,
  -0.412939890915108080f,
  0.910441292258067250f, -0.413638312238434500f, 0.910123767882541680f,
  -0.414336490228999100f,
  0.909805708104652220f, -0.415034424476081630f, 0.909487113111505430f,
  -0.415732114569105360f,
  0.909167983090522380f, -0.416429560097637150f, 0.908848318229439120f,
  -0.417126760651387870f,
  0.908528118716306120f, -0.417823715820212270f, 0.908207384739488700f,
  -0.418520425194109700f,
  0.907886116487666260f, -0.419216888363223910f, 0.907564314149832630f,
  -0.419913104917843620f,
  0.907241977915295820f, -0.420609074448402510f, 0.906919107973678140f,
  -0.421304796545479640f,
  0.906595704514915330f, -0.422000270799799680f, 0.906271767729257660f,
  -0.422695496802232950f,
  0.905947297807268460f, -0.423390474143796050f, 0.905622294939825270f,
  -0.424085202415651560f,
  0.905296759318118820f, -0.424779681209108810f, 0.904970691133653250f,
  -0.425473910115623800f,
  0.904644090578246240f, -0.426167888726799620f, 0.904316957844028320f,
  -0.426861616634386430f,
  0.903989293123443340f, -0.427555093430282080f, 0.903661096609247980f,
  -0.428248318706531960f,
  0.903332368494511820f, -0.428941292055329490f, 0.903003108972617150f,
  -0.429634013069016380f,
  0.902673318237258830f, -0.430326481340082610f, 0.902342996482444200f,
  -0.431018696461167030f,
  0.902012143902493180f, -0.431710658025057260f, 0.901680760692037730f,
  -0.432402365624690140f,
  0.901348847046022030f, -0.433093818853151960f, 0.901016403159702330f,
  -0.433785017303678520f,
  0.900683429228646970f, -0.434475960569655650f, 0.900349925448735600f,
  -0.435166648244619260f,
  0.900015892016160280f, -0.435857079922255470f, 0.899681329127423930f,
  -0.436547255196401200f,
  0.899346236979341570f, -0.437237173661044090f, 0.899010615769039070f,
  -0.437926834910322860f,
  0.898674465693953820f, -0.438616238538527660f, 0.898337786951834310f,
  -0.439305384140099950f,
  0.898000579740739880f, -0.439994271309633260f, 0.897662844259040860f,
  -0.440682899641872900f,
  0.897324580705418320f, -0.441371268731716670f, 0.896985789278863970f,
  -0.442059378174214700f,
  0.896646470178680150f, -0.442747227564570020f, 0.896306623604479550f,
  -0.443434816498138480f,
  0.895966249756185220f, -0.444122144570429200f, 0.895625348834030110f,
  -0.444809211377104880f,
  0.895283921038557580f, -0.445496016513981740f, 0.894941966570620750f,
  -0.446182559577030070f,
  0.894599485631382700f, -0.446868840162374160f, 0.894256478422316040f,
  -0.447554857866293010f,
  0.893912945145203250f, -0.448240612285219890f, 0.893568886002135910f,
  -0.448926103015743260f,
  0.893224301195515320f, -0.449611329654606540f, 0.892879190928051680f,
  -0.450296291798708610f,
  0.892533555402764580f, -0.450980989045103860f, 0.892187394822982480f,
  -0.451665420991002490f,
  0.891840709392342720f, -0.452349587233770890f, 0.891493499314791380f,
  -0.453033487370931580f,
  0.891145764794583180f, -0.453717121000163870f, 0.890797506036281490f,
  -0.454400487719303580f,
  0.890448723244757880f, -0.455083587126343840f, 0.890099416625192320f,
  -0.455766418819434640f,
  0.889749586383072780f, -0.456448982396883920f, 0.889399232724195520f,
  -0.457131277457156980f,
  0.889048355854664570f, -0.457813303598877170f, 0.888696955980891600f,
  -0.458495060420826270f,
  0.888345033309596350f, -0.459176547521944090f, 0.887992588047805560f,
  -0.459857764501329540f,
  0.887639620402853930f, -0.460538710958240010f, 0.887286130582383150f,
  -0.461219386492092380f,
  0.886932118794342190f, -0.461899790702462730f, 0.886577585246987040f,
  -0.462579923189086810f,
  0.886222530148880640f, -0.463259783551860150f, 0.885866953708892790f,
  -0.463939371390838520f,
  0.885510856136199950f, -0.464618686306237820f, 0.885154237640285110f,
  -0.465297727898434600f,
  0.884797098430937790f, -0.465976495767966180f, 0.884439438718253810f,
  -0.466654989515530920f,
  0.884081258712634990f, -0.467333208741988420f, 0.883722558624789660f,
  -0.468011153048359830f,
  0.883363338665731580f, -0.468688822035827900f, 0.883003599046780830f,
  -0.469366215305737520f,
  0.882643339979562790f, -0.470043332459595620f, 0.882282561676008710f,
  -0.470720173099071600f,
  0.881921264348355050f, -0.471396736825997640f, 0.881559448209143780f,
  -0.472073023242368660f,
  0.881197113471222090f, -0.472749031950342790f, 0.880834260347742040f,
  -0.473424762552241530f,
  0.880470889052160750f, -0.474100214650549970f, 0.880106999798240360f,
  -0.474775387847917120f,
  0.879742592800047410f, -0.475450281747155870f, 0.879377668271953290f,
  -0.476124895951243580f,
  0.879012226428633530f, -0.476799230063322090f, 0.878646267485068130f,
  -0.477473283686698060f,
  0.878279791656541580f, -0.478147056424843010f, 0.877912799158641840f,
  -0.478820547881393890f,
  0.877545290207261350f, -0.479493757660153010f, 0.877177265018595940f,
  -0.480166685365088390f,
  0.876808723809145650f, -0.480839330600333960f, 0.876439666795713610f,
  -0.481511692970189860f,
  0.876070094195406600f, -0.482183772079122720f, 0.875700006225634600f,
  -0.482855567531765670f,
  0.875329403104110890f, -0.483527078932918740f, 0.874958285048851650f,
  -0.484198305887549030f,
  0.874586652278176110f, -0.484869248000791060f, 0.874214505010706300f,
  -0.485539904877946960f,
  0.873841843465366860f, -0.486210276124486420f, 0.873468667861384880f,
  -0.486880361346047340f,
  0.873094978418290090f, -0.487550160148436000f, 0.872720775355914300f,
  -0.488219672137626790f,
  0.872346058894391540f, -0.488888896919763170f, 0.871970829254157810f,
  -0.489557834101157440f,
  0.871595086655950980f, -0.490226483288291160f, 0.871218831320811020f,
  -0.490894844087815090f,
  0.870842063470078980f, -0.491562916106549900f, 0.870464783325397670f,
  -0.492230698951486020f,
  0.870086991108711460f, -0.492898192229784040f, 0.869708687042265670f,
  -0.493565395548774770f,
  0.869329871348606840f, -0.494232308515959670f, 0.868950544250582380f,
  -0.494898930739011260f,
  0.868570705971340900f, -0.495565261825772540f, 0.868190356734331310f,
  -0.496231301384258250f,
  0.867809496763303320f, -0.496897049022654470f, 0.867428126282306920f,
  -0.497562504349319150f,
  0.867046245515692650f, -0.498227666972781870f, 0.866663854688111130f,
  -0.498892536501744590f,
  0.866280954024512990f, -0.499557112545081840f, 0.865897543750148820f,
  -0.500221394711840680f,
  0.865513624090569090f, -0.500885382611240710f, 0.865129195271623800f,
  -0.501549075852675390f,
  0.864744257519462380f, -0.502212474045710790f, 0.864358811060534030f,
  -0.502875576800086990f,
  0.863972856121586810f, -0.503538383725717580f, 0.863586392929668100f,
  -0.504200894432690340f,
  0.863199421712124160f, -0.504863108531267590f, 0.862811942696600330f,
  -0.505525025631885390f,
  0.862423956111040610f, -0.506186645345155230f, 0.862035462183687210f,
  -0.506847967281863210f,
  0.861646461143081300f, -0.507508991052970870f, 0.861256953218062170f,
  -0.508169716269614600f,
  0.860866938637767310f, -0.508830142543106990f, 0.860476417631632070f,
  -0.509490269484936360f,
  0.860085390429390140f, -0.510150096706766810f, 0.859693857261072610f,
  -0.510809623820439040f,
  0.859301818357008470f, -0.511468850437970300f, 0.858909273947823900f,
  -0.512127776171554690f,
  0.858516224264442740f, -0.512786400633562960f, 0.858122669538086140f,
  -0.513444723436543460f,
  0.857728610000272120f, -0.514102744193221660f, 0.857334045882815590f,
  -0.514760462516501200f,
  0.856938977417828760f, -0.515417878019462930f, 0.856543404837719960f,
  -0.516074990315366630f,
  0.856147328375194470f, -0.516731799017649870f, 0.855750748263253920f,
  -0.517388303739929060f,
  0.855353664735196030f, -0.518044504095999340f, 0.854956078024614930f,
  -0.518700399699834950f,
  0.854557988365400530f, -0.519355990165589640f, 0.854159395991738850f,
  -0.520011275107596040f,
  0.853760301138111410f, -0.520666254140367160f, 0.853360704039295430f,
  -0.521320926878595660f,
  0.852960604930363630f, -0.521975292937154390f, 0.852560004046684080f,
  -0.522629351931096610f,
  0.852158901623919830f, -0.523283103475656430f, 0.851757297898029120f,
  -0.523936547186248600f,
  0.851355193105265200f, -0.524589682678468950f, 0.850952587482175730f,
  -0.525242509568094710f,
  0.850549481265603480f, -0.525895027471084630f, 0.850145874692685210f,
  -0.526547236003579440f,
  0.849741768000852550f, -0.527199134781901280f, 0.849337161427830780f,
  -0.527850723422555230f,
  0.848932055211639610f, -0.528502001542228480f, 0.848526449590592650f,
  -0.529152968757790610f,
  0.848120344803297230f, -0.529803624686294610f, 0.847713741088654380f,
  -0.530453968944976320f,
  0.847306638685858320f, -0.531104001151255000f, 0.846899037834397240f,
  -0.531753720922733320f,
  0.846490938774052130f, -0.532403127877197900f, 0.846082341744897050f,
  -0.533052221632619450f,
  0.845673246987299070f, -0.533701001807152960f, 0.845263654741918220f,
  -0.534349468019137520f,
  0.844853565249707120f, -0.534997619887097150f, 0.844442978751910660f,
  -0.535645457029741090f,
  0.844031895490066410f, -0.536292979065963180f, 0.843620315706004150f,
  -0.536940185614842910f,
  0.843208239641845440f, -0.537587076295645390f, 0.842795667540004120f,
  -0.538233650727821700f,
  0.842382599643185850f, -0.538879908531008420f, 0.841969036194387680f,
  -0.539525849325028890f,
  0.841554977436898440f, -0.540171472729892850f, 0.841140423614298080f,
  -0.540816778365796670f,
  0.840725374970458070f, -0.541461765853123440f, 0.840309831749540770f,
  -0.542106434812443920f,
  0.839893794195999520f, -0.542750784864515890f, 0.839477262554578550f,
  -0.543394815630284800f,
  0.839060237070312740f, -0.544038526730883820f, 0.838642717988527300f,
  -0.544681917787634530f,
  0.838224705554838080f, -0.545324988422046460f, 0.837806200015150940f,
  -0.545967738255817570f,
  0.837387201615661940f, -0.546610166910834860f, 0.836967710602857020f,
  -0.547252274009174090f,
  0.836547727223512010f, -0.547894059173100190f, 0.836127251724692270f,
  -0.548535522025067390f,
  0.835706284353752600f, -0.549176662187719660f, 0.835284825358337370f,
  -0.549817479283890910f,
  0.834862874986380010f, -0.550457972936604810f, 0.834440433486103190f,
  -0.551098142769075430f,
  0.834017501106018130f, -0.551737988404707340f, 0.833594078094925140f,
  -0.552377509467096070f,
  0.833170164701913190f, -0.553016705580027470f, 0.832745761176359460f,
  -0.553655576367479310f,
  0.832320867767929680f, -0.554294121453620000f, 0.831895484726577590f,
  -0.554932340462810370f,
  0.831469612302545240f, -0.555570233019602180f, 0.831043250746362320f,
  -0.556207798748739930f,
  0.830616400308846310f, -0.556845037275160100f, 0.830189061241102370f,
  -0.557481948223991550f,
  0.829761233794523050f, -0.558118531220556100f, 0.829332918220788250f,
  -0.558754785890368310f,
  0.828904114771864870f, -0.559390711859136140f, 0.828474823700007130f,
  -0.560026308752760380f,
  0.828045045257755800f, -0.560661576197336030f, 0.827614779697938400f,
  -0.561296513819151470f,
  0.827184027273669130f, -0.561931121244689470f, 0.826752788238348520f,
  -0.562565398100626560f,
  0.826321062845663530f, -0.563199344013834090f, 0.825888851349586780f,
  -0.563832958611378170f,
  0.825456154004377550f, -0.564466241520519500f, 0.825022971064580220f,
  -0.565099192368713980f,
  0.824589302785025290f, -0.565731810783613120f, 0.824155149420828570f,
  -0.566364096393063840f,
  0.823720511227391430f, -0.566996048825108680f, 0.823285388460400110f,
  -0.567627667707986230f,
  0.822849781375826430f, -0.568258952670131490f, 0.822413690229926390f,
  -0.568889903340175860f,
  0.821977115279241550f, -0.569520519346947140f, 0.821540056780597610f,
  -0.570150800319470300f,
  0.821102514991104650f, -0.570780745886967260f, 0.820664490168157460f,
  -0.571410355678857230f,
  0.820225982569434690f, -0.572039629324757050f, 0.819786992452898990f,
  -0.572668566454481160f,
  0.819347520076796900f, -0.573297166698042200f, 0.818907565699658950f,
  -0.573925429685650750f,
  0.818467129580298660f, -0.574553355047715760f, 0.818026211977813440f,
  -0.575180942414845080f,
  0.817584813151583710f, -0.575808191417845340f, 0.817142933361272970f,
  -0.576435101687721830f,
  0.816700572866827850f, -0.577061672855679440f, 0.816257731928477390f,
  -0.577687904553122800f,
  0.815814410806733780f, -0.578313796411655590f, 0.815370609762391290f,
  -0.578939348063081780f,
  0.814926329056526620f, -0.579564559139405630f, 0.814481568950498610f,
  -0.580189429272831680f,
  0.814036329705948410f, -0.580813958095764530f, 0.813590611584798510f,
  -0.581438145240810170f,
  0.813144414849253590f, -0.582061990340775440f, 0.812697739761799490f,
  -0.582685493028668460f,
  0.812250586585203880f, -0.583308652937698290f, 0.811802955582515470f,
  -0.583931469701276180f,
  0.811354847017063730f, -0.584553942953015330f, 0.810906261152459670f,
  -0.585176072326730410f,
  0.810457198252594770f, -0.585797857456438860f, 0.810007658581641140f,
  -0.586419297976360500f,
  0.809557642404051260f, -0.587040393520917970f, 0.809107149984558240f,
  -0.587661143724736660f,
  0.808656181588174980f, -0.588281548222645220f, 0.808204737480194720f,
  -0.588901606649675720f,
  0.807752817926190360f, -0.589521318641063940f, 0.807300423192014450f,
  -0.590140683832248820f,
  0.806847553543799330f, -0.590759701858874160f, 0.806394209247956240f,
  -0.591378372356787580f,
  0.805940390571176280f, -0.591996694962040990f, 0.805486097780429230f,
  -0.592614669310891130f,
  0.805031331142963660f, -0.593232295039799800f, 0.804576090926307110f,
  -0.593849571785433630f,
  0.804120377398265810f, -0.594466499184664430f, 0.803664190826924090f,
  -0.595083076874569960f,
  0.803207531480644940f, -0.595699304492433360f, 0.802750399628069160f,
  -0.596315181675743710f,
  0.802292795538115720f, -0.596930708062196500f, 0.801834719479981310f,
  -0.597545883289693160f,
  0.801376171723140240f, -0.598160706996342270f, 0.800917152537344300f,
  -0.598775178820458720f,
  0.800457662192622820f, -0.599389298400564540f, 0.799997700959281910f,
  -0.600003065375388940f,
  0.799537269107905010f, -0.600616479383868970f, 0.799076366909352350f,
  -0.601229540065148500f,
  0.798614994634760820f, -0.601842247058580030f, 0.798153152555543750f,
  -0.602454600003723750f,
  0.797690840943391160f, -0.603066598540348160f, 0.797228060070268810f,
  -0.603678242308430370f,
  0.796764810208418830f, -0.604289530948155960f, 0.796301091630359110f,
  -0.604900464099919820f,
  0.795836904608883570f, -0.605511041404325550f, 0.795372249417061310f,
  -0.606121262502186120f,
  0.794907126328237010f, -0.606731127034524480f, 0.794441535616030590f,
  -0.607340634642572930f,
  0.793975477554337170f, -0.607949784967773630f, 0.793508952417326660f,
  -0.608558577651779450f,
  0.793041960479443640f, -0.609167012336453210f, 0.792574502015407690f,
  -0.609775088663868430f,
  0.792106577300212390f, -0.610382806276309480f, 0.791638186609125880f,
  -0.610990164816271660f,
  0.791169330217690200f, -0.611597163926461910f, 0.790700008401721610f,
  -0.612203803249797950f,
  0.790230221437310030f, -0.612810082429409710f, 0.789759969600819070f,
  -0.613416001108638590f,
  0.789289253168885650f, -0.614021558931038380f, 0.788818072418420280f,
  -0.614626755540375050f,
  0.788346427626606340f, -0.615231590580626820f, 0.787874319070900220f,
  -0.615836063695985090f,
  0.787401747029031430f, -0.616440174530853650f, 0.786928711779001810f,
  -0.617043922729849760f,
  0.786455213599085770f, -0.617647307937803870f, 0.785981252767830150f,
  -0.618250329799760250f,
  0.785506829564053930f, -0.618852987960976320f, 0.785031944266848080f,
  -0.619455282066924020f,
  0.784556597155575240f, -0.620057211763289100f, 0.784080788509869950f,
  -0.620658776695972140f,
  0.783604518609638200f, -0.621259976511087550f, 0.783127787735057310f,
  -0.621860810854965360f,
  0.782650596166575730f, -0.622461279374149970f, 0.782172944184913010f,
  -0.623061381715401260f,
  0.781694832071059390f, -0.623661117525694530f, 0.781216260106276090f,
  -0.624260486452220650f,
  0.780737228572094490f, -0.624859488142386340f, 0.780257737750316590f,
  -0.625458122243814360f,
  0.779777787923014550f, -0.626056388404343520f, 0.779297379372530300f,
  -0.626654286272029350f,
  0.778816512381475980f, -0.627251815495144080f, 0.778335187232733210f,
  -0.627848975722176460f,
  0.777853404209453150f, -0.628445766601832710f, 0.777371163595056310f,
  -0.629042187783036000f,
  0.776888465673232440f, -0.629638238914926980f, 0.776405310727940390f,
  -0.630233919646864370f,
  0.775921699043407690f, -0.630829229628424470f, 0.775437630904130540f,
  -0.631424168509401860f,
  0.774953106594873930f, -0.632018735939809060f, 0.774468126400670860f,
  -0.632612931569877410f,
  0.773982690606822900f, -0.633206755050057190f, 0.773496799498899050f,
  -0.633800206031017280f,
  0.773010453362736990f, -0.634393284163645490f, 0.772523652484441330f,
  -0.634985989099049460f,
  0.772036397150384520f, -0.635578320488556110f, 0.771548687647206300f,
  -0.636170277983712170f,
  0.771060524261813820f, -0.636761861236284200f, 0.770571907281380810f,
  -0.637353069898259130f,
  0.770082836993347900f, -0.637943903621844060f, 0.769593313685422940f,
  -0.638534362059466790f,
  0.769103337645579700f, -0.639124444863775730f, 0.768612909162058380f,
  -0.639714151687640450f,
  0.768122028523365420f, -0.640303482184151670f, 0.767630696018273380f,
  -0.640892436006621380f,
  0.767138911935820400f, -0.641481012808583160f, 0.766646676565310380f,
  -0.642069212243792540f,
  0.766153990196312920f, -0.642657033966226860f, 0.765660853118662500f,
  -0.643244477630085850f,
  0.765167265622458960f, -0.643831542889791390f, 0.764673227998067140f,
  -0.644418229399988380f,
  0.764178740536116670f, -0.645004536815543930f, 0.763683803527501870f,
  -0.645590464791548690f,
  0.763188417263381270f, -0.646176012983316280f, 0.762692582035177980f,
  -0.646761181046383920f,
  0.762196298134578900f, -0.647345968636512060f, 0.761699565853535380f,
  -0.647930375409685340f,
  0.761202385484261780f, -0.648514401022112440f, 0.760704757319236920f,
  -0.649098045130225950f,
  0.760206681651202420f, -0.649681307390683190f, 0.759708158773163440f,
  -0.650264187460365850f,
  0.759209188978388070f, -0.650846684996380880f, 0.758709772560407390f,
  -0.651428799656059820f,
  0.758209909813015280f, -0.652010531096959500f, 0.757709601030268080f,
  -0.652591878976862440f,
  0.757208846506484570f, -0.653172842953776760f, 0.756707646536245670f,
  -0.653753422685936060f,
  0.756206001414394540f, -0.654333617831800440f, 0.755703911436035880f,
  -0.654913428050056030f,
  0.755201376896536550f, -0.655492852999615350f, 0.754698398091524500f,
  -0.656071892339617600f,
  0.754194975316889170f, -0.656650545729428940f, 0.753691108868781210f,
  -0.657228812828642540f,
  0.753186799043612520f, -0.657806693297078640f, 0.752682046138055340f,
  -0.658384186794785050f,
  0.752176850449042810f, -0.658961292982037320f, 0.751671212273768430f,
  -0.659538011519338660f,
  0.751165131909686480f, -0.660114342067420480f, 0.750658609654510700f,
  -0.660690284287242300f,
  0.750151645806215070f, -0.661265837839992270f, 0.749644240663033480f,
  -0.661841002387086870f,
  0.749136394523459370f, -0.662415777590171780f, 0.748628107686245440f,
  -0.662990163111121470f,
  0.748119380450403600f, -0.663564158612039770f, 0.747610213115205150f,
  -0.664137763755260010f,
  0.747100605980180130f, -0.664710978203344790f, 0.746590559345117310f,
  -0.665283801619087180f,
  0.746080073510063780f, -0.665856233665509720f, 0.745569148775325430f,
  -0.666428274005865240f,
  0.745057785441466060f, -0.666999922303637470f, 0.744545983809307370f,
  -0.667571178222540310f,
  0.744033744179929290f, -0.668142041426518450f, 0.743521066854669120f,
  -0.668712511579747980f,
  0.743007952135121720f, -0.669282588346636010f, 0.742494400323139180f,
  -0.669852271391821020f,
  0.741980411720831070f, -0.670421560380173090f, 0.741465986630563290f,
  -0.670990454976794220f,
  0.740951125354959110f, -0.671558954847018330f, 0.740435828196898020f,
  -0.672127059656411730f,
  0.739920095459516200f, -0.672694769070772860f, 0.739403927446205760f,
  -0.673262082756132970f,
  0.738887324460615110f, -0.673829000378756040f, 0.738370286806648620f,
  -0.674395521605139050f,
  0.737852814788465980f, -0.674961646102011930f, 0.737334908710482910f,
  -0.675527373536338520f,
  0.736816568877369900f, -0.676092703575315920f, 0.736297795594053170f,
  -0.676657635886374950f,
  0.735778589165713590f, -0.677222170137180330f, 0.735258949897786840f,
  -0.677786305995631500f,
  0.734738878095963500f, -0.678350043129861470f, 0.734218374066188280f,
  -0.678913381208238410f,
  0.733697438114660370f, -0.679476319899364970f, 0.733176070547832740f,
  -0.680038858872078930f,
  0.732654271672412820f, -0.680600997795453020f, 0.732132041795361290f,
  -0.681162736338795430f,
  0.731609381223892630f, -0.681724074171649710f, 0.731086290265474340f,
  -0.682285010963795570f,
  0.730562769227827590f, -0.682845546385248080f, 0.730038818418926260f,
  -0.683405680106258680f,
  0.729514438146997010f, -0.683965411797315400f, 0.728989628720519420f,
  -0.684524741129142300f,
  0.728464390448225200f, -0.685083667772700360f, 0.727938723639098620f,
  -0.685642191399187470f,
  0.727412628602375770f, -0.686200311680038590f, 0.726886105647544970f,
  -0.686758028286925890f,
  0.726359155084346010f, -0.687315340891759050f, 0.725831777222770370f,
  -0.687872249166685550f,
  0.725303972373060770f, -0.688428752784090440f, 0.724775740845711280f,
  -0.688984851416597040f,
  0.724247082951467000f, -0.689540544737066830f, 0.723717999001323500f,
  -0.690095832418599950f,
  0.723188489306527460f, -0.690650714134534600f, 0.722658554178575610f,
  -0.691205189558448450f,
  0.722128193929215350f, -0.691759258364157750f, 0.721597408870443770f,
  -0.692312920225718220f,
  0.721066199314508110f, -0.692866174817424630f, 0.720534565573905270f,
  -0.693419021813811760f,
  0.720002507961381650f, -0.693971460889654000f, 0.719470026789932990f,
  -0.694523491719965520f,
  0.718937122372804490f, -0.695075113980000880f, 0.718403795023489830f,
  -0.695626327345254870f,
  0.717870045055731710f, -0.696177131491462990f, 0.717335872783521730f,
  -0.696727526094601200f,
  0.716801278521099540f, -0.697277510830886520f, 0.716266262582953120f,
  -0.697827085376777290f,
  0.715730825283818590f, -0.698376249408972920f, 0.715194966938680120f,
  -0.698925002604414150f,
  0.714658687862769090f, -0.699473344640283770f, 0.714121988371564820f,
  -0.700021275194006250f,
  0.713584868780793640f, -0.700568793943248340f, 0.713047329406429340f,
  -0.701115900565918660f,
  0.712509370564692320f, -0.701662594740168450f, 0.711970992572050100f,
  -0.702208876144391870f,
  0.711432195745216430f, -0.702754744457225300f, 0.710892980401151680f,
  -0.703300199357548730f,
  0.710353346857062420f, -0.703845240524484940f, 0.709813295430400840f,
  -0.704389867637400410f,
  0.709272826438865690f, -0.704934080375904880f, 0.708731940200400650f,
  -0.705477878419852100f,
  0.708190637033195400f, -0.706021261449339740f, 0.707648917255684350f,
  -0.706564229144709510f,
  0.707106781186547570f, -0.707106781186547460f, 0.706564229144709620f,
  -0.707648917255684350f,
  0.706021261449339740f, -0.708190637033195290f, 0.705477878419852210f,
  -0.708731940200400650f,
  0.704934080375904990f, -0.709272826438865580f, 0.704389867637400410f,
  -0.709813295430400840f,
  0.703845240524484940f, -0.710353346857062310f, 0.703300199357548730f,
  -0.710892980401151680f,
  0.702754744457225300f, -0.711432195745216430f, 0.702208876144391870f,
  -0.711970992572049990f,
  0.701662594740168570f, -0.712509370564692320f, 0.701115900565918660f,
  -0.713047329406429230f,
  0.700568793943248450f, -0.713584868780793520f, 0.700021275194006360f,
  -0.714121988371564710f,
  0.699473344640283770f, -0.714658687862768980f, 0.698925002604414150f,
  -0.715194966938680010f,
  0.698376249408972920f, -0.715730825283818590f, 0.697827085376777290f,
  -0.716266262582953120f,
  0.697277510830886630f, -0.716801278521099540f, 0.696727526094601200f,
  -0.717335872783521730f,
  0.696177131491462990f, -0.717870045055731710f, 0.695626327345254870f,
  -0.718403795023489720f,
  0.695075113980000880f, -0.718937122372804380f, 0.694523491719965520f,
  -0.719470026789932990f,
  0.693971460889654000f, -0.720002507961381650f, 0.693419021813811880f,
  -0.720534565573905270f,
  0.692866174817424740f, -0.721066199314508110f, 0.692312920225718220f,
  -0.721597408870443660f,
  0.691759258364157750f, -0.722128193929215350f, 0.691205189558448450f,
  -0.722658554178575610f,
  0.690650714134534720f, -0.723188489306527350f, 0.690095832418599950f,
  -0.723717999001323390f,
  0.689540544737066940f, -0.724247082951466890f, 0.688984851416597150f,
  -0.724775740845711280f,
  0.688428752784090550f, -0.725303972373060660f, 0.687872249166685550f,
  -0.725831777222770370f,
  0.687315340891759160f, -0.726359155084346010f, 0.686758028286925890f,
  -0.726886105647544970f,
  0.686200311680038700f, -0.727412628602375770f, 0.685642191399187470f,
  -0.727938723639098620f,
  0.685083667772700360f, -0.728464390448225200f, 0.684524741129142300f,
  -0.728989628720519310f,
  0.683965411797315510f, -0.729514438146996900f, 0.683405680106258790f,
  -0.730038818418926150f,
  0.682845546385248080f, -0.730562769227827590f, 0.682285010963795570f,
  -0.731086290265474230f,
  0.681724074171649820f, -0.731609381223892520f, 0.681162736338795430f,
  -0.732132041795361290f,
  0.680600997795453130f, -0.732654271672412820f, 0.680038858872079040f,
  -0.733176070547832740f,
  0.679476319899365080f, -0.733697438114660260f, 0.678913381208238410f,
  -0.734218374066188170f,
  0.678350043129861580f, -0.734738878095963390f, 0.677786305995631500f,
  -0.735258949897786730f,
  0.677222170137180450f, -0.735778589165713480f, 0.676657635886374950f,
  -0.736297795594053060f,
  0.676092703575316030f, -0.736816568877369790f, 0.675527373536338630f,
  -0.737334908710482790f,
  0.674961646102012040f, -0.737852814788465980f, 0.674395521605139050f,
  -0.738370286806648510f,
  0.673829000378756150f, -0.738887324460615110f, 0.673262082756132970f,
  -0.739403927446205760f,
  0.672694769070772970f, -0.739920095459516090f, 0.672127059656411840f,
  -0.740435828196898020f,
  0.671558954847018330f, -0.740951125354959110f, 0.670990454976794220f,
  -0.741465986630563290f,
  0.670421560380173090f, -0.741980411720830960f, 0.669852271391821130f,
  -0.742494400323139180f,
  0.669282588346636010f, -0.743007952135121720f, 0.668712511579748090f,
  -0.743521066854669120f,
  0.668142041426518560f, -0.744033744179929180f, 0.667571178222540310f,
  -0.744545983809307250f,
  0.666999922303637470f, -0.745057785441465950f, 0.666428274005865350f,
  -0.745569148775325430f,
  0.665856233665509720f, -0.746080073510063780f, 0.665283801619087180f,
  -0.746590559345117310f,
  0.664710978203344900f, -0.747100605980180130f, 0.664137763755260010f,
  -0.747610213115205150f,
  0.663564158612039880f, -0.748119380450403490f, 0.662990163111121470f,
  -0.748628107686245330f,
  0.662415777590171780f, -0.749136394523459260f, 0.661841002387086870f,
  -0.749644240663033480f,
  0.661265837839992270f, -0.750151645806214960f, 0.660690284287242300f,
  -0.750658609654510590f,
  0.660114342067420480f, -0.751165131909686370f, 0.659538011519338770f,
  -0.751671212273768430f,
  0.658961292982037320f, -0.752176850449042700f, 0.658384186794785050f,
  -0.752682046138055230f,
  0.657806693297078640f, -0.753186799043612410f, 0.657228812828642650f,
  -0.753691108868781210f,
  0.656650545729429050f, -0.754194975316889170f, 0.656071892339617710f,
  -0.754698398091524390f,
  0.655492852999615460f, -0.755201376896536550f, 0.654913428050056150f,
  -0.755703911436035880f,
  0.654333617831800550f, -0.756206001414394540f, 0.653753422685936170f,
  -0.756707646536245670f,
  0.653172842953776760f, -0.757208846506484460f, 0.652591878976862550f,
  -0.757709601030268080f,
  0.652010531096959500f, -0.758209909813015280f, 0.651428799656059820f,
  -0.758709772560407390f,
  0.650846684996380990f, -0.759209188978387960f, 0.650264187460365960f,
  -0.759708158773163440f,
  0.649681307390683190f, -0.760206681651202420f, 0.649098045130226060f,
  -0.760704757319236920f,
  0.648514401022112550f, -0.761202385484261780f, 0.647930375409685460f,
  -0.761699565853535270f,
  0.647345968636512060f, -0.762196298134578900f, 0.646761181046383920f,
  -0.762692582035177870f,
  0.646176012983316390f, -0.763188417263381270f, 0.645590464791548800f,
  -0.763683803527501870f,
  0.645004536815544040f, -0.764178740536116670f, 0.644418229399988380f,
  -0.764673227998067140f,
  0.643831542889791500f, -0.765167265622458960f, 0.643244477630085850f,
  -0.765660853118662390f,
  0.642657033966226860f, -0.766153990196312810f, 0.642069212243792540f,
  -0.766646676565310380f,
  0.641481012808583160f, -0.767138911935820400f, 0.640892436006621380f,
  -0.767630696018273270f,
  0.640303482184151670f, -0.768122028523365310f, 0.639714151687640450f,
  -0.768612909162058270f,
  0.639124444863775730f, -0.769103337645579590f, 0.638534362059466790f,
  -0.769593313685422940f,
  0.637943903621844170f, -0.770082836993347900f, 0.637353069898259130f,
  -0.770571907281380700f,
  0.636761861236284200f, -0.771060524261813710f, 0.636170277983712170f,
  -0.771548687647206300f,
  0.635578320488556230f, -0.772036397150384410f, 0.634985989099049460f,
  -0.772523652484441330f,
  0.634393284163645490f, -0.773010453362736990f, 0.633800206031017280f,
  -0.773496799498899050f,
  0.633206755050057190f, -0.773982690606822790f, 0.632612931569877520f,
  -0.774468126400670860f,
  0.632018735939809060f, -0.774953106594873820f, 0.631424168509401860f,
  -0.775437630904130430f,
  0.630829229628424470f, -0.775921699043407580f, 0.630233919646864480f,
  -0.776405310727940390f,
  0.629638238914927100f, -0.776888465673232440f, 0.629042187783036000f,
  -0.777371163595056200f,
  0.628445766601832710f, -0.777853404209453040f, 0.627848975722176570f,
  -0.778335187232733090f,
  0.627251815495144190f, -0.778816512381475870f, 0.626654286272029460f,
  -0.779297379372530300f,
  0.626056388404343520f, -0.779777787923014440f, 0.625458122243814360f,
  -0.780257737750316590f,
  0.624859488142386450f, -0.780737228572094380f, 0.624260486452220650f,
  -0.781216260106276090f,
  0.623661117525694640f, -0.781694832071059390f, 0.623061381715401370f,
  -0.782172944184912900f,
  0.622461279374150080f, -0.782650596166575730f, 0.621860810854965360f,
  -0.783127787735057310f,
  0.621259976511087660f, -0.783604518609638200f, 0.620658776695972140f,
  -0.784080788509869950f,
  0.620057211763289210f, -0.784556597155575240f, 0.619455282066924020f,
  -0.785031944266848080f,
  0.618852987960976320f, -0.785506829564053930f, 0.618250329799760250f,
  -0.785981252767830150f,
  0.617647307937803980f, -0.786455213599085770f, 0.617043922729849760f,
  -0.786928711779001700f,
  0.616440174530853650f, -0.787401747029031320f, 0.615836063695985090f,
  -0.787874319070900110f,
  0.615231590580626820f, -0.788346427626606230f, 0.614626755540375050f,
  -0.788818072418420170f,
  0.614021558931038490f, -0.789289253168885650f, 0.613416001108638590f,
  -0.789759969600819070f,
  0.612810082429409710f, -0.790230221437310030f, 0.612203803249798060f,
  -0.790700008401721610f,
  0.611597163926462020f, -0.791169330217690090f, 0.610990164816271770f,
  -0.791638186609125770f,
  0.610382806276309480f, -0.792106577300212390f, 0.609775088663868430f,
  -0.792574502015407580f,
  0.609167012336453210f, -0.793041960479443640f, 0.608558577651779450f,
  -0.793508952417326660f,
  0.607949784967773740f, -0.793975477554337170f, 0.607340634642572930f,
  -0.794441535616030590f,
  0.606731127034524480f, -0.794907126328237010f, 0.606121262502186230f,
  -0.795372249417061190f,
  0.605511041404325550f, -0.795836904608883460f, 0.604900464099919930f,
  -0.796301091630359110f,
  0.604289530948156070f, -0.796764810208418720f, 0.603678242308430370f,
  -0.797228060070268700f,
  0.603066598540348280f, -0.797690840943391040f, 0.602454600003723860f,
  -0.798153152555543750f,
  0.601842247058580030f, -0.798614994634760820f, 0.601229540065148620f,
  -0.799076366909352350f,
  0.600616479383868970f, -0.799537269107905010f, 0.600003065375389060f,
  -0.799997700959281910f,
  0.599389298400564540f, -0.800457662192622710f, 0.598775178820458720f,
  -0.800917152537344300f,
  0.598160706996342380f, -0.801376171723140130f, 0.597545883289693270f,
  -0.801834719479981310f,
  0.596930708062196500f, -0.802292795538115720f, 0.596315181675743820f,
  -0.802750399628069160f,
  0.595699304492433470f, -0.803207531480644830f, 0.595083076874569960f,
  -0.803664190826924090f,
  0.594466499184664540f, -0.804120377398265700f, 0.593849571785433630f,
  -0.804576090926307000f,
  0.593232295039799800f, -0.805031331142963660f, 0.592614669310891130f,
  -0.805486097780429120f,
  0.591996694962040990f, -0.805940390571176280f, 0.591378372356787580f,
  -0.806394209247956240f,
  0.590759701858874280f, -0.806847553543799220f, 0.590140683832248940f,
  -0.807300423192014450f,
  0.589521318641063940f, -0.807752817926190360f, 0.588901606649675840f,
  -0.808204737480194720f,
  0.588281548222645330f, -0.808656181588174980f, 0.587661143724736770f,
  -0.809107149984558130f,
  0.587040393520918080f, -0.809557642404051260f, 0.586419297976360500f,
  -0.810007658581641140f,
  0.585797857456438860f, -0.810457198252594770f, 0.585176072326730410f,
  -0.810906261152459670f,
  0.584553942953015330f, -0.811354847017063730f, 0.583931469701276300f,
  -0.811802955582515360f,
  0.583308652937698290f, -0.812250586585203880f, 0.582685493028668460f,
  -0.812697739761799490f,
  0.582061990340775550f, -0.813144414849253590f, 0.581438145240810280f,
  -0.813590611584798510f,
  0.580813958095764530f, -0.814036329705948300f, 0.580189429272831680f,
  -0.814481568950498610f,
  0.579564559139405740f, -0.814926329056526620f, 0.578939348063081890f,
  -0.815370609762391290f,
  0.578313796411655590f, -0.815814410806733780f, 0.577687904553122800f,
  -0.816257731928477390f,
  0.577061672855679550f, -0.816700572866827850f, 0.576435101687721830f,
  -0.817142933361272970f,
  0.575808191417845340f, -0.817584813151583710f, 0.575180942414845190f,
  -0.818026211977813440f,
  0.574553355047715760f, -0.818467129580298660f, 0.573925429685650750f,
  -0.818907565699658950f,
  0.573297166698042320f, -0.819347520076796900f, 0.572668566454481160f,
  -0.819786992452898990f,
  0.572039629324757050f, -0.820225982569434690f, 0.571410355678857340f,
  -0.820664490168157460f,
  0.570780745886967370f, -0.821102514991104650f, 0.570150800319470300f,
  -0.821540056780597610f,
  0.569520519346947250f, -0.821977115279241550f, 0.568889903340175970f,
  -0.822413690229926390f,
  0.568258952670131490f, -0.822849781375826320f, 0.567627667707986230f,
  -0.823285388460400110f,
  0.566996048825108680f, -0.823720511227391320f, 0.566364096393063950f,
  -0.824155149420828570f,
  0.565731810783613230f, -0.824589302785025290f, 0.565099192368714090f,
  -0.825022971064580220f,
  0.564466241520519500f, -0.825456154004377440f, 0.563832958611378170f,
  -0.825888851349586780f,
  0.563199344013834090f, -0.826321062845663420f, 0.562565398100626560f,
  -0.826752788238348520f,
  0.561931121244689470f, -0.827184027273669020f, 0.561296513819151470f,
  -0.827614779697938400f,
  0.560661576197336030f, -0.828045045257755800f, 0.560026308752760380f,
  -0.828474823700007130f,
  0.559390711859136140f, -0.828904114771864870f, 0.558754785890368310f,
  -0.829332918220788250f,
  0.558118531220556100f, -0.829761233794523050f, 0.557481948223991660f,
  -0.830189061241102370f,
  0.556845037275160100f, -0.830616400308846200f, 0.556207798748739930f,
  -0.831043250746362320f,
  0.555570233019602290f, -0.831469612302545240f, 0.554932340462810370f,
  -0.831895484726577590f,
  0.554294121453620110f, -0.832320867767929680f, 0.553655576367479310f,
  -0.832745761176359460f,
  0.553016705580027580f, -0.833170164701913190f, 0.552377509467096070f,
  -0.833594078094925140f,
  0.551737988404707450f, -0.834017501106018130f, 0.551098142769075430f,
  -0.834440433486103190f,
  0.550457972936604810f, -0.834862874986380010f, 0.549817479283891020f,
  -0.835284825358337370f,
  0.549176662187719770f, -0.835706284353752600f, 0.548535522025067390f,
  -0.836127251724692160f,
  0.547894059173100190f, -0.836547727223511890f, 0.547252274009174090f,
  -0.836967710602857020f,
  0.546610166910834860f, -0.837387201615661940f, 0.545967738255817680f,
  -0.837806200015150940f,
  0.545324988422046460f, -0.838224705554837970f, 0.544681917787634530f,
  -0.838642717988527300f,
  0.544038526730883930f, -0.839060237070312630f, 0.543394815630284800f,
  -0.839477262554578550f,
  0.542750784864516000f, -0.839893794195999410f, 0.542106434812444030f,
  -0.840309831749540770f,
  0.541461765853123560f, -0.840725374970458070f, 0.540816778365796670f,
  -0.841140423614298080f,
  0.540171472729892970f, -0.841554977436898330f, 0.539525849325029010f,
  -0.841969036194387680f,
  0.538879908531008420f, -0.842382599643185960f, 0.538233650727821700f,
  -0.842795667540004120f,
  0.537587076295645510f, -0.843208239641845440f, 0.536940185614843020f,
  -0.843620315706004040f,
  0.536292979065963180f, -0.844031895490066410f, 0.535645457029741090f,
  -0.844442978751910660f,
  0.534997619887097260f, -0.844853565249707010f, 0.534349468019137520f,
  -0.845263654741918220f,
  0.533701001807152960f, -0.845673246987299070f, 0.533052221632619670f,
  -0.846082341744896940f,
  0.532403127877198010f, -0.846490938774052020f, 0.531753720922733320f,
  -0.846899037834397350f,
  0.531104001151255000f, -0.847306638685858320f, 0.530453968944976320f,
  -0.847713741088654270f,
  0.529803624686294830f, -0.848120344803297120f, 0.529152968757790720f,
  -0.848526449590592650f,
  0.528502001542228480f, -0.848932055211639610f, 0.527850723422555460f,
  -0.849337161427830670f,
  0.527199134781901390f, -0.849741768000852440f, 0.526547236003579330f,
  -0.850145874692685210f,
  0.525895027471084740f, -0.850549481265603370f, 0.525242509568094710f,
  -0.850952587482175730f,
  0.524589682678468840f, -0.851355193105265200f, 0.523936547186248600f,
  -0.851757297898029120f,
  0.523283103475656430f, -0.852158901623919830f, 0.522629351931096720f,
  -0.852560004046683970f,
  0.521975292937154390f, -0.852960604930363630f, 0.521320926878595550f,
  -0.853360704039295430f,
  0.520666254140367270f, -0.853760301138111300f, 0.520011275107596040f,
  -0.854159395991738730f,
  0.519355990165589530f, -0.854557988365400530f, 0.518700399699835170f,
  -0.854956078024614820f,
  0.518044504095999340f, -0.855353664735196030f, 0.517388303739929060f,
  -0.855750748263253920f,
  0.516731799017649980f, -0.856147328375194470f, 0.516074990315366630f,
  -0.856543404837719960f,
  0.515417878019463150f, -0.856938977417828650f, 0.514760462516501200f,
  -0.857334045882815590f,
  0.514102744193221660f, -0.857728610000272120f, 0.513444723436543570f,
  -0.858122669538086020f,
  0.512786400633563070f, -0.858516224264442740f, 0.512127776171554690f,
  -0.858909273947823900f,
  0.511468850437970520f, -0.859301818357008360f, 0.510809623820439040f,
  -0.859693857261072610f,
  0.510150096706766700f, -0.860085390429390140f, 0.509490269484936360f,
  -0.860476417631632070f,
  0.508830142543106990f, -0.860866938637767310f, 0.508169716269614710f,
  -0.861256953218062060f,
  0.507508991052970870f, -0.861646461143081300f, 0.506847967281863320f,
  -0.862035462183687210f,
  0.506186645345155450f, -0.862423956111040500f, 0.505525025631885510f,
  -0.862811942696600330f,
  0.504863108531267480f, -0.863199421712124160f, 0.504200894432690560f,
  -0.863586392929667990f,
  0.503538383725717580f, -0.863972856121586700f, 0.502875576800086880f,
  -0.864358811060534030f,
  0.502212474045710900f, -0.864744257519462380f, 0.501549075852675390f,
  -0.865129195271623690f,
  0.500885382611240940f, -0.865513624090568980f, 0.500221394711840680f,
  -0.865897543750148820f,
  0.499557112545081890f, -0.866280954024512990f, 0.498892536501744750f,
  -0.866663854688111020f,
  0.498227666972781870f, -0.867046245515692650f, 0.497562504349319090f,
  -0.867428126282306920f,
  0.496897049022654640f, -0.867809496763303210f, 0.496231301384258310f,
  -0.868190356734331310f,
  0.495565261825772490f, -0.868570705971340900f, 0.494898930739011310f,
  -0.868950544250582380f,
  0.494232308515959730f, -0.869329871348606730f, 0.493565395548774880f,
  -0.869708687042265560f,
  0.492898192229784090f, -0.870086991108711350f, 0.492230698951486080f,
  -0.870464783325397670f,
  0.491562916106550060f, -0.870842063470078860f, 0.490894844087815140f,
  -0.871218831320810900f,
  0.490226483288291100f, -0.871595086655951090f, 0.489557834101157550f,
  -0.871970829254157700f,
  0.488888896919763230f, -0.872346058894391540f, 0.488219672137626740f,
  -0.872720775355914300f,
  0.487550160148436050f, -0.873094978418290090f, 0.486880361346047400f,
  -0.873468667861384880f,
  0.486210276124486530f, -0.873841843465366750f, 0.485539904877947020f,
  -0.874214505010706300f,
  0.484869248000791120f, -0.874586652278176110f, 0.484198305887549140f,
  -0.874958285048851540f,
  0.483527078932918740f, -0.875329403104110780f, 0.482855567531765670f,
  -0.875700006225634600f,
  0.482183772079122830f, -0.876070094195406600f, 0.481511692970189920f,
  -0.876439666795713610f,
  0.480839330600333900f, -0.876808723809145760f, 0.480166685365088440f,
  -0.877177265018595940f,
  0.479493757660153010f, -0.877545290207261240f, 0.478820547881394050f,
  -0.877912799158641730f,
  0.478147056424843120f, -0.878279791656541460f, 0.477473283686698060f,
  -0.878646267485068130f,
  0.476799230063322250f, -0.879012226428633410f, 0.476124895951243630f,
  -0.879377668271953180f,
  0.475450281747155870f, -0.879742592800047410f, 0.474775387847917230f,
  -0.880106999798240360f,
  0.474100214650550020f, -0.880470889052160750f, 0.473424762552241530f,
  -0.880834260347742040f,
  0.472749031950342900f, -0.881197113471221980f, 0.472073023242368660f,
  -0.881559448209143780f,
  0.471396736825997810f, -0.881921264348354940f, 0.470720173099071710f,
  -0.882282561676008600f,
  0.470043332459595620f, -0.882643339979562790f, 0.469366215305737630f,
  -0.883003599046780720f,
  0.468688822035827960f, -0.883363338665731580f, 0.468011153048359830f,
  -0.883722558624789660f,
  0.467333208741988530f, -0.884081258712634990f, 0.466654989515530970f,
  -0.884439438718253700f,
  0.465976495767966130f, -0.884797098430937790f, 0.465297727898434650f,
  -0.885154237640285110f,
  0.464618686306237820f, -0.885510856136199950f, 0.463939371390838460f,
  -0.885866953708892790f,
  0.463259783551860260f, -0.886222530148880640f, 0.462579923189086810f,
  -0.886577585246987040f,
  0.461899790702462840f, -0.886932118794342080f, 0.461219386492092430f,
  -0.887286130582383150f,
  0.460538710958240010f, -0.887639620402853930f, 0.459857764501329650f,
  -0.887992588047805560f,
  0.459176547521944150f, -0.888345033309596240f, 0.458495060420826220f,
  -0.888696955980891710f,
  0.457813303598877290f, -0.889048355854664570f, 0.457131277457156980f,
  -0.889399232724195520f,
  0.456448982396883860f, -0.889749586383072890f, 0.455766418819434750f,
  -0.890099416625192210f,
  0.455083587126343840f, -0.890448723244757880f, 0.454400487719303750f,
  -0.890797506036281490f,
  0.453717121000163930f, -0.891145764794583180f, 0.453033487370931580f,
  -0.891493499314791380f,
  0.452349587233771000f, -0.891840709392342720f, 0.451665420991002540f,
  -0.892187394822982480f,
  0.450980989045103810f, -0.892533555402764690f, 0.450296291798708730f,
  -0.892879190928051680f,
  0.449611329654606600f, -0.893224301195515320f, 0.448926103015743260f,
  -0.893568886002136020f,
  0.448240612285220000f, -0.893912945145203250f, 0.447554857866293010f,
  -0.894256478422316040f,
  0.446868840162374330f, -0.894599485631382580f, 0.446182559577030120f,
  -0.894941966570620750f,
  0.445496016513981740f, -0.895283921038557580f, 0.444809211377105000f,
  -0.895625348834030000f,
  0.444122144570429260f, -0.895966249756185110f, 0.443434816498138430f,
  -0.896306623604479660f,
  0.442747227564570130f, -0.896646470178680150f, 0.442059378174214760f,
  -0.896985789278863970f,
  0.441371268731716620f, -0.897324580705418320f, 0.440682899641873020f,
  -0.897662844259040750f,
  0.439994271309633260f, -0.898000579740739880f, 0.439305384140100060f,
  -0.898337786951834190f,
  0.438616238538527710f, -0.898674465693953820f, 0.437926834910322860f,
  -0.899010615769039070f,
  0.437237173661044200f, -0.899346236979341460f, 0.436547255196401250f,
  -0.899681329127423930f,
  0.435857079922255470f, -0.900015892016160280f, 0.435166648244619370f,
  -0.900349925448735600f,
  0.434475960569655710f, -0.900683429228646860f, 0.433785017303678520f,
  -0.901016403159702330f,
  0.433093818853152010f, -0.901348847046022030f, 0.432402365624690140f,
  -0.901680760692037730f,
  0.431710658025057370f, -0.902012143902493070f, 0.431018696461167080f,
  -0.902342996482444200f,
  0.430326481340082610f, -0.902673318237258830f, 0.429634013069016500f,
  -0.903003108972617040f,
  0.428941292055329550f, -0.903332368494511820f, 0.428248318706531910f,
  -0.903661096609247980f,
  0.427555093430282200f, -0.903989293123443340f, 0.426861616634386490f,
  -0.904316957844028320f,
  0.426167888726799620f, -0.904644090578246240f, 0.425473910115623910f,
  -0.904970691133653250f,
  0.424779681209108810f, -0.905296759318118820f, 0.424085202415651670f,
  -0.905622294939825160f,
  0.423390474143796100f, -0.905947297807268460f, 0.422695496802232950f,
  -0.906271767729257660f,
  0.422000270799799790f, -0.906595704514915330f, 0.421304796545479700f,
  -0.906919107973678030f,
  0.420609074448402510f, -0.907241977915295930f, 0.419913104917843730f,
  -0.907564314149832520f,
  0.419216888363223960f, -0.907886116487666150f, 0.418520425194109700f,
  -0.908207384739488700f,
  0.417823715820212380f, -0.908528118716306120f, 0.417126760651387870f,
  -0.908848318229439120f,
  0.416429560097637320f, -0.909167983090522270f, 0.415732114569105420f,
  -0.909487113111505430f,
  0.415034424476081630f, -0.909805708104652220f, 0.414336490228999210f,
  -0.910123767882541570f,
  0.413638312238434560f, -0.910441292258067140f, 0.412939890915108020f,
  -0.910758281044437570f,
  0.412241226669883000f, -0.911074734055176250f, 0.411542319913765280f,
  -0.911390651104122320f,
  0.410843171057903910f, -0.911706032005429880f, 0.410143780513590350f,
  -0.912020876573568230f,
  0.409444148692257590f, -0.912335184623322750f, 0.408744276005481520f,
  -0.912648955969793900f,
  0.408044162864978740f, -0.912962190428398100f, 0.407343809682607970f,
  -0.913274887814867760f,
  0.406643216870369140f, -0.913587047945250810f, 0.405942384840402570f,
  -0.913898670635911680f,
  0.405241314004989860f, -0.914209755703530690f, 0.404540004776553110f,
  -0.914520302965104450f,
  0.403838457567654130f, -0.914830312237946090f, 0.403136672790995240f,
  -0.915139783339685260f,
  0.402434650859418540f, -0.915448716088267830f, 0.401732392185905010f,
  -0.915757110301956720f,
  0.401029897183575790f, -0.916064965799331610f, 0.400327166265690150f,
  -0.916372282399289140f,
  0.399624199845646790f, -0.916679059921042700f, 0.398920998336983020f,
  -0.916985298184122890f,
  0.398217562153373620f, -0.917290997008377910f, 0.397513891708632330f,
  -0.917596156213972950f,
  0.396809987416710420f, -0.917900775621390390f, 0.396105849691696320f,
  -0.918204855051430900f,
  0.395401478947816300f, -0.918508394325212250f, 0.394696875599433670f,
  -0.918811393264169940f,
  0.393992040061048100f, -0.919113851690057770f, 0.393286972747296570f,
  -0.919415769424946960f,
  0.392581674072951530f, -0.919717146291227360f, 0.391876144452922350f,
  -0.920017982111606570f,
  0.391170384302253980f, -0.920318276709110480f, 0.390464394036126650f,
  -0.920618029907083860f,
  0.389758174069856410f, -0.920917241529189520f, 0.389051724818894500f,
  -0.921215911399408730f,
  0.388345046698826300f, -0.921514039342041900f, 0.387638140125372680f,
  -0.921811625181708120f,
  0.386931005514388690f, -0.922108668743345070f, 0.386223643281862980f,
  -0.922405169852209880f,
  0.385516053843919020f, -0.922701128333878520f, 0.384808237616812930f,
  -0.922996544014246250f,
  0.384100195016935040f, -0.923291416719527640f, 0.383391926460808770f,
  -0.923585746276256560f,
  0.382683432365089840f, -0.923879532511286740f, 0.381974713146567220f,
  -0.924172775251791200f,
  0.381265769222162490f, -0.924465474325262600f, 0.380556601008928570f,
  -0.924757629559513910f,
  0.379847208924051110f, -0.925049240782677580f, 0.379137593384847430f,
  -0.925340307823206200f,
  0.378427754808765620f, -0.925630830509872720f, 0.377717693613385810f,
  -0.925920808671769960f,
  0.377007410216418310f, -0.926210242138311270f, 0.376296905035704790f,
  -0.926499130739230510f,
  0.375586178489217330f, -0.926787474304581750f, 0.374875230995057600f,
  -0.927075272664740100f,
  0.374164062971457990f, -0.927362525650401110f, 0.373452674836780410f,
  -0.927649233092581180f,
  0.372741067009515810f, -0.927935394822617890f, 0.372029239908284960f,
  -0.928221010672169440f,
  0.371317193951837600f, -0.928506080473215480f, 0.370604929559051670f,
  -0.928790604058057020f,
  0.369892447148934270f, -0.929074581259315750f, 0.369179747140620070f,
  -0.929358011909935500f,
  0.368466829953372320f, -0.929640895843181330f, 0.367753696006582090f,
  -0.929923232892639560f,
  0.367040345719767240f, -0.930205022892219070f, 0.366326779512573590f,
  -0.930486265676149780f,
  0.365612997804773960f, -0.930766961078983710f, 0.364899001016267380f,
  -0.931047108935595170f,
  0.364184789567079840f, -0.931326709081180430f, 0.363470363877363870f,
  -0.931605761351257830f,
  0.362755724367397230f, -0.931884265581668150f, 0.362040871457584350f,
  -0.932162221608574320f,
  0.361325805568454340f, -0.932439629268462360f, 0.360610527120662270f,
  -0.932716488398140250f,
  0.359895036534988280f, -0.932992798834738850f, 0.359179334232336560f,
  -0.933268560415712050f,
  0.358463420633736540f, -0.933543772978836170f, 0.357747296160342010f,
  -0.933818436362210960f,
  0.357030961233430030f, -0.934092550404258870f, 0.356314416274402360f,
  -0.934366114943725900f,
  0.355597661704783960f, -0.934639129819680780f, 0.354880697946222790f,
  -0.934911594871516090f,
  0.354163525420490510f, -0.935183509938947500f, 0.353446144549480870f,
  -0.935454874862014620f,
  0.352728555755210730f, -0.935725689481080370f, 0.352010759459819240f,
  -0.935995953636831300f,
  0.351292756085567150f, -0.936265667170278260f, 0.350574546054837570f,
  -0.936534829922755500f,
  0.349856129790135030f, -0.936803441735921560f, 0.349137507714085030f,
  -0.937071502451759190f,
  0.348418680249434510f, -0.937339011912574960f, 0.347699647819051490f,
  -0.937605969960999990f,
  0.346980410845923680f, -0.937872376439989890f, 0.346260969753160170f,
  -0.938138231192824360f,
  0.345541324963989150f, -0.938403534063108060f, 0.344821476901759290f,
  -0.938668284894770170f,
  0.344101425989938980f, -0.938932483532064490f, 0.343381172652115100f,
  -0.939196129819569900f,
  0.342660717311994380f, -0.939459223602189920f, 0.341940060393402300f,
  -0.939721764725153340f,
  0.341219202320282410f, -0.939983753034013940f, 0.340498143516697100f,
  -0.940245188374650880f,
  0.339776884406826960f, -0.940506070593268300f, 0.339055425414969640f,
  -0.940766399536396070f,
  0.338333766965541290f, -0.941026175050889260f, 0.337611909483074680f,
  -0.941285396983928660f,
  0.336889853392220050f, -0.941544065183020810f, 0.336167599117744690f,
  -0.941802179495997650f,
  0.335445147084531660f, -0.942059739771017310f, 0.334722497717581220f,
  -0.942316745856563780f,
  0.333999651442009490f, -0.942573197601446870f, 0.333276608683047980f,
  -0.942829094854802710f,
  0.332553369866044220f, -0.943084437466093490f, 0.331829935416461220f,
  -0.943339225285107720f,
  0.331106305759876430f, -0.943593458161960390f, 0.330382481321982950f,
  -0.943847135947092690f,
  0.329658462528587550f, -0.944100258491272660f, 0.328934249805612200f,
  -0.944352825645594750f,
  0.328209843579092660f, -0.944604837261480260f, 0.327485244275178060f,
  -0.944856293190677210f,
  0.326760452320131790f, -0.945107193285260610f, 0.326035468140330350f,
  -0.945357537397632290f,
  0.325310292162262980f, -0.945607325380521280f, 0.324584924812532150f,
  -0.945856557086983910f,
  0.323859366517852960f, -0.946105232370403340f, 0.323133617705052330f,
  -0.946353351084490590f,
  0.322407678801070020f, -0.946600913083283530f, 0.321681550232956640f,
  -0.946847918221148000f,
  0.320955232427875210f, -0.947094366352777220f, 0.320228725813100020f,
  -0.947340257333191940f,
  0.319502030816015750f, -0.947585591017741090f, 0.318775147864118480f,
  -0.947830367262101010f,
  0.318048077385015060f, -0.948074585922276230f, 0.317320819806421790f,
  -0.948318246854599090f,
  0.316593375556165850f, -0.948561349915730270f, 0.315865745062184070f,
  -0.948803894962658380f,
  0.315137928752522440f, -0.949045881852700560f, 0.314409927055336820f,
  -0.949287310443502010f,
  0.313681740398891570f, -0.949528180593036670f, 0.312953369211560200f,
  -0.949768492159606680f,
  0.312224813921825050f, -0.950008245001843000f, 0.311496074958275970f,
  -0.950247438978705230f,
  0.310767152749611470f, -0.950486073949481700f, 0.310038047724638000f,
  -0.950724149773789610f,
  0.309308760312268780f, -0.950961666311575080f, 0.308579290941525030f,
  -0.951198623423113230f,
  0.307849640041534980f, -0.951435020969008340f, 0.307119808041533100f,
  -0.951670858810193860f,
  0.306389795370861080f, -0.951906136807932230f, 0.305659602458966230f,
  -0.952140854823815830f,
  0.304929229735402430f, -0.952375012719765880f, 0.304198677629829270f,
  -0.952608610358033240f,
  0.303467946572011370f, -0.952841647601198720f, 0.302737036991819140f,
  -0.953074124312172200f,
  0.302005949319228200f, -0.953306040354193750f, 0.301274683984318000f,
  -0.953537395590833280f,
  0.300543241417273400f, -0.953768189885990330f, 0.299811622048383460f,
  -0.953998423103894490f,
  0.299079826308040480f, -0.954228095109105670f, 0.298347854626741570f,
  -0.954457205766513490f,
  0.297615707435086310f, -0.954685754941338340f, 0.296883385163778270f,
  -0.954913742499130520f,
  0.296150888243623960f, -0.955141168305770670f, 0.295418217105532070f,
  -0.955368032227470240f,
  0.294685372180514330f, -0.955594334130771110f, 0.293952353899684770f,
  -0.955820073882545420f,
  0.293219162694258680f, -0.956045251349996410f, 0.292485798995553830f,
  -0.956269866400658140f,
  0.291752263234989370f, -0.956493918902394990f, 0.291018555844085090f,
  -0.956717408723403050f,
  0.290284677254462330f, -0.956940335732208940f, 0.289550627897843140f,
  -0.957162699797670100f,
  0.288816408206049480f, -0.957384500788975860f, 0.288082018611004300f,
  -0.957605738575646240f,
  0.287347459544729570f, -0.957826413027532910f, 0.286612731439347790f,
  -0.958046524014818600f,
  0.285877834727080730f, -0.958266071408017670f, 0.285142769840248720f,
  -0.958485055077976100f,
  0.284407537211271820f, -0.958703474895871600f, 0.283672137272668550f,
  -0.958921330733213060f,
  0.282936570457055390f, -0.959138622461841890f, 0.282200837197147500f,
  -0.959355349953930790f,
  0.281464937925758050f, -0.959571513081984520f, 0.280728873075797190f,
  -0.959787111718839900f,
  0.279992643080273380f, -0.960002145737665850f, 0.279256248372291240f,
  -0.960216615011963430f,
  0.278519689385053060f, -0.960430519415565790f, 0.277782966551857800f,
  -0.960643858822638470f,
  0.277046080306099950f, -0.960856633107679660f, 0.276309031081271030f,
  -0.961068842145519350f,
  0.275571819310958250f, -0.961280485811320640f, 0.274834445428843940f,
  -0.961491563980579000f,
  0.274096909868706330f, -0.961702076529122540f, 0.273359213064418790f,
  -0.961912023333112100f,
  0.272621355449948980f, -0.962121404269041580f, 0.271883337459359890f,
  -0.962330219213737400f,
  0.271145159526808070f, -0.962538468044359160f, 0.270406822086544820f,
  -0.962746150638399410f,
  0.269668325572915200f, -0.962953266873683880f, 0.268929670420357310f,
  -0.963159816628371360f,
  0.268190857063403180f, -0.963365799780954050f, 0.267451885936677740f,
  -0.963571216210257210f,
  0.266712757474898420f, -0.963776065795439840f, 0.265973472112875530f,
  -0.963980348415994110f,
  0.265234030285511900f, -0.964184063951745720f, 0.264494432427801630f,
  -0.964387212282854290f,
  0.263754678974831510f, -0.964589793289812650f, 0.263014770361779060f,
  -0.964791806853447900f,
  0.262274707023913590f, -0.964993252854920320f, 0.261534489396595630f,
  -0.965194131175724720f,
  0.260794117915275570f, -0.965394441697689400f, 0.260053593015495130f,
  -0.965594184302976830f,
  0.259312915132886350f, -0.965793358874083570f, 0.258572084703170390f,
  -0.965991965293840570f,
  0.257831102162158930f, -0.966190003445412620f, 0.257089967945753230f,
  -0.966387473212298790f,
  0.256348682489942910f, -0.966584374478333120f, 0.255607246230807550f,
  -0.966780707127683270f,
  0.254865659604514630f, -0.966976471044852070f, 0.254123923047320620f,
  -0.967171666114676640f,
  0.253382036995570270f, -0.967366292222328510f, 0.252640001885695580f,
  -0.967560349253314360f,
  0.251897818154216910f, -0.967753837093475510f, 0.251155486237742030f,
  -0.967946755628987800f,
  0.250413006572965280f, -0.968139104746362330f, 0.249670379596668520f,
  -0.968330884332445300f,
  0.248927605745720260f, -0.968522094274417270f, 0.248184685457074780f,
  -0.968712734459794780f,
  0.247441619167773440f, -0.968902804776428870f, 0.246698407314942500f,
  -0.969092305112506100f,
  0.245955050335794590f, -0.969281235356548530f, 0.245211548667627680f,
  -0.969469595397412950f,
  0.244467902747824210f, -0.969657385124292450f, 0.243724113013852130f,
  -0.969844604426714830f,
  0.242980179903263980f, -0.970031253194543970f, 0.242236103853696070f,
  -0.970217331317979160f,
  0.241491885302869300f, -0.970402838687555500f, 0.240747524688588540f,
  -0.970587775194143630f,
  0.240003022448741500f, -0.970772140728950350f, 0.239258379021300120f,
  -0.970955935183517970f,
  0.238513594844318500f, -0.971139158449725090f, 0.237768670355934210f,
  -0.971321810419786160f,
  0.237023605994367340f, -0.971503890986251780f, 0.236278402197919620f,
  -0.971685400042008540f,
  0.235533059404975460f, -0.971866337480279400f, 0.234787578054001080f,
  -0.972046703194623500f,
  0.234041958583543460f, -0.972226497078936270f, 0.233296201432231560f,
  -0.972405719027449770f,
  0.232550307038775330f, -0.972584368934732210f, 0.231804275841964780f,
  -0.972762446695688570f,
  0.231058108280671280f, -0.972939952205560070f, 0.230311804793845530f,
  -0.973116885359925130f,
  0.229565365820518870f, -0.973293246054698250f, 0.228818791799802360f,
  -0.973469034186130950f,
  0.228072083170885790f, -0.973644249650811870f, 0.227325240373038830f,
  -0.973818892345666100f,
  0.226578263845610110f, -0.973992962167955830f, 0.225831154028026200f,
  -0.974166459015280320f,
  0.225083911359792780f, -0.974339382785575860f, 0.224336536280493690f,
  -0.974511733377115720f,
  0.223589029229790020f, -0.974683510688510670f, 0.222841390647421280f,
  -0.974854714618708430f,
  0.222093620973203590f, -0.975025345066994120f, 0.221345720647030810f,
  -0.975195401932990370f,
  0.220597690108873650f, -0.975364885116656870f, 0.219849529798778750f,
  -0.975533794518291360f,
  0.219101240156869770f, -0.975702130038528570f, 0.218352821623346430f,
  -0.975869891578341030f,
  0.217604274638483670f, -0.976037079039039020f, 0.216855599642632570f,
  -0.976203692322270560f,
  0.216106797076219600f, -0.976369731330021140f, 0.215357867379745550f,
  -0.976535195964614470f,
  0.214608810993786920f, -0.976700086128711840f, 0.213859628358993830f,
  -0.976864401725312640f,
  0.213110319916091360f, -0.977028142657754390f, 0.212360886105878580f,
  -0.977191308829712280f,
  0.211611327369227610f, -0.977353900145199960f, 0.210861644147084830f,
  -0.977515916508569280f,
  0.210111836880469720f, -0.977677357824509930f, 0.209361906010474190f,
  -0.977838223998050430f,
  0.208611851978263460f, -0.977998514934557140f, 0.207861675225075150f,
  -0.978158230539735050f,
  0.207111376192218560f, -0.978317370719627650f, 0.206360955321075680f,
  -0.978475935380616830f,
  0.205610413053099320f, -0.978633924429423100f, 0.204859749829814420f,
  -0.978791337773105670f,
  0.204108966092817010f, -0.978948175319062200f, 0.203358062283773370f,
  -0.979104436975029250f,
  0.202607038844421110f, -0.979260122649082020f, 0.201855896216568160f,
  -0.979415232249634780f,
  0.201104634842091960f, -0.979569765685440520f, 0.200353255162940420f,
  -0.979723722865591170f,
  0.199601757621131050f, -0.979877103699517640f, 0.198850142658750120f,
  -0.980029908096989980f,
  0.198098410717953730f, -0.980182135968117320f, 0.197346562240966000f,
  -0.980333787223347960f,
  0.196594597670080220f, -0.980484861773469380f, 0.195842517447657990f,
  -0.980635359529608120f,
  0.195090322016128330f, -0.980785280403230430f, 0.194338011817988600f,
  -0.980934624306141640f,
  0.193585587295803750f, -0.981083391150486590f, 0.192833048892205290f,
  -0.981231580848749730f,
  0.192080397049892380f, -0.981379193313754560f, 0.191327632211630990f,
  -0.981526228458664660f,
  0.190574754820252800f, -0.981672686196983110f, 0.189821765318656580f,
  -0.981818566442552500f,
  0.189068664149806280f, -0.981963869109555240f, 0.188315451756732120f,
  -0.982108594112513610f,
  0.187562128582529740f, -0.982252741366289370f, 0.186808695070359330f,
  -0.982396310786084690f,
  0.186055151663446630f, -0.982539302287441240f, 0.185301498805082040f,
  -0.982681715786240860f,
  0.184547736938619640f, -0.982823551198705240f, 0.183793866507478390f,
  -0.982964808441396440f,
  0.183039887955141060f, -0.983105487431216290f, 0.182285801725153320f,
  -0.983245588085407070f,
  0.181531608261125130f, -0.983385110321551180f, 0.180777308006728670f,
  -0.983524054057571260f,
  0.180022901405699510f, -0.983662419211730250f, 0.179268388901835880f,
  -0.983800205702631490f,
  0.178513770938997590f, -0.983937413449218920f, 0.177759047961107140f,
  -0.984074042370776450f,
  0.177004220412148860f, -0.984210092386929030f, 0.176249288736167940f,
  -0.984345563417641900f,
  0.175494253377271400f, -0.984480455383220930f, 0.174739114779627310f,
  -0.984614768204312600f,
  0.173983873387463850f, -0.984748501801904210f, 0.173228529645070490f,
  -0.984881656097323700f,
  0.172473083996796030f, -0.985014231012239840f, 0.171717536887049970f,
  -0.985146226468662230f,
  0.170961888760301360f, -0.985277642388941220f, 0.170206140061078120f,
  -0.985408478695768420f,
  0.169450291233967930f, -0.985538735312176060f, 0.168694342723617440f,
  -0.985668412161537550f,
  0.167938294974731230f, -0.985797509167567370f, 0.167182148432072880f,
  -0.985926026254321130f,
  0.166425903540464220f, -0.986053963346195440f, 0.165669560744784140f,
  -0.986181320367928270f,
  0.164913120489970090f, -0.986308097244598670f, 0.164156583221015890f,
  -0.986434293901627070f,
  0.163399949382973230f, -0.986559910264775410f, 0.162643219420950450f,
  -0.986684946260146690f,
  0.161886393780111910f, -0.986809401814185420f, 0.161129472905678780f,
  -0.986933276853677710f,
  0.160372457242928400f, -0.987056571305750970f, 0.159615347237193090f,
  -0.987179285097874340f,
  0.158858143333861390f, -0.987301418157858430f, 0.158100845978377090f,
  -0.987422970413855410f,
  0.157343455616238280f, -0.987543941794359230f, 0.156585972692998590f,
  -0.987664332228205710f,
  0.155828397654265320f, -0.987784141644572180f, 0.155070730945700510f,
  -0.987903369972977790f,
  0.154312973013020240f, -0.988022017143283530f, 0.153555124301993500f,
  -0.988140083085692570f,
  0.152797185258443410f, -0.988257567730749460f, 0.152039156328246160f,
  -0.988374471009341280f,
  0.151281037957330250f, -0.988490792852696590f, 0.150522830591677370f,
  -0.988606533192386450f,
  0.149764534677321620f, -0.988721691960323780f, 0.149006150660348470f,
  -0.988836269088763540f,
  0.148247678986896200f, -0.988950264510302990f, 0.147489120103153680f,
  -0.989063678157881540f,
  0.146730474455361750f, -0.989176509964781010f, 0.145971742489812370f,
  -0.989288759864625170f,
  0.145212924652847520f, -0.989400427791380380f, 0.144454021390860440f,
  -0.989511513679355190f,
  0.143695033150294580f, -0.989622017463200780f, 0.142935960377642700f,
  -0.989731939077910570f,
  0.142176803519448000f, -0.989841278458820530f, 0.141417563022303130f,
  -0.989950035541608990f,
  0.140658239332849240f, -0.990058210262297120f, 0.139898832897777380f,
  -0.990165802557248400f,
  0.139139344163826280f, -0.990272812363169110f, 0.138379773577783890f,
  -0.990379239617108160f,
  0.137620121586486180f, -0.990485084256456980f, 0.136860388636816430f,
  -0.990590346218950150f,
  0.136100575175706200f, -0.990695025442664630f, 0.135340681650134330f,
  -0.990799121866020370f,
  0.134580708507126220f, -0.990902635427780010f, 0.133820656193754690f,
  -0.991005566067049370f,
  0.133060525157139180f, -0.991107913723276780f, 0.132300315844444680f,
  -0.991209678336254060f,
  0.131540028702883280f, -0.991310859846115440f, 0.130779664179711790f,
  -0.991411458193338540f,
  0.130019222722233350f, -0.991511473318743900f, 0.129258704777796270f,
  -0.991610905163495370f,
  0.128498110793793220f, -0.991709753669099530f, 0.127737441217662280f,
  -0.991808018777406430f,
  0.126976696496885980f, -0.991905700430609330f, 0.126215877078990400f,
  -0.992002798571244520f,
  0.125454983411546210f, -0.992099313142191800f, 0.124694015942167770f,
  -0.992195244086673920f,
  0.123932975118512200f, -0.992290591348257370f, 0.123171861388280650f,
  -0.992385354870851670f,
  0.122410675199216280f, -0.992479534598709970f, 0.121649416999105540f,
  -0.992573130476428810f,
  0.120888087235777220f, -0.992666142448948020f, 0.120126686357101580f,
  -0.992758570461551140f,
  0.119365214810991350f, -0.992850414459865100f, 0.118603673045400840f,
  -0.992941674389860470f,
  0.117842061508325020f, -0.993032350197851410f, 0.117080380647800550f,
  -0.993122441830495580f,
  0.116318630911904880f, -0.993211949234794500f, 0.115556812748755290f,
  -0.993300872358093280f,
  0.114794926606510250f, -0.993389211148080650f, 0.114032972933367300f,
  -0.993476965552789190f,
  0.113270952177564360f, -0.993564135520595300f, 0.112508864787378830f,
  -0.993650721000219120f,
  0.111746711211126660f, -0.993736721940724600f, 0.110984491897163380f,
  -0.993822138291519660f,
  0.110222207293883180f, -0.993906970002356060f, 0.109459857849718030f,
  -0.993991217023329380f,
  0.108697444013138670f, -0.994074879304879370f, 0.107934966232653760f,
  -0.994157956797789730f,
  0.107172424956808870f, -0.994240449453187900f, 0.106409820634187840f,
  -0.994322357222545810f,
  0.105647153713410700f, -0.994403680057679100f, 0.104884424643134970f,
  -0.994484417910747600f,
  0.104121633872054730f, -0.994564570734255420f, 0.103358781848899700f,
  -0.994644138481050710f,
  0.102595869022436280f, -0.994723121104325700f, 0.101832895841466670f,
  -0.994801518557617110f,
  0.101069862754827880f, -0.994879330794805620f, 0.100306770211392820f,
  -0.994956557770116380f,
  0.099543618660069444f, -0.995033199438118630f, 0.098780408549799664f,
  -0.995109255753726110f,
  0.098017140329560770f, -0.995184726672196820f, 0.097253814448363354f,
  -0.995259612149133390f,
  0.096490431355252607f, -0.995333912140482280f, 0.095726991499307315f,
  -0.995407626602534900f,
  0.094963495329639061f, -0.995480755491926940f, 0.094199943295393190f,
  -0.995553298765638470f,
  0.093436335845747912f, -0.995625256380994310f, 0.092672673429913366f,
  -0.995696628295663520f,
  0.091908956497132696f, -0.995767414467659820f, 0.091145185496681130f,
  -0.995837614855341610f,
  0.090381360877865011f, -0.995907229417411720f, 0.089617483090022917f,
  -0.995976258112917790f,
  0.088853552582524684f, -0.996044700901251970f, 0.088089569804770507f,
  -0.996112557742151130f,
  0.087325535206192226f, -0.996179828595696870f, 0.086561449236251239f,
  -0.996246513422315520f,
  0.085797312344439880f, -0.996312612182778000f, 0.085033124980280414f,
  -0.996378124838200210f,
  0.084268887593324127f, -0.996443051350042630f, 0.083504600633152404f,
  -0.996507391680110820f,
  0.082740264549375803f, -0.996571145790554840f, 0.081975879791633108f,
  -0.996634313643869900f,
  0.081211446809592386f, -0.996696895202896060f, 0.080446966052950097f,
  -0.996758890430818000f,
  0.079682437971430126f, -0.996820299291165670f, 0.078917863014785095f,
  -0.996881121747813850f,
  0.078153241632794315f, -0.996941357764982160f, 0.077388574275265049f,
  -0.997001007307235290f,
  0.076623861392031617f, -0.997060070339482960f, 0.075859103432954503f,
  -0.997118546826979980f,
  0.075094300847921291f, -0.997176436735326190f, 0.074329454086845867f,
  -0.997233740030466160f,
  0.073564563599667454f, -0.997290456678690210f, 0.072799629836351618f,
  -0.997346586646633230f,
  0.072034653246889416f, -0.997402129901275300f, 0.071269634281296415f,
  -0.997457086409941910f,
  0.070504573389614009f, -0.997511456140303450f, 0.069739471021907376f,
  -0.997565239060375750f,
  0.068974327628266732f, -0.997618435138519550f, 0.068209143658806454f,
  -0.997671044343441000f,
  0.067443919563664106f, -0.997723066644191640f, 0.066678655793001543f,
  -0.997774502010167820f,
  0.065913352797003930f, -0.997825350411111640f, 0.065148011025878860f,
  -0.997875611817110150f,
  0.064382630929857410f, -0.997925286198596000f, 0.063617212959193190f,
  -0.997974373526346990f,
  0.062851757564161420f, -0.998022873771486240f, 0.062086265195060247f,
  -0.998070786905482340f,
  0.061320736302208648f, -0.998118112900149180f, 0.060555171335947781f,
  -0.998164851727646240f,
  0.059789570746640007f, -0.998211003360478190f, 0.059023934984667986f,
  -0.998256567771495180f,
  0.058258264500435732f, -0.998301544933892890f, 0.057492559744367684f,
  -0.998345934821212370f,
  0.056726821166907783f, -0.998389737407340160f, 0.055961049218520520f,
  -0.998432952666508440f,
  0.055195244349690031f, -0.998475580573294770f, 0.054429407010919147f,
  -0.998517621102622210f,
  0.053663537652730679f, -0.998559074229759310f, 0.052897636725665401f,
  -0.998599939930320370f,
  0.052131704680283317f, -0.998640218180265270f, 0.051365741967162731f,
  -0.998679908955899090f,
  0.050599749036899337f, -0.998719012233872940f, 0.049833726340107257f,
  -0.998757527991183340f,
  0.049067674327418126f, -0.998795456205172410f, 0.048301593449480172f,
  -0.998832796853527990f,
  0.047535484156959261f, -0.998869549914283560f, 0.046769346900537960f,
  -0.998905715365818290f,
  0.046003182130914644f, -0.998941293186856870f, 0.045236990298804750f,
  -0.998976283356469820f,
  0.044470771854938744f, -0.999010685854073380f, 0.043704527250063421f,
  -0.999044500659429290f,
  0.042938256934940959f, -0.999077727752645360f, 0.042171961360348002f,
  -0.999110367114174890f,
  0.041405640977076712f, -0.999142418724816910f, 0.040639296235933854f,
  -0.999173882565716380f,
  0.039872927587739845f, -0.999204758618363890f, 0.039106535483329839f,
  -0.999235046864595850f,
  0.038340120373552791f, -0.999264747286594420f, 0.037573682709270514f,
  -0.999293859866887790f,
  0.036807222941358991f, -0.999322384588349540f, 0.036040741520706299f,
  -0.999350321434199440f,
  0.035274238898213947f, -0.999377670388002850f, 0.034507715524795889f,
  -0.999404431433671300f,
  0.033741171851377642f, -0.999430604555461730f, 0.032974608328897315f,
  -0.999456189737977340f,
  0.032208025408304704f, -0.999481186966166950f, 0.031441423540560343f,
  -0.999505596225325310f,
  0.030674803176636581f, -0.999529417501093140f, 0.029908164767516655f,
  -0.999552650779456990f,
  0.029141508764193740f, -0.999575296046749220f, 0.028374835617672258f,
  -0.999597353289648380f,
  0.027608145778965820f, -0.999618822495178640f, 0.026841439699098527f,
  -0.999639703650710200f,
  0.026074717829104040f, -0.999659996743959220f, 0.025307980620024630f,
  -0.999679701762987930f,
  0.024541228522912264f, -0.999698818696204250f, 0.023774461988827676f,
  -0.999717347532362190f,
  0.023007681468839410f, -0.999735288260561680f, 0.022240887414024919f,
  -0.999752640870248840f,
  0.021474080275469605f, -0.999769405351215280f, 0.020707260504265912f,
  -0.999785581693599210f,
  0.019940428551514598f, -0.999801169887884260f, 0.019173584868322699f,
  -0.999816169924900410f,
  0.018406729905804820f, -0.999830581795823400f, 0.017639864115082195f,
  -0.999844405492175240f,
  0.016872987947281773f, -0.999857641005823860f, 0.016106101853537263f,
  -0.999870288328982950f,
  0.015339206284988220f, -0.999882347454212560f, 0.014572301692779104f,
  -0.999893818374418490f,
  0.013805388528060349f, -0.999904701082852900f, 0.013038467241987433f,
  -0.999914995573113470f,
  0.012271538285719944f, -0.999924701839144500f, 0.011504602110422875f,
  -0.999933819875236000f,
  0.010737659167264572f, -0.999942349676023910f, 0.009970709907418029f,
  -0.999950291236490480f,
  0.009203754782059960f, -0.999957644551963900f, 0.008436794242369860f,
  -0.999964409618118280f,
  0.007669828739531077f, -0.999970586430974140f, 0.006902858724729877f,
  -0.999976174986897610f,
  0.006135884649154515f, -0.999981175282601110f, 0.005368906963996303f,
  -0.999985587315143200f,
  0.004601926120448672f, -0.999989411081928400f, 0.003834942569706248f,
  -0.999992646580707190f,
  0.003067956762966138f, -0.999995293809576190f, 0.002300969151425887f,
  -0.999997352766978210f,
  0.001533980186284766f, -0.999998823451701880f, 0.000766990318742846f,
  -0.999999705862882230f
};

static const float32_t Weights_8192[16384] = {
  1.000000000000000000, -0.000000000000000000, 0.999999981616429330,
    -0.000191747597310703,
  0.999999926465717890, -0.000383495187571396, 0.999999834547867670,
    -0.000575242763732066,
  0.999999705862882230, -0.000766990318742704, 0.999999540410766110,
    -0.000958737845553301,
  0.999999338191525530, -0.001150485337113849, 0.999999099205167830,
    -0.001342232786374338,
  0.999998823451701880, -0.001533980186284766, 0.999998510931137790,
    -0.001725727529795126,
  0.999998161643486980, -0.001917474809855419, 0.999997775588762350,
    -0.002109222019415644,
  0.999997352766978210, -0.002300969151425805, 0.999996893178149880,
    -0.002492716198835908,
  0.999996396822294350, -0.002684463154595962, 0.999995863699429940,
    -0.002876210011655979,
  0.999995293809576190, -0.003067956762965976, 0.999994687152754080,
    -0.003259703401475973,
  0.999994043728985820, -0.003451449920135994, 0.999993363538295150,
    -0.003643196311896068,
  0.999992646580707190, -0.003834942569706228, 0.999991892856248010,
    -0.004026688686516512,
  0.999991102364945590, -0.004218434655276963, 0.999990275106828920,
    -0.004410180468937631,
  0.999989411081928400, -0.004601926120448571, 0.999988510290275690,
    -0.004793671602759841,
  0.999987572731904080, -0.004985416908821511, 0.999986598406848000,
    -0.005177162031583651,
  0.999985587315143200, -0.005368906963996343, 0.999984539456826970,
    -0.005560651699009674,
  0.999983454831937730, -0.005752396229573736, 0.999982333440515350,
    -0.005944140548638633,
  0.999981175282601110, -0.006135884649154475, 0.999979980358237650,
    -0.006327628524071378,
  0.999978748667468830, -0.006519372166339468, 0.999977480210339940,
    -0.006711115568908879,
  0.999976174986897610, -0.006902858724729756, 0.999974832997189810,
    -0.007094601626752250,
  0.999973454241265940, -0.007286344267926521, 0.999972038719176730,
    -0.007478086641202744,
  0.999970586430974140, -0.007669828739531097, 0.999969097376711580,
    -0.007861570555861772,
  0.999967571556443780, -0.008053312083144972, 0.999966008970226920,
    -0.008245053314330906,
  0.999964409618118280, -0.008436794242369799, 0.999962773500176930,
    -0.008628534860211886,
  0.999961100616462820, -0.008820275160807412, 0.999959390967037450,
    -0.009012015137106633,
  0.999957644551963900, -0.009203754782059819, 0.999955861371306100,
    -0.009395494088617252,
  0.999954041425129780, -0.009587233049729225, 0.999952184713501780,
    -0.009778971658346044,
  0.999950291236490480, -0.009970709907418031, 0.999948360994165400,
    -0.010162447789895513,
  0.999946393986597460, -0.010354185298728842, 0.999944390213859060,
    -0.010545922426868378,
  0.999942349676023910, -0.010737659167264491, 0.999940272373166960,
    -0.010929395512867571,
  0.999938158305364590, -0.011121131456628021, 0.999936007472694620,
    -0.011312866991496258,
  0.999933819875236000, -0.011504602110422714, 0.999931595513069200,
    -0.011696336806357838,
  0.999929334386276070, -0.011888071072252092, 0.999927036494939640,
    -0.012079804901055957,
  0.999924701839144500, -0.012271538285719925, 0.999922330418976490,
    -0.012463271219194511,
  0.999919922234522750, -0.012655003694430242, 0.999917477285871770,
    -0.012846735704377662,
  0.999914995573113470, -0.013038467241987334, 0.999912477096339240,
    -0.013230198300209835,
  0.999909921855641540, -0.013421928871995765, 0.999907329851114300,
    -0.013613658950295740,
  0.999904701082852900, -0.013805388528060391, 0.999902035550953920,
    -0.013997117598240367,
  0.999899333255515390, -0.014188846153786345, 0.999896594196636680,
    -0.014380574187649006,
  0.999893818374418490, -0.014572301692779064, 0.999891005788962950,
    -0.014764028662127246,
  0.999888156440373320, -0.014955755088644296, 0.999885270328754520,
    -0.015147480965280987,
  0.999882347454212560, -0.015339206284988100, 0.999879387816854930,
    -0.015530931040716447,
  0.999876391416790410, -0.015722655225416857, 0.999873358254129260,
    -0.015914378832040183,
  0.999870288328982950, -0.016106101853537287, 0.999867181641464380,
    -0.016297824282859065,
  0.999864038191687680, -0.016489546112956437, 0.999860857979768540,
    -0.016681267336780332,
  0.999857641005823860, -0.016872987947281710, 0.999854387269971890,
    -0.017064707937411563,
  0.999851096772332190, -0.017256427300120877, 0.999847769513025900,
    -0.017448146028360693,
  0.999844405492175240, -0.017639864115082053, 0.999841004709904000,
    -0.017831581553236039,
  0.999837567166337090, -0.018023298335773746, 0.999834092861600960,
    -0.018215014455646290,
  0.999830581795823400, -0.018406729905804820, 0.999827033969133420,
    -0.018598444679200511,
  0.999823449381661570, -0.018790158768784555, 0.999819828033539420,
    -0.018981872167508178,
  0.999816169924900410, -0.019173584868322623, 0.999812475055878780,
    -0.019365296864179156,
  0.999808743426610520, -0.019557008148029083, 0.999804975037232870,
    -0.019748718712823729,
  0.999801169887884260, -0.019940428551514441, 0.999797327978704690,
    -0.020132137657052594,
  0.999793449309835270, -0.020323846022389593, 0.999789533881418780,
    -0.020515553640476875,
  0.999785581693599210, -0.020707260504265895, 0.999781592746521670,
    -0.020898966606708137,
  0.999777567040332940, -0.021090671940755121, 0.999773504575180990,
    -0.021282376499358387,
  0.999769405351215280, -0.021474080275469508, 0.999765269368586450,
    -0.021665783262040078,
  0.999761096627446610, -0.021857485452021735, 0.999756887127949080,
    -0.022049186838366135,
  0.999752640870248840, -0.022240887414024961, 0.999748357854501780,
    -0.022432587171949934,
  0.999744038080865430, -0.022624286105092803, 0.999739681549498660,
    -0.022815984206405345,
  0.999735288260561680, -0.023007681468839369, 0.999730858214216030,
    -0.023199377885346720,
  0.999726391410624470, -0.023391073448879258, 0.999721887849951310,
    -0.023582768152388894,
  0.999717347532362190, -0.023774461988827555, 0.999712770458023870,
    -0.023966154951147210,
  0.999708156627104880, -0.024157847032299864, 0.999703506039774650,
    -0.024349538225237534,
  0.999698818696204250, -0.024541228522912288, 0.999694094596566000,
    -0.024732917918276223,
  0.999689333741033640, -0.024924606404281468, 0.999684536129782140,
    -0.025116293973880186,
  0.999679701762987930, -0.025307980620024571, 0.999674830640828740,
    -0.025499666335666853,
  0.999669922763483760, -0.025691351113759295, 0.999664978131133310,
    -0.025883034947254198,
  0.999659996743959220, -0.026074717829103901, 0.999654978602144690,
    -0.026266399752260760,
  0.999649923705874240, -0.026458080709677187, 0.999644832055333610,
    -0.026649760694305618,
  0.999639703650710200, -0.026841439699098531, 0.999634538492192300,
    -0.027033117717008431,
  0.999629336579970110, -0.027224794740987875, 0.999624097914234570,
    -0.027416470763989436,
  0.999618822495178640, -0.027608145778965740, 0.999613510322995950,
    -0.027799819778869445,
  0.999608161397882110, -0.027991492756653243, 0.999602775720033530,
    -0.028183164705269874,
  0.999597353289648380, -0.028374835617672099, 0.999591894106925950,
    -0.028566505486812728,
  0.999586398172067070, -0.028758174305644615, 0.999580865485273700,
    -0.028949842067120635,
  0.999575296046749220, -0.029141508764193722, 0.999569689856698580,
    -0.029333174389816835,
  0.999564046915327740, -0.029524838936942976, 0.999558367222844300,
    -0.029716502398525191,
  0.999552650779456990, -0.029908164767516555, 0.999546897585375960,
    -0.030099826036870198,
  0.999541107640812940, -0.030291486199539284, 0.999535280945980540,
    -0.030483145248477009,
  0.999529417501093140, -0.030674803176636626, 0.999523517306366350,
    -0.030866459976971412,
  0.999517580362016990, -0.031058115642434700, 0.999511606668263440,
    -0.031249770165979861,
  0.999505596225325310, -0.031441423540560301, 0.999499549033423640,
    -0.031633075759129478,
  0.999493465092780590, -0.031824726814640887, 0.999487344403620080,
    -0.032016376700048060,
  0.999481186966166950, -0.032208025408304586, 0.999474992780647780,
    -0.032399672932364086,
  0.999468761847290050, -0.032591319265180226, 0.999462494166323160,
    -0.032782964399706724,
  0.999456189737977340, -0.032974608328897335, 0.999449848562484530,
    -0.033166251045705857,
  0.999443470640077770, -0.033357892543086139, 0.999437055970991530,
    -0.033549532813992068,
  0.999430604555461730, -0.033741171851377580, 0.999424116393725640,
    -0.033932809648196664,
  0.999417591486021720, -0.034124446197403326, 0.999411029832589780,
    -0.034316081491951651,
  0.999404431433671300, -0.034507715524795750, 0.999397796289508640,
    -0.034699348288889799,
  0.999391124400346050, -0.034890979777188004, 0.999384415766428560,
    -0.035082609982644619,
  0.999377670388002850, -0.035274238898213947, 0.999370888265317170,
    -0.035465866516850353,
  0.999364069398620550, -0.035657492831508222, 0.999357213788164000,
    -0.035849117835142018,
  0.999350321434199440, -0.036040741520706229, 0.999343392336980220,
    -0.036232363881155395,
  0.999336426496761240, -0.036423984909444110, 0.999329423913798420,
    -0.036615604598527030,
  0.999322384588349540, -0.036807222941358832, 0.999315308520673070,
    -0.036998839930894263,
  0.999308195711029470, -0.037190455560088119, 0.999301046159680070,
    -0.037382069821895229,
  0.999293859866887790, -0.037573682709270494, 0.999286636832916740,
    -0.037765294215168860,
  0.999279377058032710, -0.037956904332545310, 0.999272080542502610,
    -0.038148513054354891,
  0.999264747286594420, -0.038340120373552694, 0.999257377290578060,
    -0.038531726283093870,
  0.999249970554724420, -0.038723330775933623, 0.999242527079305830,
    -0.038914933845027193,
  0.999235046864595850, -0.039106535483329888, 0.999227529910869610,
    -0.039298135683797059,
  0.999219976218403530, -0.039489734439384118, 0.999212385787475290,
    -0.039681331743046527,
  0.999204758618363890, -0.039872927587739811, 0.999197094711349880,
    -0.040064521966419520,
  0.999189394066714920, -0.040256114872041282, 0.999181656684742350,
    -0.040447706297560782,
  0.999173882565716380, -0.040639296235933736, 0.999166071709923000,
    -0.040830884680115948,
  0.999158224117649430, -0.041022471623063238, 0.999150339789184110,
    -0.041214057057731519,
  0.999142418724816910, -0.041405640977076739, 0.999134460924839150,
    -0.041597223374054894,
  0.999126466389543390, -0.041788804241622061, 0.999118435119223490,
    -0.041980383572734356,
  0.999110367114174890, -0.042171961360347947, 0.999102262374694130,
    -0.042363537597419072,
  0.999094120901079070, -0.042555112276904020, 0.999085942693629270,
    -0.042746685391759132,
  0.999077727752645360, -0.042938256934940820, 0.999069476078429330,
    -0.043129826899405546,
  0.999061187671284600, -0.043321395278109825, 0.999052862531515930,
    -0.043512962064010237,
  0.999044500659429290, -0.043704527250063421, 0.999036102055332330,
    -0.043896090829226068,
  0.999027666719533690, -0.044087652794454944, 0.999019194652343460,
    -0.044279213138706849,
  0.999010685854073380, -0.044470771854938668, 0.999002140325035980,
    -0.044662328936107325,
  0.998993558065545680, -0.044853884375169815, 0.998984939075918010,
    -0.045045438165083197,
  0.998976283356469820, -0.045236990298804590, 0.998967590907519300,
    -0.045428540769291155,
  0.998958861729386080, -0.045620089569500144, 0.998950095822391250,
    -0.045811636692388844,
  0.998941293186856870, -0.046003182130914623, 0.998932453823106690,
    -0.046194725878034908,
  0.998923577731465780, -0.046386267926707157, 0.998914664912260440,
    -0.046577808269888943,
  0.998905715365818290, -0.046769346900537863, 0.998896729092468410,
    -0.046960883811611592,
  0.998887706092541290, -0.047152418996067869, 0.998878646366368690,
    -0.047343952446864478,
  0.998869549914283560, -0.047535484156959303, 0.998860416736620520,
    -0.047727014119310254,
  0.998851246833715180, -0.047918542326875327, 0.998842040205904840,
    -0.048110068772612591,
  0.998832796853527990, -0.048301593449480144, 0.998823516776924490,
    -0.048493116350436176,
  0.998814199976435390, -0.048684637468438943, 0.998804846452403420,
    -0.048876156796446760,
  0.998795456205172410, -0.049067674327418015, 0.998786029235087640,
    -0.049259190054311140,
  0.998776565542495610, -0.049450703970084664, 0.998767065127744380,
    -0.049642216067697156,
  0.998757527991183340, -0.049833726340107277, 0.998747954133162860,
    -0.050025234780273729,
  0.998738343554035230, -0.050216741381155311, 0.998728696254153720,
    -0.050408246135710856,
  0.998719012233872940, -0.050599749036899282, 0.998709291493549030,
    -0.050791250077679581,
  0.998699534033539280, -0.050982749251010803, 0.998689739854202620,
    -0.051174246549852080,
  0.998679908955899090, -0.051365741967162593, 0.998670041338990070,
    -0.051557235495901611,
  0.998660137003838490, -0.051748727129028456, 0.998650195950808280,
    -0.051940216859502536,
  0.998640218180265270, -0.052131704680283324, 0.998630203692576050,
    -0.052323190584330347,
  0.998620152488108870, -0.052514674564603223, 0.998610064567233340,
    -0.052706156614061632,
  0.998599939930320370, -0.052897636725665324, 0.998589778577742230,
    -0.053089114892374133,
  0.998579580509872500, -0.053280591107147945, 0.998569345727086110,
    -0.053472065362946727,
  0.998559074229759310, -0.053663537652730520, 0.998548766018269920,
    -0.053855007969459440,
  0.998538421092996730, -0.054046476306093660, 0.998528039454320230,
    -0.054237942655593452,
  0.998517621102622210, -0.054429407010919133, 0.998507166038285490,
    -0.054620869365031105,
  0.998496674261694640, -0.054812329710889854, 0.998486145773235360,
    -0.055003788041455920,
  0.998475580573294770, -0.055195244349689934, 0.998464978662261250,
    -0.055386698628552597,
  0.998454340040524800, -0.055578150871004678, 0.998443664708476340,
    -0.055769601070007030,
  0.998432952666508440, -0.055961049218520569, 0.998422203915015020,
    -0.056152495309506292,
  0.998411418454391300, -0.056343939335925290, 0.998400596285033640,
    -0.056535381290738700,
  0.998389737407340160, -0.056726821166907748, 0.998378841821709990,
    -0.056918258957393740,
  0.998367909528543820, -0.057109694655158062, 0.998356940528243420,
    -0.057301128253162158,
  0.998345934821212370, -0.057492559744367566, 0.998334892407855000,
    -0.057683989121735904,
  0.998323813288577560, -0.057875416378228857, 0.998312697463787260,
    -0.058066841506808194,
  0.998301544933892890, -0.058258264500435752, 0.998290355699304350,
    -0.058449685352073476,
  0.998279129760433200, -0.058641104054683341, 0.998267867117692110,
    -0.058832520601227435,
  0.998256567771495180, -0.059023934984667931, 0.998245231722257880,
    -0.059215347197967061,
  0.998233858970396850, -0.059406757234087150, 0.998222449516330550,
    -0.059598165085990591,
  0.998211003360478190, -0.059789570746639868, 0.998199520503260660,
    -0.059980974208997548,
  0.998188000945100300, -0.060172375466026259, 0.998176444686420530,
    -0.060363774510688743,
  0.998164851727646240, -0.060555171335947788, 0.998153222069203760,
    -0.060746565934766288,
  0.998141555711520520, -0.060937958300107203, 0.998129852655025630,
    -0.061129348424933588,
  0.998118112900149180, -0.061320736302208578, 0.998106336447323050,
    -0.061512121924895378,
  0.998094523296980010, -0.061703505285957298, 0.998082673449554590,
    -0.061894886378357716,
  0.998070786905482340, -0.062086265195060088, 0.998058863665200250,
    -0.062277641729027972,
  0.998046903729146840, -0.062469015973224996, 0.998034907097761770,
    -0.062660387920614874,
  0.998022873771486240, -0.062851757564161406, 0.998010803750762450,
    -0.063043124896828492,
  0.997998697036034390, -0.063234489911580066, 0.997986553627747020,
    -0.063425852601380228,
  0.997974373526346990, -0.063617212959193106, 0.997962156732281950,
    -0.063808570977982898,
  0.997949903246001190, -0.063999926650713940, 0.997937613067955250,
    -0.064191279970350637,
  0.997925286198596000, -0.064382630929857465, 0.997912922638376610,
    -0.064573979522198982,
  0.997900522387751620, -0.064765325740339885, 0.997888085447177110,
    -0.064956669577244872,
  0.997875611817110150, -0.065148011025878833, 0.997863101498009500,
    -0.065339350079206632,
  0.997850554490335110, -0.065530686730193327, 0.997837970794548280,
    -0.065722020971803990,
  0.997825350411111640, -0.065913352797003805, 0.997812693340489280,
    -0.066104682198758077,
  0.997799999583146470, -0.066296009170032130, 0.997787269139549960,
    -0.066487333703791451,
  0.997774502010167820, -0.066678655793001557, 0.997761698195469560,
    -0.066869975430628115,
  0.997748857695925690, -0.067061292609636822, 0.997735980512008620,
    -0.067252607322993499,
  0.997723066644191640, -0.067443919563664051, 0.997710116092949570,
    -0.067635229324614479,
  0.997697128858758500, -0.067826536598810869, 0.997684104942096030,
    -0.068017841379219388,
  0.997671044343441000, -0.068209143658806329, 0.997657947063273710,
    -0.068400443430538013,
  0.997644813102075420, -0.068591740687380942, 0.997631642460329320,
    -0.068783035422301630,
  0.997618435138519550, -0.068974327628266746, 0.997605191137131640,
    -0.069165617298242985,
  0.997591910456652630, -0.069356904425197208, 0.997578593097570800,
    -0.069548189002096306,
  0.997565239060375750, -0.069739471021907307, 0.997551848345558430,
    -0.069930750477597309,
  0.997538420953611340, -0.070122027362133521, 0.997524956885027960,
    -0.070313301668483250,
  0.997511456140303450, -0.070504573389613856, 0.997497918719934210,
    -0.070695842518492855,
  0.997484344624417930, -0.070887109048087801, 0.997470733854253670,
    -0.071078372971366405,
  0.997457086409941910, -0.071269634281296401, 0.997443402291984360,
    -0.071460892970845680,
  0.997429681500884180, -0.071652149032982212, 0.997415924037145960,
    -0.071843402460674027,
  0.997402129901275300, -0.072034653246889332, 0.997388299093779460,
    -0.072225901384596322,
  0.997374431615167150, -0.072417146866763413, 0.997360527465947940,
    -0.072608389686358993,
  0.997346586646633230, -0.072799629836351673, 0.997332609157735470,
    -0.072990867309710036,
  0.997318594999768600, -0.073182102099402888, 0.997304544173247990,
    -0.073373334198399032,
  0.997290456678690210, -0.073564563599667426, 0.997276332516613180,
    -0.073755790296177098,
  0.997262171687536170, -0.073947014280897200, 0.997247974191979860,
    -0.074138235546796979,
  0.997233740030466280, -0.074329454086845756, 0.997219469203518670,
    -0.074520669894013000,
  0.997205161711661850, -0.074711882961268211, 0.997190817555421940,
    -0.074903093281581082,
  0.997176436735326190, -0.075094300847921305, 0.997162019251903290,
    -0.075285505653258769,
  0.997147565105683480, -0.075476707690563388, 0.997133074297198110,
    -0.075667906952805231,
  0.997118546826979980, -0.075859103432954447, 0.997103982695563330,
    -0.076050297123981259,
  0.997089381903483400, -0.076241488018856066, 0.997074744451277310,
    -0.076432676110549283,
  0.997060070339482960, -0.076623861392031492, 0.997045359568640040,
    -0.076815043856273343,
  0.997030612139289450, -0.077006223496245640, 0.997015828051973310,
    -0.077197400304919200,
  0.997001007307235290, -0.077388574275265049, 0.996986149905620180,
    -0.077579745400254224,
  0.996971255847674320, -0.077770913672857947, 0.996956325133945280,
    -0.077962079086047492,
  0.996941357764982160, -0.078153241632794232, 0.996926353741335090,
    -0.078344401306069705,
  0.996911313063555740, -0.078535558098845479, 0.996896235732197210,
    -0.078726712004093299,
  0.996881121747813850, -0.078917863014784942, 0.996865971110961310,
    -0.079109011123892375,
  0.996850783822196610, -0.079300156324387597, 0.996835559882078170,
    -0.079491298609242769,
  0.996820299291165670, -0.079682437971430126, 0.996805002050020430,
    -0.079873574403921996,
  0.996789668159204560, -0.080064707899690890, 0.996774297619282050,
    -0.080255838451709319,
  0.996758890430818000, -0.080446966052950014, 0.996743446594378860,
    -0.080638090696385709,
  0.996727966110532490, -0.080829212374989329, 0.996712448979848010,
    -0.081020331081733857,
  0.996696895202896060, -0.081211446809592441, 0.996681304780248300,
    -0.081402559551538245,
  0.996665677712478160, -0.081593669300544652, 0.996650014000160070,
    -0.081784776049585076,
  0.996634313643869900, -0.081975879791633066, 0.996618576644185070,
    -0.082166980519662314,
  0.996602803001684130, -0.082358078226646536, 0.996586992716946950,
    -0.082549172905559673,
  0.996571145790554840, -0.082740264549375692, 0.996555262223090540,
    -0.082931353151068699,
  0.996539342015137940, -0.083122438703612911, 0.996523385167282450,
    -0.083313521199982685,
  0.996507391680110820, -0.083504600633152432, 0.996491361554210920,
    -0.083695676996096716,
  0.996475294790172160, -0.083886750281790226, 0.996459191388585410,
    -0.084077820483207694,
  0.996443051350042630, -0.084268887593324071, 0.996426874675137240,
    -0.084459951605114325,
  0.996410661364464100, -0.084651012511553617, 0.996394411418619290,
    -0.084842070305617134,
  0.996378124838200210, -0.085033124980280275, 0.996361801623805720,
    -0.085224176528518478,
  0.996345441776035900, -0.085415224943307333, 0.996329045295492380,
    -0.085606270217622529,
  0.996312612182778000, -0.085797312344439894, 0.996296142438496850,
    -0.085988351316735337,
  0.996279636063254650, -0.086179387127484894, 0.996263093057658140,
    -0.086370419769664752,
  0.996246513422315520, -0.086561449236251170, 0.996229897157836500,
    -0.086752475520220543,
  0.996213244264832040, -0.086943498614549378, 0.996196554743914220,
    -0.087134518512214307,
  0.996179828595696980, -0.087325535206192059, 0.996163065820794950,
    -0.087516548689459531,
  0.996146266419824620, -0.087707558954993659, 0.996129430393403740,
    -0.087898565995771588,
  0.996112557742151130, -0.088089569804770507, 0.996095648466687300,
    -0.088280570374967740,
  0.996078702567633980, -0.088471567699340767, 0.996061720045614000,
    -0.088662561770867149,
  0.996044700901251970, -0.088853552582524600, 0.996027645135173610,
    -0.089044540127290892,
  0.996010552748005870, -0.089235524398144014, 0.995993423740377360,
    -0.089426505388061961,
  0.995976258112917790, -0.089617483090022959, 0.995959055866258320,
    -0.089808457497005278,
  0.995941817001031350, -0.089999428601987341, 0.995924541517870800,
    -0.090190396397947695,
  0.995907229417411720, -0.090381360877864983, 0.995889880700290720,
    -0.090572322034717989,
  0.995872495367145730, -0.090763279861485621, 0.995855073418615790,
    -0.090954234351146926,
  0.995837614855341610, -0.091145185496681005, 0.995820119677964910,
    -0.091336133291067184,
  0.995802587887129160, -0.091527077727284828, 0.995785019483478750,
    -0.091718018798313455,
  0.995767414467659820, -0.091908956497132724, 0.995749772840319510,
    -0.092099890816722388,
  0.995732094602106430, -0.092290821750062355, 0.995714379753670610,
    -0.092481749290132600,
  0.995696628295663520, -0.092672673429913310, 0.995678840228737540,
    -0.092863594162384724,
  0.995661015553546910, -0.093054511480527249, 0.995643154270746900,
    -0.093245425377321375,
  0.995625256380994310, -0.093436335845747787, 0.995607321884947050,
    -0.093627242878787195,
  0.995589350783264600, -0.093818146469420549, 0.995571343076607770,
    -0.094009046610628838,
  0.995553298765638470, -0.094199943295393204, 0.995535217851020390,
    -0.094390836516694943,
  0.995517100333418110, -0.094581726267515445, 0.995498946213497770,
    -0.094772612540836243,
  0.995480755491926940, -0.094963495329638992, 0.995462528169374420,
    -0.095154374626905486,
  0.995444264246510340, -0.095345250425617617, 0.995425963724006160,
    -0.095536122718757471,
  0.995407626602534900, -0.095726991499307162, 0.995389252882770690,
    -0.095917856760249040,
  0.995370842565388990, -0.096108718494565509, 0.995352395651066810,
    -0.096299576695239128,
  0.995333912140482280, -0.096490431355252593, 0.995315392034315070,
    -0.096681282467588725,
  0.995296835333246090, -0.096872130025230471, 0.995278242037957670,
    -0.097062974021160917,
  0.995259612149133390, -0.097253814448363271, 0.995240945667458130,
    -0.097444651299820870,
  0.995222242593618360, -0.097635484568517200, 0.995203502928301510,
    -0.097826314247435861,
  0.995184726672196930, -0.098017140329560604, 0.995165913825994620,
    -0.098207962807875276,
  0.995147064390386470, -0.098398781675363881, 0.995128178366065490,
    -0.098589596925010584,
  0.995109255753726110, -0.098780408549799623, 0.995090296554064000,
    -0.098971216542715429,
  0.995071300767776170, -0.099162020896742503, 0.995052268395561050,
    -0.099352821604865540,
  0.995033199438118630, -0.099543618660069319, 0.995014093896149700,
    -0.099734412055338825,
  0.994994951770357020, -0.099925201783659073, 0.994975773061444140,
    -0.100115987838015310,
  0.994956557770116380, -0.100306770211392860, 0.994937305897080070,
    -0.100497548896777200,
  0.994918017443043200, -0.100688323887153960, 0.994898692408714870,
    -0.100879095175508860,
  0.994879330794805620, -0.101069862754827820, 0.994859932602027320,
    -0.101260626618096830,
  0.994840497831093180, -0.101451386758302080, 0.994821026482717860,
    -0.101642143168429830,
  0.994801518557617110, -0.101832895841466530, 0.994781974056508260,
    -0.102023644770398740,
  0.994762392980109930, -0.102214389948213210, 0.994742775329142010,
    -0.102405131367896720,
  0.994723121104325700, -0.102595869022436280, 0.994703430306383860,
    -0.102786602904819040,
  0.994683702936040250, -0.102977333008032220, 0.994663938994020390,
    -0.103168059325063230,
  0.994644138481050710, -0.103358781848899610, 0.994624301397859400,
    -0.103549500572529070,
  0.994604427745175660, -0.103740215488939370, 0.994584517523730340,
    -0.103930926591118510,
  0.994564570734255420, -0.104121633872054590, 0.994544587377484300,
    -0.104312337324735800,
  0.994524567454151740, -0.104503036942150570, 0.994504510964993700,
    -0.104693732717287390,
  0.994484417910747600, -0.104884424643134970, 0.994464288292152390,
    -0.105075112712682040,
  0.994444122109948040, -0.105265796918917600, 0.994423919364875950,
    -0.105456477254830710,
  0.994403680057679100, -0.105647153713410620, 0.994383404189101430,
    -0.105837826287646670,
  0.994363091759888570, -0.106028494970528410, 0.994342742770787270,
    -0.106219159755045480,
  0.994322357222545810, -0.106409820634187680, 0.994301935115913580,
    -0.106600477600944960,
  0.994281476451641550, -0.106791130648307390, 0.994260981230481790,
    -0.106981779769265230,
  0.994240449453187900, -0.107172424956808840, 0.994219881120514960,
    -0.107363066203928760,
  0.994199276233218910, -0.107553703503615620, 0.994178634792057590,
    -0.107744336848860280,
  0.994157956797789730, -0.107934966232653650, 0.994137242251175720,
    -0.108125591647986870,
  0.994116491152977070, -0.108316213087851170, 0.994095703503956930,
    -0.108506830545237920,
  0.994074879304879370, -0.108697444013138720, 0.994054018556510210,
    -0.108888053484545190,
  0.994033121259616400, -0.109078658952449240, 0.994012187414966220,
    -0.109269260409842780,
  0.993991217023329380, -0.109459857849717980, 0.993970210085476920,
    -0.109650451265067100,
  0.993949166602181130, -0.109841040648882600, 0.993928086574215830,
    -0.110031625994157000,
  0.993906970002356060, -0.110222207293883060, 0.993885816887378090,
    -0.110412784541053630,
  0.993864627230059750, -0.110603357728661730, 0.993843401031180180,
    -0.110793926849700560,
  0.993822138291519660, -0.110984491897163390, 0.993800839011860120,
    -0.111175052864043720,
  0.993779503192984580, -0.111365609743335160, 0.993758130835677430,
    -0.111556162528031480,
  0.993736721940724600, -0.111746711211126590, 0.993715276508913230,
    -0.111937255785614570,
  0.993693794541031790, -0.112127796244489640, 0.993672276037870010,
    -0.112318332580746170,
  0.993650721000219120, -0.112508864787378690, 0.993629129428871720,
    -0.112699392857381860,
  0.993607501324621610, -0.112889916783750520, 0.993585836688263950,
    -0.113080436559479620,
  0.993564135520595300, -0.113270952177564350, 0.993542397822413600,
    -0.113461463630999950,
  0.993520623594518090, -0.113651970912781870, 0.993498812837709360,
    -0.113842474015905710,
  0.993476965552789190, -0.114032972933367200, 0.993455081740560960,
    -0.114223467658162260,
  0.993433161401829360, -0.114413958183286920, 0.993411204537400060,
    -0.114604444501737420,
  0.993389211148080650, -0.114794926606510080, 0.993367181234679600,
    -0.114985404490601460,
  0.993345114798006910, -0.115175878147008190, 0.993323011838873950,
    -0.115366347568727140,
  0.993300872358093280, -0.115556812748755260, 0.993278696356479030,
    -0.115747273680089720,
  0.993256483834846440, -0.115937730355727780, 0.993234234794012290,
    -0.116128182768666930,
  0.993211949234794500, -0.116318630911904750, 0.993189627158012620,
    -0.116509074778439040,
  0.993167268564487230, -0.116699514361267690, 0.993144873455040430,
    -0.116889949653388780,
  0.993122441830495580, -0.117080380647800590, 0.993099973691677570,
    -0.117270807337501460,
  0.993077469039412300, -0.117461229715489990, 0.993054927874527320,
    -0.117651647774764860,
  0.993032350197851410, -0.117842061508324980, 0.993009736010214580,
    -0.118032470909169340,
  0.992987085312448390, -0.118222875970297170, 0.992964398105385610,
    -0.118413276684707790,
  0.992941674389860470, -0.118603673045400720, 0.992918914166708300,
    -0.118794065045375640,
  0.992896117436765980, -0.118984452677632340, 0.992873284200871730,
    -0.119174835935170880,
  0.992850414459865100, -0.119365214810991350, 0.992827508214586760,
    -0.119555589298094110,
  0.992804565465879140, -0.119745959389479600, 0.992781586214585570,
    -0.119936325078148470,
  0.992758570461551140, -0.120126686357101500, 0.992735518207621850,
    -0.120317043219339680,
  0.992712429453645460, -0.120507395657864130, 0.992689304200470750,
    -0.120697743665676110,
  0.992666142448948020, -0.120888087235777080, 0.992642944199928820,
    -0.121078426361168640,
  0.992619709454266140, -0.121268761034852600, 0.992596438212814290,
    -0.121459091249830840,
  0.992573130476428810, -0.121649416999105530, 0.992549786245966680,
    -0.121839738275678890,
  0.992526405522286100, -0.122030055072553360, 0.992502988306246950,
    -0.122220367382731540,
  0.992479534598709970, -0.122410675199216200, 0.992456044400537700,
    -0.122600978515010240,
  0.992432517712593660, -0.122791277323116770, 0.992408954535742850,
    -0.122981571616539050,
  0.992385354870851670, -0.123171861388280480, 0.992361718718787870,
    -0.123362146631344680,
  0.992338046080420420, -0.123552427338735370, 0.992314336956619640,
    -0.123742703503456510,
  0.992290591348257370, -0.123932975118512160, 0.992266809256206580,
    -0.124123242176906600,
  0.992242990681341700, -0.124313504671644230, 0.992219135624538450,
    -0.124503762595729660,
  0.992195244086673920, -0.124694015942167640, 0.992171316068626520,
    -0.124884264703963130,
  0.992147351571276090, -0.125074508874121170, 0.992123350595503720,
    -0.125264748445647060,
  0.992099313142191800, -0.125454983411546230, 0.992075239212224070,
    -0.125645213764824290,
  0.992051128806485720, -0.125835439498487000, 0.992026981925863360,
    -0.126025660605540320,
  0.992002798571244520, -0.126215877078990350, 0.991978578743518580,
    -0.126406088911843380,
  0.991954322443575950, -0.126596296097105850, 0.991930029672308480,
    -0.126786498627784410,
  0.991905700430609330, -0.126976696496885870, 0.991881334719373010,
    -0.127166889697417160,
  0.991856932539495470, -0.127357078222385400, 0.991832493891873780,
    -0.127547262064797970,
  0.991808018777406430, -0.127737441217662310, 0.991783507196993490,
    -0.127927615673986080,
  0.991758959151536110, -0.128117785426777130, 0.991734374641936810,
    -0.128307950469043420,
  0.991709753669099530, -0.128498110793793170, 0.991685096233929420,
    -0.128688266394034690,
  0.991660402337333210, -0.128878417262776550, 0.991635671980218740,
    -0.129068563393027410,
  0.991610905163495370, -0.129258704777796140, 0.991586101888073500,
    -0.129448841410091780,
  0.991561262154865290, -0.129638973282923560, 0.991536385964783880,
    -0.129829100389300930,
  0.991511473318743900, -0.130019222722233350, 0.991486524217661480,
    -0.130209340274730630,
  0.991461538662453790, -0.130399453039802690, 0.991436516654039420,
    -0.130589561010459650,
  0.991411458193338540, -0.130779664179711710, 0.991386363281272280,
    -0.130969762540569380,
  0.991361231918763460, -0.131159856086043270, 0.991336064106736140,
    -0.131349944809144190,
  0.991310859846115440, -0.131540028702883120, 0.991285619137828200,
    -0.131730107760271160,
  0.991260341982802440, -0.131920181974319790, 0.991235028381967420,
    -0.132110251338040360,
  0.991209678336254060, -0.132300315844444650, 0.991184291846594180,
    -0.132490375486544550,
  0.991158868913921350, -0.132680430257352070, 0.991133409539170170,
    -0.132870480149879430,
  0.991107913723276890, -0.133060525157139060, 0.991082381467178640,
    -0.133250565272143570,
  0.991056812771814340, -0.133440600487905680, 0.991031207638124130,
    -0.133630630797438340,
  0.991005566067049370, -0.133820656193754720, 0.990979888059532740,
    -0.134010676669868130,
  0.990954173616518500, -0.134200692218792020, 0.990928422738951990,
    -0.134390702833540070,
  0.990902635427780010, -0.134580708507126170, 0.990876811683950700,
    -0.134770709232564350,
  0.990850951508413620, -0.134960705002868750, 0.990825054902119470,
    -0.135150695811053850,
  0.990799121866020370, -0.135340681650134210, 0.990773152401069780,
    -0.135530662513124590,
  0.990747146508222710, -0.135720638393039910, 0.990721104188435180,
    -0.135910609282895330,
  0.990695025442664630, -0.136100575175706200, 0.990668910271870100,
    -0.136290536064487960,
  0.990642758677011570, -0.136480491942256280, 0.990616570659050620,
    -0.136670442802027090,
  0.990590346218950150, -0.136860388636816380, 0.990564085357674370,
    -0.137050329439640410,
  0.990537788076188750, -0.137240265203515590, 0.990511454375460290,
    -0.137430195921458550,
  0.990485084256457090, -0.137620121586486040, 0.990458677720148620,
    -0.137810042191615080,
  0.990432234767505970, -0.137999957729862790, 0.990405755399501260,
    -0.138189868194246560,
  0.990379239617108160, -0.138379773577783890, 0.990352687421301450,
    -0.138569673873492500,
  0.990326098813057330, -0.138759569074390350, 0.990299473793353590,
    -0.138949459173495490,
  0.990272812363169110, -0.139139344163826200, 0.990246114523483990,
    -0.139329224038400980,
  0.990219380275280000, -0.139519098790238490, 0.990192609619540030,
    -0.139708968412357550,
  0.990165802557248400, -0.139898832897777210, 0.990138959089390650,
    -0.140088692239516670,
  0.990112079216953770, -0.140278546430595420, 0.990085162940925970,
    -0.140468395464033000,
  0.990058210262297120, -0.140658239332849210, 0.990031221182058000,
    -0.140848078030064080,
  0.990004195701200910, -0.141037911548697710, 0.989977133820719610,
    -0.141227739881770510,
  0.989950035541608990, -0.141417563022303020, 0.989922900864865450,
    -0.141607380963316020,
  0.989895729791486660, -0.141797193697830390, 0.989868522322471580,
    -0.141987001218867290,
  0.989841278458820530, -0.142176803519448030, 0.989813998201535260,
    -0.142366600592594180,
  0.989786681551618640, -0.142556392431327340, 0.989759328510075200,
    -0.142746179028669460,
  0.989731939077910570, -0.142935960377642670, 0.989704513256131850,
    -0.143125736471269190,
  0.989677051045747210, -0.143315507302571500, 0.989649552447766530,
    -0.143505272864572290,
  0.989622017463200890, -0.143695033150294470, 0.989594446093062460,
    -0.143884788152760980,
  0.989566838338365120, -0.144074537864995160, 0.989539194200123930,
    -0.144264282280020440,
  0.989511513679355190, -0.144454021390860470, 0.989483796777076760,
    -0.144643755190539040,
  0.989456043494307710, -0.144833483672080210, 0.989428253832068230,
    -0.145023206828508220,
  0.989400427791380380, -0.145212924652847460, 0.989372565373267010,
    -0.145402637138122570,
  0.989344666578752640, -0.145592344277358340, 0.989316731408863000,
    -0.145782046063579860,
  0.989288759864625170, -0.145971742489812210, 0.989260751947067640,
    -0.146161433549080900,
  0.989232707657220050, -0.146351119234411460, 0.989204626996113780,
    -0.146540799538829760,
  0.989176509964781010, -0.146730474455361750, 0.989148356564255590,
    -0.146920143977033620,
  0.989120166795572690, -0.147109808096871820, 0.989091940659768800,
    -0.147299466807902850,
  0.989063678157881540, -0.147489120103153570, 0.989035379290950310,
    -0.147678767975650970,
  0.989007044060015270, -0.147868410418422220, 0.988978672466118480,
    -0.148058047424494720,
  0.988950264510302990, -0.148247678986896030, 0.988921820193613190,
    -0.148437305098653970,
  0.988893339517095130, -0.148626925752796540, 0.988864822481795640,
    -0.148816540942351920,
  0.988836269088763540, -0.149006150660348450, 0.988807679339048450,
    -0.149195754899814820,
  0.988779053233701520, -0.149385353653779720, 0.988750390773775360,
    -0.149574946915272230,
  0.988721691960323780, -0.149764534677321510, 0.988692956794401940,
    -0.149954116932956960,
  0.988664185277066230, -0.150143693675208190, 0.988635377409374790,
    -0.150333264897105000,
  0.988606533192386450, -0.150522830591677400, 0.988577652627162020,
    -0.150712390751955610,
  0.988548735714763200, -0.150901945370970040, 0.988519782456253270,
    -0.151091494441751300,
  0.988490792852696590, -0.151281037957330220, 0.988461766905159300,
    -0.151470575910737810,
  0.988432704614708340, -0.151660108295005310, 0.988403605982412390,
    -0.151849635103164180,
  0.988374471009341280, -0.152039156328246050, 0.988345299696566150,
    -0.152228671963282740,
  0.988316092045159690, -0.152418182001306330, 0.988286848056195820,
    -0.152607686435349050,
  0.988257567730749460, -0.152797185258443440, 0.988228251069897420,
    -0.152986678463622040,
  0.988198898074717610, -0.153176166043917840, 0.988169508746289060,
    -0.153365647992363880,
  0.988140083085692570, -0.153555124301993450, 0.988110621094009820,
    -0.153744594965840030,
  0.988081122772324070, -0.153934059976937350, 0.988051588121720110,
    -0.154123519328319360,
  0.988022017143283530, -0.154312973013020100, 0.987992409838101880,
    -0.154502421024073940,
  0.987962766207263420, -0.154691863354515430, 0.987933086251858380,
    -0.154881299997379320,
  0.987903369972977790, -0.155070730945700510, 0.987873617371714200,
    -0.155260156192514240,
  0.987843828449161740, -0.155449575730855850, 0.987814003206415550,
    -0.155638989553760900,
  0.987784141644572180, -0.155828397654265230, 0.987754243764729530,
    -0.156017800025404800,
  0.987724309567986960, -0.156207196660215900, 0.987694339055445130,
    -0.156396587551734880,
  0.987664332228205710, -0.156585972692998430, 0.987634289087372160,
    -0.156775352077043350,
  0.987604209634049160, -0.156964725696906780, 0.987574093869342360,
    -0.157154093545625900,
  0.987543941794359230, -0.157343455616238250, 0.987513753410208420,
    -0.157532811901781530,
  0.987483528717999710, -0.157722162395293630, 0.987453267718844560,
    -0.157911507089812660,
  0.987422970413855410, -0.158100845978376980, 0.987392636804146240,
    -0.158290179054025180,
  0.987362266890832400, -0.158479506309795960, 0.987331860675030430,
    -0.158668827738728310,
  0.987301418157858430, -0.158858143333861450, 0.987270939340435420,
    -0.159047453088234760,
  0.987240424223882250, -0.159236756994887850, 0.987209872809320820,
    -0.159426055046860580,
  0.987179285097874340, -0.159615347237193060, 0.987148661090667570,
    -0.159804633558925440,
  0.987118000788826280, -0.159993914005098270, 0.987087304193477900,
    -0.160183188568752220,
  0.987056571305750970, -0.160372457242928280, 0.987025802126775600,
    -0.160561720020667490,
  0.986994996657682980, -0.160750976895011220, 0.986964154899605650,
    -0.160940227859001080,
  0.986933276853677710, -0.161129472905678810, 0.986902362521034470,
    -0.161318712028086400,
  0.986871411902812470, -0.161507945219266120, 0.986840425000149680,
    -0.161697172472260400,
  0.986809401814185530, -0.161886393780111830, 0.986778342346060430,
    -0.162075609135863330,
  0.986747246596916590, -0.162264818532558000, 0.986716114567897100,
    -0.162454021963239190,
  0.986684946260146690, -0.162643219420950310, 0.986653741674811350,
    -0.162832410898735210,
  0.986622500813038480, -0.163021596389637840, 0.986591223675976400,
    -0.163210775886702380,
  0.986559910264775410, -0.163399949382973230, 0.986528560580586690,
    -0.163589116871495020,
  0.986497174624562880, -0.163778278345312670, 0.986465752397857940,
    -0.163967433797471170,
  0.986434293901627180, -0.164156583221015810, 0.986402799137027220,
    -0.164345726608992190,
  0.986371268105216030, -0.164534863954446000, 0.986339700807353000,
    -0.164723995250423170,
  0.986308097244598670, -0.164913120489969890, 0.986276457418115090,
    -0.165102239666132660,
  0.986244781329065460, -0.165291352771958000, 0.986213068978614490,
    -0.165480459800492780,
  0.986181320367928270, -0.165669560744784120, 0.986149535498173860,
    -0.165858655597879300,
  0.986117714370520090, -0.166047744352825790, 0.986085856986136820,
    -0.166236827002671420,
  0.986053963346195440, -0.166425903540464100, 0.986022033451868560,
    -0.166614973959252090,
  0.985990067304330140, -0.166804038252083730, 0.985958064904755460,
    -0.166993096412007710,
  0.985926026254321130, -0.167182148432072940, 0.985893951354205210,
    -0.167371194305328430,
  0.985861840205586980, -0.167560234024823560, 0.985829692809647050,
    -0.167749267583607890,
  0.985797509167567480, -0.167938294974731170, 0.985765289280531310,
    -0.168127316191243410,
  0.985733033149723490, -0.168316331226194830, 0.985700740776329850,
    -0.168505340072635900,
  0.985668412161537550, -0.168694342723617330, 0.985636047306535420,
    -0.168883339172189980,
  0.985603646212513400, -0.169072329411405010, 0.985571208880662740,
    -0.169261313434313830,
  0.985538735312176060, -0.169450291233967960, 0.985506225508247290,
    -0.169639262803419290,
  0.985473679470071810, -0.169828228135719850, 0.985441097198846210,
    -0.170017187223921950,
  0.985408478695768420, -0.170206140061078070, 0.985375823962037710,
    -0.170395086640240940,
  0.985343132998854790, -0.170584026954463590, 0.985310405807421570,
    -0.170772960996799230,
  0.985277642388941220, -0.170961888760301220, 0.985244842744618540,
    -0.171150810238023280,
  0.985212006875659350, -0.171339725423019310, 0.985179134783271130,
    -0.171528634308343420,
  0.985146226468662230, -0.171717536887049970, 0.985113281933042710,
    -0.171906433152193530,
  0.985080301177623800, -0.172095323096829010, 0.985047284203618200,
    -0.172284206714011370,
  0.985014231012239840, -0.172473083996795950, 0.984981141604703960,
    -0.172661954938238270,
  0.984948015982227030, -0.172850819531394080, 0.984914854146027200,
    -0.173039677769319360,
  0.984881656097323700, -0.173228529645070320, 0.984848421837337010,
    -0.173417375151703470,
  0.984815151367289140, -0.173606214282275410, 0.984781844688403350,
    -0.173795047029843160,
  0.984748501801904210, -0.173983873387463820, 0.984715122709017620,
    -0.174172693348194820,
  0.984681707410970940, -0.174361506905093750, 0.984648255908992630,
    -0.174550314051218510,
  0.984614768204312600, -0.174739114779627200, 0.984581244298162180,
    -0.174927909083378160,
  0.984547684191773960, -0.175116696955529920, 0.984514087886381840,
    -0.175305478389141320,
  0.984480455383220930, -0.175494253377271430, 0.984446786683527920,
    -0.175683021912979490,
  0.984413081788540700, -0.175871783989325040, 0.984379340699498510,
    -0.176060539599367820,
  0.984345563417641900, -0.176249288736167880, 0.984311749944212780,
    -0.176438031392785410,
  0.984277900280454370, -0.176626767562280880, 0.984244014427611110,
    -0.176815497237715000,
  0.984210092386929030, -0.177004220412148750, 0.984176134159655320,
    -0.177192937078643280,
  0.984142139747038570, -0.177381647230260040, 0.984108109150328540,
    -0.177570350860060710,
  0.984074042370776450, -0.177759047961107170, 0.984039939409634970,
    -0.177947738526461560,
  0.984005800268157870, -0.178136422549186300, 0.983971624947600270,
    -0.178325100022344000,
  0.983937413449218920, -0.178513770938997510, 0.983903165774271500,
    -0.178702435292209970,
  0.983868881924017220, -0.178891093075044720, 0.983834561899716630,
    -0.179079744280565390,
  0.983800205702631600, -0.179268388901835750, 0.983765813334025240,
    -0.179457026931919890,
  0.983731384795162090, -0.179645658363882160, 0.983696920087308140,
    -0.179834283190787090,
  0.983662419211730250, -0.180022901405699510, 0.983627882169697210,
    -0.180211513001684450,
  0.983593308962478650, -0.180400117971807240, 0.983558699591345900,
    -0.180588716309133340,
  0.983524054057571260, -0.180777308006728590, 0.983489372362428730,
    -0.180965893057658980,
  0.983454654507193270, -0.181154471454990810, 0.983419900493141540,
    -0.181343043191790540,
  0.983385110321551180, -0.181531608261124970, 0.983350283993701500,
    -0.181720166656061110,
  0.983315421510872810, -0.181908718369666160, 0.983280522874346970,
    -0.182097263395007650,
  0.983245588085407070, -0.182285801725153300, 0.983210617145337640,
    -0.182474333353171120,
  0.983175610055424420, -0.182662858272129270, 0.983140566816954500,
    -0.182851376475096330,
  0.983105487431216290, -0.183039887955140950, 0.983070371899499640,
    -0.183228392705332140,
  0.983035220223095640, -0.183416890718739100, 0.983000032403296590,
    -0.183605381988431270,
  0.982964808441396440, -0.183793866507478450, 0.982929548338690170,
    -0.183982344268950520,
  0.982894252096474070, -0.184170815265917720, 0.982858919716046110,
    -0.184359279491450510,
  0.982823551198705240, -0.184547736938619620, 0.982788146545751970,
    -0.184736187600495950,
  0.982752705758487830, -0.184924631470150790, 0.982717228838215990,
    -0.185113068540655540,
  0.982681715786240860, -0.185301498805081900, 0.982646166603868050,
    -0.185489922256501880,
  0.982610581292404750, -0.185678338887987630, 0.982574959853159240,
    -0.185866748692611660,
  0.982539302287441240, -0.186055151663446630, 0.982503608596561830,
    -0.186243547793565560,
  0.982467878781833170, -0.186431937076041610, 0.982432112844569110,
    -0.186620319503948280,
  0.982396310786084690, -0.186808695070359270, 0.982360472607696210,
    -0.186997063768348540,
  0.982324598310721280, -0.187185425590990330, 0.982288687896478830,
    -0.187373780531359110,
  0.982252741366289370, -0.187562128582529600, 0.982216758721474510,
    -0.187750469737576780,
  0.982180739963357090, -0.187938803989575910, 0.982144685093261580,
    -0.188127131331602420,
  0.982108594112513610, -0.188315451756732120, 0.982072467022440000,
    -0.188503765258040940,
  0.982036303824369020, -0.188692071828605230, 0.982000104519630490,
    -0.188880371461501380,
  0.981963869109555240, -0.189068664149806190, 0.981927597595475540,
    -0.189256949886596750,
  0.981891289978725100, -0.189445228664950230, 0.981854946260638630,
    -0.189633500477944190,
  0.981818566442552500, -0.189821765318656410, 0.981782150525804310,
    -0.190010023180164990,
  0.981745698511732990, -0.190198274055548150, 0.981709210401678800,
    -0.190386517937884470,
  0.981672686196983110, -0.190574754820252740, 0.981636125898989080,
    -0.190762984695732110,
  0.981599529509040720, -0.190951207557401800, 0.981562897028483650,
    -0.191139423398341450,
  0.981526228458664770, -0.191327632211630900, 0.981489523800932130,
    -0.191515833990350210,
  0.981452783056635520, -0.191704028727579800, 0.981416006227125550,
    -0.191892216416400220,
  0.981379193313754560, -0.192080397049892440, 0.981342344317876040,
    -0.192268570621137500,
  0.981305459240844670, -0.192456737123216840, 0.981268538084016710,
    -0.192644896549212100,
  0.981231580848749730, -0.192833048892205230, 0.981194587536402320,
    -0.193021194145278380,
  0.981157558148334830, -0.193209332301513960, 0.981120492685908730,
    -0.193397463353994740,
  0.981083391150486710, -0.193585587295803610, 0.981046253543432780,
    -0.193773704120023820,
  0.981009079866112630, -0.193961813819738840, 0.980971870119892840,
    -0.194149916388032450,
  0.980934624306141640, -0.194338011817988600, 0.980897342426228390,
    -0.194526100102691610,
  0.980860024481523870, -0.194714181235225960, 0.980822670473400100,
    -0.194902255208676520,
  0.980785280403230430, -0.195090322016128250, 0.980747854272389750,
    -0.195278381650666550,
  0.980710392082253970, -0.195466434105376980, 0.980672893834200530,
    -0.195654479373345370,
  0.980635359529608120, -0.195842517447657850, 0.980597789169856850,
    -0.196030548321400790,
  0.980560182756327840, -0.196218571987660880, 0.980522540290404090,
    -0.196406588439524970,
  0.980484861773469380, -0.196594597670080220, 0.980447147206909060,
    -0.196782599672414100,
  0.980409396592109910, -0.196970594439614340, 0.980371609930459800,
    -0.197158581964768880,
  0.980333787223347960, -0.197346562240965920, 0.980295928472165290,
    -0.197534535261294030,
  0.980258033678303550, -0.197722501018841920, 0.980220102843156080,
    -0.197910459506698670,
  0.980182135968117430, -0.198098410717953560, 0.980144133054583590,
    -0.198286354645696220,
  0.980106094103951770, -0.198474291283016390, 0.980068019117620650,
    -0.198662220623004200,
  0.980029908096990090, -0.198850142658750090, 0.979991761043461200,
    -0.199038057383344680,
  0.979953577958436740, -0.199225964789878830, 0.979915358843320480,
    -0.199413864871443770,
  0.979877103699517640, -0.199601757621130970, 0.979838812528434740,
    -0.199789643032032090,
  0.979800485331479790, -0.199977521097239150, 0.979762122110061750,
    -0.200165391809844440,
  0.979723722865591170, -0.200353255162940450, 0.979685287599479930,
    -0.200541111149619980,
  0.979646816313141210, -0.200728959762976140, 0.979608309007989450,
    -0.200916800996102230,
  0.979569765685440520, -0.201104634842091900, 0.979531186346911500,
    -0.201292461294039020,
  0.979492570993820810, -0.201480280345037730, 0.979453919627588210,
    -0.201668091988182530,
  0.979415232249634780, -0.201855896216568050, 0.979376508861383170,
    -0.202043693023289260,
  0.979337749464256780, -0.202231482401441450, 0.979298954059681040,
    -0.202419264344120160,
  0.979260122649082020, -0.202607038844421130, 0.979221255233887700,
    -0.202794805895440440,
  0.979182351815526930, -0.202982565490274440, 0.979143412395430230,
    -0.203170317622019790,
  0.979104436975029250, -0.203358062283773320, 0.979065425555756930,
    -0.203545799468632190,
  0.979026378139047580, -0.203733529169693920, 0.978987294726337050,
    -0.203921251380056120,
  0.978948175319062200, -0.204108966092816870, 0.978909019918661310,
    -0.204296673301074370,
  0.978869828526574120, -0.204484372997927240, 0.978830601144241470,
    -0.204672065176474210,
  0.978791337773105670, -0.204859749829814420, 0.978752038414610340,
    -0.205047426951047250,
  0.978712703070200420, -0.205235096533272350, 0.978673331741322210,
    -0.205422758569589610,
  0.978633924429423210, -0.205610413053099240, 0.978594481135952270,
    -0.205798059976901790,
  0.978555001862359550, -0.205985699334097910, 0.978515486610096910,
    -0.206173331117788710,
  0.978475935380616830, -0.206360955321075510, 0.978436348175373730,
    -0.206548571937059890,
  0.978396724995823090, -0.206736180958843690, 0.978357065843421640,
    -0.206923782379529100,
  0.978317370719627650, -0.207111376192218560, 0.978277639625900530,
    -0.207298962390014750,
  0.978237872563701090, -0.207486540966020650, 0.978198069534491400,
    -0.207674111913339570,
  0.978158230539735050, -0.207861675225075070, 0.978118355580896660,
    -0.208049230894330940,
  0.978078444659442380, -0.208236778914211330, 0.978038497776839600,
    -0.208424319277820600,
  0.977998514934557140, -0.208611851978263490, 0.977958496134064830,
    -0.208799377008644900,
  0.977918441376834370, -0.208986894362070070, 0.977878350664338150,
    -0.209174404031644580,
  0.977838223998050430, -0.209361906010474160, 0.977798061379446360,
    -0.209549400291664940,
  0.977757862810002760, -0.209736886868323290, 0.977717628291197460,
    -0.209924365733555880,
  0.977677357824509930, -0.210111836880469610, 0.977637051411420770,
    -0.210299300302171730,
  0.977596709053411890, -0.210486755991769720, 0.977556330751966460,
    -0.210674203942371440,
  0.977515916508569280, -0.210861644147084860, 0.977475466324706170,
    -0.211049076599018390,
  0.977434980201864260, -0.211236501291280710, 0.977394458141532250,
    -0.211423918216980670,
  0.977353900145199960, -0.211611327369227550, 0.977313306214358750,
    -0.211798728741130840,
  0.977272676350500860, -0.211986122325800330, 0.977232010555120320,
    -0.212173508116346080,
  0.977191308829712280, -0.212360886105878420, 0.977150571175773200,
    -0.212548256287508060,
  0.977109797594800880, -0.212735618654345930, 0.977068988088294450,
    -0.212922973199503180,
  0.977028142657754390, -0.213110319916091360, 0.976987261304682390,
    -0.213297658797222320,
  0.976946344030581670, -0.213484989836008050, 0.976905390836956490,
    -0.213672313025560970,
  0.976864401725312640, -0.213859628358993750, 0.976823376697157240,
    -0.214046935829419360,
  0.976782315753998650, -0.214234235429950990, 0.976741218897346550,
    -0.214421527153702160,
  0.976700086128711840, -0.214608810993786760, 0.976658917449606980,
    -0.214796086943318860,
  0.976617712861545640, -0.214983354995412820, 0.976576472366042610,
    -0.215170615143183390,
  0.976535195964614470, -0.215357867379745550, 0.976493883658778650,
    -0.215545111698214500,
  0.976452535450054060, -0.215732348091705880, 0.976411151339961040,
    -0.215919576553335490,
  0.976369731330021140, -0.216106797076219520, 0.976328275421757260,
    -0.216294009653474340,
  0.976286783616693630, -0.216481214278216730, 0.976245255916355800,
    -0.216668410943563730,
  0.976203692322270560, -0.216855599642632620, 0.976162092835966110,
    -0.217042780368540990,
  0.976120457458971910, -0.217229953114406790, 0.976078786192818850,
    -0.217417117873348190,
  0.976037079039039020, -0.217604274638483640, 0.975995335999165990,
    -0.217791423402931950,
  0.975953557074734300, -0.217978564159812200, 0.975911742267280170,
    -0.218165696902243800,
  0.975869891578341030, -0.218352821623346320, 0.975828005009455660,
    -0.218539938316239770,
  0.975786082562163930, -0.218727046974044440, 0.975744124238007270,
    -0.218914147589880840,
  0.975702130038528570, -0.219101240156869800, 0.975660099965271590,
    -0.219288324668132470,
  0.975618034019781750, -0.219475401116790310, 0.975575932203605720,
    -0.219662469495965050,
  0.975533794518291360, -0.219849529798778700, 0.975491620965388110,
    -0.220036582018353580,
  0.975449411546446380, -0.220223626147812380, 0.975407166263018270,
    -0.220410662180277940,
  0.975364885116656980, -0.220597690108873510, 0.975322568108916930,
    -0.220784709926722610,
  0.975280215241354220, -0.220971721626949110, 0.975237826515525820,
    -0.221158725202677010,
  0.975195401932990370, -0.221345720647030810, 0.975152941495307620,
    -0.221532707953135230,
  0.975110445204038890, -0.221719687114115220, 0.975067913060746470,
    -0.221906658123096100,
  0.975025345066994120, -0.222093620973203510, 0.974982741224347140,
    -0.222280575657563370,
  0.974940101534371830, -0.222467522169301880, 0.974897425998635820,
    -0.222654460501545500,
  0.974854714618708430, -0.222841390647421120, 0.974811967396159830,
    -0.223028312600055820,
  0.974769184332561770, -0.223215226352576980, 0.974726365429487320,
    -0.223402131898112370,
  0.974683510688510670, -0.223589029229789990, 0.974640620111207560,
    -0.223775918340738150,
  0.974597693699155050, -0.223962799224085460, 0.974554731453931230,
    -0.224149671872960870,
  0.974511733377115720, -0.224336536280493600, 0.974468699470289580,
    -0.224523392439813170,
  0.974425629735034990, -0.224710240344049430, 0.974382524172935470,
    -0.224897079986332490,
  0.974339382785575860, -0.225083911359792830, 0.974296205574542440,
    -0.225270734457561160,
  0.974252992541422500, -0.225457549272768540, 0.974209743687805220,
    -0.225644355798546330,
  0.974166459015280320, -0.225831154028026170, 0.974123138525439640,
    -0.226017943954340020,
  0.974079782219875680, -0.226204725570620190, 0.974036390100182610,
    -0.226391498869999240,
  0.973992962167955830, -0.226578263845610000, 0.973949498424792170,
    -0.226765020490585690,
  0.973905998872289570, -0.226951768798059810, 0.973862463512047300,
    -0.227138508761166170,
  0.973818892345666100, -0.227325240373038860, 0.973775285374748110,
    -0.227511963626812280,
  0.973731642600896400, -0.227698678515621170, 0.973687964025715670,
    -0.227885385032600530,
  0.973644249650811980, -0.228072083170885730, 0.973600499477792370,
    -0.228258772923612380,
  0.973556713508265560, -0.228445454283916470, 0.973512891743841370,
    -0.228632127244934230,
  0.973469034186131070, -0.228818791799802220, 0.973425140836747030,
    -0.229005447941657340,
  0.973381211697303290, -0.229192095663636770, 0.973337246769414910,
    -0.229378734958878010,
  0.973293246054698250, -0.229565365820518870, 0.973249209554771230,
    -0.229751988241697490,
  0.973205137271252800, -0.229938602215552210, 0.973161029205763530,
    -0.230125207735221850,
  0.973116885359925130, -0.230311804793845440, 0.973072705735360530,
    -0.230498393384562350,
  0.973028490333694210, -0.230684973500512200, 0.972984239156551740,
    -0.230871545134835020,
  0.972939952205560180, -0.231058108280671110, 0.972895629482347760,
    -0.231244662931161050,
  0.972851270988544180, -0.231431209079445750, 0.972806876725780370,
    -0.231617746718666470,
  0.972762446695688570, -0.231804275841964780, 0.972717980899902250,
    -0.231990796442482440,
  0.972673479340056430, -0.232177308513361710, 0.972628942017787270,
    -0.232363812047745030,
  0.972584368934732210, -0.232550307038775240, 0.972539760092530180,
    -0.232736793479595390,
  0.972495115492821190, -0.232923271363348980, 0.972450435137246830,
    -0.233109740683179690,
  0.972405719027449770, -0.233296201432231590, 0.972360967165074140,
    -0.233482653603649090,
  0.972316179551765300, -0.233669097190576820, 0.972271356189170040,
    -0.233855532186159840,
  0.972226497078936270, -0.234041958583543430, 0.972181602222713440,
    -0.234228376375873210,
  0.972136671622152230, -0.234414785556295160, 0.972091705278904430,
    -0.234601186117955550,
  0.972046703194623500, -0.234787578054000970, 0.972001665370963890,
    -0.234973961357578250,
  0.971956591809581720, -0.235160336021834730, 0.971911482512134000,
    -0.235346702039917840,
  0.971866337480279400, -0.235533059404975490, 0.971821156715677700,
    -0.235719408110155820,
  0.971775940219990140, -0.235905748148607370, 0.971730687994879160,
    -0.236092079513478910,
  0.971685400042008540, -0.236278402197919570, 0.971640076363043390,
    -0.236464716195078780,
  0.971594716959650160, -0.236651021498106380, 0.971549321833496630,
    -0.236837318100152380,
  0.971503890986251780, -0.237023605994367200, 0.971458424419585960,
    -0.237209885173901600,
  0.971412922135170940, -0.237396155631906610, 0.971367384134679490,
    -0.237582417361533570,
  0.971321810419786160, -0.237768670355934190, 0.971276200992166490,
    -0.237954914608260540,
  0.971230555853497380, -0.238141150111664840, 0.971184875005457030,
    -0.238327376859299810,
  0.971139158449725090, -0.238513594844318420, 0.971093406187982460,
    -0.238699804059873980,
  0.971047618221911100, -0.238886004499120040, 0.971001794553194690,
    -0.239072196155210610,
  0.970955935183517970, -0.239258379021299980, 0.970910040114567050,
    -0.239444553090542630,
  0.970864109348029470, -0.239630718356093560, 0.970818142885593870,
    -0.239816874811108000,
  0.970772140728950350, -0.240003022448741500, 0.970726102879790110,
    -0.240189161262149900,
  0.970680029339806130, -0.240375291244489450, 0.970633920110692160,
    -0.240561412388916650,
  0.970587775194143630, -0.240747524688588430, 0.970541594591857070,
    -0.240933628136661910,
  0.970495378305530560, -0.241119722726294590, 0.970449126336863090,
    -0.241305808450644370,
  0.970402838687555500, -0.241491885302869330, 0.970356515359309450,
    -0.241677953276128010,
  0.970310156353828110, -0.241864012363579180, 0.970263761672816140,
    -0.242050062558382070,
  0.970217331317979160, -0.242236103853696010, 0.970170865291024480,
    -0.242422136242680890,
  0.970124363593660280, -0.242608159718496810, 0.970077826227596420,
    -0.242794174274304220,
  0.970031253194543970, -0.242980179903263870, 0.969984644496215240,
    -0.243166176598536900,
  0.969938000134323960, -0.243352164353284740, 0.969891320110585100,
    -0.243538143160669130,
  0.969844604426714830, -0.243724113013852160, 0.969797853084430890,
    -0.243910073905996260,
  0.969751066085452140, -0.244096025830264210, 0.969704243431498860,
    -0.244281968779819030,
  0.969657385124292450, -0.244467902747824150, 0.969610491165555870,
    -0.244653827727443320,
  0.969563561557013180, -0.244839743711840670, 0.969516596300390000,
    -0.245025650694180470,
  0.969469595397413060, -0.245211548667627540, 0.969422558849810320,
    -0.245397437625346960,
  0.969375486659311280, -0.245583317560504060, 0.969328378827646660,
    -0.245769188466264580,
  0.969281235356548530, -0.245955050335794590, 0.969234056247750050,
    -0.246140903162260530,
  0.969186841502985950, -0.246326746938829030, 0.969139591123992280,
    -0.246512581658667210,
  0.969092305112506210, -0.246698407314942410, 0.969044983470266240,
    -0.246884223900822430,
  0.968997626199012420, -0.247070031409475250, 0.968950233300485800,
    -0.247255829834069300,
  0.968902804776428870, -0.247441619167773270, 0.968855340628585580,
    -0.247627399403756280,
  0.968807840858700970, -0.247813170535187670, 0.968760305468521430,
    -0.247998932555237110,
  0.968712734459794780, -0.248184685457074780, 0.968665127834270060,
    -0.248370429233870980,
  0.968617485593697540, -0.248556163878796560, 0.968569807739828930,
    -0.248741889385022480,
  0.968522094274417380, -0.248927605745720150, 0.968474345199216820,
    -0.249113312954061360,
  0.968426560515983190, -0.249299011003218190, 0.968378740226473300,
    -0.249484699886362960,
  0.968330884332445190, -0.249670379596668550, 0.968282992835658660,
    -0.249856050127307990,
  0.968235065737874320, -0.250041711471454650, 0.968187103040854420,
    -0.250227363622282370,
  0.968139104746362440, -0.250413006572965220, 0.968091070856162970,
    -0.250598640316677670,
  0.968043001372022260, -0.250784264846594500, 0.967994896295707670,
    -0.250969880155890720,
  0.967946755628987800, -0.251155486237741920, 0.967898579373632660,
    -0.251341083085323880,
  0.967850367531413620, -0.251526670691812610, 0.967802120104103270,
    -0.251712249050384700,
  0.967753837093475510, -0.251897818154216970, 0.967705518501305480,
    -0.252083377996486450,
  0.967657164329369880, -0.252268928570370810, 0.967608774579446500,
    -0.252454469869047740,
  0.967560349253314360, -0.252640001885695520, 0.967511888352754150,
    -0.252825524613492610,
  0.967463391879547550, -0.253011038045617860, 0.967414859835477480,
    -0.253196542175250560,
  0.967366292222328510, -0.253382036995570160, 0.967317689041886310,
    -0.253567522499756560,
  0.967269050295937790, -0.253752998680989990, 0.967220375986271420,
    -0.253938465532451090,
  0.967171666114676640, -0.254123923047320620, 0.967122920682944360,
    -0.254309371218780000,
  0.967074139692867040, -0.254494810040010730, 0.967025323146238010,
    -0.254680239504194830,
  0.966976471044852070, -0.254865659604514570, 0.966927583390505660,
    -0.255051070334152470,
  0.966878660184995910, -0.255236471686291710, 0.966829701430121810,
    -0.255421863654115460,
  0.966780707127683270, -0.255607246230807380, 0.966731677279481840,
    -0.255792619409551610,
  0.966682611887320080, -0.255977983183532430, 0.966633510953002100,
    -0.256163337545934460,
  0.966584374478333120, -0.256348682489942910, 0.966535202465119700,
    -0.256534018008743040,
  0.966485994915169840, -0.256719344095520660, 0.966436751830292650,
    -0.256904660743461910,
  0.966387473212298900, -0.257089967945753120, 0.966338159063000130,
    -0.257275265695581120,
  0.966288809384209690, -0.257460553986133100, 0.966239424177741890,
    -0.257645832810596390,
  0.966190003445412500, -0.257831102162158990, 0.966140547189038750,
    -0.258016362034009020,
  0.966091055410438830, -0.258201612419334870, 0.966041528111432400,
    -0.258386853311325600,
  0.965991965293840570, -0.258572084703170340, 0.965942366959485540,
    -0.258757306588058680,
  0.965892733110190860, -0.258942518959180520, 0.965843063747781510,
    -0.259127721809726150,
  0.965793358874083680, -0.259312915132886230, 0.965743618490924830,
    -0.259498098921851660,
  0.965693842600133690, -0.259683273169813770, 0.965644031203540590,
    -0.259868437869964270,
  0.965594184302976830, -0.260053593015495190, 0.965544301900275180,
    -0.260238738599598840,
  0.965494383997269500, -0.260423874615468010, 0.965444430595795430,
    -0.260609001056295750,
  0.965394441697689400, -0.260794117915275510, 0.965344417304789370,
    -0.260979225185601070,
  0.965294357418934660, -0.261164322860466480, 0.965244262041965780,
    -0.261349410933066350,
  0.965194131175724720, -0.261534489396595520, 0.965143964822054450,
    -0.261719558244249030,
  0.965093762982799590, -0.261904617469222610, 0.965043525659805890,
    -0.262089667064712040,
  0.964993252854920320, -0.262274707023913590, 0.964942944569991410,
    -0.262459737340023980,
  0.964892600806868890, -0.262644758006240040, 0.964842221567403620,
    -0.262829769015759160,
  0.964791806853447900, -0.263014770361779000, 0.964741356666855340,
    -0.263199762037497560,
  0.964690871009481030, -0.263384744036113280, 0.964640349883180930,
    -0.263569716350824880,
  0.964589793289812760, -0.263754678974831350, 0.964539201231235150,
    -0.263939631901332350,
  0.964488573709308410, -0.264124575123527550, 0.964437910725893910,
    -0.264309508634617110,
  0.964387212282854290, -0.264494432427801630, 0.964336478382053720,
    -0.264679346496281890,
  0.964285709025357480, -0.264864250833259260, 0.964234904214632200,
    -0.265049145431935250,
  0.964184063951745830, -0.265234030285511790, 0.964133188238567640,
    -0.265418905387191260,
  0.964082277076968140, -0.265603770730176330, 0.964031330468819280,
    -0.265788626307669920,
  0.963980348415994110, -0.265973472112875590, 0.963929330920367140,
    -0.266158308138996990,
  0.963878277983814200, -0.266343134379238180, 0.963827189608212340,
    -0.266527950826803690,
  0.963776065795439840, -0.266712757474898370, 0.963724906547376530,
    -0.266897554316727350,
  0.963673711865903230, -0.267082341345496300, 0.963622481752902220,
    -0.267267118554410930,
  0.963571216210257320, -0.267451885936677620, 0.963519915239853140,
    -0.267636643485503090,
  0.963468578843575950, -0.267821391194094150, 0.963417207023313350,
    -0.268006129055658290,
  0.963365799780954050, -0.268190857063403180, 0.963314357118388200,
    -0.268375575210536900,
  0.963262879037507070, -0.268560283490267890, 0.963211365540203480,
    -0.268744981895804980,
  0.963159816628371360, -0.268929670420357260, 0.963108232303906190,
    -0.269114349057134380,
  0.963056612568704340, -0.269299017799346120, 0.963004957424663850,
    -0.269483676640202840,
  0.962953266873683880, -0.269668325572915090, 0.962901540917665000,
    -0.269852964590693860,
  0.962849779558509030, -0.270037593686750570, 0.962797982798119010,
    -0.270222212854296870,
  0.962746150638399410, -0.270406822086544820, 0.962694283081255930,
    -0.270591421376706940,
  0.962642380128595710, -0.270776010717996010, 0.962590441782326890,
    -0.270960590103625170,
  0.962538468044359160, -0.271145159526808010, 0.962486458916603450,
    -0.271329718980758420,
  0.962434414400972100, -0.271514268458690700, 0.962382334499378380,
    -0.271698807953819510,
  0.962330219213737400, -0.271883337459359720, 0.962278068545965090,
    -0.272067856968526920,
  0.962225882497979020, -0.272252366474536710, 0.962173661071697880,
    -0.272436865970605240,
  0.962121404269041580, -0.272621355449948980, 0.962069112091931580,
    -0.272805834905784810,
  0.962016784542290560, -0.272990304331329920, 0.961964421622042320,
    -0.273174763719801930,
  0.961912023333112210, -0.273359213064418680, 0.961859589677426570,
    -0.273543652358398730,
  0.961807120656913540, -0.273728081594960540, 0.961754616273502010,
    -0.273912500767323260,
  0.961702076529122540, -0.274096909868706380, 0.961649501425706820,
    -0.274281308892329660,
  0.961596890965187860, -0.274465697831413220, 0.961544245149499990,
    -0.274650076679177680,
  0.961491563980579000, -0.274834445428843940, 0.961438847460361680,
    -0.275018804073633220,
  0.961386095590786250, -0.275203152606767310, 0.961333308373792270,
    -0.275387491021468140,
  0.961280485811320640, -0.275571819310958140, 0.961227627905313460,
    -0.275756137468460120,
  0.961174734657714080, -0.275940445487197150, 0.961121806070467380,
    -0.276124743360392830,
  0.961068842145519350, -0.276309031081271080, 0.961015842884817230,
    -0.276493308643055990,
  0.960962808290309780, -0.276677576038972420, 0.960909738363946770,
    -0.276861833262245280,
  0.960856633107679660, -0.277046080306099900, 0.960803492523460760,
    -0.277230317163762170,
  0.960750316613243950, -0.277414543828458090, 0.960697105378984450,
    -0.277598760293414290,
  0.960643858822638590, -0.277782966551857690, 0.960590576946164120,
    -0.277967162597015370,
  0.960537259751520050, -0.278151348422115090, 0.960483907240666790,
    -0.278335524020384920,
  0.960430519415565790, -0.278519689385053060, 0.960377096278180130,
    -0.278703844509348490,
  0.960323637830473920, -0.278887989386500280, 0.960270144074412800,
    -0.279072124009737800,
  0.960216615011963430, -0.279256248372291180, 0.960163050645094000,
    -0.279440362467390510,
  0.960109450975773940, -0.279624466288266590, 0.960055816005973890,
    -0.279808559828150390,
  0.960002145737665960, -0.279992643080273220, 0.959948440172823210,
    -0.280176716037866980,
  0.959894699313420530, -0.280360778694163810, 0.959840923161433770,
    -0.280544831042396250,
  0.959787111718839900, -0.280728873075797190, 0.959733264987617680,
    -0.280912904787600000,
  0.959679382969746750, -0.281096926171038260, 0.959625465667208190,
    -0.281280937219346110,
  0.959571513081984520, -0.281464937925757940, 0.959517525216059260,
    -0.281648928283508630,
  0.959463502071417510, -0.281832908285833350, 0.959409443650045550,
    -0.282016877925967640,
  0.959355349953930790, -0.282200837197147560, 0.959301220985062210,
    -0.282384786092609360,
  0.959247056745430090, -0.282568724605589740, 0.959192857237025740,
    -0.282752652729325930,
  0.959138622461841890, -0.282936570457055390, 0.959084352421872730,
    -0.283120477782015820,
  0.959030047119113660, -0.283304374697445740, 0.958975706555561080,
    -0.283488261196583550,
  0.958921330733213170, -0.283672137272668430, 0.958866919654069010,
    -0.283856002918939750,
  0.958812473320129310, -0.284039858128637190, 0.958757991733395710,
    -0.284223702895001040,
  0.958703474895871600, -0.284407537211271880, 0.958648922809561150,
    -0.284591361070690440,
  0.958594335476470220, -0.284775174466498300, 0.958539712898605730,
    -0.284958977391937040,
  0.958485055077976100, -0.285142769840248670, 0.958430362016590930,
    -0.285326551804675870,
  0.958375633716461170, -0.285510323278461260, 0.958320870179598880,
    -0.285694084254848320,
  0.958266071408017670, -0.285877834727080620, 0.958211237403732260,
    -0.286061574688402040,
  0.958156368168758820, -0.286245304132057120, 0.958101463705114730,
    -0.286429023051290700,
  0.958046524014818600, -0.286612731439347790, 0.957991549099890370,
    -0.286796429289474080,
  0.957936538962351420, -0.286980116594915570, 0.957881493604224370,
    -0.287163793348918390,
  0.957826413027532910, -0.287347459544729510, 0.957771297234302320,
    -0.287531115175595930,
  0.957716146226558870, -0.287714760234765170, 0.957660960006330610,
    -0.287898394715485170,
  0.957605738575646350, -0.288082018611004130, 0.957550481936536470,
    -0.288265631914570770,
  0.957495190091032570, -0.288449234619434220, 0.957439863041167680,
    -0.288632826718843830,
  0.957384500788975860, -0.288816408206049480, 0.957329103336492790,
    -0.288999979074301420,
  0.957273670685755200, -0.289183539316850200, 0.957218202838801210,
    -0.289367088926947010,
  0.957162699797670210, -0.289550627897843030, 0.957107161564402790,
    -0.289734156222790250,
  0.957051588141040970, -0.289917673895040750, 0.956995979529628230,
    -0.290101180907847090,
  0.956940335732208820, -0.290284677254462330, 0.956884656750828900,
    -0.290468162928139820,
  0.956828942587535370, -0.290651637922133220, 0.956773193244376930,
    -0.290835102229696830,
  0.956717408723403050, -0.291018555844085090, 0.956661589026665090,
    -0.291201998758552900,
  0.956605734156215080, -0.291385430966355660, 0.956549844114106820,
    -0.291568852460749040,
  0.956493918902395100, -0.291752263234989260, 0.956437958523136180,
    -0.291935663282332780,
  0.956381962978387730, -0.292119052596036380, 0.956325932270208230,
    -0.292302431169357560,
  0.956269866400658030, -0.292485798995553880, 0.956213765371798470,
    -0.292669156067883460,
  0.956157629185692140, -0.292852502379604810, 0.956101457844403040,
    -0.293035837923976810,
  0.956045251349996410, -0.293219162694258630, 0.955989009704538930,
    -0.293402476683710110,
  0.955932732910098280, -0.293585779885591200, 0.955876420968743590,
    -0.293769072293162400,
  0.955820073882545420, -0.293952353899684660, 0.955763691653575440,
    -0.294135624698419030,
  0.955707274283906560, -0.294318884682627400, 0.955650821775613330,
    -0.294502133845571670,
  0.955594334130771110, -0.294685372180514330, 0.955537811351456880,
    -0.294868599680718270,
  0.955481253439748770, -0.295051816339446720, 0.955424660397726330,
    -0.295235022149963220,
  0.955368032227470350, -0.295418217105532010, 0.955311368931062720,
    -0.295601401199417360,
  0.955254670510586990, -0.295784574424884260, 0.955197936968127710,
    -0.295967736775197890,
  0.955141168305770780, -0.296150888243623790, 0.955084364525603410,
    -0.296334028823428190,
  0.955027525629714160, -0.296517158507877470, 0.954970651620192790,
    -0.296700277290238350,
  0.954913742499130520, -0.296883385163778270, 0.954856798268619580,
    -0.297066482121764730,
  0.954799818930753720, -0.297249568157465840, 0.954742804487627940,
    -0.297432643264150030,
  0.954685754941338340, -0.297615707435086200, 0.954628670293982680,
    -0.297798760663543550,
  0.954571550547659630, -0.297981802942791810, 0.954514395704469500,
    -0.298164834266100850,
  0.954457205766513490, -0.298347854626741400, 0.954399980735894490,
    -0.298530864017984120,
  0.954342720614716480, -0.298713862433100330, 0.954285425405084650,
    -0.298896849865361800,
  0.954228095109105670, -0.299079826308040480, 0.954170729728887280,
    -0.299262791754408840,
  0.954113329266538800, -0.299445746197739890, 0.954055893724170660,
    -0.299628689631306790,
  0.953998423103894490, -0.299811622048383350, 0.953940917407823500,
    -0.299994543442243580,
  0.953883376638071770, -0.300177453806161950, 0.953825800796755050,
    -0.300360353133413530,
  0.953768189885990330, -0.300543241417273450, 0.953710543907895670,
    -0.300726118651017500,
  0.953652862864590500, -0.300908984827921890, 0.953595146758195680,
    -0.301091839941263100,
  0.953537395590833280, -0.301274683984317950, 0.953479609364626610,
    -0.301457516950363940,
  0.953421788081700310, -0.301640338832678770, 0.953363931744180330,
    -0.301823149624540650,
  0.953306040354193860, -0.302005949319228080, 0.953248113913869320,
    -0.302188737910019990,
  0.953190152425336670, -0.302371515390195970, 0.953132155890726750,
    -0.302554281753035610,
  0.953074124312172200, -0.302737036991819140, 0.953016057691806530,
    -0.302919781099827310,
  0.952957956031764700, -0.303102514070341060, 0.952899819334182880,
    -0.303285235896641750,
  0.952841647601198720, -0.303467946572011320, 0.952783440834950920,
    -0.303650646089731910,
  0.952725199037579570, -0.303833334443086360, 0.952666922211226170,
    -0.304016011625357570,
  0.952608610358033350, -0.304198677629829110, 0.952550263480144930,
    -0.304381332449784880,
  0.952491881579706320, -0.304563976078509100, 0.952433464658864030,
    -0.304746608509286530,
  0.952375012719765880, -0.304929229735402370, 0.952316525764560940,
    -0.305111839750142110,
  0.952258003795399600, -0.305294438546791670, 0.952199446814433580,
    -0.305477026118637420,
  0.952140854823815830, -0.305659602458966120, 0.952082227825700620,
    -0.305842167561065080,
  0.952023565822243570, -0.306024721418221790, 0.951964868815601380,
    -0.306207264023724220,
  0.951906136807932350, -0.306389795370860920, 0.951847369801395620,
    -0.306572315452920740,
  0.951788567798152130, -0.306754824263192780, 0.951729730800363830,
    -0.306937321794966910,
  0.951670858810193860, -0.307119808041533100, 0.951611951829806850,
    -0.307302282996181790,
  0.951553009861368590, -0.307484746652204100, 0.951494032907046370,
    -0.307667199002891190,
  0.951435020969008340, -0.307849640041534870, 0.951375974049424420,
    -0.308032069761427330,
  0.951316892150465550, -0.308214488155861050, 0.951257775274304000,
    -0.308396895218129190,
  0.951198623423113230, -0.308579290941525090, 0.951139436599068190,
    -0.308761675319342450,
  0.951080214804345010, -0.308944048344875710, 0.951020958041121080,
    -0.309126410011419440,
  0.950961666311575080, -0.309308760312268730, 0.950902339617887060,
    -0.309491099240719100,
  0.950842977962238160, -0.309673426790066380, 0.950783581346811070,
    -0.309855742953607070,
  0.950724149773789610, -0.310038047724637890, 0.950664683245358910,
    -0.310220341096455850,
  0.950605181763705340, -0.310402623062358720, 0.950545645331016600,
    -0.310584893615644450,
  0.950486073949481700, -0.310767152749611470, 0.950426467621290900,
    -0.310949400457558640,
  0.950366826348635780, -0.311131636732785270, 0.950307150133709260,
    -0.311313861568590920,
  0.950247438978705230, -0.311496074958275910, 0.950187692885819280,
    -0.311678276895140550,
  0.950127911857248100, -0.311860467372486020, 0.950068095895189590,
    -0.312042646383613510,
  0.950008245001843000, -0.312224813921824880, 0.949948359179409010,
    -0.312406969980422440,
  0.949888438430089300, -0.312589114552708710, 0.949828482756087110,
    -0.312771247631986770,
  0.949768492159606680, -0.312953369211560200, 0.949708466642853800,
    -0.313135479284732840,
  0.949648406208035480, -0.313317577844809010, 0.949588310857359950,
    -0.313499664885093510,
  0.949528180593036670, -0.313681740398891520, 0.949468015417276550,
    -0.313863804379508500,
  0.949407815332291570, -0.314045856820250710, 0.949347580340295210,
    -0.314227897714424440,
  0.949287310443502120, -0.314409927055336660, 0.949227005644128210,
    -0.314591944836294660,
  0.949166665944390700, -0.314773951050606070, 0.949106291346508260,
    -0.314955945691579140,
  0.949045881852700560, -0.315137928752522440, 0.948985437465188710,
    -0.315319900226744890,
  0.948924958186195160, -0.315501860107555990, 0.948864444017943340,
    -0.315683808388265650,
  0.948803894962658490, -0.315865745062183960, 0.948743311022566480,
    -0.316047670122621860,
  0.948682692199895090, -0.316229583562890330, 0.948622038496872990,
    -0.316411485376300980,
  0.948561349915730270, -0.316593375556165850, 0.948500626458698260,
    -0.316775254095797270,
  0.948439868128009620, -0.316957120988508150, 0.948379074925898120,
    -0.317138976227611780,
  0.948318246854599090, -0.317320819806421740, 0.948257383916349060,
    -0.317502651718252260,
  0.948196486113385580, -0.317684471956417970, 0.948135553447947980,
    -0.317866280514233660,
  0.948074585922276230, -0.318048077385014950, 0.948013583538612200,
    -0.318229862562077530,
  0.947952546299198670, -0.318411636038737790, 0.947891474206279840,
    -0.318593397808312420,
  0.947830367262101010, -0.318775147864118480, 0.947769225468909180,
    -0.318956886199473650,
  0.947708048828952100, -0.319138612807695900, 0.947646837344479300,
    -0.319320327682103610,
  0.947585591017741090, -0.319502030816015690, 0.947524309850989570,
    -0.319683722202751430,
  0.947462993846477700, -0.319865401835630500, 0.947401643006459900,
    -0.320047069707973140,
  0.947340257333192050, -0.320228725813099860, 0.947278836828930880,
    -0.320410370144331820,
  0.947217381495934820, -0.320592002694990330, 0.947155891336463270,
    -0.320773623458397330,
  0.947094366352777220, -0.320955232427875210, 0.947032806547138620,
    -0.321136829596746660,
  0.946971211921810880, -0.321318414958334850, 0.946909582479058760,
    -0.321499988505963510,
  0.946847918221148000, -0.321681550232956580, 0.946786219150346000,
    -0.321863100132638580,
  0.946724485268921170, -0.322044638198334510, 0.946662716579143360,
    -0.322226164423369600,
  0.946600913083283530, -0.322407678801069850, 0.946539074783614100,
    -0.322589181324761330,
  0.946477201682408680, -0.322770671987770710, 0.946415293781942110,
    -0.322952150783425260,
  0.946353351084490590, -0.323133617705052330, 0.946291373592331620,
    -0.323315072745979980,
  0.946229361307743820, -0.323496515899536710, 0.946167314233007370,
    -0.323677947159051240,
  0.946105232370403450, -0.323859366517852850, 0.946043115722214560,
    -0.324040773969271450,
  0.945980964290724760, -0.324222169506636960, 0.945918778078219110,
    -0.324403553123280230,
  0.945856557086983910, -0.324584924812532150, 0.945794301319306970,
    -0.324766284567724220,
  0.945732010777477150, -0.324947632382188430, 0.945669685463784710,
    -0.325128968249257080,
  0.945607325380521280, -0.325310292162262930, 0.945544930529979680,
    -0.325491604114539310,
  0.945482500914453740, -0.325672904099419850, 0.945420036536239070,
    -0.325854192110238580,
  0.945357537397632290, -0.326035468140330240, 0.945295003500931210,
    -0.326216732183029710,
  0.945232434848435000, -0.326397984231672490, 0.945169831442444150,
    -0.326579224279594400,
  0.945107193285260610, -0.326760452320131730, 0.945044520379187070,
    -0.326941668346621420,
  0.944981812726528150, -0.327122872352400510, 0.944919070329589220,
    -0.327304064330806670,
  0.944856293190677210, -0.327485244275178000, 0.944793481312100280,
    -0.327666412178853120,
  0.944730634696167800, -0.327847568035170840, 0.944667753345190490,
    -0.328028711837470680,
  0.944604837261480260, -0.328209843579092500, 0.944541886447350490,
    -0.328390963253376580,
  0.944478900905115550, -0.328572070853663740, 0.944415880637091250,
    -0.328753166373294990,
  0.944352825645594750, -0.328934249805612200, 0.944289735932944410,
    -0.329115321143957250,
  0.944226611501459810, -0.329296380381672750, 0.944163452353461770,
    -0.329477427512101740,
  0.944100258491272660, -0.329658462528587490, 0.944037029917215830,
    -0.329839485424473940,
  0.943973766633615980, -0.330020496193105420, 0.943910468642799150,
    -0.330201494827826570,
  0.943847135947092690, -0.330382481321982780, 0.943783768548825060,
    -0.330563455668919540,
  0.943720366450326200, -0.330744417861982890, 0.943656929653927220,
    -0.330925367894519540,
  0.943593458161960390, -0.331106305759876430, 0.943529951976759480,
    -0.331287231451400820,
  0.943466411100659320, -0.331468144962440870, 0.943402835535996240,
    -0.331649046286344670,
  0.943339225285107720, -0.331829935416461110, 0.943275580350332540,
    -0.332010812346139380,
  0.943211900734010620, -0.332191677068729150, 0.943148186438483420,
    -0.332372529577580620,
  0.943084437466093490, -0.332553369866044220, 0.943020653819184650,
    -0.332734197927471050,
  0.942956835500102120, -0.332915013755212650, 0.942892982511192250,
    -0.333095817342620780,
  0.942829094854802710, -0.333276608683047930, 0.942765172533282510,
    -0.333457387769846850,
  0.942701215548981900, -0.333638154596370860, 0.942637223904252530,
    -0.333818909155973620,
  0.942573197601446870, -0.333999651442009380, 0.942509136642919240,
    -0.334180381447832690,
  0.942445041031024890, -0.334361099166798740, 0.942380910768120470,
    -0.334541804592262900,
  0.942316745856563780, -0.334722497717581220, 0.942252546298714020,
    -0.334903178536110180,
  0.942188312096931770, -0.335083847041206580, 0.942124043253578570,
    -0.335264503226227810,
  0.942059739771017310, -0.335445147084531600, 0.941995401651612550,
    -0.335625778609476290,
  0.941931028897729620, -0.335806397794420450, 0.941866621511735280,
    -0.335987004632723350,
  0.941802179495997650, -0.336167599117744520, 0.941737702852886160,
    -0.336348181242844050,
  0.941673191584771360, -0.336528751001382410, 0.941608645694025250,
    -0.336709308386720580,
  0.941544065183020810, -0.336889853392220050, 0.941479450054132580,
    -0.337070386011242620,
  0.941414800309736340, -0.337250906237150590, 0.941350115952208970,
    -0.337431414063306840,
  0.941285396983928660, -0.337611909483074620, 0.941220643407275180,
    -0.337792392489817460,
  0.941155855224629190, -0.337972863076899720, 0.941091032438372780,
    -0.338153321237685930,
  0.941026175050889260, -0.338333766965541130, 0.940961283064563280,
    -0.338514200253830940,
  0.940896356481780830, -0.338694621095921190, 0.940831395304928870,
    -0.338875029485178450,
  0.940766399536396070, -0.339055425414969640, 0.940701369178571940,
    -0.339235808878661950,
  0.940636304233847590, -0.339416179869623360, 0.940571204704615190,
    -0.339596538381222110,
  0.940506070593268300, -0.339776884406826850, 0.940440901902201750,
    -0.339957217939806880,
  0.940375698633811540, -0.340137538973531720, 0.940310460790495070,
    -0.340317847501371670,
  0.940245188374650880, -0.340498143516697160, 0.940179881388678920,
    -0.340678427012879200,
  0.940114539834980280, -0.340858697983289440, 0.940049163715957370,
    -0.341038956421299720,
  0.939983753034014050, -0.341219202320282360, 0.939918307791555050,
    -0.341399435673610420,
  0.939852827990986680, -0.341579656474657160, 0.939787313634716570,
    -0.341759864716796310,
  0.939721764725153340, -0.341940060393402190, 0.939656181264707180,
    -0.342120243497849530,
  0.939590563255789270, -0.342300414023513520, 0.939524910700812230,
    -0.342480571963769800,
  0.939459223602189920, -0.342660717311994380, 0.939393501962337510,
    -0.342840850061563950,
  0.939327745783671400, -0.343020970205855540, 0.939261955068609210,
    -0.343201077738246540,
  0.939196129819569900, -0.343381172652115040, 0.939130270038973650,
    -0.343561254940839390,
  0.939064375729241950, -0.343741324597798490, 0.938998446892797540,
    -0.343921381616371700,
  0.938932483532064600, -0.344101425989938810, 0.938866485649468060,
    -0.344281457711880180,
  0.938800453247434770, -0.344461476775576540, 0.938734386328392460,
    -0.344641483174408960,
  0.938668284894770170, -0.344821476901759290, 0.938602148948998400,
    -0.345001457951009670,
  0.938535978493508560, -0.345181426315542550, 0.938469773530733800,
    -0.345361381988741220,
  0.938403534063108060, -0.345541324963989090, 0.938337260093066950,
    -0.345721255234670120,
  0.938270951623047190, -0.345901172794168990, 0.938204608655486490,
    -0.346081077635870430,
  0.938138231192824360, -0.346260969753160010, 0.938071819237501270,
    -0.346440849139423520,
  0.938005372791958840, -0.346620715788047320, 0.937938891858640320,
    -0.346800569692418290,
  0.937872376439989890, -0.346980410845923680, 0.937805826538453120,
    -0.347160239241951160,
  0.937739242156476970, -0.347340054873889140, 0.937672623296509470,
    -0.347519857735126110,
  0.937605969960999990, -0.347699647819051380, 0.937539282152399230,
    -0.347879425119054510,
  0.937472559873159250, -0.348059189628525610, 0.937405803125732960,
    -0.348238941340855260,
  0.937339011912574960, -0.348418680249434560, 0.937272186236140950,
    -0.348598406347654930,
  0.937205326098887960, -0.348778119628908420, 0.937138431503274140,
    -0.348957820086587490,
  0.937071502451759190, -0.349137507714084970, 0.937004538946803690,
    -0.349317182504794380,
  0.936937540990869900, -0.349496844452109550, 0.936870508586420960,
    -0.349676493549424760,
  0.936803441735921560, -0.349856129790134920, 0.936736340441837620,
    -0.350035753167635240,
  0.936669204706636170, -0.350215363675321580, 0.936602034532785570,
    -0.350394961306590150,
  0.936534829922755500, -0.350574546054837510, 0.936467590879016990,
    -0.350754117913461060,
  0.936400317404042060, -0.350933676875858360, 0.936333009500304180,
    -0.351113222935427460,
  0.936265667170278260, -0.351292756085567090, 0.936198290416440090,
    -0.351472276319676310,
  0.936130879241267030, -0.351651783631154570, 0.936063433647237540,
    -0.351831278013402030,
  0.935995953636831410, -0.352010759459819080, 0.935928439212529660,
    -0.352190227963806830,
  0.935860890376814640, -0.352369683518766630, 0.935793307132169900,
    -0.352549126118100460,
  0.935725689481080370, -0.352728555755210730, 0.935658037426032040,
    -0.352907972423500250,
  0.935590350969512370, -0.353087376116372480, 0.935522630114009930,
    -0.353266766827231240,
  0.935454874862014620, -0.353446144549480810, 0.935387085216017770,
    -0.353625509276525970,
  0.935319261178511610, -0.353804861001772050, 0.935251402751989920,
    -0.353984199718624770,
  0.935183509938947610, -0.354163525420490340, 0.935115582741880890,
    -0.354342838100775550,
  0.935047621163287430, -0.354522137752887430, 0.934979625205665800,
    -0.354701424370233830,
  0.934911594871516090, -0.354880697946222790, 0.934843530163339540,
    -0.355059958474262860,
  0.934775431083638700, -0.355239205947763310, 0.934707297634917440,
    -0.355418440360133650,
  0.934639129819680780, -0.355597661704783850, 0.934570927640435030,
    -0.355776869975124640,
  0.934502691099687870, -0.355956065164566850, 0.934434420199948050,
    -0.356135247266522130,
  0.934366114943725790, -0.356314416274402410, 0.934297775333532530,
    -0.356493572181620090,
  0.934229401371880820, -0.356672714981588260, 0.934160993061284530,
    -0.356851844667720300,
  0.934092550404258980, -0.357030961233429980, 0.934024073403320390,
    -0.357210064672131960,
  0.933955562060986730, -0.357389154977240940, 0.933887016379776890,
    -0.357568232142172260,
  0.933818436362210960, -0.357747296160341900, 0.933749822010810580,
    -0.357926347025166010,
  0.933681173328098410, -0.358105384730061590, 0.933612490316598540,
    -0.358284409268445850,
  0.933543772978836170, -0.358463420633736540, 0.933475021317337950,
    -0.358642418819351990,
  0.933406235334631520, -0.358821403818710860, 0.933337415033246190,
    -0.359000375625232460,
  0.933268560415712050, -0.359179334232336500, 0.933199671484560730,
    -0.359358279633443130,
  0.933130748242325230, -0.359537211821973070, 0.933061790691539380,
    -0.359716130791347570,
  0.932992798834738960, -0.359895036534988110, 0.932923772674460140,
    -0.360073929046317020,
  0.932854712213241120, -0.360252808318756890, 0.932785617453621100,
    -0.360431674345730700,
  0.932716488398140250, -0.360610527120662270, 0.932647325049340450,
    -0.360789366636975580,
  0.932578127409764420, -0.360968192888095230, 0.932508895481956590,
    -0.361147005867446250,
  0.932439629268462360, -0.361325805568454280, 0.932370328771828460,
    -0.361504591984545260,
  0.932300993994602760, -0.361683365109145840, 0.932231624939334540,
    -0.361862124935682980,
  0.932162221608574430, -0.362040871457584180, 0.932092784004874050,
    -0.362219604668277460,
  0.932023312130786490, -0.362398324561191310, 0.931953805988866010,
    -0.362577031129754760,
  0.931884265581668150, -0.362755724367397230, 0.931814690911749730,
    -0.362934404267548640,
  0.931745081981668720, -0.363113070823639470, 0.931675438793984620,
    -0.363291724029100760,
  0.931605761351257830, -0.363470363877363760, 0.931536049656050300,
    -0.363648990361860550,
  0.931466303710925090, -0.363827603476023500, 0.931396523518446600,
    -0.364006203213285470,
  0.931326709081180430, -0.364184789567079890, 0.931256860401693420,
    -0.364363362530840620,
  0.931186977482553750, -0.364541922098002120, 0.931117060326330790,
    -0.364720468261999280,
  0.931047108935595280, -0.364899001016267320, 0.930977123312918930,
    -0.365077520354242180,
  0.930907103460875130, -0.365256026269360320, 0.930837049382038150,
    -0.365434518755058390,
  0.930766961078983710, -0.365612997804773850, 0.930696838554288860,
    -0.365791463411944570,
  0.930626681810531760, -0.365969915570008740, 0.930556490850291800,
    -0.366148354272405330,
  0.930486265676149780, -0.366326779512573590, 0.930416006290687550,
    -0.366505191283953370,
  0.930345712696488470, -0.366683589579984930, 0.930275384896137150,
    -0.366861974394109060,
  0.930205022892219070, -0.367040345719767180, 0.930134626687321390,
    -0.367218703550400980,
  0.930064196284032360, -0.367397047879452710, 0.929993731684941480,
    -0.367575378700365330,
  0.929923232892639670, -0.367753696006581980, 0.929852699909718750,
    -0.367931999791546450,
  0.929782132738772190, -0.368110290048703050, 0.929711531382394370,
    -0.368288566771496570,
  0.929640895843181330, -0.368466829953372320, 0.929570226123729860,
    -0.368645079587776040,
  0.929499522226638560, -0.368823315668153910, 0.929428784154506800,
    -0.369001538187952780,
  0.929358011909935500, -0.369179747140620020, 0.929287205495526790,
    -0.369357942519603130,
  0.929216364913884040, -0.369536124318350650, 0.929145490167611720,
    -0.369714292530311240,
  0.929074581259315860, -0.369892447148934100, 0.929003638191603360,
    -0.370070588167669080,
  0.928932660967082820, -0.370248715579966360, 0.928861649588363700,
    -0.370426829379276790,
  0.928790604058057020, -0.370604929559051670, 0.928719524378774810,
    -0.370783016112742560,
  0.928648410553130520, -0.370961089033801980, 0.928577262583738850,
    -0.371139148315682570,
  0.928506080473215590, -0.371317193951837540, 0.928434864224177980,
    -0.371495225935720760,
  0.928363613839244370, -0.371673244260786520, 0.928292329321034670,
    -0.371851248920489490,
  0.928221010672169440, -0.372029239908285010, 0.928149657895271150,
    -0.372207217217628840,
  0.928078270992963140, -0.372385180841977360, 0.928006849967869970,
    -0.372563130774787250,
  0.927935394822617890, -0.372741067009515760, 0.927863905559833780,
    -0.372918989539620830,
  0.927792382182146320, -0.373096898358560640, 0.927720824692185200,
    -0.373274793459793970,
  0.927649233092581180, -0.373452674836780300, 0.927577607385966730,
    -0.373630542482979280,
  0.927505947574975180, -0.373808396391851210, 0.927434253662241300,
    -0.373986236556857030,
  0.927362525650401110, -0.374164062971457930, 0.927290763542091720,
    -0.374341875629115920,
  0.927218967339951790, -0.374519674523293210, 0.927147137046620880,
    -0.374697459647452600,
  0.927075272664740100, -0.374875230995057540, 0.927003374196951670,
    -0.375052988559571920,
  0.926931441645899130, -0.375230732334459920, 0.926859475014227160,
    -0.375408462313186590,
  0.926787474304581750, -0.375586178489217220, 0.926715439519610330,
    -0.375763880856017700,
  0.926643370661961230, -0.375941569407054420, 0.926571267734284330,
    -0.376119244135794340,
  0.926499130739230510, -0.376296905035704790, 0.926426959679452210,
    -0.376474552100253770,
  0.926354754557602860, -0.376652185322909560, 0.926282515376337210,
    -0.376829804697141280,
  0.926210242138311380, -0.377007410216418260, 0.926137934846182560,
    -0.377185001874210450,
  0.926065593502609310, -0.377362579663988340, 0.925993218110251480,
    -0.377540143579222940,
  0.925920808671770070, -0.377717693613385640, 0.925848365189827270,
    -0.377895229759948490,
  0.925775887667086740, -0.378072752012383990, 0.925703376106213230,
    -0.378250260364165200,
  0.925630830509872720, -0.378427754808765560, 0.925558250880732740,
    -0.378605235339659120,
  0.925485637221461490, -0.378782701950320540, 0.925412989534729060,
    -0.378960154634224720,
  0.925340307823206310, -0.379137593384847320, 0.925267592089565660,
    -0.379315018195664430,
  0.925194842336480530, -0.379492429060152630, 0.925122058566625880,
    -0.379669825971788940,
  0.925049240782677580, -0.379847208924051160, 0.924976388987313160,
    -0.380024577910417270,
  0.924903503183210910, -0.380201932924366050, 0.924830583373050800,
    -0.380379273959376600,
  0.924757629559513910, -0.380556601008928520, 0.924684641745282420,
    -0.380733914066502140,
  0.924611619933039970, -0.380911213125578070, 0.924538564125471420,
    -0.381088498179637520,
  0.924465474325262600, -0.381265769222162380, 0.924392350535101050,
    -0.381443026246634730,
  0.924319192757675160, -0.381620269246537360, 0.924246000995674890,
    -0.381797498215353640,
  0.924172775251791200, -0.381974713146567220, 0.924099515528716280,
    -0.382151914033662610,
  0.924026221829143850, -0.382329100870124510, 0.923952894155768640,
    -0.382506273649438230,
  0.923879532511286740, -0.382683432365089780, 0.923806136898395410,
    -0.382860577010565420,
  0.923732707319793290, -0.383037707579352020, 0.923659243778179980,
    -0.383214824064937180,
  0.923585746276256670, -0.383391926460808660, 0.923512214816725630,
    -0.383569014760454910,
  0.923438649402290370, -0.383746088957365010, 0.923365050035655720,
    -0.383923149045028390,
  0.923291416719527640, -0.384100195016935040, 0.923217749456613500,
    -0.384277226866575510,
  0.923144048249621930, -0.384454244587440820, 0.923070313101262420,
    -0.384631248173022580,
  0.922996544014246250, -0.384808237616812880, 0.922922740991285680,
    -0.384985212912304200,
  0.922848904035094120, -0.385162174052989860, 0.922775033148386380,
    -0.385339121032363340,
  0.922701128333878630, -0.385516053843918850, 0.922627189594287910,
    -0.385692972481151140,
  0.922553216932332830, -0.385869876937555310, 0.922479210350733210,
    -0.386046767206627170,
  0.922405169852209880, -0.386223643281862980, 0.922331095439485440,
    -0.386400505156759440,
  0.922256987115283030, -0.386577352824813920, 0.922182844882327600,
    -0.386754186279524180,
  0.922108668743345180, -0.386931005514388580, 0.922034458701062820,
    -0.387107810522905990,
  0.921960214758209220, -0.387284601298575840, 0.921885936917513970,
    -0.387461377834897870,
  0.921811625181708120, -0.387638140125372730, 0.921737279553523910,
    -0.387814888163501180,
  0.921662900035694730, -0.387991621942784860, 0.921588486630955490,
    -0.388168341456725740,
  0.921514039342042010, -0.388345046698826250, 0.921439558171691430,
    -0.388521737662589570,
  0.921365043122642340, -0.388698414341519190, 0.921290494197634540,
    -0.388875076729119250,
  0.921215911399408730, -0.389051724818894380, 0.921141294730707270,
    -0.389228358604349730,
  0.921066644194273640, -0.389404978078990940, 0.920991959792852310,
    -0.389581583236324300,
  0.920917241529189520, -0.389758174069856410, 0.920842489406032190,
    -0.389934750573094730,
  0.920767703426128790, -0.390111312739546910, 0.920692883592229120,
    -0.390287860562721190,
  0.920618029907083970, -0.390464394036126590, 0.920543142373445480,
    -0.390640913153272430,
  0.920468220994067110, -0.390817417907668500, 0.920393265771703550,
    -0.390993908292825380,
  0.920318276709110590, -0.391170384302253870, 0.920243253809045370,
    -0.391346845929465560,
  0.920168197074266340, -0.391523293167972410, 0.920093106507533180,
    -0.391699726011286940,
  0.920017982111606570, -0.391876144452922350, 0.919942823889248640,
    -0.392052548486392090,
  0.919867631843222950, -0.392228938105210310, 0.919792405976293860,
    -0.392405313302891690,
  0.919717146291227360, -0.392581674072951470, 0.919641852790790470,
    -0.392758020408905280,
  0.919566525477751530, -0.392934352304269490, 0.919491164354880100,
    -0.393110669752560760,
  0.919415769424947070, -0.393286972747296400, 0.919340340690724340,
    -0.393463261281994330,
  0.919264878154985370, -0.393639535350172880, 0.919189381820504470,
    -0.393815794945351020,
  0.919113851690057770, -0.393992040061048100, 0.919038287766422050,
    -0.394168270690784080,
  0.918962690052375630, -0.394344486828079600, 0.918887058550697970,
    -0.394520688466455600,
  0.918811393264170050, -0.394696875599433560, 0.918735694195573550,
    -0.394873048220535760,
  0.918659961347691900, -0.395049206323284770, 0.918584194723309540,
    -0.395225349901203670,
  0.918508394325212250, -0.395401478947816350, 0.918432560156186910,
    -0.395577593456646840,
  0.918356692219021720, -0.395753693421220080, 0.918280790516506130,
    -0.395929778835061250,
  0.918204855051430900, -0.396105849691696270, 0.918128885826588030,
    -0.396281905984651520,
  0.918052882844770380, -0.396457947707453910, 0.917976846108772730,
    -0.396633974853630830,
  0.917900775621390500, -0.396809987416710310, 0.917824671385420570,
    -0.396985985390220900,
  0.917748533403661250, -0.397161968767691610, 0.917672361678911860,
    -0.397337937542652060,
  0.917596156213972950, -0.397513891708632330, 0.917519917011646260,
    -0.397689831259163180,
  0.917443644074735220, -0.397865756187775750, 0.917367337406043930,
    -0.398041666488001770,
  0.917290997008377910, -0.398217562153373560, 0.917214622884544250,
    -0.398393443177423980,
  0.917138215037350710, -0.398569309553686300, 0.917061773469606820,
    -0.398745161275694430,
  0.916985298184123000, -0.398920998336982910, 0.916908789183710990,
    -0.399096820731086540,
  0.916832246471183890, -0.399272628451540990, 0.916755670049355990,
    -0.399448421491882140,
  0.916679059921042700, -0.399624199845646790, 0.916602416089060790,
    -0.399799963506371980,
  0.916525738556228210, -0.399975712467595330, 0.916449027325364150,
    -0.400151446722855130,
  0.916372282399289140, -0.400327166265690090, 0.916295503780824800,
    -0.400502871089639500,
  0.916218691472794220, -0.400678561188243240, 0.916141845478021350,
    -0.400854236555041650,
  0.916064965799331720, -0.401029897183575620, 0.915988052439551950,
    -0.401205543067386710,
  0.915911105401509880, -0.401381174200016790, 0.915834124688034710,
    -0.401556790575008540,
  0.915757110301956720, -0.401732392185905010, 0.915680062246107650,
    -0.401907979026249700,
  0.915602980523320230, -0.402083551089586990, 0.915525865136428530,
    -0.402259108369461490,
  0.915448716088267830, -0.402434650859418430, 0.915371533381674760,
    -0.402610178553003680,
  0.915294317019487050, -0.402785691443763530, 0.915217067004543860,
    -0.402961189525244900,
  0.915139783339685260, -0.403136672790995300, 0.915062466027752760,
    -0.403312141234562550,
  0.914985115071589310, -0.403487594849495310, 0.914907730474038730,
    -0.403663033629342640,
  0.914830312237946200, -0.403838457567654070, 0.914752860366158220,
    -0.404013866657979890,
  0.914675374861522390, -0.404189260893870690, 0.914597855726887790,
    -0.404364640268877810,
  0.914520302965104450, -0.404540004776553000, 0.914442716579023870,
    -0.404715354410448650,
  0.914365096571498560, -0.404890689164117580, 0.914287442945382440,
    -0.405066009031113340,
  0.914209755703530690, -0.405241314004989860, 0.914132034848799460,
    -0.405416604079301630,
  0.914054280384046570, -0.405591879247603870, 0.913976492312130630,
    -0.405767139503452060,
  0.913898670635911680, -0.405942384840402510, 0.913820815358251100,
    -0.406117615252011840,
  0.913742926482011390, -0.406292830731837360, 0.913665004010056350,
    -0.406468031273437000,
  0.913587047945250810, -0.406643216870369030, 0.913509058290461140,
    -0.406818387516192310,
  0.913431035048554720, -0.406993543204466510, 0.913352978222400250,
    -0.407168683928751550,
  0.913274887814867760, -0.407343809682607970, 0.913196763828828200,
    -0.407518920459596920,
  0.913118606267154240, -0.407694016253280110, 0.913040415132719160,
    -0.407869097057219800,
  0.912962190428398210, -0.408044162864978690, 0.912883932157067200,
    -0.408219213670120100,
  0.912805640321603500, -0.408394249466208000, 0.912727314924885900,
    -0.408569270246806780,
  0.912648955969793900, -0.408744276005481360, 0.912570563459208730,
    -0.408919266735797430,
  0.912492137396012650, -0.409094242431320980, 0.912413677783089020,
    -0.409269203085618590,
  0.912335184623322750, -0.409444148692257590, 0.912256657919599760,
    -0.409619079244805670,
  0.912178097674807180, -0.409793994736831150, 0.912099503891833470,
    -0.409968895161902880,
  0.912020876573568340, -0.410143780513590240, 0.911942215722902570,
    -0.410318650785463260,
  0.911863521342728520, -0.410493505971092410, 0.911784793435939430,
    -0.410668346064048730,
  0.911706032005429880, -0.410843171057903910, 0.911627237054095650,
    -0.411017980946230210,
  0.911548408584833990, -0.411192775722600160, 0.911469546600543020,
    -0.411367555380587220,
  0.911390651104122430, -0.411542319913765220, 0.911311722098472780,
    -0.411717069315708560,
  0.911232759586496190, -0.411891803579992170, 0.911153763571095900,
    -0.412066522700191560,
  0.911074734055176360, -0.412241226669882890, 0.910995671041643140,
    -0.412415915482642730,
  0.910916574533403360, -0.412590589132048210, 0.910837444533365010,
    -0.412765247611677270,
  0.910758281044437570, -0.412939890915108080, 0.910679084069531570,
    -0.413114519035919450,
  0.910599853611558930, -0.413289131967690960, 0.910520589673432750,
    -0.413463729704002410,
  0.910441292258067250, -0.413638312238434500, 0.910361961368377990,
    -0.413812879564568300,
  0.910282597007281760, -0.413987431675985400, 0.910203199177696540,
    -0.414161968566268080,
  0.910123767882541680, -0.414336490228999100, 0.910044303124737500,
    -0.414510996657761750,
  0.909964804907205660, -0.414685487846140010, 0.909885273232869160,
    -0.414859963787718330,
  0.909805708104652220, -0.415034424476081630, 0.909726109525480160,
    -0.415208869904815590,
  0.909646477498279540, -0.415383300067506230, 0.909566812025978330,
    -0.415557714957740410,
  0.909487113111505430, -0.415732114569105360, 0.909407380757791260,
    -0.415906498895188770,
  0.909327614967767260, -0.416080867929579210, 0.909247815744366310,
    -0.416255221665865480,
  0.909167983090522380, -0.416429560097637150, 0.909088117009170580,
    -0.416603883218484350,
  0.909008217503247450, -0.416778191021997650, 0.908928284575690640,
    -0.416952483501768170,
  0.908848318229439120, -0.417126760651387870, 0.908768318467432890,
    -0.417301022464448890,
  0.908688285292613360, -0.417475268934544290, 0.908608218707923190,
    -0.417649500055267410,
  0.908528118716306120, -0.417823715820212270, 0.908447985320707250,
    -0.417997916222973550,
  0.908367818524072890, -0.418172101257146320, 0.908287618329350450,
    -0.418346270916326260,
  0.908207384739488700, -0.418520425194109700, 0.908127117757437600,
    -0.418694564084093560,
  0.908046817386148340, -0.418868687579875050, 0.907966483628573350,
    -0.419042795675052370,
  0.907886116487666260, -0.419216888363223910, 0.907805715966381930,
    -0.419390965637988890,
  0.907725282067676440, -0.419565027492946880, 0.907644814794507200,
    -0.419739073921698180,
  0.907564314149832630, -0.419913104917843620, 0.907483780136612570,
    -0.420087120474984530,
  0.907403212757808110, -0.420261120586722880, 0.907322612016381420,
    -0.420435105246661170,
  0.907241977915295820, -0.420609074448402510, 0.907161310457516250,
    -0.420783028185550520,
  0.907080609646008450, -0.420956966451709440, 0.906999875483739610,
    -0.421130889240483970,
  0.906919107973678140, -0.421304796545479640, 0.906838307118793430,
    -0.421478688360302280,
  0.906757472922056550, -0.421652564678558330, 0.906676605386439460,
    -0.421826425493854910,
  0.906595704514915330, -0.422000270799799680, 0.906514770310458800,
    -0.422174100590000770,
  0.906433802776045460, -0.422347914858067050, 0.906352801914652400,
    -0.422521713597607820,
  0.906271767729257660, -0.422695496802232950, 0.906190700222840650,
    -0.422869264465553060,
  0.906109599398381980, -0.423043016581179040, 0.906028465258863600,
    -0.423216753142722610,
  0.905947297807268460, -0.423390474143796050, 0.905866097046580940,
    -0.423564179578011960,
  0.905784862979786550, -0.423737869438983840, 0.905703595609872010,
    -0.423911543720325580,
  0.905622294939825270, -0.424085202415651560, 0.905540960972635590,
    -0.424258845518576950,
  0.905459593711293250, -0.424432473022717420, 0.905378193158790090,
    -0.424606084921689110,
  0.905296759318118820, -0.424779681209108810, 0.905215292192273590,
    -0.424953261878593890,
  0.905133791784249690, -0.425126826923762360, 0.905052258097043590,
    -0.425300376338232640,
  0.904970691133653250, -0.425473910115623800, 0.904889090897077470,
    -0.425647428249555590,
  0.904807457390316540, -0.425820930733648240, 0.904725790616371930,
    -0.425994417561522400,
  0.904644090578246240, -0.426167888726799620, 0.904562357278943300,
    -0.426341344223101830,
  0.904480590721468250, -0.426514784044051520, 0.904398790908827350,
    -0.426688208183271860,
  0.904316957844028320, -0.426861616634386430, 0.904235091530079750,
    -0.427035009391019680,
  0.904153191969991780, -0.427208386446796320, 0.904071259166775440,
    -0.427381747795341770,
  0.903989293123443340, -0.427555093430282080, 0.903907293843009050,
    -0.427728423345243800,
  0.903825261328487510, -0.427901737533854080, 0.903743195582894620,
    -0.428075035989740730,
  0.903661096609247980, -0.428248318706531960, 0.903578964410566070,
    -0.428421585677856650,
  0.903496798989868450, -0.428594836897344400, 0.903414600350176290,
    -0.428768072358625070,
  0.903332368494511820, -0.428941292055329490, 0.903250103425898400,
    -0.429114495981088750,
  0.903167805147360720, -0.429287684129534610, 0.903085473661924600,
    -0.429460856494299490,
  0.903003108972617150, -0.429634013069016380, 0.902920711082466740,
    -0.429807153847318710,
  0.902838279994502830, -0.429980278822840620, 0.902755815711756120,
    -0.430153387989216870,
  0.902673318237258830, -0.430326481340082610, 0.902590787574043870,
    -0.430499558869073820,
  0.902508223725145940, -0.430672620569826800, 0.902425626693600380,
    -0.430845666435978660,
  0.902342996482444200, -0.431018696461167030, 0.902260333094715540,
    -0.431191710639029950,
  0.902177636533453620, -0.431364708963206330, 0.902094906801698900,
    -0.431537691427335500,
  0.902012143902493180, -0.431710658025057260, 0.901929347838879460,
    -0.431883608750012250,
  0.901846518613901750, -0.432056543595841500, 0.901763656230605730,
    -0.432229462556186720,
  0.901680760692037730, -0.432402365624690140, 0.901597832001245660,
    -0.432575252794994650,
  0.901514870161278740, -0.432748124060743700, 0.901431875175186970,
    -0.432920979415581280,
  0.901348847046022030, -0.433093818853151960, 0.901265785776836580,
    -0.433266642367100940,
  0.901182691370684520, -0.433439449951074090, 0.901099563830620950,
    -0.433612241598717580,
  0.901016403159702330, -0.433785017303678520, 0.900933209360986200,
    -0.433957777059604420,
  0.900849982437531450, -0.434130520860143310, 0.900766722392397860,
    -0.434303248698943990,
  0.900683429228646970, -0.434475960569655650, 0.900600102949340900,
    -0.434648656465928320,
  0.900516743557543520, -0.434821336381412290, 0.900433351056319830,
    -0.434994000309758710,
  0.900349925448735600, -0.435166648244619260, 0.900266466737858480,
    -0.435339280179646070,
  0.900182974926756810, -0.435511896108492000, 0.900099450018500450,
    -0.435684496024810460,
  0.900015892016160280, -0.435857079922255470, 0.899932300922808510,
    -0.436029647794481560,
  0.899848676741518580, -0.436202199635143950, 0.899765019475365140,
    -0.436374735437898340,
  0.899681329127423930, -0.436547255196401200, 0.899597605700772180,
    -0.436719758904309360,
  0.899513849198487980, -0.436892246555280360, 0.899430059623650860,
    -0.437064718142972370,
  0.899346236979341570, -0.437237173661044090, 0.899262381268642000,
    -0.437409613103154790,
  0.899178492494635330, -0.437582036462964400, 0.899094570660405770,
    -0.437754443734133410,
  0.899010615769039070, -0.437926834910322860, 0.898926627823621870,
    -0.438099209985194470,
  0.898842606827242370, -0.438271568952410430, 0.898758552782989440,
    -0.438443911805633690,
  0.898674465693953820, -0.438616238538527660, 0.898590345563227030,
    -0.438788549144756290,
  0.898506192393901950, -0.438960843617984320, 0.898422006189072530,
    -0.439133121951876930,
  0.898337786951834310, -0.439305384140099950, 0.898253534685283570,
    -0.439477630176319800,
  0.898169249392518080, -0.439649860054203480, 0.898084931076636780,
    -0.439822073767418500,
  0.898000579740739880, -0.439994271309633260, 0.897916195387928660,
    -0.440166452674516320,
  0.897831778021305650, -0.440338617855737250, 0.897747327643974690,
    -0.440510766846965940,
  0.897662844259040860, -0.440682899641872900, 0.897578327869610230,
    -0.440855016234129430,
  0.897493778478790310, -0.441027116617407230, 0.897409196089689720,
    -0.441199200785378660,
  0.897324580705418320, -0.441371268731716670, 0.897239932329087160,
    -0.441543320450094870,
  0.897155250963808550, -0.441715355934187310, 0.897070536612695870,
    -0.441887375177668850,
  0.896985789278863970, -0.442059378174214700, 0.896901008965428790,
    -0.442231364917500980,
  0.896816195675507300, -0.442403335401204080, 0.896731349412217880,
    -0.442575289619001170,
  0.896646470178680150, -0.442747227564570020, 0.896561557978014960,
    -0.442919149231588980,
  0.896476612813344120, -0.443091054613736880, 0.896391634687790820,
    -0.443262943704693320,
  0.896306623604479550, -0.443434816498138480, 0.896221579566536030,
    -0.443606672987752970,
  0.896136502577086770, -0.443778513167218220, 0.896051392639260150,
    -0.443950337030216140,
  0.895966249756185220, -0.444122144570429200, 0.895881073930992370,
    -0.444293935781540580,
  0.895795865166813530, -0.444465710657234000, 0.895710623466781320,
    -0.444637469191193790,
  0.895625348834030110, -0.444809211377104880, 0.895540041271694950,
    -0.444980937208652730,
  0.895454700782912450, -0.445152646679523640, 0.895369327370820310,
    -0.445324339783404190,
  0.895283921038557580, -0.445496016513981740, 0.895198481789264200,
    -0.445667676864944300,
  0.895113009626081760, -0.445839320829980290, 0.895027504552152630,
    -0.446010948402778940,
  0.894941966570620750, -0.446182559577030070, 0.894856395684631050,
    -0.446354154346423840,
  0.894770791897329550, -0.446525732704651350, 0.894685155211863980,
    -0.446697294645404090,
  0.894599485631382700, -0.446868840162374160, 0.894513783159035620,
    -0.447040369249254440,
  0.894428047797973800, -0.447211881899738320, 0.894342279551349480,
    -0.447383378107519600,
  0.894256478422316040, -0.447554857866293010, 0.894170644414028270,
    -0.447726321169753580,
  0.894084777529641990, -0.447897768011597310, 0.893998877772314240,
    -0.448069198385520400,
  0.893912945145203250, -0.448240612285219890, 0.893826979651468620,
    -0.448412009704393430,
  0.893740981294271040, -0.448583390636739240, 0.893654950076772540,
    -0.448754755075955970,
  0.893568886002135910, -0.448926103015743260, 0.893482789073525850,
    -0.449097434449801050,
  0.893396659294107720, -0.449268749371829920, 0.893310496667048200,
    -0.449440047775531150,
  0.893224301195515320, -0.449611329654606540, 0.893138072882678320,
    -0.449782595002758690,
  0.893051811731707450, -0.449953843813690520, 0.892965517745774370,
    -0.450125076081105690,
  0.892879190928051680, -0.450296291798708610, 0.892792831281713610,
    -0.450467490960204110,
  0.892706438809935390, -0.450638673559297600, 0.892620013515893150,
    -0.450809839589695280,
  0.892533555402764580, -0.450980989045103860, 0.892447064473728680,
    -0.451152121919230600,
  0.892360540731965360, -0.451323238205783520, 0.892273984180655840,
    -0.451494337898471100,
  0.892187394822982480, -0.451665420991002490, 0.892100772662129060,
    -0.451836487477087490,
  0.892014117701280470, -0.452007537350436420, 0.891927429943622510,
    -0.452178570604760350,
  0.891840709392342720, -0.452349587233770890, 0.891753956050629460,
    -0.452520587231180050,
  0.891667169921672280, -0.452691570590700920, 0.891580351008662290,
    -0.452862537306046750,
  0.891493499314791380, -0.453033487370931580, 0.891406614843252900,
    -0.453204420779070190,
  0.891319697597241390, -0.453375337524177750, 0.891232747579952520,
    -0.453546237599970090,
  0.891145764794583180, -0.453717121000163870, 0.891058749244331590,
    -0.453887987718476050,
  0.890971700932396860, -0.454058837748624430, 0.890884619861979530,
    -0.454229671084327320,
  0.890797506036281490, -0.454400487719303580, 0.890710359458505630,
    -0.454571287647272950,
  0.890623180131855930, -0.454742070861955450, 0.890535968059537830,
    -0.454912837357071940,
  0.890448723244757880, -0.455083587126343840, 0.890361445690723840,
    -0.455254320163493100,
  0.890274135400644600, -0.455425036462242360, 0.890186792377730240,
    -0.455595736016314980,
  0.890099416625192320, -0.455766418819434640, 0.890012008146243260,
    -0.455937084865326030,
  0.889924566944096720, -0.456107734147714110, 0.889837093021967900,
    -0.456278366660324620,
  0.889749586383072780, -0.456448982396883920, 0.889662047030628900,
    -0.456619581351118910,
  0.889574474967854580, -0.456790163516757160, 0.889486870197969900,
    -0.456960728887526980,
  0.889399232724195520, -0.457131277457156980, 0.889311562549753850,
    -0.457301809219376630,
  0.889223859677868210, -0.457472324167916060, 0.889136124111763240,
    -0.457642822296505770,
  0.889048355854664570, -0.457813303598877170, 0.888960554909799310,
    -0.457983768068762120,
  0.888872721280395630, -0.458154215699893060, 0.888784854969682850,
    -0.458324646486003240,
  0.888696955980891600, -0.458495060420826270, 0.888609024317253860,
    -0.458665457498096560,
  0.888521059982002260, -0.458835837711549120, 0.888433062978371320,
    -0.459006201054919630,
  0.888345033309596350, -0.459176547521944090, 0.888256970978913870,
    -0.459346877106359630,
  0.888168875989561730, -0.459517189801903480, 0.888080748344778900,
    -0.459687485602313870,
  0.887992588047805560, -0.459857764501329540, 0.887904395101883240,
    -0.460028026492689650,
  0.887816169510254440, -0.460198271570134320, 0.887727911276163020,
    -0.460368499727404010,
  0.887639620402853930, -0.460538710958240010, 0.887551296893573370,
    -0.460708905256384080,
  0.887462940751568840, -0.460879082615578690, 0.887374551980088850,
    -0.461049243029566900,
  0.887286130582383150, -0.461219386492092380, 0.887197676561702900,
    -0.461389512996899450,
  0.887109189921300170, -0.461559622537733080, 0.887020670664428360,
    -0.461729715108338770,
  0.886932118794342190, -0.461899790702462730, 0.886843534314297410,
    -0.462069849313851750,
  0.886754917227550840, -0.462239890936253340, 0.886666267537361000,
    -0.462409915563415430,
  0.886577585246987040, -0.462579923189086810, 0.886488870359689600,
    -0.462749913807016740,
  0.886400122878730600, -0.462919887410955080, 0.886311342807372780,
    -0.463089843994652530,
  0.886222530148880640, -0.463259783551860150, 0.886133684906519340,
    -0.463429706076329830,
  0.886044807083555600, -0.463599611561814010, 0.885955896683257030,
    -0.463769500002065630,
  0.885866953708892790, -0.463939371390838520, 0.885777978163732940,
    -0.464109225721886950,
  0.885688970051048960, -0.464279062988965760, 0.885599929374113360,
    -0.464448883185830660,
  0.885510856136199950, -0.464618686306237820, 0.885421750340583680,
    -0.464788472343943990,
  0.885332611990540590, -0.464958241292706690, 0.885243441089348270,
    -0.465127993146283950,
  0.885154237640285110, -0.465297727898434600, 0.885065001646630930,
    -0.465467445542917800,
  0.884975733111666660, -0.465637146073493660, 0.884886432038674560,
    -0.465806829483922710,
  0.884797098430937790, -0.465976495767966180, 0.884707732291741040,
    -0.466146144919385890,
  0.884618333624369920, -0.466315776931944430, 0.884528902432111460,
    -0.466485391799404900,
  0.884439438718253810, -0.466654989515530920, 0.884349942486086120,
    -0.466824570074086950,
  0.884260413738899190, -0.466994133468838000, 0.884170852479984500,
    -0.467163679693549770,
  0.884081258712634990, -0.467333208741988420, 0.883991632440144890,
    -0.467502720607920920,
  0.883901973665809470, -0.467672215285114770, 0.883812282392925090,
    -0.467841692767338170,
  0.883722558624789660, -0.468011153048359830, 0.883632802364701870,
    -0.468180596121949290,
  0.883543013615961880, -0.468350021981876530, 0.883453192381870920,
    -0.468519430621912310,
  0.883363338665731580, -0.468688822035827900, 0.883273452470847430,
    -0.468858196217395330,
  0.883183533800523390, -0.469027553160387130, 0.883093582658065370,
    -0.469196892858576580,
  0.883003599046780830, -0.469366215305737520, 0.882913582969978020,
    -0.469535520495644450,
  0.882823534430966620, -0.469704808422072460, 0.882733453433057650,
    -0.469874079078797360,
  0.882643339979562790, -0.470043332459595620, 0.882553194073795510,
    -0.470212568558244170,
  0.882463015719070150, -0.470381787368520650, 0.882372804918702290,
    -0.470550988884203550,
  0.882282561676008710, -0.470720173099071600, 0.882192285994307430,
    -0.470889340006904520,
  0.882101977876917580, -0.471058489601482500, 0.882011637327159590,
    -0.471227621876586340,
  0.881921264348355050, -0.471396736825997640, 0.881830858943826620,
    -0.471565834443498420,
  0.881740421116898320, -0.471734914722871430, 0.881649950870895260,
    -0.471903977657900210,
  0.881559448209143780, -0.472073023242368660, 0.881468913134971440,
    -0.472242051470061490,
  0.881378345651706920, -0.472411062334764040, 0.881287745762680100,
    -0.472580055830262250,
  0.881197113471222090, -0.472749031950342790, 0.881106448780665130,
    -0.472917990688792760,
  0.881015751694342870, -0.473086932039400050, 0.880925022215589880,
    -0.473255855995953320,
  0.880834260347742040, -0.473424762552241530, 0.880743466094136340,
    -0.473593651702054530,
  0.880652639458111010, -0.473762523439182850, 0.880561780443005700,
    -0.473931377757417450,
  0.880470889052160750, -0.474100214650549970, 0.880379965288918150,
    -0.474269034112372980,
  0.880289009156621010, -0.474437836136679230, 0.880198020658613190,
    -0.474606620717262560,
  0.880106999798240360, -0.474775387847917120, 0.880015946578849070,
    -0.474944137522437800,
  0.879924861003786860, -0.475112869734620300, 0.879833743076402940,
    -0.475281584478260740,
  0.879742592800047410, -0.475450281747155870, 0.879651410178071580,
    -0.475618961535103300,
  0.879560195213827890, -0.475787623835901120, 0.879468947910670210,
    -0.475956268643348060,
  0.879377668271953290, -0.476124895951243580, 0.879286356301033250,
    -0.476293505753387690,
  0.879195012001267480, -0.476462098043581190, 0.879103635376014330,
    -0.476630672815625320,
  0.879012226428633530, -0.476799230063322090, 0.878920785162485840,
    -0.476967769780474170,
  0.878829311580933360, -0.477136291960884810, 0.878737805687339390,
    -0.477304796598357890,
  0.878646267485068130, -0.477473283686698060, 0.878554696977485450,
    -0.477641753219710470,
  0.878463094167957870, -0.477810205191200990, 0.878371459059853480,
    -0.477978639594976160,
  0.878279791656541580, -0.478147056424843010, 0.878188091961392250,
    -0.478315455674609480,
  0.878096359977777130, -0.478483837338083970, 0.878004595709069080,
    -0.478652201409075500,
  0.877912799158641840, -0.478820547881393890, 0.877820970329870500,
    -0.478988876748849490,
  0.877729109226131570, -0.479157188005253310, 0.877637215850802230,
    -0.479325481644417070,
  0.877545290207261350, -0.479493757660153010, 0.877453332298888560,
    -0.479662016046274180,
  0.877361342129065140, -0.479830256796594190, 0.877269319701173170,
    -0.479998479904927280,
  0.877177265018595940, -0.480166685365088390, 0.877085178084718420,
    -0.480334873170893020,
  0.876993058902925890, -0.480503043316157510, 0.876900907476605650,
    -0.480671195794698640,
  0.876808723809145650, -0.480839330600333960, 0.876716507903935400,
    -0.481007447726881590,
  0.876624259764365310, -0.481175547168160300, 0.876531979393827100,
    -0.481343628917989710,
  0.876439666795713610, -0.481511692970189860, 0.876347321973419020,
    -0.481679739318581490,
  0.876254944930338510, -0.481847767956986030, 0.876162535669868460,
    -0.482015778879225590,
  0.876070094195406600, -0.482183772079122720, 0.875977620510351770,
    -0.482351747550500980,
  0.875885114618103810, -0.482519705287184350, 0.875792576522063880,
    -0.482687645282997460,
  0.875700006225634600, -0.482855567531765670, 0.875607403732219350,
    -0.483023472027314880,
  0.875514769045222850, -0.483191358763471860, 0.875422102168050940,
    -0.483359227734063810,
  0.875329403104110890, -0.483527078932918740, 0.875236671856810870,
    -0.483694912353865140,
  0.875143908429560360, -0.483862727990732270, 0.875051112825769970,
    -0.484030525837350010,
  0.874958285048851650, -0.484198305887549030, 0.874865425102218320,
    -0.484366068135160420,
  0.874772532989284150, -0.484533812574016180, 0.874679608713464510,
    -0.484701539197948670,
  0.874586652278176110, -0.484869248000791060, 0.874493663686836560,
    -0.485036938976377290,
  0.874400642942864790, -0.485204612118541820, 0.874307590049680950,
    -0.485372267421119770,
  0.874214505010706300, -0.485539904877946960, 0.874121387829363330,
    -0.485707524482859750,
  0.874028238509075740, -0.485875126229695250, 0.873935057053268240,
    -0.486042710112291330,
  0.873841843465366860, -0.486210276124486420, 0.873748597748798870,
    -0.486377824260119440,
  0.873655319906992630, -0.486545354513030270, 0.873562009943377850,
    -0.486712866877059170,
  0.873468667861384880, -0.486880361346047340, 0.873375293664446000,
    -0.487047837913836380,
  0.873281887355994210, -0.487215296574268760, 0.873188448939463790,
    -0.487382737321187360,
  0.873094978418290090, -0.487550160148436000, 0.873001475795909920,
    -0.487717565049858800,
  0.872907941075761080, -0.487884952019301040, 0.872814374261282390,
    -0.488052321050608250,
  0.872720775355914300, -0.488219672137626790, 0.872627144363097960,
    -0.488387005274203530,
  0.872533481286276170, -0.488554320454186180, 0.872439786128892280,
    -0.488721617671423080,
  0.872346058894391540, -0.488888896919763170, 0.872252299586219860,
    -0.489056158193056030,
  0.872158508207824480, -0.489223401485151980, 0.872064684762653860,
    -0.489390626789901920,
  0.871970829254157810, -0.489557834101157440, 0.871876941685786890,
    -0.489725023412770910,
  0.871783022060993120, -0.489892194718595190, 0.871689070383229740,
    -0.490059348012483850,
  0.871595086655950980, -0.490226483288291160, 0.871501070882612530,
    -0.490393600539871970,
  0.871407023066670950, -0.490560699761082020, 0.871312943211584030,
    -0.490727780945777400,
  0.871218831320811020, -0.490894844087815090, 0.871124687397811900,
    -0.491061889181052650,
  0.871030511446048260, -0.491228916219348280, 0.870936303468982760,
    -0.491395925196560780,
  0.870842063470078980, -0.491562916106549900, 0.870747791452801790,
    -0.491729888943175760,
  0.870653487420617430, -0.491896843700299290, 0.870559151376993250,
    -0.492063780371782000,
  0.870464783325397670, -0.492230698951486020, 0.870370383269300270,
    -0.492397599433274380,
  0.870275951212171940, -0.492564481811010590, 0.870181487157484560,
    -0.492731346078558840,
  0.870086991108711460, -0.492898192229784040, 0.869992463069326870,
    -0.493065020258551700,
  0.869897903042806340, -0.493231830158727900, 0.869803311032626650,
    -0.493398621924179770,
  0.869708687042265670, -0.493565395548774770, 0.869614031075202300,
    -0.493732151026381020,
  0.869519343134916860, -0.493898888350867480, 0.869424623224890890,
    -0.494065607516103570,
  0.869329871348606840, -0.494232308515959670, 0.869235087509548370,
    -0.494398991344306650,
  0.869140271711200560, -0.494565655995015950, 0.869045423957049530,
    -0.494732302461959870,
  0.868950544250582380, -0.494898930739011260, 0.868855632595287860,
    -0.495065540820043560,
  0.868760688994655310, -0.495232132698931180, 0.868665713452175690,
    -0.495398706369549020,
  0.868570705971340900, -0.495565261825772540, 0.868475666555644120,
    -0.495731799061477960,
  0.868380595208579800, -0.495898318070542190, 0.868285491933643350,
    -0.496064818846842890,
  0.868190356734331310, -0.496231301384258250, 0.868095189614141670,
    -0.496397765676667160,
  0.867999990576573510, -0.496564211717949290, 0.867904759625126920,
    -0.496730639501984760,
  0.867809496763303320, -0.496897049022654470, 0.867714201994605140,
    -0.497063440273840250,
  0.867618875322536230, -0.497229813249424220, 0.867523516750601460,
    -0.497396167943289280,
  0.867428126282306920, -0.497562504349319150, 0.867332703921159800,
    -0.497728822461397940,
  0.867237249670668400, -0.497895122273410870, 0.867141763534342470,
    -0.498061403779243410,
  0.867046245515692650, -0.498227666972781870, 0.866950695618230900,
    -0.498393911847913210,
  0.866855113845470430, -0.498560138398525140, 0.866759500200925400,
    -0.498726346618505900,
  0.866663854688111130, -0.498892536501744590, 0.866568177310544470,
    -0.499058708042130870,
  0.866472468071743050, -0.499224861233555080, 0.866376726975225830,
    -0.499390996069908170,
  0.866280954024512990, -0.499557112545081840, 0.866185149223125840,
    -0.499723210652968540,
  0.866089312574586770, -0.499889290387461330, 0.865993444082419520,
    -0.500055351742453860,
  0.865897543750148820, -0.500221394711840680, 0.865801611581300760,
    -0.500387419289516580,
  0.865705647579402380, -0.500553425469377420, 0.865609651747981990,
    -0.500719413245319880,
  0.865513624090569090, -0.500885382611240710, 0.865417564610694410,
    -0.501051333561038040,
  0.865321473311889800, -0.501217266088609950, 0.865225350197688200,
    -0.501383180187855770,
  0.865129195271623800, -0.501549075852675390, 0.865033008537231860,
    -0.501714953076969120,
  0.864936789998049020, -0.501880811854638290, 0.864840539657612870,
    -0.502046652179584660,
  0.864744257519462380, -0.502212474045710790, 0.864647943587137480,
    -0.502378277446919760,
  0.864551597864179340, -0.502544062377115690, 0.864455220354130360,
    -0.502709828830202990,
  0.864358811060534030, -0.502875576800086990, 0.864262369986934950,
    -0.503041306280673450,
  0.864165897136879300, -0.503207017265868920, 0.864069392513913790,
    -0.503372709749581040,
  0.863972856121586810, -0.503538383725717580, 0.863876287963447510,
    -0.503704039188187070,
  0.863779688043046720, -0.503869676130898950, 0.863683056363935830,
    -0.504035294547763190,
  0.863586392929668100, -0.504200894432690340, 0.863489697743797140,
    -0.504366475779592040,
  0.863392970809878420, -0.504532038582380270, 0.863296212131468230,
    -0.504697582834967570,
  0.863199421712124160, -0.504863108531267590, 0.863102599555404910,
    -0.505028615665194080,
  0.863005745664870320, -0.505194104230662240, 0.862908860044081400,
    -0.505359574221587280,
  0.862811942696600330, -0.505525025631885390, 0.862714993625990690,
    -0.505690458455473450,
  0.862618012835816740, -0.505855872686268860, 0.862521000329644520,
    -0.506021268318189720,
  0.862423956111040610, -0.506186645345155230, 0.862326880183573060,
    -0.506352003761084800,
  0.862229772550811240, -0.506517343559898530, 0.862132633216325380,
    -0.506682664735517600,
  0.862035462183687210, -0.506847967281863210, 0.861938259456469290,
    -0.507013251192858230,
  0.861841025038245330, -0.507178516462425180, 0.861743758932590700,
    -0.507343763084487920,
  0.861646461143081300, -0.507508991052970870, 0.861549131673294720,
    -0.507674200361798890,
  0.861451770526809320, -0.507839391004897720, 0.861354377707204910,
    -0.508004562976194010,
  0.861256953218062170, -0.508169716269614600, 0.861159497062963350,
    -0.508334850879087360,
  0.861062009245491480, -0.508499966798540930, 0.860964489769231010,
    -0.508665064021904030,
  0.860866938637767310, -0.508830142543106990, 0.860769355854687170,
    -0.508995202356080090,
  0.860671741423578380, -0.509160243454754640, 0.860574095348029980,
    -0.509325265833062480,
  0.860476417631632070, -0.509490269484936360, 0.860378708277976130,
    -0.509655254404309250,
  0.860280967290654510, -0.509820220585115450, 0.860183194673260990,
    -0.509985168021289460,
  0.860085390429390140, -0.510150096706766810, 0.859987554562638200,
    -0.510315006635483240,
  0.859889687076602290, -0.510479897801375700, 0.859791787974880650,
    -0.510644770198381610,
  0.859693857261072610, -0.510809623820439040, 0.859595894938779080,
    -0.510974458661486830,
  0.859497901011601730, -0.511139274715464390, 0.859399875483143450,
    -0.511304071976312000,
  0.859301818357008470, -0.511468850437970300, 0.859203729636801920,
    -0.511633610094381240,
  0.859105609326130450, -0.511798350939486890, 0.859007457428601520,
    -0.511963072967230200,
  0.858909273947823900, -0.512127776171554690, 0.858811058887407610,
    -0.512292460546404870,
  0.858712812250963520, -0.512457126085725690, 0.858614534042104190,
    -0.512621772783462990,
  0.858516224264442740, -0.512786400633562960, 0.858417882921593930,
    -0.512951009629972980,
  0.858319510017173440, -0.513115599766640560, 0.858221105554798250,
    -0.513280171037514220,
  0.858122669538086140, -0.513444723436543460, 0.858024201970656540,
    -0.513609256957677780,
  0.857925702856129790, -0.513773771594868030, 0.857827172198127430,
    -0.513938267342065380,
  0.857728610000272120, -0.514102744193221660, 0.857630016266187620,
    -0.514267202142289710,
  0.857531390999499150, -0.514431641183222820, 0.857432734203832700,
    -0.514596061309975040,
  0.857334045882815590, -0.514760462516501200, 0.857235326040076460,
    -0.514924844796756490,
  0.857136574679244980, -0.515089208144697160, 0.857037791803951680,
    -0.515253552554280180,
  0.856938977417828760, -0.515417878019462930, 0.856840131524509220,
    -0.515582184534203790,
  0.856741254127627470, -0.515746472092461380, 0.856642345230818840,
    -0.515910740688195650,
  0.856543404837719960, -0.516074990315366630, 0.856444432951968590,
    -0.516239220967935510,
  0.856345429577203610, -0.516403432639863990, 0.856246394717065210,
    -0.516567625325114350,
  0.856147328375194470, -0.516731799017649870, 0.856048230555233940,
    -0.516895953711434150,
  0.855949101260826910, -0.517060089400431910, 0.855849940495618240,
    -0.517224206078608310,
  0.855750748263253920, -0.517388303739929060, 0.855651524567380690,
    -0.517552382378360880,
  0.855552269411646860, -0.517716441987871150, 0.855452982799701830,
    -0.517880482562427690,
  0.855353664735196030, -0.518044504095999340, 0.855254315221780970,
    -0.518208506582555460,
  0.855154934263109620, -0.518372490016066110, 0.855055521862835950,
    -0.518536454390502220,
  0.854956078024614930, -0.518700399699834950, 0.854856602752102850,
    -0.518864325938036890,
  0.854757096048957220, -0.519028233099080860, 0.854657557918836460,
    -0.519192121176940250,
  0.854557988365400530, -0.519355990165589640, 0.854458387392310170,
    -0.519519840059003760,
  0.854358755003227440, -0.519683670851158410, 0.854259091201815530,
    -0.519847482536030190,
  0.854159395991738850, -0.520011275107596040, 0.854059669376662780,
    -0.520175048559833760,
  0.853959911360254180, -0.520338802886721960, 0.853860121946180770,
    -0.520502538082239670,
  0.853760301138111410, -0.520666254140367160, 0.853660448939716380,
    -0.520829951055084670,
  0.853560565354666840, -0.520993628820373920, 0.853460650386635320,
    -0.521157287430216610,
  0.853360704039295430, -0.521320926878595660, 0.853260726316321880,
    -0.521484547159494330,
  0.853160717221390420, -0.521648148266897090, 0.853060676758178320,
    -0.521811730194788550,
  0.852960604930363630, -0.521975292937154390, 0.852860501741625750,
    -0.522138836487980760,
  0.852760367195645300, -0.522302360841254590, 0.852660201296103760,
    -0.522465865990963780,
  0.852560004046684080, -0.522629351931096610, 0.852459775451070100,
    -0.522792818655642090,
  0.852359515512947090, -0.522956266158590140, 0.852259224236001090,
    -0.523119694433931250,
  0.852158901623919830, -0.523283103475656430, 0.852058547680391690,
    -0.523446493277757830,
  0.851958162409106380, -0.523609863834227920, 0.851857745813754840,
    -0.523773215139060170,
  0.851757297898029120, -0.523936547186248600, 0.851656818665622370,
    -0.524099859969787700,
  0.851556308120228980, -0.524263153483673360, 0.851455766265544310,
    -0.524426427721901400,
  0.851355193105265200, -0.524589682678468950, 0.851254588643089120,
    -0.524752918347373360,
  0.851153952882715340, -0.524916134722613000, 0.851053285827843790,
    -0.525079331798186780,
  0.850952587482175730, -0.525242509568094710, 0.850851857849413530,
    -0.525405668026336930,
  0.850751096933260790, -0.525568807166914680, 0.850650304737422090,
    -0.525731926983829760,
  0.850549481265603480, -0.525895027471084630, 0.850448626521511760,
    -0.526058108622682760,
  0.850347740508854980, -0.526221170432628060, 0.850246823231342710,
    -0.526384212894925100,
  0.850145874692685210, -0.526547236003579440, 0.850044894896594180,
    -0.526710239752597010,
  0.849943883846782210, -0.526873224135984590, 0.849842841546963320,
    -0.527036189147750080,
  0.849741768000852550, -0.527199134781901280, 0.849640663212165910,
    -0.527362061032447540,
  0.849539527184620890, -0.527524967893398200, 0.849438359921936060,
    -0.527687855358763720,
  0.849337161427830780, -0.527850723422555230, 0.849235931706025960,
    -0.528013572078784630,
  0.849134670760243630, -0.528176401321464370, 0.849033378594206800,
    -0.528339211144607690,
  0.848932055211639610, -0.528502001542228480, 0.848830700616267530,
    -0.528664772508341320,
  0.848729314811817130, -0.528827524036961870, 0.848627897802015860,
    -0.528990256122106040,
  0.848526449590592650, -0.529152968757790610, 0.848424970181277600,
    -0.529315661938033260,
  0.848323459577801640, -0.529478335656851980, 0.848221917783896990,
    -0.529640989908265910,
  0.848120344803297230, -0.529803624686294610, 0.848018740639736810,
    -0.529966239984958620,
  0.847917105296951410, -0.530128835798278960, 0.847815438778677930,
    -0.530291412120277310,
  0.847713741088654380, -0.530453968944976320, 0.847612012230619660,
    -0.530616506266399330,
  0.847510252208314330, -0.530779024078570140, 0.847408461025479730,
    -0.530941522375513620,
  0.847306638685858320, -0.531104001151255000, 0.847204785193194090,
    -0.531266460399820390,
  0.847102900551231500, -0.531428900115236800, 0.847000984763716880,
    -0.531591320291531670,
  0.846899037834397240, -0.531753720922733320, 0.846797059767020910,
    -0.531916102002870650,
  0.846695050565337450, -0.532078463525973540, 0.846593010233097190,
    -0.532240805486072220,
  0.846490938774052130, -0.532403127877197900, 0.846388836191954930,
    -0.532565430693382580,
  0.846286702490559710, -0.532727713928658810, 0.846184537673621560,
    -0.532889977577059800,
  0.846082341744897050, -0.533052221632619450, 0.845980114708143270,
    -0.533214446089372960,
  0.845877856567119000, -0.533376650941355330, 0.845775567325584010,
    -0.533538836182603120,
  0.845673246987299070, -0.533701001807152960, 0.845570895556026270,
    -0.533863147809042650,
  0.845468513035528830, -0.534025274182310380, 0.845366099429570970,
    -0.534187380920995380,
  0.845263654741918220, -0.534349468019137520, 0.845161178976337140,
    -0.534511535470777120,
  0.845058672136595470, -0.534673583269955510, 0.844956134226462210,
    -0.534835611410714560,
  0.844853565249707120, -0.534997619887097150, 0.844750965210101510,
    -0.535159608693146600,
  0.844648334111417820, -0.535321577822907120, 0.844545671957429240,
    -0.535483527270423370,
  0.844442978751910660, -0.535645457029741090, 0.844340254498637590,
    -0.535807367094906390,
  0.844237499201387020, -0.535969257459966710, 0.844134712863936930,
    -0.536131128118969460,
  0.844031895490066410, -0.536292979065963180, 0.843929047083555870,
    -0.536454810294997090,
  0.843826167648186740, -0.536616621800121040, 0.843723257187741660,
    -0.536778413575385920,
  0.843620315706004150, -0.536940185614842910, 0.843517343206759200,
    -0.537101937912544130,
  0.843414339693792760, -0.537263670462542530, 0.843311305170892140,
    -0.537425383258891550,
  0.843208239641845440, -0.537587076295645390, 0.843105143110442160,
    -0.537748749566859360,
  0.843002015580472940, -0.537910403066588880, 0.842898857055729310,
    -0.538072036788890600,
  0.842795667540004120, -0.538233650727821700, 0.842692447037091670,
    -0.538395244877439950,
  0.842589195550786710, -0.538556819231804100, 0.842485913084885630,
    -0.538718373784973560,
  0.842382599643185850, -0.538879908531008420, 0.842279255229485990,
    -0.539041423463969440,
  0.842175879847585570, -0.539202918577918240, 0.842072473501285560,
    -0.539364393866917040,
  0.841969036194387680, -0.539525849325028890, 0.841865567930695340,
    -0.539687284946317570,
  0.841762068714012490, -0.539848700724847590, 0.841658538548144760,
    -0.540010096654684020,
  0.841554977436898440, -0.540171472729892850, 0.841451385384081260,
    -0.540332828944540710,
  0.841347762393501950, -0.540494165292695230, 0.841244108468970580,
    -0.540655481768424150,
  0.841140423614298080, -0.540816778365796670, 0.841036707833296650,
    -0.540978055078882080,
  0.840932961129779780, -0.541139311901750800, 0.840829183507561640,
    -0.541300548828474120,
  0.840725374970458070, -0.541461765853123440, 0.840621535522285690,
    -0.541622962969771530,
  0.840517665166862550, -0.541784140172491550, 0.840413763908007480,
    -0.541945297455357360,
  0.840309831749540770, -0.542106434812443920, 0.840205868695283580,
    -0.542267552237826520,
  0.840101874749058400, -0.542428649725581250, 0.839997849914688840,
    -0.542589727269785270,
  0.839893794195999520, -0.542750784864515890, 0.839789707596816370,
    -0.542911822503851730,
  0.839685590120966110, -0.543072840181871740, 0.839581441772277120,
    -0.543233837892655890,
  0.839477262554578550, -0.543394815630284800, 0.839373052471700690,
    -0.543555773388839540,
  0.839268811527475230, -0.543716711162402280, 0.839164539725734680,
    -0.543877628945055980,
  0.839060237070312740, -0.544038526730883820, 0.838955903565044460,
    -0.544199404513970310,
  0.838851539213765760, -0.544360262288400400, 0.838747144020313920,
    -0.544521100048259600,
  0.838642717988527300, -0.544681917787634530, 0.838538261122245280,
    -0.544842715500612360,
  0.838433773425308340, -0.545003493181281160, 0.838329254901558300,
    -0.545164250823729320,
  0.838224705554838080, -0.545324988422046460, 0.838120125388991500,
    -0.545485705970322530,
  0.838015514407863820, -0.545646403462648590, 0.837910872615301170,
    -0.545807080893116140,
  0.837806200015150940, -0.545967738255817570, 0.837701496611261700,
    -0.546128375544845950,
  0.837596762407483040, -0.546288992754295210, 0.837491997407665890,
    -0.546449589878259650,
  0.837387201615661940, -0.546610166910834860, 0.837282375035324320,
    -0.546770723846116800,
  0.837177517670507300, -0.546931260678202190, 0.837072629525066000,
    -0.547091777401188530,
  0.836967710602857020, -0.547252274009174090, 0.836862760907737920,
    -0.547412750496257930,
  0.836757780443567190, -0.547573206856539760, 0.836652769214204950,
    -0.547733643084120090,
  0.836547727223512010, -0.547894059173100190, 0.836442654475350380,
    -0.548054455117581880,
  0.836337550973583530, -0.548214830911667780, 0.836232416722075600,
    -0.548375186549461600,
  0.836127251724692270, -0.548535522025067390, 0.836022055985299880,
    -0.548695837332590090,
  0.835916829507766360, -0.548856132466135290, 0.835811572295960700,
    -0.549016407419809390,
  0.835706284353752600, -0.549176662187719660, 0.835600965685013410,
    -0.549336896763974010,
  0.835495616293615350, -0.549497111142680960, 0.835390236183431890,
    -0.549657305317949870,
  0.835284825358337370, -0.549817479283890910, 0.835179383822207690,
    -0.549977633034614890,
  0.835073911578919410, -0.550137766564233630, 0.834968408632350450,
    -0.550297879866859190,
  0.834862874986380010, -0.550457972936604810, 0.834757310644888230,
    -0.550618045767584330,
  0.834651715611756440, -0.550778098353912120, 0.834546089890866870,
    -0.550938130689703880,
  0.834440433486103190, -0.551098142769075430, 0.834334746401350080,
    -0.551258134586143590,
  0.834229028640493420, -0.551418106135026060, 0.834123280207420100,
    -0.551578057409841000,
  0.834017501106018130, -0.551737988404707340, 0.833911691340176840,
    -0.551897899113745210,
  0.833805850913786340, -0.552057789531074980, 0.833699979830738290,
    -0.552217659650817930,
  0.833594078094925140, -0.552377509467096070, 0.833488145710240770,
    -0.552537338974032120,
  0.833382182680579730, -0.552697148165749770, 0.833276189009838240,
    -0.552856937036373290,
  0.833170164701913190, -0.553016705580027470, 0.833064109760702890,
    -0.553176453790838350,
  0.832958024190106670, -0.553336181662932300, 0.832851907994025090,
    -0.553495889190436570,
  0.832745761176359460, -0.553655576367479310, 0.832639583741012770,
    -0.553815243188189090,
  0.832533375691888680, -0.553974889646695500, 0.832427137032892280,
    -0.554134515737128910,
  0.832320867767929680, -0.554294121453620000, 0.832214567900907980,
    -0.554453706790300930,
  0.832108237435735590, -0.554613271741304040, 0.832001876376321950,
    -0.554772816300762470,
  0.831895484726577590, -0.554932340462810370, 0.831789062490414400,
    -0.555091844221582420,
  0.831682609671745120, -0.555251327571213980, 0.831576126274483740,
    -0.555410790505841630,
  0.831469612302545240, -0.555570233019602180, 0.831363067759845920,
    -0.555729655106633410,
  0.831256492650303210, -0.555889056761073810, 0.831149886977835540,
    -0.556048437977062600,
  0.831043250746362320, -0.556207798748739930, 0.830936583959804410,
    -0.556367139070246370,
  0.830829886622083570, -0.556526458935723610, 0.830723158737122880,
    -0.556685758339313890,
  0.830616400308846310, -0.556845037275160100, 0.830509611341179070,
    -0.557004295737405950,
  0.830402791838047550, -0.557163533720196220, 0.830295941803379070,
    -0.557322751217676160,
  0.830189061241102370, -0.557481948223991550, 0.830082150155146970,
    -0.557641124733289420,
  0.829975208549443950, -0.557800280739716990, 0.829868236427924840,
    -0.557959416237422960,
  0.829761233794523050, -0.558118531220556100, 0.829654200653172640,
    -0.558277625683266330,
  0.829547137007808910, -0.558436699619704100, 0.829440042862368170,
    -0.558595753024020760,
  0.829332918220788250, -0.558754785890368310, 0.829225763087007570,
    -0.558913798212899770,
  0.829118577464965980, -0.559072789985768480, 0.829011361358604430,
    -0.559231761203128900,
  0.828904114771864870, -0.559390711859136140, 0.828796837708690610,
    -0.559549641947945760,
  0.828689530173025820, -0.559708551463714680, 0.828582192168815790,
    -0.559867440400600210,
  0.828474823700007130, -0.560026308752760380, 0.828367424770547480,
    -0.560185156514354080,
  0.828259995384385660, -0.560343983679540860, 0.828152535545471410,
    -0.560502790242481060,
  0.828045045257755800, -0.560661576197336030, 0.827937524525190870,
    -0.560820341538267430,
  0.827829973351729920, -0.560979086259438150, 0.827722391741327220,
    -0.561137810355011420,
  0.827614779697938400, -0.561296513819151470, 0.827507137225519830,
    -0.561455196646023280,
  0.827399464328029470, -0.561613858829792420, 0.827291761009425810,
    -0.561772500364625340,
  0.827184027273669130, -0.561931121244689470, 0.827076263124720270,
    -0.562089721464152480,
  0.826968468566541600, -0.562248301017183150, 0.826860643603096190,
    -0.562406859897951140,
  0.826752788238348520, -0.562565398100626560, 0.826644902476264320,
    -0.562723915619380400,
  0.826536986320809960, -0.562882412448384440, 0.826429039775953500,
    -0.563040888581811230,
  0.826321062845663530, -0.563199344013834090, 0.826213055533910220,
    -0.563357778738627020,
  0.826105017844664610, -0.563516192750364800, 0.825996949781899080,
    -0.563674586043223070,
  0.825888851349586780, -0.563832958611378170, 0.825780722551702430,
    -0.563991310449006970,
  0.825672563392221390, -0.564149641550287680, 0.825564373875120490,
    -0.564307951909398640,
  0.825456154004377550, -0.564466241520519500, 0.825347903783971380,
    -0.564624510377830120,
  0.825239623217882250, -0.564782758475511400, 0.825131312310091070,
    -0.564940985807745210,
  0.825022971064580220, -0.565099192368713980, 0.824914599485333190,
    -0.565257378152600800,
  0.824806197576334330, -0.565415543153589660, 0.824697765341569470,
    -0.565573687365865330,
  0.824589302785025290, -0.565731810783613120, 0.824480809910689500,
    -0.565889913401019570,
  0.824372286722551250, -0.566047995212271450, 0.824263733224600560,
    -0.566206056211556730,
  0.824155149420828570, -0.566364096393063840, 0.824046535315227760,
    -0.566522115750982100,
  0.823937890911791370, -0.566680114279501600, 0.823829216214513990,
    -0.566838091972813320,
  0.823720511227391430, -0.566996048825108680, 0.823611775954420260,
    -0.567153984830580100,
  0.823503010399598500, -0.567311899983420800, 0.823394214566925080,
    -0.567469794277824510,
  0.823285388460400110, -0.567627667707986230, 0.823176532084024860,
    -0.567785520268101140,
  0.823067645441801670, -0.567943351952365560, 0.822958728537734000,
    -0.568101162754976460,
  0.822849781375826430, -0.568258952670131490, 0.822740803960084420,
    -0.568416721692029280,
  0.822631796294514990, -0.568574469814869140, 0.822522758383125940,
    -0.568732197032851050,
  0.822413690229926390, -0.568889903340175860, 0.822304591838926350,
    -0.569047588731045110,
  0.822195463214137170, -0.569205253199661200, 0.822086304359571090,
    -0.569362896740227220,
  0.821977115279241550, -0.569520519346947140, 0.821867895977163250,
    -0.569678121014025600,
  0.821758646457351750, -0.569835701735668000, 0.821649366723823940,
    -0.569993261506080540,
  0.821540056780597610, -0.570150800319470300, 0.821430716631691870,
    -0.570308318170044900,
  0.821321346281126740, -0.570465815052012990, 0.821211945732923550,
    -0.570623290959583750,
  0.821102514991104650, -0.570780745886967260, 0.820993054059693580,
    -0.570938179828374360,
  0.820883562942714580, -0.571095592778016690, 0.820774041644193650,
    -0.571252984730106660,
  0.820664490168157460, -0.571410355678857230, 0.820554908518633890,
    -0.571567705618482580,
  0.820445296699652050, -0.571725034543197120, 0.820335654715241840,
    -0.571882342447216590,
  0.820225982569434690, -0.572039629324757050, 0.820116280266262820,
    -0.572196895170035580,
  0.820006547809759680, -0.572354139977269920, 0.819896785203959810,
    -0.572511363740678790,
  0.819786992452898990, -0.572668566454481160, 0.819677169560613870,
    -0.572825748112897550,
  0.819567316531142230, -0.572982908710148560, 0.819457433368523280,
    -0.573140048240455950,
  0.819347520076796900, -0.573297166698042200, 0.819237576660004520,
    -0.573454264077130400,
  0.819127603122188240, -0.573611340371944610, 0.819017599467391500,
    -0.573768395576709560,
  0.818907565699658950, -0.573925429685650750, 0.818797501823036010,
    -0.574082442692994470,
  0.818687407841569680, -0.574239434592967890, 0.818577283759307610,
    -0.574396405379798750,
  0.818467129580298660, -0.574553355047715760, 0.818356945308593150,
    -0.574710283590948330,
  0.818246730948242070, -0.574867191003726740, 0.818136486503297730,
    -0.575024077280281710,
  0.818026211977813440, -0.575180942414845080, 0.817915907375843850,
    -0.575337786401649450,
  0.817805572701444270, -0.575494609234928120, 0.817695207958671680,
    -0.575651410908915140,
  0.817584813151583710, -0.575808191417845340, 0.817474388284239240,
    -0.575964950755954220,
  0.817363933360698460, -0.576121688917478280, 0.817253448385022340,
    -0.576278405896654910,
  0.817142933361272970, -0.576435101687721830, 0.817032388293513880,
    -0.576591776284917760,
  0.816921813185809480, -0.576748429682482410, 0.816811208042225290,
    -0.576905061874655960,
  0.816700572866827850, -0.577061672855679440, 0.816589907663684890,
    -0.577218262619794920,
  0.816479212436865390, -0.577374831161244880, 0.816368487190439200,
    -0.577531378474272720,
  0.816257731928477390, -0.577687904553122800, 0.816146946655052270,
    -0.577844409392039850,
  0.816036131374236810, -0.578000892985269910, 0.815925286090105510,
    -0.578157355327059360,
  0.815814410806733780, -0.578313796411655590, 0.815703505528198260,
    -0.578470216233306630,
  0.815592570258576790, -0.578626614786261430, 0.815481605001947770,
    -0.578782992064769690,
  0.815370609762391290, -0.578939348063081780, 0.815259584543988280,
    -0.579095682775449090,
  0.815148529350820830, -0.579251996196123550, 0.815037444186972220,
    -0.579408288319357870,
  0.814926329056526620, -0.579564559139405630, 0.814815183963569440,
    -0.579720808650521450,
  0.814704008912187080, -0.579877036846960350, 0.814592803906467270,
    -0.580033243722978150,
  0.814481568950498610, -0.580189429272831680, 0.814370304048371070,
    -0.580345593490778300,
  0.814259009204175270, -0.580501736371076490, 0.814147684422003360,
    -0.580657857907985300,
  0.814036329705948410, -0.580813958095764530, 0.813924945060104600,
    -0.580970036928674770,
  0.813813530488567190, -0.581126094400977620, 0.813702085995432700,
    -0.581282130506935000,
  0.813590611584798510, -0.581438145240810170, 0.813479107260763220,
    -0.581594138596866930,
  0.813367573027426570, -0.581750110569369650, 0.813256008888889380,
    -0.581906061152583810,
  0.813144414849253590, -0.582061990340775440, 0.813032790912622040,
    -0.582217898128211670,
  0.812921137083098770, -0.582373784509160110, 0.812809453364789270,
    -0.582529649477889320,
  0.812697739761799490, -0.582685493028668460, 0.812585996278237130,
    -0.582841315155767650,
  0.812474222918210480, -0.582997115853457700, 0.812362419685829230,
    -0.583152895116010430,
  0.812250586585203880, -0.583308652937698290, 0.812138723620446480,
    -0.583464389312794320,
  0.812026830795669730, -0.583620104235572760, 0.811914908114987790,
    -0.583775797700308070,
  0.811802955582515470, -0.583931469701276180, 0.811690973202369050,
    -0.584087120232753440,
  0.811578960978665890, -0.584242749289016980, 0.811466918915524250,
    -0.584398356864344600,
  0.811354847017063730, -0.584553942953015330, 0.811242745287404810,
    -0.584709507549308390,
  0.811130613730669190, -0.584865050647504490, 0.811018452350979470,
    -0.585020572241884530,
  0.810906261152459670, -0.585176072326730410, 0.810794040139234730,
    -0.585331550896324940,
  0.810681789315430780, -0.585487007944951340, 0.810569508685174630,
    -0.585642443466894420,
  0.810457198252594770, -0.585797857456438860, 0.810344858021820550,
    -0.585953249907870570,
  0.810232487996982330, -0.586108620815476430, 0.810120088182211600,
    -0.586263970173543590,
  0.810007658581641140, -0.586419297976360500, 0.809895199199404450,
    -0.586574604218216170,
  0.809782710039636530, -0.586729888893400390, 0.809670191106473090,
    -0.586885151996203950,
  0.809557642404051260, -0.587040393520917970, 0.809445063936509170,
    -0.587195613461834800,
  0.809332455707985950, -0.587350811813247660, 0.809219817722621750,
    -0.587505988569450020,
  0.809107149984558240, -0.587661143724736660, 0.808994452497937670,
    -0.587816277273402910,
  0.808881725266903610, -0.587971389209745010, 0.808768968295600850,
    -0.588126479528059850,
  0.808656181588174980, -0.588281548222645220, 0.808543365148773010,
    -0.588436595287799790,
  0.808430518981542720, -0.588591620717822890, 0.808317643090633250,
    -0.588746624507014540,
  0.808204737480194720, -0.588901606649675720, 0.808091802154378370,
    -0.589056567140108460,
  0.807978837117336310, -0.589211505972614960, 0.807865842373222120,
    -0.589366423141498790,
  0.807752817926190360, -0.589521318641063940, 0.807639763780396480,
    -0.589676192465615420,
  0.807526679939997160, -0.589831044609458790, 0.807413566409150190,
    -0.589985875066900920,
  0.807300423192014450, -0.590140683832248820, 0.807187250292749960,
    -0.590295470899810830,
  0.807074047715517610, -0.590450236263895810, 0.806960815464479730,
    -0.590604979918813330,
  0.806847553543799330, -0.590759701858874160, 0.806734261957640860,
    -0.590914402078389520,
  0.806620940710169650, -0.591069080571671400, 0.806507589805552260,
    -0.591223737333032910,
  0.806394209247956240, -0.591378372356787580, 0.806280799041550480,
    -0.591532985637249990,
  0.806167359190504420, -0.591687577168735430, 0.806053889698989060,
    -0.591842146945560140,
  0.805940390571176280, -0.591996694962040990, 0.805826861811239300,
    -0.592151221212495530,
  0.805713303423352230, -0.592305725691242290, 0.805599715411690060,
    -0.592460208392600830,
  0.805486097780429230, -0.592614669310891130, 0.805372450533747060,
    -0.592769108440434070,
  0.805258773675822210, -0.592923525775551300, 0.805145067210834230,
    -0.593077921310565470,
  0.805031331142963660, -0.593232295039799800, 0.804917565476392260,
    -0.593386646957578480,
  0.804803770215302920, -0.593540977058226390, 0.804689945363879500,
    -0.593695285336069190,
  0.804576090926307110, -0.593849571785433630, 0.804462206906771840,
    -0.594003836400646690,
  0.804348293309460780, -0.594158079176036800, 0.804234350138562260,
    -0.594312300105932830,
  0.804120377398265810, -0.594466499184664430, 0.804006375092761520,
    -0.594620676406562240,
  0.803892343226241260, -0.594774831765957580, 0.803778281802897570,
    -0.594928965257182420,
  0.803664190826924090, -0.595083076874569960, 0.803550070302515680,
    -0.595237166612453850,
  0.803435920233868120, -0.595391234465168730, 0.803321740625178580,
    -0.595545280427049790,
  0.803207531480644940, -0.595699304492433360, 0.803093292804466400,
    -0.595853306655656280,
  0.802979024600843250, -0.596007286911056530, 0.802864726873976700,
    -0.596161245252972540,
  0.802750399628069160, -0.596315181675743710, 0.802636042867324150,
    -0.596469096173710360,
  0.802521656595946430, -0.596622988741213220, 0.802407240818141300,
    -0.596776859372594390,
  0.802292795538115720, -0.596930708062196500, 0.802178320760077450,
    -0.597084534804362740,
  0.802063816488235440, -0.597238339593437420, 0.801949282726799770,
    -0.597392122423765710,
  0.801834719479981310, -0.597545883289693160, 0.801720126751992330,
    -0.597699622185566830,
  0.801605504547046150, -0.597853339105733910, 0.801490852869356950,
    -0.598007034044542700,
  0.801376171723140240, -0.598160706996342270, 0.801261461112612540,
    -0.598314357955482600,
  0.801146721041991360, -0.598467986916314310, 0.801031951515495330,
    -0.598621593873188920,
  0.800917152537344300, -0.598775178820458720, 0.800802324111759110,
    -0.598928741752476900,
  0.800687466242961610, -0.599082282663597310, 0.800572578935174860,
    -0.599235801548174570,
  0.800457662192622820, -0.599389298400564540, 0.800342716019530660,
    -0.599542773215123390,
  0.800227740420124790, -0.599696225986208310, 0.800112735398632370,
    -0.599849656708177250,
  0.799997700959281910, -0.600003065375388940, 0.799882637106302810,
    -0.600156451982203240,
  0.799767543843925680, -0.600309816522980430, 0.799652421176382240,
    -0.600463158992081580,
  0.799537269107905010, -0.600616479383868970, 0.799422087642728040,
    -0.600769777692705230,
  0.799306876785086160, -0.600923053912954090, 0.799191636539215210,
    -0.601076308038980160,
  0.799076366909352350, -0.601229540065148500, 0.798961067899735760,
    -0.601382749985825420,
  0.798845739514604580, -0.601535937795377730, 0.798730381758199210,
    -0.601689103488172950,
  0.798614994634760820, -0.601842247058580030, 0.798499578148532120,
    -0.601995368500968020,
  0.798384132303756380, -0.602148467809707210, 0.798268657104678430,
    -0.602301544979168550,
  0.798153152555543750, -0.602454600003723750, 0.798037618660599410,
    -0.602607632877745440,
  0.797922055424093000, -0.602760643595607220, 0.797806462850273570,
    -0.602913632151683030,
  0.797690840943391160, -0.603066598540348160, 0.797575189707696700,
    -0.603219542755978440,
  0.797459509147442460, -0.603372464792950260, 0.797343799266881700,
    -0.603525364645641550,
  0.797228060070268700, -0.603678242308430370, 0.797112291561858920,
    -0.603831097775695880,
  0.796996493745908750, -0.603983931041818020, 0.796880666626675780,
    -0.604136742101177520,
  0.796764810208418830, -0.604289530948155960, 0.796648924495397260,
    -0.604442297577135860,
  0.796533009491872000, -0.604595041982500360, 0.796417065202104980,
    -0.604747764158633410,
  0.796301091630359110, -0.604900464099919820, 0.796185088780898440,
    -0.605053141800745320,
  0.796069056657987990, -0.605205797255496500, 0.795952995265893910,
    -0.605358430458560530,
  0.795836904608883570, -0.605511041404325550, 0.795720784691225090,
    -0.605663630087180380,
  0.795604635517188070, -0.605816196501514970, 0.795488457091042990,
    -0.605968740641719680,
  0.795372249417061310, -0.606121262502186120, 0.795256012499515610,
    -0.606273762077306430,
  0.795139746342679590, -0.606426239361473550, 0.795023450950828050,
    -0.606578694349081290,
  0.794907126328237010, -0.606731127034524480, 0.794790772479183170,
    -0.606883537412198470,
  0.794674389407944550, -0.607035925476499650, 0.794557977118800380,
    -0.607188291221825160,
  0.794441535616030590, -0.607340634642572930, 0.794325064903916520,
    -0.607492955733141550,
  0.794208564986740640, -0.607645254487930830, 0.794092035868785960,
    -0.607797530901341140,
  0.793975477554337170, -0.607949784967773630, 0.793858890047679730,
    -0.608102016681630440,
  0.793742273353100210, -0.608254226037314490, 0.793625627474886300,
    -0.608406413029229150,
  0.793508952417326660, -0.608558577651779450, 0.793392248184711100,
    -0.608710719899370310,
  0.793275514781330630, -0.608862839766408200, 0.793158752211477140,
    -0.609014937247299830,
  0.793041960479443640, -0.609167012336453210, 0.792925139589524260,
    -0.609319065028276820,
  0.792808289546014120, -0.609471095317180240, 0.792691410353209450,
    -0.609623103197573730,
  0.792574502015407690, -0.609775088663868430, 0.792457564536907080,
    -0.609927051710476120,
  0.792340597922007170, -0.610078992331809620, 0.792223602175008310,
    -0.610230910522282620,
  0.792106577300212390, -0.610382806276309480, 0.791989523301921850,
    -0.610534679588305320,
  0.791872440184440470, -0.610686530452686280, 0.791755327952073150,
    -0.610838358863869170,
  0.791638186609125880, -0.610990164816271660, 0.791521016159905220,
    -0.611141948304312570,
  0.791403816608719500, -0.611293709322410890, 0.791286587959877830,
    -0.611445447864987000,
  0.791169330217690200, -0.611597163926461910, 0.791052043386467950,
    -0.611748857501257290,
  0.790934727470523290, -0.611900528583796070, 0.790817382474169770,
    -0.612052177168501470,
  0.790700008401721610, -0.612203803249797950, 0.790582605257494460,
    -0.612355406822110650,
  0.790465173045804880, -0.612506987879865570, 0.790347711770970520,
    -0.612658546417489290,
  0.790230221437310030, -0.612810082429409710, 0.790112702049143300,
    -0.612961595910055170,
  0.789995153610791090, -0.613113086853854910, 0.789877576126575280,
    -0.613264555255239040,
  0.789759969600819070, -0.613416001108638590, 0.789642334037846340,
    -0.613567424408485330,
  0.789524669441982190, -0.613718825149211720, 0.789406975817552930,
    -0.613870203325251330,
  0.789289253168885650, -0.614021558931038380, 0.789171501500308900,
    -0.614172891961007990,
  0.789053720816151880, -0.614324202409595950, 0.788935911120745240,
    -0.614475490271239040,
  0.788818072418420280, -0.614626755540375050, 0.788700204713509660,
    -0.614777998211442080,
  0.788582308010347120, -0.614929218278879590, 0.788464382313267540,
    -0.615080415737127460,
  0.788346427626606340, -0.615231590580626820, 0.788228443954700490,
    -0.615382742803819220,
  0.788110431301888070, -0.615533872401147320, 0.787992389672507950,
    -0.615684979367054570,
  0.787874319070900220, -0.615836063695985090, 0.787756219501406060,
    -0.615987125382383760,
  0.787638090968367450, -0.616138164420696910, 0.787519933476127810,
    -0.616289180805370980,
  0.787401747029031430, -0.616440174530853650, 0.787283531631423620,
    -0.616591145591593110,
  0.787165287287651010, -0.616742093982038720, 0.787047014002060790,
    -0.616893019696640680,
  0.786928711779001810, -0.617043922729849760, 0.786810380622823490,
    -0.617194803076117630,
  0.786692020537876790, -0.617345660729896830, 0.786573631528513230,
    -0.617496495685640910,
  0.786455213599085770, -0.617647307937803870, 0.786336766753948260,
    -0.617798097480841020,
  0.786218290997455660, -0.617948864309208150, 0.786099786333963930,
    -0.618099608417362000,
  0.785981252767830150, -0.618250329799760250, 0.785862690303412600,
    -0.618401028450860980,
  0.785744098945070360, -0.618551704365123740, 0.785625478697163700,
    -0.618702357537008530,
  0.785506829564053930, -0.618852987960976320, 0.785388151550103550,
    -0.619003595631488660,
  0.785269444659675850, -0.619154180543008410, 0.785150708897135560,
    -0.619304742689998690,
  0.785031944266848080, -0.619455282066924020, 0.784913150773180020,
    -0.619605798668249270,
  0.784794328420499230, -0.619756292488440660, 0.784675477213174320,
    -0.619906763521964720,
  0.784556597155575240, -0.620057211763289100, 0.784437688252072830,
    -0.620207637206882430,
  0.784318750507038920, -0.620358039847213720, 0.784199783924846570,
    -0.620508419678753360,
  0.784080788509869950, -0.620658776695972140, 0.783961764266484120,
    -0.620809110893341900,
  0.783842711199065230, -0.620959422265335180, 0.783723629311990470,
    -0.621109710806425630,
  0.783604518609638200, -0.621259976511087550, 0.783485379096387820,
    -0.621410219373796150,
  0.783366210776619720, -0.621560439389027160, 0.783247013654715380,
    -0.621710636551257690,
  0.783127787735057310, -0.621860810854965360, 0.783008533022029110,
    -0.622010962294628600,
  0.782889249520015480, -0.622161090864726820, 0.782769937233402050,
    -0.622311196559740320,
  0.782650596166575730, -0.622461279374149970, 0.782531226323924240,
    -0.622611339302437730,
  0.782411827709836530, -0.622761376339086350, 0.782292400328702400,
    -0.622911390478579460,
  0.782172944184913010, -0.623061381715401260, 0.782053459282860300,
    -0.623211350044037270,
  0.781933945626937630, -0.623361295458973230, 0.781814403221538830,
    -0.623511217954696440,
  0.781694832071059390, -0.623661117525694530, 0.781575232179895550,
    -0.623810994166456130,
  0.781455603552444590, -0.623960847871470660, 0.781335946193104870,
    -0.624110678635228510,
  0.781216260106276090, -0.624260486452220650, 0.781096545296358520,
    -0.624410271316939270,
  0.780976801767753750, -0.624560033223877210, 0.780857029524864580,
    -0.624709772167528100,
  0.780737228572094490, -0.624859488142386340, 0.780617398913848400,
    -0.625009181142947460,
  0.780497540554531910, -0.625158851163707620, 0.780377653498552040,
    -0.625308498199164010,
  0.780257737750316590, -0.625458122243814360, 0.780137793314234610,
    -0.625607723292157410,
  0.780017820194715990, -0.625757301338692900, 0.779897818396172000,
    -0.625906856377921090,
  0.779777787923014550, -0.626056388404343520, 0.779657728779656890,
    -0.626205897412462130,
  0.779537640970513260, -0.626355383396779990, 0.779417524499998900,
    -0.626504846351800810,
  0.779297379372530300, -0.626654286272029350, 0.779177205592524680,
    -0.626803703151971200,
  0.779057003164400630, -0.626953096986132660, 0.778936772092577500,
    -0.627102467769020900,
  0.778816512381475980, -0.627251815495144080, 0.778696224035517530,
    -0.627401140159011050,
  0.778575907059125050, -0.627550441755131530, 0.778455561456721900,
    -0.627699720278016240,
  0.778335187232733210, -0.627848975722176460, 0.778214784391584540,
    -0.627998208082124700,
  0.778094352937702790, -0.628147417352374000, 0.777973892875516100,
    -0.628296603527438320,
  0.777853404209453150, -0.628445766601832710, 0.777732886943944050,
    -0.628594906570072550,
  0.777612341083420030, -0.628744023426674680, 0.777491766632313010,
    -0.628893117166156480,
  0.777371163595056310, -0.629042187783036000, 0.777250531976084070,
    -0.629191235271832290,
  0.777129871779831620, -0.629340259627065630, 0.777009183010735290,
    -0.629489260843256630,
  0.776888465673232440, -0.629638238914926980, 0.776767719771761510,
    -0.629787193836599200,
  0.776646945310762060, -0.629936125602796440, 0.776526142294674430,
    -0.630085034208043180,
  0.776405310727940390, -0.630233919646864370, 0.776284450615002510,
    -0.630382781913785940,
  0.776163561960304340, -0.630531621003334600, 0.776042644768290770,
    -0.630680436910037940,
  0.775921699043407690, -0.630829229628424470, 0.775800724790101650,
    -0.630977999153023550,
  0.775679722012820650, -0.631126745478365340, 0.775558690716013580,
    -0.631275468598980760,
  0.775437630904130540, -0.631424168509401860, 0.775316542581622530,
    -0.631572845204161020,
  0.775195425752941420, -0.631721498677792260, 0.775074280422540450,
    -0.631870128924829850,
  0.774953106594873930, -0.632018735939809060, 0.774831904274396850,
    -0.632167319717265920,
  0.774710673465565550, -0.632315880251737570, 0.774589414172837550,
    -0.632464417537761840,
  0.774468126400670860, -0.632612931569877410, 0.774346810153525130,
    -0.632761422342624000,
  0.774225465435860680, -0.632909889850541750, 0.774104092252139050,
    -0.633058334088172140,
  0.773982690606822900, -0.633206755050057190, 0.773861260504375540,
    -0.633355152730739950,
  0.773739801949261840, -0.633503527124764320, 0.773618314945947460,
    -0.633651878226674900,
  0.773496799498899050, -0.633800206031017280, 0.773375255612584470,
    -0.633948510532337810,
  0.773253683291472590, -0.634096791725183740, 0.773132082540033070,
    -0.634245049604103330,
  0.773010453362736990, -0.634393284163645490, 0.772888795764056220,
    -0.634541495398360020,
  0.772767109748463850, -0.634689683302797740, 0.772645395320433860,
    -0.634837847871509990,
  0.772523652484441330, -0.634985989099049460, 0.772401881244962450,
    -0.635134106979969190,
  0.772280081606474320, -0.635282201508823420, 0.772158253573455240,
    -0.635430272680167160,
  0.772036397150384520, -0.635578320488556110, 0.771914512341742350,
    -0.635726344928547070,
  0.771792599152010150, -0.635874345994697720, 0.771670657585670330,
    -0.636022323681566300,
  0.771548687647206300, -0.636170277983712170, 0.771426689341102590,
    -0.636318208895695460,
  0.771304662671844830, -0.636466116412077180, 0.771182607643919330,
    -0.636614000527419120,
  0.771060524261813820, -0.636761861236284200, 0.770938412530016940,
    -0.636909698533235870,
  0.770816272453018540, -0.637057512412838590, 0.770694104035309140,
    -0.637205302869657600,
  0.770571907281380810, -0.637353069898259130, 0.770449682195725960,
    -0.637500813493210190,
  0.770327428782838890, -0.637648533649078810, 0.770205147047214210,
    -0.637796230360433540,
  0.770082836993347900, -0.637943903621844060, 0.769960498625737230,
    -0.638091553427880820,
  0.769838131948879840, -0.638239179773115280, 0.769715736967275130,
    -0.638386782652119570,
  0.769593313685422940, -0.638534362059466790, 0.769470862107824670,
    -0.638681917989730730,
  0.769348382238982280, -0.638829450437486290, 0.769225874083399260,
    -0.638976959397309140,
  0.769103337645579700, -0.639124444863775730, 0.768980772930028870,
    -0.639271906831463510,
  0.768858179941253270, -0.639419345294950700, 0.768735558683760310,
    -0.639566760248816310,
  0.768612909162058380, -0.639714151687640450, 0.768490231380656860,
    -0.639861519606003900,
  0.768367525344066270, -0.640008863998488440, 0.768244791056798330,
    -0.640156184859676510,
  0.768122028523365420, -0.640303482184151670, 0.767999237748281270,
    -0.640450755966498140,
  0.767876418736060610, -0.640598006201301030, 0.767753571491219030,
    -0.640745232883146440,
  0.767630696018273380, -0.640892436006621380, 0.767507792321741270,
    -0.641039615566313390,
  0.767384860406141730, -0.641186771556811250, 0.767261900275994500,
    -0.641333903972704290,
  0.767138911935820400, -0.641481012808583160, 0.767015895390141480,
    -0.641628098059038750,
  0.766892850643480670, -0.641775159718663500, 0.766769777700361920,
    -0.641922197782050170,
  0.766646676565310380, -0.642069212243792540, 0.766523547242852210,
    -0.642216203098485370,
  0.766400389737514230, -0.642363170340724320, 0.766277204053824710,
    -0.642510113965105710,
  0.766153990196312920, -0.642657033966226860, 0.766030748169509000,
    -0.642803930338685990,
  0.765907477977944340, -0.642950803077082080, 0.765784179626150970,
    -0.643097652176015110,
  0.765660853118662500, -0.643244477630085850, 0.765537498460013070,
    -0.643391279433895850,
  0.765414115654738270, -0.643538057582047740, 0.765290704707374370,
    -0.643684812069144850,
  0.765167265622458960, -0.643831542889791390, 0.765043798404530520,
    -0.643978250038592660,
  0.764920303058128410, -0.644124933510154540, 0.764796779587793460,
    -0.644271593299083790,
  0.764673227998067140, -0.644418229399988380, 0.764549648293492150,
    -0.644564841807476640,
  0.764426040478612070, -0.644711430516158310, 0.764302404557971720,
    -0.644857995520643710,
  0.764178740536116670, -0.645004536815543930, 0.764055048417593970,
    -0.645151054395471160,
  0.763931328206951090, -0.645297548255038380, 0.763807579908737160,
    -0.645444018388859230,
  0.763683803527501870, -0.645590464791548690, 0.763559999067796150,
    -0.645736887457722290,
  0.763436166534172010, -0.645883286381996320, 0.763312305931182380,
    -0.646029661558988330,
  0.763188417263381270, -0.646176012983316280, 0.763064500535323710,
    -0.646322340649599480,
  0.762940555751565720, -0.646468644552457780, 0.762816582916664430,
    -0.646614924686512050,
  0.762692582035177980, -0.646761181046383920, 0.762568553111665380,
    -0.646907413626696020,
  0.762444496150687210, -0.647053622422071540, 0.762320411156804270,
    -0.647199807427135230,
  0.762196298134578900, -0.647345968636512060, 0.762072157088574560,
    -0.647492106044828100,
  0.761947988023355390, -0.647638219646710310, 0.761823790943486960,
    -0.647784309436786440,
  0.761699565853535380, -0.647930375409685340, 0.761575312758068000,
    -0.648076417560036530,
  0.761451031661653620, -0.648222435882470420, 0.761326722568861360,
    -0.648368430371618290,
  0.761202385484261780, -0.648514401022112440, 0.761078020412426560,
    -0.648660347828585840,
  0.760953627357928150, -0.648806270785672550, 0.760829206325340010,
    -0.648952169888007300,
  0.760704757319236920, -0.649098045130225950, 0.760580280344194450,
    -0.649243896506964900,
  0.760455775404789260, -0.649389724012861660, 0.760331242505599030,
    -0.649535527642554730,
  0.760206681651202420, -0.649681307390683190, 0.760082092846179340,
    -0.649827063251887100,
  0.759957476095110330, -0.649972795220807530, 0.759832831402577400,
    -0.650118503292086200,
  0.759708158773163440, -0.650264187460365850, 0.759583458211452010,
    -0.650409847720290310,
  0.759458729722028210, -0.650555484066503880, 0.759333973309477940,
    -0.650701096493652040,
  0.759209188978388070, -0.650846684996380880, 0.759084376733346610,
    -0.650992249569337660,
  0.758959536578942440, -0.651137790207170330, 0.758834668519765660,
    -0.651283306904527740,
  0.758709772560407390, -0.651428799656059820, 0.758584848705459610,
    -0.651574268456416970,
  0.758459896959515430, -0.651719713300250910, 0.758334917327168960,
    -0.651865134182213920,
  0.758209909813015280, -0.652010531096959500, 0.758084874421650730,
    -0.652155904039141590,
  0.757959811157672300, -0.652301253003415460, 0.757834720025678310,
    -0.652446577984436730,
  0.757709601030268080, -0.652591878976862440, 0.757584454176041810,
    -0.652737155975350310,
  0.757459279467600720, -0.652882408974558850, 0.757334076909547130,
    -0.653027637969147530,
  0.757208846506484570, -0.653172842953776760, 0.757083588263017140,
    -0.653318023923107670,
  0.756958302183750490, -0.653463180871802330, 0.756832988273290820,
    -0.653608313794523890,
  0.756707646536245670, -0.653753422685936060, 0.756582276977223470,
    -0.653898507540703780,
  0.756456879600833740, -0.654043568353492640, 0.756331454411686920,
    -0.654188605118969040,
  0.756206001414394540, -0.654333617831800440, 0.756080520613569120,
    -0.654478606486655350,
  0.755955012013824420, -0.654623571078202680, 0.755829475619774760,
    -0.654768511601112600,
  0.755703911436035880, -0.654913428050056030, 0.755578319467224540,
    -0.655058320419704910,
  0.755452699717958250, -0.655203188704731820, 0.755327052192855670,
    -0.655348032899810470,
  0.755201376896536550, -0.655492852999615350, 0.755075673833621620,
    -0.655637648998821820,
  0.754949943008732640, -0.655782420892106030, 0.754824184426492350,
    -0.655927168674145360,
  0.754698398091524500, -0.656071892339617600, 0.754572584008453840,
    -0.656216591883201920,
  0.754446742181906440, -0.656361267299578000, 0.754320872616508820,
    -0.656505918583426550,
  0.754194975316889170, -0.656650545729428940, 0.754069050287676120,
    -0.656795148732268070,
  0.753943097533499640, -0.656939727586627110, 0.753817117058990790,
    -0.657084282287190180,
  0.753691108868781210, -0.657228812828642540, 0.753565072967504300,
    -0.657373319205670210,
  0.753439009359793580, -0.657517801412960120, 0.753312918050284330,
    -0.657662259445200070,
  0.753186799043612520, -0.657806693297078640, 0.753060652344415100,
    -0.657951102963285520,
  0.752934477957330150, -0.658095488438511180, 0.752808275886996950,
    -0.658239849717446870,
  0.752682046138055340, -0.658384186794785050, 0.752555788715146390,
    -0.658528499665218650,
  0.752429503622912390, -0.658672788323441890, 0.752303190865996400,
    -0.658817052764149480,
  0.752176850449042810, -0.658961292982037320, 0.752050482376696360,
    -0.659105508971802090,
  0.751924086653603550, -0.659249700728141490, 0.751797663284411550,
    -0.659393868245753860,
  0.751671212273768430, -0.659538011519338660, 0.751544733626323680,
    -0.659682130543596150,
  0.751418227346727470, -0.659826225313227320, 0.751291693439630870,
    -0.659970295822934540,
  0.751165131909686480, -0.660114342067420480, 0.751038542761547360,
    -0.660258364041389050,
  0.750911925999867890, -0.660402361739545030, 0.750785281629303690,
    -0.660546335156593890,
  0.750658609654510700, -0.660690284287242300, 0.750531910080146410,
    -0.660834209126197610,
  0.750405182910869330, -0.660978109668168060, 0.750278428151338720,
    -0.661121985907862860,
  0.750151645806215070, -0.661265837839992270, 0.750024835880159780,
    -0.661409665459266940,
  0.749897998377835330, -0.661553468760398890, 0.749771133303905100,
    -0.661697247738101010,
  0.749644240663033480, -0.661841002387086870, 0.749517320459886170,
    -0.661984732702070920,
  0.749390372699129560, -0.662128438677768720, 0.749263397385431130,
    -0.662272120308896590,
  0.749136394523459370, -0.662415777590171780, 0.749009364117883880,
    -0.662559410516312290,
  0.748882306173375150, -0.662703019082037440, 0.748755220694604760,
    -0.662846603282066900,
  0.748628107686245440, -0.662990163111121470, 0.748500967152970430,
    -0.663133698563923010,
  0.748373799099454560, -0.663277209635194100, 0.748246603530373420,
    -0.663420696319658280,
  0.748119380450403600, -0.663564158612039770, 0.747992129864222700,
    -0.663707596507064010,
  0.747864851776509410, -0.663851009999457340, 0.747737546191943330,
    -0.663994399083946640,
  0.747610213115205150, -0.664137763755260010, 0.747482852550976570,
    -0.664281104008126230,
  0.747355464503940190, -0.664424419837275180, 0.747228048978779920,
    -0.664567711237437520,
  0.747100605980180130, -0.664710978203344790, 0.746973135512826850,
    -0.664854220729729660,
  0.746845637581406540, -0.664997438811325340, 0.746718112190607130,
    -0.665140632442866140,
  0.746590559345117310, -0.665283801619087180, 0.746462979049626770,
    -0.665426946334724660,
  0.746335371308826320, -0.665570066584515450, 0.746207736127407760,
    -0.665713162363197550,
  0.746080073510063780, -0.665856233665509720, 0.745952383461488290,
    -0.665999280486191500,
  0.745824665986376090, -0.666142302819983540, 0.745696921089422760,
    -0.666285300661627280,
  0.745569148775325430, -0.666428274005865240, 0.745441349048781680,
    -0.666571222847440640,
  0.745313521914490520, -0.666714147181097670, 0.745185667377151640,
    -0.666857047001581220,
  0.745057785441466060, -0.666999922303637470, 0.744929876112135350,
    -0.667142773082013310,
  0.744801939393862630, -0.667285599331456370, 0.744673975291351710,
    -0.667428401046715520,
  0.744545983809307370, -0.667571178222540310, 0.744417964952435620,
    -0.667713930853681030,
  0.744289918725443260, -0.667856658934889320, 0.744161845133038180,
    -0.667999362460917400,
  0.744033744179929290, -0.668142041426518450, 0.743905615870826490,
    -0.668284695826446670,
  0.743777460210440890, -0.668427325655456820, 0.743649277203484060,
    -0.668569930908304970,
  0.743521066854669120, -0.668712511579747980, 0.743392829168709970,
    -0.668855067664543610,
  0.743264564150321600, -0.668997599157450270, 0.743136271804219820,
    -0.669140106053227600,
  0.743007952135121720, -0.669282588346636010, 0.742879605147745200,
    -0.669425046032436910,
  0.742751230846809050, -0.669567479105392490, 0.742622829237033490,
    -0.669709887560265840,
  0.742494400323139180, -0.669852271391821020, 0.742365944109848460,
    -0.669994630594823000,
  0.742237460601884000, -0.670136965164037650, 0.742108949803969910,
    -0.670279275094231800,
  0.741980411720831070, -0.670421560380173090, 0.741851846357193480,
    -0.670563821016630040,
  0.741723253717784140, -0.670706056998372160, 0.741594633807331150,
    -0.670848268320169640,
  0.741465986630563290, -0.670990454976794220, 0.741337312192210660,
    -0.671132616963017740,
  0.741208610497004260, -0.671274754273613490, 0.741079881549676080,
    -0.671416866903355450,
  0.740951125354959110, -0.671558954847018330, 0.740822341917587330,
    -0.671701018099378320,
  0.740693531242295760, -0.671843056655211930, 0.740564693333820250,
    -0.671985070509296900,
  0.740435828196898020, -0.672127059656411730, 0.740306935836266940,
    -0.672269024091335930,
  0.740178016256666240, -0.672410963808849790, 0.740049069462835550,
    -0.672552878803734710,
  0.739920095459516200, -0.672694769070772860, 0.739791094251449950,
    -0.672836634604747300,
  0.739662065843380010, -0.672978475400442090, 0.739533010240050250,
    -0.673120291452642070,
  0.739403927446205760, -0.673262082756132970, 0.739274817466592520,
    -0.673403849305701740,
  0.739145680305957510, -0.673545591096136100, 0.739016515969048720,
    -0.673687308122224330,
  0.738887324460615110, -0.673829000378756040, 0.738758105785406900,
    -0.673970667860521620,
  0.738628859948174840, -0.674112310562312360, 0.738499586953671130,
    -0.674253928478920410,
  0.738370286806648620, -0.674395521605139050, 0.738240959511861310,
    -0.674537089935762000,
  0.738111605074064260, -0.674678633465584540, 0.737982223498013570,
    -0.674820152189402170,
  0.737852814788465980, -0.674961646102011930, 0.737723378950179700,
    -0.675103115198211420,
  0.737593915987913570, -0.675244559472799270, 0.737464425906427580,
    -0.675385978920574840,
  0.737334908710482910, -0.675527373536338520, 0.737205364404841190,
    -0.675668743314891910,
  0.737075792994265730, -0.675810088251036940, 0.736946194483520280,
    -0.675951408339577010,
  0.736816568877369900, -0.676092703575315920, 0.736686916180580460,
    -0.676233973953058950,
  0.736557236397919150, -0.676375219467611590, 0.736427529534153690,
    -0.676516440113781090,
  0.736297795594053170, -0.676657635886374950, 0.736168034582387330,
    -0.676798806780201770,
  0.736038246503927350, -0.676939952790071130, 0.735908431363445190,
    -0.677081073910793530,
  0.735778589165713590, -0.677222170137180330, 0.735648719915506510,
    -0.677363241464043920,
  0.735518823617598900, -0.677504287886197430, 0.735388900276766730,
    -0.677645309398454910,
  0.735258949897786840, -0.677786305995631500, 0.735128972485437180,
    -0.677927277672543020,
  0.734998968044496710, -0.678068224424006600, 0.734868936579745170,
    -0.678209146244839860,
  0.734738878095963500, -0.678350043129861470, 0.734608792597933550,
    -0.678490915073891140,
  0.734478680090438370, -0.678631762071749360, 0.734348540578261600,
    -0.678772584118257690,
  0.734218374066188280, -0.678913381208238410, 0.734088180559004040,
    -0.679054153336514870,
  0.733957960061495940, -0.679194900497911200, 0.733827712578451700,
    -0.679335622687252560,
  0.733697438114660370, -0.679476319899364970, 0.733567136674911360,
    -0.679616992129075560,
  0.733436808263995710, -0.679757639371212030, 0.733306452886705260,
    -0.679898261620603290,
  0.733176070547832740, -0.680038858872078930, 0.733045661252172080,
    -0.680179431120469750,
  0.732915225004517780, -0.680319978360607200, 0.732784761809665790,
    -0.680460500587323880,
  0.732654271672412820, -0.680600997795453020, 0.732523754597556700,
    -0.680741469979829090,
  0.732393210589896040, -0.680881917135287230, 0.732262639654230770,
    -0.681022339256663670,
  0.732132041795361290, -0.681162736338795430, 0.732001417018089630,
    -0.681303108376520530,
  0.731870765327218290, -0.681443455364677870, 0.731740086727550980,
    -0.681583777298107480,
  0.731609381223892630, -0.681724074171649710, 0.731478648821048520,
    -0.681864345980146670,
  0.731347889523825570, -0.682004592718440830, 0.731217103337031270,
    -0.682144814381375640,
  0.731086290265474340, -0.682285010963795570, 0.730955450313964360,
    -0.682425182460546060,
  0.730824583487312160, -0.682565328866473250, 0.730693689790329000,
    -0.682705450176424590,
  0.730562769227827590, -0.682845546385248080, 0.730431821804621520,
    -0.682985617487792740,
  0.730300847525525490, -0.683125663478908680, 0.730169846395354870,
    -0.683265684353446700,
  0.730038818418926260, -0.683405680106258680, 0.729907763601057140,
    -0.683545650732197530,
  0.729776681946566090, -0.683685596226116580, 0.729645573460272480,
    -0.683825516582870720,
  0.729514438146997010, -0.683965411797315400, 0.729383276011561050,
    -0.684105281864307080,
  0.729252087058786970, -0.684245126778703080, 0.729120871293498230,
    -0.684384946535361750,
  0.728989628720519420, -0.684524741129142300, 0.728858359344675800,
    -0.684664510554904960,
  0.728727063170793830, -0.684804254807510620, 0.728595740203700770,
    -0.684943973881821490,
  0.728464390448225200, -0.685083667772700360, 0.728333013909196360,
    -0.685223336475011210,
  0.728201610591444610, -0.685362979983618730, 0.728070180499801210,
    -0.685502598293388550,
  0.727938723639098620, -0.685642191399187470, 0.727807240014169960,
    -0.685781759295883030,
  0.727675729629849610, -0.685921301978343560, 0.727544192490972800,
    -0.686060819441438710,
  0.727412628602375770, -0.686200311680038590, 0.727281037968895870,
    -0.686339778689014520,
  0.727149420595371020, -0.686479220463238950, 0.727017776486640680,
    -0.686618636997584630,
  0.726886105647544970, -0.686758028286925890, 0.726754408082925020,
    -0.686897394326137610,
  0.726622683797622850, -0.687036735110095660, 0.726490932796481910,
    -0.687176050633676820,
  0.726359155084346010, -0.687315340891759050, 0.726227350666060370,
    -0.687454605879221030,
  0.726095519546471000, -0.687593845590942170, 0.725963661730424930,
    -0.687733060021803230,
  0.725831777222770370, -0.687872249166685550, 0.725699866028356120,
    -0.688011413020471640,
  0.725567928152032300, -0.688150551578044830, 0.725435963598649810,
    -0.688289664834289330,
  0.725303972373060770, -0.688428752784090440, 0.725171954480117950,
    -0.688567815422334250,
  0.725039909924675370, -0.688706852743907750, 0.724907838711587820,
    -0.688845864743699020,
  0.724775740845711280, -0.688984851416597040, 0.724643616331902550,
    -0.689123812757491570,
  0.724511465175019630, -0.689262748761273470, 0.724379287379921190,
    -0.689401659422834270,
  0.724247082951467000, -0.689540544737066830, 0.724114851894517850,
    -0.689679404698864800,
  0.723982594213935520, -0.689818239303122470, 0.723850309914582880,
    -0.689957048544735390,
  0.723717999001323500, -0.690095832418599950, 0.723585661479022150,
    -0.690234590919613370,
  0.723453297352544380, -0.690373324042674040, 0.723320906626756970,
    -0.690512031782681060,
  0.723188489306527460, -0.690650714134534600, 0.723056045396724410,
    -0.690789371093135650,
  0.722923574902217700, -0.690928002653386160, 0.722791077827877550,
    -0.691066608810189220,
  0.722658554178575610, -0.691205189558448450, 0.722526003959184540,
    -0.691343744893068710,
  0.722393427174577550, -0.691482274808955850, 0.722260823829629310,
    -0.691620779301016290,
  0.722128193929215350, -0.691759258364157750, 0.721995537478211880,
    -0.691897711993288760,
  0.721862854481496340, -0.692036140183318720, 0.721730144943947160,
    -0.692174542929158140,
  0.721597408870443770, -0.692312920225718220, 0.721464646265866370,
    -0.692451272067911130,
  0.721331857135096290, -0.692589598450650380, 0.721199041483015720,
    -0.692727899368849820,
  0.721066199314508110, -0.692866174817424630, 0.720933330634457530,
    -0.693004424791290870,
  0.720800435447749190, -0.693142649285365400, 0.720667513759269520,
    -0.693280848294566040,
  0.720534565573905270, -0.693419021813811760, 0.720401590896544760,
    -0.693557169838022290,
  0.720268589732077190, -0.693695292362118240, 0.720135562085392420,
    -0.693833389381021350,
  0.720002507961381650, -0.693971460889654000, 0.719869427364936860,
    -0.694109506882939820,
  0.719736320300951030, -0.694247527355803310, 0.719603186774318120,
    -0.694385522303169740,
  0.719470026789932990, -0.694523491719965520, 0.719336840352691740,
    -0.694661435601117820,
  0.719203627467491220, -0.694799353941554900, 0.719070388139229190,
    -0.694937246736205830,
  0.718937122372804490, -0.695075113980000880, 0.718803830173116890,
    -0.695212955667870780,
  0.718670511545067230, -0.695350771794747690, 0.718537166493557370,
    -0.695488562355564440,
  0.718403795023489830, -0.695626327345254870, 0.718270397139768260,
    -0.695764066758753690,
  0.718136972847297490, -0.695901780590996830, 0.718003522150983180,
    -0.696039468836920690,
  0.717870045055731710, -0.696177131491462990, 0.717736541566450950,
    -0.696314768549562090,
  0.717603011688049080, -0.696452380006157830, 0.717469455425435830,
    -0.696589965856190370,
  0.717335872783521730, -0.696727526094601200, 0.717202263767218070,
    -0.696865060716332470,
  0.717068628381437480, -0.697002569716327460, 0.716934966631093130,
    -0.697140053089530420,
  0.716801278521099540, -0.697277510830886520, 0.716667564056371890,
    -0.697414942935341790,
  0.716533823241826680, -0.697552349397843160, 0.716400056082381000,
    -0.697689730213338800,
  0.716266262582953120, -0.697827085376777290, 0.716132442748462330,
    -0.697964414883108670,
  0.715998596583828690, -0.698101718727283770, 0.715864724093973500,
    -0.698238996904254280,
  0.715730825283818590, -0.698376249408972920, 0.715596900158287470,
    -0.698513476236393040,
  0.715462948722303760, -0.698650677381469460, 0.715328970980792620,
    -0.698787852839157670,
  0.715194966938680120, -0.698925002604414150, 0.715060936600893090,
    -0.699062126672196140,
  0.714926879972359490, -0.699199225037462120, 0.714792797058008240,
    -0.699336297695171140,
  0.714658687862769090, -0.699473344640283770, 0.714524552391572860,
    -0.699610365867761040,
  0.714390390649351390, -0.699747361372564990, 0.714256202641037510,
    -0.699884331149658760,
  0.714121988371564820, -0.700021275194006250, 0.713987747845867830,
    -0.700158193500572730,
  0.713853481068882470, -0.700295086064323780, 0.713719188045545240,
    -0.700431952880226420,
  0.713584868780793640, -0.700568793943248340, 0.713450523279566260,
    -0.700705609248358450,
  0.713316151546802610, -0.700842398790526120, 0.713181753587443180,
    -0.700979162564722370,
  0.713047329406429340, -0.701115900565918660, 0.712912879008703480,
    -0.701252612789087460,
  0.712778402399208980, -0.701389299229202230, 0.712643899582890210,
    -0.701525959881237340,
  0.712509370564692320, -0.701662594740168450, 0.712374815349561710,
    -0.701799203800971720,
  0.712240233942445510, -0.701935787058624360, 0.712105626348291890,
    -0.702072344508104630,
  0.711970992572050100, -0.702208876144391870, 0.711836332618670080,
    -0.702345381962465880,
  0.711701646493102970, -0.702481861957308000, 0.711566934200300700,
    -0.702618316123900130,
  0.711432195745216430, -0.702754744457225300, 0.711297431132803970,
    -0.702891146952267400,
  0.711162640368018350, -0.703027523604011220, 0.711027823455815280,
    -0.703163874407442770,
  0.710892980401151680, -0.703300199357548730, 0.710758111208985350,
    -0.703436498449316660,
  0.710623215884275020, -0.703572771677735580, 0.710488294431980470,
    -0.703709019037794810,
  0.710353346857062420, -0.703845240524484940, 0.710218373164482220,
    -0.703981436132797620,
  0.710083373359202800, -0.704117605857725310, 0.709948347446187400,
    -0.704253749694261470,
  0.709813295430400840, -0.704389867637400410, 0.709678217316808580,
    -0.704525959682137380,
  0.709543113110376770, -0.704662025823468820, 0.709407982816072980,
    -0.704798066056391950,
  0.709272826438865690, -0.704934080375904880, 0.709137643983724030,
    -0.705070068777006840,
  0.709002435455618250, -0.705206031254697830, 0.708867200859519820,
    -0.705341967803978840,
  0.708731940200400650, -0.705477878419852100, 0.708596653483234080,
    -0.705613763097320490,
  0.708461340712994160, -0.705749621831387790, 0.708326001894655890,
    -0.705885454617058980,
  0.708190637033195400, -0.706021261449339740, 0.708055246133589500,
    -0.706157042323237060,
  0.707919829200816310, -0.706292797233758480, 0.707784386239854620,
    -0.706428526175912790,
  0.707648917255684350, -0.706564229144709510, 0.707513422253286280,
    -0.706699906135159430,
  0.707377901237642100, -0.706835557142273750, 0.707242354213734710,
    -0.706971182161065360,
  0.707106781186547570, -0.707106781186547460, 0.706971182161065360,
    -0.707242354213734600,
  0.706835557142273860, -0.707377901237642100, 0.706699906135159430,
    -0.707513422253286170,
  0.706564229144709620, -0.707648917255684350, 0.706428526175912790,
    -0.707784386239854620,
  0.706292797233758480, -0.707919829200816310, 0.706157042323237060,
    -0.708055246133589500,
  0.706021261449339740, -0.708190637033195290, 0.705885454617058980,
    -0.708326001894655780,
  0.705749621831387790, -0.708461340712994050, 0.705613763097320490,
    -0.708596653483234080,
  0.705477878419852210, -0.708731940200400650, 0.705341967803978950,
    -0.708867200859519820,
  0.705206031254697830, -0.709002435455618250, 0.705070068777006840,
    -0.709137643983723920,
  0.704934080375904990, -0.709272826438865580, 0.704798066056391950,
    -0.709407982816072980,
  0.704662025823468930, -0.709543113110376770, 0.704525959682137380,
    -0.709678217316808470,
  0.704389867637400410, -0.709813295430400840, 0.704253749694261580,
    -0.709948347446187400,
  0.704117605857725430, -0.710083373359202690, 0.703981436132797730,
    -0.710218373164482220,
  0.703845240524484940, -0.710353346857062310, 0.703709019037794810,
    -0.710488294431980470,
  0.703572771677735580, -0.710623215884275020, 0.703436498449316770,
    -0.710758111208985350,
  0.703300199357548730, -0.710892980401151680, 0.703163874407442770,
    -0.711027823455815280,
  0.703027523604011220, -0.711162640368018350, 0.702891146952267400,
    -0.711297431132803970,
  0.702754744457225300, -0.711432195745216430, 0.702618316123900130,
    -0.711566934200300700,
  0.702481861957308000, -0.711701646493102970, 0.702345381962465880,
    -0.711836332618670080,
  0.702208876144391870, -0.711970992572049990, 0.702072344508104740,
    -0.712105626348291890,
  0.701935787058624360, -0.712240233942445510, 0.701799203800971720,
    -0.712374815349561710,
  0.701662594740168570, -0.712509370564692320, 0.701525959881237450,
    -0.712643899582890210,
  0.701389299229202230, -0.712778402399208870, 0.701252612789087460,
    -0.712912879008703370,
  0.701115900565918660, -0.713047329406429230, 0.700979162564722480,
    -0.713181753587443070,
  0.700842398790526230, -0.713316151546802610, 0.700705609248358450,
    -0.713450523279566150,
  0.700568793943248450, -0.713584868780793520, 0.700431952880226420,
    -0.713719188045545130,
  0.700295086064323780, -0.713853481068882470, 0.700158193500572730,
    -0.713987747845867830,
  0.700021275194006360, -0.714121988371564710, 0.699884331149658760,
    -0.714256202641037400,
  0.699747361372564990, -0.714390390649351390, 0.699610365867761040,
    -0.714524552391572860,
  0.699473344640283770, -0.714658687862768980, 0.699336297695171250,
    -0.714792797058008130,
  0.699199225037462120, -0.714926879972359370, 0.699062126672196140,
    -0.715060936600892980,
  0.698925002604414150, -0.715194966938680010, 0.698787852839157790,
    -0.715328970980792620,
  0.698650677381469580, -0.715462948722303650, 0.698513476236393040,
    -0.715596900158287360,
  0.698376249408972920, -0.715730825283818590, 0.698238996904254390,
    -0.715864724093973390,
  0.698101718727283880, -0.715998596583828690, 0.697964414883108790,
    -0.716132442748462330,
  0.697827085376777290, -0.716266262582953120, 0.697689730213338800,
    -0.716400056082380890,
  0.697552349397843270, -0.716533823241826570, 0.697414942935341790,
    -0.716667564056371890,
  0.697277510830886630, -0.716801278521099540, 0.697140053089530530,
    -0.716934966631093130,
  0.697002569716327460, -0.717068628381437480, 0.696865060716332470,
    -0.717202263767218070,
  0.696727526094601200, -0.717335872783521730, 0.696589965856190370,
    -0.717469455425435830,
  0.696452380006157830, -0.717603011688049080, 0.696314768549562200,
    -0.717736541566450840,
  0.696177131491462990, -0.717870045055731710, 0.696039468836920690,
    -0.718003522150983060,
  0.695901780590996830, -0.718136972847297490, 0.695764066758753800,
    -0.718270397139768260,
  0.695626327345254870, -0.718403795023489720, 0.695488562355564440,
    -0.718537166493557370,
  0.695350771794747800, -0.718670511545067230, 0.695212955667870890,
    -0.718803830173116890,
  0.695075113980000880, -0.718937122372804380, 0.694937246736205940,
    -0.719070388139229190,
  0.694799353941554900, -0.719203627467491220, 0.694661435601117930,
    -0.719336840352691740,
  0.694523491719965520, -0.719470026789932990, 0.694385522303169860,
    -0.719603186774318000,
  0.694247527355803310, -0.719736320300951030, 0.694109506882939820,
    -0.719869427364936860,
  0.693971460889654000, -0.720002507961381650, 0.693833389381021350,
    -0.720135562085392310,
  0.693695292362118350, -0.720268589732077080, 0.693557169838022400,
    -0.720401590896544760,
  0.693419021813811880, -0.720534565573905270, 0.693280848294566150,
    -0.720667513759269410,
  0.693142649285365510, -0.720800435447749190, 0.693004424791290870,
    -0.720933330634457530,
  0.692866174817424740, -0.721066199314508110, 0.692727899368849820,
    -0.721199041483015720,
  0.692589598450650380, -0.721331857135096180, 0.692451272067911240,
    -0.721464646265866370,
  0.692312920225718220, -0.721597408870443660, 0.692174542929158140,
    -0.721730144943947160,
  0.692036140183318830, -0.721862854481496340, 0.691897711993288760,
    -0.721995537478211880,
  0.691759258364157750, -0.722128193929215350, 0.691620779301016400,
    -0.722260823829629310,
  0.691482274808955850, -0.722393427174577550, 0.691343744893068820,
    -0.722526003959184430,
  0.691205189558448450, -0.722658554178575610, 0.691066608810189220,
    -0.722791077827877550,
  0.690928002653386280, -0.722923574902217700, 0.690789371093135760,
    -0.723056045396724410,
  0.690650714134534720, -0.723188489306527350, 0.690512031782681170,
    -0.723320906626756850,
  0.690373324042674040, -0.723453297352544380, 0.690234590919613370,
    -0.723585661479022040,
  0.690095832418599950, -0.723717999001323390, 0.689957048544735390,
    -0.723850309914582880,
  0.689818239303122470, -0.723982594213935520, 0.689679404698864800,
    -0.724114851894517850,
  0.689540544737066940, -0.724247082951466890, 0.689401659422834380,
    -0.724379287379921080,
  0.689262748761273470, -0.724511465175019520, 0.689123812757491680,
    -0.724643616331902550,
  0.688984851416597150, -0.724775740845711280, 0.688845864743699130,
    -0.724907838711587820,
  0.688706852743907750, -0.725039909924675370, 0.688567815422334360,
    -0.725171954480117840,
  0.688428752784090550, -0.725303972373060660, 0.688289664834289440,
    -0.725435963598649810,
  0.688150551578044830, -0.725567928152032300, 0.688011413020471640,
    -0.725699866028356120,
  0.687872249166685550, -0.725831777222770370, 0.687733060021803230,
    -0.725963661730424930,
  0.687593845590942170, -0.726095519546470890, 0.687454605879221030,
    -0.726227350666060260,
  0.687315340891759160, -0.726359155084346010, 0.687176050633676930,
    -0.726490932796481910,
  0.687036735110095660, -0.726622683797622850, 0.686897394326137610,
    -0.726754408082924910,
  0.686758028286925890, -0.726886105647544970, 0.686618636997584740,
    -0.727017776486640680,
  0.686479220463238950, -0.727149420595371020, 0.686339778689014630,
    -0.727281037968895760,
  0.686200311680038700, -0.727412628602375770, 0.686060819441438710,
    -0.727544192490972800,
  0.685921301978343670, -0.727675729629849610, 0.685781759295883030,
    -0.727807240014169960,
  0.685642191399187470, -0.727938723639098620, 0.685502598293388670,
    -0.728070180499801210,
  0.685362979983618730, -0.728201610591444500, 0.685223336475011210,
    -0.728333013909196360,
  0.685083667772700360, -0.728464390448225200, 0.684943973881821490,
    -0.728595740203700770,
  0.684804254807510620, -0.728727063170793720, 0.684664510554904960,
    -0.728858359344675690,
  0.684524741129142300, -0.728989628720519310, 0.684384946535361750,
    -0.729120871293498230,
  0.684245126778703080, -0.729252087058786970, 0.684105281864307080,
    -0.729383276011561050,
  0.683965411797315510, -0.729514438146996900, 0.683825516582870830,
    -0.729645573460272480,
  0.683685596226116690, -0.729776681946565970, 0.683545650732197530,
    -0.729907763601057140,
  0.683405680106258790, -0.730038818418926150, 0.683265684353446700,
    -0.730169846395354870,
  0.683125663478908800, -0.730300847525525380, 0.682985617487792850,
    -0.730431821804621520,
  0.682845546385248080, -0.730562769227827590, 0.682705450176424590,
    -0.730693689790328890,
  0.682565328866473250, -0.730824583487312050, 0.682425182460546060,
    -0.730955450313964360,
  0.682285010963795570, -0.731086290265474230, 0.682144814381375640,
    -0.731217103337031160,
  0.682004592718440830, -0.731347889523825460, 0.681864345980146780,
    -0.731478648821048520,
  0.681724074171649820, -0.731609381223892520, 0.681583777298107480,
    -0.731740086727550980,
  0.681443455364677990, -0.731870765327218290, 0.681303108376520530,
    -0.732001417018089520,
  0.681162736338795430, -0.732132041795361290, 0.681022339256663670,
    -0.732262639654230660,
  0.680881917135287340, -0.732393210589896040, 0.680741469979829090,
    -0.732523754597556590,
  0.680600997795453130, -0.732654271672412820, 0.680460500587323880,
    -0.732784761809665790,
  0.680319978360607200, -0.732915225004517780, 0.680179431120469750,
    -0.733045661252171970,
  0.680038858872079040, -0.733176070547832740, 0.679898261620603290,
    -0.733306452886705260,
  0.679757639371212030, -0.733436808263995710, 0.679616992129075560,
    -0.733567136674911360,
  0.679476319899365080, -0.733697438114660260, 0.679335622687252670,
    -0.733827712578451700,
  0.679194900497911200, -0.733957960061495940, 0.679054153336514870,
    -0.734088180559004040,
  0.678913381208238410, -0.734218374066188170, 0.678772584118257690,
    -0.734348540578261600,
  0.678631762071749470, -0.734478680090438370, 0.678490915073891250,
    -0.734608792597933550,
  0.678350043129861580, -0.734738878095963390, 0.678209146244839860,
    -0.734868936579745060,
  0.678068224424006600, -0.734998968044496600, 0.677927277672543130,
    -0.735128972485437180,
  0.677786305995631500, -0.735258949897786730, 0.677645309398454910,
    -0.735388900276766620,
  0.677504287886197430, -0.735518823617598900, 0.677363241464044030,
    -0.735648719915506400,
  0.677222170137180450, -0.735778589165713480, 0.677081073910793530,
    -0.735908431363445190,
  0.676939952790071240, -0.736038246503927350, 0.676798806780201770,
    -0.736168034582387330,
  0.676657635886374950, -0.736297795594053060, 0.676516440113781090,
    -0.736427529534153690,
  0.676375219467611700, -0.736557236397919150, 0.676233973953058950,
    -0.736686916180580460,
  0.676092703575316030, -0.736816568877369790, 0.675951408339577010,
    -0.736946194483520170,
  0.675810088251037060, -0.737075792994265620, 0.675668743314891910,
    -0.737205364404841190,
  0.675527373536338630, -0.737334908710482790, 0.675385978920574950,
    -0.737464425906427580,
  0.675244559472799270, -0.737593915987913460, 0.675103115198211530,
    -0.737723378950179590,
  0.674961646102012040, -0.737852814788465980, 0.674820152189402280,
    -0.737982223498013570,
  0.674678633465584540, -0.738111605074064260, 0.674537089935762110,
    -0.738240959511861310,
  0.674395521605139050, -0.738370286806648510, 0.674253928478920520,
    -0.738499586953671130,
  0.674112310562312360, -0.738628859948174840, 0.673970667860521620,
    -0.738758105785406900,
  0.673829000378756150, -0.738887324460615110, 0.673687308122224330,
    -0.739016515969048600,
  0.673545591096136100, -0.739145680305957400, 0.673403849305701850,
    -0.739274817466592520,
  0.673262082756132970, -0.739403927446205760, 0.673120291452642070,
    -0.739533010240050250,
  0.672978475400442090, -0.739662065843379900, 0.672836634604747410,
    -0.739791094251449950,
  0.672694769070772970, -0.739920095459516090, 0.672552878803734820,
    -0.740049069462835550,
  0.672410963808849900, -0.740178016256666240, 0.672269024091336040,
    -0.740306935836266940,
  0.672127059656411840, -0.740435828196898020, 0.671985070509296900,
    -0.740564693333820250,
  0.671843056655211930, -0.740693531242295640, 0.671701018099378320,
    -0.740822341917587330,
  0.671558954847018330, -0.740951125354959110, 0.671416866903355450,
    -0.741079881549676080,
  0.671274754273613490, -0.741208610497004260, 0.671132616963017850,
    -0.741337312192210660,
  0.670990454976794220, -0.741465986630563290, 0.670848268320169750,
    -0.741594633807331150,
  0.670706056998372160, -0.741723253717784140, 0.670563821016630040,
    -0.741851846357193480,
  0.670421560380173090, -0.741980411720830960, 0.670279275094231910,
    -0.742108949803969800,
  0.670136965164037760, -0.742237460601884000, 0.669994630594823000,
    -0.742365944109848460,
  0.669852271391821130, -0.742494400323139180, 0.669709887560265840,
    -0.742622829237033380,
  0.669567479105392490, -0.742751230846809050, 0.669425046032436910,
    -0.742879605147745090,
  0.669282588346636010, -0.743007952135121720, 0.669140106053227710,
    -0.743136271804219820,
  0.668997599157450270, -0.743264564150321490, 0.668855067664543610,
    -0.743392829168709970,
  0.668712511579748090, -0.743521066854669120, 0.668569930908305080,
    -0.743649277203484060,
  0.668427325655456820, -0.743777460210440780, 0.668284695826446670,
    -0.743905615870826490,
  0.668142041426518560, -0.744033744179929180, 0.667999362460917510,
    -0.744161845133038070,
  0.667856658934889440, -0.744289918725443140, 0.667713930853681140,
    -0.744417964952435620,
  0.667571178222540310, -0.744545983809307250, 0.667428401046715640,
    -0.744673975291351600,
  0.667285599331456480, -0.744801939393862630, 0.667142773082013310,
    -0.744929876112135350,
  0.666999922303637470, -0.745057785441465950, 0.666857047001581220,
    -0.745185667377151640,
  0.666714147181097670, -0.745313521914490410, 0.666571222847440750,
    -0.745441349048781680,
  0.666428274005865350, -0.745569148775325430, 0.666285300661627390,
    -0.745696921089422760,
  0.666142302819983540, -0.745824665986375980, 0.665999280486191500,
    -0.745952383461488180,
  0.665856233665509720, -0.746080073510063780, 0.665713162363197660,
    -0.746207736127407650,
  0.665570066584515560, -0.746335371308826320, 0.665426946334724660,
    -0.746462979049626770,
  0.665283801619087180, -0.746590559345117310, 0.665140632442866140,
    -0.746718112190607020,
  0.664997438811325340, -0.746845637581406540, 0.664854220729729660,
    -0.746973135512826740,
  0.664710978203344900, -0.747100605980180130, 0.664567711237437520,
    -0.747228048978779920,
  0.664424419837275180, -0.747355464503940190, 0.664281104008126230,
    -0.747482852550976570,
  0.664137763755260010, -0.747610213115205150, 0.663994399083946640,
    -0.747737546191943330,
  0.663851009999457340, -0.747864851776509410, 0.663707596507064120,
    -0.747992129864222700,
  0.663564158612039880, -0.748119380450403490, 0.663420696319658280,
    -0.748246603530373420,
  0.663277209635194100, -0.748373799099454560, 0.663133698563923010,
    -0.748500967152970430,
  0.662990163111121470, -0.748628107686245330, 0.662846603282066900,
    -0.748755220694604760,
  0.662703019082037440, -0.748882306173375030, 0.662559410516312400,
    -0.749009364117883770,
  0.662415777590171780, -0.749136394523459260, 0.662272120308896590,
    -0.749263397385431020,
  0.662128438677768720, -0.749390372699129560, 0.661984732702071030,
    -0.749517320459886170,
  0.661841002387086870, -0.749644240663033480, 0.661697247738101120,
    -0.749771133303904990,
  0.661553468760399000, -0.749897998377835220, 0.661409665459266940,
    -0.750024835880159780,
  0.661265837839992270, -0.750151645806214960, 0.661121985907862970,
    -0.750278428151338610,
  0.660978109668168060, -0.750405182910869220, 0.660834209126197610,
    -0.750531910080146410,
  0.660690284287242300, -0.750658609654510590, 0.660546335156593890,
    -0.750785281629303580,
  0.660402361739545030, -0.750911925999867890, 0.660258364041389050,
    -0.751038542761547250,
  0.660114342067420480, -0.751165131909686370, 0.659970295822934540,
    -0.751291693439630870,
  0.659826225313227430, -0.751418227346727360, 0.659682130543596150,
    -0.751544733626323570,
  0.659538011519338770, -0.751671212273768430, 0.659393868245753970,
    -0.751797663284411440,
  0.659249700728141490, -0.751924086653603550, 0.659105508971802200,
    -0.752050482376696360,
  0.658961292982037320, -0.752176850449042700, 0.658817052764149480,
    -0.752303190865996400,
  0.658672788323441890, -0.752429503622912390, 0.658528499665218760,
    -0.752555788715146390,
  0.658384186794785050, -0.752682046138055230, 0.658239849717446980,
    -0.752808275886996950,
  0.658095488438511290, -0.752934477957330150, 0.657951102963285630,
    -0.753060652344415100,
  0.657806693297078640, -0.753186799043612410, 0.657662259445200070,
    -0.753312918050284330,
  0.657517801412960120, -0.753439009359793580, 0.657373319205670210,
    -0.753565072967504190,
  0.657228812828642650, -0.753691108868781210, 0.657084282287190180,
    -0.753817117058990680,
  0.656939727586627110, -0.753943097533499640, 0.656795148732268070,
    -0.754069050287676120,
  0.656650545729429050, -0.754194975316889170, 0.656505918583426550,
    -0.754320872616508820,
  0.656361267299578000, -0.754446742181906330, 0.656216591883202030,
    -0.754572584008453840,
  0.656071892339617710, -0.754698398091524390, 0.655927168674145360,
    -0.754824184426492240,
  0.655782420892106030, -0.754949943008732640, 0.655637648998821820,
    -0.755075673833621510,
  0.655492852999615460, -0.755201376896536550, 0.655348032899810580,
    -0.755327052192855560,
  0.655203188704731930, -0.755452699717958140, 0.655058320419704910,
    -0.755578319467224540,
  0.654913428050056150, -0.755703911436035880, 0.654768511601112600,
    -0.755829475619774760,
  0.654623571078202680, -0.755955012013824310, 0.654478606486655350,
    -0.756080520613569120,
  0.654333617831800550, -0.756206001414394540, 0.654188605118969040,
    -0.756331454411686920,
  0.654043568353492640, -0.756456879600833630, 0.653898507540703890,
    -0.756582276977223470,
  0.653753422685936170, -0.756707646536245670, 0.653608313794523890,
    -0.756832988273290820,
  0.653463180871802330, -0.756958302183750490, 0.653318023923107670,
    -0.757083588263017140,
  0.653172842953776760, -0.757208846506484460, 0.653027637969147650,
    -0.757334076909547130,
  0.652882408974558960, -0.757459279467600720, 0.652737155975350420,
    -0.757584454176041810,
  0.652591878976862550, -0.757709601030268080, 0.652446577984436840,
    -0.757834720025678310,
  0.652301253003415460, -0.757959811157672300, 0.652155904039141700,
    -0.758084874421650620,
  0.652010531096959500, -0.758209909813015280, 0.651865134182214030,
    -0.758334917327168960,
  0.651719713300251020, -0.758459896959515320, 0.651574268456417080,
    -0.758584848705459500,
  0.651428799656059820, -0.758709772560407390, 0.651283306904527850,
    -0.758834668519765660,
  0.651137790207170330, -0.758959536578942440, 0.650992249569337660,
    -0.759084376733346500,
  0.650846684996380990, -0.759209188978387960, 0.650701096493652040,
    -0.759333973309477940,
  0.650555484066503990, -0.759458729722028210, 0.650409847720290420,
    -0.759583458211452010,
  0.650264187460365960, -0.759708158773163440, 0.650118503292086200,
    -0.759832831402577400,
  0.649972795220807530, -0.759957476095110330, 0.649827063251887100,
    -0.760082092846179220,
  0.649681307390683190, -0.760206681651202420, 0.649535527642554730,
    -0.760331242505599030,
  0.649389724012861770, -0.760455775404789260, 0.649243896506965010,
    -0.760580280344194340,
  0.649098045130226060, -0.760704757319236920, 0.648952169888007410,
    -0.760829206325340010,
  0.648806270785672550, -0.760953627357928040, 0.648660347828585840,
    -0.761078020412426560,
  0.648514401022112550, -0.761202385484261780, 0.648368430371618400,
    -0.761326722568861250,
  0.648222435882470420, -0.761451031661653510, 0.648076417560036530,
    -0.761575312758068000,
  0.647930375409685460, -0.761699565853535270, 0.647784309436786550,
    -0.761823790943486840,
  0.647638219646710420, -0.761947988023355390, 0.647492106044828100,
    -0.762072157088574560,
  0.647345968636512060, -0.762196298134578900, 0.647199807427135230,
    -0.762320411156804160,
  0.647053622422071650, -0.762444496150687100, 0.646907413626696020,
    -0.762568553111665380,
  0.646761181046383920, -0.762692582035177870, 0.646614924686512050,
    -0.762816582916664320,
  0.646468644552457890, -0.762940555751565720, 0.646322340649599590,
    -0.763064500535323710,
  0.646176012983316390, -0.763188417263381270, 0.646029661558988330,
    -0.763312305931182380,
  0.645883286381996440, -0.763436166534172010, 0.645736887457722290,
    -0.763559999067796150,
  0.645590464791548800, -0.763683803527501870, 0.645444018388859230,
    -0.763807579908737160,
  0.645297548255038380, -0.763931328206951090, 0.645151054395471270,
    -0.764055048417593860,
  0.645004536815544040, -0.764178740536116670, 0.644857995520643710,
    -0.764302404557971720,
  0.644711430516158420, -0.764426040478612070, 0.644564841807476750,
    -0.764549648293492150,
  0.644418229399988380, -0.764673227998067140, 0.644271593299083900,
    -0.764796779587793460,
  0.644124933510154540, -0.764920303058128410, 0.643978250038592660,
    -0.765043798404530410,
  0.643831542889791500, -0.765167265622458960, 0.643684812069144960,
    -0.765290704707374260,
  0.643538057582047850, -0.765414115654738160, 0.643391279433895960,
    -0.765537498460013070,
  0.643244477630085850, -0.765660853118662390, 0.643097652176015110,
    -0.765784179626150970,
  0.642950803077082080, -0.765907477977944230, 0.642803930338686100,
    -0.766030748169509000,
  0.642657033966226860, -0.766153990196312810, 0.642510113965105710,
    -0.766277204053824710,
  0.642363170340724320, -0.766400389737514120, 0.642216203098485370,
    -0.766523547242852100,
  0.642069212243792540, -0.766646676565310380, 0.641922197782050170,
    -0.766769777700361920,
  0.641775159718663500, -0.766892850643480670, 0.641628098059038860,
    -0.767015895390141480,
  0.641481012808583160, -0.767138911935820400, 0.641333903972704290,
    -0.767261900275994390,
  0.641186771556811250, -0.767384860406141620, 0.641039615566313390,
    -0.767507792321741270,
  0.640892436006621380, -0.767630696018273270, 0.640745232883146440,
    -0.767753571491219030,
  0.640598006201301030, -0.767876418736060610, 0.640450755966498140,
    -0.767999237748281270,
  0.640303482184151670, -0.768122028523365310, 0.640156184859676620,
    -0.768244791056798220,
  0.640008863998488440, -0.768367525344066270, 0.639861519606004010,
    -0.768490231380656750,
  0.639714151687640450, -0.768612909162058270, 0.639566760248816420,
    -0.768735558683760310,
  0.639419345294950700, -0.768858179941253270, 0.639271906831463510,
    -0.768980772930028870,
  0.639124444863775730, -0.769103337645579590, 0.638976959397309140,
    -0.769225874083399260,
  0.638829450437486400, -0.769348382238982280, 0.638681917989730840,
    -0.769470862107824560,
  0.638534362059466790, -0.769593313685422940, 0.638386782652119680,
    -0.769715736967275020,
  0.638239179773115390, -0.769838131948879840, 0.638091553427880930,
    -0.769960498625737230,
  0.637943903621844170, -0.770082836993347900, 0.637796230360433540,
    -0.770205147047214100,
  0.637648533649078810, -0.770327428782838770, 0.637500813493210310,
    -0.770449682195725960,
  0.637353069898259130, -0.770571907281380700, 0.637205302869657600,
    -0.770694104035309140,
  0.637057512412838590, -0.770816272453018430, 0.636909698533235870,
    -0.770938412530016940,
  0.636761861236284200, -0.771060524261813710, 0.636614000527419230,
    -0.771182607643919220,
  0.636466116412077180, -0.771304662671844720, 0.636318208895695570,
    -0.771426689341102590,
  0.636170277983712170, -0.771548687647206300, 0.636022323681566300,
    -0.771670657585670330,
  0.635874345994697720, -0.771792599152010150, 0.635726344928547180,
    -0.771914512341742350,
  0.635578320488556230, -0.772036397150384410, 0.635430272680167160,
    -0.772158253573455240,
  0.635282201508823530, -0.772280081606474320, 0.635134106979969300,
    -0.772401881244962340,
  0.634985989099049460, -0.772523652484441330, 0.634837847871510100,
    -0.772645395320433860,
  0.634689683302797850, -0.772767109748463740, 0.634541495398360130,
    -0.772888795764056220,
  0.634393284163645490, -0.773010453362736990, 0.634245049604103330,
    -0.773132082540033070,
  0.634096791725183740, -0.773253683291472590, 0.633948510532337810,
    -0.773375255612584470,
  0.633800206031017280, -0.773496799498899050, 0.633651878226674900,
    -0.773618314945947460,
  0.633503527124764320, -0.773739801949261840, 0.633355152730740060,
    -0.773861260504375540,
  0.633206755050057190, -0.773982690606822790, 0.633058334088172250,
    -0.774104092252138940,
  0.632909889850541860, -0.774225465435860570, 0.632761422342624000,
    -0.774346810153525020,
  0.632612931569877520, -0.774468126400670860, 0.632464417537761840,
    -0.774589414172837550,
  0.632315880251737680, -0.774710673465565550, 0.632167319717266030,
    -0.774831904274396850,
  0.632018735939809060, -0.774953106594873820, 0.631870128924829850,
    -0.775074280422540450,
  0.631721498677792370, -0.775195425752941310, 0.631572845204161130,
    -0.775316542581622410,
  0.631424168509401860, -0.775437630904130430, 0.631275468598980870,
    -0.775558690716013580,
  0.631126745478365340, -0.775679722012820540, 0.630977999153023660,
    -0.775800724790101540,
  0.630829229628424470, -0.775921699043407580, 0.630680436910038060,
    -0.776042644768290770,
  0.630531621003334600, -0.776163561960304340, 0.630382781913785940,
    -0.776284450615002400,
  0.630233919646864480, -0.776405310727940390, 0.630085034208043290,
    -0.776526142294674430,
  0.629936125602796550, -0.776646945310762060, 0.629787193836599200,
    -0.776767719771761510,
  0.629638238914927100, -0.776888465673232440, 0.629489260843256740,
    -0.777009183010735290,
  0.629340259627065750, -0.777129871779831620, 0.629191235271832410,
    -0.777250531976084070,
  0.629042187783036000, -0.777371163595056200, 0.628893117166156480,
    -0.777491766632312900,
  0.628744023426674790, -0.777612341083419920, 0.628594906570072660,
    -0.777732886943944050,
  0.628445766601832710, -0.777853404209453040, 0.628296603527438440,
    -0.777973892875515990,
  0.628147417352374120, -0.778094352937702790, 0.627998208082124810,
    -0.778214784391584420,
  0.627848975722176570, -0.778335187232733090, 0.627699720278016240,
    -0.778455561456721900,
  0.627550441755131530, -0.778575907059124940, 0.627401140159011160,
    -0.778696224035517530,
  0.627251815495144190, -0.778816512381475870, 0.627102467769021010,
    -0.778936772092577500,
  0.626953096986132770, -0.779057003164400630, 0.626803703151971310,
    -0.779177205592524680,
  0.626654286272029460, -0.779297379372530300, 0.626504846351800930,
    -0.779417524499998900,
  0.626355383396779990, -0.779537640970513150, 0.626205897412462130,
    -0.779657728779656780,
  0.626056388404343520, -0.779777787923014440, 0.625906856377921210,
    -0.779897818396171890,
  0.625757301338692900, -0.780017820194715990, 0.625607723292157410,
    -0.780137793314234500,
  0.625458122243814360, -0.780257737750316590, 0.625308498199164010,
    -0.780377653498552040,
  0.625158851163707730, -0.780497540554531910, 0.625009181142947460,
    -0.780617398913848290,
  0.624859488142386450, -0.780737228572094380, 0.624709772167528100,
    -0.780857029524864470,
  0.624560033223877320, -0.780976801767753750, 0.624410271316939380,
    -0.781096545296358410,
  0.624260486452220650, -0.781216260106276090, 0.624110678635228510,
    -0.781335946193104870,
  0.623960847871470770, -0.781455603552444480, 0.623810994166456130,
    -0.781575232179895550,
  0.623661117525694640, -0.781694832071059390, 0.623511217954696550,
    -0.781814403221538830,
  0.623361295458973340, -0.781933945626937630, 0.623211350044037270,
    -0.782053459282860300,
  0.623061381715401370, -0.782172944184912900, 0.622911390478579460,
    -0.782292400328702400,
  0.622761376339086460, -0.782411827709836420, 0.622611339302437730,
    -0.782531226323924240,
  0.622461279374150080, -0.782650596166575730, 0.622311196559740320,
    -0.782769937233402050,
  0.622161090864726930, -0.782889249520015480, 0.622010962294628600,
    -0.783008533022029110,
  0.621860810854965360, -0.783127787735057310, 0.621710636551257690,
    -0.783247013654715380,
  0.621560439389027270, -0.783366210776619720, 0.621410219373796150,
    -0.783485379096387820,
  0.621259976511087660, -0.783604518609638200, 0.621109710806425740,
    -0.783723629311990470,
  0.620959422265335180, -0.783842711199065230, 0.620809110893341900,
    -0.783961764266484010,
  0.620658776695972140, -0.784080788509869950, 0.620508419678753360,
    -0.784199783924846570,
  0.620358039847213830, -0.784318750507038920, 0.620207637206882430,
    -0.784437688252072720,
  0.620057211763289210, -0.784556597155575240, 0.619906763521964830,
    -0.784675477213174320,
  0.619756292488440660, -0.784794328420499230, 0.619605798668249390,
    -0.784913150773180020,
  0.619455282066924020, -0.785031944266848080, 0.619304742689998690,
    -0.785150708897135560,
  0.619154180543008410, -0.785269444659675850, 0.619003595631488770,
    -0.785388151550103550,
  0.618852987960976320, -0.785506829564053930, 0.618702357537008640,
    -0.785625478697163700,
  0.618551704365123860, -0.785744098945070360, 0.618401028450860980,
    -0.785862690303412600,
  0.618250329799760250, -0.785981252767830150, 0.618099608417362110,
    -0.786099786333963820,
  0.617948864309208260, -0.786218290997455550, 0.617798097480841140,
    -0.786336766753948260,
  0.617647307937803980, -0.786455213599085770, 0.617496495685640910,
    -0.786573631528513230,
  0.617345660729896940, -0.786692020537876680, 0.617194803076117630,
    -0.786810380622823490,
  0.617043922729849760, -0.786928711779001700, 0.616893019696640790,
    -0.787047014002060790,
  0.616742093982038830, -0.787165287287650890, 0.616591145591593230,
    -0.787283531631423620,
  0.616440174530853650, -0.787401747029031320, 0.616289180805370980,
    -0.787519933476127810,
  0.616138164420696910, -0.787638090968367450, 0.615987125382383870,
    -0.787756219501405950,
  0.615836063695985090, -0.787874319070900110, 0.615684979367054570,
    -0.787992389672507950,
  0.615533872401147430, -0.788110431301888070, 0.615382742803819330,
    -0.788228443954700490,
  0.615231590580626820, -0.788346427626606230, 0.615080415737127460,
    -0.788464382313267430,
  0.614929218278879590, -0.788582308010347120, 0.614777998211442190,
    -0.788700204713509660,
  0.614626755540375050, -0.788818072418420170, 0.614475490271239160,
    -0.788935911120745130,
  0.614324202409595950, -0.789053720816151880, 0.614172891961007990,
    -0.789171501500308790,
  0.614021558931038490, -0.789289253168885650, 0.613870203325251440,
    -0.789406975817552810,
  0.613718825149211830, -0.789524669441982190, 0.613567424408485330,
    -0.789642334037846340,
  0.613416001108638590, -0.789759969600819070, 0.613264555255239150,
    -0.789877576126575280,
  0.613113086853854910, -0.789995153610791090, 0.612961595910055170,
    -0.790112702049143300,
  0.612810082429409710, -0.790230221437310030, 0.612658546417489290,
    -0.790347711770970520,
  0.612506987879865570, -0.790465173045804880, 0.612355406822110760,
    -0.790582605257494460,
  0.612203803249798060, -0.790700008401721610, 0.612052177168501580,
    -0.790817382474169660,
  0.611900528583796070, -0.790934727470523290, 0.611748857501257400,
    -0.791052043386467950,
  0.611597163926462020, -0.791169330217690090, 0.611445447864987110,
    -0.791286587959877720,
  0.611293709322411010, -0.791403816608719500, 0.611141948304312570,
    -0.791521016159905220,
  0.610990164816271770, -0.791638186609125770, 0.610838358863869280,
    -0.791755327952073150,
  0.610686530452686280, -0.791872440184440470, 0.610534679588305320,
    -0.791989523301921850,
  0.610382806276309480, -0.792106577300212390, 0.610230910522282620,
    -0.792223602175008310,
  0.610078992331809620, -0.792340597922007060, 0.609927051710476230,
    -0.792457564536906970,
  0.609775088663868430, -0.792574502015407580, 0.609623103197573730,
    -0.792691410353209450,
  0.609471095317180240, -0.792808289546014120, 0.609319065028276820,
    -0.792925139589524260,
  0.609167012336453210, -0.793041960479443640, 0.609014937247299940,
    -0.793158752211477140,
  0.608862839766408200, -0.793275514781330630, 0.608710719899370420,
    -0.793392248184711100,
  0.608558577651779450, -0.793508952417326660, 0.608406413029229260,
    -0.793625627474886190,
  0.608254226037314490, -0.793742273353100100, 0.608102016681630550,
    -0.793858890047679620,
  0.607949784967773740, -0.793975477554337170, 0.607797530901341140,
    -0.794092035868785960,
  0.607645254487930830, -0.794208564986740640, 0.607492955733141660,
    -0.794325064903916520,
  0.607340634642572930, -0.794441535616030590, 0.607188291221825160,
    -0.794557977118800270,
  0.607035925476499760, -0.794674389407944550, 0.606883537412198580,
    -0.794790772479183170,
  0.606731127034524480, -0.794907126328237010, 0.606578694349081400,
    -0.795023450950828050,
  0.606426239361473550, -0.795139746342679590, 0.606273762077306430,
    -0.795256012499515500,
  0.606121262502186230, -0.795372249417061190, 0.605968740641719790,
    -0.795488457091042990,
  0.605816196501515080, -0.795604635517188070, 0.605663630087180490,
    -0.795720784691225090,
  0.605511041404325550, -0.795836904608883460, 0.605358430458560530,
    -0.795952995265893910,
  0.605205797255496500, -0.796069056657987990, 0.605053141800745430,
    -0.796185088780898440,
  0.604900464099919930, -0.796301091630359110, 0.604747764158633410,
    -0.796417065202104980,
  0.604595041982500360, -0.796533009491872000, 0.604442297577135970,
    -0.796648924495397150,
  0.604289530948156070, -0.796764810208418720, 0.604136742101177630,
    -0.796880666626675780,
  0.603983931041818020, -0.796996493745908750, 0.603831097775695880,
    -0.797112291561858920,
  0.603678242308430370, -0.797228060070268700, 0.603525364645641550,
    -0.797343799266881700,
  0.603372464792950370, -0.797459509147442460, 0.603219542755978440,
    -0.797575189707696590,
  0.603066598540348280, -0.797690840943391040, 0.602913632151683140,
    -0.797806462850273570,
  0.602760643595607220, -0.797922055424093000, 0.602607632877745550,
    -0.798037618660599410,
  0.602454600003723860, -0.798153152555543750, 0.602301544979168550,
    -0.798268657104678310,
  0.602148467809707320, -0.798384132303756380, 0.601995368500968130,
    -0.798499578148532010,
  0.601842247058580030, -0.798614994634760820, 0.601689103488173060,
    -0.798730381758199210,
  0.601535937795377730, -0.798845739514604580, 0.601382749985825420,
    -0.798961067899735760,
  0.601229540065148620, -0.799076366909352350, 0.601076308038980160,
    -0.799191636539215210,
  0.600923053912954090, -0.799306876785086160, 0.600769777692705230,
    -0.799422087642728040,
  0.600616479383868970, -0.799537269107905010, 0.600463158992081690,
    -0.799652421176382130,
  0.600309816522980430, -0.799767543843925680, 0.600156451982203350,
    -0.799882637106302810,
  0.600003065375389060, -0.799997700959281910, 0.599849656708177360,
    -0.800112735398632370,
  0.599696225986208310, -0.800227740420124790, 0.599542773215123390,
    -0.800342716019530660,
  0.599389298400564540, -0.800457662192622710, 0.599235801548174570,
    -0.800572578935174750,
  0.599082282663597310, -0.800687466242961500, 0.598928741752476900,
    -0.800802324111759110,
  0.598775178820458720, -0.800917152537344300, 0.598621593873188920,
    -0.801031951515495330,
  0.598467986916314310, -0.801146721041991250, 0.598314357955482600,
    -0.801261461112612540,
  0.598160706996342380, -0.801376171723140130, 0.598007034044542700,
    -0.801490852869356840,
  0.597853339105733910, -0.801605504547046040, 0.597699622185566830,
    -0.801720126751992330,
  0.597545883289693270, -0.801834719479981310, 0.597392122423765710,
    -0.801949282726799660,
  0.597238339593437530, -0.802063816488235440, 0.597084534804362740,
    -0.802178320760077450,
  0.596930708062196500, -0.802292795538115720, 0.596776859372594500,
    -0.802407240818141300,
  0.596622988741213330, -0.802521656595946320, 0.596469096173710360,
    -0.802636042867324150,
  0.596315181675743820, -0.802750399628069160, 0.596161245252972540,
    -0.802864726873976590,
  0.596007286911056530, -0.802979024600843140, 0.595853306655656390,
    -0.803093292804466400,
  0.595699304492433470, -0.803207531480644830, 0.595545280427049790,
    -0.803321740625178470,
  0.595391234465168730, -0.803435920233868120, 0.595237166612453850,
    -0.803550070302515570,
  0.595083076874569960, -0.803664190826924090, 0.594928965257182420,
    -0.803778281802897570,
  0.594774831765957580, -0.803892343226241260, 0.594620676406562240,
    -0.804006375092761520,
  0.594466499184664540, -0.804120377398265700, 0.594312300105932830,
    -0.804234350138562260,
  0.594158079176036800, -0.804348293309460780, 0.594003836400646690,
    -0.804462206906771840,
  0.593849571785433630, -0.804576090926307000, 0.593695285336069300,
    -0.804689945363879500,
  0.593540977058226390, -0.804803770215302810, 0.593386646957578480,
    -0.804917565476392150,
  0.593232295039799800, -0.805031331142963660, 0.593077921310565580,
    -0.805145067210834120,
  0.592923525775551410, -0.805258773675822210, 0.592769108440434070,
    -0.805372450533747060,
  0.592614669310891130, -0.805486097780429120, 0.592460208392600940,
    -0.805599715411689950,
  0.592305725691242400, -0.805713303423352120, 0.592151221212495640,
    -0.805826861811239300,
  0.591996694962040990, -0.805940390571176280, 0.591842146945560250,
    -0.806053889698988950,
  0.591687577168735550, -0.806167359190504310, 0.591532985637249990,
    -0.806280799041550370,
  0.591378372356787580, -0.806394209247956240, 0.591223737333032910,
    -0.806507589805552260,
  0.591069080571671510, -0.806620940710169650, 0.590914402078389520,
    -0.806734261957640750,
  0.590759701858874280, -0.806847553543799220, 0.590604979918813440,
    -0.806960815464479620,
  0.590450236263895920, -0.807074047715517610, 0.590295470899810940,
    -0.807187250292749850,
  0.590140683832248940, -0.807300423192014450, 0.589985875066900920,
    -0.807413566409150190,
  0.589831044609458900, -0.807526679939997160, 0.589676192465615420,
    -0.807639763780396370,
  0.589521318641063940, -0.807752817926190360, 0.589366423141498790,
    -0.807865842373222120,
  0.589211505972615070, -0.807978837117336310, 0.589056567140108460,
    -0.808091802154378260,
  0.588901606649675840, -0.808204737480194720, 0.588746624507014650,
    -0.808317643090633250,
  0.588591620717822890, -0.808430518981542720, 0.588436595287799900,
    -0.808543365148773010,
  0.588281548222645330, -0.808656181588174980, 0.588126479528059850,
    -0.808768968295600850,
  0.587971389209745120, -0.808881725266903610, 0.587816277273403020,
    -0.808994452497937560,
  0.587661143724736770, -0.809107149984558130, 0.587505988569450020,
    -0.809219817722621750,
  0.587350811813247660, -0.809332455707985840, 0.587195613461834910,
    -0.809445063936509170,
  0.587040393520918080, -0.809557642404051260, 0.586885151996203950,
    -0.809670191106473090,
  0.586729888893400500, -0.809782710039636420, 0.586574604218216280,
    -0.809895199199404450,
  0.586419297976360500, -0.810007658581641140, 0.586263970173543700,
    -0.810120088182211600,
  0.586108620815476430, -0.810232487996982330, 0.585953249907870680,
    -0.810344858021820550,
  0.585797857456438860, -0.810457198252594770, 0.585642443466894420,
    -0.810569508685174630,
  0.585487007944951450, -0.810681789315430670, 0.585331550896324940,
    -0.810794040139234730,
  0.585176072326730410, -0.810906261152459670, 0.585020572241884530,
    -0.811018452350979470,
  0.584865050647504490, -0.811130613730669190, 0.584709507549308500,
    -0.811242745287404810,
  0.584553942953015330, -0.811354847017063730, 0.584398356864344710,
    -0.811466918915524250,
  0.584242749289016980, -0.811578960978665890, 0.584087120232753550,
    -0.811690973202369050,
  0.583931469701276300, -0.811802955582515360, 0.583775797700308070,
    -0.811914908114987680,
  0.583620104235572760, -0.812026830795669730, 0.583464389312794430,
    -0.812138723620446480,
  0.583308652937698290, -0.812250586585203880, 0.583152895116010540,
    -0.812362419685829120,
  0.582997115853457700, -0.812474222918210480, 0.582841315155767650,
    -0.812585996278237020,
  0.582685493028668460, -0.812697739761799490, 0.582529649477889320,
    -0.812809453364789160,
  0.582373784509160220, -0.812921137083098770, 0.582217898128211790,
    -0.813032790912621930,
  0.582061990340775550, -0.813144414849253590, 0.581906061152583920,
    -0.813256008888889380,
  0.581750110569369760, -0.813367573027426570, 0.581594138596866930,
    -0.813479107260763220,
  0.581438145240810280, -0.813590611584798510, 0.581282130506935110,
    -0.813702085995432700,
  0.581126094400977620, -0.813813530488567190, 0.580970036928674880,
    -0.813924945060104490,
  0.580813958095764530, -0.814036329705948300, 0.580657857907985410,
    -0.814147684422003360,
  0.580501736371076600, -0.814259009204175270, 0.580345593490778300,
    -0.814370304048371070,
  0.580189429272831680, -0.814481568950498610, 0.580033243722978150,
    -0.814592803906467270,
  0.579877036846960350, -0.814704008912187080, 0.579720808650521560,
    -0.814815183963569330,
  0.579564559139405740, -0.814926329056526620, 0.579408288319357980,
    -0.815037444186972220,
  0.579251996196123550, -0.815148529350820830, 0.579095682775449210,
    -0.815259584543988280,
  0.578939348063081890, -0.815370609762391290, 0.578782992064769690,
    -0.815481605001947770,
  0.578626614786261430, -0.815592570258576680, 0.578470216233306740,
    -0.815703505528198260,
  0.578313796411655590, -0.815814410806733780, 0.578157355327059360,
    -0.815925286090105390,
  0.578000892985269910, -0.816036131374236700, 0.577844409392039850,
    -0.816146946655052160,
  0.577687904553122800, -0.816257731928477390, 0.577531378474272830,
    -0.816368487190439200,
  0.577374831161244880, -0.816479212436865390, 0.577218262619794920,
    -0.816589907663684890,
  0.577061672855679550, -0.816700572866827850, 0.576905061874655960,
    -0.816811208042225290,
  0.576748429682482520, -0.816921813185809480, 0.576591776284917870,
    -0.817032388293513880,
  0.576435101687721830, -0.817142933361272970, 0.576278405896654910,
    -0.817253448385022230,
  0.576121688917478390, -0.817363933360698460, 0.575964950755954330,
    -0.817474388284239240,
  0.575808191417845340, -0.817584813151583710, 0.575651410908915250,
    -0.817695207958671680,
  0.575494609234928230, -0.817805572701444270, 0.575337786401649560,
    -0.817915907375843740,
  0.575180942414845190, -0.818026211977813440, 0.575024077280281820,
    -0.818136486503297620,
  0.574867191003726740, -0.818246730948241960, 0.574710283590948450,
    -0.818356945308593150,
  0.574553355047715760, -0.818467129580298660, 0.574396405379798750,
    -0.818577283759307490,
  0.574239434592967890, -0.818687407841569570, 0.574082442692994470,
    -0.818797501823036010,
  0.573925429685650750, -0.818907565699658950, 0.573768395576709560,
    -0.819017599467391500,
  0.573611340371944610, -0.819127603122188240, 0.573454264077130400,
    -0.819237576660004520,
  0.573297166698042320, -0.819347520076796900, 0.573140048240456060,
    -0.819457433368523280,
  0.572982908710148680, -0.819567316531142230, 0.572825748112897550,
    -0.819677169560613760,
  0.572668566454481160, -0.819786992452898990, 0.572511363740678790,
    -0.819896785203959810,
  0.572354139977270030, -0.820006547809759680, 0.572196895170035580,
    -0.820116280266262710,
  0.572039629324757050, -0.820225982569434690, 0.571882342447216590,
    -0.820335654715241840,
  0.571725034543197120, -0.820445296699652050, 0.571567705618482580,
    -0.820554908518633890,
  0.571410355678857340, -0.820664490168157460, 0.571252984730106660,
    -0.820774041644193650,
  0.571095592778016690, -0.820883562942714580, 0.570938179828374360,
    -0.820993054059693470,
  0.570780745886967370, -0.821102514991104650, 0.570623290959583860,
    -0.821211945732923550,
  0.570465815052012990, -0.821321346281126740, 0.570308318170045010,
    -0.821430716631691760,
  0.570150800319470300, -0.821540056780597610, 0.569993261506080650,
    -0.821649366723823830,
  0.569835701735668110, -0.821758646457351640, 0.569678121014025710,
    -0.821867895977163140,
  0.569520519346947250, -0.821977115279241550, 0.569362896740227330,
    -0.822086304359571090,
  0.569205253199661200, -0.822195463214137170, 0.569047588731045220,
    -0.822304591838926350,
  0.568889903340175970, -0.822413690229926390, 0.568732197032851160,
    -0.822522758383125940,
  0.568574469814869250, -0.822631796294514990, 0.568416721692029390,
    -0.822740803960084420,
  0.568258952670131490, -0.822849781375826320, 0.568101162754976570,
    -0.822958728537734000,
  0.567943351952365670, -0.823067645441801670, 0.567785520268101250,
    -0.823176532084024860,
  0.567627667707986230, -0.823285388460400110, 0.567469794277824620,
    -0.823394214566925080,
  0.567311899983420800, -0.823503010399598390, 0.567153984830580100,
    -0.823611775954420260,
  0.566996048825108680, -0.823720511227391320, 0.566838091972813320,
    -0.823829216214513990,
  0.566680114279501710, -0.823937890911791370, 0.566522115750982100,
    -0.824046535315227760,
  0.566364096393063950, -0.824155149420828570, 0.566206056211556840,
    -0.824263733224600450,
  0.566047995212271560, -0.824372286722551250, 0.565889913401019570,
    -0.824480809910689500,
  0.565731810783613230, -0.824589302785025290, 0.565573687365865440,
    -0.824697765341569470,
  0.565415543153589770, -0.824806197576334330, 0.565257378152600910,
    -0.824914599485333080,
  0.565099192368714090, -0.825022971064580220, 0.564940985807745320,
    -0.825131312310090960,
  0.564782758475511400, -0.825239623217882130, 0.564624510377830120,
    -0.825347903783971380,
  0.564466241520519500, -0.825456154004377440, 0.564307951909398750,
    -0.825564373875120490,
  0.564149641550287680, -0.825672563392221390, 0.563991310449007080,
    -0.825780722551702430,
  0.563832958611378170, -0.825888851349586780, 0.563674586043223180,
    -0.825996949781898970,
  0.563516192750364910, -0.826105017844664610, 0.563357778738627020,
    -0.826213055533910110,
  0.563199344013834090, -0.826321062845663420, 0.563040888581811230,
    -0.826429039775953390,
  0.562882412448384550, -0.826536986320809960, 0.562723915619380400,
    -0.826644902476264210,
  0.562565398100626560, -0.826752788238348520, 0.562406859897951140,
    -0.826860643603096080,
  0.562248301017183150, -0.826968468566541490, 0.562089721464152480,
    -0.827076263124720270,
  0.561931121244689470, -0.827184027273669020, 0.561772500364625450,
    -0.827291761009425810,
  0.561613858829792420, -0.827399464328029350, 0.561455196646023280,
    -0.827507137225519830,
  0.561296513819151470, -0.827614779697938400, 0.561137810355011530,
    -0.827722391741327220,
  0.560979086259438260, -0.827829973351729810, 0.560820341538267540,
    -0.827937524525190870,
  0.560661576197336030, -0.828045045257755800, 0.560502790242481060,
    -0.828152535545471410,
  0.560343983679540860, -0.828259995384385550, 0.560185156514354080,
    -0.828367424770547480,
  0.560026308752760380, -0.828474823700007130, 0.559867440400600320,
    -0.828582192168815790,
  0.559708551463714790, -0.828689530173025710, 0.559549641947945870,
    -0.828796837708690610,
  0.559390711859136140, -0.828904114771864870, 0.559231761203129010,
    -0.829011361358604430,
  0.559072789985768480, -0.829118577464965980, 0.558913798212899770,
    -0.829225763087007570,
  0.558754785890368310, -0.829332918220788250, 0.558595753024020760,
    -0.829440042862368170,
  0.558436699619704100, -0.829547137007808800, 0.558277625683266330,
    -0.829654200653172640,
  0.558118531220556100, -0.829761233794523050, 0.557959416237422960,
    -0.829868236427924840,
  0.557800280739717100, -0.829975208549443840, 0.557641124733289420,
    -0.830082150155146970,
  0.557481948223991660, -0.830189061241102370, 0.557322751217676160,
    -0.830295941803379070,
  0.557163533720196340, -0.830402791838047550, 0.557004295737406060,
    -0.830509611341179070,
  0.556845037275160100, -0.830616400308846200, 0.556685758339313890,
    -0.830723158737122880,
  0.556526458935723720, -0.830829886622083570, 0.556367139070246490,
    -0.830936583959804410,
  0.556207798748739930, -0.831043250746362320, 0.556048437977062720,
    -0.831149886977835430,
  0.555889056761073920, -0.831256492650303210, 0.555729655106633520,
    -0.831363067759845920,
  0.555570233019602290, -0.831469612302545240, 0.555410790505841740,
    -0.831576126274483630,
  0.555251327571214090, -0.831682609671745120, 0.555091844221582420,
    -0.831789062490414400,
  0.554932340462810370, -0.831895484726577590, 0.554772816300762580,
    -0.832001876376321840,
  0.554613271741304040, -0.832108237435735480, 0.554453706790301040,
    -0.832214567900907980,
  0.554294121453620110, -0.832320867767929680, 0.554134515737128910,
    -0.832427137032892280,
  0.553974889646695610, -0.832533375691888680, 0.553815243188189090,
    -0.832639583741012770,
  0.553655576367479310, -0.832745761176359460, 0.553495889190436570,
    -0.832851907994024980,
  0.553336181662932410, -0.832958024190106670, 0.553176453790838460,
    -0.833064109760702890,
  0.553016705580027580, -0.833170164701913190, 0.552856937036373290,
    -0.833276189009838240,
  0.552697148165749770, -0.833382182680579730, 0.552537338974032120,
    -0.833488145710240770,
  0.552377509467096070, -0.833594078094925140, 0.552217659650817930,
    -0.833699979830738290,
  0.552057789531074980, -0.833805850913786340, 0.551897899113745320,
    -0.833911691340176730,
  0.551737988404707450, -0.834017501106018130, 0.551578057409841000,
    -0.834123280207419990,
  0.551418106135026060, -0.834229028640493420, 0.551258134586143700,
    -0.834334746401350080,
  0.551098142769075430, -0.834440433486103190, 0.550938130689703880,
    -0.834546089890866760,
  0.550778098353912230, -0.834651715611756330, 0.550618045767584330,
    -0.834757310644888230,
  0.550457972936604810, -0.834862874986380010, 0.550297879866859190,
    -0.834968408632350450,
  0.550137766564233630, -0.835073911578919300, 0.549977633034615000,
    -0.835179383822207580,
  0.549817479283891020, -0.835284825358337370, 0.549657305317949980,
    -0.835390236183431780,
  0.549497111142680960, -0.835495616293615350, 0.549336896763974010,
    -0.835600965685013410,
  0.549176662187719770, -0.835706284353752600, 0.549016407419809390,
    -0.835811572295960590,
  0.548856132466135290, -0.835916829507766360, 0.548695837332590090,
    -0.836022055985299880,
  0.548535522025067390, -0.836127251724692160, 0.548375186549461600,
    -0.836232416722075600,
  0.548214830911667780, -0.836337550973583530, 0.548054455117581880,
    -0.836442654475350380,
  0.547894059173100190, -0.836547727223511890, 0.547733643084120200,
    -0.836652769214204950,
  0.547573206856539870, -0.836757780443567190, 0.547412750496257930,
    -0.836862760907737810,
  0.547252274009174090, -0.836967710602857020, 0.547091777401188530,
    -0.837072629525066000,
  0.546931260678202190, -0.837177517670507190, 0.546770723846116800,
    -0.837282375035324320,
  0.546610166910834860, -0.837387201615661940, 0.546449589878259760,
    -0.837491997407665890,
  0.546288992754295210, -0.837596762407483040, 0.546128375544846060,
    -0.837701496611261700,
  0.545967738255817680, -0.837806200015150940, 0.545807080893116140,
    -0.837910872615301060,
  0.545646403462648590, -0.838015514407863700, 0.545485705970322530,
    -0.838120125388991500,
  0.545324988422046460, -0.838224705554837970, 0.545164250823729320,
    -0.838329254901558300,
  0.545003493181281160, -0.838433773425308340, 0.544842715500612470,
    -0.838538261122245170,
  0.544681917787634530, -0.838642717988527300, 0.544521100048259710,
    -0.838747144020313920,
  0.544360262288400400, -0.838851539213765760, 0.544199404513970420,
    -0.838955903565044350,
  0.544038526730883930, -0.839060237070312630, 0.543877628945055980,
    -0.839164539725734570,
  0.543716711162402390, -0.839268811527475230, 0.543555773388839650,
    -0.839373052471700690,
  0.543394815630284800, -0.839477262554578550, 0.543233837892656000,
    -0.839581441772277120,
  0.543072840181871850, -0.839685590120966110, 0.542911822503851730,
    -0.839789707596816260,
  0.542750784864516000, -0.839893794195999410, 0.542589727269785270,
    -0.839997849914688730,
  0.542428649725581360, -0.840101874749058400, 0.542267552237826520,
    -0.840205868695283580,
  0.542106434812444030, -0.840309831749540770, 0.541945297455357470,
    -0.840413763908007480,
  0.541784140172491660, -0.840517665166862440, 0.541622962969771640,
    -0.840621535522285690,
  0.541461765853123560, -0.840725374970458070, 0.541300548828474120,
    -0.840829183507561640,
  0.541139311901750910, -0.840932961129779670, 0.540978055078882190,
    -0.841036707833296650,
  0.540816778365796670, -0.841140423614298080, 0.540655481768424260,
    -0.841244108468970580,
  0.540494165292695230, -0.841347762393501950, 0.540332828944540820,
    -0.841451385384081260,
  0.540171472729892970, -0.841554977436898330, 0.540010096654684020,
    -0.841658538548144760,
  0.539848700724847700, -0.841762068714012490, 0.539687284946317570,
    -0.841865567930695340,
  0.539525849325029010, -0.841969036194387680, 0.539364393866917150,
    -0.842072473501285450,
  0.539202918577918240, -0.842175879847585570, 0.539041423463969550,
    -0.842279255229485880,
  0.538879908531008420, -0.842382599643185960, 0.538718373784973670,
    -0.842485913084885630,
  0.538556819231804210, -0.842589195550786600, 0.538395244877439950,
    -0.842692447037091560,
  0.538233650727821700, -0.842795667540004120, 0.538072036788890600,
    -0.842898857055729310,
  0.537910403066588990, -0.843002015580472830, 0.537748749566859470,
    -0.843105143110442050,
  0.537587076295645510, -0.843208239641845440, 0.537425383258891660,
    -0.843311305170892030,
  0.537263670462542530, -0.843414339693792760, 0.537101937912544240,
    -0.843517343206759080,
  0.536940185614843020, -0.843620315706004040, 0.536778413575385920,
    -0.843723257187741550,
  0.536616621800121150, -0.843826167648186740, 0.536454810294997090,
    -0.843929047083555870,
  0.536292979065963180, -0.844031895490066410, 0.536131128118969350,
    -0.844134712863936930,
  0.535969257459966710, -0.844237499201387020, 0.535807367094906620,
    -0.844340254498637590,
  0.535645457029741090, -0.844442978751910660, 0.535483527270423370,
    -0.844545671957429240,
  0.535321577822907010, -0.844648334111417820, 0.535159608693146720,
    -0.844750965210101510,
  0.534997619887097260, -0.844853565249707010, 0.534835611410714670,
    -0.844956134226462100,
  0.534673583269955510, -0.845058672136595470, 0.534511535470777010,
    -0.845161178976337140,
  0.534349468019137520, -0.845263654741918220, 0.534187380920995600,
    -0.845366099429570970,
  0.534025274182310380, -0.845468513035528830, 0.533863147809042650,
    -0.845570895556026270,
  0.533701001807152960, -0.845673246987299070, 0.533538836182603120,
    -0.845775567325583900,
  0.533376650941355560, -0.845877856567118890, 0.533214446089372960,
    -0.845980114708143270,
  0.533052221632619670, -0.846082341744896940, 0.532889977577059690,
    -0.846184537673621670,
  0.532727713928658810, -0.846286702490559710, 0.532565430693382580,
    -0.846388836191954930,
  0.532403127877198010, -0.846490938774052020, 0.532240805486072330,
    -0.846593010233097190,
  0.532078463525973540, -0.846695050565337450, 0.531916102002870760,
    -0.846797059767020910,
  0.531753720922733320, -0.846899037834397350, 0.531591320291531780,
    -0.847000984763716880,
  0.531428900115236910, -0.847102900551231500, 0.531266460399820390,
    -0.847204785193193980,
  0.531104001151255000, -0.847306638685858320, 0.530941522375513510,
    -0.847408461025479730,
  0.530779024078570250, -0.847510252208314330, 0.530616506266399450,
    -0.847612012230619660,
  0.530453968944976320, -0.847713741088654270, 0.530291412120277420,
    -0.847815438778677930,
  0.530128835798278850, -0.847917105296951410, 0.529966239984958620,
    -0.848018740639736810,
  0.529803624686294830, -0.848120344803297120, 0.529640989908265910,
    -0.848221917783896990,
  0.529478335656852090, -0.848323459577801530, 0.529315661938033140,
    -0.848424970181277600,
  0.529152968757790720, -0.848526449590592650, 0.528990256122106040,
    -0.848627897802015860,
  0.528827524036961980, -0.848729314811817010, 0.528664772508341540,
    -0.848830700616267530,
  0.528502001542228480, -0.848932055211639610, 0.528339211144607690,
    -0.849033378594206690,
  0.528176401321464370, -0.849134670760243630, 0.528013572078784740,
    -0.849235931706025960,
  0.527850723422555460, -0.849337161427830670, 0.527687855358763720,
    -0.849438359921935950,
  0.527524967893398200, -0.849539527184620890, 0.527362061032447430,
    -0.849640663212165910,
  0.527199134781901390, -0.849741768000852440, 0.527036189147750190,
    -0.849842841546963210,
  0.526873224135984700, -0.849943883846782210, 0.526710239752597010,
    -0.850044894896594070,
  0.526547236003579330, -0.850145874692685210, 0.526384212894925210,
    -0.850246823231342710,
  0.526221170432628170, -0.850347740508854980, 0.526058108622682760,
    -0.850448626521511650,
  0.525895027471084740, -0.850549481265603370, 0.525731926983829640,
    -0.850650304737422200,
  0.525568807166914680, -0.850751096933260790, 0.525405668026336810,
    -0.850851857849413640,
  0.525242509568094710, -0.850952587482175730, 0.525079331798186890,
    -0.851053285827843790,
  0.524916134722612890, -0.851153952882715340, 0.524752918347373360,
    -0.851254588643089120,
  0.524589682678468840, -0.851355193105265200, 0.524426427721901510,
    -0.851455766265544310,
  0.524263153483673470, -0.851556308120228870, 0.524099859969787810,
    -0.851656818665622370,
  0.523936547186248600, -0.851757297898029120, 0.523773215139060170,
    -0.851857745813754840,
  0.523609863834228030, -0.851958162409106380, 0.523446493277757940,
    -0.852058547680391580,
  0.523283103475656430, -0.852158901623919830, 0.523119694433931250,
    -0.852259224236001090,
  0.522956266158590140, -0.852359515512947090, 0.522792818655642200,
    -0.852459775451070100,
  0.522629351931096720, -0.852560004046683970, 0.522465865990963900,
    -0.852660201296103760,
  0.522302360841254700, -0.852760367195645300, 0.522138836487980650,
    -0.852860501741625860,
  0.521975292937154390, -0.852960604930363630, 0.521811730194788550,
    -0.853060676758178320,
  0.521648148266897090, -0.853160717221390420, 0.521484547159494550,
    -0.853260726316321770,
  0.521320926878595550, -0.853360704039295430, 0.521157287430216610,
    -0.853460650386635320,
  0.520993628820373810, -0.853560565354666840, 0.520829951055084780,
    -0.853660448939716270,
  0.520666254140367270, -0.853760301138111300, 0.520502538082239790,
    -0.853860121946180660,
  0.520338802886721960, -0.853959911360254060, 0.520175048559833760,
    -0.854059669376662780,
  0.520011275107596040, -0.854159395991738730, 0.519847482536030300,
    -0.854259091201815420,
  0.519683670851158520, -0.854358755003227440, 0.519519840059003870,
    -0.854458387392310060,
  0.519355990165589530, -0.854557988365400530, 0.519192121176940360,
    -0.854657557918836460,
  0.519028233099080970, -0.854757096048957110, 0.518864325938037000,
    -0.854856602752102850,
  0.518700399699835170, -0.854956078024614820, 0.518536454390502110,
    -0.855055521862835950,
  0.518372490016066220, -0.855154934263109620, 0.518208506582555460,
    -0.855254315221781080,
  0.518044504095999340, -0.855353664735196030, 0.517880482562427800,
    -0.855452982799701830,
  0.517716441987871150, -0.855552269411646970, 0.517552382378360990,
    -0.855651524567380690,
  0.517388303739929060, -0.855750748263253920, 0.517224206078608310,
    -0.855849940495618240,
  0.517060089400432130, -0.855949101260826790, 0.516895953711434260,
    -0.856048230555233820,
  0.516731799017649980, -0.856147328375194470, 0.516567625325114350,
    -0.856246394717065210,
  0.516403432639863990, -0.856345429577203610, 0.516239220967935620,
    -0.856444432951968480,
  0.516074990315366630, -0.856543404837719960, 0.515910740688195650,
    -0.856642345230818720,
  0.515746472092461380, -0.856741254127627470, 0.515582184534203790,
    -0.856840131524509220,
  0.515417878019463150, -0.856938977417828650, 0.515253552554280290,
    -0.857037791803951680,
  0.515089208144697270, -0.857136574679244870, 0.514924844796756490,
    -0.857235326040076460,
  0.514760462516501200, -0.857334045882815590, 0.514596061309975040,
    -0.857432734203832700,
  0.514431641183222930, -0.857531390999499040, 0.514267202142289830,
    -0.857630016266187620,
  0.514102744193221660, -0.857728610000272120, 0.513938267342065490,
    -0.857827172198127320,
  0.513773771594868030, -0.857925702856129790, 0.513609256957677900,
    -0.858024201970656540,
  0.513444723436543570, -0.858122669538086020, 0.513280171037514330,
    -0.858221105554798250,
  0.513115599766640560, -0.858319510017173440, 0.512951009629972860,
    -0.858417882921594040,
  0.512786400633563070, -0.858516224264442740, 0.512621772783463100,
    -0.858614534042104080,
  0.512457126085725800, -0.858712812250963520, 0.512292460546404980,
    -0.858811058887407500,
  0.512127776171554690, -0.858909273947823900, 0.511963072967230200,
    -0.859007457428601410,
  0.511798350939487000, -0.859105609326130340, 0.511633610094381350,
    -0.859203729636801920,
  0.511468850437970520, -0.859301818357008360, 0.511304071976311890,
    -0.859399875483143450,
  0.511139274715464390, -0.859497901011601620, 0.510974458661486720,
    -0.859595894938779080,
  0.510809623820439040, -0.859693857261072610, 0.510644770198381730,
    -0.859791787974880540,
  0.510479897801375700, -0.859889687076602290, 0.510315006635483350,
    -0.859987554562638200,
  0.510150096706766700, -0.860085390429390140, 0.509985168021289570,
    -0.860183194673260880,
  0.509820220585115560, -0.860280967290654510, 0.509655254404309250,
    -0.860378708277976130,
  0.509490269484936360, -0.860476417631632070, 0.509325265833062480,
    -0.860574095348029980,
  0.509160243454754750, -0.860671741423578380, 0.508995202356080310,
    -0.860769355854687060,
  0.508830142543106990, -0.860866938637767310, 0.508665064021904260,
    -0.860964489769230900,
  0.508499966798540810, -0.861062009245491480, 0.508334850879087470,
    -0.861159497062963350,
  0.508169716269614710, -0.861256953218062060, 0.508004562976194010,
    -0.861354377707204800,
  0.507839391004897940, -0.861451770526809210, 0.507674200361798890,
    -0.861549131673294720,
  0.507508991052970870, -0.861646461143081300, 0.507343763084487920,
    -0.861743758932590700,
  0.507178516462425290, -0.861841025038245330, 0.507013251192858340,
    -0.861938259456469180,
  0.506847967281863320, -0.862035462183687210, 0.506682664735517600,
    -0.862132633216325380,
  0.506517343559898530, -0.862229772550811240, 0.506352003761084800,
    -0.862326880183573060,
  0.506186645345155450, -0.862423956111040500, 0.506021268318189830,
    -0.862521000329644520,
  0.505855872686268860, -0.862618012835816740, 0.505690458455473340,
    -0.862714993625990690,
  0.505525025631885510, -0.862811942696600330, 0.505359574221587390,
    -0.862908860044081290,
  0.505194104230662240, -0.863005745664870210, 0.505028615665194300,
    -0.863102599555404800,
  0.504863108531267480, -0.863199421712124160, 0.504697582834967680,
    -0.863296212131468230,
  0.504532038582380380, -0.863392970809878310, 0.504366475779592150,
    -0.863489697743797140,
  0.504200894432690560, -0.863586392929667990, 0.504035294547763080,
    -0.863683056363935940,
  0.503869676130898950, -0.863779688043046610, 0.503704039188186960,
    -0.863876287963447510,
  0.503538383725717580, -0.863972856121586700, 0.503372709749581150,
    -0.864069392513913680,
  0.503207017265869030, -0.864165897136879300, 0.503041306280673450,
    -0.864262369986934950,
  0.502875576800086880, -0.864358811060534030, 0.502709828830203100,
    -0.864455220354130250,
  0.502544062377115800, -0.864551597864179230, 0.502378277446919870,
    -0.864647943587137480,
  0.502212474045710900, -0.864744257519462380, 0.502046652179584660,
    -0.864840539657612980,
  0.501880811854638400, -0.864936789998049020, 0.501714953076969230,
    -0.865033008537231750,
  0.501549075852675390, -0.865129195271623690, 0.501383180187855880,
    -0.865225350197688090,
  0.501217266088609950, -0.865321473311889800, 0.501051333561038040,
    -0.865417564610694410,
  0.500885382611240940, -0.865513624090568980, 0.500719413245319880,
    -0.865609651747981880,
  0.500553425469377640, -0.865705647579402270, 0.500387419289516580,
    -0.865801611581300760,
  0.500221394711840680, -0.865897543750148820, 0.500055351742453860,
    -0.865993444082419520,
  0.499889290387461380, -0.866089312574586770, 0.499723210652968710,
    -0.866185149223125730,
  0.499557112545081890, -0.866280954024512990, 0.499390996069908220,
    -0.866376726975225830,
  0.499224861233555030, -0.866472468071743050, 0.499058708042130930,
    -0.866568177310544360,
  0.498892536501744750, -0.866663854688111020, 0.498726346618505960,
    -0.866759500200925290,
  0.498560138398525200, -0.866855113845470320, 0.498393911847913150,
    -0.866950695618231020,
  0.498227666972781870, -0.867046245515692650, 0.498061403779243520,
    -0.867141763534342360,
  0.497895122273410930, -0.867237249670668400, 0.497728822461398100,
    -0.867332703921159690,
  0.497562504349319090, -0.867428126282306920, 0.497396167943289340,
    -0.867523516750601460,
  0.497229813249424340, -0.867618875322536230, 0.497063440273840310,
    -0.867714201994605140,
  0.496897049022654640, -0.867809496763303210, 0.496730639501984710,
    -0.867904759625126920,
  0.496564211717949340, -0.867999990576573400, 0.496397765676667160,
    -0.868095189614141670,
  0.496231301384258310, -0.868190356734331310, 0.496064818846843060,
    -0.868285491933643240,
  0.495898318070542240, -0.868380595208579800, 0.495731799061478020,
    -0.868475666555644120,
  0.495565261825772490, -0.868570705971340900, 0.495398706369549080,
    -0.868665713452175580,
  0.495232132698931350, -0.868760688994655190, 0.495065540820043610,
    -0.868855632595287750,
  0.494898930739011310, -0.868950544250582380, 0.494732302461959820,
    -0.869045423957049530,
  0.494565655995016010, -0.869140271711200560, 0.494398991344306760,
    -0.869235087509548250,
  0.494232308515959730, -0.869329871348606730, 0.494065607516103730,
    -0.869424623224890780,
  0.493898888350867430, -0.869519343134916970, 0.493732151026381070,
    -0.869614031075202300,
  0.493565395548774880, -0.869708687042265560, 0.493398621924179830,
    -0.869803311032626650,
  0.493231830158728070, -0.869897903042806340, 0.493065020258551650,
    -0.869992463069326870,
  0.492898192229784090, -0.870086991108711350, 0.492731346078558840,
    -0.870181487157484560,
  0.492564481811010650, -0.870275951212171830, 0.492397599433274550,
    -0.870370383269300160,
  0.492230698951486080, -0.870464783325397670, 0.492063780371782060,
    -0.870559151376993250,
  0.491896843700299240, -0.870653487420617540, 0.491729888943175820,
    -0.870747791452801790,
  0.491562916106550060, -0.870842063470078860, 0.491395925196560830,
    -0.870936303468982760,
  0.491228916219348330, -0.871030511446048260, 0.491061889181052590,
    -0.871124687397811900,
  0.490894844087815140, -0.871218831320810900, 0.490727780945777570,
    -0.871312943211583920,
  0.490560699761082080, -0.871407023066670950, 0.490393600539872130,
    -0.871501070882612530,
  0.490226483288291100, -0.871595086655951090, 0.490059348012483910,
    -0.871689070383229740,
  0.489892194718595300, -0.871783022060993010, 0.489725023412770970,
    -0.871876941685786890,
  0.489557834101157550, -0.871970829254157700, 0.489390626789901920,
    -0.872064684762653970,
  0.489223401485152030, -0.872158508207824480, 0.489056158193055980,
    -0.872252299586219860,
  0.488888896919763230, -0.872346058894391540, 0.488721617671423250,
    -0.872439786128892280,
  0.488554320454186230, -0.872533481286276060, 0.488387005274203590,
    -0.872627144363097960,
  0.488219672137626740, -0.872720775355914300, 0.488052321050608310,
    -0.872814374261282390,
  0.487884952019301210, -0.872907941075760970, 0.487717565049858860,
    -0.873001475795909920,
  0.487550160148436050, -0.873094978418290090, 0.487382737321187310,
    -0.873188448939463790,
  0.487215296574268820, -0.873281887355994210, 0.487047837913836550,
    -0.873375293664446000,
  0.486880361346047400, -0.873468667861384880, 0.486712866877059340,
    -0.873562009943377740,
  0.486545354513030270, -0.873655319906992630, 0.486377824260119500,
    -0.873748597748798870,
  0.486210276124486530, -0.873841843465366750, 0.486042710112291390,
    -0.873935057053268130,
  0.485875126229695420, -0.874028238509075630, 0.485707524482859750,
    -0.874121387829363330,
  0.485539904877947020, -0.874214505010706300, 0.485372267421119770,
    -0.874307590049680950,
  0.485204612118541880, -0.874400642942864790, 0.485036938976377450,
    -0.874493663686836450,
  0.484869248000791120, -0.874586652278176110, 0.484701539197948730,
    -0.874679608713464510,
  0.484533812574016120, -0.874772532989284150, 0.484366068135160480,
    -0.874865425102218210,
  0.484198305887549140, -0.874958285048851540, 0.484030525837350010,
    -0.875051112825769970,
  0.483862727990732320, -0.875143908429560250, 0.483694912353865080,
    -0.875236671856810870,
  0.483527078932918740, -0.875329403104110780, 0.483359227734063980,
    -0.875422102168050830,
  0.483191358763471910, -0.875514769045222740, 0.483023472027315050,
    -0.875607403732219240,
  0.482855567531765670, -0.875700006225634600, 0.482687645282997510,
    -0.875792576522063880,
  0.482519705287184520, -0.875885114618103700, 0.482351747550501030,
    -0.875977620510351660,
  0.482183772079122830, -0.876070094195406600, 0.482015778879225530,
    -0.876162535669868460,
  0.481847767956986080, -0.876254944930338400, 0.481679739318581490,
    -0.876347321973419020,
  0.481511692970189920, -0.876439666795713610, 0.481343628917989870,
    -0.876531979393827100,
  0.481175547168160360, -0.876624259764365310, 0.481007447726881640,
    -0.876716507903935400,
  0.480839330600333900, -0.876808723809145760, 0.480671195794698690,
    -0.876900907476605650,
  0.480503043316157670, -0.876993058902925780, 0.480334873170893070,
    -0.877085178084718310,
  0.480166685365088440, -0.877177265018595940, 0.479998479904927220,
    -0.877269319701173170,
  0.479830256796594250, -0.877361342129065140, 0.479662016046274340,
    -0.877453332298888560,
  0.479493757660153060, -0.877545290207261240, 0.479325481644417130,
    -0.877637215850802120,
  0.479157188005253310, -0.877729109226131570, 0.478988876748849550,
    -0.877820970329870500,
  0.478820547881394050, -0.877912799158641730, 0.478652201409075550,
    -0.878004595709069080,
  0.478483837338084080, -0.878096359977777130, 0.478315455674609480,
    -0.878188091961392250,
  0.478147056424843120, -0.878279791656541460, 0.477978639594976110,
    -0.878371459059853590,
  0.477810205191201040, -0.878463094167957870, 0.477641753219710590,
    -0.878554696977485340,
  0.477473283686698060, -0.878646267485068130, 0.477304796598358010,
    -0.878737805687339280,
  0.477136291960884750, -0.878829311580933360, 0.476967769780474230,
    -0.878920785162485840,
  0.476799230063322250, -0.879012226428633410, 0.476630672815625380,
    -0.879103635376014330,
  0.476462098043581310, -0.879195012001267370, 0.476293505753387750,
    -0.879286356301033250,
  0.476124895951243630, -0.879377668271953180, 0.475956268643348220,
    -0.879468947910670100,
  0.475787623835901120, -0.879560195213827890, 0.475618961535103410,
    -0.879651410178071470,
  0.475450281747155870, -0.879742592800047410, 0.475281584478260800,
    -0.879833743076402940,
  0.475112869734620470, -0.879924861003786860, 0.474944137522437860,
    -0.880015946578848960,
  0.474775387847917230, -0.880106999798240360, 0.474606620717262560,
    -0.880198020658613190,
  0.474437836136679340, -0.880289009156620890, 0.474269034112372920,
    -0.880379965288918260,
  0.474100214650550020, -0.880470889052160750, 0.473931377757417560,
    -0.880561780443005590,
  0.473762523439182850, -0.880652639458111010, 0.473593651702054640,
    -0.880743466094136230,
  0.473424762552241530, -0.880834260347742040, 0.473255855995953380,
    -0.880925022215589880,
  0.473086932039400220, -0.881015751694342760, 0.472917990688792760,
    -0.881106448780665130,
  0.472749031950342900, -0.881197113471221980, 0.472580055830262250,
    -0.881287745762680100,
  0.472411062334764100, -0.881378345651706810, 0.472242051470061650,
    -0.881468913134971330,
  0.472073023242368660, -0.881559448209143780, 0.471903977657900320,
    -0.881649950870895260,
  0.471734914722871430, -0.881740421116898320, 0.471565834443498480,
    -0.881830858943826620,
  0.471396736825997810, -0.881921264348354940, 0.471227621876586400,
    -0.882011637327159590,
  0.471058489601482610, -0.882101977876917580, 0.470889340006904520,
    -0.882192285994307430,
  0.470720173099071710, -0.882282561676008600, 0.470550988884203490,
    -0.882372804918702290,
  0.470381787368520710, -0.882463015719070040, 0.470212568558244280,
    -0.882553194073795400,
  0.470043332459595620, -0.882643339979562790, 0.469874079078797470,
    -0.882733453433057540,
  0.469704808422072460, -0.882823534430966730, 0.469535520495644510,
    -0.882913582969978020,
  0.469366215305737630, -0.883003599046780720, 0.469196892858576630,
    -0.883093582658065370,
  0.469027553160387240, -0.883183533800523280, 0.468858196217395330,
    -0.883273452470847430,
  0.468688822035827960, -0.883363338665731580, 0.468519430621912420,
    -0.883453192381870920,
  0.468350021981876530, -0.883543013615961880, 0.468180596121949400,
    -0.883632802364701760,
  0.468011153048359830, -0.883722558624789660, 0.467841692767338220,
    -0.883812282392925090,
  0.467672215285114710, -0.883901973665809470, 0.467502720607920920,
    -0.883991632440144890,
  0.467333208741988530, -0.884081258712634990, 0.467163679693549770,
    -0.884170852479984500,
  0.466994133468838110, -0.884260413738899080, 0.466824570074086950,
    -0.884349942486086120,
  0.466654989515530970, -0.884439438718253700, 0.466485391799405010,
    -0.884528902432111350,
  0.466315776931944480, -0.884618333624369920, 0.466146144919386000,
    -0.884707732291740930,
  0.465976495767966130, -0.884797098430937790, 0.465806829483922770,
    -0.884886432038674560,
  0.465637146073493770, -0.884975733111666660, 0.465467445542917800,
    -0.885065001646630930,
  0.465297727898434650, -0.885154237640285110, 0.465127993146283950,
    -0.885243441089348270,
  0.464958241292706740, -0.885332611990540590, 0.464788472343944160,
    -0.885421750340583570,
  0.464618686306237820, -0.885510856136199950, 0.464448883185830770,
    -0.885599929374113360,
  0.464279062988965760, -0.885688970051048960, 0.464109225721887010,
    -0.885777978163732940,
  0.463939371390838460, -0.885866953708892790, 0.463769500002065680,
    -0.885955896683257030,
  0.463599611561814120, -0.886044807083555490, 0.463429706076329880,
    -0.886133684906519340,
  0.463259783551860260, -0.886222530148880640, 0.463089843994652470,
    -0.886311342807372890,
  0.462919887410955130, -0.886400122878730490, 0.462749913807016850,
    -0.886488870359689600,
  0.462579923189086810, -0.886577585246987040, 0.462409915563415540,
    -0.886666267537360890,
  0.462239890936253280, -0.886754917227550950, 0.462069849313851810,
    -0.886843534314297300,
  0.461899790702462840, -0.886932118794342080, 0.461729715108338770,
    -0.887020670664428360,
  0.461559622537733190, -0.887109189921300060, 0.461389512996899450,
    -0.887197676561702900,
  0.461219386492092430, -0.887286130582383150, 0.461049243029567010,
    -0.887374551980088740,
  0.460879082615578690, -0.887462940751568840, 0.460708905256384190,
    -0.887551296893573370,
  0.460538710958240010, -0.887639620402853930, 0.460368499727404070,
    -0.887727911276163020,
  0.460198271570134270, -0.887816169510254550, 0.460028026492689700,
    -0.887904395101883240,
  0.459857764501329650, -0.887992588047805560, 0.459687485602313870,
    -0.888080748344778900,
  0.459517189801903590, -0.888168875989561620, 0.459346877106359570,
    -0.888256970978913870,
  0.459176547521944150, -0.888345033309596240, 0.459006201054919680,
    -0.888433062978371320,
  0.458835837711549120, -0.888521059982002260, 0.458665457498096670,
    -0.888609024317253750,
  0.458495060420826220, -0.888696955980891710, 0.458324646486003300,
    -0.888784854969682850,
  0.458154215699893230, -0.888872721280395520, 0.457983768068762180,
    -0.888960554909799310,
  0.457813303598877290, -0.889048355854664570, 0.457642822296505770,
    -0.889136124111763240,
  0.457472324167916110, -0.889223859677868210, 0.457301809219376800,
    -0.889311562549753850,
  0.457131277457156980, -0.889399232724195520, 0.456960728887527030,
    -0.889486870197969790,
  0.456790163516757220, -0.889574474967854580, 0.456619581351118960,
    -0.889662047030628790,
  0.456448982396883860, -0.889749586383072890, 0.456278366660324670,
    -0.889837093021967900,
  0.456107734147714220, -0.889924566944096720, 0.455937084865326030,
    -0.890012008146243260,
  0.455766418819434750, -0.890099416625192210, 0.455595736016314920,
    -0.890186792377730240,
  0.455425036462242420, -0.890274135400644480, 0.455254320163493210,
    -0.890361445690723730,
  0.455083587126343840, -0.890448723244757880, 0.454912837357072050,
    -0.890535968059537830,
  0.454742070861955450, -0.890623180131855930, 0.454571287647273000,
    -0.890710359458505520,
  0.454400487719303750, -0.890797506036281490, 0.454229671084327320,
    -0.890884619861979530,
  0.454058837748624540, -0.890971700932396750, 0.453887987718476050,
    -0.891058749244331590,
  0.453717121000163930, -0.891145764794583180, 0.453546237599970260,
    -0.891232747579952520,
  0.453375337524177750, -0.891319697597241390, 0.453204420779070300,
    -0.891406614843252900,
  0.453033487370931580, -0.891493499314791380, 0.452862537306046810,
    -0.891580351008662290,
  0.452691570590700860, -0.891667169921672390, 0.452520587231180100,
    -0.891753956050629460,
  0.452349587233771000, -0.891840709392342720, 0.452178570604760410,
    -0.891927429943622510,
  0.452007537350436530, -0.892014117701280360, 0.451836487477087430,
    -0.892100772662129170,
  0.451665420991002540, -0.892187394822982480, 0.451494337898471210,
    -0.892273984180655730,
  0.451323238205783520, -0.892360540731965360, 0.451152121919230710,
    -0.892447064473728680,
  0.450980989045103810, -0.892533555402764690, 0.450809839589695340,
    -0.892620013515893040,
  0.450638673559297760, -0.892706438809935280, 0.450467490960204110,
    -0.892792831281713610,
  0.450296291798708730, -0.892879190928051680, 0.450125076081105750,
    -0.892965517745774260,
  0.449953843813690580, -0.893051811731707450, 0.449782595002758860,
    -0.893138072882678210,
  0.449611329654606600, -0.893224301195515320, 0.449440047775531260,
    -0.893310496667048090,
  0.449268749371829920, -0.893396659294107610, 0.449097434449801100,
    -0.893482789073525850,
  0.448926103015743260, -0.893568886002136020, 0.448754755075956020,
    -0.893654950076772430,
  0.448583390636739300, -0.893740981294271040, 0.448412009704393430,
    -0.893826979651468620,
  0.448240612285220000, -0.893912945145203250, 0.448069198385520340,
    -0.893998877772314240,
  0.447897768011597310, -0.894084777529641990, 0.447726321169753750,
    -0.894170644414028270,
  0.447554857866293010, -0.894256478422316040, 0.447383378107519710,
    -0.894342279551349480,
  0.447211881899738260, -0.894428047797973800, 0.447040369249254500,
    -0.894513783159035620,
  0.446868840162374330, -0.894599485631382580, 0.446697294645404090,
    -0.894685155211863980,
  0.446525732704651400, -0.894770791897329550, 0.446354154346423840,
    -0.894856395684630930,
  0.446182559577030120, -0.894941966570620750, 0.446010948402779110,
    -0.895027504552152630,
  0.445839320829980350, -0.895113009626081760, 0.445667676864944350,
    -0.895198481789264200,
  0.445496016513981740, -0.895283921038557580, 0.445324339783404240,
    -0.895369327370820310,
  0.445152646679523590, -0.895454700782912450, 0.444980937208652780,
    -0.895540041271694840,
  0.444809211377105000, -0.895625348834030000, 0.444637469191193790,
    -0.895710623466781320,
  0.444465710657234110, -0.895795865166813420, 0.444293935781540580,
    -0.895881073930992370,
  0.444122144570429260, -0.895966249756185110, 0.443950337030216250,
    -0.896051392639260040,
  0.443778513167218220, -0.896136502577086770, 0.443606672987753080,
    -0.896221579566535920,
  0.443434816498138430, -0.896306623604479660, 0.443262943704693380,
    -0.896391634687790820,
  0.443091054613736990, -0.896476612813344010, 0.442919149231588980,
    -0.896561557978014960,
  0.442747227564570130, -0.896646470178680150, 0.442575289619001170,
    -0.896731349412217880,
  0.442403335401204130, -0.896816195675507190, 0.442231364917501090,
    -0.896901008965428680,
  0.442059378174214760, -0.896985789278863970, 0.441887375177668960,
    -0.897070536612695870,
  0.441715355934187310, -0.897155250963808550, 0.441543320450094920,
    -0.897239932329087050,
  0.441371268731716620, -0.897324580705418320, 0.441199200785378660,
    -0.897409196089689720,
  0.441027116617407340, -0.897493778478790190, 0.440855016234129430,
    -0.897578327869610230,
  0.440682899641873020, -0.897662844259040750, 0.440510766846965880,
    -0.897747327643974690,
  0.440338617855737300, -0.897831778021305650, 0.440166452674516480,
    -0.897916195387928550,
  0.439994271309633260, -0.898000579740739880, 0.439822073767418610,
    -0.898084931076636780,
  0.439649860054203420, -0.898169249392518080, 0.439477630176319860,
    -0.898253534685283570,
  0.439305384140100060, -0.898337786951834190, 0.439133121951876930,
    -0.898422006189072530,
  0.438960843617984430, -0.898506192393901840, 0.438788549144756290,
    -0.898590345563227030,
  0.438616238538527710, -0.898674465693953820, 0.438443911805633860,
    -0.898758552782989440,
  0.438271568952410480, -0.898842606827242260, 0.438099209985194580,
    -0.898926627823621870,
  0.437926834910322860, -0.899010615769039070, 0.437754443734133470,
    -0.899094570660405770,
  0.437582036462964340, -0.899178492494635330, 0.437409613103154850,
    -0.899262381268642000,
  0.437237173661044200, -0.899346236979341460, 0.437064718142972370,
    -0.899430059623650860,
  0.436892246555280470, -0.899513849198487870, 0.436719758904309310,
    -0.899597605700772180,
  0.436547255196401250, -0.899681329127423930, 0.436374735437898510,
    -0.899765019475365020,
  0.436202199635143950, -0.899848676741518580, 0.436029647794481670,
    -0.899932300922808400,
  0.435857079922255470, -0.900015892016160280, 0.435684496024810520,
    -0.900099450018500340,
  0.435511896108492170, -0.900182974926756700, 0.435339280179646070,
    -0.900266466737858480,
  0.435166648244619370, -0.900349925448735600, 0.434994000309758710,
    -0.900433351056319830,
  0.434821336381412350, -0.900516743557543520, 0.434648656465928430,
    -0.900600102949340790,
  0.434475960569655710, -0.900683429228646860, 0.434303248698944100,
    -0.900766722392397860,
  0.434130520860143310, -0.900849982437531450, 0.433957777059604480,
    -0.900933209360986200,
  0.433785017303678520, -0.901016403159702330, 0.433612241598717640,
    -0.901099563830620950,
  0.433439449951074200, -0.901182691370684410, 0.433266642367100940,
    -0.901265785776836580,
  0.433093818853152010, -0.901348847046022030, 0.432920979415581220,
    -0.901431875175186970,
  0.432748124060743760, -0.901514870161278630, 0.432575252794994810,
    -0.901597832001245660,
  0.432402365624690140, -0.901680760692037730, 0.432229462556186770,
    -0.901763656230605610,
  0.432056543595841450, -0.901846518613901860, 0.431883608750012300,
    -0.901929347838879350,
  0.431710658025057370, -0.902012143902493070, 0.431537691427335500,
    -0.902094906801698900,
  0.431364708963206440, -0.902177636533453510, 0.431191710639030000,
    -0.902260333094715540,
  0.431018696461167080, -0.902342996482444200, 0.430845666435978820,
    -0.902425626693600270,
  0.430672620569826860, -0.902508223725145830, 0.430499558869073930,
    -0.902590787574043870,
  0.430326481340082610, -0.902673318237258830, 0.430153387989216930,
    -0.902755815711756120,
  0.429980278822840570, -0.902838279994502830, 0.429807153847318770,
    -0.902920711082466630,
  0.429634013069016500, -0.903003108972617040, 0.429460856494299490,
    -0.903085473661924600,
  0.429287684129534720, -0.903167805147360610, 0.429114495981088690,
    -0.903250103425898400,
  0.428941292055329550, -0.903332368494511820, 0.428768072358625240,
    -0.903414600350176290,
  0.428594836897344400, -0.903496798989868450, 0.428421585677856760,
    -0.903578964410565950,
  0.428248318706531910, -0.903661096609247980, 0.428075035989740780,
    -0.903743195582894620,
  0.427901737533854240, -0.903825261328487390, 0.427728423345243860,
    -0.903907293843009050,
  0.427555093430282200, -0.903989293123443340, 0.427381747795341770,
    -0.904071259166775440,
  0.427208386446796370, -0.904153191969991670, 0.427035009391019790,
    -0.904235091530079750,
  0.426861616634386490, -0.904316957844028320, 0.426688208183271970,
    -0.904398790908827350,
  0.426514784044051520, -0.904480590721468250, 0.426341344223101880,
    -0.904562357278943190,
  0.426167888726799620, -0.904644090578246240, 0.425994417561522450,
    -0.904725790616371930,
  0.425820930733648300, -0.904807457390316540, 0.425647428249555590,
    -0.904889090897077470,
  0.425473910115623910, -0.904970691133653250, 0.425300376338232590,
    -0.905052258097043590,
  0.425126826923762410, -0.905133791784249580, 0.424953261878594060,
    -0.905215292192273480,
  0.424779681209108810, -0.905296759318118820, 0.424606084921689220,
    -0.905378193158789980,
  0.424432473022717420, -0.905459593711293250, 0.424258845518577010,
    -0.905540960972635480,
  0.424085202415651670, -0.905622294939825160, 0.423911543720325580,
    -0.905703595609872010,
  0.423737869438983950, -0.905784862979786440, 0.423564179578011960,
    -0.905866097046580940,
  0.423390474143796100, -0.905947297807268460, 0.423216753142722780,
    -0.906028465258863490,
  0.423043016581179100, -0.906109599398381980, 0.422869264465553170,
    -0.906190700222840540,
  0.422695496802232950, -0.906271767729257660, 0.422521713597607870,
    -0.906352801914652280,
  0.422347914858067000, -0.906433802776045460, 0.422174100590000820,
    -0.906514770310458800,
  0.422000270799799790, -0.906595704514915330, 0.421826425493854910,
    -0.906676605386439460,
  0.421652564678558380, -0.906757472922056550, 0.421478688360302220,
    -0.906838307118793540,
  0.421304796545479700, -0.906919107973678030, 0.421130889240484140,
    -0.906999875483739610,
  0.420956966451709440, -0.907080609646008450, 0.420783028185550630,
    -0.907161310457516250,
  0.420609074448402510, -0.907241977915295930, 0.420435105246661220,
    -0.907322612016381310,
  0.420261120586723050, -0.907403212757808000, 0.420087120474984590,
    -0.907483780136612570,
  0.419913104917843730, -0.907564314149832520, 0.419739073921698180,
    -0.907644814794507090,
  0.419565027492946940, -0.907725282067676330, 0.419390965637989050,
    -0.907805715966381820,
  0.419216888363223960, -0.907886116487666150, 0.419042795675052480,
    -0.907966483628573240,
  0.418868687579875110, -0.908046817386148340, 0.418694564084093610,
    -0.908127117757437600,
  0.418520425194109700, -0.908207384739488700, 0.418346270916326310,
    -0.908287618329350450,
  0.418172101257146430, -0.908367818524072780, 0.417997916222973550,
    -0.908447985320707250,
  0.417823715820212380, -0.908528118716306120, 0.417649500055267410,
    -0.908608218707923190,
  0.417475268934544340, -0.908688285292613360, 0.417301022464449060,
    -0.908768318467432780,
  0.417126760651387870, -0.908848318229439120, 0.416952483501768280,
    -0.908928284575690640,
  0.416778191021997590, -0.909008217503247450, 0.416603883218484410,
    -0.909088117009170580,
  0.416429560097637320, -0.909167983090522270, 0.416255221665865480,
    -0.909247815744366310,
  0.416080867929579320, -0.909327614967767260, 0.415906498895188770,
    -0.909407380757791260,
  0.415732114569105420, -0.909487113111505430, 0.415557714957740580,
    -0.909566812025978220,
  0.415383300067506290, -0.909646477498279540, 0.415208869904815650,
    -0.909726109525480160,
  0.415034424476081630, -0.909805708104652220, 0.414859963787718390,
    -0.909885273232869160,
  0.414685487846140010, -0.909964804907205660, 0.414510996657761810,
    -0.910044303124737390,
  0.414336490228999210, -0.910123767882541570, 0.414161968566268080,
    -0.910203199177696540,
  0.413987431675985510, -0.910282597007281760, 0.413812879564568300,
    -0.910361961368377990,
  0.413638312238434560, -0.910441292258067140, 0.413463729704002580,
    -0.910520589673432630,
  0.413289131967690960, -0.910599853611558930, 0.413114519035919560,
    -0.910679084069531570,
  0.412939890915108020, -0.910758281044437570, 0.412765247611677320,
    -0.910837444533365010,
  0.412590589132048380, -0.910916574533403240, 0.412415915482642730,
    -0.910995671041643140,
  0.412241226669883000, -0.911074734055176250, 0.412066522700191560,
    -0.911153763571095900,
  0.411891803579992220, -0.911232759586496190, 0.411717069315708670,
    -0.911311722098472670,
  0.411542319913765280, -0.911390651104122320, 0.411367555380587340,
    -0.911469546600543020,
  0.411192775722600160, -0.911548408584833990, 0.411017980946230270,
    -0.911627237054095650,
  0.410843171057903910, -0.911706032005429880, 0.410668346064048780,
    -0.911784793435939430,
  0.410493505971092520, -0.911863521342728520, 0.410318650785463260,
    -0.911942215722902570,
  0.410143780513590350, -0.912020876573568230, 0.409968895161902820,
    -0.912099503891833470,
  0.409793994736831200, -0.912178097674807060, 0.409619079244805840,
    -0.912256657919599650,
  0.409444148692257590, -0.912335184623322750, 0.409269203085618700,
    -0.912413677783089020,
  0.409094242431320920, -0.912492137396012650, 0.408919266735797480,
    -0.912570563459208730,
  0.408744276005481520, -0.912648955969793900, 0.408569270246806780,
    -0.912727314924885900,
  0.408394249466208110, -0.912805640321603500, 0.408219213670120100,
    -0.912883932157067200,
  0.408044162864978740, -0.912962190428398100, 0.407869097057219960,
    -0.913040415132719160,
  0.407694016253280170, -0.913118606267154130, 0.407518920459597030,
    -0.913196763828828200,
  0.407343809682607970, -0.913274887814867760, 0.407168683928751610,
    -0.913352978222400250,
  0.406993543204466460, -0.913431035048554720, 0.406818387516192370,
    -0.913509058290461140,
  0.406643216870369140, -0.913587047945250810, 0.406468031273437000,
    -0.913665004010056350,
  0.406292830731837470, -0.913742926482011390, 0.406117615252011790,
    -0.913820815358251100,
  0.405942384840402570, -0.913898670635911680, 0.405767139503452220,
    -0.913976492312130520,
  0.405591879247603870, -0.914054280384046460, 0.405416604079301750,
    -0.914132034848799460,
  0.405241314004989860, -0.914209755703530690, 0.405066009031113390,
    -0.914287442945382440,
  0.404890689164117750, -0.914365096571498450, 0.404715354410448650,
    -0.914442716579023870,
  0.404540004776553110, -0.914520302965104450, 0.404364640268877810,
    -0.914597855726887790,
  0.404189260893870750, -0.914675374861522390, 0.404013866657980060,
    -0.914752860366158100,
  0.403838457567654130, -0.914830312237946090, 0.403663033629342750,
    -0.914907730474038620,
  0.403487594849495310, -0.914985115071589310, 0.403312141234562660,
    -0.915062466027752760,
  0.403136672790995240, -0.915139783339685260, 0.402961189525244960,
    -0.915217067004543750,
  0.402785691443763640, -0.915294317019487050, 0.402610178553003680,
    -0.915371533381674760,
  0.402434650859418540, -0.915448716088267830, 0.402259108369461440,
    -0.915525865136428530,
  0.402083551089587040, -0.915602980523320230, 0.401907979026249860,
    -0.915680062246107650,
  0.401732392185905010, -0.915757110301956720, 0.401556790575008650,
    -0.915834124688034710,
  0.401381174200016790, -0.915911105401509880, 0.401205543067386760,
    -0.915988052439551840,
  0.401029897183575790, -0.916064965799331610, 0.400854236555041650,
    -0.916141845478021350,
  0.400678561188243350, -0.916218691472794110, 0.400502871089639500,
    -0.916295503780824800,
  0.400327166265690150, -0.916372282399289140, 0.400151446722855300,
    -0.916449027325364040,
  0.399975712467595390, -0.916525738556228100, 0.399799963506372090,
    -0.916602416089060680,
  0.399624199845646790, -0.916679059921042700, 0.399448421491882260,
    -0.916755670049355990,
  0.399272628451540930, -0.916832246471183890, 0.399096820731086600,
    -0.916908789183710990,
  0.398920998336983020, -0.916985298184122890, 0.398745161275694480,
    -0.917061773469606820,
  0.398569309553686360, -0.917138215037350710, 0.398393443177423920,
    -0.917214622884544250,
  0.398217562153373620, -0.917290997008377910, 0.398041666488001930,
    -0.917367337406043810,
  0.397865756187775750, -0.917443644074735220, 0.397689831259163240,
    -0.917519917011646260,
  0.397513891708632330, -0.917596156213972950, 0.397337937542652120,
    -0.917672361678911750,
  0.397161968767691720, -0.917748533403661250, 0.396985985390220900,
    -0.917824671385420570,
  0.396809987416710420, -0.917900775621390390, 0.396633974853630830,
    -0.917976846108772730,
  0.396457947707453960, -0.918052882844770380, 0.396281905984651680,
    -0.918128885826587910,
  0.396105849691696320, -0.918204855051430900, 0.395929778835061360,
    -0.918280790516506130,
  0.395753693421220080, -0.918356692219021720, 0.395577593456646950,
    -0.918432560156186790,
  0.395401478947816300, -0.918508394325212250, 0.395225349901203730,
    -0.918584194723309540,
  0.395049206323284880, -0.918659961347691900, 0.394873048220535760,
    -0.918735694195573550,
  0.394696875599433670, -0.918811393264169940, 0.394520688466455550,
    -0.918887058550697970,
  0.394344486828079650, -0.918962690052375630, 0.394168270690784250,
    -0.919038287766421940,
  0.393992040061048100, -0.919113851690057770, 0.393815794945351130,
    -0.919189381820504470,
  0.393639535350172880, -0.919264878154985250, 0.393463261281994380,
    -0.919340340690724230,
  0.393286972747296570, -0.919415769424946960, 0.393110669752560760,
    -0.919491164354880100,
  0.392934352304269600, -0.919566525477751530, 0.392758020408905280,
    -0.919641852790790470,
  0.392581674072951530, -0.919717146291227360, 0.392405313302891860,
    -0.919792405976293750,
  0.392228938105210370, -0.919867631843222950, 0.392052548486392200,
    -0.919942823889248640,
  0.391876144452922350, -0.920017982111606570, 0.391699726011287050,
    -0.920093106507533070,
  0.391523293167972350, -0.920168197074266450, 0.391346845929465610,
    -0.920243253809045370,
  0.391170384302253980, -0.920318276709110480, 0.390993908292825380,
    -0.920393265771703550,
  0.390817417907668610, -0.920468220994067110, 0.390640913153272370,
    -0.920543142373445480,
  0.390464394036126650, -0.920618029907083860, 0.390287860562721360,
    -0.920692883592229010,
  0.390111312739546910, -0.920767703426128790, 0.389934750573094790,
    -0.920842489406032080,
  0.389758174069856410, -0.920917241529189520, 0.389581583236324360,
    -0.920991959792852310,
  0.389404978078991100, -0.921066644194273530, 0.389228358604349730,
    -0.921141294730707270,
  0.389051724818894500, -0.921215911399408730, 0.388875076729119250,
    -0.921290494197634540,
  0.388698414341519250, -0.921365043122642340, 0.388521737662589740,
    -0.921439558171691320,
  0.388345046698826300, -0.921514039342041900, 0.388168341456725850,
    -0.921588486630955380,
  0.387991621942784910, -0.921662900035694730, 0.387814888163501290,
    -0.921737279553523800,
  0.387638140125372680, -0.921811625181708120, 0.387461377834897920,
    -0.921885936917513970,
  0.387284601298575890, -0.921960214758209110, 0.387107810522905990,
    -0.922034458701062820,
  0.386931005514388690, -0.922108668743345070, 0.386754186279524130,
    -0.922182844882327600,
  0.386577352824813980, -0.922256987115283030, 0.386400505156759610,
    -0.922331095439485330,
  0.386223643281862980, -0.922405169852209880, 0.386046767206627280,
    -0.922479210350733100,
  0.385869876937555310, -0.922553216932332830, 0.385692972481151200,
    -0.922627189594287800,
  0.385516053843919020, -0.922701128333878520, 0.385339121032363340,
    -0.922775033148386380,
  0.385162174052989970, -0.922848904035094120, 0.384985212912304200,
    -0.922922740991285680,
  0.384808237616812930, -0.922996544014246250, 0.384631248173022740,
    -0.923070313101262420,
  0.384454244587440870, -0.923144048249621820, 0.384277226866575620,
    -0.923217749456613500,
  0.384100195016935040, -0.923291416719527640, 0.383923149045028500,
    -0.923365050035655610,
  0.383746088957365010, -0.923438649402290370, 0.383569014760454960,
    -0.923512214816725520,
  0.383391926460808770, -0.923585746276256560, 0.383214824064937180,
    -0.923659243778179980,
  0.383037707579352130, -0.923732707319793180, 0.382860577010565360,
    -0.923806136898395410,
  0.382683432365089840, -0.923879532511286740, 0.382506273649438400,
    -0.923952894155768640,
  0.382329100870124510, -0.924026221829143850, 0.382151914033662720,
    -0.924099515528716280,
  0.381974713146567220, -0.924172775251791200, 0.381797498215353690,
    -0.924246000995674890,
  0.381620269246537520, -0.924319192757675160, 0.381443026246634730,
    -0.924392350535101050,
  0.381265769222162490, -0.924465474325262600, 0.381088498179637520,
    -0.924538564125471420,
  0.380911213125578130, -0.924611619933039970, 0.380733914066502090,
    -0.924684641745282530,
  0.380556601008928570, -0.924757629559513910, 0.380379273959376710,
    -0.924830583373050800,
  0.380201932924366050, -0.924903503183210910, 0.380024577910417380,
    -0.924976388987313050,
  0.379847208924051110, -0.925049240782677580, 0.379669825971789000,
    -0.925122058566625770,
  0.379492429060152740, -0.925194842336480420, 0.379315018195664430,
    -0.925267592089565550,
  0.379137593384847430, -0.925340307823206200, 0.378960154634224720,
    -0.925412989534729060,
  0.378782701950320600, -0.925485637221461490, 0.378605235339659290,
    -0.925558250880732620,
  0.378427754808765620, -0.925630830509872720, 0.378250260364165310,
    -0.925703376106213120,
  0.378072752012383990, -0.925775887667086740, 0.377895229759948550,
    -0.925848365189827270,
  0.377717693613385810, -0.925920808671769960, 0.377540143579222940,
    -0.925993218110251480,
  0.377362579663988450, -0.926065593502609310, 0.377185001874210450,
    -0.926137934846182560,
  0.377007410216418310, -0.926210242138311270, 0.376829804697141220,
    -0.926282515376337210,
  0.376652185322909620, -0.926354754557602860, 0.376474552100253880,
    -0.926426959679452100,
  0.376296905035704790, -0.926499130739230510, 0.376119244135794390,
    -0.926571267734284220,
  0.375941569407054420, -0.926643370661961230, 0.375763880856017750,
    -0.926715439519610330,
  0.375586178489217330, -0.926787474304581750, 0.375408462313186590,
    -0.926859475014227160,
  0.375230732334460030, -0.926931441645899130, 0.375052988559571860,
    -0.927003374196951670,
  0.374875230995057600, -0.927075272664740100, 0.374697459647452770,
    -0.927147137046620880,
  0.374519674523293210, -0.927218967339951790, 0.374341875629116030,
    -0.927290763542091720,
  0.374164062971457990, -0.927362525650401110, 0.373986236556857090,
    -0.927434253662241300,
  0.373808396391851370, -0.927505947574975180, 0.373630542482979280,
    -0.927577607385966730,
  0.373452674836780410, -0.927649233092581180, 0.373274793459794030,
    -0.927720824692185200,
  0.373096898358560690, -0.927792382182146320, 0.372918989539620770,
    -0.927863905559833780,
  0.372741067009515810, -0.927935394822617890, 0.372563130774787370,
    -0.928006849967869970,
  0.372385180841977360, -0.928078270992963140, 0.372207217217628950,
    -0.928149657895271150,
  0.372029239908284960, -0.928221010672169440, 0.371851248920489540,
    -0.928292329321034560,
  0.371673244260786630, -0.928363613839244370, 0.371495225935720760,
    -0.928434864224177980,
  0.371317193951837600, -0.928506080473215480, 0.371139148315682510,
    -0.928577262583738850,
  0.370961089033802040, -0.928648410553130520, 0.370783016112742720,
    -0.928719524378774700,
  0.370604929559051670, -0.928790604058057020, 0.370426829379276900,
    -0.928861649588363700,
  0.370248715579966360, -0.928932660967082820, 0.370070588167669130,
    -0.929003638191603360,
  0.369892447148934270, -0.929074581259315750, 0.369714292530311240,
    -0.929145490167611720,
  0.369536124318350760, -0.929216364913883930, 0.369357942519603190,
    -0.929287205495526790,
  0.369179747140620070, -0.929358011909935500, 0.369001538187952780,
    -0.929428784154506800,
  0.368823315668153960, -0.929499522226638560, 0.368645079587776150,
    -0.929570226123729860,
  0.368466829953372320, -0.929640895843181330, 0.368288566771496680,
    -0.929711531382394370,
  0.368110290048703050, -0.929782132738772190, 0.367931999791546500,
    -0.929852699909718750,
  0.367753696006582090, -0.929923232892639560, 0.367575378700365330,
    -0.929993731684941480,
  0.367397047879452820, -0.930064196284032360, 0.367218703550400930,
    -0.930134626687321390,
  0.367040345719767240, -0.930205022892219070, 0.366861974394109220,
    -0.930275384896137040,
  0.366683589579984930, -0.930345712696488470, 0.366505191283953480,
    -0.930416006290687550,
  0.366326779512573590, -0.930486265676149780, 0.366148354272405390,
    -0.930556490850291800,
  0.365969915570008910, -0.930626681810531650, 0.365791463411944570,
    -0.930696838554288860,
  0.365612997804773960, -0.930766961078983710, 0.365434518755058390,
    -0.930837049382038150,
  0.365256026269360380, -0.930907103460875020, 0.365077520354242180,
    -0.930977123312918930,
  0.364899001016267380, -0.931047108935595170, 0.364720468261999390,
    -0.931117060326330790,
  0.364541922098002180, -0.931186977482553750, 0.364363362530840730,
    -0.931256860401693420,
  0.364184789567079840, -0.931326709081180430, 0.364006203213285530,
    -0.931396523518446600,
  0.363827603476023610, -0.931466303710925090, 0.363648990361860550,
    -0.931536049656050300,
  0.363470363877363870, -0.931605761351257830, 0.363291724029100700,
    -0.931675438793984620,
  0.363113070823639530, -0.931745081981668720, 0.362934404267548750,
    -0.931814690911749620,
  0.362755724367397230, -0.931884265581668150, 0.362577031129754870,
    -0.931953805988865900,
  0.362398324561191310, -0.932023312130786490, 0.362219604668277570,
    -0.932092784004874050,
  0.362040871457584350, -0.932162221608574320, 0.361862124935682980,
    -0.932231624939334540,
  0.361683365109145950, -0.932300993994602640, 0.361504591984545260,
    -0.932370328771828460,
  0.361325805568454340, -0.932439629268462360, 0.361147005867446190,
    -0.932508895481956700,
  0.360968192888095290, -0.932578127409764420, 0.360789366636975690,
    -0.932647325049340340,
  0.360610527120662270, -0.932716488398140250, 0.360431674345730810,
    -0.932785617453620990,
  0.360252808318756830, -0.932854712213241230, 0.360073929046317080,
    -0.932923772674460140,
  0.359895036534988280, -0.932992798834738850, 0.359716130791347570,
    -0.933061790691539380,
  0.359537211821973180, -0.933130748242325110, 0.359358279633443080,
    -0.933199671484560730,
  0.359179334232336560, -0.933268560415712050, 0.359000375625232630,
    -0.933337415033246080,
  0.358821403818710920, -0.933406235334631520, 0.358642418819352100,
    -0.933475021317337950,
  0.358463420633736540, -0.933543772978836170, 0.358284409268445900,
    -0.933612490316598540,
  0.358105384730061760, -0.933681173328098300, 0.357926347025166070,
    -0.933749822010810580,
  0.357747296160342010, -0.933818436362210960, 0.357568232142172260,
    -0.933887016379776890,
  0.357389154977241000, -0.933955562060986730, 0.357210064672131900,
    -0.934024073403320500,
  0.357030961233430030, -0.934092550404258870, 0.356851844667720410,
    -0.934160993061284420,
  0.356672714981588260, -0.934229401371880820, 0.356493572181620200,
    -0.934297775333532530,
  0.356314416274402360, -0.934366114943725900, 0.356135247266522180,
    -0.934434420199948050,
  0.355956065164567010, -0.934502691099687870, 0.355776869975124640,
    -0.934570927640435030,
  0.355597661704783960, -0.934639129819680780, 0.355418440360133590,
    -0.934707297634917440,
  0.355239205947763370, -0.934775431083638700, 0.355059958474263030,
    -0.934843530163339430,
  0.354880697946222790, -0.934911594871516090, 0.354701424370233940,
    -0.934979625205665800,
  0.354522137752887430, -0.935047621163287430, 0.354342838100775600,
    -0.935115582741880890,
  0.354163525420490510, -0.935183509938947500, 0.353984199718624830,
    -0.935251402751989810,
  0.353804861001772160, -0.935319261178511500, 0.353625509276525970,
    -0.935387085216017770,
  0.353446144549480870, -0.935454874862014620, 0.353266766827231180,
    -0.935522630114009930,
  0.353087376116372530, -0.935590350969512370, 0.352907972423500360,
    -0.935658037426032040,
  0.352728555755210730, -0.935725689481080370, 0.352549126118100580,
    -0.935793307132169900,
  0.352369683518766630, -0.935860890376814640, 0.352190227963806890,
    -0.935928439212529660,
  0.352010759459819240, -0.935995953636831300, 0.351831278013402030,
    -0.936063433647237540,
  0.351651783631154680, -0.936130879241266920, 0.351472276319676260,
    -0.936198290416440090,
  0.351292756085567150, -0.936265667170278260, 0.351113222935427630,
    -0.936333009500304180,
  0.350933676875858360, -0.936400317404042060, 0.350754117913461170,
    -0.936467590879016880,
  0.350574546054837570, -0.936534829922755500, 0.350394961306590200,
    -0.936602034532785570,
  0.350215363675321740, -0.936669204706636060, 0.350035753167635300,
    -0.936736340441837620,
  0.349856129790135030, -0.936803441735921560, 0.349676493549424760,
    -0.936870508586420960,
  0.349496844452109600, -0.936937540990869900, 0.349317182504794320,
    -0.937004538946803690,
  0.349137507714085030, -0.937071502451759190, 0.348957820086587600,
    -0.937138431503274140,
  0.348778119628908420, -0.937205326098887960, 0.348598406347655040,
    -0.937272186236140950,
  0.348418680249434510, -0.937339011912574960, 0.348238941340855310,
    -0.937405803125732850,
  0.348059189628525780, -0.937472559873159140, 0.347879425119054510,
    -0.937539282152399230,
  0.347699647819051490, -0.937605969960999990, 0.347519857735126110,
    -0.937672623296509470,
  0.347340054873889190, -0.937739242156476970, 0.347160239241951330,
    -0.937805826538453010,
  0.346980410845923680, -0.937872376439989890, 0.346800569692418400,
    -0.937938891858640210,
  0.346620715788047320, -0.938005372791958840, 0.346440849139423580,
    -0.938071819237501160,
  0.346260969753160170, -0.938138231192824360, 0.346081077635870480,
    -0.938204608655486490,
  0.345901172794169100, -0.938270951623047080, 0.345721255234670120,
    -0.938337260093066950,
  0.345541324963989150, -0.938403534063108060, 0.345361381988741170,
    -0.938469773530733800,
  0.345181426315542610, -0.938535978493508560, 0.345001457951009780,
    -0.938602148948998290,
  0.344821476901759290, -0.938668284894770170, 0.344641483174409070,
    -0.938734386328392460,
  0.344461476775576480, -0.938800453247434770, 0.344281457711880230,
    -0.938866485649468060,
  0.344101425989938980, -0.938932483532064490, 0.343921381616371700,
    -0.938998446892797540,
  0.343741324597798600, -0.939064375729241950, 0.343561254940839330,
    -0.939130270038973650,
  0.343381172652115100, -0.939196129819569900, 0.343201077738246710,
    -0.939261955068609100,
  0.343020970205855540, -0.939327745783671400, 0.342840850061564060,
    -0.939393501962337510,
  0.342660717311994380, -0.939459223602189920, 0.342480571963769850,
    -0.939524910700812120,
  0.342300414023513690, -0.939590563255789160, 0.342120243497849590,
    -0.939656181264707070,
  0.341940060393402300, -0.939721764725153340, 0.341759864716796310,
    -0.939787313634716570,
  0.341579656474657210, -0.939852827990986680, 0.341399435673610360,
    -0.939918307791555050,
  0.341219202320282410, -0.939983753034013940, 0.341038956421299830,
    -0.940049163715957370,
  0.340858697983289440, -0.940114539834980280, 0.340678427012879310,
    -0.940179881388678810,
  0.340498143516697100, -0.940245188374650880, 0.340317847501371730,
    -0.940310460790495070,
  0.340137538973531880, -0.940375698633811540, 0.339957217939806880,
    -0.940440901902201750,
  0.339776884406826960, -0.940506070593268300, 0.339596538381222060,
    -0.940571204704615190,
  0.339416179869623410, -0.940636304233847590, 0.339235808878662120,
    -0.940701369178571940,
  0.339055425414969640, -0.940766399536396070, 0.338875029485178560,
    -0.940831395304928870,
  0.338694621095921190, -0.940896356481780830, 0.338514200253831000,
    -0.940961283064563280,
  0.338333766965541290, -0.941026175050889260, 0.338153321237685990,
    -0.941091032438372780,
  0.337972863076899830, -0.941155855224629190, 0.337792392489817460,
    -0.941220643407275180,
  0.337611909483074680, -0.941285396983928660, 0.337431414063306790,
    -0.941350115952208970,
  0.337250906237150650, -0.941414800309736230, 0.337070386011242730,
    -0.941479450054132580,
  0.336889853392220050, -0.941544065183020810, 0.336709308386720700,
    -0.941608645694025140,
  0.336528751001382350, -0.941673191584771360, 0.336348181242844100,
    -0.941737702852886160,
  0.336167599117744690, -0.941802179495997650, 0.335987004632723350,
    -0.941866621511735280,
  0.335806397794420560, -0.941931028897729510, 0.335625778609476230,
    -0.941995401651612550,
  0.335445147084531660, -0.942059739771017310, 0.335264503226227970,
    -0.942124043253578460,
  0.335083847041206580, -0.942188312096931770, 0.334903178536110290,
    -0.942252546298714020,
  0.334722497717581220, -0.942316745856563780, 0.334541804592262960,
    -0.942380910768120470,
  0.334361099166798900, -0.942445041031024890, 0.334180381447832740,
    -0.942509136642919240,
  0.333999651442009490, -0.942573197601446870, 0.333818909155973620,
    -0.942637223904252530,
  0.333638154596370920, -0.942701215548981900, 0.333457387769846790,
    -0.942765172533282510,
  0.333276608683047980, -0.942829094854802710, 0.333095817342620890,
    -0.942892982511192130,
  0.332915013755212650, -0.942956835500102120, 0.332734197927471160,
    -0.943020653819184650,
  0.332553369866044220, -0.943084437466093490, 0.332372529577580680,
    -0.943148186438483420,
  0.332191677068729320, -0.943211900734010620, 0.332010812346139380,
    -0.943275580350332540,
  0.331829935416461220, -0.943339225285107720, 0.331649046286344620,
    -0.943402835535996240,
  0.331468144962440920, -0.943466411100659320, 0.331287231451400990,
    -0.943529951976759370,
  0.331106305759876430, -0.943593458161960390, 0.330925367894519650,
    -0.943656929653927110,
  0.330744417861982890, -0.943720366450326200, 0.330563455668919590,
    -0.943783768548825060,
  0.330382481321982950, -0.943847135947092690, 0.330201494827826620,
    -0.943910468642799150,
  0.330020496193105530, -0.943973766633615980, 0.329839485424473940,
    -0.944037029917215830,
  0.329658462528587550, -0.944100258491272660, 0.329477427512101680,
    -0.944163452353461770,
  0.329296380381672800, -0.944226611501459810, 0.329115321143957360,
    -0.944289735932944410,
  0.328934249805612200, -0.944352825645594750, 0.328753166373295100,
    -0.944415880637091250,
  0.328572070853663690, -0.944478900905115550, 0.328390963253376630,
    -0.944541886447350380,
  0.328209843579092660, -0.944604837261480260, 0.328028711837470730,
    -0.944667753345190490,
  0.327847568035170960, -0.944730634696167800, 0.327666412178853060,
    -0.944793481312100280,
  0.327485244275178060, -0.944856293190677210, 0.327304064330806830,
    -0.944919070329589220,
  0.327122872352400510, -0.944981812726528150, 0.326941668346621530,
    -0.945044520379187070,
  0.326760452320131790, -0.945107193285260610, 0.326579224279594460,
    -0.945169831442444150,
  0.326397984231672660, -0.945232434848434890, 0.326216732183029770,
    -0.945295003500931100,
  0.326035468140330350, -0.945357537397632290, 0.325854192110238580,
    -0.945420036536239070,
  0.325672904099419900, -0.945482500914453740, 0.325491604114539260,
    -0.945544930529979680,
  0.325310292162262980, -0.945607325380521280, 0.325128968249257190,
    -0.945669685463784710,
  0.324947632382188430, -0.945732010777477150, 0.324766284567724330,
    -0.945794301319306860,
  0.324584924812532150, -0.945856557086983910, 0.324403553123280290,
    -0.945918778078219110,
  0.324222169506637130, -0.945980964290724760, 0.324040773969271450,
    -0.946043115722214560,
  0.323859366517852960, -0.946105232370403340, 0.323677947159051180,
    -0.946167314233007370,
  0.323496515899536760, -0.946229361307743820, 0.323315072745980150,
    -0.946291373592331510,
  0.323133617705052330, -0.946353351084490590, 0.322952150783425370,
    -0.946415293781942110,
  0.322770671987770710, -0.946477201682408680, 0.322589181324761390,
    -0.946539074783614100,
  0.322407678801070020, -0.946600913083283530, 0.322226164423369650,
    -0.946662716579143360,
  0.322044638198334620, -0.946724485268921170, 0.321863100132638580,
    -0.946786219150346000,
  0.321681550232956640, -0.946847918221148000, 0.321499988505963450,
    -0.946909582479058760,
  0.321318414958334910, -0.946971211921810880, 0.321136829596746780,
    -0.947032806547138620,
  0.320955232427875210, -0.947094366352777220, 0.320773623458397440,
    -0.947155891336463270,
  0.320592002694990330, -0.947217381495934820, 0.320410370144331880,
    -0.947278836828930880,
  0.320228725813100020, -0.947340257333191940, 0.320047069707973140,
    -0.947401643006459900,
  0.319865401835630610, -0.947462993846477700, 0.319683722202751370,
    -0.947524309850989570,
  0.319502030816015750, -0.947585591017741090, 0.319320327682103720,
    -0.947646837344479190,
  0.319138612807695900, -0.947708048828952100, 0.318956886199473770,
    -0.947769225468909180,
  0.318775147864118480, -0.947830367262101010, 0.318593397808312470,
    -0.947891474206279730,
  0.318411636038737960, -0.947952546299198560, 0.318229862562077580,
    -0.948013583538612200,
  0.318048077385015060, -0.948074585922276230, 0.317866280514233660,
    -0.948135553447947980,
  0.317684471956418020, -0.948196486113385580, 0.317502651718252260,
    -0.948257383916349060,
  0.317320819806421790, -0.948318246854599090, 0.317138976227611890,
    -0.948379074925898120,
  0.316957120988508150, -0.948439868128009620, 0.316775254095797380,
    -0.948500626458698260,
  0.316593375556165850, -0.948561349915730270, 0.316411485376301090,
    -0.948622038496872990,
  0.316229583562890490, -0.948682692199895090, 0.316047670122621860,
    -0.948743311022566480,
  0.315865745062184070, -0.948803894962658380, 0.315683808388265600,
    -0.948864444017943340,
  0.315501860107556040, -0.948924958186195160, 0.315319900226745050,
    -0.948985437465188710,
  0.315137928752522440, -0.949045881852700560, 0.314955945691579250,
    -0.949106291346508260,
  0.314773951050606070, -0.949166665944390700, 0.314591944836294710,
    -0.949227005644128210,
  0.314409927055336820, -0.949287310443502010, 0.314227897714424500,
    -0.949347580340295210,
  0.314045856820250820, -0.949407815332291460, 0.313863804379508500,
    -0.949468015417276550,
  0.313681740398891570, -0.949528180593036670, 0.313499664885093450,
    -0.949588310857359950,
  0.313317577844809070, -0.949648406208035480, 0.313135479284732950,
    -0.949708466642853800,
  0.312953369211560200, -0.949768492159606680, 0.312771247631986880,
    -0.949828482756087000,
  0.312589114552708660, -0.949888438430089300, 0.312406969980422500,
    -0.949948359179409010,
  0.312224813921825050, -0.950008245001843000, 0.312042646383613510,
    -0.950068095895189590,
  0.311860467372486130, -0.950127911857248100, 0.311678276895140550,
    -0.950187692885819280,
  0.311496074958275970, -0.950247438978705230, 0.311313861568591090,
    -0.950307150133709140,
  0.311131636732785270, -0.950366826348635780, 0.310949400457558760,
    -0.950426467621290900,
  0.310767152749611470, -0.950486073949481700, 0.310584893615644560,
    -0.950545645331016600,
  0.310402623062358880, -0.950605181763705230, 0.310220341096455910,
    -0.950664683245358910,
  0.310038047724638000, -0.950724149773789610, 0.309855742953607130,
    -0.950783581346811070,
  0.309673426790066490, -0.950842977962238160, 0.309491099240719050,
    -0.950902339617887060,
  0.309308760312268780, -0.950961666311575080, 0.309126410011419550,
    -0.951020958041121080,
  0.308944048344875710, -0.951080214804345010, 0.308761675319342570,
    -0.951139436599068190,
  0.308579290941525030, -0.951198623423113230, 0.308396895218129240,
    -0.951257775274304000,
  0.308214488155861220, -0.951316892150465550, 0.308032069761427330,
    -0.951375974049424420,
  0.307849640041534980, -0.951435020969008340, 0.307667199002891190,
    -0.951494032907046370,
  0.307484746652204160, -0.951553009861368590, 0.307302282996181950,
    -0.951611951829806730,
  0.307119808041533100, -0.951670858810193860, 0.306937321794967020,
    -0.951729730800363720,
  0.306754824263192780, -0.951788567798152130, 0.306572315452920800,
    -0.951847369801395620,
  0.306389795370861080, -0.951906136807932230, 0.306207264023724280,
    -0.951964868815601380,
  0.306024721418221900, -0.952023565822243570, 0.305842167561065080,
    -0.952082227825700620,
  0.305659602458966230, -0.952140854823815830, 0.305477026118637360,
    -0.952199446814433580,
  0.305294438546791720, -0.952258003795399600, 0.305111839750142220,
    -0.952316525764560830,
  0.304929229735402430, -0.952375012719765880, 0.304746608509286640,
    -0.952433464658864030,
  0.304563976078509050, -0.952491881579706320, 0.304381332449784940,
    -0.952550263480144930,
  0.304198677629829270, -0.952608610358033240, 0.304016011625357570,
    -0.952666922211226170,
  0.303833334443086470, -0.952725199037579570, 0.303650646089731910,
    -0.952783440834950920,
  0.303467946572011370, -0.952841647601198720, 0.303285235896641910,
    -0.952899819334182880,
  0.303102514070341060, -0.952957956031764700, 0.302919781099827420,
    -0.953016057691806530,
  0.302737036991819140, -0.953074124312172200, 0.302554281753035670,
    -0.953132155890726750,
  0.302371515390196130, -0.953190152425336560, 0.302188737910020040,
    -0.953248113913869320,
  0.302005949319228200, -0.953306040354193750, 0.301823149624540650,
    -0.953363931744180330,
  0.301640338832678880, -0.953421788081700310, 0.301457516950363940,
    -0.953479609364626610,
  0.301274683984318000, -0.953537395590833280, 0.301091839941263210,
    -0.953595146758195680,
  0.300908984827921890, -0.953652862864590500, 0.300726118651017620,
    -0.953710543907895560,
  0.300543241417273400, -0.953768189885990330, 0.300360353133413580,
    -0.953825800796755050,
  0.300177453806162120, -0.953883376638071770, 0.299994543442243580,
    -0.953940917407823500,
  0.299811622048383460, -0.953998423103894490, 0.299628689631306790,
    -0.954055893724170660,
  0.299445746197739950, -0.954113329266538800, 0.299262791754409010,
    -0.954170729728887280,
  0.299079826308040480, -0.954228095109105670, 0.298896849865361910,
    -0.954285425405084650,
  0.298713862433100390, -0.954342720614716480, 0.298530864017984230,
    -0.954399980735894490,
  0.298347854626741570, -0.954457205766513490, 0.298164834266100910,
    -0.954514395704469500,
  0.297981802942791920, -0.954571550547659630, 0.297798760663543550,
    -0.954628670293982680,
  0.297615707435086310, -0.954685754941338340, 0.297432643264150030,
    -0.954742804487627940,
  0.297249568157465890, -0.954799818930753720, 0.297066482121764840,
    -0.954856798268619580,
  0.296883385163778270, -0.954913742499130520, 0.296700277290238460,
    -0.954970651620192790,
  0.296517158507877410, -0.955027525629714160, 0.296334028823428240,
    -0.955084364525603410,
  0.296150888243623960, -0.955141168305770670, 0.295967736775197890,
    -0.955197936968127710,
  0.295784574424884370, -0.955254670510586990, 0.295601401199417360,
    -0.955311368931062720,
  0.295418217105532070, -0.955368032227470240, 0.295235022149963390,
    -0.955424660397726330,
  0.295051816339446720, -0.955481253439748770, 0.294868599680718380,
    -0.955537811351456770,
  0.294685372180514330, -0.955594334130771110, 0.294502133845571720,
    -0.955650821775613220,
  0.294318884682627570, -0.955707274283906560, 0.294135624698419080,
    -0.955763691653575440,
  0.293952353899684770, -0.955820073882545420, 0.293769072293162400,
    -0.955876420968743590,
  0.293585779885591310, -0.955932732910098170, 0.293402476683710060,
    -0.955989009704538930,
  0.293219162694258680, -0.956045251349996410, 0.293035837923976920,
    -0.956101457844403040,
  0.292852502379604810, -0.956157629185692140, 0.292669156067883570,
    -0.956213765371798470,
  0.292485798995553830, -0.956269866400658140, 0.292302431169357610,
    -0.956325932270208230,
  0.292119052596036540, -0.956381962978387620, 0.291935663282332780,
    -0.956437958523136180,
  0.291752263234989370, -0.956493918902394990, 0.291568852460749040,
    -0.956549844114106820,
  0.291385430966355720, -0.956605734156215080, 0.291201998758553020,
    -0.956661589026664980,
  0.291018555844085090, -0.956717408723403050, 0.290835102229696940,
    -0.956773193244376930,
  0.290651637922133220, -0.956828942587535370, 0.290468162928139870,
    -0.956884656750828900,
  0.290284677254462330, -0.956940335732208940, 0.290101180907847140,
    -0.956995979529628230,
  0.289917673895040860, -0.957051588141040970, 0.289734156222790250,
    -0.957107161564402790,
  0.289550627897843140, -0.957162699797670100, 0.289367088926946960,
    -0.957218202838801210,
  0.289183539316850310, -0.957273670685755200, 0.288999979074301530,
    -0.957329103336492790,
  0.288816408206049480, -0.957384500788975860, 0.288632826718843940,
    -0.957439863041167570,
  0.288449234619434170, -0.957495190091032570, 0.288265631914570830,
    -0.957550481936536470,
  0.288082018611004300, -0.957605738575646240, 0.287898394715485170,
    -0.957660960006330610,
  0.287714760234765280, -0.957716146226558870, 0.287531115175595930,
    -0.957771297234302320,
  0.287347459544729570, -0.957826413027532910, 0.287163793348918560,
    -0.957881493604224250,
  0.286980116594915570, -0.957936538962351420, 0.286796429289474190,
    -0.957991549099890370,
  0.286612731439347790, -0.958046524014818600, 0.286429023051290750,
    -0.958101463705114620,
  0.286245304132057120, -0.958156368168758820, 0.286061574688402100,
    -0.958211237403732260,
  0.285877834727080730, -0.958266071408017670, 0.285694084254848320,
    -0.958320870179598880,
  0.285510323278461380, -0.958375633716461170, 0.285326551804675810,
    -0.958430362016591040,
  0.285142769840248720, -0.958485055077976100, 0.284958977391937150,
    -0.958539712898605730,
  0.284775174466498300, -0.958594335476470220, 0.284591361070690550,
    -0.958648922809561040,
  0.284407537211271820, -0.958703474895871600, 0.284223702895001100,
    -0.958757991733395710,
  0.284039858128637360, -0.958812473320129200, 0.283856002918939750,
    -0.958866919654069010,
  0.283672137272668550, -0.958921330733213060, 0.283488261196583550,
    -0.958975706555561080,
  0.283304374697445790, -0.959030047119113550, 0.283120477782015990,
    -0.959084352421872730,
  0.282936570457055390, -0.959138622461841890, 0.282752652729326040,
    -0.959192857237025740,
  0.282568724605589740, -0.959247056745430090, 0.282384786092609420,
    -0.959301220985062210,
  0.282200837197147500, -0.959355349953930790, 0.282016877925967690,
    -0.959409443650045550,
  0.281832908285833460, -0.959463502071417510, 0.281648928283508680,
    -0.959517525216059260,
  0.281464937925758050, -0.959571513081984520, 0.281280937219346110,
    -0.959625465667208300,
  0.281096926171038320, -0.959679382969746750, 0.280912904787600120,
    -0.959733264987617680,
  0.280728873075797190, -0.959787111718839900, 0.280544831042396360,
    -0.959840923161433660,
  0.280360778694163810, -0.959894699313420530, 0.280176716037867040,
    -0.959948440172823210,
  0.279992643080273380, -0.960002145737665850, 0.279808559828150390,
    -0.960055816005973890,
  0.279624466288266700, -0.960109450975773940, 0.279440362467390510,
    -0.960163050645094000,
  0.279256248372291240, -0.960216615011963430, 0.279072124009737970,
    -0.960270144074412800,
  0.278887989386500280, -0.960323637830473920, 0.278703844509348600,
    -0.960377096278180130,
  0.278519689385053060, -0.960430519415565790, 0.278335524020384970,
    -0.960483907240666790,
  0.278151348422115090, -0.960537259751520050, 0.277967162597015430,
    -0.960590576946164120,
  0.277782966551857800, -0.960643858822638470, 0.277598760293414290,
    -0.960697105378984450,
  0.277414543828458200, -0.960750316613243950, 0.277230317163762120,
    -0.960803492523460760,
  0.277046080306099950, -0.960856633107679660, 0.276861833262245390,
    -0.960909738363946770,
  0.276677576038972420, -0.960962808290309780, 0.276493308643056100,
    -0.961015842884817230,
  0.276309031081271030, -0.961068842145519350, 0.276124743360392890,
    -0.961121806070467380,
  0.275940445487197320, -0.961174734657714080, 0.275756137468460120,
    -0.961227627905313460,
  0.275571819310958250, -0.961280485811320640, 0.275387491021468140,
    -0.961333308373792270,
  0.275203152606767370, -0.961386095590786250, 0.275018804073633380,
    -0.961438847460361570,
  0.274834445428843940, -0.961491563980579000, 0.274650076679177790,
    -0.961544245149499990,
  0.274465697831413220, -0.961596890965187860, 0.274281308892329710,
    -0.961649501425706820,
  0.274096909868706330, -0.961702076529122540, 0.273912500767323320,
    -0.961754616273502010,
  0.273728081594960650, -0.961807120656913540, 0.273543652358398730,
    -0.961859589677426570,
  0.273359213064418790, -0.961912023333112100, 0.273174763719801870,
    -0.961964421622042320,
  0.272990304331329980, -0.962016784542290560, 0.272805834905784920,
    -0.962069112091931580,
  0.272621355449948980, -0.962121404269041580, 0.272436865970605350,
    -0.962173661071697770,
  0.272252366474536660, -0.962225882497979020, 0.272067856968526980,
    -0.962278068545965090,
  0.271883337459359890, -0.962330219213737400, 0.271698807953819510,
    -0.962382334499378380,
  0.271514268458690810, -0.962434414400971990, 0.271329718980758420,
    -0.962486458916603450,
  0.271145159526808070, -0.962538468044359160, 0.270960590103625330,
    -0.962590441782326780,
  0.270776010717996010, -0.962642380128595710, 0.270591421376707050,
    -0.962694283081255930,
  0.270406822086544820, -0.962746150638399410, 0.270222212854296930,
    -0.962797982798119010,
  0.270037593686750510, -0.962849779558509030, 0.269852964590693910,
    -0.962901540917665000,
  0.269668325572915200, -0.962953266873683880, 0.269483676640202840,
    -0.963004957424663850,
  0.269299017799346230, -0.963056612568704340, 0.269114349057134330,
    -0.963108232303906190,
  0.268929670420357310, -0.963159816628371360, 0.268744981895805090,
    -0.963211365540203480,
  0.268560283490267890, -0.963262879037507070, 0.268375575210537010,
    -0.963314357118388090,
  0.268190857063403180, -0.963365799780954050, 0.268006129055658350,
    -0.963417207023313350,
  0.267821391194094320, -0.963468578843575950, 0.267636643485503090,
    -0.963519915239853140,
  0.267451885936677740, -0.963571216210257210, 0.267267118554410930,
    -0.963622481752902220,
  0.267082341345496350, -0.963673711865903230, 0.266897554316727510,
    -0.963724906547376410,
  0.266712757474898420, -0.963776065795439840, 0.266527950826803810,
    -0.963827189608212340,
  0.266343134379238180, -0.963878277983814200, 0.266158308138997050,
    -0.963929330920367140,
  0.265973472112875530, -0.963980348415994110, 0.265788626307669970,
    -0.964031330468819280,
  0.265603770730176440, -0.964082277076968140, 0.265418905387191260,
    -0.964133188238567640,
  0.265234030285511900, -0.964184063951745720, 0.265049145431935200,
    -0.964234904214632200,
  0.264864250833259320, -0.964285709025357370, 0.264679346496282050,
    -0.964336478382053720,
  0.264494432427801630, -0.964387212282854290, 0.264309508634617220,
    -0.964437910725893910,
  0.264124575123527490, -0.964488573709308410, 0.263939631901332410,
    -0.964539201231235150,
  0.263754678974831510, -0.964589793289812650, 0.263569716350824880,
    -0.964640349883180930,
  0.263384744036113390, -0.964690871009480920, 0.263199762037497560,
    -0.964741356666855340,
  0.263014770361779060, -0.964791806853447900, 0.262829769015759330,
    -0.964842221567403510,
  0.262644758006240100, -0.964892600806868890, 0.262459737340024090,
    -0.964942944569991410,
  0.262274707023913590, -0.964993252854920320, 0.262089667064712100,
    -0.965043525659805890,
  0.261904617469222560, -0.965093762982799590, 0.261719558244249080,
    -0.965143964822054450,
  0.261534489396595630, -0.965194131175724720, 0.261349410933066350,
    -0.965244262041965780,
  0.261164322860466590, -0.965294357418934660, 0.260979225185601020,
    -0.965344417304789370,
  0.260794117915275570, -0.965394441697689400, 0.260609001056295920,
    -0.965444430595795430,
  0.260423874615468010, -0.965494383997269500, 0.260238738599598950,
    -0.965544301900275070,
  0.260053593015495130, -0.965594184302976830, 0.259868437869964330,
    -0.965644031203540590,
  0.259683273169813930, -0.965693842600133690, 0.259498098921851660,
    -0.965743618490924830,
  0.259312915132886350, -0.965793358874083570, 0.259127721809726150,
    -0.965843063747781510,
  0.258942518959180580, -0.965892733110190860, 0.258757306588058840,
    -0.965942366959485540,
  0.258572084703170390, -0.965991965293840570, 0.258386853311325710,
    -0.966041528111432400,
  0.258201612419334870, -0.966091055410438830, 0.258016362034009070,
    -0.966140547189038750,
  0.257831102162158930, -0.966190003445412620, 0.257645832810596440,
    -0.966239424177741890,
  0.257460553986133210, -0.966288809384209580, 0.257275265695581120,
    -0.966338159063000130,
  0.257089967945753230, -0.966387473212298790, 0.256904660743461850,
    -0.966436751830292650,
  0.256719344095520720, -0.966485994915169840, 0.256534018008743200,
    -0.966535202465119700,
  0.256348682489942910, -0.966584374478333120, 0.256163337545934570,
    -0.966633510953002100,
  0.255977983183532380, -0.966682611887320190, 0.255792619409551670,
    -0.966731677279481840,
  0.255607246230807550, -0.966780707127683270, 0.255421863654115460,
    -0.966829701430121810,
  0.255236471686291820, -0.966878660184995910, 0.255051070334152530,
    -0.966927583390505660,
  0.254865659604514630, -0.966976471044852070, 0.254680239504194990,
    -0.967025323146237900,
  0.254494810040010790, -0.967074139692867040, 0.254309371218780110,
    -0.967122920682944360,
  0.254123923047320620, -0.967171666114676640, 0.253938465532451140,
    -0.967220375986271310,
  0.253752998680989940, -0.967269050295937790, 0.253567522499756610,
    -0.967317689041886310,
  0.253382036995570270, -0.967366292222328510, 0.253196542175250560,
    -0.967414859835477480,
  0.253011038045617980, -0.967463391879547440, 0.252825524613492610,
    -0.967511888352754150,
  0.252640001885695580, -0.967560349253314360, 0.252454469869047900,
    -0.967608774579446380,
  0.252268928570370810, -0.967657164329369880, 0.252083377996486560,
    -0.967705518501305480,
  0.251897818154216910, -0.967753837093475510, 0.251712249050384750,
    -0.967802120104103270,
  0.251526670691812780, -0.967850367531413620, 0.251341083085323880,
    -0.967898579373632660,
  0.251155486237742030, -0.967946755628987800, 0.250969880155890720,
    -0.967994896295707670,
  0.250784264846594550, -0.968043001372022260, 0.250598640316677830,
    -0.968091070856162970,
  0.250413006572965280, -0.968139104746362330, 0.250227363622282540,
    -0.968187103040854420,
  0.250041711471454650, -0.968235065737874320, 0.249856050127308050,
    -0.968282992835658660,
  0.249670379596668520, -0.968330884332445300, 0.249484699886363010,
    -0.968378740226473300,
  0.249299011003218300, -0.968426560515983190, 0.249113312954061360,
    -0.968474345199216820,
  0.248927605745720260, -0.968522094274417270, 0.248741889385022420,
    -0.968569807739828930,
  0.248556163878796620, -0.968617485593697540, 0.248370429233871150,
    -0.968665127834269950,
  0.248184685457074780, -0.968712734459794780, 0.247998932555237220,
    -0.968760305468521430,
  0.247813170535187620, -0.968807840858700970, 0.247627399403756330,
    -0.968855340628585580,
  0.247441619167773440, -0.968902804776428870, 0.247255829834069320,
    -0.968950233300485800,
  0.247070031409475370, -0.968997626199012310, 0.246884223900822430,
    -0.969044983470266240,
  0.246698407314942500, -0.969092305112506100, 0.246512581658667380,
    -0.969139591123992280,
  0.246326746938829060, -0.969186841502985950, 0.246140903162260640,
    -0.969234056247750050,
  0.245955050335794590, -0.969281235356548530, 0.245769188466264670,
    -0.969328378827646660,
  0.245583317560504000, -0.969375486659311280, 0.245397437625346990,
    -0.969422558849810320,
  0.245211548667627680, -0.969469595397412950, 0.245025650694180470,
    -0.969516596300390000,
  0.244839743711840750, -0.969563561557013180, 0.244653827727443320,
    -0.969610491165555870,
  0.244467902747824210, -0.969657385124292450, 0.244281968779819170,
    -0.969704243431498750,
  0.244096025830264210, -0.969751066085452140, 0.243910073905996370,
    -0.969797853084430890,
  0.243724113013852130, -0.969844604426714830, 0.243538143160669180,
    -0.969891320110585100,
  0.243352164353284880, -0.969938000134323960, 0.243166176598536930,
    -0.969984644496215240,
  0.242980179903263980, -0.970031253194543970, 0.242794174274304190,
    -0.970077826227596420,
  0.242608159718496890, -0.970124363593660280, 0.242422136242681050,
    -0.970170865291024360,
  0.242236103853696040, -0.970217331317979160, 0.242050062558382180,
    -0.970263761672816140,
  0.241864012363579210, -0.970310156353828110, 0.241677953276128090,
    -0.970356515359309450,
  0.241491885302869300, -0.970402838687555500, 0.241305808450644390,
    -0.970449126336863090,
  0.241119722726294730, -0.970495378305530450, 0.240933628136661910,
    -0.970541594591857070,
  0.240747524688588540, -0.970587775194143630, 0.240561412388916620,
    -0.970633920110692160,
  0.240375291244489500, -0.970680029339806130, 0.240189161262150040,
    -0.970726102879790110,
  0.240003022448741500, -0.970772140728950350, 0.239816874811108110,
    -0.970818142885593870,
  0.239630718356093560, -0.970864109348029470, 0.239444553090542720,
    -0.970910040114567050,
  0.239258379021300120, -0.970955935183517970, 0.239072196155210660,
    -0.971001794553194690,
  0.238886004499120170, -0.971047618221911100, 0.238699804059873950,
    -0.971093406187982460,
  0.238513594844318500, -0.971139158449725090, 0.238327376859299970,
    -0.971184875005457030,
  0.238141150111664870, -0.971230555853497380, 0.237954914608260650,
    -0.971276200992166490,
  0.237768670355934210, -0.971321810419786160, 0.237582417361533650,
    -0.971367384134679490,
  0.237396155631906550, -0.971412922135170940, 0.237209885173901620,
    -0.971458424419585960,
  0.237023605994367340, -0.971503890986251780, 0.236837318100152380,
    -0.971549321833496630,
  0.236651021498106460, -0.971594716959650160, 0.236464716195078750,
    -0.971640076363043390,
  0.236278402197919620, -0.971685400042008540, 0.236092079513479050,
    -0.971730687994879160,
  0.235905748148607370, -0.971775940219990140, 0.235719408110155930,
    -0.971821156715677700,
  0.235533059404975460, -0.971866337480279400, 0.235346702039917920,
    -0.971911482512134000,
  0.235160336021834860, -0.971956591809581600, 0.234973961357578310,
    -0.972001665370963890,
  0.234787578054001080, -0.972046703194623380, 0.234601186117955550,
    -0.972091705278904430,
  0.234414785556295250, -0.972136671622152120, 0.234228376375873380,
    -0.972181602222713440,
  0.234041958583543460, -0.972226497078936270, 0.233855532186159950,
    -0.972271356189170040,
  0.233669097190576820, -0.972316179551765300, 0.233482653603649170,
    -0.972360967165074140,
  0.233296201432231560, -0.972405719027449770, 0.233109740683179740,
    -0.972450435137246830,
  0.232923271363349120, -0.972495115492821190, 0.232736793479595420,
    -0.972539760092530180,
  0.232550307038775330, -0.972584368934732210, 0.232363812047745010,
    -0.972628942017787270,
  0.232177308513361770, -0.972673479340056430, 0.231990796442482580,
    -0.972717980899902250,
  0.231804275841964780, -0.972762446695688570, 0.231617746718666580,
    -0.972806876725780370,
  0.231431209079445730, -0.972851270988544180, 0.231244662931161110,
    -0.972895629482347760,
  0.231058108280671280, -0.972939952205560070, 0.230871545134835070,
    -0.972984239156551740,
  0.230684973500512310, -0.973028490333694100, 0.230498393384562320,
    -0.973072705735360530,
  0.230311804793845530, -0.973116885359925130, 0.230125207735222020,
    -0.973161029205763530,
  0.229938602215552260, -0.973205137271252800, 0.229751988241697600,
    -0.973249209554771120,
  0.229565365820518870, -0.973293246054698250, 0.229378734958878120,
    -0.973337246769414800,
  0.229192095663636740, -0.973381211697303290, 0.229005447941657390,
    -0.973425140836747030,
  0.228818791799802360, -0.973469034186130950, 0.228632127244934230,
    -0.973512891743841370,
  0.228445454283916550, -0.973556713508265560, 0.228258772923612350,
    -0.973600499477792370,
  0.228072083170885790, -0.973644249650811870, 0.227885385032600700,
    -0.973687964025715670,
  0.227698678515621170, -0.973731642600896400, 0.227511963626812390,
    -0.973775285374748000,
  0.227325240373038830, -0.973818892345666100, 0.227138508761166260,
    -0.973862463512047300,
  0.226951768798059980, -0.973905998872289460, 0.226765020490585720,
    -0.973949498424792170,
  0.226578263845610110, -0.973992962167955830, 0.226391498869999210,
    -0.974036390100182610,
  0.226204725570620270, -0.974079782219875680, 0.226017943954340190,
    -0.974123138525439520,
  0.225831154028026200, -0.974166459015280320, 0.225644355798546440,
    -0.974209743687805110,
  0.225457549272768540, -0.974252992541422500, 0.225270734457561240,
    -0.974296205574542330,
  0.225083911359792780, -0.974339382785575860, 0.224897079986332540,
    -0.974382524172935470,
  0.224710240344049570, -0.974425629735034990, 0.224523392439813170,
    -0.974468699470289580,
  0.224336536280493690, -0.974511733377115720, 0.224149671872960840,
    -0.974554731453931230,
  0.223962799224085520, -0.974597693699155050, 0.223775918340738290,
    -0.974640620111207560,
  0.223589029229790020, -0.974683510688510670, 0.223402131898112480,
    -0.974726365429487320,
  0.223215226352576960, -0.974769184332561770, 0.223028312600055870,
    -0.974811967396159830,
  0.222841390647421280, -0.974854714618708430, 0.222654460501545550,
    -0.974897425998635820,
  0.222467522169301990, -0.974940101534371720, 0.222280575657563370,
    -0.974982741224347140,
  0.222093620973203590, -0.975025345066994120, 0.221906658123096260,
    -0.975067913060746360,
  0.221719687114115240, -0.975110445204038890, 0.221532707953135340,
    -0.975152941495307620,
  0.221345720647030810, -0.975195401932990370, 0.221158725202677100,
    -0.975237826515525820,
  0.220971721626949060, -0.975280215241354220, 0.220784709926722670,
    -0.975322568108916930,
  0.220597690108873650, -0.975364885116656870, 0.220410662180277940,
    -0.975407166263018270,
  0.220223626147812460, -0.975449411546446380, 0.220036582018353550,
    -0.975491620965388110,
  0.219849529798778750, -0.975533794518291360, 0.219662469495965180,
    -0.975575932203605610,
  0.219475401116790340, -0.975618034019781750, 0.219288324668132580,
    -0.975660099965271590,
  0.219101240156869770, -0.975702130038528570, 0.218914147589880900,
    -0.975744124238007270,
  0.218727046974044600, -0.975786082562163930, 0.218539938316239830,
    -0.975828005009455550,
  0.218352821623346430, -0.975869891578341030, 0.218165696902243770,
    -0.975911742267280170,
  0.217978564159812290, -0.975953557074734300, 0.217791423402932120,
    -0.975995335999165880,
  0.217604274638483670, -0.976037079039039020, 0.217417117873348300,
    -0.976078786192818850,
  0.217229953114406790, -0.976120457458971910, 0.217042780368541080,
    -0.976162092835966110,
  0.216855599642632570, -0.976203692322270560, 0.216668410943563790,
    -0.976245255916355800,
  0.216481214278216900, -0.976286783616693630, 0.216294009653474370,
    -0.976328275421757260,
  0.216106797076219600, -0.976369731330021140, 0.215919576553335460,
    -0.976411151339961040,
  0.215732348091705940, -0.976452535450054060, 0.215545111698214660,
    -0.976493883658778540,
  0.215357867379745550, -0.976535195964614470, 0.215170615143183500,
    -0.976576472366042610,
  0.214983354995412820, -0.976617712861545640, 0.214796086943318920,
    -0.976658917449606980,
  0.214608810993786920, -0.976700086128711840, 0.214421527153702190,
    -0.976741218897346550,
  0.214234235429951100, -0.976782315753998650, 0.214046935829419330,
    -0.976823376697157240,
  0.213859628358993830, -0.976864401725312640, 0.213672313025561140,
    -0.976905390836956490,
  0.213484989836008080, -0.976946344030581560, 0.213297658797222430,
    -0.976987261304682390,
  0.213110319916091360, -0.977028142657754390, 0.212922973199503260,
    -0.977068988088294450,
  0.212735618654345870, -0.977109797594800880, 0.212548256287508120,
    -0.977150571175773200,
  0.212360886105878580, -0.977191308829712280, 0.212173508116346080,
    -0.977232010555120320,
  0.211986122325800410, -0.977272676350500860, 0.211798728741130820,
    -0.977313306214358750,
  0.211611327369227610, -0.977353900145199960, 0.211423918216980810,
    -0.977394458141532250,
  0.211236501291280710, -0.977434980201864260, 0.211049076599018500,
    -0.977475466324706050,
  0.210861644147084830, -0.977515916508569280, 0.210674203942371490,
    -0.977556330751966460,
  0.210486755991769890, -0.977596709053411780, 0.210299300302171750,
    -0.977637051411420770,
  0.210111836880469720, -0.977677357824509930, 0.209924365733555860,
    -0.977717628291197570,
  0.209736886868323370, -0.977757862810002760, 0.209549400291665110,
    -0.977798061379446360,
  0.209361906010474190, -0.977838223998050430, 0.209174404031644700,
    -0.977878350664338150,
  0.208986894362070070, -0.977918441376834370, 0.208799377008644980,
    -0.977958496134064830,
  0.208611851978263460, -0.977998514934557140, 0.208424319277820650,
    -0.978038497776839600,
  0.208236778914211470, -0.978078444659442380, 0.208049230894330940,
    -0.978118355580896660,
  0.207861675225075150, -0.978158230539735050, 0.207674111913339540,
    -0.978198069534491400,
  0.207486540966020700, -0.978237872563701090, 0.207298962390014880,
    -0.978277639625900420,
  0.207111376192218560, -0.978317370719627650, 0.206923782379529210,
    -0.978357065843421640,
  0.206736180958843660, -0.978396724995823090, 0.206548571937059940,
    -0.978436348175373730,
  0.206360955321075680, -0.978475935380616830, 0.206173331117788770,
    -0.978515486610096910,
  0.205985699334098050, -0.978555001862359550, 0.205798059976901760,
    -0.978594481135952270,
  0.205610413053099320, -0.978633924429423100, 0.205422758569589780,
    -0.978673331741322210,
  0.205235096533272380, -0.978712703070200420, 0.205047426951047380,
    -0.978752038414610340,
  0.204859749829814420, -0.978791337773105670, 0.204672065176474290,
    -0.978830601144241470,
  0.204484372997927180, -0.978869828526574120, 0.204296673301074430,
    -0.978909019918661310,
  0.204108966092817010, -0.978948175319062200, 0.203921251380056150,
    -0.978987294726337050,
  0.203733529169694010, -0.979026378139047580, 0.203545799468632190,
    -0.979065425555756930,
  0.203358062283773370, -0.979104436975029250, 0.203170317622019920,
    -0.979143412395430230,
  0.202982565490274460, -0.979182351815526930, 0.202794805895440550,
    -0.979221255233887700,
  0.202607038844421110, -0.979260122649082020, 0.202419264344120220,
    -0.979298954059681040,
  0.202231482401441620, -0.979337749464256780, 0.202043693023289280,
    -0.979376508861383170,
  0.201855896216568160, -0.979415232249634780, 0.201668091988182500,
    -0.979453919627588210,
  0.201480280345037820, -0.979492570993820700, 0.201292461294039190,
    -0.979531186346911390,
  0.201104634842091960, -0.979569765685440520, 0.200916800996102370,
    -0.979608309007989450,
  0.200728959762976140, -0.979646816313141210, 0.200541111149620090,
    -0.979685287599479930,
  0.200353255162940420, -0.979723722865591170, 0.200165391809844500,
    -0.979762122110061640,
  0.199977521097239290, -0.979800485331479680, 0.199789643032032120,
    -0.979838812528434740,
  0.199601757621131050, -0.979877103699517640, 0.199413864871443750,
    -0.979915358843320480,
  0.199225964789878890, -0.979953577958436740, 0.199038057383344820,
    -0.979991761043461200,
  0.198850142658750120, -0.980029908096989980, 0.198662220623004320,
    -0.980068019117620650,
  0.198474291283016360, -0.980106094103951770, 0.198286354645696270,
    -0.980144133054583590,
  0.198098410717953730, -0.980182135968117320, 0.197910459506698720,
    -0.980220102843155970,
  0.197722501018842030, -0.980258033678303550, 0.197534535261294000,
    -0.980295928472165290,
  0.197346562240966000, -0.980333787223347960, 0.197158581964769040,
    -0.980371609930459690,
  0.196970594439614370, -0.980409396592109910, 0.196782599672414240,
    -0.980447147206909060,
  0.196594597670080220, -0.980484861773469380, 0.196406588439525050,
    -0.980522540290404090,
  0.196218571987660850, -0.980560182756327950, 0.196030548321400880,
    -0.980597789169856850,
  0.195842517447657990, -0.980635359529608120, 0.195654479373345370,
    -0.980672893834200530,
  0.195466434105377090, -0.980710392082253970, 0.195278381650666520,
    -0.980747854272389750,
  0.195090322016128330, -0.980785280403230430, 0.194902255208676660,
    -0.980822670473399990,
  0.194714181235225990, -0.980860024481523870, 0.194526100102691720,
    -0.980897342426228390,
  0.194338011817988600, -0.980934624306141640, 0.194149916388032530,
    -0.980971870119892840,
  0.193961813819739010, -0.981009079866112630, 0.193773704120023840,
    -0.981046253543432780,
  0.193585587295803750, -0.981083391150486590, 0.193397463353994740,
    -0.981120492685908730,
  0.193209332301514080, -0.981157558148334830, 0.193021194145278320,
    -0.981194587536402320,
  0.192833048892205290, -0.981231580848749730, 0.192644896549212240,
    -0.981268538084016710,
  0.192456737123216840, -0.981305459240844670, 0.192268570621137590,
    -0.981342344317875930,
  0.192080397049892380, -0.981379193313754560, 0.191892216416400310,
    -0.981416006227125550,
  0.191704028727579940, -0.981452783056635520, 0.191515833990350240,
    -0.981489523800932130,
  0.191327632211630990, -0.981526228458664660, 0.191139423398341420,
    -0.981562897028483650,
  0.190951207557401860, -0.981599529509040720, 0.190762984695732250,
    -0.981636125898989080,
  0.190574754820252800, -0.981672686196983110, 0.190386517937884580,
    -0.981709210401678800,
  0.190198274055548120, -0.981745698511732990, 0.190010023180165050,
    -0.981782150525804310,
  0.189821765318656580, -0.981818566442552500, 0.189633500477944220,
    -0.981854946260638630,
  0.189445228664950340, -0.981891289978724990, 0.189256949886596720,
    -0.981927597595475540,
  0.189068664149806280, -0.981963869109555240, 0.188880371461501330,
    -0.982000104519630490,
  0.188692071828605260, -0.982036303824369020, 0.188503765258041080,
    -0.982072467022439890,
  0.188315451756732120, -0.982108594112513610, 0.188127131331602530,
    -0.982144685093261580,
  0.187938803989575850, -0.982180739963357200, 0.187750469737576840,
    -0.982216758721474510,
  0.187562128582529740, -0.982252741366289370, 0.187373780531359110,
    -0.982288687896478830,
  0.187185425590990440, -0.982324598310721160, 0.186997063768348510,
    -0.982360472607696210,
  0.186808695070359330, -0.982396310786084690, 0.186620319503948420,
    -0.982432112844569110,
  0.186431937076041640, -0.982467878781833170, 0.186243547793565670,
    -0.982503608596561720,
  0.186055151663446630, -0.982539302287441240, 0.185866748692611720,
    -0.982574959853159240,
  0.185678338887987790, -0.982610581292404750, 0.185489922256501900,
    -0.982646166603868050,
  0.185301498805082040, -0.982681715786240860, 0.185113068540655510,
    -0.982717228838215990,
  0.184924631470150870, -0.982752705758487830, 0.184736187600495930,
    -0.982788146545751970,
  0.184547736938619640, -0.982823551198705240, 0.184359279491450640,
    -0.982858919716046110,
  0.184170815265917720, -0.982894252096474070, 0.183982344268950600,
    -0.982929548338690060,
  0.183793866507478390, -0.982964808441396440, 0.183605381988431350,
    -0.983000032403296590,
  0.183416890718739230, -0.983035220223095640, 0.183228392705332140,
    -0.983070371899499640,
  0.183039887955141060, -0.983105487431216290, 0.182851376475096310,
    -0.983140566816954500,
  0.182662858272129360, -0.983175610055424420, 0.182474333353171260,
    -0.983210617145337640,
  0.182285801725153320, -0.983245588085407070, 0.182097263395007760,
    -0.983280522874346970,
  0.181908718369666160, -0.983315421510872810, 0.181720166656061170,
    -0.983350283993701500,
  0.181531608261125130, -0.983385110321551180, 0.181343043191790590,
    -0.983419900493141540,
  0.181154471454990920, -0.983454654507193270, 0.180965893057658980,
    -0.983489372362428730,
  0.180777308006728670, -0.983524054057571260, 0.180588716309133280,
    -0.983558699591345900,
  0.180400117971807270, -0.983593308962478650, 0.180211513001684590,
    -0.983627882169697210,
  0.180022901405699510, -0.983662419211730250, 0.179834283190787180,
    -0.983696920087308020,
  0.179645658363882100, -0.983731384795162090, 0.179457026931919950,
    -0.983765813334025240,
  0.179268388901835880, -0.983800205702631490, 0.179079744280565390,
    -0.983834561899716630,
  0.178891093075044830, -0.983868881924017220, 0.178702435292209940,
    -0.983903165774271500,
  0.178513770938997590, -0.983937413449218920, 0.178325100022344140,
    -0.983971624947600270,
  0.178136422549186320, -0.984005800268157870, 0.177947738526461670,
    -0.984039939409634970,
  0.177759047961107140, -0.984074042370776450, 0.177570350860060790,
    -0.984108109150328540,
  0.177381647230260200, -0.984142139747038570, 0.177192937078643310,
    -0.984176134159655320,
  0.177004220412148860, -0.984210092386929030, 0.176815497237715000,
    -0.984244014427611110,
  0.176626767562280960, -0.984277900280454370, 0.176438031392785350,
    -0.984311749944212780,
  0.176249288736167940, -0.984345563417641900, 0.176060539599367960,
    -0.984379340699498510,
  0.175871783989325040, -0.984413081788540700, 0.175683021912979580,
    -0.984446786683527920,
  0.175494253377271400, -0.984480455383220930, 0.175305478389141370,
    -0.984514087886381840,
  0.175116696955530060, -0.984547684191773960, 0.174927909083378160,
    -0.984581244298162180,
  0.174739114779627310, -0.984614768204312600, 0.174550314051218490,
    -0.984648255908992630,
  0.174361506905093830, -0.984681707410970940, 0.174172693348194960,
    -0.984715122709017620,
  0.173983873387463850, -0.984748501801904210, 0.173795047029843270,
    -0.984781844688403350,
  0.173606214282275410, -0.984815151367289140, 0.173417375151703520,
    -0.984848421837337010,
  0.173228529645070490, -0.984881656097323700, 0.173039677769319390,
    -0.984914854146027200,
  0.172850819531394200, -0.984948015982227030, 0.172661954938238270,
    -0.984981141604703960,
  0.172473083996796030, -0.985014231012239840, 0.172284206714011350,
    -0.985047284203618200,
  0.172095323096829040, -0.985080301177623800, 0.171906433152193700,
    -0.985113281933042590,
  0.171717536887049970, -0.985146226468662230, 0.171528634308343500,
    -0.985179134783271020,
  0.171339725423019260, -0.985212006875659460, 0.171150810238023340,
    -0.985244842744618540,
  0.170961888760301360, -0.985277642388941220, 0.170772960996799230,
    -0.985310405807421570,
  0.170584026954463700, -0.985343132998854790, 0.170395086640240920,
    -0.985375823962037710,
  0.170206140061078120, -0.985408478695768420, 0.170017187223922090,
    -0.985441097198846210,
  0.169828228135719880, -0.985473679470071810, 0.169639262803419400,
    -0.985506225508247290,
  0.169450291233967930, -0.985538735312176060, 0.169261313434313890,
    -0.985571208880662740,
  0.169072329411405180, -0.985603646212513400, 0.168883339172190010,
    -0.985636047306535420,
  0.168694342723617440, -0.985668412161537550, 0.168505340072635900,
    -0.985700740776329850,
  0.168316331226194910, -0.985733033149723490, 0.168127316191243350,
    -0.985765289280531310,
  0.167938294974731230, -0.985797509167567370, 0.167749267583608030,
    -0.985829692809647050,
  0.167560234024823590, -0.985861840205586980, 0.167371194305328540,
    -0.985893951354205210,
  0.167182148432072880, -0.985926026254321130, 0.166993096412007770,
    -0.985958064904755460,
  0.166804038252083870, -0.985990067304330030, 0.166614973959252090,
    -0.986022033451868560,
  0.166425903540464220, -0.986053963346195440, 0.166236827002671390,
    -0.986085856986136820,
  0.166047744352825850, -0.986117714370520090, 0.165858655597879430,
    -0.986149535498173860,
  0.165669560744784140, -0.986181320367928270, 0.165480459800492890,
    -0.986213068978614490,
  0.165291352771957970, -0.986244781329065460, 0.165102239666132720,
    -0.986276457418114980,
  0.164913120489970090, -0.986308097244598670, 0.164723995250423190,
    -0.986339700807353000,
  0.164534863954446110, -0.986371268105216030, 0.164345726608992190,
    -0.986402799137027220,
  0.164156583221015890, -0.986434293901627070, 0.163967433797471110,
    -0.986465752397857940,
  0.163778278345312690, -0.986497174624562880, 0.163589116871495160,
    -0.986528560580586690,
  0.163399949382973230, -0.986559910264775410, 0.163210775886702460,
    -0.986591223675976400,
  0.163021596389637810, -0.986622500813038480, 0.162832410898735260,
    -0.986653741674811350,
  0.162643219420950450, -0.986684946260146690, 0.162454021963239190,
    -0.986716114567897100,
  0.162264818532558110, -0.986747246596916480, 0.162075609135863330,
    -0.986778342346060430,
  0.161886393780111910, -0.986809401814185420, 0.161697172472260540,
    -0.986840425000149680,
  0.161507945219266150, -0.986871411902812470, 0.161318712028086540,
    -0.986902362521034470,
  0.161129472905678780, -0.986933276853677710, 0.160940227859001140,
    -0.986964154899605650,
  0.160750976895011390, -0.986994996657682870, 0.160561720020667510,
    -0.987025802126775600,
  0.160372457242928400, -0.987056571305750970, 0.160183188568752240,
    -0.987087304193477900,
  0.159993914005098350, -0.987118000788826280, 0.159804633558925380,
    -0.987148661090667570,
  0.159615347237193090, -0.987179285097874340, 0.159426055046860750,
    -0.987209872809320820,
  0.159236756994887850, -0.987240424223882250, 0.159047453088234840,
    -0.987270939340435420,
  0.158858143333861390, -0.987301418157858430, 0.158668827738728370,
    -0.987331860675030430,
  0.158479506309796100, -0.987362266890832400, 0.158290179054025180,
    -0.987392636804146240,
  0.158100845978377090, -0.987422970413855410, 0.157911507089812640,
    -0.987453267718844560,
  0.157722162395293690, -0.987483528717999710, 0.157532811901781670,
    -0.987513753410208420,
  0.157343455616238280, -0.987543941794359230, 0.157154093545626010,
    -0.987574093869342360,
  0.156964725696906750, -0.987604209634049160, 0.156775352077043430,
    -0.987634289087372160,
  0.156585972692998590, -0.987664332228205710, 0.156396587551734940,
    -0.987694339055445130,
  0.156207196660216040, -0.987724309567986960, 0.156017800025404830,
    -0.987754243764729530,
  0.155828397654265320, -0.987784141644572180, 0.155638989553760850,
    -0.987814003206415550,
  0.155449575730855880, -0.987843828449161740, 0.155260156192514380,
    -0.987873617371714200,
  0.155070730945700510, -0.987903369972977790, 0.154881299997379400,
    -0.987933086251858380,
  0.154691863354515400, -0.987962766207263420, 0.154502421024073990,
    -0.987992409838101880,
  0.154312973013020240, -0.988022017143283530, 0.154123519328319360,
    -0.988051588121720110,
  0.153934059976937460, -0.988081122772324070, 0.153744594965840000,
    -0.988110621094009820,
  0.153555124301993500, -0.988140083085692570, 0.153365647992364020,
    -0.988169508746289060,
  0.153176166043917870, -0.988198898074717610, 0.152986678463622160,
    -0.988228251069897420,
  0.152797185258443410, -0.988257567730749460, 0.152607686435349140,
    -0.988286848056195710,
  0.152418182001306500, -0.988316092045159690, 0.152228671963282770,
    -0.988345299696566150,
  0.152039156328246160, -0.988374471009341280, 0.151849635103164180,
    -0.988403605982412390,
  0.151660108295005400, -0.988432704614708340, 0.151470575910737760,
    -0.988461766905159300,
  0.151281037957330250, -0.988490792852696590, 0.151091494441751430,
    -0.988519782456253270,
  0.150901945370970040, -0.988548735714763200, 0.150712390751955720,
    -0.988577652627162020,
  0.150522830591677370, -0.988606533192386450, 0.150333264897105050,
    -0.988635377409374790,
  0.150143693675208330, -0.988664185277066230, 0.149954116932956990,
    -0.988692956794401940,
  0.149764534677321620, -0.988721691960323780, 0.149574946915272210,
    -0.988750390773775360,
  0.149385353653779810, -0.988779053233701520, 0.149195754899814960,
    -0.988807679339048340,
  0.149006150660348470, -0.988836269088763540, 0.148816540942352030,
    -0.988864822481795640,
  0.148626925752796540, -0.988893339517095130, 0.148437305098654050,
    -0.988921820193613190,
  0.148247678986896200, -0.988950264510302990, 0.148058047424494740,
    -0.988978672466118480,
  0.147868410418422360, -0.989007044060015270, 0.147678767975650970,
    -0.989035379290950310,
  0.147489120103153680, -0.989063678157881540, 0.147299466807902820,
    -0.989091940659768800,
  0.147109808096871850, -0.989120166795572690, 0.146920143977033760,
    -0.989148356564255590,
  0.146730474455361750, -0.989176509964781010, 0.146540799538829870,
    -0.989204626996113780,
  0.146351119234411440, -0.989232707657220050, 0.146161433549080950,
    -0.989260751947067640,
  0.145971742489812370, -0.989288759864625170, 0.145782046063579860,
    -0.989316731408863000,
  0.145592344277358450, -0.989344666578752640, 0.145402637138122540,
    -0.989372565373267010,
  0.145212924652847520, -0.989400427791380380, 0.145023206828508360,
    -0.989428253832068230,
  0.144833483672080240, -0.989456043494307710, 0.144643755190539150,
    -0.989483796777076760,
  0.144454021390860440, -0.989511513679355190, 0.144264282280020530,
    -0.989539194200123930,
  0.144074537864995330, -0.989566838338365120, 0.143884788152761010,
    -0.989594446093062460,
  0.143695033150294580, -0.989622017463200780, 0.143505272864572290,
    -0.989649552447766530,
  0.143315507302571590, -0.989677051045747210, 0.143125736471269140,
    -0.989704513256131850,
  0.142935960377642700, -0.989731939077910570, 0.142746179028669620,
    -0.989759328510075200,
  0.142556392431327340, -0.989786681551618640, 0.142366600592594260,
    -0.989813998201535260,
  0.142176803519448000, -0.989841278458820530, 0.141987001218867340,
    -0.989868522322471580,
  0.141797193697830530, -0.989895729791486660, 0.141607380963316020,
    -0.989922900864865450,
  0.141417563022303130, -0.989950035541608990, 0.141227739881770480,
    -0.989977133820719610,
  0.141037911548697770, -0.990004195701200910, 0.140848078030064220,
    -0.990031221182058000,
  0.140658239332849240, -0.990058210262297120, 0.140468395464033110,
    -0.990085162940925970,
  0.140278546430595420, -0.990112079216953770, 0.140088692239516780,
    -0.990138959089390650,
  0.139898832897777380, -0.990165802557248400, 0.139708968412357580,
    -0.990192609619540030,
  0.139519098790238600, -0.990219380275280000, 0.139329224038400980,
    -0.990246114523483990,
  0.139139344163826280, -0.990272812363169110, 0.138949459173495440,
    -0.990299473793353590,
  0.138759569074390380, -0.990326098813057330, 0.138569673873492640,
    -0.990352687421301340,
  0.138379773577783890, -0.990379239617108160, 0.138189868194246640,
    -0.990405755399501260,
  0.137999957729862760, -0.990432234767505970, 0.137810042191615130,
    -0.990458677720148620,
  0.137620121586486180, -0.990485084256456980, 0.137430195921458550,
    -0.990511454375460290,
  0.137240265203515700, -0.990537788076188750, 0.137050329439640380,
    -0.990564085357674370,
  0.136860388636816430, -0.990590346218950150, 0.136670442802027230,
    -0.990616570659050620,
  0.136480491942256310, -0.990642758677011570, 0.136290536064488070,
    -0.990668910271869980,
  0.136100575175706200, -0.990695025442664630, 0.135910609282895440,
    -0.990721104188435180,
  0.135720638393040080, -0.990747146508222710, 0.135530662513124620,
    -0.990773152401069780,
  0.135340681650134330, -0.990799121866020370, 0.135150695811053850,
    -0.990825054902119470,
  0.134960705002868830, -0.990850951508413620, 0.134770709232564290,
    -0.990876811683950810,
  0.134580708507126220, -0.990902635427780010, 0.134390702833540240,
    -0.990928422738951990,
  0.134200692218792020, -0.990954173616518500, 0.134010676669868210,
    -0.990979888059532740,
  0.133820656193754690, -0.991005566067049370, 0.133630630797438390,
    -0.991031207638124130,
  0.133440600487905820, -0.991056812771814340, 0.133250565272143570,
    -0.991082381467178640,
  0.133060525157139180, -0.991107913723276780, 0.132870480149879400,
    -0.991133409539170170,
  0.132680430257352130, -0.991158868913921350, 0.132490375486544710,
    -0.991184291846594180,
  0.132300315844444680, -0.991209678336254060, 0.132110251338040470,
    -0.991235028381967420,
  0.131920181974319760, -0.991260341982802440, 0.131730107760271280,
    -0.991285619137828200,
  0.131540028702883280, -0.991310859846115440, 0.131349944809144220,
    -0.991336064106736140,
  0.131159856086043410, -0.991361231918763460, 0.130969762540569380,
    -0.991386363281272280,
  0.130779664179711790, -0.991411458193338540, 0.130589561010459600,
    -0.991436516654039420,
  0.130399453039802740, -0.991461538662453790, 0.130209340274730770,
    -0.991486524217661480,
  0.130019222722233350, -0.991511473318743900, 0.129829100389301010,
    -0.991536385964783880,
  0.129638973282923540, -0.991561262154865290, 0.129448841410091830,
    -0.991586101888073500,
  0.129258704777796270, -0.991610905163495370, 0.129068563393027410,
    -0.991635671980218740,
  0.128878417262776660, -0.991660402337333210, 0.128688266394034690,
    -0.991685096233929530,
  0.128498110793793220, -0.991709753669099530, 0.128307950469043590,
    -0.991734374641936810,
  0.128117785426777150, -0.991758959151536110, 0.127927615673986190,
    -0.991783507196993490,
  0.127737441217662280, -0.991808018777406430, 0.127547262064798050,
    -0.991832493891873780,
  0.127357078222385570, -0.991856932539495360, 0.127166889697417180,
    -0.991881334719373010,
  0.126976696496885980, -0.991905700430609330, 0.126786498627784430,
    -0.991930029672308480,
  0.126596296097105960, -0.991954322443575950, 0.126406088911843320,
    -0.991978578743518580,
  0.126215877078990400, -0.992002798571244520, 0.126025660605540460,
    -0.992026981925863360,
  0.125835439498487020, -0.992051128806485720, 0.125645213764824380,
    -0.992075239212224070,
  0.125454983411546210, -0.992099313142191800, 0.125264748445647110,
    -0.992123350595503720,
  0.125074508874121300, -0.992147351571276090, 0.124884264703963150,
    -0.992171316068626520,
  0.124694015942167770, -0.992195244086673920, 0.124503762595729650,
    -0.992219135624538450,
  0.124313504671644300, -0.992242990681341700, 0.124123242176906760,
    -0.992266809256206580,
  0.123932975118512200, -0.992290591348257370, 0.123742703503456630,
    -0.992314336956619640,
  0.123552427338735370, -0.992338046080420420, 0.123362146631344750,
    -0.992361718718787870,
  0.123171861388280650, -0.992385354870851670, 0.122981571616539080,
    -0.992408954535742850,
  0.122791277323116900, -0.992432517712593550, 0.122600978515010240,
    -0.992456044400537700,
  0.122410675199216280, -0.992479534598709970, 0.122220367382731500,
    -0.992502988306246950,
  0.122030055072553410, -0.992526405522286100, 0.121839738275679020,
    -0.992549786245966570,
  0.121649416999105540, -0.992573130476428810, 0.121459091249830950,
    -0.992596438212814290,
  0.121268761034852550, -0.992619709454266140, 0.121078426361168710,
    -0.992642944199928820,
  0.120888087235777220, -0.992666142448948020, 0.120697743665676120,
    -0.992689304200470750,
  0.120507395657864240, -0.992712429453645460, 0.120317043219339670,
    -0.992735518207621850,
  0.120126686357101580, -0.992758570461551140, 0.119936325078148620,
    -0.992781586214585570,
  0.119745959389479630, -0.992804565465879140, 0.119555589298094230,
    -0.992827508214586760,
  0.119365214810991350, -0.992850414459865100, 0.119174835935170960,
    -0.992873284200871730,
  0.118984452677632520, -0.992896117436765980, 0.118794065045375670,
    -0.992918914166708300,
  0.118603673045400840, -0.992941674389860470, 0.118413276684707770,
    -0.992964398105385610,
  0.118222875970297250, -0.992987085312448390, 0.118032470909169300,
    -0.993009736010214580,
  0.117842061508325020, -0.993032350197851410, 0.117651647774765000,
    -0.993054927874527320,
  0.117461229715489990, -0.993077469039412300, 0.117270807337501560,
    -0.993099973691677570,
  0.117080380647800550, -0.993122441830495580, 0.116889949653388850,
    -0.993144873455040430,
  0.116699514361267840, -0.993167268564487230, 0.116509074778439050,
    -0.993189627158012620,
  0.116318630911904880, -0.993211949234794500, 0.116128182768666920,
    -0.993234234794012290,
  0.115937730355727850, -0.993256483834846440, 0.115747273680089870,
    -0.993278696356479030,
  0.115556812748755290, -0.993300872358093280, 0.115366347568727250,
    -0.993323011838873950,
  0.115175878147008180, -0.993345114798006910, 0.114985404490601530,
    -0.993367181234679600,
  0.114794926606510250, -0.993389211148080650, 0.114604444501737460,
    -0.993411204537400060,
  0.114413958183287050, -0.993433161401829360, 0.114223467658162260,
    -0.993455081740560960,
  0.114032972933367300, -0.993476965552789190, 0.113842474015905660,
    -0.993498812837709360,
  0.113651970912781920, -0.993520623594518090, 0.113461463631000080,
    -0.993542397822413600,
  0.113270952177564360, -0.993564135520595300, 0.113080436559479720,
    -0.993585836688263950,
  0.112889916783750470, -0.993607501324621610, 0.112699392857381910,
    -0.993629129428871720,
  0.112508864787378830, -0.993650721000219120, 0.112318332580746190,
    -0.993672276037870010,
  0.112127796244489750, -0.993693794541031680, 0.111937255785614560,
    -0.993715276508913230,
  0.111746711211126660, -0.993736721940724600, 0.111556162528031630,
    -0.993758130835677430,
  0.111365609743335190, -0.993779503192984580, 0.111175052864043830,
    -0.993800839011860120,
  0.110984491897163380, -0.993822138291519660, 0.110793926849700630,
    -0.993843401031180180,
  0.110603357728661910, -0.993864627230059750, 0.110412784541053660,
    -0.993885816887378090,
  0.110222207293883180, -0.993906970002356060, 0.110031625994157000,
    -0.993928086574215830,
  0.109841040648882680, -0.993949166602181130, 0.109650451265067080,
    -0.993970210085476920,
  0.109459857849718030, -0.993991217023329380, 0.109269260409842920,
    -0.994012187414966220,
  0.109078658952449240, -0.994033121259616400, 0.108888053484545310,
    -0.994054018556510210,
  0.108697444013138670, -0.994074879304879370, 0.108506830545237980,
    -0.994095703503956930,
  0.108316213087851300, -0.994116491152977070, 0.108125591647986880,
    -0.994137242251175720,
  0.107934966232653760, -0.994157956797789730, 0.107744336848860260,
    -0.994178634792057590,
  0.107553703503615710, -0.994199276233218910, 0.107363066203928920,
    -0.994219881120514850,
  0.107172424956808870, -0.994240449453187900, 0.106981779769265340,
    -0.994260981230481790,
  0.106791130648307380, -0.994281476451641550, 0.106600477600945030,
    -0.994301935115913580,
  0.106409820634187840, -0.994322357222545810, 0.106219159755045520,
    -0.994342742770787270,
  0.106028494970528530, -0.994363091759888570, 0.105837826287646670,
    -0.994383404189101430,
  0.105647153713410700, -0.994403680057679100, 0.105456477254830660,
    -0.994423919364875950,
  0.105265796918917650, -0.994444122109948040, 0.105075112712682180,
    -0.994464288292152390,
  0.104884424643134970, -0.994484417910747600, 0.104693732717287500,
    -0.994504510964993590,
  0.104503036942150550, -0.994524567454151740, 0.104312337324735870,
    -0.994544587377484300,
  0.104121633872054730, -0.994564570734255420, 0.103930926591118540,
    -0.994584517523730340,
  0.103740215488939480, -0.994604427745175660, 0.103549500572529040,
    -0.994624301397859400,
  0.103358781848899700, -0.994644138481050710, 0.103168059325063390,
    -0.994663938994020280,
  0.102977333008032250, -0.994683702936040250, 0.102786602904819150,
    -0.994703430306383860,
  0.102595869022436280, -0.994723121104325700, 0.102405131367896790,
    -0.994742775329142010,
  0.102214389948213370, -0.994762392980109930, 0.102023644770398800,
    -0.994781974056508260,
  0.101832895841466670, -0.994801518557617110, 0.101642143168429830,
    -0.994821026482717860,
  0.101451386758302160, -0.994840497831093180, 0.101260626618096800,
    -0.994859932602027320,
  0.101069862754827880, -0.994879330794805620, 0.100879095175509010,
    -0.994898692408714870,
  0.100688323887153970, -0.994918017443043200, 0.100497548896777310,
    -0.994937305897080070,
  0.100306770211392820, -0.994956557770116380, 0.100115987838015370,
    -0.994975773061444140,
  0.099925201783659226, -0.994994951770357020, 0.099734412055338839,
    -0.995014093896149700,
  0.099543618660069444, -0.995033199438118630, 0.099352821604865513,
    -0.995052268395561160,
  0.099162020896742573, -0.995071300767776170, 0.098971216542715582,
    -0.995090296554063890,
  0.098780408549799664, -0.995109255753726110, 0.098589596925010708,
    -0.995128178366065490,
  0.098398781675363881, -0.995147064390386470, 0.098207962807875346,
    -0.995165913825994620,
  0.098017140329560770, -0.995184726672196820, 0.097826314247435903,
    -0.995203502928301510,
  0.097635484568517339, -0.995222242593618240, 0.097444651299820870,
    -0.995240945667458130,
  0.097253814448363354, -0.995259612149133390, 0.097062974021160875,
    -0.995278242037957670,
  0.096872130025230527, -0.995296835333246090, 0.096681282467588864,
    -0.995315392034315070,
  0.096490431355252607, -0.995333912140482280, 0.096299576695239225,
    -0.995352395651066810,
  0.096108718494565468, -0.995370842565388990, 0.095917856760249096,
    -0.995389252882770690,
  0.095726991499307315, -0.995407626602534900, 0.095536122718757485,
    -0.995425963724006160,
  0.095345250425617742, -0.995444264246510340, 0.095154374626905472,
    -0.995462528169374420,
  0.094963495329639061, -0.995480755491926940, 0.094772612540836410,
    -0.995498946213497770,
  0.094581726267515473, -0.995517100333418110, 0.094390836516695067,
    -0.995535217851020390,
  0.094199943295393190, -0.995553298765638470, 0.094009046610628907,
    -0.995571343076607770,
  0.093818146469420494, -0.995589350783264600, 0.093627242878787237,
    -0.995607321884947050,
  0.093436335845747912, -0.995625256380994310, 0.093245425377321389,
    -0.995643154270746900,
  0.093054511480527333, -0.995661015553546910, 0.092863594162384697,
    -0.995678840228737540,
  0.092672673429913366, -0.995696628295663520, 0.092481749290132753,
    -0.995714379753670610,
  0.092290821750062355, -0.995732094602106430, 0.092099890816722485,
    -0.995749772840319400,
  0.091908956497132696, -0.995767414467659820, 0.091718018798313525,
    -0.995785019483478750,
  0.091527077727284981, -0.995802587887129160, 0.091336133291067212,
    -0.995820119677964910,
  0.091145185496681130, -0.995837614855341610, 0.090954234351146898,
    -0.995855073418615790,
  0.090763279861485704, -0.995872495367145730, 0.090572322034718156,
    -0.995889880700290720,
  0.090381360877865011, -0.995907229417411720, 0.090190396397947820,
    -0.995924541517870690,
  0.089999428601987341, -0.995941817001031350, 0.089808457497005362,
    -0.995959055866258320,
  0.089617483090022917, -0.995976258112917790, 0.089426505388062016,
    -0.995993423740377360,
  0.089235524398144139, -0.996010552748005870, 0.089044540127290905,
    -0.996027645135173610,
  0.088853552582524684, -0.996044700901251970, 0.088662561770867121,
    -0.996061720045614000,
  0.088471567699340822, -0.996078702567633980, 0.088280570374967879,
    -0.996095648466687300,
  0.088089569804770507, -0.996112557742151130, 0.087898565995771685,
    -0.996129430393403740,
  0.087707558954993645, -0.996146266419824620, 0.087516548689459586,
    -0.996163065820794950,
  0.087325535206192226, -0.996179828595696870, 0.087134518512214321,
    -0.996196554743914220,
  0.086943498614549489, -0.996213244264832040, 0.086752475520220515,
    -0.996229897157836500,
  0.086561449236251239, -0.996246513422315520, 0.086370419769664919,
    -0.996263093057658030,
  0.086179387127484922, -0.996279636063254650, 0.085988351316735448,
    -0.996296142438496850,
  0.085797312344439880, -0.996312612182778000, 0.085606270217622613,
    -0.996329045295492380,
  0.085415224943307277, -0.996345441776035900, 0.085224176528518519,
    -0.996361801623805720,
  0.085033124980280414, -0.996378124838200210, 0.084842070305617148,
    -0.996394411418619290,
  0.084651012511553700, -0.996410661364464100, 0.084459951605114297,
    -0.996426874675137240,
  0.084268887593324127, -0.996443051350042630, 0.084077820483207846,
    -0.996459191388585410,
  0.083886750281790226, -0.996475294790172160, 0.083695676996096827,
    -0.996491361554210920,
  0.083504600633152404, -0.996507391680110820, 0.083313521199982740,
    -0.996523385167282450,
  0.083122438703613077, -0.996539342015137940, 0.082931353151068726,
    -0.996555262223090540,
  0.082740264549375803, -0.996571145790554840, 0.082549172905559659,
    -0.996586992716946950,
  0.082358078226646619, -0.996602803001684130, 0.082166980519662466,
    -0.996618576644185070,
  0.081975879791633108, -0.996634313643869900, 0.081784776049585201,
    -0.996650014000160070,
  0.081593669300544638, -0.996665677712478160, 0.081402559551538328,
    -0.996681304780248300,
  0.081211446809592386, -0.996696895202896060, 0.081020331081733912,
    -0.996712448979848010,
  0.080829212374989468, -0.996727966110532490, 0.080638090696385709,
    -0.996743446594378860,
  0.080446966052950097, -0.996758890430818000, 0.080255838451709291,
    -0.996774297619282050,
  0.080064707899690932, -0.996789668159204560, 0.079873574403922148,
    -0.996805002050020320,
  0.079682437971430126, -0.996820299291165670, 0.079491298609242866,
    -0.996835559882078170,
  0.079300156324387569, -0.996850783822196610, 0.079109011123892431,
    -0.996865971110961310,
  0.078917863014785095, -0.996881121747813850, 0.078726712004093313,
    -0.996896235732197210,
  0.078535558098845590, -0.996911313063555740, 0.078344401306069678,
    -0.996926353741335090,
  0.078153241632794315, -0.996941357764982160, 0.077962079086047645,
    -0.996956325133945280,
  0.077770913672857989, -0.996971255847674320, 0.077579745400254363,
    -0.996986149905620180,
  0.077388574275265049, -0.997001007307235290, 0.077197400304919297,
    -0.997015828051973310,
  0.077006223496245585, -0.997030612139289450, 0.076815043856273399,
    -0.997045359568640040,
  0.076623861392031617, -0.997060070339482960, 0.076432676110549283,
    -0.997074744451277310,
  0.076241488018856149, -0.997089381903483400, 0.076050297123981231,
    -0.997103982695563330,
  0.075859103432954503, -0.997118546826979980, 0.075667906952805383,
    -0.997133074297198110,
  0.075476707690563416, -0.997147565105683480, 0.075285505653258880,
    -0.997162019251903290,
  0.075094300847921291, -0.997176436735326190, 0.074903093281581137,
    -0.997190817555421940,
  0.074711882961268378, -0.997205161711661850, 0.074520669894013014,
    -0.997219469203518670,
  0.074329454086845867, -0.997233740030466160, 0.074138235546796952,
    -0.997247974191979860,
  0.073947014280897269, -0.997262171687536170, 0.073755790296177265,
    -0.997276332516613180,
  0.073564563599667454, -0.997290456678690210, 0.073373334198399157,
    -0.997304544173247990,
  0.073182102099402888, -0.997318594999768600, 0.072990867309710133,
    -0.997332609157735470,
  0.072799629836351618, -0.997346586646633230, 0.072608389686359048,
    -0.997360527465947940,
  0.072417146866763538, -0.997374431615167030, 0.072225901384596336,
    -0.997388299093779460,
  0.072034653246889416, -0.997402129901275300, 0.071843402460674000,
    -0.997415924037145960,
  0.071652149032982254, -0.997429681500884180, 0.071460892970845832,
    -0.997443402291984360,
  0.071269634281296415, -0.997457086409941910, 0.071078372971366502,
    -0.997470733854253670,
  0.070887109048087787, -0.997484344624417930, 0.070695842518492924,
    -0.997497918719934210,
  0.070504573389614009, -0.997511456140303450, 0.070313301668483263,
    -0.997524956885027960,
  0.070122027362133646, -0.997538420953611230, 0.069930750477597295,
    -0.997551848345558430,
  0.069739471021907376, -0.997565239060375750, 0.069548189002096472,
    -0.997578593097570800,
  0.069356904425197236, -0.997591910456652630, 0.069165617298243109,
    -0.997605191137131640,
  0.068974327628266732, -0.997618435138519550, 0.068783035422301728,
    -0.997631642460329320,
  0.068591740687380900, -0.997644813102075420, 0.068400443430538069,
    -0.997657947063273710,
  0.068209143658806454, -0.997671044343441000, 0.068017841379219388,
    -0.997684104942096030,
  0.067826536598810966, -0.997697128858758500, 0.067635229324614451,
    -0.997710116092949570,
  0.067443919563664106, -0.997723066644191640, 0.067252607322993652,
    -0.997735980512008620,
  0.067061292609636836, -0.997748857695925690, 0.066869975430628226,
    -0.997761698195469560,
  0.066678655793001543, -0.997774502010167820, 0.066487333703791507,
    -0.997787269139549960,
  0.066296009170032283, -0.997799999583146470, 0.066104682198758091,
    -0.997812693340489280,
  0.065913352797003930, -0.997825350411111640, 0.065722020971803977,
    -0.997837970794548280,
  0.065530686730193397, -0.997850554490335110, 0.065339350079206798,
    -0.997863101498009500,
  0.065148011025878860, -0.997875611817110150, 0.064956669577245010,
    -0.997888085447177110,
  0.064765325740339871, -0.997900522387751620, 0.064573979522199065,
    -0.997912922638376610,
  0.064382630929857410, -0.997925286198596000, 0.064191279970350679,
    -0.997937613067955250,
  0.063999926650714078, -0.997949903246001190, 0.063808570977982898,
    -0.997962156732281950,
  0.063617212959193190, -0.997974373526346990, 0.063425852601380200,
    -0.997986553627747020,
  0.063234489911580136, -0.997998697036034390, 0.063043124896828631,
    -0.998010803750762450,
  0.062851757564161420, -0.998022873771486240, 0.062660387920614985,
    -0.998034907097761770,
  0.062469015973224969, -0.998046903729146840, 0.062277641729028041,
    -0.998058863665200250,
  0.062086265195060247, -0.998070786905482340, 0.061894886378357744,
    -0.998082673449554590,
  0.061703505285957416, -0.998094523296980010, 0.061512121924895365,
    -0.998106336447323050,
  0.061320736302208648, -0.998118112900149180, 0.061129348424933755,
    -0.998129852655025520,
  0.060937958300107238, -0.998141555711520520, 0.060746565934766412,
    -0.998153222069203650,
  0.060555171335947781, -0.998164851727646240, 0.060363774510688827,
    -0.998176444686420530,
  0.060172375466026218, -0.998188000945100300, 0.059980974208997596,
    -0.998199520503260660,
  0.059789570746640007, -0.998211003360478190, 0.059598165085990598,
    -0.998222449516330550,
  0.059406757234087247, -0.998233858970396850, 0.059215347197967026,
    -0.998245231722257880,
  0.059023934984667986, -0.998256567771495180, 0.058832520601227581,
    -0.998267867117692110,
  0.058641104054683348, -0.998279129760433200, 0.058449685352073573,
    -0.998290355699304350,
  0.058258264500435732, -0.998301544933892890, 0.058066841506808263,
    -0.998312697463787260,
  0.057875416378229017, -0.998323813288577560, 0.057683989121735932,
    -0.998334892407855000,
  0.057492559744367684, -0.998345934821212370, 0.057301128253162144,
    -0.998356940528243420,
  0.057109694655158132, -0.998367909528543820, 0.056918258957393907,
    -0.998378841821709990,
  0.056726821166907783, -0.998389737407340160, 0.056535381290738825,
    -0.998400596285033640,
  0.056343939335925283, -0.998411418454391300, 0.056152495309506383,
    -0.998422203915015020,
  0.055961049218520520, -0.998432952666508440, 0.055769601070007072,
    -0.998443664708476340,
  0.055578150871004817, -0.998454340040524800, 0.055386698628552604,
    -0.998464978662261250,
  0.055195244349690031, -0.998475580573294770, 0.055003788041455885,
    -0.998486145773235360,
  0.054812329710889909, -0.998496674261694640, 0.054620869365031251,
    -0.998507166038285490,
  0.054429407010919147, -0.998517621102622210, 0.054237942655593556,
    -0.998528039454320230,
  0.054046476306093640, -0.998538421092996730, 0.053855007969459509,
    -0.998548766018269920,
  0.053663537652730679, -0.998559074229759310, 0.053472065362946755,
    -0.998569345727086110,
  0.053280591107148056, -0.998579580509872500, 0.053089114892374119,
    -0.998589778577742230,
  0.052897636725665401, -0.998599939930320370, 0.052706156614061798,
    -0.998610064567233340,
  0.052514674564603257, -0.998620152488108870, 0.052323190584330471,
    -0.998630203692576050,
  0.052131704680283317, -0.998640218180265270, 0.051940216859502626,
    -0.998650195950808280,
  0.051748727129028414, -0.998660137003838490, 0.051557235495901653,
    -0.998670041338990070,
  0.051365741967162731, -0.998679908955899090, 0.051174246549852087,
    -0.998689739854202620,
  0.050982749251010900, -0.998699534033539280, 0.050791250077679546,
    -0.998709291493549030,
  0.050599749036899337, -0.998719012233872940, 0.050408246135710995,
    -0.998728696254153720,
  0.050216741381155325, -0.998738343554035230, 0.050025234780273840,
    -0.998747954133162860,
  0.049833726340107257, -0.998757527991183340, 0.049642216067697226,
    -0.998767065127744380,
  0.049450703970084824, -0.998776565542495610, 0.049259190054311168,
    -0.998786029235087640,
  0.049067674327418126, -0.998795456205172410, 0.048876156796446746,
    -0.998804846452403420,
  0.048684637468439020, -0.998814199976435390, 0.048493116350436342,
    -0.998823516776924380,
  0.048301593449480172, -0.998832796853527990, 0.048110068772612716,
    -0.998842040205904840,
  0.047918542326875327, -0.998851246833715180, 0.047727014119310344,
    -0.998860416736620520,
  0.047535484156959261, -0.998869549914283560, 0.047343952446864526,
    -0.998878646366368690,
  0.047152418996068000, -0.998887706092541290, 0.046960883811611599,
    -0.998896729092468410,
  0.046769346900537960, -0.998905715365818290, 0.046577808269888908,
    -0.998914664912260440,
  0.046386267926707213, -0.998923577731465780, 0.046194725878035046,
    -0.998932453823106690,
  0.046003182130914644, -0.998941293186856870, 0.045811636692388955,
    -0.998950095822391250,
  0.045620089569500123, -0.998958861729386080, 0.045428540769291224,
    -0.998967590907519300,
  0.045236990298804750, -0.998976283356469820, 0.045045438165083225,
    -0.998984939075918010,
  0.044853884375169933, -0.998993558065545680, 0.044662328936107311,
    -0.999002140325035980,
  0.044470771854938744, -0.999010685854073380, 0.044279213138707016,
    -0.999019194652343460,
  0.044087652794454979, -0.999027666719533690, 0.043896090829226200,
    -0.999036102055332330,
  0.043704527250063421, -0.999044500659429290, 0.043512962064010327,
    -0.999052862531515930,
  0.043321395278109784, -0.999061187671284600, 0.043129826899405595,
    -0.999069476078429330,
  0.042938256934940959, -0.999077727752645360, 0.042746685391759139,
    -0.999085942693629270,
  0.042555112276904117, -0.999094120901079070, 0.042363537597419038,
    -0.999102262374694130,
  0.042171961360348002, -0.999110367114174890, 0.041980383572734502,
    -0.999118435119223490,
  0.041788804241622082, -0.999126466389543390, 0.041597223374055005,
    -0.999134460924839150,
  0.041405640977076712, -0.999142418724816910, 0.041214057057731589,
    -0.999150339789184110,
  0.041022471623063397, -0.999158224117649430, 0.040830884680115968,
    -0.999166071709923000,
  0.040639296235933854, -0.999173882565716380, 0.040447706297560768,
    -0.999181656684742350,
  0.040256114872041358, -0.999189394066714920, 0.040064521966419686,
    -0.999197094711349880,
  0.039872927587739845, -0.999204758618363890, 0.039681331743046659,
    -0.999212385787475290,
  0.039489734439384118, -0.999219976218403530, 0.039298135683797149,
    -0.999227529910869610,
  0.039106535483329839, -0.999235046864595850, 0.038914933845027241,
    -0.999242527079305830,
  0.038723330775933762, -0.999249970554724420, 0.038531726283093877,
    -0.999257377290578060,
  0.038340120373552791, -0.999264747286594420, 0.038148513054354856,
    -0.999272080542502610,
  0.037956904332545366, -0.999279377058032710, 0.037765294215169005,
    -0.999286636832916740,
  0.037573682709270514, -0.999293859866887790, 0.037382069821895340,
    -0.999301046159680070,
  0.037190455560088091, -0.999308195711029470, 0.036998839930894332,
    -0.999315308520673070,
  0.036807222941358991, -0.999322384588349540, 0.036615604598527057,
    -0.999329423913798420,
  0.036423984909444228, -0.999336426496761240, 0.036232363881155374,
    -0.999343392336980220,
  0.036040741520706299, -0.999350321434199440, 0.035849117835142184,
    -0.999357213788164000,
  0.035657492831508264, -0.999364069398620550, 0.035465866516850478,
    -0.999370888265317060,
  0.035274238898213947, -0.999377670388002850, 0.035082609982644702,
    -0.999384415766428560,
  0.034890979777187955, -0.999391124400346050, 0.034699348288889847,
    -0.999397796289508640,
  0.034507715524795889, -0.999404431433671300, 0.034316081491951658,
    -0.999411029832589780,
  0.034124446197403423, -0.999417591486021720, 0.033932809648196623,
    -0.999424116393725640,
  0.033741171851377642, -0.999430604555461730, 0.033549532813992221,
    -0.999437055970991530,
  0.033357892543086159, -0.999443470640077770, 0.033166251045705968,
    -0.999449848562484530,
  0.032974608328897315, -0.999456189737977340, 0.032782964399706793,
    -0.999462494166323160,
  0.032591319265180385, -0.999468761847290050, 0.032399672932364114,
    -0.999474992780647780,
  0.032208025408304704, -0.999481186966166950, 0.032016376700048046,
    -0.999487344403620080,
  0.031824726814640963, -0.999493465092780590, 0.031633075759129645,
    -0.999499549033423640,
  0.031441423540560343, -0.999505596225325310, 0.031249770165979990,
    -0.999511606668263440,
  0.031058115642434700, -0.999517580362016990, 0.030866459976971503,
    -0.999523517306366350,
  0.030674803176636581, -0.999529417501093140, 0.030483145248477058,
    -0.999535280945980540,
  0.030291486199539423, -0.999541107640812940, 0.030099826036870208,
    -0.999546897585375960,
  0.029908164767516655, -0.999552650779456990, 0.029716502398525156,
    -0.999558367222844300,
  0.029524838936943035, -0.999564046915327740, 0.029333174389816984,
    -0.999569689856698580,
  0.029141508764193740, -0.999575296046749220, 0.028949842067120746,
    -0.999580865485273700,
  0.028758174305644590, -0.999586398172067070, 0.028566505486812797,
    -0.999591894106925950,
  0.028374835617672258, -0.999597353289648380, 0.028183164705269902,
    -0.999602775720033530,
  0.027991492756653365, -0.999608161397882110, 0.027799819778869434,
    -0.999613510322995950,
  0.027608145778965820, -0.999618822495178640, 0.027416470763989606,
    -0.999624097914234570,
  0.027224794740987910, -0.999629336579970110, 0.027033117717008563,
    -0.999634538492192300,
  0.026841439699098527, -0.999639703650710200, 0.026649760694305708,
    -0.999644832055333610,
  0.026458080709677145, -0.999649923705874240, 0.026266399752260809,
    -0.999654978602144690,
  0.026074717829104040, -0.999659996743959220, 0.025883034947254208,
    -0.999664978131133310,
  0.025691351113759395, -0.999669922763483760, 0.025499666335666818,
    -0.999674830640828740,
  0.025307980620024630, -0.999679701762987930, 0.025116293973880335,
    -0.999684536129782140,
  0.024924606404281485, -0.999689333741033640, 0.024732917918276334,
    -0.999694094596566000,
  0.024541228522912264, -0.999698818696204250, 0.024349538225237600,
    -0.999703506039774650,
  0.024157847032300020, -0.999708156627104880, 0.023966154951147241,
    -0.999712770458023870,
  0.023774461988827676, -0.999717347532362190, 0.023582768152388880,
    -0.999721887849951310,
  0.023391073448879338, -0.999726391410624470, 0.023199377885346890,
    -0.999730858214216030,
  0.023007681468839410, -0.999735288260561680, 0.022815984206405477,
    -0.999739681549498660,
  0.022624286105092803, -0.999744038080865430, 0.022432587171950024,
    -0.999748357854501780,
  0.022240887414024919, -0.999752640870248840, 0.022049186838366180,
    -0.999756887127949080,
  0.021857485452021874, -0.999761096627446610, 0.021665783262040089,
    -0.999765269368586450,
  0.021474080275469605, -0.999769405351215280, 0.021282376499358355,
    -0.999773504575180990,
  0.021090671940755180, -0.999777567040332940, 0.020898966606708289,
    -0.999781592746521670,
  0.020707260504265912, -0.999785581693599210, 0.020515553640476986,
    -0.999789533881418780,
  0.020323846022389572, -0.999793449309835270, 0.020132137657052664,
    -0.999797327978704690,
  0.019940428551514598, -0.999801169887884260, 0.019748718712823757,
    -0.999804975037232870,
  0.019557008148029204, -0.999808743426610520, 0.019365296864179146,
    -0.999812475055878780,
  0.019173584868322699, -0.999816169924900410, 0.018981872167508348,
    -0.999819828033539420,
  0.018790158768784596, -0.999823449381661570, 0.018598444679200642,
    -0.999827033969133420,
  0.018406729905804820, -0.999830581795823400, 0.018215014455646376,
    -0.999834092861600960,
  0.018023298335773701, -0.999837567166337090, 0.017831581553236088,
    -0.999841004709904000,
  0.017639864115082195, -0.999844405492175240, 0.017448146028360704,
    -0.999847769513025900,
  0.017256427300120978, -0.999851096772332190, 0.017064707937411529,
    -0.999854387269971890,
  0.016872987947281773, -0.999857641005823860, 0.016681267336780482,
    -0.999860857979768540,
  0.016489546112956454, -0.999864038191687680, 0.016297824282859176,
    -0.999867181641464380,
  0.016106101853537263, -0.999870288328982950, 0.015914378832040249,
    -0.999873358254129260,
  0.015722655225417017, -0.999876391416790410, 0.015530931040716478,
    -0.999879387816854930,
  0.015339206284988220, -0.999882347454212560, 0.015147480965280975,
    -0.999885270328754520,
  0.014955755088644378, -0.999888156440373320, 0.014764028662127416,
    -0.999891005788962950,
  0.014572301692779104, -0.999893818374418490, 0.014380574187649138,
    -0.999896594196636680,
  0.014188846153786343, -0.999899333255515390, 0.013997117598240459,
    -0.999902035550953920,
  0.013805388528060349, -0.999904701082852900, 0.013613658950295789,
    -0.999907329851114300,
  0.013421928871995907, -0.999909921855641540, 0.013230198300209845,
    -0.999912477096339240,
  0.013038467241987433, -0.999914995573113470, 0.012846735704377631,
    -0.999917477285871770,
  0.012655003694430301, -0.999919922234522750, 0.012463271219194662,
    -0.999922330418976490,
  0.012271538285719944, -0.999924701839144500, 0.012079804901056066,
    -0.999927036494939640,
  0.011888071072252072, -0.999929334386276070, 0.011696336806357907,
    -0.999931595513069200,
  0.011504602110422875, -0.999933819875236000, 0.011312866991496287,
    -0.999936007472694620,
  0.011121131456628141, -0.999938158305364590, 0.010929395512867561,
    -0.999940272373166960,
  0.010737659167264572, -0.999942349676023910, 0.010545922426868548,
    -0.999944390213859060,
  0.010354185298728884, -0.999946393986597460, 0.010162447789895645,
    -0.999948360994165400,
  0.009970709907418029, -0.999950291236490480, 0.009778971658346134,
    -0.999952184713501780,
  0.009587233049729183, -0.999954041425129780, 0.009395494088617302,
    -0.999955861371306100,
  0.009203754782059960, -0.999957644551963900, 0.009012015137106642,
    -0.999959390967037450,
  0.008820275160807512, -0.999961100616462820, 0.008628534860211857,
    -0.999962773500176930,
  0.008436794242369860, -0.999964409618118280, 0.008245053314331058,
    -0.999966008970226920,
  0.008053312083144991, -0.999967571556443780, 0.007861570555861883,
    -0.999969097376711580,
  0.007669828739531077, -0.999970586430974140, 0.007478086641202815,
    -0.999972038719176730,
  0.007286344267926684, -0.999973454241265940, 0.007094601626752279,
    -0.999974832997189810,
  0.006902858724729877, -0.999976174986897610, 0.006711115568908869,
    -0.999977480210339940,
  0.006519372166339549, -0.999978748667468830, 0.006327628524071549,
    -0.999979980358237650,
  0.006135884649154515, -0.999981175282601110, 0.005944140548638765,
    -0.999982333440515350,
  0.005752396229573737, -0.999983454831937730, 0.005560651699009764,
    -0.999984539456826970,
  0.005368906963996303, -0.999985587315143200, 0.005177162031583702,
    -0.999986598406848000,
  0.004985416908821652, -0.999987572731904080, 0.004793671602759852,
    -0.999988510290275690,
  0.004601926120448672, -0.999989411081928400, 0.004410180468937601,
    -0.999990275106828920,
  0.004218434655277024, -0.999991102364945590, 0.004026688686516664,
    -0.999991892856248010,
  0.003834942569706248, -0.999992646580707190, 0.003643196311896179,
    -0.999993363538295150,
  0.003451449920135975, -0.999994043728985820, 0.003259703401476044,
    -0.999994687152754080,
  0.003067956762966138, -0.999995293809576190, 0.002876210011656010,
    -0.999995863699429940,
  0.002684463154596083, -0.999996396822294350, 0.002492716198835898,
    -0.999996893178149880,
  0.002300969151425887, -0.999997352766978210, 0.002109222019415816,
    -0.999997775588762350,
  0.001917474809855460, -0.999998161643486980, 0.001725727529795258,
    -0.999998510931137790,
  0.001533980186284766, -0.999998823451701880, 0.001342232786374430,
    -0.999999099205167830,
  0.001150485337113809, -0.999999338191525530, 0.000958737845553352,
    -0.999999540410766110,
  0.000766990318742846, -0.999999705862882230, 0.000575242763732077,
    -0.999999834547867670,
  0.000383495187571497, -0.999999926465717890, 0.000191747597310674,
    -0.999999981616429330,

};













 
static const float32_t cos_factors_128[128] = {
  0.999981175282601110f, 0.999830581795823400f, 0.999529417501093140f,
  0.999077727752645360f,
  0.998475580573294770f, 0.997723066644191640f, 0.996820299291165670f,
  0.995767414467659820f,
  0.994564570734255420f, 0.993211949234794500f, 0.991709753669099530f,
  0.990058210262297120f,
  0.988257567730749460f, 0.986308097244598670f, 0.984210092386929030f,
  0.981963869109555240f,
  0.979569765685440520f, 0.977028142657754390f, 0.974339382785575860f,
  0.971503890986251780f,
  0.968522094274417380f, 0.965394441697689400f, 0.962121404269041580f,
  0.958703474895871600f,
  0.955141168305770780f, 0.951435020969008340f, 0.947585591017741090f,
  0.943593458161960390f,
  0.939459223602189920f, 0.935183509938947610f, 0.930766961078983710f,
  0.926210242138311380f,
  0.921514039342042010f, 0.916679059921042700f, 0.911706032005429880f,
  0.906595704514915330f,
  0.901348847046022030f, 0.895966249756185220f, 0.890448723244757880f,
  0.884797098430937790f,
  0.879012226428633530f, 0.873094978418290090f, 0.867046245515692650f,
  0.860866938637767310f,
  0.854557988365400530f, 0.848120344803297230f, 0.841554977436898440f,
  0.834862874986380010f,
  0.828045045257755800f, 0.821102514991104650f, 0.814036329705948410f,
  0.806847553543799330f,
  0.799537269107905010f, 0.792106577300212390f, 0.784556597155575240f,
  0.776888465673232440f,
  0.769103337645579700f, 0.761202385484261780f, 0.753186799043612520f,
  0.745057785441466060f,
  0.736816568877369900f, 0.728464390448225200f, 0.720002507961381650f,
  0.711432195745216430f,
  0.702754744457225300f, 0.693971460889654000f, 0.685083667772700360f,
  0.676092703575316030f,
  0.666999922303637470f, 0.657806693297078640f, 0.648514401022112550f,
  0.639124444863775730f,
  0.629638238914927100f, 0.620057211763289210f, 0.610382806276309480f,
  0.600616479383868970f,
  0.590759701858874280f, 0.580813958095764530f, 0.570780745886967370f,
  0.560661576197336030f,
  0.550457972936604810f, 0.540171472729892970f, 0.529803624686294830f,
  0.519355990165589530f,
  0.508830142543106990f, 0.498227666972781870f, 0.487550160148436050f,
  0.476799230063322250f,
  0.465976495767966130f, 0.455083587126343840f, 0.444122144570429260f,
  0.433093818853152010f,
  0.422000270799799790f, 0.410843171057903910f, 0.399624199845646790f,
  0.388345046698826300f,
  0.377007410216418310f, 0.365612997804773960f, 0.354163525420490510f,
  0.342660717311994380f,
  0.331106305759876430f, 0.319502030816015750f, 0.307849640041534980f,
  0.296150888243623960f,
  0.284407537211271820f, 0.272621355449948980f, 0.260794117915275570f,
  0.248927605745720260f,
  0.237023605994367340f, 0.225083911359792780f, 0.213110319916091360f,
  0.201104634842091960f,
  0.189068664149806280f, 0.177004220412148860f, 0.164913120489970090f,
  0.152797185258443410f,
  0.140658239332849240f, 0.128498110793793220f, 0.116318630911904880f,
  0.104121633872054730f,
  0.091908956497132696f, 0.079682437971430126f, 0.067443919563664106f,
  0.055195244349690031f,
  0.042938256934940959f, 0.030674803176636581f, 0.018406729905804820f,
  0.006135884649154515f
};

static const float32_t cos_factors_512[512] = {
  0.999998823451701880f, 0.999989411081928400f, 0.999970586430974140f,
  0.999942349676023910f,
  0.999904701082852900f, 0.999857641005823860f, 0.999801169887884260f,
  0.999735288260561680f,
  0.999659996743959220f, 0.999575296046749220f, 0.999481186966166950f,
  0.999377670388002850f,
  0.999264747286594420f, 0.999142418724816910f, 0.999010685854073380f,
  0.998869549914283560f,
  0.998719012233872940f, 0.998559074229759310f, 0.998389737407340160f,
  0.998211003360478190f,
  0.998022873771486240f, 0.997825350411111640f, 0.997618435138519550f,
  0.997402129901275300f,
  0.997176436735326190f, 0.996941357764982160f, 0.996696895202896060f,
  0.996443051350042630f,
  0.996179828595696980f, 0.995907229417411720f, 0.995625256380994310f,
  0.995333912140482280f,
  0.995033199438118630f, 0.994723121104325700f, 0.994403680057679100f,
  0.994074879304879370f,
  0.993736721940724600f, 0.993389211148080650f, 0.993032350197851410f,
  0.992666142448948020f,
  0.992290591348257370f, 0.991905700430609330f, 0.991511473318743900f,
  0.991107913723276890f,
  0.990695025442664630f, 0.990272812363169110f, 0.989841278458820530f,
  0.989400427791380380f,
  0.988950264510302990f, 0.988490792852696590f, 0.988022017143283530f,
  0.987543941794359230f,
  0.987056571305750970f, 0.986559910264775410f, 0.986053963346195440f,
  0.985538735312176060f,
  0.985014231012239840f, 0.984480455383220930f, 0.983937413449218920f,
  0.983385110321551180f,
  0.982823551198705240f, 0.982252741366289370f, 0.981672686196983110f,
  0.981083391150486710f,
  0.980484861773469380f, 0.979877103699517640f, 0.979260122649082020f,
  0.978633924429423210f,
  0.977998514934557140f, 0.977353900145199960f, 0.976700086128711840f,
  0.976037079039039020f,
  0.975364885116656980f, 0.974683510688510670f, 0.973992962167955830f,
  0.973293246054698250f,
  0.972584368934732210f, 0.971866337480279400f, 0.971139158449725090f,
  0.970402838687555500f,
  0.969657385124292450f, 0.968902804776428870f, 0.968139104746362440f,
  0.967366292222328510f,
  0.966584374478333120f, 0.965793358874083680f, 0.964993252854920320f,
  0.964184063951745830f,
  0.963365799780954050f, 0.962538468044359160f, 0.961702076529122540f,
  0.960856633107679660f,
  0.960002145737665960f, 0.959138622461841890f, 0.958266071408017670f,
  0.957384500788975860f,
  0.956493918902395100f, 0.955594334130771110f, 0.954685754941338340f,
  0.953768189885990330f,
  0.952841647601198720f, 0.951906136807932350f, 0.950961666311575080f,
  0.950008245001843000f,
  0.949045881852700560f, 0.948074585922276230f, 0.947094366352777220f,
  0.946105232370403450f,
  0.945107193285260610f, 0.944100258491272660f, 0.943084437466093490f,
  0.942059739771017310f,
  0.941026175050889260f, 0.939983753034014050f, 0.938932483532064600f,
  0.937872376439989890f,
  0.936803441735921560f, 0.935725689481080370f, 0.934639129819680780f,
  0.933543772978836170f,
  0.932439629268462360f, 0.931326709081180430f, 0.930205022892219070f,
  0.929074581259315860f,
  0.927935394822617890f, 0.926787474304581750f, 0.925630830509872720f,
  0.924465474325262600f,
  0.923291416719527640f, 0.922108668743345180f, 0.920917241529189520f,
  0.919717146291227360f,
  0.918508394325212250f, 0.917290997008377910f, 0.916064965799331720f,
  0.914830312237946200f,
  0.913587047945250810f, 0.912335184623322750f, 0.911074734055176360f,
  0.909805708104652220f,
  0.908528118716306120f, 0.907241977915295820f, 0.905947297807268460f,
  0.904644090578246240f,
  0.903332368494511820f, 0.902012143902493180f, 0.900683429228646970f,
  0.899346236979341570f,
  0.898000579740739880f, 0.896646470178680150f, 0.895283921038557580f,
  0.893912945145203250f,
  0.892533555402764580f, 0.891145764794583180f, 0.889749586383072780f,
  0.888345033309596350f,
  0.886932118794342190f, 0.885510856136199950f, 0.884081258712634990f,
  0.882643339979562790f,
  0.881197113471222090f, 0.879742592800047410f, 0.878279791656541580f,
  0.876808723809145650f,
  0.875329403104110890f, 0.873841843465366860f, 0.872346058894391540f,
  0.870842063470078980f,
  0.869329871348606840f, 0.867809496763303320f, 0.866280954024512990f,
  0.864744257519462380f,
  0.863199421712124160f, 0.861646461143081300f, 0.860085390429390140f,
  0.858516224264442740f,
  0.856938977417828760f, 0.855353664735196030f, 0.853760301138111410f,
  0.852158901623919830f,
  0.850549481265603480f, 0.848932055211639610f, 0.847306638685858320f,
  0.845673246987299070f,
  0.844031895490066410f, 0.842382599643185850f, 0.840725374970458070f,
  0.839060237070312740f,
  0.837387201615661940f, 0.835706284353752600f, 0.834017501106018130f,
  0.832320867767929680f,
  0.830616400308846310f, 0.828904114771864870f, 0.827184027273669130f,
  0.825456154004377550f,
  0.823720511227391430f, 0.821977115279241550f, 0.820225982569434690f,
  0.818467129580298660f,
  0.816700572866827850f, 0.814926329056526620f, 0.813144414849253590f,
  0.811354847017063730f,
  0.809557642404051260f, 0.807752817926190360f, 0.805940390571176280f,
  0.804120377398265810f,
  0.802292795538115720f, 0.800457662192622820f, 0.798614994634760820f,
  0.796764810208418830f,
  0.794907126328237010f, 0.793041960479443640f, 0.791169330217690200f,
  0.789289253168885650f,
  0.787401747029031430f, 0.785506829564053930f, 0.783604518609638200f,
  0.781694832071059390f,
  0.779777787923014550f, 0.777853404209453150f, 0.775921699043407690f,
  0.773982690606822900f,
  0.772036397150384520f, 0.770082836993347900f, 0.768122028523365420f,
  0.766153990196312920f,
  0.764178740536116670f, 0.762196298134578900f, 0.760206681651202420f,
  0.758209909813015280f,
  0.756206001414394540f, 0.754194975316889170f, 0.752176850449042810f,
  0.750151645806215070f,
  0.748119380450403600f, 0.746080073510063780f, 0.744033744179929290f,
  0.741980411720831070f,
  0.739920095459516200f, 0.737852814788465980f, 0.735778589165713590f,
  0.733697438114660370f,
  0.731609381223892630f, 0.729514438146997010f, 0.727412628602375770f,
  0.725303972373060770f,
  0.723188489306527460f, 0.721066199314508110f, 0.718937122372804490f,
  0.716801278521099540f,
  0.714658687862769090f, 0.712509370564692320f, 0.710353346857062420f,
  0.708190637033195400f,
  0.706021261449339740f, 0.703845240524484940f, 0.701662594740168570f,
  0.699473344640283770f,
  0.697277510830886630f, 0.695075113980000880f, 0.692866174817424740f,
  0.690650714134534720f,
  0.688428752784090550f, 0.686200311680038700f, 0.683965411797315510f,
  0.681724074171649820f,
  0.679476319899365080f, 0.677222170137180450f, 0.674961646102012040f,
  0.672694769070772970f,
  0.670421560380173090f, 0.668142041426518560f, 0.665856233665509720f,
  0.663564158612039880f,
  0.661265837839992270f, 0.658961292982037320f, 0.656650545729429050f,
  0.654333617831800550f,
  0.652010531096959500f, 0.649681307390683190f, 0.647345968636512060f,
  0.645004536815544040f,
  0.642657033966226860f, 0.640303482184151670f, 0.637943903621844170f,
  0.635578320488556230f,
  0.633206755050057190f, 0.630829229628424470f, 0.628445766601832710f,
  0.626056388404343520f,
  0.623661117525694640f, 0.621259976511087660f, 0.618852987960976320f,
  0.616440174530853650f,
  0.614021558931038490f, 0.611597163926462020f, 0.609167012336453210f,
  0.606731127034524480f,
  0.604289530948156070f, 0.601842247058580030f, 0.599389298400564540f,
  0.596930708062196500f,
  0.594466499184664540f, 0.591996694962040990f, 0.589521318641063940f,
  0.587040393520918080f,
  0.584553942953015330f, 0.582061990340775550f, 0.579564559139405740f,
  0.577061672855679550f,
  0.574553355047715760f, 0.572039629324757050f, 0.569520519346947250f,
  0.566996048825108680f,
  0.564466241520519500f, 0.561931121244689470f, 0.559390711859136140f,
  0.556845037275160100f,
  0.554294121453620110f, 0.551737988404707450f, 0.549176662187719770f,
  0.546610166910834860f,
  0.544038526730883930f, 0.541461765853123560f, 0.538879908531008420f,
  0.536292979065963180f,
  0.533701001807152960f, 0.531104001151255000f, 0.528502001542228480f,
  0.525895027471084740f,
  0.523283103475656430f, 0.520666254140367270f, 0.518044504095999340f,
  0.515417878019463150f,
  0.512786400633563070f, 0.510150096706766700f, 0.507508991052970870f,
  0.504863108531267480f,
  0.502212474045710900f, 0.499557112545081890f, 0.496897049022654640f,
  0.494232308515959730f,
  0.491562916106550060f, 0.488888896919763230f, 0.486210276124486530f,
  0.483527078932918740f,
  0.480839330600333900f, 0.478147056424843120f, 0.475450281747155870f,
  0.472749031950342900f,
  0.470043332459595620f, 0.467333208741988530f, 0.464618686306237820f,
  0.461899790702462840f,
  0.459176547521944150f, 0.456448982396883860f, 0.453717121000163930f,
  0.450980989045103810f,
  0.448240612285220000f, 0.445496016513981740f, 0.442747227564570130f,
  0.439994271309633260f,
  0.437237173661044200f, 0.434475960569655710f, 0.431710658025057370f,
  0.428941292055329550f,
  0.426167888726799620f, 0.423390474143796100f, 0.420609074448402510f,
  0.417823715820212380f,
  0.415034424476081630f, 0.412241226669883000f, 0.409444148692257590f,
  0.406643216870369140f,
  0.403838457567654130f, 0.401029897183575790f, 0.398217562153373620f,
  0.395401478947816300f,
  0.392581674072951530f, 0.389758174069856410f, 0.386931005514388690f,
  0.384100195016935040f,
  0.381265769222162490f, 0.378427754808765620f, 0.375586178489217330f,
  0.372741067009515810f,
  0.369892447148934270f, 0.367040345719767240f, 0.364184789567079840f,
  0.361325805568454340f,
  0.358463420633736540f, 0.355597661704783960f, 0.352728555755210730f,
  0.349856129790135030f,
  0.346980410845923680f, 0.344101425989938980f, 0.341219202320282410f,
  0.338333766965541290f,
  0.335445147084531660f, 0.332553369866044220f, 0.329658462528587550f,
  0.326760452320131790f,
  0.323859366517852960f, 0.320955232427875210f, 0.318048077385015060f,
  0.315137928752522440f,
  0.312224813921825050f, 0.309308760312268780f, 0.306389795370861080f,
  0.303467946572011370f,
  0.300543241417273400f, 0.297615707435086310f, 0.294685372180514330f,
  0.291752263234989370f,
  0.288816408206049480f, 0.285877834727080730f, 0.282936570457055390f,
  0.279992643080273380f,
  0.277046080306099950f, 0.274096909868706330f, 0.271145159526808070f,
  0.268190857063403180f,
  0.265234030285511900f, 0.262274707023913590f, 0.259312915132886350f,
  0.256348682489942910f,
  0.253382036995570270f, 0.250413006572965280f, 0.247441619167773440f,
  0.244467902747824210f,
  0.241491885302869300f, 0.238513594844318500f, 0.235533059404975460f,
  0.232550307038775330f,
  0.229565365820518870f, 0.226578263845610110f, 0.223589029229790020f,
  0.220597690108873650f,
  0.217604274638483670f, 0.214608810993786920f, 0.211611327369227610f,
  0.208611851978263460f,
  0.205610413053099320f, 0.202607038844421110f, 0.199601757621131050f,
  0.196594597670080220f,
  0.193585587295803750f, 0.190574754820252800f, 0.187562128582529740f,
  0.184547736938619640f,
  0.181531608261125130f, 0.178513770938997590f, 0.175494253377271400f,
  0.172473083996796030f,
  0.169450291233967930f, 0.166425903540464220f, 0.163399949382973230f,
  0.160372457242928400f,
  0.157343455616238280f, 0.154312973013020240f, 0.151281037957330250f,
  0.148247678986896200f,
  0.145212924652847520f, 0.142176803519448000f, 0.139139344163826280f,
  0.136100575175706200f,
  0.133060525157139180f, 0.130019222722233350f, 0.126976696496885980f,
  0.123932975118512200f,
  0.120888087235777220f, 0.117842061508325020f, 0.114794926606510250f,
  0.111746711211126660f,
  0.108697444013138670f, 0.105647153713410700f, 0.102595869022436280f,
  0.099543618660069444f,
  0.096490431355252607f, 0.093436335845747912f, 0.090381360877865011f,
  0.087325535206192226f,
  0.084268887593324127f, 0.081211446809592386f, 0.078153241632794315f,
  0.075094300847921291f,
  0.072034653246889416f, 0.068974327628266732f, 0.065913352797003930f,
  0.062851757564161420f,
  0.059789570746640007f, 0.056726821166907783f, 0.053663537652730679f,
  0.050599749036899337f,
  0.047535484156959261f, 0.044470771854938744f, 0.041405640977076712f,
  0.038340120373552791f,
  0.035274238898213947f, 0.032208025408304704f, 0.029141508764193740f,
  0.026074717829104040f,
  0.023007681468839410f, 0.019940428551514598f, 0.016872987947281773f,
  0.013805388528060349f,
  0.010737659167264572f, 0.007669828739531077f, 0.004601926120448672f,
  0.001533980186284766f
};

static const float32_t cos_factors_2048[2048] = {
  0.999999926465717890f, 0.999999338191525530f, 0.999998161643486980f,
  0.999996396822294350f,
  0.999994043728985820f, 0.999991102364945590f, 0.999987572731904080f,
  0.999983454831937730f,
  0.999978748667468830f, 0.999973454241265940f, 0.999967571556443780f,
  0.999961100616462820f,
  0.999954041425129780f, 0.999946393986597460f, 0.999938158305364590f,
  0.999929334386276070f,
  0.999919922234522750f, 0.999909921855641540f, 0.999899333255515390f,
  0.999888156440373320f,
  0.999876391416790410f, 0.999864038191687680f, 0.999851096772332190f,
  0.999837567166337090f,
  0.999823449381661570f, 0.999808743426610520f, 0.999793449309835270f,
  0.999777567040332940f,
  0.999761096627446610f, 0.999744038080865430f, 0.999726391410624470f,
  0.999708156627104880f,
  0.999689333741033640f, 0.999669922763483760f, 0.999649923705874240f,
  0.999629336579970110f,
  0.999608161397882110f, 0.999586398172067070f, 0.999564046915327740f,
  0.999541107640812940f,
  0.999517580362016990f, 0.999493465092780590f, 0.999468761847290050f,
  0.999443470640077770f,
  0.999417591486021720f, 0.999391124400346050f, 0.999364069398620550f,
  0.999336426496761240f,
  0.999308195711029470f, 0.999279377058032710f, 0.999249970554724420f,
  0.999219976218403530f,
  0.999189394066714920f, 0.999158224117649430f, 0.999126466389543390f,
  0.999094120901079070f,
  0.999061187671284600f, 0.999027666719533690f, 0.998993558065545680f,
  0.998958861729386080f,
  0.998923577731465780f, 0.998887706092541290f, 0.998851246833715180f,
  0.998814199976435390f,
  0.998776565542495610f, 0.998738343554035230f, 0.998699534033539280f,
  0.998660137003838490f,
  0.998620152488108870f, 0.998579580509872500f, 0.998538421092996730f,
  0.998496674261694640f,
  0.998454340040524800f, 0.998411418454391300f, 0.998367909528543820f,
  0.998323813288577560f,
  0.998279129760433200f, 0.998233858970396850f, 0.998188000945100300f,
  0.998141555711520520f,
  0.998094523296980010f, 0.998046903729146840f, 0.997998697036034390f,
  0.997949903246001190f,
  0.997900522387751620f, 0.997850554490335110f, 0.997799999583146470f,
  0.997748857695925690f,
  0.997697128858758500f, 0.997644813102075420f, 0.997591910456652630f,
  0.997538420953611340f,
  0.997484344624417930f, 0.997429681500884180f, 0.997374431615167150f,
  0.997318594999768600f,
  0.997262171687536170f, 0.997205161711661850f, 0.997147565105683480f,
  0.997089381903483400f,
  0.997030612139289450f, 0.996971255847674320f, 0.996911313063555740f,
  0.996850783822196610f,
  0.996789668159204560f, 0.996727966110532490f, 0.996665677712478160f,
  0.996602803001684130f,
  0.996539342015137940f, 0.996475294790172160f, 0.996410661364464100f,
  0.996345441776035900f,
  0.996279636063254650f, 0.996213244264832040f, 0.996146266419824620f,
  0.996078702567633980f,
  0.996010552748005870f, 0.995941817001031350f, 0.995872495367145730f,
  0.995802587887129160f,
  0.995732094602106430f, 0.995661015553546910f, 0.995589350783264600f,
  0.995517100333418110f,
  0.995444264246510340f, 0.995370842565388990f, 0.995296835333246090f,
  0.995222242593618360f,
  0.995147064390386470f, 0.995071300767776170f, 0.994994951770357020f,
  0.994918017443043200f,
  0.994840497831093180f, 0.994762392980109930f, 0.994683702936040250f,
  0.994604427745175660f,
  0.994524567454151740f, 0.994444122109948040f, 0.994363091759888570f,
  0.994281476451641550f,
  0.994199276233218910f, 0.994116491152977070f, 0.994033121259616400f,
  0.993949166602181130f,
  0.993864627230059750f, 0.993779503192984580f, 0.993693794541031790f,
  0.993607501324621610f,
  0.993520623594518090f, 0.993433161401829360f, 0.993345114798006910f,
  0.993256483834846440f,
  0.993167268564487230f, 0.993077469039412300f, 0.992987085312448390f,
  0.992896117436765980f,
  0.992804565465879140f, 0.992712429453645460f, 0.992619709454266140f,
  0.992526405522286100f,
  0.992432517712593660f, 0.992338046080420420f, 0.992242990681341700f,
  0.992147351571276090f,
  0.992051128806485720f, 0.991954322443575950f, 0.991856932539495470f,
  0.991758959151536110f,
  0.991660402337333210f, 0.991561262154865290f, 0.991461538662453790f,
  0.991361231918763460f,
  0.991260341982802440f, 0.991158868913921350f, 0.991056812771814340f,
  0.990954173616518500f,
  0.990850951508413620f, 0.990747146508222710f, 0.990642758677011570f,
  0.990537788076188750f,
  0.990432234767505970f, 0.990326098813057330f, 0.990219380275280000f,
  0.990112079216953770f,
  0.990004195701200910f, 0.989895729791486660f, 0.989786681551618640f,
  0.989677051045747210f,
  0.989566838338365120f, 0.989456043494307710f, 0.989344666578752640f,
  0.989232707657220050f,
  0.989120166795572690f, 0.989007044060015270f, 0.988893339517095130f,
  0.988779053233701520f,
  0.988664185277066230f, 0.988548735714763200f, 0.988432704614708340f,
  0.988316092045159690f,
  0.988198898074717610f, 0.988081122772324070f, 0.987962766207263420f,
  0.987843828449161740f,
  0.987724309567986960f, 0.987604209634049160f, 0.987483528717999710f,
  0.987362266890832400f,
  0.987240424223882250f, 0.987118000788826280f, 0.986994996657682980f,
  0.986871411902812470f,
  0.986747246596916590f, 0.986622500813038480f, 0.986497174624562880f,
  0.986371268105216030f,
  0.986244781329065460f, 0.986117714370520090f, 0.985990067304330140f,
  0.985861840205586980f,
  0.985733033149723490f, 0.985603646212513400f, 0.985473679470071810f,
  0.985343132998854790f,
  0.985212006875659350f, 0.985080301177623800f, 0.984948015982227030f,
  0.984815151367289140f,
  0.984681707410970940f, 0.984547684191773960f, 0.984413081788540700f,
  0.984277900280454370f,
  0.984142139747038570f, 0.984005800268157870f, 0.983868881924017220f,
  0.983731384795162090f,
  0.983593308962478650f, 0.983454654507193270f, 0.983315421510872810f,
  0.983175610055424420f,
  0.983035220223095640f, 0.982894252096474070f, 0.982752705758487830f,
  0.982610581292404750f,
  0.982467878781833170f, 0.982324598310721280f, 0.982180739963357090f,
  0.982036303824369020f,
  0.981891289978725100f, 0.981745698511732990f, 0.981599529509040720f,
  0.981452783056635520f,
  0.981305459240844670f, 0.981157558148334830f, 0.981009079866112630f,
  0.980860024481523870f,
  0.980710392082253970f, 0.980560182756327840f, 0.980409396592109910f,
  0.980258033678303550f,
  0.980106094103951770f, 0.979953577958436740f, 0.979800485331479790f,
  0.979646816313141210f,
  0.979492570993820810f, 0.979337749464256780f, 0.979182351815526930f,
  0.979026378139047580f,
  0.978869828526574120f, 0.978712703070200420f, 0.978555001862359550f,
  0.978396724995823090f,
  0.978237872563701090f, 0.978078444659442380f, 0.977918441376834370f,
  0.977757862810002760f,
  0.977596709053411890f, 0.977434980201864260f, 0.977272676350500860f,
  0.977109797594800880f,
  0.976946344030581670f, 0.976782315753998650f, 0.976617712861545640f,
  0.976452535450054060f,
  0.976286783616693630f, 0.976120457458971910f, 0.975953557074734300f,
  0.975786082562163930f,
  0.975618034019781750f, 0.975449411546446380f, 0.975280215241354220f,
  0.975110445204038890f,
  0.974940101534371830f, 0.974769184332561770f, 0.974597693699155050f,
  0.974425629735034990f,
  0.974252992541422500f, 0.974079782219875680f, 0.973905998872289570f,
  0.973731642600896400f,
  0.973556713508265560f, 0.973381211697303290f, 0.973205137271252800f,
  0.973028490333694210f,
  0.972851270988544180f, 0.972673479340056430f, 0.972495115492821190f,
  0.972316179551765300f,
  0.972136671622152230f, 0.971956591809581720f, 0.971775940219990140f,
  0.971594716959650160f,
  0.971412922135170940f, 0.971230555853497380f, 0.971047618221911100f,
  0.970864109348029470f,
  0.970680029339806130f, 0.970495378305530560f, 0.970310156353828110f,
  0.970124363593660280f,
  0.969938000134323960f, 0.969751066085452140f, 0.969563561557013180f,
  0.969375486659311280f,
  0.969186841502985950f, 0.968997626199012420f, 0.968807840858700970f,
  0.968617485593697540f,
  0.968426560515983190f, 0.968235065737874320f, 0.968043001372022260f,
  0.967850367531413620f,
  0.967657164329369880f, 0.967463391879547550f, 0.967269050295937790f,
  0.967074139692867040f,
  0.966878660184995910f, 0.966682611887320080f, 0.966485994915169840f,
  0.966288809384209690f,
  0.966091055410438830f, 0.965892733110190860f, 0.965693842600133690f,
  0.965494383997269500f,
  0.965294357418934660f, 0.965093762982799590f, 0.964892600806868890f,
  0.964690871009481030f,
  0.964488573709308410f, 0.964285709025357480f, 0.964082277076968140f,
  0.963878277983814200f,
  0.963673711865903230f, 0.963468578843575950f, 0.963262879037507070f,
  0.963056612568704340f,
  0.962849779558509030f, 0.962642380128595710f, 0.962434414400972100f,
  0.962225882497979020f,
  0.962016784542290560f, 0.961807120656913540f, 0.961596890965187860f,
  0.961386095590786250f,
  0.961174734657714080f, 0.960962808290309780f, 0.960750316613243950f,
  0.960537259751520050f,
  0.960323637830473920f, 0.960109450975773940f, 0.959894699313420530f,
  0.959679382969746750f,
  0.959463502071417510f, 0.959247056745430090f, 0.959030047119113660f,
  0.958812473320129310f,
  0.958594335476470220f, 0.958375633716461170f, 0.958156368168758820f,
  0.957936538962351420f,
  0.957716146226558870f, 0.957495190091032570f, 0.957273670685755200f,
  0.957051588141040970f,
  0.956828942587535370f, 0.956605734156215080f, 0.956381962978387730f,
  0.956157629185692140f,
  0.955932732910098280f, 0.955707274283906560f, 0.955481253439748770f,
  0.955254670510586990f,
  0.955027525629714160f, 0.954799818930753720f, 0.954571550547659630f,
  0.954342720614716480f,
  0.954113329266538800f, 0.953883376638071770f, 0.953652862864590500f,
  0.953421788081700310f,
  0.953190152425336670f, 0.952957956031764700f, 0.952725199037579570f,
  0.952491881579706320f,
  0.952258003795399600f, 0.952023565822243570f, 0.951788567798152130f,
  0.951553009861368590f,
  0.951316892150465550f, 0.951080214804345010f, 0.950842977962238160f,
  0.950605181763705340f,
  0.950366826348635780f, 0.950127911857248100f, 0.949888438430089300f,
  0.949648406208035480f,
  0.949407815332291570f, 0.949166665944390700f, 0.948924958186195160f,
  0.948682692199895090f,
  0.948439868128009620f, 0.948196486113385580f, 0.947952546299198670f,
  0.947708048828952100f,
  0.947462993846477700f, 0.947217381495934820f, 0.946971211921810880f,
  0.946724485268921170f,
  0.946477201682408680f, 0.946229361307743820f, 0.945980964290724760f,
  0.945732010777477150f,
  0.945482500914453740f, 0.945232434848435000f, 0.944981812726528150f,
  0.944730634696167800f,
  0.944478900905115550f, 0.944226611501459810f, 0.943973766633615980f,
  0.943720366450326200f,
  0.943466411100659320f, 0.943211900734010620f, 0.942956835500102120f,
  0.942701215548981900f,
  0.942445041031024890f, 0.942188312096931770f, 0.941931028897729620f,
  0.941673191584771360f,
  0.941414800309736340f, 0.941155855224629190f, 0.940896356481780830f,
  0.940636304233847590f,
  0.940375698633811540f, 0.940114539834980280f, 0.939852827990986680f,
  0.939590563255789270f,
  0.939327745783671400f, 0.939064375729241950f, 0.938800453247434770f,
  0.938535978493508560f,
  0.938270951623047190f, 0.938005372791958840f, 0.937739242156476970f,
  0.937472559873159250f,
  0.937205326098887960f, 0.936937540990869900f, 0.936669204706636170f,
  0.936400317404042060f,
  0.936130879241267030f, 0.935860890376814640f, 0.935590350969512370f,
  0.935319261178511610f,
  0.935047621163287430f, 0.934775431083638700f, 0.934502691099687870f,
  0.934229401371880820f,
  0.933955562060986730f, 0.933681173328098410f, 0.933406235334631520f,
  0.933130748242325230f,
  0.932854712213241120f, 0.932578127409764420f, 0.932300993994602760f,
  0.932023312130786490f,
  0.931745081981668720f, 0.931466303710925090f, 0.931186977482553750f,
  0.930907103460875130f,
  0.930626681810531760f, 0.930345712696488470f, 0.930064196284032360f,
  0.929782132738772190f,
  0.929499522226638560f, 0.929216364913884040f, 0.928932660967082820f,
  0.928648410553130520f,
  0.928363613839244370f, 0.928078270992963140f, 0.927792382182146320f,
  0.927505947574975180f,
  0.927218967339951790f, 0.926931441645899130f, 0.926643370661961230f,
  0.926354754557602860f,
  0.926065593502609310f, 0.925775887667086740f, 0.925485637221461490f,
  0.925194842336480530f,
  0.924903503183210910f, 0.924611619933039970f, 0.924319192757675160f,
  0.924026221829143850f,
  0.923732707319793290f, 0.923438649402290370f, 0.923144048249621930f,
  0.922848904035094120f,
  0.922553216932332830f, 0.922256987115283030f, 0.921960214758209220f,
  0.921662900035694730f,
  0.921365043122642340f, 0.921066644194273640f, 0.920767703426128790f,
  0.920468220994067110f,
  0.920168197074266340f, 0.919867631843222950f, 0.919566525477751530f,
  0.919264878154985370f,
  0.918962690052375630f, 0.918659961347691900f, 0.918356692219021720f,
  0.918052882844770380f,
  0.917748533403661250f, 0.917443644074735220f, 0.917138215037350710f,
  0.916832246471183890f,
  0.916525738556228210f, 0.916218691472794220f, 0.915911105401509880f,
  0.915602980523320230f,
  0.915294317019487050f, 0.914985115071589310f, 0.914675374861522390f,
  0.914365096571498560f,
  0.914054280384046570f, 0.913742926482011390f, 0.913431035048554720f,
  0.913118606267154240f,
  0.912805640321603500f, 0.912492137396012650f, 0.912178097674807180f,
  0.911863521342728520f,
  0.911548408584833990f, 0.911232759586496190f, 0.910916574533403360f,
  0.910599853611558930f,
  0.910282597007281760f, 0.909964804907205660f, 0.909646477498279540f,
  0.909327614967767260f,
  0.909008217503247450f, 0.908688285292613360f, 0.908367818524072890f,
  0.908046817386148340f,
  0.907725282067676440f, 0.907403212757808110f, 0.907080609646008450f,
  0.906757472922056550f,
  0.906433802776045460f, 0.906109599398381980f, 0.905784862979786550f,
  0.905459593711293250f,
  0.905133791784249690f, 0.904807457390316540f, 0.904480590721468250f,
  0.904153191969991780f,
  0.903825261328487510f, 0.903496798989868450f, 0.903167805147360720f,
  0.902838279994502830f,
  0.902508223725145940f, 0.902177636533453620f, 0.901846518613901750f,
  0.901514870161278740f,
  0.901182691370684520f, 0.900849982437531450f, 0.900516743557543520f,
  0.900182974926756810f,
  0.899848676741518580f, 0.899513849198487980f, 0.899178492494635330f,
  0.898842606827242370f,
  0.898506192393901950f, 0.898169249392518080f, 0.897831778021305650f,
  0.897493778478790310f,
  0.897155250963808550f, 0.896816195675507300f, 0.896476612813344120f,
  0.896136502577086770f,
  0.895795865166813530f, 0.895454700782912450f, 0.895113009626081760f,
  0.894770791897329550f,
  0.894428047797973800f, 0.894084777529641990f, 0.893740981294271040f,
  0.893396659294107720f,
  0.893051811731707450f, 0.892706438809935390f, 0.892360540731965360f,
  0.892014117701280470f,
  0.891667169921672280f, 0.891319697597241390f, 0.890971700932396860f,
  0.890623180131855930f,
  0.890274135400644600f, 0.889924566944096720f, 0.889574474967854580f,
  0.889223859677868210f,
  0.888872721280395630f, 0.888521059982002260f, 0.888168875989561730f,
  0.887816169510254440f,
  0.887462940751568840f, 0.887109189921300170f, 0.886754917227550840f,
  0.886400122878730600f,
  0.886044807083555600f, 0.885688970051048960f, 0.885332611990540590f,
  0.884975733111666660f,
  0.884618333624369920f, 0.884260413738899190f, 0.883901973665809470f,
  0.883543013615961880f,
  0.883183533800523390f, 0.882823534430966620f, 0.882463015719070150f,
  0.882101977876917580f,
  0.881740421116898320f, 0.881378345651706920f, 0.881015751694342870f,
  0.880652639458111010f,
  0.880289009156621010f, 0.879924861003786860f, 0.879560195213827890f,
  0.879195012001267480f,
  0.878829311580933360f, 0.878463094167957870f, 0.878096359977777130f,
  0.877729109226131570f,
  0.877361342129065140f, 0.876993058902925890f, 0.876624259764365310f,
  0.876254944930338510f,
  0.875885114618103810f, 0.875514769045222850f, 0.875143908429560360f,
  0.874772532989284150f,
  0.874400642942864790f, 0.874028238509075740f, 0.873655319906992630f,
  0.873281887355994210f,
  0.872907941075761080f, 0.872533481286276170f, 0.872158508207824480f,
  0.871783022060993120f,
  0.871407023066670950f, 0.871030511446048260f, 0.870653487420617430f,
  0.870275951212171940f,
  0.869897903042806340f, 0.869519343134916860f, 0.869140271711200560f,
  0.868760688994655310f,
  0.868380595208579800f, 0.867999990576573510f, 0.867618875322536230f,
  0.867237249670668400f,
  0.866855113845470430f, 0.866472468071743050f, 0.866089312574586770f,
  0.865705647579402380f,
  0.865321473311889800f, 0.864936789998049020f, 0.864551597864179340f,
  0.864165897136879300f,
  0.863779688043046720f, 0.863392970809878420f, 0.863005745664870320f,
  0.862618012835816740f,
  0.862229772550811240f, 0.861841025038245330f, 0.861451770526809320f,
  0.861062009245491480f,
  0.860671741423578380f, 0.860280967290654510f, 0.859889687076602290f,
  0.859497901011601730f,
  0.859105609326130450f, 0.858712812250963520f, 0.858319510017173440f,
  0.857925702856129790f,
  0.857531390999499150f, 0.857136574679244980f, 0.856741254127627470f,
  0.856345429577203610f,
  0.855949101260826910f, 0.855552269411646860f, 0.855154934263109620f,
  0.854757096048957220f,
  0.854358755003227440f, 0.853959911360254180f, 0.853560565354666840f,
  0.853160717221390420f,
  0.852760367195645300f, 0.852359515512947090f, 0.851958162409106380f,
  0.851556308120228980f,
  0.851153952882715340f, 0.850751096933260790f, 0.850347740508854980f,
  0.849943883846782210f,
  0.849539527184620890f, 0.849134670760243630f, 0.848729314811817130f,
  0.848323459577801640f,
  0.847917105296951410f, 0.847510252208314330f, 0.847102900551231500f,
  0.846695050565337450f,
  0.846286702490559710f, 0.845877856567119000f, 0.845468513035528830f,
  0.845058672136595470f,
  0.844648334111417820f, 0.844237499201387020f, 0.843826167648186740f,
  0.843414339693792760f,
  0.843002015580472940f, 0.842589195550786710f, 0.842175879847585570f,
  0.841762068714012490f,
  0.841347762393501950f, 0.840932961129779780f, 0.840517665166862550f,
  0.840101874749058400f,
  0.839685590120966110f, 0.839268811527475230f, 0.838851539213765760f,
  0.838433773425308340f,
  0.838015514407863820f, 0.837596762407483040f, 0.837177517670507300f,
  0.836757780443567190f,
  0.836337550973583530f, 0.835916829507766360f, 0.835495616293615350f,
  0.835073911578919410f,
  0.834651715611756440f, 0.834229028640493420f, 0.833805850913786340f,
  0.833382182680579730f,
  0.832958024190106670f, 0.832533375691888680f, 0.832108237435735590f,
  0.831682609671745120f,
  0.831256492650303210f, 0.830829886622083570f, 0.830402791838047550f,
  0.829975208549443950f,
  0.829547137007808910f, 0.829118577464965980f, 0.828689530173025820f,
  0.828259995384385660f,
  0.827829973351729920f, 0.827399464328029470f, 0.826968468566541600f,
  0.826536986320809960f,
  0.826105017844664610f, 0.825672563392221390f, 0.825239623217882250f,
  0.824806197576334330f,
  0.824372286722551250f, 0.823937890911791370f, 0.823503010399598500f,
  0.823067645441801670f,
  0.822631796294514990f, 0.822195463214137170f, 0.821758646457351750f,
  0.821321346281126740f,
  0.820883562942714580f, 0.820445296699652050f, 0.820006547809759680f,
  0.819567316531142230f,
  0.819127603122188240f, 0.818687407841569680f, 0.818246730948242070f,
  0.817805572701444270f,
  0.817363933360698460f, 0.816921813185809480f, 0.816479212436865390f,
  0.816036131374236810f,
  0.815592570258576790f, 0.815148529350820830f, 0.814704008912187080f,
  0.814259009204175270f,
  0.813813530488567190f, 0.813367573027426570f, 0.812921137083098770f,
  0.812474222918210480f,
  0.812026830795669730f, 0.811578960978665890f, 0.811130613730669190f,
  0.810681789315430780f,
  0.810232487996982330f, 0.809782710039636530f, 0.809332455707985950f,
  0.808881725266903610f,
  0.808430518981542720f, 0.807978837117336310f, 0.807526679939997160f,
  0.807074047715517610f,
  0.806620940710169650f, 0.806167359190504420f, 0.805713303423352230f,
  0.805258773675822210f,
  0.804803770215302920f, 0.804348293309460780f, 0.803892343226241260f,
  0.803435920233868120f,
  0.802979024600843250f, 0.802521656595946430f, 0.802063816488235440f,
  0.801605504547046150f,
  0.801146721041991360f, 0.800687466242961610f, 0.800227740420124790f,
  0.799767543843925680f,
  0.799306876785086160f, 0.798845739514604580f, 0.798384132303756380f,
  0.797922055424093000f,
  0.797459509147442460f, 0.796996493745908750f, 0.796533009491872000f,
  0.796069056657987990f,
  0.795604635517188070f, 0.795139746342679590f, 0.794674389407944550f,
  0.794208564986740640f,
  0.793742273353100210f, 0.793275514781330630f, 0.792808289546014120f,
  0.792340597922007170f,
  0.791872440184440470f, 0.791403816608719500f, 0.790934727470523290f,
  0.790465173045804880f,
  0.789995153610791090f, 0.789524669441982190f, 0.789053720816151880f,
  0.788582308010347120f,
  0.788110431301888070f, 0.787638090968367450f, 0.787165287287651010f,
  0.786692020537876790f,
  0.786218290997455660f, 0.785744098945070360f, 0.785269444659675850f,
  0.784794328420499230f,
  0.784318750507038920f, 0.783842711199065230f, 0.783366210776619720f,
  0.782889249520015480f,
  0.782411827709836530f, 0.781933945626937630f, 0.781455603552444590f,
  0.780976801767753750f,
  0.780497540554531910f, 0.780017820194715990f, 0.779537640970513260f,
  0.779057003164400630f,
  0.778575907059125050f, 0.778094352937702790f, 0.777612341083420030f,
  0.777129871779831620f,
  0.776646945310762060f, 0.776163561960304340f, 0.775679722012820650f,
  0.775195425752941420f,
  0.774710673465565550f, 0.774225465435860680f, 0.773739801949261840f,
  0.773253683291472590f,
  0.772767109748463850f, 0.772280081606474320f, 0.771792599152010150f,
  0.771304662671844830f,
  0.770816272453018540f, 0.770327428782838890f, 0.769838131948879840f,
  0.769348382238982280f,
  0.768858179941253270f, 0.768367525344066270f, 0.767876418736060610f,
  0.767384860406141730f,
  0.766892850643480670f, 0.766400389737514230f, 0.765907477977944340f,
  0.765414115654738270f,
  0.764920303058128410f, 0.764426040478612070f, 0.763931328206951090f,
  0.763436166534172010f,
  0.762940555751565720f, 0.762444496150687210f, 0.761947988023355390f,
  0.761451031661653620f,
  0.760953627357928150f, 0.760455775404789260f, 0.759957476095110330f,
  0.759458729722028210f,
  0.758959536578942440f, 0.758459896959515430f, 0.757959811157672300f,
  0.757459279467600720f,
  0.756958302183750490f, 0.756456879600833740f, 0.755955012013824420f,
  0.755452699717958250f,
  0.754949943008732640f, 0.754446742181906440f, 0.753943097533499640f,
  0.753439009359793580f,
  0.752934477957330150f, 0.752429503622912390f, 0.751924086653603550f,
  0.751418227346727470f,
  0.750911925999867890f, 0.750405182910869330f, 0.749897998377835330f,
  0.749390372699129560f,
  0.748882306173375150f, 0.748373799099454560f, 0.747864851776509410f,
  0.747355464503940190f,
  0.746845637581406540f, 0.746335371308826320f, 0.745824665986376090f,
  0.745313521914490520f,
  0.744801939393862630f, 0.744289918725443260f, 0.743777460210440890f,
  0.743264564150321600f,
  0.742751230846809050f, 0.742237460601884000f, 0.741723253717784140f,
  0.741208610497004260f,
  0.740693531242295760f, 0.740178016256666240f, 0.739662065843380010f,
  0.739145680305957510f,
  0.738628859948174840f, 0.738111605074064260f, 0.737593915987913570f,
  0.737075792994265730f,
  0.736557236397919150f, 0.736038246503927350f, 0.735518823617598900f,
  0.734998968044496710f,
  0.734478680090438370f, 0.733957960061495940f, 0.733436808263995710f,
  0.732915225004517780f,
  0.732393210589896040f, 0.731870765327218290f, 0.731347889523825570f,
  0.730824583487312160f,
  0.730300847525525490f, 0.729776681946566090f, 0.729252087058786970f,
  0.728727063170793830f,
  0.728201610591444610f, 0.727675729629849610f, 0.727149420595371020f,
  0.726622683797622850f,
  0.726095519546471000f, 0.725567928152032300f, 0.725039909924675370f,
  0.724511465175019630f,
  0.723982594213935520f, 0.723453297352544380f, 0.722923574902217700f,
  0.722393427174577550f,
  0.721862854481496340f, 0.721331857135096290f, 0.720800435447749190f,
  0.720268589732077190f,
  0.719736320300951030f, 0.719203627467491220f, 0.718670511545067230f,
  0.718136972847297490f,
  0.717603011688049080f, 0.717068628381437480f, 0.716533823241826680f,
  0.715998596583828690f,
  0.715462948722303760f, 0.714926879972359490f, 0.714390390649351390f,
  0.713853481068882470f,
  0.713316151546802610f, 0.712778402399208980f, 0.712240233942445510f,
  0.711701646493102970f,
  0.711162640368018350f, 0.710623215884275020f, 0.710083373359202800f,
  0.709543113110376770f,
  0.709002435455618250f, 0.708461340712994160f, 0.707919829200816310f,
  0.707377901237642100f,
  0.706835557142273860f, 0.706292797233758480f, 0.705749621831387790f,
  0.705206031254697830f,
  0.704662025823468930f, 0.704117605857725430f, 0.703572771677735580f,
  0.703027523604011220f,
  0.702481861957308000f, 0.701935787058624360f, 0.701389299229202230f,
  0.700842398790526230f,
  0.700295086064323780f, 0.699747361372564990f, 0.699199225037462120f,
  0.698650677381469580f,
  0.698101718727283880f, 0.697552349397843270f, 0.697002569716327460f,
  0.696452380006157830f,
  0.695901780590996830f, 0.695350771794747800f, 0.694799353941554900f,
  0.694247527355803310f,
  0.693695292362118350f, 0.693142649285365510f, 0.692589598450650380f,
  0.692036140183318830f,
  0.691482274808955850f, 0.690928002653386280f, 0.690373324042674040f,
  0.689818239303122470f,
  0.689262748761273470f, 0.688706852743907750f, 0.688150551578044830f,
  0.687593845590942170f,
  0.687036735110095660f, 0.686479220463238950f, 0.685921301978343670f,
  0.685362979983618730f,
  0.684804254807510620f, 0.684245126778703080f, 0.683685596226116690f,
  0.683125663478908800f,
  0.682565328866473250f, 0.682004592718440830f, 0.681443455364677990f,
  0.680881917135287340f,
  0.680319978360607200f, 0.679757639371212030f, 0.679194900497911200f,
  0.678631762071749470f,
  0.678068224424006600f, 0.677504287886197430f, 0.676939952790071240f,
  0.676375219467611700f,
  0.675810088251037060f, 0.675244559472799270f, 0.674678633465584540f,
  0.674112310562312360f,
  0.673545591096136100f, 0.672978475400442090f, 0.672410963808849900f,
  0.671843056655211930f,
  0.671274754273613490f, 0.670706056998372160f, 0.670136965164037760f,
  0.669567479105392490f,
  0.668997599157450270f, 0.668427325655456820f, 0.667856658934889440f,
  0.667285599331456480f,
  0.666714147181097670f, 0.666142302819983540f, 0.665570066584515560f,
  0.664997438811325340f,
  0.664424419837275180f, 0.663851009999457340f, 0.663277209635194100f,
  0.662703019082037440f,
  0.662128438677768720f, 0.661553468760399000f, 0.660978109668168060f,
  0.660402361739545030f,
  0.659826225313227430f, 0.659249700728141490f, 0.658672788323441890f,
  0.658095488438511290f,
  0.657517801412960120f, 0.656939727586627110f, 0.656361267299578000f,
  0.655782420892106030f,
  0.655203188704731930f, 0.654623571078202680f, 0.654043568353492640f,
  0.653463180871802330f,
  0.652882408974558960f, 0.652301253003415460f, 0.651719713300251020f,
  0.651137790207170330f,
  0.650555484066503990f, 0.649972795220807530f, 0.649389724012861770f,
  0.648806270785672550f,
  0.648222435882470420f, 0.647638219646710420f, 0.647053622422071650f,
  0.646468644552457890f,
  0.645883286381996440f, 0.645297548255038380f, 0.644711430516158420f,
  0.644124933510154540f,
  0.643538057582047850f, 0.642950803077082080f, 0.642363170340724320f,
  0.641775159718663500f,
  0.641186771556811250f, 0.640598006201301030f, 0.640008863998488440f,
  0.639419345294950700f,
  0.638829450437486400f, 0.638239179773115390f, 0.637648533649078810f,
  0.637057512412838590f,
  0.636466116412077180f, 0.635874345994697720f, 0.635282201508823530f,
  0.634689683302797850f,
  0.634096791725183740f, 0.633503527124764320f, 0.632909889850541860f,
  0.632315880251737680f,
  0.631721498677792370f, 0.631126745478365340f, 0.630531621003334600f,
  0.629936125602796550f,
  0.629340259627065750f, 0.628744023426674790f, 0.628147417352374120f,
  0.627550441755131530f,
  0.626953096986132770f, 0.626355383396779990f, 0.625757301338692900f,
  0.625158851163707730f,
  0.624560033223877320f, 0.623960847871470770f, 0.623361295458973340f,
  0.622761376339086460f,
  0.622161090864726930f, 0.621560439389027270f, 0.620959422265335180f,
  0.620358039847213830f,
  0.619756292488440660f, 0.619154180543008410f, 0.618551704365123860f,
  0.617948864309208260f,
  0.617345660729896940f, 0.616742093982038830f, 0.616138164420696910f,
  0.615533872401147430f,
  0.614929218278879590f, 0.614324202409595950f, 0.613718825149211830f,
  0.613113086853854910f,
  0.612506987879865570f, 0.611900528583796070f, 0.611293709322411010f,
  0.610686530452686280f,
  0.610078992331809620f, 0.609471095317180240f, 0.608862839766408200f,
  0.608254226037314490f,
  0.607645254487930830f, 0.607035925476499760f, 0.606426239361473550f,
  0.605816196501515080f,
  0.605205797255496500f, 0.604595041982500360f, 0.603983931041818020f,
  0.603372464792950370f,
  0.602760643595607220f, 0.602148467809707320f, 0.601535937795377730f,
  0.600923053912954090f,
  0.600309816522980430f, 0.599696225986208310f, 0.599082282663597310f,
  0.598467986916314310f,
  0.597853339105733910f, 0.597238339593437530f, 0.596622988741213330f,
  0.596007286911056530f,
  0.595391234465168730f, 0.594774831765957580f, 0.594158079176036800f,
  0.593540977058226390f,
  0.592923525775551410f, 0.592305725691242400f, 0.591687577168735550f,
  0.591069080571671510f,
  0.590450236263895920f, 0.589831044609458900f, 0.589211505972615070f,
  0.588591620717822890f,
  0.587971389209745120f, 0.587350811813247660f, 0.586729888893400500f,
  0.586108620815476430f,
  0.585487007944951450f, 0.584865050647504490f, 0.584242749289016980f,
  0.583620104235572760f,
  0.582997115853457700f, 0.582373784509160220f, 0.581750110569369760f,
  0.581126094400977620f,
  0.580501736371076600f, 0.579877036846960350f, 0.579251996196123550f,
  0.578626614786261430f,
  0.578000892985269910f, 0.577374831161244880f, 0.576748429682482520f,
  0.576121688917478390f,
  0.575494609234928230f, 0.574867191003726740f, 0.574239434592967890f,
  0.573611340371944610f,
  0.572982908710148680f, 0.572354139977270030f, 0.571725034543197120f,
  0.571095592778016690f,
  0.570465815052012990f, 0.569835701735668110f, 0.569205253199661200f,
  0.568574469814869250f,
  0.567943351952365670f, 0.567311899983420800f, 0.566680114279501710f,
  0.566047995212271560f,
  0.565415543153589770f, 0.564782758475511400f, 0.564149641550287680f,
  0.563516192750364910f,
  0.562882412448384550f, 0.562248301017183150f, 0.561613858829792420f,
  0.560979086259438260f,
  0.560343983679540860f, 0.559708551463714790f, 0.559072789985768480f,
  0.558436699619704100f,
  0.557800280739717100f, 0.557163533720196340f, 0.556526458935723720f,
  0.555889056761073920f,
  0.555251327571214090f, 0.554613271741304040f, 0.553974889646695610f,
  0.553336181662932410f,
  0.552697148165749770f, 0.552057789531074980f, 0.551418106135026060f,
  0.550778098353912230f,
  0.550137766564233630f, 0.549497111142680960f, 0.548856132466135290f,
  0.548214830911667780f,
  0.547573206856539870f, 0.546931260678202190f, 0.546288992754295210f,
  0.545646403462648590f,
  0.545003493181281160f, 0.544360262288400400f, 0.543716711162402390f,
  0.543072840181871850f,
  0.542428649725581360f, 0.541784140172491660f, 0.541139311901750910f,
  0.540494165292695230f,
  0.539848700724847700f, 0.539202918577918240f, 0.538556819231804210f,
  0.537910403066588990f,
  0.537263670462542530f, 0.536616621800121150f, 0.535969257459966710f,
  0.535321577822907010f,
  0.534673583269955510f, 0.534025274182310380f, 0.533376650941355560f,
  0.532727713928658810f,
  0.532078463525973540f, 0.531428900115236910f, 0.530779024078570250f,
  0.530128835798278850f,
  0.529478335656852090f, 0.528827524036961980f, 0.528176401321464370f,
  0.527524967893398200f,
  0.526873224135984700f, 0.526221170432628170f, 0.525568807166914680f,
  0.524916134722612890f,
  0.524263153483673470f, 0.523609863834228030f, 0.522956266158590140f,
  0.522302360841254700f,
  0.521648148266897090f, 0.520993628820373810f, 0.520338802886721960f,
  0.519683670851158520f,
  0.519028233099080970f, 0.518372490016066220f, 0.517716441987871150f,
  0.517060089400432130f,
  0.516403432639863990f, 0.515746472092461380f, 0.515089208144697270f,
  0.514431641183222930f,
  0.513773771594868030f, 0.513115599766640560f, 0.512457126085725800f,
  0.511798350939487000f,
  0.511139274715464390f, 0.510479897801375700f, 0.509820220585115560f,
  0.509160243454754750f,
  0.508499966798540810f, 0.507839391004897940f, 0.507178516462425290f,
  0.506517343559898530f,
  0.505855872686268860f, 0.505194104230662240f, 0.504532038582380380f,
  0.503869676130898950f,
  0.503207017265869030f, 0.502544062377115800f, 0.501880811854638400f,
  0.501217266088609950f,
  0.500553425469377640f, 0.499889290387461380f, 0.499224861233555030f,
  0.498560138398525200f,
  0.497895122273410930f, 0.497229813249424340f, 0.496564211717949340f,
  0.495898318070542240f,
  0.495232132698931350f, 0.494565655995016010f, 0.493898888350867430f,
  0.493231830158728070f,
  0.492564481811010650f, 0.491896843700299240f, 0.491228916219348330f,
  0.490560699761082080f,
  0.489892194718595300f, 0.489223401485152030f, 0.488554320454186230f,
  0.487884952019301210f,
  0.487215296574268820f, 0.486545354513030270f, 0.485875126229695420f,
  0.485204612118541880f,
  0.484533812574016120f, 0.483862727990732320f, 0.483191358763471910f,
  0.482519705287184520f,
  0.481847767956986080f, 0.481175547168160360f, 0.480503043316157670f,
  0.479830256796594250f,
  0.479157188005253310f, 0.478483837338084080f, 0.477810205191201040f,
  0.477136291960884750f,
  0.476462098043581310f, 0.475787623835901120f, 0.475112869734620470f,
  0.474437836136679340f,
  0.473762523439182850f, 0.473086932039400220f, 0.472411062334764100f,
  0.471734914722871430f,
  0.471058489601482610f, 0.470381787368520710f, 0.469704808422072460f,
  0.469027553160387240f,
  0.468350021981876530f, 0.467672215285114710f, 0.466994133468838110f,
  0.466315776931944480f,
  0.465637146073493770f, 0.464958241292706740f, 0.464279062988965760f,
  0.463599611561814120f,
  0.462919887410955130f, 0.462239890936253280f, 0.461559622537733190f,
  0.460879082615578690f,
  0.460198271570134270f, 0.459517189801903590f, 0.458835837711549120f,
  0.458154215699893230f,
  0.457472324167916110f, 0.456790163516757220f, 0.456107734147714220f,
  0.455425036462242420f,
  0.454742070861955450f, 0.454058837748624540f, 0.453375337524177750f,
  0.452691570590700860f,
  0.452007537350436530f, 0.451323238205783520f, 0.450638673559297760f,
  0.449953843813690580f,
  0.449268749371829920f, 0.448583390636739300f, 0.447897768011597360f,
  0.447211881899738260f,
  0.446525732704651400f, 0.445839320829980350f, 0.445152646679523590f,
  0.444465710657234110f,
  0.443778513167218280f, 0.443091054613736990f, 0.442403335401204130f,
  0.441715355934187310f,
  0.441027116617407340f, 0.440338617855737300f, 0.439649860054203420f,
  0.438960843617984430f,
  0.438271568952410480f, 0.437582036462964340f, 0.436892246555280470f,
  0.436202199635143950f,
  0.435511896108492170f, 0.434821336381412350f, 0.434130520860143310f,
  0.433439449951074200f,
  0.432748124060743760f, 0.432056543595841450f, 0.431364708963206440f,
  0.430672620569826860f,
  0.429980278822840570f, 0.429287684129534720f, 0.428594836897344400f,
  0.427901737533854240f,
  0.427208386446796370f, 0.426514784044051520f, 0.425820930733648350f,
  0.425126826923762410f,
  0.424432473022717420f, 0.423737869438983950f, 0.423043016581179100f,
  0.422347914858067000f,
  0.421652564678558380f, 0.420956966451709440f, 0.420261120586723050f,
  0.419565027492946940f,
  0.418868687579875110f, 0.418172101257146430f, 0.417475268934544340f,
  0.416778191021997590f,
  0.416080867929579320f, 0.415383300067506290f, 0.414685487846140010f,
  0.413987431675985510f,
  0.413289131967690960f, 0.412590589132048380f, 0.411891803579992220f,
  0.411192775722600160f,
  0.410493505971092520f, 0.409793994736831200f, 0.409094242431320920f,
  0.408394249466208110f,
  0.407694016253280170f, 0.406993543204466460f, 0.406292830731837470f,
  0.405591879247603870f,
  0.404890689164117750f, 0.404189260893870750f, 0.403487594849495310f,
  0.402785691443763640f,
  0.402083551089587040f, 0.401381174200016790f, 0.400678561188243350f,
  0.399975712467595390f,
  0.399272628451540930f, 0.398569309553686360f, 0.397865756187775750f,
  0.397161968767691720f,
  0.396457947707453960f, 0.395753693421220080f, 0.395049206323284880f,
  0.394344486828079650f,
  0.393639535350172880f, 0.392934352304269600f, 0.392228938105210370f,
  0.391523293167972350f,
  0.390817417907668610f, 0.390111312739546910f, 0.389404978078991100f,
  0.388698414341519250f,
  0.387991621942784910f, 0.387284601298575890f, 0.386577352824813980f,
  0.385869876937555310f,
  0.385162174052989970f, 0.384454244587440870f, 0.383746088957365010f,
  0.383037707579352130f,
  0.382329100870124510f, 0.381620269246537520f, 0.380911213125578130f,
  0.380201932924366050f,
  0.379492429060152740f, 0.378782701950320600f, 0.378072752012383990f,
  0.377362579663988450f,
  0.376652185322909620f, 0.375941569407054420f, 0.375230732334460030f,
  0.374519674523293210f,
  0.373808396391851370f, 0.373096898358560690f, 0.372385180841977360f,
  0.371673244260786630f,
  0.370961089033802040f, 0.370248715579966360f, 0.369536124318350760f,
  0.368823315668153960f,
  0.368110290048703050f, 0.367397047879452820f, 0.366683589579984930f,
  0.365969915570008910f,
  0.365256026269360380f, 0.364541922098002180f, 0.363827603476023610f,
  0.363113070823639530f,
  0.362398324561191310f, 0.361683365109145950f, 0.360968192888095290f,
  0.360252808318756830f,
  0.359537211821973180f, 0.358821403818710860f, 0.358105384730061760f,
  0.357389154977241000f,
  0.356672714981588260f, 0.355956065164567010f, 0.355239205947763370f,
  0.354522137752887430f,
  0.353804861001772160f, 0.353087376116372530f, 0.352369683518766630f,
  0.351651783631154680f,
  0.350933676875858360f, 0.350215363675321740f, 0.349496844452109600f,
  0.348778119628908420f,
  0.348059189628525780f, 0.347340054873889190f, 0.346620715788047320f,
  0.345901172794169100f,
  0.345181426315542610f, 0.344461476775576480f, 0.343741324597798600f,
  0.343020970205855540f,
  0.342300414023513690f, 0.341579656474657210f, 0.340858697983289440f,
  0.340137538973531880f,
  0.339416179869623410f, 0.338694621095921190f, 0.337972863076899830f,
  0.337250906237150650f,
  0.336528751001382350f, 0.335806397794420560f, 0.335083847041206580f,
  0.334361099166798900f,
  0.333638154596370920f, 0.332915013755212650f, 0.332191677068729320f,
  0.331468144962440920f,
  0.330744417861982890f, 0.330020496193105530f, 0.329296380381672800f,
  0.328572070853663690f,
  0.327847568035170960f, 0.327122872352400510f, 0.326397984231672660f,
  0.325672904099419900f,
  0.324947632382188430f, 0.324222169506637130f, 0.323496515899536760f,
  0.322770671987770710f,
  0.322044638198334620f, 0.321318414958334910f, 0.320592002694990330f,
  0.319865401835630610f,
  0.319138612807695900f, 0.318411636038737960f, 0.317684471956418020f,
  0.316957120988508150f,
  0.316229583562890490f, 0.315501860107556040f, 0.314773951050606070f,
  0.314045856820250820f,
  0.313317577844809070f, 0.312589114552708660f, 0.311860467372486130f,
  0.311131636732785270f,
  0.310402623062358880f, 0.309673426790066490f, 0.308944048344875710f,
  0.308214488155861220f,
  0.307484746652204160f, 0.306754824263192780f, 0.306024721418221900f,
  0.305294438546791720f,
  0.304563976078509050f, 0.303833334443086470f, 0.303102514070341060f,
  0.302371515390196130f,
  0.301640338832678880f, 0.300908984827921890f, 0.300177453806162120f,
  0.299445746197739950f,
  0.298713862433100390f, 0.297981802942791920f, 0.297249568157465890f,
  0.296517158507877410f,
  0.295784574424884370f, 0.295051816339446720f, 0.294318884682627570f,
  0.293585779885591310f,
  0.292852502379604810f, 0.292119052596036540f, 0.291385430966355720f,
  0.290651637922133220f,
  0.289917673895040860f, 0.289183539316850310f, 0.288449234619434170f,
  0.287714760234765280f,
  0.286980116594915570f, 0.286245304132057120f, 0.285510323278461380f,
  0.284775174466498300f,
  0.284039858128637360f, 0.283304374697445790f, 0.282568724605589740f,
  0.281832908285833460f,
  0.281096926171038320f, 0.280360778694163810f, 0.279624466288266700f,
  0.278887989386500280f,
  0.278151348422115090f, 0.277414543828458200f, 0.276677576038972420f,
  0.275940445487197320f,
  0.275203152606767370f, 0.274465697831413220f, 0.273728081594960650f,
  0.272990304331329980f,
  0.272252366474536660f, 0.271514268458690810f, 0.270776010717996010f,
  0.270037593686750510f,
  0.269299017799346230f, 0.268560283490267890f, 0.267821391194094320f,
  0.267082341345496350f,
  0.266343134379238180f, 0.265603770730176440f, 0.264864250833259320f,
  0.264124575123527490f,
  0.263384744036113390f, 0.262644758006240100f, 0.261904617469222560f,
  0.261164322860466590f,
  0.260423874615468010f, 0.259683273169813930f, 0.258942518959180580f,
  0.258201612419334870f,
  0.257460553986133210f, 0.256719344095520720f, 0.255977983183532380f,
  0.255236471686291820f,
  0.254494810040010790f, 0.253752998680989940f, 0.253011038045617980f,
  0.252268928570370810f,
  0.251526670691812780f, 0.250784264846594550f, 0.250041711471454650f,
  0.249299011003218300f,
  0.248556163878796620f, 0.247813170535187620f, 0.247070031409475370f,
  0.246326746938829060f,
  0.245583317560504000f, 0.244839743711840750f, 0.244096025830264210f,
  0.243352164353284880f,
  0.242608159718496890f, 0.241864012363579210f, 0.241119722726294730f,
  0.240375291244489500f,
  0.239630718356093560f, 0.238886004499120170f, 0.238141150111664870f,
  0.237396155631906550f,
  0.236651021498106460f, 0.235905748148607370f, 0.235160336021834860f,
  0.234414785556295250f,
  0.233669097190576820f, 0.232923271363349120f, 0.232177308513361770f,
  0.231431209079445730f,
  0.230684973500512310f, 0.229938602215552260f, 0.229192095663636740f,
  0.228445454283916550f,
  0.227698678515621170f, 0.226951768798059980f, 0.226204725570620270f,
  0.225457549272768540f,
  0.224710240344049570f, 0.223962799224085520f, 0.223215226352576960f,
  0.222467522169301990f,
  0.221719687114115240f, 0.220971721626949060f, 0.220223626147812460f,
  0.219475401116790340f,
  0.218727046974044600f, 0.217978564159812290f, 0.217229953114406790f,
  0.216481214278216900f,
  0.215732348091705940f, 0.214983354995412820f, 0.214234235429951100f,
  0.213484989836008080f,
  0.212735618654345870f, 0.211986122325800410f, 0.211236501291280710f,
  0.210486755991769890f,
  0.209736886868323370f, 0.208986894362070070f, 0.208236778914211470f,
  0.207486540966020700f,
  0.206736180958843660f, 0.205985699334098050f, 0.205235096533272380f,
  0.204484372997927180f,
  0.203733529169694010f, 0.202982565490274460f, 0.202231482401441620f,
  0.201480280345037820f,
  0.200728959762976140f, 0.199977521097239290f, 0.199225964789878890f,
  0.198474291283016360f,
  0.197722501018842030f, 0.196970594439614370f, 0.196218571987660850f,
  0.195466434105377090f,
  0.194714181235225990f, 0.193961813819739010f, 0.193209332301514080f,
  0.192456737123216840f,
  0.191704028727579940f, 0.190951207557401860f, 0.190198274055548120f,
  0.189445228664950340f,
  0.188692071828605260f, 0.187938803989575850f, 0.187185425590990440f,
  0.186431937076041640f,
  0.185678338887987790f, 0.184924631470150870f, 0.184170815265917720f,
  0.183416890718739230f,
  0.182662858272129360f, 0.181908718369666160f, 0.181154471454990920f,
  0.180400117971807270f,
  0.179645658363882100f, 0.178891093075044830f, 0.178136422549186320f,
  0.177381647230260200f,
  0.176626767562280960f, 0.175871783989325040f, 0.175116696955530060f,
  0.174361506905093830f,
  0.173606214282275410f, 0.172850819531394200f, 0.172095323096829040f,
  0.171339725423019260f,
  0.170584026954463700f, 0.169828228135719880f, 0.169072329411405180f,
  0.168316331226194910f,
  0.167560234024823590f, 0.166804038252083870f, 0.166047744352825850f,
  0.165291352771957970f,
  0.164534863954446110f, 0.163778278345312690f, 0.163021596389637810f,
  0.162264818532558110f,
  0.161507945219266150f, 0.160750976895011390f, 0.159993914005098350f,
  0.159236756994887850f,
  0.158479506309796100f, 0.157722162395293690f, 0.156964725696906750f,
  0.156207196660216040f,
  0.155449575730855880f, 0.154691863354515400f, 0.153934059976937460f,
  0.153176166043917870f,
  0.152418182001306500f, 0.151660108295005400f, 0.150901945370970040f,
  0.150143693675208330f,
  0.149385353653779810f, 0.148626925752796540f, 0.147868410418422360f,
  0.147109808096871850f,
  0.146351119234411440f, 0.145592344277358450f, 0.144833483672080240f,
  0.144074537864995330f,
  0.143315507302571590f, 0.142556392431327340f, 0.141797193697830530f,
  0.141037911548697770f,
  0.140278546430595420f, 0.139519098790238600f, 0.138759569074390380f,
  0.137999957729862760f,
  0.137240265203515700f, 0.136480491942256310f, 0.135720638393040080f,
  0.134960705002868830f,
  0.134200692218792020f, 0.133440600487905820f, 0.132680430257352130f,
  0.131920181974319760f,
  0.131159856086043410f, 0.130399453039802740f, 0.129638973282923540f,
  0.128878417262776660f,
  0.128117785426777150f, 0.127357078222385570f, 0.126596296097105960f,
  0.125835439498487020f,
  0.125074508874121300f, 0.124313504671644300f, 0.123552427338735370f,
  0.122791277323116900f,
  0.122030055072553410f, 0.121268761034852550f, 0.120507395657864240f,
  0.119745959389479630f,
  0.118984452677632520f, 0.118222875970297250f, 0.117461229715489990f,
  0.116699514361267840f,
  0.115937730355727850f, 0.115175878147008180f, 0.114413958183287050f,
  0.113651970912781920f,
  0.112889916783750470f, 0.112127796244489750f, 0.111365609743335190f,
  0.110603357728661910f,
  0.109841040648882680f, 0.109078658952449240f, 0.108316213087851300f,
  0.107553703503615710f,
  0.106791130648307380f, 0.106028494970528530f, 0.105265796918917650f,
  0.104503036942150550f,
  0.103740215488939480f, 0.102977333008032250f, 0.102214389948213370f,
  0.101451386758302160f,
  0.100688323887153970f, 0.099925201783659226f, 0.099162020896742573f,
  0.098398781675363881f,
  0.097635484568517339f, 0.096872130025230527f, 0.096108718494565468f,
  0.095345250425617742f,
  0.094581726267515473f, 0.093818146469420494f, 0.093054511480527333f,
  0.092290821750062355f,
  0.091527077727284981f, 0.090763279861485704f, 0.089999428601987341f,
  0.089235524398144139f,
  0.088471567699340822f, 0.087707558954993645f, 0.086943498614549489f,
  0.086179387127484922f,
  0.085415224943307277f, 0.084651012511553700f, 0.083886750281790226f,
  0.083122438703613077f,
  0.082358078226646619f, 0.081593669300544638f, 0.080829212374989468f,
  0.080064707899690932f,
  0.079300156324387569f, 0.078535558098845590f, 0.077770913672857989f,
  0.077006223496245585f,
  0.076241488018856149f, 0.075476707690563416f, 0.074711882961268378f,
  0.073947014280897269f,
  0.073182102099402888f, 0.072417146866763538f, 0.071652149032982254f,
  0.070887109048087787f,
  0.070122027362133646f, 0.069356904425197236f, 0.068591740687380900f,
  0.067826536598810966f,
  0.067061292609636836f, 0.066296009170032283f, 0.065530686730193397f,
  0.064765325740339871f,
  0.063999926650714078f, 0.063234489911580136f, 0.062469015973224969f,
  0.061703505285957416f,
  0.060937958300107238f, 0.060172375466026218f, 0.059406757234087247f,
  0.058641104054683348f,
  0.057875416378229017f, 0.057109694655158132f, 0.056343939335925283f,
  0.055578150871004817f,
  0.054812329710889909f, 0.054046476306093640f, 0.053280591107148056f,
  0.052514674564603257f,
  0.051748727129028414f, 0.050982749251010900f, 0.050216741381155325f,
  0.049450703970084824f,
  0.048684637468439020f, 0.047918542326875327f, 0.047152418996068000f,
  0.046386267926707213f,
  0.045620089569500123f, 0.044853884375169933f, 0.044087652794454979f,
  0.043321395278109784f,
  0.042555112276904117f, 0.041788804241622082f, 0.041022471623063397f,
  0.040256114872041358f,
  0.039489734439384118f, 0.038723330775933762f, 0.037956904332545366f,
  0.037190455560088091f,
  0.036423984909444228f, 0.035657492831508264f, 0.034890979777187955f,
  0.034124446197403423f,
  0.033357892543086159f, 0.032591319265180385f, 0.031824726814640963f,
  0.031058115642434700f,
  0.030291486199539423f, 0.029524838936943035f, 0.028758174305644590f,
  0.027991492756653365f,
  0.027224794740987910f, 0.026458080709677145f, 0.025691351113759395f,
  0.024924606404281485f,
  0.024157847032300020f, 0.023391073448879338f, 0.022624286105092803f,
  0.021857485452021874f,
  0.021090671940755180f, 0.020323846022389572f, 0.019557008148029204f,
  0.018790158768784596f,
  0.018023298335773701f, 0.017256427300120978f, 0.016489546112956454f,
  0.015722655225417017f,
  0.014955755088644378f, 0.014188846153786343f, 0.013421928871995907f,
  0.012655003694430301f,
  0.011888071072252072f, 0.011121131456628141f, 0.010354185298728884f,
  0.009587233049729183f,
  0.008820275160807512f, 0.008053312083144991f, 0.007286344267926684f,
  0.006519372166339549f,
  0.005752396229573737f, 0.004985416908821652f, 0.004218434655277024f,
  0.003451449920135975f,
  0.002684463154596083f, 0.001917474809855460f, 0.001150485337113809f,
  0.000383495187571497f
};

static const float32_t cos_factors_8192[8192] = {
  1.999999990808214700, 1.999999917273932200, 1.999999770205369800,
    1.999999549602533100,
  1.999999255465430200, 1.999998887794072000, 1.999998446588471700,
    1.999997931848645600,
  1.999997343574612800, 1.999996681766395000, 1.999995946424016200,
    1.999995137547503600,
  1.999994255136887000, 1.999993299192198700, 1.999992269713474200,
    1.999991166700750800,
  1.999989990154069600, 1.999988740073473500, 1.999987416459008600,
    1.999986019310723500,
  1.999984548628669600, 1.999983004412901000, 1.999981386663474400,
    1.999979695380449400,
  1.999977930563888100, 1.999976092213855400, 1.999974180330418700,
    1.999972194913648900,
  1.999970135963618400, 1.999968003480403000, 1.999965797464081200,
    1.999963517914734100,
  1.999961164832445800, 1.999958738217302300, 1.999956238069392900,
    1.999953664388809800,
  1.999951017175647600, 1.999948296430003500, 1.999945502151977600,
    1.999942634341672600,
  1.999939692999193900, 1.999936678124649700, 1.999933589718150700,
    1.999930427779810900,
  1.999927192309745900, 1.999923883308075200, 1.999920500774920300,
    1.999917044710405500,
  1.999913515114657900, 1.999909911987807200, 1.999906235329986100,
    1.999902485141329400,
  1.999898661421975400, 1.999894764172064600, 1.999890793391740000,
    1.999886749081147800,
  1.999882631240436700, 1.999878439869758200, 1.999874174969266300,
    1.999869836539117700,
  1.999865424579472000, 1.999860939090491600, 1.999856380072341000,
    1.999851747525188200,
  1.999847041449203300, 1.999842261844559700, 1.999837408711432600,
    1.999832482050000900,
  1.999827481860445300, 1.999822408142949900, 1.999817260897701400,
    1.999812040124888700,
  1.999806745824704000, 1.999801377997341800, 1.999795936642999600,
    1.999790421761877400,
  1.999784833354177900, 1.999779171420106700, 1.999773435959872000,
    1.999767626973684400,
  1.999761744461757700, 1.999755788424308200, 1.999749758861554900,
    1.999743655773719400,
  1.999737479161026100, 1.999731229023702200, 1.999724905361977200,
    1.999718508176084000,
  1.999712037466257600, 1.999705493232735800, 1.999698875475759600,
    1.999692184195571900,
  1.999685419392419000, 1.999678581066549400, 1.999671669218214600,
    1.999664683847668800,
  1.999657624955168700, 1.999650492540973900, 1.999643286605346800,
    1.999636007148552400,
  1.999628654170857900, 1.999621227672533800, 1.999613727653853500,
    1.999606154115092500,
  1.999598507056529000, 1.999590786478444600, 1.999582992381123000,
    1.999575124764850800,
  1.999567183629917100, 1.999559168976613900, 1.999551080805236100,
    1.999542919116081000,
  1.999534683909448600, 1.999526375185641800, 1.999517992944965800,
    1.999509537187729200,
  1.999501007914242600, 1.999492405124819700, 1.999483728819776900,
    1.999474978999432800,
  1.999466155664109600, 1.999457258814131500, 1.999448288449825500,
    1.999439244571521700,
  1.999430127179552500, 1.999420936274252800, 1.999411671855960900,
    1.999402333925017300,
  1.999392922481765500, 1.999383437526551300, 1.999373879059723500,
    1.999364247081633500,
  1.999354541592635500, 1.999344762593086500, 1.999334910083345700,
    1.999324984063775700,
  1.999314984534741100, 1.999304911496609700, 1.999294764949752100,
    1.999284544894541100,
  1.999274251331352400, 1.999263884260564600, 1.999253443682558900,
    1.999242929597719200,
  1.999232342006432000, 1.999221680909086400, 1.999210946306074500,
    1.999200138197791100,
  1.999189256584633600, 1.999178301467001900, 1.999167272845298900,
    1.999156170719930100,
  1.999144995091303600, 1.999133745959830600, 1.999122423325924200,
    1.999111027190001000,
  1.999099557552479900, 1.999088014413782800, 1.999076397774334000,
    1.999064707634560700,
  1.999052943994892300, 1.999041106855761900, 1.999029196217604100,
    1.999017212080857400,
  1.999005154445962200, 1.998993023313361700, 1.998980818683502100,
    1.998968540556831800,
  1.998956188933802800, 1.998943763814868800, 1.998931265200486900,
    1.998918693091116200,
  1.998906047487219600, 1.998893328389261400, 1.998880535797709700,
    1.998867669713034500,
  1.998854730135709400, 1.998841717066209400, 1.998828630505013400,
    1.998815470452602400,
  1.998802236909460500, 1.998788929876074100, 1.998775549352932400,
    1.998762095340527400,
  1.998748567839354000, 1.998734966849909000, 1.998721292372693100,
    1.998707544408208700,
  1.998693722956961500, 1.998679828019459300, 1.998665859596213500,
    1.998651817687737300,
  1.998637702294547000, 1.998623513417161700, 1.998609251056103100,
    1.998594915211895600,
  1.998580505885066100, 1.998566023076144600, 1.998551466785663400,
    1.998536837014157900,
  1.998522133762165900, 1.998507357030227900, 1.998492506818887200,
    1.998477583128690100,
  1.998462585960185000, 1.998447515313923400, 1.998432371190459500,
    1.998417153590349900,
  1.998401862514154200, 1.998386497962434800, 1.998371059935756300,
    1.998355548434686400,
  1.998339963459795400, 1.998324305011656600, 1.998308573090845200,
    1.998292767697940100,
  1.998276888833522300, 1.998260936498175400, 1.998244910692486000,
    1.998228811417043700,
  1.998212638672439900, 1.998196392459269400, 1.998180072778129600,
    1.998163679629620500,
  1.998147213014344900, 1.998130672932908000, 1.998114059385918400,
    1.998097372373986300,
  1.998080611897725700, 1.998063777957752600, 1.998046870554686100,
    1.998029889689147700,
  1.998012835361761900, 1.997995707573155600, 1.997978506323958600,
    1.997961231614803200,
  1.997943883446324800, 1.997926461819161000, 1.997908966733952500,
    1.997891398191342400,
  1.997873756191977000, 1.997856040736504500, 1.997838251825576400,
    1.997820389459846700,
  1.997802453639972300, 1.997784444366612600, 1.997766361640429800,
    1.997748205462088500,
  1.997729975832256600, 1.997711672751604200, 1.997693296220804000,
    1.997674846240532000,
  1.997656322811466500, 1.997637725934288300, 1.997619055609681600,
    1.997600311838332500,
  1.997581494620930300, 1.997562603958166600, 1.997543639850736200,
    1.997524602299336500,
  1.997505491304667000, 1.997486306867430900, 1.997467048988333000,
    1.997447717668082000,
  1.997428312907388200, 1.997408834706965000, 1.997389283067528800,
    1.997369657989798400,
  1.997349959474495200, 1.997330187522343700, 1.997310342134070800,
    1.997290423310406100,
  1.997270431052081900, 1.997250365359833200, 1.997230226234397900,
    1.997210013676516700,
  1.997189727686932400, 1.997169368266390900, 1.997148935415640600,
    1.997128429135433400,
  1.997107849426522600, 1.997087196289665000, 1.997066469725620200,
    1.997045669735150000,
  1.997024796319019300, 1.997003849477995600, 1.996982829212848900,
    1.996961735524351900,
  1.996940568413280600, 1.996919327880412900, 1.996898013926530000,
    1.996876626552415400,
  1.996855165758855600, 1.996833631546639300, 1.996812023916558800,
    1.996790342869408000,
  1.996768588405984300, 1.996746760527087700, 1.996724859233520500,
    1.996702884526087900,
  1.996680836405598100, 1.996658714872861800, 1.996636519928692000,
    1.996614251573904900,
  1.996591909809319400, 1.996569494635756600, 1.996547006054041100,
    1.996524444064999400,
  1.996501808669461000, 1.996479099868258400, 1.996456317662226300,
    1.996433462052202600,
  1.996410533039027400, 1.996387530623543900, 1.996364454806597500,
    1.996341305589037100,
  1.996318082971713500, 1.996294786955480800, 1.996271417541195300,
    1.996247974729716200,
  1.996224458521905600, 1.996200868918628100, 1.996177205920750800,
    1.996153469529144100,
  1.996129659744680300, 1.996105776568235100, 1.996081820000686500,
    1.996057790042915500,
  1.996033686695805300, 1.996009509960242400, 1.995985259837115500,
    1.995960936327316300,
  1.995936539431739000, 1.995912069151280800, 1.995887525486841300,
    1.995862908439323100,
  1.995838218009630800, 1.995813454198672700, 1.995788617007359100,
    1.995763706436603200,
  1.995738722487320600, 1.995713665160430600, 1.995688534456853800,
    1.995663330377514400,
  1.995638052923339300, 1.995612702095257400, 1.995587277894201400,
    1.995561780321105600,
  1.995536209376907600, 1.995510565062547800, 1.995484847378968600,
    1.995459056327116000,
  1.995433191907938000, 1.995407254122385700, 1.995381242971412600,
    1.995355158455975200,
  1.995329000577032800, 1.995302769335546500, 1.995276464732481200,
    1.995250086768804100,
  1.995223635445484900, 1.995197110763496000, 1.995170512723813100,
    1.995143841327413400,
  1.995117096575278200, 1.995090278468390600, 1.995063387007736600,
    1.995036422194304700,
  1.995009384029086800, 1.994982272513076600, 1.994955087647271000,
    1.994927829432669800,
  1.994900497870274900, 1.994873092961091200, 1.994845614706126400,
    1.994818063106391000,
  1.994790438162897600, 1.994762739876662100, 1.994734968248702800,
    1.994707123280041100,
  1.994679204971700100, 1.994651213324707000, 1.994623148340090700,
    1.994595010018883000,
  1.994566798362118300, 1.994538513370834200, 1.994510155046070700,
    1.994481723388870100,
  1.994453218400277900, 1.994424640081342100, 1.994395988433113700,
    1.994367263456646100,
  1.994338465152995000, 1.994309593523219600, 1.994280648568381500,
    1.994251630289544600,
  1.994222538687776100, 1.994193373764145500, 1.994164135519725000,
    1.994134823955589800,
  1.994105439072817700, 1.994075980872488800, 1.994046449355686200,
    1.994016844523496000,
  1.993987166377006600, 1.993957414917308700, 1.993927590145496900,
    1.993897692062667200,
  1.993867720669919400, 1.993837675968354700, 1.993807557959078600,
    1.993777366643197900,
  1.993747102021822900, 1.993716764096066200, 1.993686352867043200,
    1.993655868335872300,
  1.993625310503674100, 1.993594679371572200, 1.993563974940692800,
    1.993533197212164800,
  1.993502346187119700, 1.993471421866692200, 1.993440424252018900,
    1.993409353344239600,
  1.993378209144496700, 1.993346991653935300, 1.993315700873703200,
    1.993284336804950900,
  1.993252899448831400, 1.993221388806500900, 1.993189804879117500,
    1.993158147667842800,
  1.993126417173840500, 1.993094613398277400, 1.993062736342323000,
    1.993030786007148800,
  1.992998762393930000, 1.992966665503844000, 1.992934495338070800,
    1.992902251897793000,
  1.992869935184196300, 1.992837545198469000, 1.992805081941801700,
    1.992772545415388200,
  1.992739935620424700, 1.992707252558110200, 1.992674496229646500,
    1.992641666636237700,
  1.992608763779091000, 1.992575787659416100, 1.992542738278425300,
    1.992509615637334100,
  1.992476419737359900, 1.992443150579723500, 1.992409808165648100,
    1.992376392496359300,
  1.992342903573086000, 1.992309341397059600, 1.992275705969513800,
    1.992241997291685400,
  1.992208215364813700, 1.992174360190140900, 1.992140431768911500,
    1.992106430102373400,
  1.992072355191776300, 1.992038207038373300, 1.992003985643419700,
    1.991969691008174100,
  1.991935323133897000, 1.991900882021852200, 1.991866367673306200,
    1.991831780089527500,
  1.991797119271788300, 1.991762385221362600, 1.991727577939527600,
    1.991692697427563300,
  1.991657743686751700, 1.991622716718378400, 1.991587616523731000,
    1.991552443104099800,
  1.991517196460778500, 1.991481876595062800, 1.991446483508251500,
    1.991411017201645500,
  1.991375477676549100, 1.991339864934268800, 1.991304178976114100,
    1.991268419803397200,
  1.991232587417432600, 1.991196681819537900, 1.991160703011033200,
    1.991124650993241400,
  1.991088525767488200, 1.991052327335101300, 1.991016055697411900,
    1.990979710855753900,
  1.990943292811463000, 1.990906801565878600, 1.990870237120342400,
    1.990833599476198800,
  1.990796888634794400, 1.990760104597479400, 1.990723247365606200,
    1.990686316940529800,
  1.990649313323608100, 1.990612236516201300, 1.990575086519673200,
    1.990537863335389400,
  1.990500566964718400, 1.990463197409031700, 1.990425754669703100,
    1.990388238748109100,
  1.990350649645629600, 1.990312987363646000, 1.990275251903543600,
    1.990237443266709400,
  1.990199561454533600, 1.990161606468409300, 1.990123578309731700,
    1.990085476979899000,
  1.990047302480312300, 1.990009054812374800, 1.989970733977493000,
    1.989932339977075900,
  1.989893872812535000, 1.989855332485284800, 1.989816718996742200,
    1.989778032348326700,
  1.989739272541461100, 1.989700439577570400, 1.989661533458082100,
    1.989622554184426800,
  1.989583501758037700, 1.989544376180350600, 1.989505177452804100,
    1.989465905576839600,
  1.989426560553900500, 1.989387142385433900, 1.989347651072888900,
    1.989308086617717500,
  1.989268449021374300, 1.989228738285316900, 1.989188954411005100,
    1.989149097399901500,
  1.989109167253472000, 1.989069163973184300, 1.989029087560509700,
    1.988988938016921000,
  1.988948715343894900, 1.988908419542910100, 1.988868050615448100,
    1.988827608562993200,
  1.988787093387032600, 1.988746505089055600, 1.988705843670554500,
    1.988665109133024500,
  1.988624301477963200, 1.988583420706871100, 1.988542466821251000,
    1.988501439822608900,
  1.988460339712453200, 1.988419166492295000, 1.988377920163648000,
    1.988336600728029000,
  1.988295208186956700, 1.988253742541953800, 1.988212203794544000,
    1.988170591946255100,
  1.988128906998616800, 1.988087148953161700, 1.988045317811425700,
    1.988003413574946000,
  1.987961436245263800, 1.987919385823922400, 1.987877262312467600,
    1.987835065712448600,
  1.987792796025416500, 1.987750453252925500, 1.987708037396532800,
    1.987665548457797400,
  1.987622986438281700, 1.987580351339550700, 1.987537643163171700,
    1.987494861910715100,
  1.987452007583754100, 1.987409080183863800, 1.987366079712622900,
    1.987323006171612500,
  1.987279859562415900, 1.987236639886619700, 1.987193347145813000,
    1.987149981341587400,
  1.987106542475537400, 1.987063030549260300, 1.987019445564355700,
    1.986975787522426100,
  1.986932056425076800, 1.986888252273915500, 1.986844375070552900,
    1.986800424816602200,
  1.986756401513679400, 1.986712305163403000, 1.986668135767394300,
    1.986623893327277500,
  1.986579577844678900, 1.986535189321228000, 1.986490727758556800,
    1.986446193158300400,
  1.986401585522095600, 1.986356904851583000, 1.986312151148405200,
    1.986267324414207500,
  1.986222424650638400, 1.986177451859348200, 1.986132406041990900,
    1.986087287200222700,
  1.986042095335702300, 1.985996830450091200, 1.985951492545054100,
    1.985906081622257300,
  1.985860597683371000, 1.985815040730067200, 1.985769410764020900,
    1.985723707786909900,
  1.985677931800414500, 1.985632082806217900, 1.985586160806005700,
    1.985540165801466200,
  1.985494097794290800, 1.985447956786173100, 1.985401742778809500,
    1.985355455773899500,
  1.985309095773144500, 1.985262662778249300, 1.985216156790921000,
    1.985169577812869500,
  1.985122925845807400, 1.985076200891450000, 1.985029402951515200,
    1.984982532027723700,
  1.984935588121798700, 1.984888571235466200, 1.984841481370454900,
    1.984794318528496200,
  1.984747082711324100, 1.984699773920675300, 1.984652392158289500,
    1.984604937425908300,
  1.984557409725276700, 1.984509809058142300, 1.984462135426255000,
    1.984414388831367900,
  1.984366569275236400, 1.984318676759618400, 1.984270711286275200,
    1.984222672856969800,
  1.984174561473469200, 1.984126377137541700, 1.984078119850959200,
    1.984029789615495900,
  1.983981386432928800, 1.983932910305037400, 1.983884361233604100,
    1.983835739220414000,
  1.983787044267254700, 1.983738276375916800, 1.983689435548192900,
    1.983640521785879200,
  1.983591535090773800, 1.983542475464678000, 1.983493342909395500,
    1.983444137426732600,
  1.983394859018498900, 1.983345507686505900, 1.983296083432567900,
    1.983246586258502700,
  1.983197016166129400, 1.983147373157271300, 1.983097657233753100,
    1.983047868397403100,
  1.982998006650051400, 1.982948071993531700, 1.982898064429679900,
    1.982847983960334600,
  1.982797830587336800, 1.982747604312531200, 1.982697305137763700,
    1.982646933064884200,
  1.982596488095744300, 1.982545970232199000, 1.982495379476105800,
    1.982444715829324600,
  1.982393979293718200, 1.982343169871152000, 1.982292287563494300,
    1.982241332372615600,
  1.982190304300389400, 1.982139203348692200, 1.982088029519402300,
    1.982036782814401900,
  1.981985463235574700, 1.981934070784807400, 1.981882605463990200,
    1.981831067275015000,
  1.981779456219776600, 1.981727772300172500, 1.981676015518103500,
    1.981624185875472000,
  1.981572283374183800, 1.981520308016147200, 1.981468259803273300,
    1.981416138737475800,
  1.981363944820670800, 1.981311678054777500, 1.981259338441717400,
    1.981206925983415300,
  1.981154440681797800, 1.981101882538794900, 1.981049251556338900,
    1.980996547736364900,
  1.980943771080810700, 1.980890921591616600, 1.980837999270726100,
    1.980785004120084700,
  1.980731936141640900, 1.980678795337345900, 1.980625581709153600,
    1.980572295259020600,
  1.980518935988905700, 1.980465503900771000, 1.980411998996581200,
    1.980358421278303200,
  1.980304770747907300, 1.980251047407365600, 1.980197251258653900,
    1.980143382303749500,
  1.980089440544633600, 1.980035425983289300, 1.979981338621702200,
    1.979927178461861500,
  1.979872945505758000, 1.979818639755386100, 1.979764261212742400,
    1.979709809879825800,
  1.979655285758638900, 1.979600688851186100, 1.979546019159474900,
    1.979491276685515300,
  1.979436461431320000, 1.979381573398904400, 1.979326612590286400,
    1.979271579007487100,
  1.979216472652529900, 1.979161293527440500, 1.979106041634248100,
    1.979050716974983800,
  1.978995319551682100, 1.978939849366379700, 1.978884306421115900,
    1.978828690717932900,
  1.978773002258875600, 1.978717241045991700, 1.978661407081331100,
    1.978605500366946700,
  1.978549520904894000, 1.978493468697231300, 1.978437343746019600,
    1.978381146053322000,
  1.978324875621205300, 1.978268532451738200, 1.978212116546992100,
    1.978155627909041300,
  1.978099066539962900, 1.978042432441836400, 1.977985725616743900,
    1.977928946066770600,
  1.977872093794004200, 1.977815168800534500, 1.977758171088455100,
    1.977701100659861300,
  1.977643957516851400, 1.977586741661526500, 1.977529453095990200,
    1.977472091822348700,
  1.977414657842711200, 1.977357151159189400, 1.977299571773897700,
    1.977241919688953000,
  1.977184194906475000, 1.977126397428586000, 1.977068527257411300,
    1.977010584395078300,
  1.976952568843717700, 1.976894480605462500, 1.976836319682448300,
    1.976778086076813600,
  1.976719779790699500, 1.976661400826249500, 1.976602949185610500,
    1.976544424870931400,
  1.976485827884363800, 1.976427158228062100, 1.976368415904183900,
    1.976309600914888400,
  1.976250713262338600, 1.976191752948699200, 1.976132719976138000,
    1.976073614346825800,
  1.976014436062935700, 1.975955185126643300, 1.975895861540127200,
    1.975836465305568400,
  1.975776996425151000, 1.975717454901061400, 1.975657840735488800,
    1.975598153930624900,
  1.975538394488664200, 1.975478562411804100, 1.975418657702244300,
    1.975358680362187400,
  1.975298630393838500, 1.975238507799405500, 1.975178312581099100,
    1.975118044741132300,
  1.975057704281721000, 1.974997291205083700, 1.974936805513442000,
    1.974876247209019100,
  1.974815616294042200, 1.974754912770740200, 1.974694136641345300,
    1.974633287908091500,
  1.974572366573216400, 1.974511372638960000, 1.974450306107564900,
    1.974389166981275900,
  1.974327955262341400, 1.974266670953011400, 1.974205314055540000,
    1.974143884572182400,
  1.974082382505197400, 1.974020807856846400, 1.973959160629393100,
    1.973897440825104200,
  1.973835648446248900, 1.973773783495099500, 1.973711845973930000,
    1.973649835885018100,
  1.973587753230643400, 1.973525598013088800, 1.973463370234639600,
    1.973401069897583200,
  1.973338697004211100, 1.973276251556815600, 1.973213733557693400,
    1.973151143009142800,
  1.973088479913465100, 1.973025744272964200, 1.972962936089946800,
    1.972900055366722000,
  1.972837102105601900, 1.972774076308901200, 1.972710977978936900,
    1.972647807118029300,
  1.972584563728500700, 1.972521247812676600, 1.972457859372884500,
    1.972394398411455800,
  1.972330864930723200, 1.972267258933022600, 1.972203580420693000,
    1.972139829396075200,
  1.972076005861513700, 1.972012109819354600, 1.971948141271947500,
    1.971884100221644300,
  1.971819986670799500, 1.971755800621770400, 1.971691542076916800,
    1.971627211038601500,
  1.971562807509189800, 1.971498331491049700, 1.971433782986551400,
    1.971369161998068400,
  1.971304468527976800, 1.971239702578655000, 1.971174864152484400,
    1.971109953251848600,
  1.971044969879134600, 1.970979914036731500, 1.970914785727030800,
    1.970849584952427900,
  1.970784311715319400, 1.970718966018105500, 1.970653547863188600,
    1.970588057252973900,
  1.970522494189869800, 1.970456858676286300, 1.970391150714636800,
    1.970325370307337100,
  1.970259517456806100, 1.970193592165464700, 1.970127594435737000,
    1.970061524270049400,
  1.969995381670831100, 1.969929166640514100, 1.969862879181532700,
    1.969796519296324300,
  1.969730086987328900, 1.969663582256988600, 1.969597005107748900,
    1.969530355542057800,
  1.969463633562365400, 1.969396839171125200, 1.969329972370792700,
    1.969263033163826800,
  1.969196021552688500, 1.969128937539841500, 1.969061781127752400,
    1.968994552318890300,
  1.968927251115727200, 1.968859877520737300, 1.968792431536398000,
    1.968724913165188900,
  1.968657322409592500, 1.968589659272094000, 1.968521923755181000,
    1.968454115861344000,
  1.968386235593076300, 1.968318282952873600, 1.968250257943234200,
    1.968182160566659000,
  1.968113990825652200, 1.968045748722719900, 1.967977434260371300,
    1.967909047441118100,
  1.967840588267474500, 1.967772056741957900, 1.967703452867087800,
    1.967634776645386600,
  1.967566028079379200, 1.967497207171593500, 1.967428313924559600,
    1.967359348340810700,
  1.967290310422882700, 1.967221200173313400, 1.967152017594644200,
    1.967082762689418500,
  1.967013435460182700, 1.966944035909485600, 1.966874564039879300,
    1.966805019853917500,
  1.966735403354157500, 1.966665714543159000, 1.966595953423483800,
    1.966526119997697100,
  1.966456214268366600, 1.966386236238062200, 1.966316185909357200,
    1.966246063284826700,
  1.966175868367049400, 1.966105601158605600, 1.966035261662079300,
    1.965964849880056600,
  1.965894365815126000, 1.965823809469879400, 1.965753180846910900,
    1.965682479948817100,
  1.965611706778197700, 1.965540861337654600, 1.965469943629792700,
    1.965398953657219600,
  1.965327891422544900, 1.965256756928382100, 1.965185550177345900,
    1.965114271172054800,
  1.965042919915129400, 1.964971496409193100, 1.964900000656872000,
    1.964828432660794500,
  1.964756792423592200, 1.964685079947899200, 1.964613295236352000,
    1.964541438291590000,
  1.964469509116255000, 1.964397507712991800, 1.964325434084447600,
    1.964253288233272400,
  1.964181070162119000, 1.964108779873642100, 1.964036417370500300,
    1.963963982655353400,
  1.963891475730865400, 1.963818896599701400, 1.963746245264530700,
    1.963673521728023900,
  1.963600725992855200, 1.963527858061700600, 1.963454917937239800,
    1.963381905622154400,
  1.963308821119128700, 1.963235664430850200, 1.963162435560008100,
    1.963089134509295300,
  1.963015761281406800, 1.962942315879040000, 1.962868798304895400,
    1.962795208561676200,
  1.962721546652088200, 1.962647812578839400, 1.962574006344640900,
    1.962500127952206300,
  1.962426177404252200, 1.962352154703497200, 1.962278059852663000,
    1.962203892854473800,
  1.962129653711656800, 1.962055342426941400, 1.961980959003059500,
    1.961906503442746300,
  1.961831975748739200, 1.961757375923778700, 1.961682703970607100,
    1.961607959891970200,
  1.961533143690616000, 1.961458255369295400, 1.961383294930761700,
    1.961308262377770900,
  1.961233157713082200, 1.961157980939456400, 1.961082732059657800,
    1.961007411076453000,
  1.960932017992611500, 1.960856552810905200, 1.960781015534108800,
    1.960705406164999300,
  1.960629724706357100, 1.960553971160964500, 1.960478145531606700,
    1.960402247821071900,
  1.960326278032150200, 1.960250236167635100, 1.960174122230322400,
    1.960097936223010400,
  1.960021678148500500, 1.959945348009596500, 1.959868945809104500,
    1.959792471549834000,
  1.959715925234596600, 1.959639306866206600, 1.959562616447480900,
    1.959485853981239600,
  1.959409019470304700, 1.959332112917501400, 1.959255134325657000,
    1.959178083697602300,
  1.959100961036169800, 1.959023766344195200, 1.958946499624516700,
    1.958869160879975500,
  1.958791750113414700, 1.958714267327680500, 1.958636712525621900,
    1.958559085710090500,
  1.958481386883940100, 1.958403616050027600, 1.958325773211212300,
    1.958247858370356400,
  1.958169871530324600, 1.958091812693984400, 1.958013681864205500,
    1.957935479043860600,
  1.957857204235825100, 1.957778857442976900, 1.957700438668196700,
    1.957621947914367500,
  1.957543385184375300, 1.957464750481108700, 1.957386043807458800,
    1.957307265166319500,
  1.957228414560587200, 1.957149491993160900, 1.957070497466942400,
    1.956991430984836400,
  1.956912292549749500, 1.956833082164591600, 1.956753799832275300,
    1.956674445555715000,
  1.956595019337829000, 1.956515521181537000, 1.956435951089762200,
    1.956356309065430100,
  1.956276595111468900, 1.956196809230809500, 1.956116951426385600,
    1.956037021701132900,
  1.955957020057990500, 1.955876946499899700, 1.955796801029804800,
    1.955716583650652000,
  1.955636294365391300, 1.955555933176974300, 1.955475500088355900,
    1.955394995102493100,
  1.955314418222346100, 1.955233769450877200, 1.955153048791052000,
    1.955072256245838000,
  1.954991391818206000, 1.954910455511129000, 1.954829447327582900,
    1.954748367270545900,
  1.954667215342999600, 1.954585991547927100, 1.954504695888315000,
    1.954423328367152600,
  1.954341888987431100, 1.954260377752145000, 1.954178794664291200,
    1.954097139726869600,
  1.954015412942881900, 1.953933614315333200, 1.953851743847231100,
    1.953769801541585400,
  1.953687787401409400, 1.953605701429718100, 1.953523543629529700,
    1.953441314003864900,
  1.953359012555747200, 1.953276639288202400, 1.953194194204259200,
    1.953111677306948800,
  1.953029088599305100, 1.952946428084364900, 1.952863695765167100,
    1.952780891644753500,
  1.952698015726169100, 1.952615068012460300, 1.952532048506677300,
    1.952448957211872200,
  1.952365794131100300, 1.952282559267419100, 1.952199252623889200,
    1.952115874203572900,
  1.952032424009536600, 1.951948902044847900, 1.951865308312577900,
    1.951781642815800100,
  1.951697905557590700, 1.951614096541028500, 1.951530215769194700,
    1.951446263245173500,
  1.951362238972051500, 1.951278142952918200, 1.951193975190865600,
    1.951109735688987900,
  1.951025424450382900, 1.950941041478150100, 1.950856586775392200,
    1.950772060345214300,
  1.950687462190724200, 1.950602792315032200, 1.950518050721251600,
    1.950433237412498000,
  1.950348352391889600, 1.950263395662547700, 1.950178367227595900,
    1.950093267090159800,
  1.950008095253369200, 1.949922851720355100, 1.949837536494251700,
    1.949752149578196000,
  1.949666690975327100, 1.949581160688787400, 1.949495558721721500,
    1.949409885077276500,
  1.949324139758602700, 1.949238322768852800, 1.949152434111181700,
    1.949066473788747300,
  1.948980441804710300, 1.948894338162233900, 1.948808162864483600,
    1.948721915914628100,
  1.948635597315838200, 1.948549207071288000, 1.948462745184153400,
    1.948376211657613500,
  1.948289606494849800, 1.948202929699046800, 1.948116181273391100,
    1.948029361221072400,
  1.947942469545282500, 1.947855506249216700, 1.947768471336071700,
    1.947681364809048100,
  1.947594186671348000, 1.947506936926177300, 1.947419615576743600,
    1.947332222626257500,
  1.947244758077932200, 1.947157221934983500, 1.947069614200629900,
    1.946981934878092300,
  1.946894183970594900, 1.946806361481363500, 1.946718467413627300,
    1.946630501770618000,
  1.946542464555569800, 1.946454355771719300, 1.946366175422306500,
    1.946277923510573200,
  1.946189600039764300, 1.946101205013127000, 1.946012738433911600,
    1.945924200305370700,
  1.945835590630759400, 1.945746909413335900, 1.945658156656360700,
    1.945569332363096700,
  1.945480436536810100, 1.945391469180769200, 1.945302430298244900,
    1.945213319892511200,
  1.945124137966844200, 1.945034884524523100, 1.944945559568829200,
    1.944856163103046800,
  1.944766695130463000, 1.944677155654366900, 1.944587544678050900,
    1.944497862204809900,
  1.944408108237940700, 1.944318282780743900, 1.944228385836521700,
    1.944138417408579400,
  1.944048377500225100, 1.943958266114769200, 1.943868083255524800,
    1.943777828925807600,
  1.943687503128936200, 1.943597105868231500, 1.943506637147017300,
    1.943416096968619400,
  1.943325485336367300, 1.943234802253592400, 1.943144047723628400,
    1.943053221749812400,
  1.942962324335484100, 1.942871355483985200, 1.942780315198660200,
    1.942689203482856900,
  1.942598020339924700, 1.942506765773216500, 1.942415439786087300,
    1.942324042381895000,
  1.942232573564000000, 1.942141033335765400, 1.942049421700556600,
    1.941957738661741900,
  1.941865984222692900, 1.941774158386782200, 1.941682261157386700,
    1.941590292537884700,
  1.941498252531658200, 1.941406141142090600, 1.941313958372568900,
    1.941221704226482500,
  1.941129378707223000, 1.941036981818185400, 1.940944513562766300,
    1.940851973944365900,
  1.940759362966386600, 1.940666680632233200, 1.940573926945313700,
    1.940481101909038200,
  1.940388205526819600, 1.940295237802073500, 1.940202198738217900,
    1.940109088338673600,
  1.940015906606864300, 1.939922653546215500, 1.939829329160156500,
    1.939735933452118000,
  1.939642466425534300, 1.939548928083841800, 1.939455318430479500,
    1.939361637468889100,
  1.939267885202515400, 1.939174061634805000, 1.939080166769207700,
    1.938986200609175600,
  1.938892163158163700, 1.938798054419629500, 1.938703874397032800,
    1.938609623093837000,
  1.938515300513506700, 1.938420906659510600, 1.938326441535318500,
    1.938231905144404400,
  1.938137297490243500, 1.938042618576314400, 1.937947868406098500,
    1.937853046983079300,
  1.937758154310742900, 1.937663190392578500, 1.937568155232077600,
    1.937473048832734500,
  1.937377871198045600, 1.937282622331510500, 1.937187302236631500,
    1.937091910916912900,
  1.936996448375861900, 1.936900914616988900, 1.936805309643805800,
    1.936709633459828200,
  1.936613886068573500, 1.936518067473562300, 1.936422177678317300,
    1.936326216686364400,
  1.936230184501231500, 1.936134081126449800, 1.936037906565552400,
    1.935941660822075600,
  1.935845343899558000, 1.935748955801540800, 1.935652496531568000,
    1.935555966093186300,
  1.935459364489944500, 1.935362691725394500, 1.935265947803090900,
    1.935169132726590500,
  1.935072246499453000, 1.934975289125240500, 1.934878260607517900,
    1.934781160949852600,
  1.934683990155814800, 1.934586748228977100, 1.934489435172914900,
    1.934392050991206300,
  1.934294595687431300, 1.934197069265173500, 1.934099471728018700,
    1.934001803079554700,
  1.933904063323373300, 1.933806252463067500, 1.933708370502233800,
    1.933610417444471000,
  1.933512393293380600, 1.933414298052566600, 1.933316131725635800,
    1.933217894316197300,
  1.933119585827862900, 1.933021206264247600, 1.932922755628968100,
    1.932824233925644300,
  1.932725641157898600, 1.932626977329356100, 1.932528242443643900,
    1.932429436504392800,
  1.932330559515235100, 1.932231611479806800, 1.932132592401745400,
    1.932033502284691700,
  1.931934341132289100, 1.931835108948183300, 1.931735805736022800,
    1.931636431499459000,
  1.931536986242145200, 1.931437469967737900, 1.931337882679895900,
    1.931238224382281000,
  1.931138495078557300, 1.931038694772391200, 1.930938823467452500,
    1.930838881167413100,
  1.930738867875947400, 1.930638783596732700, 1.930538628333448900,
    1.930438402089778200,
  1.930338104869405900, 1.930237736676019500, 1.930137297513309300,
    1.930036787384968200,
  1.929936206294691400, 1.929835554246177400, 1.929734831243126600,
    1.929634037289242400,
  1.929533172388230700, 1.929432236543799900, 1.929331229759661200,
    1.929230152039528500,
  1.929129003387117800, 1.929027783806148300, 1.928926493300341400,
    1.928825131873421500,
  1.928723699529115000, 1.928622196271151800, 1.928520622103263400,
    1.928418977029184600,
  1.928317261052652700, 1.928215474177407100, 1.928113616407190600,
    1.928011687745748300,
  1.927909688196827400, 1.927807617764178300, 1.927705476451554000,
    1.927603264262709900,
  1.927500981201404100, 1.927398627271397000, 1.927296202476451900,
    1.927193706820335100,
  1.927091140306814500, 1.926988502939661400, 1.926885794722649600,
    1.926783015659555300,
  1.926680165754157500, 1.926577245010237400, 1.926474253431579500,
    1.926371191021970100,
  1.926268057785198700, 1.926164853725057300, 1.926061578845340600,
    1.925958233149845000,
  1.925854816642371000, 1.925751329326720600, 1.925647771206698600,
    1.925544142286112800,
  1.925440442568773000, 1.925336672058492300, 1.925232830759086000,
    1.925128918674371900,
  1.925024935808170600, 1.924920882164305300, 1.924816757746601800,
    1.924712562558888100,
  1.924608296604995800, 1.924503959888757900, 1.924399552414010700,
    1.924295074184593000,
  1.924190525204346300, 1.924085905477114400, 1.923981215006744100,
    1.923876453797084300,
  1.923771621851986700, 1.923666719175306100, 1.923561745770898900,
    1.923456701642625200,
  1.923351586794346900, 1.923246401229928600, 1.923141144953238300,
    1.923035817968145300,
  1.922930420278522500, 1.922824951888245000, 1.922719412801190600,
    1.922613803021239600,
  1.922508122552275100, 1.922402371398182600, 1.922296549562850100,
    1.922190657050168800,
  1.922084693864031700, 1.921978660008334600, 1.921872555486976700,
    1.921766380303858500,
  1.921660134462884100, 1.921553817967959900, 1.921447430822994500,
    1.921340973031900000,
  1.921234444598590100, 1.921127845526981600, 1.921021175820994100,
    1.920914435484549100,
  1.920807624521571700, 1.920700742935988600, 1.920593790731729600,
    1.920486767912727300,
  1.920379674482916500, 1.920272510446234400, 1.920165275806621400,
    1.920057970568020100,
  1.919950594734376000, 1.919843148309637000, 1.919735631297753400,
    1.919628043702678300,
  1.919520385528367300, 1.919412656778779000, 1.919304857457874200,
    1.919196987569616200,
  1.919089047117971100, 1.918981036106907700, 1.918872954540397300,
    1.918764802422413500,
  1.918656579756932800, 1.918548286547934400, 1.918439922799399800,
    1.918331488515313300,
  1.918222983699661600, 1.918114408356434300, 1.918005762489623400,
    1.917897046103223200,
  1.917788259201231200, 1.917679401787647100, 1.917570473866473200,
    1.917461475441714500,
  1.917352406517378600, 1.917243267097475700, 1.917134057186018300,
    1.917024776787022100,
  1.916915425904504700, 1.916806004542486800, 1.916696512704991500,
    1.916586950396044400,
  1.916477317619674100, 1.916367614379911100, 1.916257840680788900,
    1.916147996526343700,
  1.916038081920614400, 1.915928096867641800, 1.915818041371470000,
    1.915707915436145200,
  1.915597719065716700, 1.915487452264236000, 1.915377115035757200,
    1.915266707384337200,
  1.915156229314035200, 1.915045680828913400, 1.914935061933036300,
    1.914824372630470800,
  1.914713612925287100, 1.914602782821557000, 1.914491882323355700,
    1.914380911434760500,
  1.914269870159851700, 1.914158758502712000, 1.914047576467426500,
    1.913936324058083100,
  1.913825001278772100, 1.913713608133586600, 1.913602144626622500,
    1.913490610761977600,
  1.913379006543752800, 1.913267331976051400, 1.913155587062979500,
    1.913043771808645700,
  1.912931886217160900, 1.912819930292639000, 1.912707904039196300,
    1.912595807460951500,
  1.912483640562026200, 1.912371403346544400, 1.912259095818632700,
    1.912146717982420500,
  1.912034269842039600, 1.911921751401624200, 1.911809162665311500,
    1.911696503637241100,
  1.911583774321554700, 1.911470974722397500, 1.911358104843916500,
    1.911245164690262000,
  1.911132154265586100, 1.911019073574044200, 1.910905922619793800,
    1.910792701406995000,
  1.910679409939810600, 1.910566048222406300, 1.910452616258949900,
    1.910339114053611900,
  1.910225541610565800, 1.910111898933986900, 1.909998186028053700,
    1.909884402896947100,
  1.909770549544850500, 1.909656625975950200, 1.909542632194434700,
    1.909428568204495100,
  1.909314434010325400, 1.909200229616121700, 1.909085955026083200,
    1.908971610244411600,
  1.908857195275310800, 1.908742710122987700, 1.908628154791651300,
    1.908513529285513500,
  1.908398833608789100, 1.908284067765694900, 1.908169231760450400,
    1.908054325597278200,
  1.907939349280402400, 1.907824302814050900, 1.907709186202453600,
    1.907593999449842800,
  1.907478742560453600, 1.907363415538523700, 1.907248018388293400,
    1.907132551114005600,
  1.907017013719905600, 1.906901406210241200, 1.906785728589263300,
    1.906669980861224900,
  1.906554163030381500, 1.906438275100991600, 1.906322317077316300,
    1.906206288963618700,
  1.906090190764164700, 1.905974022483223300, 1.905857784125065500,
    1.905741475693964800,
  1.905625097194197900, 1.905508648630043700, 1.905392130005783400,
    1.905275541325701400,
  1.905158882594083900, 1.905042153815220700, 1.904925354993402900,
    1.904808486132925300,
  1.904691547238084800, 1.904574538313180700, 1.904457459362515200,
    1.904340310390393100,
  1.904223091401121600, 1.904105802399010300, 1.903988443388371600,
    1.903871014373520700,
  1.903753515358774800, 1.903635946348454500, 1.903518307346881800,
    1.903400598358382600,
  1.903282819387284200, 1.903164970437917400, 1.903047051514615000,
    1.902929062621712600,
  1.902811003763547900, 1.902692874944462300, 1.902574676168798700,
    1.902456407440902700,
  1.902338068765123200, 1.902219660145810800, 1.902101181587319000,
    1.901982633094004200,
  1.901864014670225000, 1.901745326320342500, 1.901626568048721000,
    1.901507739859726200,
  1.901388841757727600, 1.901269873747096600, 1.901150835832207100,
    1.901031728017436300,
  1.900912550307162700, 1.900793302705768900, 1.900673985217638900,
    1.900554597847159400,
  1.900435140598720500, 1.900315613476714100, 1.900196016485534700,
    1.900076349629579600,
  1.899956612913248800, 1.899836806340944300, 1.899716929917071500,
    1.899596983646037600,
  1.899476967532252900, 1.899356881580129800, 1.899236725794083600,
    1.899116500178532200,
  1.898996204737895900, 1.898875839476597700, 1.898755404399062900,
    1.898634899509719500,
  1.898514324812998300, 1.898393680313332600, 1.898272966015157800,
    1.898152181922912600,
  1.898031328041037700, 1.897910404373976500, 1.897789410926175000,
    1.897668347702081900,
  1.897547214706148300, 1.897426011942827900, 1.897304739416577200,
    1.897183397131854600,
  1.897061985093121800, 1.896940503304842800, 1.896818951771484000,
    1.896697330497514800,
  1.896575639487406300, 1.896453878745633100, 1.896332048276672100,
    1.896210148085002400,
  1.896088178175106200, 1.895966138551467700, 1.895844029218574100,
    1.895721850180915000,
  1.895599601442982600, 1.895477283009271400, 1.895354894884279100,
    1.895232437072505300,
  1.895109909578452500, 1.894987312406625700, 1.894864645561532100,
    1.894741909047682500,
  1.894619102869589100, 1.894496227031767100, 1.894373281538734400,
    1.894250266395011600,
  1.894127181605121100, 1.894004027173588700, 1.893880803104942600,
    1.893757509403713100,
  1.893634146074433500, 1.893510713121639300, 1.893387210549869000,
    1.893263638363663400,
  1.893139996567565900, 1.893016285166122500, 1.892892504163881600,
    1.892768653565394300,
  1.892644733375214300, 1.892520743597897700, 1.892396684238003300,
    1.892272555300092300,
  1.892148356788728700, 1.892024088708479200, 1.891899751063912200,
    1.891775343859599400,
  1.891650867100115300, 1.891526320790036100, 1.891401704933941100,
    1.891277019536412400,
  1.891152264602033800, 1.891027440135392600, 1.890902546141078000,
    1.890777582623682300,
  1.890652549587799700, 1.890527447038027300, 1.890402274978965100,
    1.890277033415215200,
  1.890151722351382200, 1.890026341792073500, 1.889900891741899100,
    1.889775372205471300,
  1.889649783187405100, 1.889524124692318200, 1.889398396724830500,
    1.889272599289564900,
  1.889146732391146400, 1.889020796034202700, 1.888894790223364600,
    1.888768714963264400,
  1.888642570258537700, 1.888516356113822700, 1.888390072533759700,
    1.888263719522991900,
  1.888137297086165000, 1.888010805227927000, 1.887884243952928600,
    1.887757613265823400,
  1.887630913171267000, 1.887504143673917700, 1.887377304778437000,
    1.887250396489487800,
  1.887123418811736500, 1.886996371749851700, 1.886869255308504200,
    1.886742069492368000,
  1.886614814306119400, 1.886487489754437300, 1.886360095842002600,
    1.886232632573499700,
  1.886105099953614900, 1.885977497987037000, 1.885849826678457800,
    1.885722086032571200,
  1.885594276054074300, 1.885466396747665700, 1.885338448118047700,
    1.885210430169924200,
  1.885082342908002400, 1.884954186336991400, 1.884825960461603100,
    1.884697665286552400,
  1.884569300816556000, 1.884440867056333700, 1.884312364010607600,
    1.884183791684102400,
  1.884055150081545200, 1.883926439207665800, 1.883797659067196800,
    1.883668809664872600,
  1.883539891005431100, 1.883410903093611900, 1.883281845934157800,
    1.883152719531813800,
  1.883023523891327300, 1.882894259017448900, 1.882764924914930700,
    1.882635521588528400,
  1.882506049042999700, 1.882376507283104900, 1.882246896313606800,
    1.882117216139270700,
  1.881987466764865100, 1.881857648195159900, 1.881727760434928500,
    1.881597803488946500,
  1.881467777361992100, 1.881337682058845700, 1.881207517584290600,
    1.881077283943112900,
  1.880946981140100500, 1.880816609180044700, 1.880686168067738500,
    1.880555657807977800,
  1.880425078405561600, 1.880294429865290600, 1.880163712191968300,
    1.880032925390400900,
  1.879902069465397200, 1.879771144421768200, 1.879640150264327600,
    1.879509086997891900,
  1.879377954627279700, 1.879246753157312700, 1.879115482592814500,
    1.878984142938611600,
  1.878852734199532900, 1.878721256380410100, 1.878589709486077300,
    1.878458093521370800,
  1.878326408491130200, 1.878194654400196600, 1.878062831253414900,
    1.877930939055631100,
  1.877798977811695200, 1.877666947526458700, 1.877534848204775800,
    1.877402679851504000,
  1.877270442471502100, 1.877138136069632400, 1.877005760650759500,
    1.876873316219750200,
  1.876740802781474500, 1.876608220340804100, 1.876475568902614000,
    1.876342848471781200,
  1.876210059053185600, 1.876077200651709500, 1.875944273272237800,
    1.875811276919657500,
  1.875678211598858800, 1.875545077314734000, 1.875411874072178100,
    1.875278601876088700,
  1.875145260731365700, 1.875011850642911600, 1.874878371615631900,
    1.874744823654434000,
  1.874611206764227800, 1.874477520949926500, 1.874343766216444800,
    1.874209942568701100,
  1.874076050011615400, 1.873942088550110400, 1.873808058189111700,
    1.873673958933546900,
  1.873539790788347100, 1.873405553758444600, 1.873271247848775400,
    1.873136873064277000,
  1.873002429409890600, 1.872867916890558900, 1.872733335511227700,
    1.872598685276845000,
  1.872463966192361900, 1.872329178262731200, 1.872194321492908700,
    1.872059395887852900,
  1.871924401452524700, 1.871789338191887100, 1.871654206110906500,
    1.871519005214550700,
  1.871383735507791100, 1.871248396995601300, 1.871112989682956800,
    1.870977513574836500,
  1.870841968676221400, 1.870706354992095000, 1.870570672527443600,
    1.870434921287255700,
  1.870299101276522400, 1.870163212500237900, 1.870027254963397800,
    1.869891228671001200,
  1.869755133628049600, 1.869618969839546500, 1.869482737310498100,
    1.869346436045913800,
  1.869210066050804600, 1.869073627330184700, 1.868937119889070300,
    1.868800543732480600,
  1.868663898865437200, 1.868527185292963700, 1.868390403020087100,
    1.868253552051836200,
  1.868116632393243000, 1.867979644049341200, 1.867842587025167800,
    1.867705461325761800,
  1.867568266956164800, 1.867431003921421500, 1.867293672226578300,
    1.867156271876684500,
  1.867018802876792200, 1.866881265231955500, 1.866743658947231300,
    1.866605984027679000,
  1.866468240478360600, 1.866330428304340300, 1.866192547510685300,
    1.866054598102465000,
  1.865916580084751500, 1.865778493462619100, 1.865640338241145100,
    1.865502114425408900,
  1.865363822020492700, 1.865225461031480900, 1.865087031463460900,
    1.864948533321522300,
  1.864809966610757400, 1.864671331336260600, 1.864532627503129100,
    1.864393855116463200,
  1.864255014181364500, 1.864116104702938000, 1.863977126686291200,
    1.863838080136534000,
  1.863698965058778300, 1.863559781458139300, 1.863420529339734100,
    1.863281208708683000,
  1.863141819570107900, 1.863002361929134500, 1.862862835790889400,
    1.862723241160503300,
  1.862583578043108100, 1.862443846443839300, 1.862304046367834200,
    1.862164177820232700,
  1.862024240806177800, 1.861884235330814300, 1.861744161399289600,
    1.861604019016754200,
  1.861463808188360500, 1.861323528919263800, 1.861183181214621600,
    1.861042765079594200,
  1.860902280519344500, 1.860761727539037300, 1.860621106143840500,
    1.860480416338924600,
  1.860339658129461800, 1.860198831520627900, 1.860057936517600700,
    1.859916973125560000,
  1.859775941349689000, 1.859634841195173100, 1.859493672667199800,
    1.859352435770959900,
  1.859211130511645900, 1.859069756894453400, 1.858928314924580300,
    1.858786804607227100,
  1.858645225947596300, 1.858503578950893900, 1.858361863622327400,
    1.858220079967107600,
  1.858078227990447300, 1.857936307697561900, 1.857794319093669900,
    1.857652262183991000,
  1.857510136973749000, 1.857367943468169100, 1.857225681672479300,
    1.857083351591910300,
  1.856940953231694900, 1.856798486597069000, 1.856655951693270600,
    1.856513348525540300,
  1.856370677099121100, 1.856227937419258700, 1.856085129491201100,
    1.855942253320199200,
  1.855799308911506100, 1.855656296270377300, 1.855513215402071000,
    1.855370066311848000,
  1.855226849004971500, 1.855083563486706900, 1.854940209762322700,
    1.854796787837089500,
  1.854653297716280400, 1.854509739405171300, 1.854366112909040300,
    1.854222418233168400,
  1.854078655382838300, 1.853934824363336200, 1.853790925179950500,
    1.853646957837971500,
  1.853502922342692600, 1.853358818699409900, 1.853214646913421200,
    1.853070406990027500,
  1.852926098934532200, 1.852781722752241000, 1.852637278448462200,
    1.852492766028506400,
  1.852348185497687300, 1.852203536861320600, 1.852058820124724300,
    1.851914035293219700,
  1.851769182372129600, 1.851624261366780400, 1.851479272282500000,
    1.851334215124619300,
  1.851189089898471800, 1.851043896609393400, 1.850898635262721900,
    1.850753305863798800,
  1.850607908417967200, 1.850462442930572900, 1.850316909406964200,
    1.850171307852492200,
  1.850025638272510000, 1.849879900672373600, 1.849734095057441200,
    1.849588221433073700,
  1.849442279804634600, 1.849296270177489800, 1.849150192557007300,
    1.849004046948558200,
  1.848857833357515900, 1.848711551789256300, 1.848565202249157400,
    1.848418784742600400,
  1.848272299274968500, 1.848125745851647800, 1.847979124478026100,
    1.847832435159495000,
  1.847685677901447200, 1.847538852709279100, 1.847391959588388300,
    1.847244998544176300,
  1.847097969582046200, 1.846950872707404000, 1.846803707925657600,
    1.846656475242218300,
  1.846509174662499300, 1.846361806191916000, 1.846214369835887500,
    1.846066865599834000,
  1.845919293489179000, 1.845771653509348200, 1.845623945665770100,
    1.845476169963875500,
  1.845328326409097400, 1.845180415006871800, 1.845032435762637100,
    1.844884388681833800,
  1.844736273769905300, 1.844588091032297400, 1.844439840474458200,
    1.844291522101838800,
  1.844143135919891900, 1.843994681934073600, 1.843846160149842200,
    1.843697570572658200,
  1.843548913207985000, 1.843400188061288000, 1.843251395138035800,
    1.843102534443698900,
  1.842953605983750400, 1.842804609763666100, 1.842655545788924000,
    1.842506414065004900,
  1.842357214597392100, 1.842207947391570900, 1.842058612453029600,
    1.841909209787258900,
  1.841759739399751800, 1.841610201296003800, 1.841460595481513100,
    1.841310921961780500,
  1.841161180742308500, 1.841011371828603200, 1.840861495226172600,
    1.840711550940526700,
  1.840561538977179200, 1.840411459341645400, 1.840261312039443100,
    1.840111097076092800,
  1.839960814457117600, 1.839810464188043100, 1.839660046274397100,
    1.839509560721709800,
  1.839359007535514400, 1.839208386721346500, 1.839057698284743500,
    1.838906942231246100,
  1.838756118566397200, 1.838605227295741800, 1.838454268424828400,
    1.838303241959206700,
  1.838152147904429800, 1.838000986266052900, 1.837849757049633900,
    1.837698460260732900,
  1.837547095904912700, 1.837395663987738700, 1.837244164514778600,
    1.837092597491602100,
  1.836940962923782700, 1.836789260816895000, 1.836637491176516600,
    1.836485654008228200,
  1.836333749317611700, 1.836181777110252900, 1.836029737391738700,
    1.835877630167659800,
  1.835725455443608200, 1.835573213225179400, 1.835420903517970500,
    1.835268526327581900,
  1.835116081659615700, 1.834963569519677100, 1.834810989913373500,
    1.834658342846314800,
  1.834505628324113200, 1.834352846352383700, 1.834199996936744000,
    1.834047080082813300,
  1.833894095796214400, 1.833741044082571900, 1.833587924947513100,
    1.833434738396668000,
  1.833281484435668400, 1.833128163070149300, 1.832974774305747600,
    1.832821318148103500,
  1.832667794602858400, 1.832514203675657600, 1.832360545372147900,
    1.832206819697979000,
  1.832053026658802700, 1.831899166260273700, 1.831745238508049300,
    1.831591243407788300,
  1.831437180965153100, 1.831283051185808300, 1.831128854075420500,
    1.830974589639659000,
  1.830820257884196100, 1.830665858814705600, 1.830511392436864800,
    1.830356858756352800,
  1.830202257778851300, 1.830047589510044500, 1.829892853955619200,
    1.829738051121264600,
  1.829583181012672400, 1.829428243635536500, 1.829273238995553700,
    1.829118167098423100,
  1.828963027949846100, 1.828807821555527000, 1.828652547921171900,
    1.828497207052490100,
  1.828341798955192900, 1.828186323634994200, 1.828030781097610400,
    1.827875171348760400,
  1.827719494394165500, 1.827563750239549400, 1.827407938890638600,
    1.827252060353161500,
  1.827096114632849700, 1.826940101735436500, 1.826784021666658400,
    1.826627874432253700,
  1.826471660037963800, 1.826315378489531800, 1.826159029792704400,
    1.826002613953229500,
  1.825846130976858100, 1.825689580869344100, 1.825532963636443000,
    1.825376279283913200,
  1.825219527817515800, 1.825062709243013800, 1.824905823566173000,
    1.824748870792761900,
  1.824591850928550800, 1.824434763979313300, 1.824277609950824700,
    1.824120388848863300,
  1.823963100679209600, 1.823805745447646600, 1.823648323159960100,
    1.823490833821937600,
  1.823333277439369600, 1.823175654018049300, 1.823017963563772000,
    1.822860206082335300,
  1.822702381579539800, 1.822544490061187800, 1.822386531533084900,
    1.822228506001038800,
  1.822070413470859600, 1.821912253948359700, 1.821754027439354400,
    1.821595733949661100,
  1.821437373485099900, 1.821278946051493100, 1.821120451654665700,
    1.820961890300445400,
  1.820803261994661500, 1.820644566743146800, 1.820485804551735800,
    1.820326975426265600,
  1.820168079372576300, 1.820009116396509800, 1.819850086503910700,
    1.819690989700625900,
  1.819531825992505500, 1.819372595385401000, 1.819213297885166900,
    1.819053933497660300,
  1.818894502228740600, 1.818735004084269600, 1.818575439070111200,
    1.818415807192132600,
  1.818256108456203000, 1.818096342868193800, 1.817936510433979300,
    1.817776611159436000,
  1.817616645050443000, 1.817456612112881900, 1.817296512352636300,
    1.817136345775592900,
  1.816976112387640700, 1.816815812194670700, 1.816655445202576700,
    1.816495011417255300,
  1.816334510844604700, 1.816173943490526400, 1.816013309360923900,
    1.815852608461703300,
  1.815691840798773000, 1.815531006378043900, 1.815370105205429600,
    1.815209137286846200,
  1.815048102628211500, 1.814887001235446600, 1.814725833114474700,
    1.814564598271221300,
  1.814403296711615000, 1.814241928441585800, 1.814080493467067300,
    1.813918991793994900,
  1.813757423428306000, 1.813595788375941700, 1.813434086642844400,
    1.813272318234959700,
  1.813110483158235400, 1.812948581418621500, 1.812786613022070700,
    1.812624577974538000,
  1.812462476281981200, 1.812300307950360300, 1.812138072985637800,
    1.811975771393778300,
  1.811813403180749300, 1.811650968352521000, 1.811488466915065000,
    1.811325898874356800,
  1.811163264236372900, 1.811000563007093100, 1.810837795192499400,
    1.810674960798576600,
  1.810512059831311400, 1.810349092296693400, 1.810186058200714100,
    1.810022957549368000,
  1.809859790348652200, 1.809696556604565300, 1.809533256323109200,
    1.809369889510288100,
  1.809206456172108200, 1.809042956314578900, 1.808879389943711200,
    1.808715757065519200,
  1.808552057686019200, 1.808388291811230000, 1.808224459447172800,
    1.808060560599871200,
  1.807896595275351200, 1.807732563479641300, 1.807568465218772900,
    1.807404300498778800,
  1.807240069325695400, 1.807075771705560800, 1.806911407644415700,
    1.806746977148303300,
  1.806582480223269500, 1.806417916875362000, 1.806253287110631600,
    1.806088590935131000,
  1.805923828354915900, 1.805758999376044100, 1.805594104004575800,
    1.805429142246573600,
  1.805264114108102900, 1.805099019595231200, 1.804933858714028700,
    1.804768631470567500,
  1.804603337870923000, 1.804437977921172300, 1.804272551627395400,
    1.804107058995674500,
  1.803941500032094200, 1.803775874742741500, 1.803610183133706400,
    1.803444425211080400,
  1.803278600980958300, 1.803112710449436900, 1.802946753622615400,
    1.802780730506595700,
  1.802614641107481900, 1.802448485431380900, 1.802282263484401300,
    1.802115975272655000,
  1.801949620802255600, 1.801783200079319900, 1.801616713109966300,
    1.801450159900316300,
  1.801283540456493700, 1.801116854784624400, 1.800950102890836800,
    1.800783284781262200,
  1.800616400462033800, 1.800449449939287800, 1.800282433219162000,
    1.800115350307797600,
  1.799948201211337500, 1.799780985935927300, 1.799613704487715200,
    1.799446356872851400,
  1.799278943097489100, 1.799111463167783400, 1.798943917089892000,
    1.798776304869975200,
  1.798608626514195800, 1.798440882028718500, 1.798273071419711000,
    1.798105194693343500,
  1.797937251855787700, 1.797769242913218800, 1.797601167871813800,
    1.797433026737752700,
  1.797264819517217200, 1.797096546216391900, 1.796928206841463800,
    1.796759801398622100,
  1.796591329894058800, 1.796422792333968000, 1.796254188724546500,
    1.796085519071992900,
  1.795916783382509200, 1.795747981662299200, 1.795579113917569200,
    1.795410180154527900,
  1.795241180379386800, 1.795072114598359200, 1.794902982817661500,
    1.794733785043511900,
  1.794564521282131300, 1.794395191539743400, 1.794225795822573600,
    1.794056334136850300,
  1.793886806488804100, 1.793717212884667900, 1.793547553330677300,
    1.793377827833070100,
  1.793208036398086900, 1.793038179031970000, 1.792868255740965000,
    1.792698266531319400,
  1.792528211409282900, 1.792358090381108300, 1.792187903453050100,
    1.792017650631366100,
  1.791847331922315600, 1.791676947332161000, 1.791506496867166600,
    1.791335980533599300,
  1.791165398337728900, 1.790994750285827000, 1.790824036384167900,
    1.790653256639028100,
  1.790482411056686800, 1.790311499643425500, 1.790140522405528200,
    1.789969479349281100,
  1.789798370480973000, 1.789627195806895200, 1.789455955333341100,
    1.789284649066606800,
  1.789113277012990900, 1.788941839178794100, 1.788770335570319700,
    1.788598766193873600,
  1.788427131055763600, 1.788255430162300400, 1.788083663519796800,
    1.787911831134568300,
  1.787739933012932900, 1.787567969161210300, 1.787395939585723500,
    1.787223844292797500,
  1.787051683288759500, 1.786879456579939700, 1.786707164172670200,
    1.786534806073285700,
  1.786362382288123400, 1.786189892823522700, 1.786017337685825700,
    1.785844716881376700,
  1.785672030416522300, 1.785499278297612000, 1.785326460530997300,
    1.785153577123032000,
  1.784980628080072900, 1.784807613408478300, 1.784634533114609800,
    1.784461387204831400,
  1.784288175685508700, 1.784114898563010200, 1.783941555843707100,
    1.783768147533972200,
  1.783594673640181800, 1.783421134168713800, 1.783247529125948900,
    1.783073858518269700,
  1.782900122352062000, 1.782726320633713200, 1.782552453369613800,
    1.782378520566156200,
  1.782204522229735600, 1.782030458366749200, 1.781856328983596900,
    1.781682134086680900,
  1.781507873682406200, 1.781333547777179200, 1.781159156377410100,
    1.780984699489510200,
  1.780810177119894100, 1.780635589274978600, 1.780460935961182300,
    1.780286217184927000,
  1.780111432952636600, 1.779936583270737400, 1.779761668145658300,
    1.779586687583830200,
  1.779411641591686500, 1.779236530175663600, 1.779061353342199500,
    1.778886111097735000,
  1.778710803448713400, 1.778535430401580100, 1.778359991962783000,
    1.778184488138772900,
  1.778008918936002000, 1.777833284360925900, 1.777657584420002000,
    1.777481819119690200,
  1.777305988466453000, 1.777130092466755200, 1.776954131127064200,
    1.776778104453849100,
  1.776602012453582400, 1.776425855132738100, 1.776249632497793200,
    1.776073344555227000,
  1.775896991311520800, 1.775720572773158900, 1.775544088946627600,
    1.775367539838415700,
  1.775190925455014400, 1.775014245802917200, 1.774837500888620400,
    1.774660690718622000,
  1.774483815299423100, 1.774306874637527000, 1.774129868739439100,
    1.773952797611667100,
  1.773775661260722100, 1.773598459693116500, 1.773421192915365400,
    1.773243860933986400,
  1.773066463755499800, 1.772889001386427800, 1.772711473833295200,
    1.772533881102629000,
  1.772356223200959100, 1.772178500134817100, 1.772000711910737700,
    1.771822858535257600,
  1.771644940014915700, 1.771466956356254000, 1.771288907565816000,
    1.771110793650148500,
  1.770932614615799800, 1.770754370469321400, 1.770576061217266500,
    1.770397686866191300,
  1.770219247422653700, 1.770040742893215000, 1.769862173284438000,
    1.769683538602888000,
  1.769504838855133100, 1.769326074047743700, 1.769147244187292200,
    1.768968349280353800,
  1.768789389333506000, 1.768610364353328600, 1.768431274346403900,
    1.768252119319316400,
  1.768072899278653200, 1.767893614231003800, 1.767714264182959500,
    1.767534849141115100,
  1.767355369112067100, 1.767175824102414000, 1.766996214118757800,
    1.766816539167701800,
  1.766636799255852300, 1.766456994389817600, 1.766277124576209000,
    1.766097189821639300,
  1.765917190132724600, 1.765737125516083000, 1.765556995978334800,
    1.765376801526102700,
  1.765196542166012100, 1.765016217904690900, 1.764835828748768400,
    1.764655374704877700,
  1.764474855779653200, 1.764294271979732100, 1.764113623311754000,
    1.763932909782361100,
  1.763752131398197200, 1.763571288165909400, 1.763390380092146400,
    1.763209407183560200,
  1.763028369446804500, 1.762847266888535100, 1.762666099515411100,
    1.762484867334093400,
  1.762303570351245300, 1.762122208573532600, 1.761940782007623600,
    1.761759290660188400,
  1.761577734537900500, 1.761396113647435000, 1.761214427995469100,
    1.761032677588683800,
  1.760850862433760700, 1.760668982537384900, 1.760487037906243600,
    1.760305028547026500,
  1.760122954466425600, 1.759940815671135100, 1.759758612167851700,
    1.759576343963274600,
  1.759394011064105100, 1.759211613477047200, 1.759029151208807400,
    1.758846624266093800,
  1.758664032655617500, 1.758481376384092500, 1.758298655458233600,
    1.758115869884759700,
  1.757933019670390800, 1.757750104821850000, 1.757567125345862700,
    1.757384081249156100,
  1.757200972538460700, 1.757017799220508500, 1.756834561302034400,
    1.756651258789775800,
  1.756467891690471700, 1.756284460010864200, 1.756100963757697900,
    1.755917402937718900,
  1.755733777557676500, 1.755550087624322000, 1.755366333144409200,
    1.755182514124693900,
  1.754998630571935200, 1.754814682492893600, 1.754630669894332600,
    1.754446592783017500,
  1.754262451165716300, 1.754078245049199600, 1.753893974440240000,
    1.753709639345612600,
  1.753525239772095100, 1.753340775726466700, 1.753156247215510400,
    1.752971654246010300,
  1.752786996824753600, 1.752602274958529500, 1.752417488654129700,
    1.752232637918348200,
  1.752047722757981600, 1.751862743179828600, 1.751677699190690400,
    1.751492590797370600,
  1.751307418006674800, 1.751122180825411800, 1.750936879260391700,
    1.750751513318427700,
  1.750566083006335600, 1.750380588330932500, 1.750195029299038900,
    1.750009405917477100,
  1.749823718193071800, 1.749637966132650900, 1.749452149743043100,
    1.749266269031080700,
  1.749080324003598100, 1.748894314667431800, 1.748708241029421000,
    1.748522103096407300,
  1.748335900875233900, 1.748149634372747200, 1.747963303595795500,
    1.747776908551230000,
  1.747590449245904000, 1.747403925686672500, 1.747217337880393900,
    1.747030685833928200,
  1.746843969554138200, 1.746657189047889200, 1.746470344322048200,
    1.746283435383485100,
  1.746096462239072000, 1.745909424895683200, 1.745722323360195900,
    1.745535157639489100,
  1.745347927740444200, 1.745160633669945200, 1.744973275434878300,
    1.744785853042132300,
  1.744598366498598200, 1.744410815811169300, 1.744223200986741100,
    1.744035522032211900,
  1.743847778954482000, 1.743659971760454200, 1.743472100457033700,
    1.743284165051127700,
  1.743096165549646400, 1.742908101959502100, 1.742719974287608900,
    1.742531782540884100,
  1.742343526726246800, 1.742155206850618800, 1.741966822920923800,
    1.741778374944088000,
  1.741589862927040800, 1.741401286876712800, 1.741212646800037300,
    1.741023942703950200,
  1.740835174595389600, 1.740646342481295900, 1.740457446368612000,
    1.740268486264283200,
  1.740079462175256900, 1.739890374108482600, 1.739701222070913200,
    1.739512006069502800,
  1.739322726111208500, 1.739133382202989500, 1.738943974351807600,
    1.738754502564626700,
  1.738564966848413100, 1.738375367210135400, 1.738185703656765200,
    1.737995976195275000,
  1.737806184832640900, 1.737616329575841300, 1.737426410431856200,
    1.737236427407668800,
  1.737046380510263800, 1.736856269746629000, 1.736666095123754000,
    1.736475856648631400,
  1.736285554328254900, 1.736095188169622500, 1.735904758179732400,
    1.735714264365586700,
  1.735523706734189100, 1.735333085292545900, 1.735142400047666100,
    1.734951651006560100,
  1.734760838176241400, 1.734569961563725600, 1.734379021176030600,
    1.734188017020177100,
  1.733996949103187500, 1.733805817432086900, 1.733614622013902600,
    1.733423362855664100,
  1.733232039964403900, 1.733040653347156300, 1.732849203010957900,
    1.732657688962847600,
  1.732466111209867200, 1.732274469759060200, 1.732082764617472800,
    1.731890995792153600,
  1.731699163290153100, 1.731507267118524500, 1.731315307284323700,
    1.731123283794607800,
  1.730931196656437600, 1.730739045876875200, 1.730546831462985500,
    1.730354553421835600,
  1.730162211760495300, 1.729969806486036500, 1.729777337605533000,
    1.729584805126061400,
  1.729392209054700900, 1.729199549398532400, 1.729006826164639400,
    1.728814039360108100,
  1.728621188992026400, 1.728428275067485100, 1.728235297593577100,
    1.728042256577397200,
  1.727849152026043500, 1.727655983946615700, 1.727462752346216000,
    1.727269457231948900,
  1.727076098610921500, 1.726882676490243000, 1.726689190877025000,
    1.726495641778381200,
  1.726302029201427900, 1.726108353153283900, 1.725914613641069900,
    1.725720810671909300,
  1.725526944252927700, 1.725333014391252900, 1.725139021094015200,
    1.724944964368347000,
  1.724750844221383500, 1.724556660660261800, 1.724362413692121400,
    1.724168103324104300,
  1.723973729563354600, 1.723779292417019200, 1.723584791892246700,
    1.723390227996188600,
  1.723195600735998100, 1.723000910118831300, 1.722806156151846400,
    1.722611338842204000,
  1.722416458197066900, 1.722221514223600100, 1.722026506928971500,
    1.721831436320350800,
  1.721636302404910200, 1.721441105189824000, 1.721245844682269600,
    1.721050520889425600,
  1.720855133818473900, 1.720659683476597900, 1.720464169870984200,
    1.720268593008821100,
  1.720072952897299100, 1.719877249543611900, 1.719681482954954500,
    1.719485653138524800,
  1.719289760101522900, 1.719093803851151400, 1.718897784394614900,
    1.718701701739120400,
  1.718505555891877400, 1.718309346860097600, 1.718113074650995200,
    1.717916739271786500,
  1.717720340729689700, 1.717523879031926500, 1.717327354185719900,
    1.717130766198295700,
  1.716934115076881800, 1.716737400828708400, 1.716540623461008100,
    1.716343782981016200,
  1.716146879395969500, 1.715949912713108100, 1.715752882939673300,
    1.715555790082909900,
  1.715358634150064000, 1.715161415148384500, 1.714964133085122900,
    1.714766787967532600,
  1.714569379802868900, 1.714371908598390800, 1.714174374361358000,
    1.713976777099033700,
  1.713779116818682900, 1.713581393527573000, 1.713383607232973600,
    1.713185757942156800,
  1.712987845662396800, 1.712789870400970700, 1.712591832165157200,
    1.712393730962237500,
  1.712195566799495500, 1.711997339684216700, 1.711799049623689900,
    1.711600696625205300,
  1.711402280696055800, 1.711203801843536700, 1.711005260074945200,
    1.710806655397581600,
  1.710607987818747700, 1.710409257345748100, 1.710210463985889500,
    1.710011607746480600,
  1.709812688634833300, 1.709613706658261100, 1.709414661824080000,
    1.709215554139608400,
  1.709016383612166600, 1.708817150249077900, 1.708617854057667300,
    1.708418495045262300,
  1.708219073219193300, 1.708019588586791700, 1.707820041155392500,
    1.707620430932332400,
  1.707420757924950300, 1.707221022140587900, 1.707021223586588700,
    1.706821362270298600,
  1.706621438199066300, 1.706421451380242000, 1.706221401821179200,
    1.706021289529232800,
  1.705821114511760300, 1.705620876776121600, 1.705420576329679000,
    1.705220213179796900,
  1.705019787333842200, 1.704819298799183700, 1.704618747583193100,
    1.704418133693243800,
  1.704217457136711900, 1.704016717920976000, 1.703815916053416300,
    1.703615051541415900,
  1.703414124392360000, 1.703213134613636100, 1.703012082212634000,
    1.702810967196746000,
  1.702609789573366300, 1.702408549349891500, 1.702207246533721000,
    1.702005881132255800,
  1.701804453152900000, 1.701602962603059100, 1.701401409490141300,
    1.701199793821557300,
  1.700998115604720000, 1.700796374847044300, 1.700594571555948100,
    1.700392705738850400,
  1.700190777403173700, 1.699988786556342300, 1.699786733205783000,
    1.699584617358924400,
  1.699382439023197700, 1.699180198206036600, 1.698977894914877100,
    1.698775529157156700,
  1.698573100940316400, 1.698370610271798800, 1.698168057159048700,
    1.697965441609513300,
  1.697762763630642700, 1.697560023229888200, 1.697357220414704500,
    1.697154355192547900,
  1.696951427570877000, 1.696748437557152900, 1.696545385158839200,
    1.696342270383401200,
  1.696139093238307400, 1.695935853731027600, 1.695732551869034300,
    1.695529187659802400,
  1.695325761110809200, 1.695122272229534000, 1.694918721023458600,
    1.694715107500066800,
  1.694511431666845000, 1.694307693531282000, 1.694103893100868100,
    1.693900030383096900,
  1.693696105385463800, 1.693492118115466500, 1.693288068580604900,
    1.693083956788381500,
  1.692879782746300700, 1.692675546461869900, 1.692471247942597600,
    1.692266887195995600,
  1.692062464229577600, 1.691857979050859900, 1.691653431667360600,
    1.691448822086600400,
  1.691244150316102000, 1.691039416363390800, 1.690834620235994300,
    1.690629761941442100,
  1.690424841487266700, 1.690219858881001800, 1.690014814130184300,
    1.689809707242353200,
  1.689604538225049700, 1.689399307085817300, 1.689194013832201500,
    1.688988658471750600,
  1.688783241012014700, 1.688577761460546800, 1.688372219824901400,
    1.688166616112636100,
  1.687960950331309800, 1.687755222488484600, 1.687549432591724400,
    1.687343580648595700,
  1.687137666666667100, 1.686931690653509000, 1.686725652616694900,
    1.686519552563800400,
  1.686313390502403000, 1.686107166440082600, 1.685900880384421800,
    1.685694532343004600,
  1.685488122323418400, 1.685281650333251900, 1.685075116380096800,
    1.684868520471546600,
  1.684661862615197000, 1.684455142818646700, 1.684248361089495800,
    1.684041517435347400,
  1.683834611863806100, 1.683627644382479800, 1.683420614998977900,
    1.683213523720911800,
  1.683006370555896400, 1.682799155511547600, 1.682591878595484300,
    1.682384539815327400,
  1.682177139178700400, 1.681969676693228600, 1.681762152366539600,
    1.681554566206263900,
  1.681346918220033800, 1.681139208415483700, 1.680931436800250600,
    1.680723603381973500,
  1.680515708168294200, 1.680307751166856300, 1.680099732385305300,
    1.679891651831290100,
  1.679683509512460900, 1.679475305436470600, 1.679267039610974300,
    1.679058712043629300,
  1.678850322742095200, 1.678641871714033900, 1.678433358967109400,
    1.678224784508988400,
  1.678016148347339300, 1.677807450489833300, 1.677598690944143400,
    1.677389869717945000,
  1.677180986818916300, 1.676972042254736900, 1.676763036033089600,
    1.676553968161658600,
  1.676344838648130600, 1.676135647500194700, 1.675926394725542700,
    1.675717080331867900,
  1.675507704326866200, 1.675298266718235900, 1.675088767513677200,
    1.674879206720892900,
  1.674669584347587800, 1.674459900401469700, 1.674250154890247300,
    1.674040347821632800,
  1.673830479203340000, 1.673620549043085500, 1.673410557348587600,
    1.673200504127567000,
  1.672990389387746700, 1.672780213136852300, 1.672569975382611300,
    1.672359676132753500,
  1.672149315395010900, 1.671938893177118000, 1.671728409486811500,
    1.671517864331830000,
  1.671307257719914800, 1.671096589658809500, 1.670885860156259300,
    1.670675069220012500,
  1.670464216857819200, 1.670253303077431800, 1.670042327886605200,
    1.669831291293095900,
  1.669620193304663500, 1.669409033929069500, 1.669197813174077200,
    1.668986531047453000,
  1.668775187556965000, 1.668563782710383600, 1.668352316515481700,
    1.668140788980034400,
  1.667929200111818400, 1.667717549918614100, 1.667505838408202700,
    1.667294065588368100,
  1.667082231466896900, 1.666870336051577800, 1.666658379350201000,
    1.666446361370560000,
  1.666234282120450100, 1.666022141607668600, 1.665809939840015500,
    1.665597676825292700,
  1.665385352571304500, 1.665172967085857700, 1.664960520376761000,
    1.664748012451825200,
  1.664535443318863900, 1.664322812985692600, 1.664110121460129000,
    1.663897368749993400,
  1.663684554863107800, 1.663471679807296800, 1.663258743590387400,
    1.663045746220208600,
  1.662832687704591800, 1.662619568051370500, 1.662406387268380100,
    1.662193145363459100,
  1.661979842344447600, 1.661766478219188300, 1.661553052995526000,
    1.661339566681307600,
  1.661126019284382200, 1.660912410812601900, 1.660698741273819700,
    1.660485010675892400,
  1.660271219026677700, 1.660057366334036300, 1.659843452605831200,
    1.659629477849926800,
  1.659415442074190900, 1.659201345286492900, 1.658987187494704200,
    1.658772968706699000,
  1.658558688930353400, 1.658344348173546300, 1.658129946444157700,
    1.657915483750071100,
  1.657700960099171200, 1.657486375499345900, 1.657271729958484500,
    1.657057023484479000,
  1.656842256085223800, 1.656627427768615000, 1.656412538542551200,
    1.656197588414933600,
  1.655982577393664700, 1.655767505486650500, 1.655552372701798200,
    1.655337179047017700,
  1.655121924530220900, 1.654906609159322500, 1.654691232942238500,
    1.654475795886888300,
  1.654260298001192200, 1.654044739293073900, 1.653829119770458900,
    1.653613439441274500,
  1.653397698313451300, 1.653181896394921000, 1.652966033693617800,
    1.652750110217479100,
  1.652534125974443000, 1.652318080972451400, 1.652101975219447200,
    1.651885808723375900,
  1.651669581492185300, 1.651453293533826000, 1.651236944856249600,
    1.651020535467411200,
  1.650804065375267400, 1.650587534587776700, 1.650370943112901000,
    1.650154290958603300,
  1.649937578132849400, 1.649720804643607400, 1.649503970498847200,
    1.649287075706541200,
  1.649070120274664000, 1.648853104211192700, 1.648636027524106100,
    1.648418890221385400,
  1.648201692311014300, 1.647984433800978600, 1.647767114699266100,
    1.647549735013867000,
  1.647332294752774200, 1.647114793923981600, 1.646897232535486500,
    1.646679610595287900,
  1.646461928111387300, 1.646244185091788400, 1.646026381544496400,
    1.645808517477519700,
  1.645590592898868600, 1.645372607816555400, 1.645154562238594800,
    1.644936456173004000,
  1.644718289627801600, 1.644500062611009300, 1.644281775130650900,
    1.644063427194751600,
  1.643845018811340300, 1.643626549988446200, 1.643408020734102600,
    1.643189431056343700,
  1.642970780963206800, 1.642752070462730800, 1.642533299562957100,
    1.642314468271929300,
  1.642095576597693200, 1.641876624548297000, 1.641657612131790500,
    1.641438539356226500,
  1.641219406229659700, 1.641000212760146800, 1.640780958955747200,
    1.640561644824521700,
  1.640342270374534500, 1.640122835613851100, 1.639903340550539200,
    1.639683785192669600,
  1.639464169548314100, 1.639244493625547900, 1.639024757432447500,
    1.638804960977092100,
  1.638585104267562800, 1.638365187311943400, 1.638145210118319400,
    1.637925172694778800,
  1.637705075049411800, 1.637484917190310800, 1.637264699125570200,
    1.637044420863286600,
  1.636824082411559600, 1.636603683778490100, 1.636383224972181500,
    1.636162706000739300,
  1.635942126872271800, 1.635721487594888400, 1.635500788176702100,
    1.635280028625826900,
  1.635059208950379700, 1.634838329158479200, 1.634617389258246700,
    1.634396389257805700,
  1.634175329165281400, 1.633954208988801700, 1.633733028736496400,
    1.633511788416498000,
  1.633290488036940500, 1.633069127605960800, 1.632847707131697600,
    1.632626226622291700,
  1.632404686085886300, 1.632183085530627200, 1.631961424964661700,
    1.631739704396139900,
  1.631517923833213400, 1.631296083284036900, 1.631074182756766300,
    1.630852222259560700,
  1.630630201800580900, 1.630408121387990000, 1.630185981029953000,
    1.629963780734637400,
  1.629741520510213000, 1.629519200364851800, 1.629296820306727700,
    1.629074380344017100,
  1.628851880484898200, 1.628629320737551700, 1.628406701110161100,
    1.628184021610910700,
  1.627961282247988300, 1.627738483029583100, 1.627515623963887000,
    1.627292705059093700,
  1.627069726323399500, 1.626846687765002700, 1.626623589392103500,
    1.626400431212904800,
  1.626177213235611400, 1.625953935468430500, 1.625730597919571300,
    1.625507200597245500,
  1.625283743509666300, 1.625060226665050000, 1.624836650071614500,
    1.624613013737580000,
  1.624389317671169500, 1.624165561880607000, 1.623941746374119500,
    1.623717871159936300,
  1.623493936246288300, 1.623269941641409400, 1.623045887353534900,
    1.622821773390902700,
  1.622597599761753000, 1.622373366474327800, 1.622149073536871800,
    1.621924720957631300,
  1.621700308744855200, 1.621475836906794500, 1.621251305451702400,
    1.621026714387834300,
  1.620802063723447700, 1.620577353466802700, 1.620352583626160500,
    1.620127754209786100,
  1.619902865225945300, 1.619677916682906700, 1.619452908588941300,
    1.619227840952321800,
  1.619002713781323200, 1.618777527084222800, 1.618552280869300300,
    1.618326975144837000,
  1.618101609919117200, 1.617876185200426600, 1.617650700997053500,
    1.617425157317288200,
  1.617199554169423500, 1.616973891561754200, 1.616748169502577200,
    1.616522388000191500,
  1.616296547062898500, 1.616070646699001800, 1.615844686916807300,
    1.615618667724622700,
  1.615392589130757900, 1.615166451143525300, 1.614940253771239400,
    1.614713997022216900,
  1.614487680904776600, 1.614261305427239200, 1.614034870597928400,
    1.613808376425168900,
  1.613581822917288900, 1.613355210082617800, 1.613128537929487500,
    1.612901806466232200,
  1.612675015701188000, 1.612448165642693400, 1.612221256299089200,
    1.611994287678718100,
  1.611767259789925100, 1.611540172641057200, 1.611313026240463800,
    1.611085820596496600,
  1.610858555717509200, 1.610631231611857800, 1.610403848287899700,
    1.610176405753995800,
  1.609948904018508200, 1.609721343089801600, 1.609493722976242900,
    1.609266043686200700,
  1.609038305228046400, 1.608810507610153100, 1.608582650840896200,
    1.608354734928653800,
  1.608126759881805400, 1.607898725708732900, 1.607670632417820500,
    1.607442480017454700,
  1.607214268516024000, 1.606985997921919000, 1.606757668243532500,
    1.606529279489259600,
  1.606300831667497600, 1.606072324786645500, 1.605843758855105300,
    1.605615133881280700,
  1.605386449873577300, 1.605157706840403300, 1.604928904790168700,
    1.604700043731286200,
  1.604471123672170500, 1.604242144621237800, 1.604013106586907400,
    1.603784009577600100,
  1.603554853601739700, 1.603325638667751000, 1.603096364784061900,
    1.602867031959102100,
  1.602637640201303400, 1.602408189519099800, 1.602178679920927900,
    1.601949111415226000,
  1.601719484010434300, 1.601489797714996000, 1.601260052537355700,
    1.601030248485960900,
  1.600800385569260300, 1.600570463795705700, 1.600340483173750400,
    1.600110443711850300,
  1.599880345418463100, 1.599650188302049100, 1.599419972371070500,
    1.599189697633991400,
  1.598959364099278700, 1.598728971775401000, 1.598498520670828900,
    1.598268010794035900,
  1.598037442153496900, 1.597806814757689200, 1.597576128615092200,
    1.597345383734188000,
  1.597114580123460100, 1.596883717791394800, 1.596652796746479600,
    1.596421816997205500,
  1.596190778552064800, 1.595959681419551800, 1.595728525608163700,
    1.595497311126399300,
  1.595266037982759500, 1.595034706185747500, 1.594803315743869000,
    1.594571866665631700,
  1.594340358959544800, 1.594108792634120600, 1.593877167697873100,
    1.593645484159318200,
  1.593413742026974500, 1.593181941309362400, 1.592950082015004700,
    1.592718164152426000,
  1.592486187730153300, 1.592254152756715600, 1.592022059240644400,
    1.591789907190473100,
  1.591557696614737100, 1.591325427521974100, 1.591093099920724200,
    1.590860713819529400,
  1.590628269226933600, 1.590395766151483400, 1.590163204601727100,
    1.589930584586215500,
  1.589697906113501000, 1.589465169192139100, 1.589232373830686400,
    1.588999520037702300,
  1.588766607821748200, 1.588533637191387400, 1.588300608155185600,
    1.588067520721711000,
  1.587834374899533400, 1.587601170697224600, 1.587367908123358900,
    1.587134587186513000,
  1.586901207895265300, 1.586667770258196600, 1.586434274283889500,
    1.586200719980929200,
  1.585967107357902700, 1.585733436423399000, 1.585499707186010200,
    1.585265919654329300,
  1.585032073836952100, 1.584798169742476400, 1.584564207379502500,
    1.584330186756632200,
  1.584096107882470000, 1.583861970765622100, 1.583627775414697000,
    1.583393521838305700,
  1.583159210045060900, 1.582924840043577400, 1.582690411842472700,
    1.582455925450365600,
  1.582221380875877800, 1.581986778127632700, 1.581752117214255900,
    1.581517398144375800,
  1.581282620926621300, 1.581047785569625400, 1.580812892082021900,
    1.580577940472447200,
  1.580342930749539800, 1.580107862921940700, 1.579872736998292100,
    1.579637552987239100,
  1.579402310897428900, 1.579167010737510600, 1.578931652516135700,
    1.578696236241957200,
  1.578460761923630800, 1.578225229569814700, 1.577989639189168100,
    1.577753990790353500,
  1.577518284382034800, 1.577282519972878200, 1.577046697571552000,
    1.576810817186727000,
  1.576574878827075700, 1.576338882501273000, 1.576102828217995600,
    1.575866715985922500,
  1.575630545813735200, 1.575394317710116600, 1.575158031683752300,
    1.574921687743330300,
  1.574685285897539800, 1.574448826155072400, 1.574212308524622500,
    1.573975733014886000,
  1.573739099634561500, 1.573502408392348600, 1.573265659296950300,
    1.573028852357070800,
  1.572791987581417100, 1.572555064978698100, 1.572318084557624800,
    1.572081046326909900,
  1.571843950295269000, 1.571606796471419100, 1.571369584864080100,
    1.571132315481973200,
  1.570894988333822400, 1.570657603428353300, 1.570420160774294000,
    1.570182660380374600,
  1.569945102255327200, 1.569707486407886600, 1.569469812846788500,
    1.569232081580771900,
  1.568994292618577400, 1.568756445968948000, 1.568518541640628400,
    1.568280579642366000,
  1.568042559982909500, 1.567804482671010500, 1.567566347715422500,
    1.567328155124900800,
  1.567089904908203200, 1.566851597074089500, 1.566613231631321500,
    1.566374808588663300,
  1.566136327954881000, 1.565897789738742900, 1.565659193949019400,
    1.565420540594482800,
  1.565181829683907700, 1.564943061226071100, 1.564704235229751500,
    1.564465351703730400,
  1.564226410656790000, 1.563987412097716200, 1.563748356035296000,
    1.563509242478319000,
  1.563270071435576500, 1.563030842915862100, 1.562791556927971800,
    1.562552213480703300,
  1.562312812582856500, 1.562073354243233700, 1.561833838470639200,
    1.561594265273878800,
  1.561354634661761300, 1.561114946643096900, 1.560875201226698900,
    1.560635398421381400,
  1.560395538235961800, 1.560155620679258400, 1.559915645760092900,
    1.559675613487288200,
  1.559435523869669500, 1.559195376916064700, 1.558955172635302800,
    1.558714911036215700,
  1.558474592127637100, 1.558234215918402600, 1.557993782417350400,
    1.557753291633320500,
  1.557512743575155000, 1.557272138251698300, 1.557031475671796400,
    1.556790755844298400,
  1.556549978778054300, 1.556309144481917300, 1.556068252964741600,
    1.555827304235384500,
  1.555586298302704900, 1.555345235175563900, 1.555104114862824600,
    1.554862937373352500,
  1.554621702716015000, 1.554380410899681300, 1.554139061933223200,
    1.553897655825514600,
  1.553656192585431100, 1.553414672221850700, 1.553173094743653300,
    1.552931460159721100,
  1.552689768478938500, 1.552448019710191300, 1.552206213862368500,
    1.551964350944360100,
  1.551722430965059000, 1.551480453933359800, 1.551238419858159700,
    1.550996328748356800,
  1.550754180612852900, 1.550511975460550500, 1.550269713300355100,
    1.550027394141174000,
  1.549785017991916400, 1.549542584861493900, 1.549300094758820000,
    1.549057547692810600,
  1.548814943672383300, 1.548572282706457900, 1.548329564803956300,
    1.548086789973802700,
  1.547843958224923000, 1.547601069566245900, 1.547358124006701400,
    1.547115121555221700,
  1.546872062220741700, 1.546628946012197800, 1.546385772938528600,
    1.546142543008675300,
  1.545899256231580300, 1.545655912616188800, 1.545412512171447700,
    1.545169054906306200,
  1.544925540829715600, 1.544681969950629300, 1.544438342278002600,
    1.544194657820792800,
  1.543950916587959700, 1.543707118588464800, 1.543463263831272000,
    1.543219352325347200,
  1.542975384079658300, 1.542731359103175300, 1.542487277404870100,
    1.542243138993717000,
  1.541998943878692300, 1.541754692068774600, 1.541510383572944000,
    1.541266018400183200,
  1.541021596559476700, 1.540777118059811100, 1.540532582910175500,
    1.540287991119560600,
  1.540043342696959100, 1.539798637651366400, 1.539553875991779300,
    1.539309057727197300,
  1.539064182866621400, 1.538819251419055100, 1.538574263393503800,
    1.538329218798974800,
  1.538084117644477900, 1.537838959939025200, 1.537593745691629500,
    1.537348474911307300,
  1.537103147607076200, 1.536857763787956400, 1.536612323462969800,
    1.536366826641140800,
  1.536121273331495300, 1.535875663543061700, 1.535629997284870400,
    1.535384274565953600,
  1.535138495395346400, 1.534892659782085100, 1.534646767735208000,
    1.534400819263756400,
  1.534154814376772700, 1.533908753083302200, 1.533662635392391700,
    1.533416461313090100,
  1.533170230854448400, 1.532923944025520200, 1.532677600835360600,
    1.532431201293027000,
  1.532184745407578500, 1.531938233188077100, 1.531691664643585900,
    1.531445039783170500,
  1.531198358615898800, 1.530951621150840700, 1.530704827397067800,
    1.530457977363654000,
  1.530211071059675200, 1.529964108494209700, 1.529717089676337500,
    1.529470014615140800,
  1.529222883319703700, 1.528975695799112500, 1.528728452062455600,
    1.528481152118823700,
  1.528233795977309400, 1.527986383647006500, 1.527738915137012400,
    1.527491390456425600,
  1.527243809614346600, 1.526996172619878900, 1.526748479482126700,
    1.526500730210197200,
  1.526252924813199500, 1.526005063300244900, 1.525757145680446200,
    1.525509171962918800,
  1.525261142156779900, 1.525013056271149000, 1.524764914315147200,
    1.524516716297898300,
  1.524268462228527900, 1.524020152116163200, 1.523771785969934000,
    1.523523363798972000,
  1.523274885612411200, 1.523026351419387100, 1.522777761229038100,
    1.522529115050503600,
  1.522280412892925900, 1.522031654765448900, 1.521782840677218700,
    1.521533970637383800,
  1.521285044655094300, 1.521036062739502300, 1.520787024899762100,
    1.520537931145030400,
  1.520288781484465700, 1.520039575927228500, 1.519790314482481100,
    1.519540997159388300,
  1.519291623967116600, 1.519042194914835200, 1.518792710011714500,
    1.518543169266927600,
  1.518293572689648900, 1.518043920289055900, 1.517794212074327500,
    1.517544448054644500,
  1.517294628239190400, 1.517044752637150000, 1.516794821257710500,
    1.516544834110061600,
  1.516294791203394200, 1.516044692546901800, 1.515794538149779700,
    1.515544328021225500,
  1.515294062170438700, 1.515043740606620800, 1.514793363338975600,
    1.514542930376708600,
  1.514292441729027300, 1.514041897405141700, 1.513791297414263800,
    1.513540641765606800,
  1.513289930468387300, 1.513039163531823000, 1.512788340965133500,
    1.512537462777541200,
  1.512286528978270300, 1.512035539576546600, 1.511784494581598600,
    1.511533394002656100,
  1.511282237848951400, 1.511031026129719100, 1.510779758854195400,
    1.510528436031618900,
  1.510277057671229400, 1.510025623782270000, 1.509774134373984800,
    1.509522589455620600,
  1.509270989036425800, 1.509019333125651200, 1.508767621732549400,
    1.508515854866375100,
  1.508264032536385000, 1.508012154751837700, 1.507760221521994700,
    1.507508232856118200,
  1.507256188763473200, 1.507004089253327000, 1.506751934334948000,
    1.506499724017607900,
  1.506247458310579400, 1.505995137223137500, 1.505742760764559300,
    1.505490328944124200,
  1.505237841771113200, 1.504985299254809800, 1.504732701404498900,
    1.504480048229468000,
  1.504227339739006500, 1.503974575942405700, 1.503721756848958700,
    1.503468882467961600,
  1.503215952808711500, 1.502962967880507600, 1.502709927692651900,
    1.502456832254447600,
  1.502203681575200700, 1.501950475664218600, 1.501697214530810700,
    1.501443898184289200,
  1.501190526633967600, 1.500937099889161600, 1.500683617959188900,
    1.500430080853369500,
  1.500176488581024900, 1.499922841151479600, 1.499669138574058800,
    1.499415380858090800,
  1.499161568012905300, 1.498907700047834600, 1.498653776972212600,
    1.498399798795375000,
  1.498145765526660300, 1.497891677175408500, 1.497637533750961300,
    1.497383335262663300,
  1.497129081719860400, 1.496874773131900800, 1.496620409508134800,
    1.496365990857914600,
  1.496111517190594300, 1.495856988515530400, 1.495602404842080800,
    1.495347766179606400,
  1.495093072537469100, 1.494838323925033400, 1.494583520351665500,
    1.494328661826734200,
  1.494073748359609600, 1.493818779959664300, 1.493563756636272500,
    1.493308678398810800,
  1.493053545256657800, 1.492798357219194100, 1.492543114295801900,
    1.492287816495866200,
  1.492032463828773200, 1.491777056303911700, 1.491521593930672100,
    1.491266076718446900,
  1.491010504676631500, 1.490754877814621800, 1.490499196141816600,
    1.490243459667616600,
  1.489987668401424800, 1.489731822352645500, 1.489475921530685900,
    1.489219965944954300,
  1.488963955604861500, 1.488707890519820600, 1.488451770699245900,
    1.488195596152554800,
  1.487939366889165600, 1.487683082918499300, 1.487426744249978400,
    1.487170350893028500,
  1.486913902857075700, 1.486657400151549600, 1.486400842785880100,
    1.486144230769501000,
  1.485887564111846500, 1.485630842822354100, 1.485374066910462500,
    1.485117236385612200,
  1.484860351257246500, 1.484603411534810300, 1.484346417227750700,
    1.484089368345516300,
  1.483832264897558400, 1.483575106893329600, 1.483317894342285100,
    1.483060627253882000,
  1.482803305637578900, 1.482545929502837100, 1.482288498859119400,
    1.482031013715890700,
  1.481773474082618300, 1.481515879968770900, 1.481258231383819800,
    1.481000528337237800,
  1.480742770838499900, 1.480484958897083200, 1.480227092522466500,
    1.479969171724131200,
  1.479711196511560100, 1.479453166894238100, 1.479195082881652200,
    1.478936944483291600,
  1.478678751708647000, 1.478420504567211900, 1.478162203068481100,
    1.477903847221951400,
  1.477645437037121900, 1.477386972523493800, 1.477128453690569800,
    1.476869880547855300,
  1.476611253104856700, 1.476352571371083700, 1.476093835356046700,
    1.475835045069259000,
  1.475576200520235500, 1.475317301718493300, 1.475058348673551100,
    1.474799341394929900,
  1.474540279892153000, 1.474281164174744900, 1.474021994252233000,
    1.473762770134145800,
  1.473503491830014300, 1.473244159349371700, 1.472984772701752900,
    1.472725331896694400,
  1.472465836943735600, 1.472206287852416900, 1.471946684632281500,
    1.471687027292874400,
  1.471427315843742100, 1.471167550294433700, 1.470907730654499800,
    1.470647856933493300,
  1.470387929140969200, 1.470127947286484100, 1.469867911379596900,
    1.469607821429868500,
  1.469347677446861500, 1.469087479440140300, 1.468827227419272200,
    1.468566921393825700,
  1.468306561373371900, 1.468046147367482600, 1.467785679385733300,
    1.467525157437700200,
  1.467264581532962100, 1.467003951681099800, 1.466743267891695800,
    1.466482530174334500,
  1.466221738538602500, 1.465960892994088800, 1.465699993550383400,
    1.465439040217079400,
  1.465178033003770700, 1.464916971920054100, 1.464655856975527900,
    1.464394688179792900,
  1.464133465542451200, 1.463872189073107500, 1.463610858781367900,
    1.463349474676840700,
  1.463088036769136600, 1.462826545067867700, 1.462564999582648600,
    1.462303400323095000,
  1.462041747298825900, 1.461780040519460800, 1.461518279994622200,
    1.461256465733934400,
  1.460994597747023600, 1.460732676043517800, 1.460470700633046800,
    1.460208671525243400,
  1.459946588729741100, 1.459684452256176300, 1.459422262114186800,
    1.459160018313412400,
  1.458897720863495500, 1.458635369774079500, 1.458372965054810700,
    1.458110506715337000,
  1.457847994765308200, 1.457585429214375700, 1.457322810072193800,
    1.457060137348418000,
  1.456797411052706200, 1.456534631194717800, 1.456271797784114900,
    1.456008910830560500,
  1.455745970343720800, 1.455482976333263100, 1.455219928808857200,
    1.454956827780174100,
  1.454693673256887600, 1.454430465248673300, 1.454167203765208000,
    1.453903888816171900,
  1.453640520411245900, 1.453377098560113100, 1.453113623272459100,
    1.452850094557971000,
  1.452586512426338000, 1.452322876887251400, 1.452059187950404100,
    1.451795445625491300,
  1.451531649922210200, 1.451267800850259500, 1.451003898419340500,
    1.450739942639155800,
  1.450475933519410400, 1.450211871069811300, 1.449947755300067500,
    1.449683586219889400,
  1.449419363838989800, 1.449155088167083600, 1.448890759213887100,
    1.448626376989119400,
  1.448361941502500900, 1.448097452763754000, 1.447832910782603100,
    1.447568315568775100,
  1.447303667131997900, 1.447038965482002200, 1.446774210628520200,
    1.446509402581286400,
  1.446244541350036700, 1.445979626944509300, 1.445714659374444500,
    1.445449638649584500,
  1.445184564779673500, 1.444919437774456700, 1.444654257643682900,
    1.444389024397101600,
  1.444123738044464900, 1.443858398595526400, 1.443593006060042100,
    1.443327560447769600,
  1.443062061768468400, 1.442796510031900500, 1.442530905247829200,
    1.442265247426020200,
  1.441999536576240800, 1.441733772708260600, 1.441467955831850800,
    1.441202085956784900,
  1.440936163092837900, 1.440670187249787600, 1.440404158437412500,
    1.440138076665494100,
  1.439871941943815300, 1.439605754282161400, 1.439339513690319100,
    1.439073220178077400,
  1.438806873755226900, 1.438540474431560600, 1.438274022216873500,
    1.438007517120961900,
  1.437740959153624500, 1.437474348324662100, 1.437207684643876800,
    1.436940968121073600,
  1.436674198766058500, 1.436407376588640000, 1.436140501598628400,
    1.435873573805835900,
  1.435606593220076600, 1.435339559851166500, 1.435072473708924000,
    1.434805334803169100,
  1.434538143143723200, 1.434270898740410700, 1.434003601603057300,
    1.433736251741490700,
  1.433468849165540500, 1.433201393885038500, 1.432933885909818000,
    1.432666325249714700,
  1.432398711914566200, 1.432131045914211600, 1.431863327258492400,
    1.431595555957251700,
  1.431327732020334800, 1.431059855457588600, 1.430791926278862400,
    1.430523944494007400,
  1.430255910112876000, 1.429987823145323100, 1.429719683601205800,
    1.429451491490382900,
  1.429183246822714800, 1.428914949608064200, 1.428646599856295400,
    1.428378197577275100,
  1.428109742780871800, 1.427841235476955400, 1.427572675675398600,
    1.427304063386075200,
  1.427035398618861500, 1.426766681383635500, 1.426497911690277000,
    1.426229089548668200,
  1.425960214968693000, 1.425691287960236600, 1.425422308533187200,
    1.425153276697434000,
  1.424884192462868800, 1.424615055839385300, 1.424345866836878200,
    1.424076625465245500,
  1.423807331734385800, 1.423537985654200800, 1.423268587234593400,
    1.422999136485468600,
  1.422729633416733200, 1.422460078038296300, 1.422190470360068300,
    1.421920810391962500,
  1.421651098143893000, 1.421381333625776600, 1.421111516847531700,
    1.420841647819078600,
  1.420571726550339700, 1.420301753051239400, 1.420031727331703800,
    1.419761649401660500,
  1.419491519271040000, 1.419221336949774100, 1.418951102447796800,
    1.418680815775043500,
  1.418410476941452100, 1.418140085956961900, 1.417869642831514700,
    1.417599147575054000,
  1.417328600197524900, 1.417058000708874700, 1.416787349119052600,
    1.416516645438009600,
  1.416245889675698900, 1.415975081842075300, 1.415704221947095700,
    1.415433310000718600,
  1.415162346012905000, 1.414891329993617200, 1.414620261952819600,
    1.414349141900479000,
  1.414077969846563500, 1.413806745801043500, 1.413535469773890700,
    1.413264141775079300,
  1.412992761814585400, 1.412721329902386900, 1.412449846048463600,
    1.412178310262796900,
  1.411906722555370500, 1.411635082936170100, 1.411363391415182900,
    1.411091648002398500,
  1.410819852707807700, 1.410548005541404100, 1.410276106513182400,
    1.410004155633139500,
  1.409732152911274500, 1.409460098357588200, 1.409187991982083100,
    1.408915833794763800,
  1.408643623805636800, 1.408371362024710500, 1.408099048461995300,
    1.407826683127503000,
  1.407554266031248100, 1.407281797183246500, 1.407009276593515800,
    1.406736704272076400,
  1.406464080228949600, 1.406191404474159000, 1.405918677017730100,
    1.405645897869690400,
  1.405373067040069300, 1.405100184538898000, 1.404827250376209400,
    1.404554264562038400,
  1.404281227106422400, 1.404008138019399800, 1.403734997311011600,
    1.403461804991300100,
  1.403188561070310100, 1.402915265558087700, 1.402641918464681400,
    1.402368519800141200,
  1.402095069574519800, 1.401821567797870300, 1.401548014480249000,
    1.401274409631713600,
  1.401000753262323900, 1.400727045382141400, 1.400453286001229800,
    1.400179475129653700,
  1.399905612777481200, 1.399631698954780800, 1.399357733671623900,
    1.399083716938083600,
  1.398809648764234100, 1.398535529160152400, 1.398261358135917300,
    1.397987135701609200,
  1.397712861867310300, 1.397438536643105000, 1.397164160039079200,
    1.396889732065321300,
  1.396615252731921100, 1.396340722048970300, 1.396066140026562800,
    1.395791506674794100,
  1.395516822003761700, 1.395242086023564800, 1.394967298744304900,
    1.394692460176085300,
  1.394417570329010700, 1.394142629213188000, 1.393867636838725900,
    1.393592593215735600,
  1.393317498354329300, 1.393042352264621600, 1.392767154956728400,
    1.392491906440768600,
  1.392216606726861800, 1.391941255825130100, 1.391665853745697400,
    1.391390400498689700,
  1.391114896094234100, 1.390839340542460600, 1.390563733853500200,
    1.390288076037486500,
  1.390012367104554600, 1.389736607064841100, 1.389460795928485500,
    1.389184933705628300,
  1.388909020406412100, 1.388633056040981600, 1.388357040619483200,
    1.388080974152065200,
  1.387804856648877600, 1.387528688120072600, 1.387252468575804100,
    1.386976198026228100,
  1.386699876481501900, 1.386423503951785200, 1.386147080447239600,
    1.385870605978028100,
  1.385594080554316100, 1.385317504186270900, 1.385040876884061000,
    1.384764198657857200,
  1.384487469517832200, 1.384210689474160600, 1.383933858537019100,
    1.383656976716585600,
  1.383380044023040400, 1.383103060466565300, 1.382826026057344600,
    1.382548940805563800,
  1.382271804721410600, 1.381994617815074400, 1.381717380096746800,
    1.381440091576620700,
  1.381162752264891500, 1.380885362171756300, 1.380607921307413400,
    1.380330429682064000,
  1.380052887305910400, 1.379775294189157000, 1.379497650342010400,
    1.379219955774678700,
  1.378942210497371600, 1.378664414520301500, 1.378386567853681700,
    1.378108670507728300,
  1.377830722492658500, 1.377552723818691500, 1.377274674496048700,
    1.376996574534953300,
  1.376718423945630000, 1.376440222738305700, 1.376161970923209400,
    1.375883668510570900,
  1.375605315510623200, 1.375326911933600200, 1.375048457789738400,
    1.374769953089275400,
  1.374491397842451100, 1.374212792059507100, 1.373934135750687100,
    1.373655428926236400,
  1.373376671596402400, 1.373097863771434200, 1.372819005461582500,
    1.372540096677100200,
  1.372261137428242300, 1.371982127725264800, 1.371703067578426700,
    1.371423956997988000,
  1.371144795994210500, 1.370865584577358300, 1.370586322757697500,
    1.370307010545495500,
  1.370027647951022100, 1.369748234984548000, 1.369468771656347200,
    1.369189257976694200,
  1.368909693955866000, 1.368630079604142000, 1.368350414931802000,
    1.368070699949128800,
  1.367790934666406600, 1.367511119093921800, 1.367231253241962200,
    1.366951337120818000,
  1.366671370740780500, 1.366391354112143500, 1.366111287245202400,
    1.365831170150254300,
  1.365551002837598600, 1.365270785317536100, 1.364990517600369400,
    1.364710199696403300,
  1.364429831615944200, 1.364149413369300600, 1.363868944966782900,
    1.363588426418702600,
  1.363307857735373900, 1.363027238927112300, 1.362746570004235400,
    1.362465850977062900,
  1.362185081855915600, 1.361904262651116900, 1.361623393372991300,
    1.361342474031866000,
  1.361061504638069400, 1.360780485201932300, 1.360499415733786400,
    1.360218296243966200,
  1.359937126742807300, 1.359655907240648000, 1.359374637747827700,
    1.359093318274687800,
  1.358811948831571500, 1.358530529428824400, 1.358249060076792900,
    1.357967540785826300,
  1.357685971566275200, 1.357404352428492000, 1.357122683382830900,
    1.356840964439648200,
  1.356559195609301700, 1.356277376902151900, 1.355995508328559500,
    1.355713589898888800,
  1.355431621623504700, 1.355149603512774400, 1.354867535577067200,
    1.354585417826753800,
  1.354303250272206500, 1.354021032923800300, 1.353738765791911100,
    1.353456448886917200,
  1.353174082219199100, 1.352891665799137900, 1.352609199637117500,
    1.352326683743523300,
  1.352044118128742600, 1.351761502803164900, 1.351478837777180700,
    1.351196123061183100,
  1.350913358665566400, 1.350630544600727200, 1.350347680877063800,
    1.350064767504976400,
  1.349781804494866600, 1.349498791857138400, 1.349215729602197400,
    1.348932617740450600,
  1.348649456282307700, 1.348366245238179500, 1.348082984618478800,
    1.347799674433620500,
  1.347516314694020800, 1.347232905410098200, 1.346949446592273100,
    1.346665938250967100,
  1.346382380396604000, 1.346098773039609700, 1.345815116190411300,
    1.345531409859438200,
  1.345247654057121700, 1.344963848793894200, 1.344679994080190800,
    1.344396089926448000,
  1.344112136343103900, 1.343828133340598800, 1.343544080929374800,
    1.343259979119875600,
  1.342975827922546600, 1.342691627347835500, 1.342407377406191500,
    1.342123078108065700,
  1.341838729463910900, 1.341554331484181600, 1.341269884179334700,
    1.340985387559828100,
  1.340700841636122400, 1.340416246418678800, 1.340131601917961900,
    1.339846908144436600,
  1.339562165108570700, 1.339277372820833400, 1.338992531291695500,
    1.338707640531629800,
  1.338422700551110900, 1.338137711360615200, 1.337852672970621300,
    1.337567585391608900,
  1.337282448634059800, 1.336997262708457900, 1.336712027625288600,
    1.336426743395039000,
  1.336141410028198500, 1.335856027535258000, 1.335570595926709700,
    1.335285115213048500,
  1.334999585404770700, 1.334714006512374400, 1.334428378546359500,
    1.334142701517227600,
  1.333856975435482300, 1.333571200311629100, 1.333285376156174700,
    1.332999502979628700,
  1.332713580792501500, 1.332427609605305400, 1.332141589428554900,
    1.331855520272766200,
  1.331569402148457400, 1.331283235066148100, 1.330997019036359800,
    1.330710754069615700,
  1.330424440176441300, 1.330138077367363200, 1.329851665652910500,
    1.329565205043613800,
  1.329278695550004700, 1.328992137182618100, 1.328705529951989400,
    1.328418873868656900,
  1.328132168943159800, 1.327845415186039000, 1.327558612607838500,
    1.327271761219102500,
  1.326984861030378000, 1.326697912052213500, 1.326410914295159400,
    1.326123867769767500,
  1.325836772486591800, 1.325549628456188100, 1.325262435689113600,
    1.324975194195928000,
  1.324687903987191900, 1.324400565073468300, 1.324113177465321900,
    1.323825741173318700,
  1.323538256208027800, 1.323250722580018500, 1.322963140299862500,
    1.322675509378133900,
  1.322387829825407700, 1.322100101652261100, 1.321812324869273500,
    1.321524499487024800,
  1.321236625516098100, 1.320948702967077400, 1.320660731850549000,
    1.320372712177100700,
  1.320084643957322400, 1.319796527201805300, 1.319508361921142500,
    1.319220148125929100,
  1.318931885826762000, 1.318643575034239800, 1.318355215758962900,
    1.318066808011533200,
  1.317778351802554800, 1.317489847142633300, 1.317201294042376300,
    1.316912692512393300,
  1.316624042563294900, 1.316335344205694200, 1.316046597450205800,
    1.315757802307445900,
  1.315468958788033000, 1.315180066902586800, 1.314891126661728900,
    1.314602138076083300,
  1.314313101156274800, 1.314024015912930600, 1.313734882356679900,
    1.313445700498152800,
  1.313156470347981900, 1.312867191916801100, 1.312577865215246900,
    1.312288490253956900,
  1.311999067043570200, 1.311709595594728000, 1.311420075918073900,
    1.311130508024252400,
  1.310840891923910100, 1.310551227627695400, 1.310261515146258200,
    1.309971754490250700,
  1.309681945670326400, 1.309392088697140900, 1.309102183581351200,
    1.308812230333616500,
  1.308522228964597500, 1.308232179484956500, 1.307942081905358000,
    1.307651936236467800,
  1.307361742488954300, 1.307071500673486800, 1.306781210800736200,
    1.306490872881376200,
  1.306200486926081700, 1.305910052945529200, 1.305619570950396800,
    1.305329040951365100,
  1.305038462959116100, 1.304747836984333300, 1.304457163037702200,
    1.304166441129910300,
  1.303875671271646400, 1.303584853473601200, 1.303293987746467300,
    1.303003074100939100,
  1.302712112547712800, 1.302421103097485900, 1.302130045760958100,
    1.301838940548830600,
  1.301547787471806900, 1.301256586540591600, 1.300965337765891600,
    1.300674041158414800,
  1.300382696728871400, 1.300091304487973800, 1.299799864446435200,
    1.299508376614971500,
  1.299216841004299200, 1.298925257625137800, 1.298633626488207500,
    1.298341947604231300,
  1.298050220983932900, 1.297758446638038700, 1.297466624577275900,
    1.297174754812374400,
  1.296882837354065100, 1.296590872213081200, 1.296298859400157700,
    1.296006798926030200,
  1.295714690801437600, 1.295422535037119800, 1.295130331643818500,
    1.294838080632277000,
  1.294545782013240900, 1.294253435797456900, 1.293961041995673700,
    1.293668600618642000,
  1.293376111677113900, 1.293083575181843500, 1.292790991143586200,
    1.292498359573099700,
  1.292205680481143500, 1.291912953878477900, 1.291620179775866400,
    1.291327358184073200,
  1.291034489113864100, 1.290741572576007400, 1.290448608581273000,
    1.290155597140431700,
  1.289862538264257700, 1.289569431963524900, 1.289276278249010600,
    1.288983077131493000,
  1.288689828621752300, 1.288396532730570400, 1.288103189468731400,
    1.287809798847019800,
  1.287516360876223500, 1.287222875567130900, 1.286929342930532800,
    1.286635762977221800,
  1.286342135717991600, 1.286048461163638000, 1.285754739324958900,
    1.285460970212753500,
  1.285167153837822900, 1.284873290210969900, 1.284579379342998700,
    1.284285421244715900,
  1.283991415926929400, 1.283697363400448900, 1.283403263676086100,
    1.283109116764654000,
  1.282814922676967400, 1.282520681423843000, 1.282226393016099500,
    1.281932057464557000,
  1.281637674780037100, 1.281343244973363700, 1.281048768055361900,
    1.280754244036858900,
  1.280459672928683500, 1.280165054741666300, 1.279870389486639400,
    1.279575677174437100,
  1.279280917815894600, 1.278986111421849900, 1.278691258003142000,
    1.278396357570611900,
  1.278101410135101800, 1.277806415707456700, 1.277511374298522200,
    1.277216285919146500,
  1.276921150580179200, 1.276625968292471000, 1.276330739066875400,
    1.276035462914247000,
  1.275740139845442400, 1.275444769871319600, 1.275149353002738700,
    1.274853889250561200,
  1.274558378625650200, 1.274262821138871300, 1.273967216801090900,
    1.273671565623178100,
  1.273375867616002300, 1.273080122790436000, 1.272784331157352800,
    1.272488492727628100,
  1.272192607512139300, 1.271896675521764900, 1.271600696767385400,
    1.271304671259883200,
  1.271008599010142500, 1.270712480029048800, 1.270416314327489800,
    1.270120101916354600,
  1.269823842806533800, 1.269527537008920300, 1.269231184534408200,
    1.268934785393893700,
  1.268638339598274500, 1.268341847158450200, 1.268045308085321800,
    1.267748722389792100,
  1.267452090082765900, 1.267155411175149500, 1.266858685677851000,
    1.266561913601780100,
  1.266265094957848000, 1.265968229756968100, 1.265671318010055400,
    1.265374359728026500,
  1.265077354921799300, 1.264780303602294200, 1.264483205780432700,
    1.264186061467138500,
  1.263888870673336400, 1.263591633409954000, 1.263294349687918800,
    1.262997019518161700,
  1.262699642911614600, 1.262402219879211300, 1.262104750431887000,
    1.261807234580578900,
  1.261509672336225600, 1.261212063709767900, 1.260914408712147800,
    1.260616707354309500,
  1.260318959647198400, 1.260021165601761900, 1.259723325228949000,
    1.259425438539710300,
  1.259127505544998600, 1.258829526255768000, 1.258531500682973800,
    1.258233428837574300,
  1.257935310730528000, 1.257637146372796400, 1.257338935775342200,
    1.257040678949129500,
  1.256742375905124400, 1.256444026654294400, 1.256145631207609400,
    1.255847189576040100,
  1.255548701770560000, 1.255250167802143000, 1.254951587681765600,
    1.254652961420405600,
  1.254354289029042900, 1.254055570518658500, 1.253756805900235700,
    1.253457995184759300,
  1.253159138383215200, 1.252860235506592100, 1.252561286565879300,
    1.252262291572068900,
  1.251963250536153500, 1.251664163469128300, 1.251365030381989700,
    1.251065851285736200,
  1.250766626191367500, 1.250467355109885500, 1.250168038052293500,
    1.249868675029596200,
  1.249569266052800800, 1.249269811132915200, 1.248970310280950200,
    1.248670763507917100,
  1.248371170824829300, 1.248071532242702100, 1.247771847772552300,
    1.247472117425398700,
  1.247172341212261500, 1.246872519144162300, 1.246572651232124700,
    1.246272737487174300,
  1.245972777920338000, 1.245672772542644400, 1.245372721365123600,
    1.245072624398807900,
  1.244772481654731000, 1.244472293143928300, 1.244172058877436800,
    1.243871778866295400,
  1.243571453121544000, 1.243271081654225400, 1.242970664475383100,
    1.242670201596062700,
  1.242369693027311200, 1.242069138780177400, 1.241768538865712000,
    1.241467893294967200,
  1.241167202078996800, 1.240866465228856100, 1.240565682755603100,
    1.240264854670295900,
  1.239963980983995300, 1.239663061707763700, 1.239362096852665300,
    1.239061086429765300,
  1.238760030450130900, 1.238458928924831600, 1.238157781864937400,
    1.237856589281521000,
  1.237555351185656500, 1.237254067588419400, 1.236952738500886900,
    1.236651363934138300,
  1.236349943899254000, 1.236048478407316500, 1.235746967469409900,
    1.235445411096619500,
  1.235143809300033300, 1.234842162090739700, 1.234540469479829900,
    1.234238731478396000,
  1.233936948097532400, 1.233635119348334400, 1.233333245241899200,
    1.233031325789326400,
  1.232729361001716500, 1.232427350890172000, 1.232125295465796600,
    1.231823194739696300,
  1.231521048722978200, 1.231218857426751700, 1.230916620862127400,
    1.230614339040217800,
  1.230312011972136500, 1.230009639668999500, 1.229707222141924100,
    1.229404759402029400,
  1.229102251460436400, 1.228799698328266700, 1.228497100016644900,
    1.228194456536696500,
  1.227891767899548700, 1.227589034116330700, 1.227286255198173100,
    1.226983431156208200,
  1.226680562001569900, 1.226377647745394000, 1.226074688398817600,
    1.225771683972980200,
  1.225468634479021500, 1.225165539928084300, 1.224862400331312400,
    1.224559215699851500,
  1.224255986044848500, 1.223952711377453100, 1.223649391708814700,
    1.223346027050086400,
  1.223042617412421600, 1.222739162806975900, 1.222435663244906700,
    1.222132118737372400,
  1.221828529295533800, 1.221524894930552800, 1.221221215653593100,
    1.220917491475820500,
  1.220613722408401900, 1.220309908462505800, 1.220006049649302800,
    1.219702145979964600,
  1.219398197465665400, 1.219094204117580300, 1.218790165946886100,
    1.218486082964761500,
  1.218181955182386500, 1.217877782610943700, 1.217573565261616000,
    1.217269303145589000,
  1.216964996274049400, 1.216660644658185600, 1.216356248309187600,
    1.216051807238247800,
  1.215747321456559300, 1.215442790975316700, 1.215138215805717300,
    1.214833595958959300,
  1.214528931446242600, 1.214224222278769100, 1.213919468467741900,
    1.213614670024366000,
  1.213309826959847700, 1.213004939285395400, 1.212700007012219100,
    1.212395030151530300,
  1.212090008714541600, 1.211784942712468300, 1.211479832156526800,
    1.211174677057934800,
  1.210869477427912300, 1.210564233277680500, 1.210258944618462200,
    1.209953611461482200,
  1.209648233817966600, 1.209342811699143600, 1.209037345116242400,
    1.208731834080493800,
  1.208426278603131200, 1.208120678695388600, 1.207815034368502100,
    1.207509345633709600,
  1.207203612502250300, 1.206897834985365000, 1.206592013094296200,
    1.206286146840288300,
  1.205980236234587100, 1.205674281288440000, 1.205368282013096200,
    1.205062238419806200,
  1.204756150519822300, 1.204450018324398900, 1.204143841844791200,
    1.203837621092256800,
  1.203531356078054100, 1.203225046813444000, 1.202918693309688300,
    1.202612295578050900,
  1.202305853629797500, 1.201999367476194400, 1.201692837128510700,
    1.201386262598016500,
  1.201079643895983700, 1.200772981033685800, 1.200466274022397900,
    1.200159522873396800,
  1.199852727597960700, 1.199545888207369700, 1.199239004712905300,
    1.198932077125851100,
  1.198625105457491700, 1.198318089719113200, 1.198011029922004400,
    1.197703926077454200,
  1.197396778196754700, 1.197089586291198500, 1.196782350372080300,
    1.196475070450696100,
  1.196167746538343600, 1.195860378646322700, 1.195552966785933900,
    1.195245510968480300,
  1.194938011205265900, 1.194630467507596500, 1.194322879886780000,
    1.194015248354125100,
  1.193707572920943000, 1.193399853598545500, 1.193092090398246900,
    1.192784283331362700,
  1.192476432409210100, 1.192168537643107900, 1.191860599044376500,
    1.191552616624337800,
  1.191244590394315400, 1.190936520365635000, 1.190628406549622900,
    1.190320248957608100,
  1.190012047600920200, 1.189703802490891000, 1.189395513638853900,
    1.189087181056143900,
  1.188778804754097300, 1.188470384744052100, 1.188161921037348400,
    1.187853413645327100,
  1.187544862579331500, 1.187236267850706000, 1.186927629470796900,
    1.186618947450951600,
  1.186310221802519900, 1.186001452536852300, 1.185692639665301600,
    1.185383783199222000,
  1.185074883149969100, 1.184765939528900500, 1.184456952347374900,
    1.184147921616753200,
  1.183838847348397400, 1.183529729553671500, 1.183220568243940300,
    1.182911363430571200,
  1.182602115124932900, 1.182292823338395100, 1.181983488082330300,
    1.181674109368111300,
  1.181364687207113100, 1.181055221610712400, 1.180745712590287400,
    1.180436160157217800,
  1.180126564322885100, 1.179816925098671900, 1.179507242495962900,
    1.179197516526144600,
  1.178887747200604300, 1.178577934530731700, 1.178268078527917200,
    1.177958179203553800,
  1.177648236569035300, 1.177338250635757700, 1.177028221415118200,
    1.176718148918515700,
  1.176408033157350300, 1.176097874143024600, 1.175787671886942000,
    1.175477426400507700,
  1.175167137695128900, 1.174856805782213500, 1.174546430673171900,
    1.174236012379415600,
  1.173925550912357800, 1.173615046283413200, 1.173304498503998400,
    1.172993907585530900,
  1.172683273539430800, 1.172372596377118800, 1.172061876110017700,
    1.171751112749551900,
  1.171440306307147200, 1.171129456794231200, 1.170818564222232800,
    1.170507628602582800,
  1.170196649946713100, 1.169885628266057900, 1.169574563572052300,
    1.169263455876133200,
  1.168952305189739200, 1.168641111524310700, 1.168329874891289400,
    1.168018595302118000,
  1.167707272768241800, 1.167395907301107100, 1.167084498912162300,
    1.166773047612856400,
  1.166461553414641000, 1.166150016328968600, 1.165838436367293800,
    1.165526813541072100,
  1.165215147861761400, 1.164903439340820900, 1.164591687989710500,
    1.164279893819892800,
  1.163968056842831700, 1.163656177069992500, 1.163344254512841800,
    1.163032289182848800,
  1.162720281091483000, 1.162408230250216100, 1.162096136670521600,
    1.161784000363874000,
  1.161471821341749900, 1.161159599615627000, 1.160847335196984800,
    1.160535028097304600,
  1.160222678328068700, 1.159910285900761700, 1.159597850826869200,
    1.159285373117878500,
  1.158972852785278500, 1.158660289840559800, 1.158347684295214300,
    1.158035036160735900,
  1.157722345448619400, 1.157409612170361600, 1.157096836337461000,
    1.156784017961417500,
  1.156471157053732300, 1.156158253625908700, 1.155845307689450800,
    1.155532319255865300,
  1.155219288336659400, 1.154906214943342700, 1.154593099087426000,
    1.154279940780421400,
  1.153966740033842900, 1.153653496859206000, 1.153340211268028000,
    1.153026883271827300,
  1.152713512882124400, 1.152400100110440700, 1.152086644968299400,
    1.151773147467225300,
  1.151459607618745300, 1.151146025434387000, 1.150832400925680100,
    1.150518734104155400,
  1.150205024981345800, 1.149891273568785400, 1.149577479878009800,
    1.149263643920556800,
  1.148949765707964600, 1.148635845251773800, 1.148321882563526400,
    1.148007877654766200,
  1.147693830537038100, 1.147379741221888500, 1.147065609720865600,
    1.146751436045519300,
  1.146437220207400700, 1.146122962218062600, 1.145808662089060000,
    1.145494319831947800,
  1.145179935458284100, 1.144865508979627800, 1.144551040407539400,
    1.144236529753581000,
  1.143921977029316500, 1.143607382246310600, 1.143292745416130600,
    1.142978066550344400,
  1.142663345660522000, 1.142348582758234900, 1.142033777855056000,
    1.141718930962559500,
  1.141404042092321500, 1.141089111255919800, 1.140774138464933700,
    1.140459123730943200,
  1.140144067065530700, 1.139828968480280300, 1.139513827986776900,
    1.139198645596607400,
  1.138883421321360600, 1.138568155172625700, 1.138252847161994400,
    1.137937497301059600,
  1.137622105601416000, 1.137306672074659900, 1.136991196732388200,
    1.136675679586200500,
  1.136360120647697200, 1.136044519928480800, 1.135728877440154800,
    1.135413193194324800,
  1.135097467202597100, 1.134781699476580300, 1.134465890027884300,
    1.134150038868120500,
  1.133834146008902100, 1.133518211461843200, 1.133202235238559800,
    1.132886217350669500,
  1.132570157809791500, 1.132254056627546300, 1.131937913815556300,
    1.131621729385444900,
  1.131305503348837300, 1.130989235717360100, 1.130672926502642100,
    1.130356575716312500,
  1.130040183370002900, 1.129723749475346000, 1.129407274043976200,
    1.129090757087529500,
  1.128774198617643200, 1.128457598645956600, 1.128140957184109700,
    1.127824274243744500,
  1.127507549836505000, 1.127190783974035800, 1.126873976667983800,
    1.126557127929996800,
  1.126240237771724700, 1.125923306204818400, 1.125606333240930700,
    1.125289318891715900,
  1.124972263168829500, 1.124655166083928800, 1.124338027648672500,
    1.124020847874721100,
  1.123703626773736100, 1.123386364357381200, 1.123069060637320600,
    1.122751715625221400,
  1.122434329332750800, 1.122116901771578400, 1.121799432953375600,
    1.121481922889814300,
  1.121164371592568300, 1.120846779073313400, 1.120529145343726500,
    1.120211470415486200,
  1.119893754300272300, 1.119575997009766300, 1.119258198555651300,
    1.118940358949611900,
  1.118622478203333800, 1.118304556328505200, 1.117986593336814700,
    1.117668589239953200,
  1.117350544049612300, 1.117032457777486200, 1.116714330435269600,
    1.116396162034659600,
  1.116077952587353600, 1.115759702105052000, 1.115441410599455500,
    1.115123078082267000,
  1.114804704565190500, 1.114486290059931900, 1.114167834578198200,
    1.113849338131698300,
  1.113530800732142100, 1.113212222391241500, 1.112893603120710000,
    1.112574942932261600,
  1.112256241837613000, 1.111937499848481900, 1.111618716976587700,
    1.111299893233650600,
  1.110981028631393700, 1.110662123181539900, 1.110343176895814500,
    1.110024189785944900,
  1.109705161863658600, 1.109386093140686000, 1.109066983628758100,
    1.108747833339607200,
  1.108428642284968100, 1.108109410476576300, 1.107790137926169200,
    1.107470824645485600,
  1.107151470646265300, 1.106832075940250600, 1.106512640539184100,
    1.106193164454811100,
  1.105873647698877300, 1.105554090283131100, 1.105234492219321100,
    1.104914853519198400,
  1.104595174194514800, 1.104275454257024300, 1.103955693718482200,
    1.103635892590644900,
  1.103316050885270600, 1.102996168614119000, 1.102676245788951400,
    1.102356282421530300,
  1.102036278523620000, 1.101716234106985700, 1.101396149183395000,
    1.101076023764616400,
  1.100755857862419700, 1.100435651488577100, 1.100115404654861100,
    1.099795117373046200,
  1.099474789654909100, 1.099154421512226600, 1.098834012956778200,
    1.098513564000344300,
  1.098193074654706800, 1.097872544931649100, 1.097551974842956500,
    1.097231364400415000,
  1.096910713615813200, 1.096590022500939700, 1.096269291067585700,
    1.095948519327543800,
  1.095627707292607700, 1.095306854974572800, 1.094985962385235800,
    1.094665029536395100,
  1.094344056439850600, 1.094023043107403200, 1.093701989550856000,
    1.093380895782013000,
  1.093059761812680100, 1.092738587654664300, 1.092417373319774200,
    1.092096118819820200,
  1.091774824166613600, 1.091453489371968100, 1.091132114447697300,
    1.090810699405617900,
  1.090489244257547300, 1.090167749015304300, 1.089846213690709900,
    1.089524638295585400,
  1.089203022841754400, 1.088881367341041800, 1.088559671805274100,
    1.088237936246279100,
  1.087916160675885800, 1.087594345105925300, 1.087272489548229700,
    1.086950594014632700,
  1.086628658516969500, 1.086306683067076900, 1.085984667676792600,
    1.085662612357956500,
  1.085340517122409800, 1.085018381981994500, 1.084696206948555300,
    1.084373992033937000,
  1.084051737249986900, 1.083729442608553300, 1.083407108121486000,
    1.083084733800636200,
  1.082762319657857100, 1.082439865705002500, 1.082117371953928300,
    1.081794838416491700,
  1.081472265104551200, 1.081149652029967000, 1.080826999204601100,
    1.080504306640315500,
  1.080181574348975500, 1.079858802342446900, 1.079535990632596800,
    1.079213139231294500,
  1.078890248150409700, 1.078567317401815100, 1.078244346997383300,
    1.077921336948988600,
  1.077598287268508400, 1.077275197967819000, 1.076952069058800400,
    1.076628900553332700,
  1.076305692463297900, 1.075982444800579700, 1.075659157577062200,
    1.075335830804633000,
  1.075012464495178800, 1.074689058660589700, 1.074365613312755900,
    1.074042128463569500,
  1.073718604124924500, 1.073395040308715400, 1.073071437026839500,
    1.072747794291194300,
  1.072424112113678600, 1.072100390506194500, 1.071776629480643500,
    1.071452829048929800,
  1.071128989222958500, 1.070805110014635900, 1.070481191435870500,
    1.070157233498571600,
  1.069833236214650800, 1.069509199596019800, 1.069185123654592600,
    1.068861008402285200,
  1.068536853851013600, 1.068212660012696700, 1.067888426899253500,
    1.067564154522606000,
  1.067239842894676100, 1.066915492027387600, 1.066591101932666800,
    1.066266672622439700,
  1.065942204108635300, 1.065617696403183400, 1.065293149518014500,
    1.064968563465062100,
  1.064643938256259400, 1.064319273903543000, 1.063994570418849400,
    1.063669827814116300,
  1.063345046101285000, 1.063020225292295300, 1.062695365399091200,
    1.062370466433616400,
  1.062045528407815900, 1.061720551333637600, 1.061395535223029500,
    1.061070480087941800,
  1.060745385940325500, 1.060420252792134000, 1.060095080655320900,
    1.059769869541841800,
  1.059444619463654400, 1.059119330432716700, 1.058794002460989000,
    1.058468635560432500,
  1.058143229743009600, 1.057817785020685100, 1.057492301405424500,
    1.057166778909195000,
  1.056841217543965200, 1.056515617321704500, 1.056189978254385100,
    1.055864300353978900,
  1.055538583632461100, 1.055212828101807200, 1.054887033773993300,
    1.054561200660999200,
  1.054235328774803900, 1.053909418127389400, 1.053583468730738200,
    1.053257480596834700,
  1.052931453737664600, 1.052605388165214700, 1.052279283891473600,
    1.051953140928431100,
  1.051626959288079100, 1.051300738982409800, 1.050974480023417500,
    1.050648182423098000,
  1.050321846193448000, 1.049995471346466300, 1.049669057894152800,
    1.049342605848508200,
  1.049016115221536000, 1.048689586025239700, 1.048363018271625300,
    1.048036411972699500,
  1.047709767140470500, 1.047383083786948700, 1.047056361924144400,
    1.046729601564071200,
  1.046402802718742400, 1.046075965400174300, 1.045749089620383200,
    1.045422175391386800,
  1.045095222725206200, 1.044768231633861100, 1.044441202129375200,
    1.044114134223771900,
  1.043787027929076000, 1.043459883257315400, 1.043132700220517300,
    1.042805478830712200,
  1.042478219099930400, 1.042150921040204200, 1.041823584663568200,
    1.041496209982056600,
  1.041168797007707000, 1.040841345752557200, 1.040513856228645800,
    1.040186328448014800,
  1.039858762422705600, 1.039531158164762400, 1.039203515686230000,
    1.038875834999155100,
  1.038548116115585800, 1.038220359047570500, 1.037892563807160800,
    1.037564730406408200,
  1.037236858857366600, 1.036908949172090900, 1.036581001362636600,
    1.036253015441062700,
  1.035924991419427100, 1.035596929309791300, 1.035268829124216700,
    1.034940690874766300,
  1.034612514573505700, 1.034284300232500000, 1.033956047863817500,
    1.033627757479526700,
  1.033299429091697700, 1.032971062712402700, 1.032642658353714300,
    1.032314216027707700,
  1.031985735746457900, 1.031657217522042900, 1.031328661366541300,
    1.031000067292032300,
  1.030671435310598600, 1.030342765434322200, 1.030014057675287900,
    1.029685312045581100,
  1.029356528557288300, 1.029027707222499100, 1.028698848053302100,
    1.028369951061789600,
  1.028041016260053500, 1.027712043660187600, 1.027383033274288400,
    1.027053985114451100,
  1.026724899192775300, 1.026395775521359500, 1.026066614112305600,
    1.025737414977715200,
  1.025408178129692000, 1.025078903580341600, 1.024749591341769700,
    1.024420241426085200,
  1.024090853845396800, 1.023761428611814600, 1.023431965737451800,
    1.023102465234420700,
  1.022772927114837100, 1.022443351390816400, 1.022113738074476300,
    1.021784087177936000,
  1.021454398713315600, 1.021124672692737000, 1.020794909128323000,
    1.020465108032198300,
  1.020135269416488700, 1.019805393293321100, 1.019475479674824900,
    1.019145528573129000,
  1.018815540000365800, 1.018485513968667500, 1.018155450490168000,
    1.017825349577003300,
  1.017495211241309800, 1.017165035495226400, 1.016834822350892300,
    1.016504571820448000,
  1.016174283916036800, 1.015843958649801600, 1.015513596033888400,
    1.015183196080442900,
  1.014852758801613200, 1.014522284209548900, 1.014191772316400000,
    1.013861223134318900,
  1.013530636675459100, 1.013200012951974700, 1.012869351976022300,
    1.012538653759758900,
  1.012207918315344300, 1.011877145654937400, 1.011546335790700600,
    1.011215488734796800,
  1.010884604499389800, 1.010553683096645900, 1.010222724538731600,
    1.009891728837815700,
  1.009560696006067900, 1.009229626055658800, 1.008898518998761800,
    1.008567374847549900,
  1.008236193614199000, 1.007904975310885300, 1.007573719949786700,
    1.007242427543082900,
  1.006911098102953900, 1.006579731641582500, 1.006248328171152100,
    1.005916887703846500,
  1.005585410251852700, 1.005253895827357800, 1.004922344442551000,
    1.004590756109621900,
  1.004259130840762700, 1.003927468648166100, 1.003595769544025900,
    1.003264033540538500,
  1.002932260649900000, 1.002600450884309800, 1.002268604255967200,
    1.001936720777072400,
  1.001604800459829000, 1.001272843316440000, 1.000940849359111000,
    1.000608818600048100,
  1.000276751051459200, 0.999944646725553720, 0.999612505634541740,
    0.999280327790635690,
  0.998948113206048590, 0.998615861892994560, 0.998283573863690270,
    0.997951249130352380,
  0.997618887705200020, 0.997286489600452630, 0.996954054828332210,
    0.996621583401061110,
  0.996289075330862860, 0.995956530629963810, 0.995623949310589620,
    0.995291331384969390,
  0.994958676865332010, 0.994625985763907820, 0.994293258092929790,
    0.993960493864630480,
  0.993627693091245660, 0.993294855785010760, 0.992961981958163210,
    0.992629071622942340,
  0.992296124791587690, 0.991963141476341460, 0.991630121689446090,
    0.991297065443145440,
  0.990963972749685840, 0.990630843621313260, 0.990297678070276800,
    0.989964476108825210,
  0.989631237749210020, 0.989297963003683330, 0.988964651884498000,
    0.988631304403909890,
  0.988297920574174430, 0.987964500407549910, 0.987631043916294970,
    0.987297551112669370,
  0.986964022008935520, 0.986630456617355380, 0.986296854950194260,
    0.985963217019717120,
  0.985629542838190490, 0.985295832417883540, 0.984962085771065030,
    0.984628302910006580,
  0.984294483846980150, 0.983960628594258810, 0.983626737164118190,
    0.983292809568833910,
  0.982958845820684270, 0.982624845931947320, 0.982290809914904140,
    0.981956737781835790,
  0.981622629545024770, 0.981288485216756160, 0.980954304809314670,
    0.980620088334987930,
  0.980285835806063770, 0.979951547234831130, 0.979617222633581860,
    0.979282862014607240,
  0.978948465390201530, 0.978614032772659240, 0.978279564174275860,
    0.977945059607349900,
  0.977610519084179290, 0.977275942617064740, 0.976941330218307540,
    0.976606681900209830,
  0.976271997675076550, 0.975937277555212310, 0.975602521552924600,
    0.975267729680520560,
  0.974932901950310350, 0.974598038374604350, 0.974263138965714040,
    0.973928203735953460,
  0.973593232697636530, 0.973258225863079970, 0.972923183244600480,
    0.972588104854516410,
  0.972252990705148370, 0.971917840808816710, 0.971582655177844700,
    0.971247433824555920,
  0.970912176761274950, 0.970576884000329040, 0.970241555554045230,
    0.969906191434753320,
  0.969570791654783330, 0.969235356226466500, 0.968899885162136650,
    0.968564378474127350,
  0.968228836174775060, 0.967893258276415700, 0.967557644791388500,
    0.967221995732032490,
  0.966886311110688230, 0.966550590939698640, 0.966214835231406500,
    0.965879043998157160,
  0.965543217252296420, 0.965207355006171270, 0.964871457272131190,
    0.964535524062525410,
  0.964199555389706030, 0.963863551266025300, 0.963527511703836660,
    0.963191436715496120,
  0.962855326313359350, 0.962519180509785130, 0.962182999317132030,
    0.961846782747760140,
  0.961510530814032040, 0.961174243528309820, 0.960837920902958720,
    0.960501562950343390,
  0.960165169682831830, 0.959828741112791590, 0.959492277252591900,
    0.959155778114604400,
  0.958819243711200310, 0.958482674054753960, 0.958146069157639560,
    0.957809429032232760,
  0.957472753690911670, 0.957136043146054050, 0.956799297410040440,
    0.956462516495251940,
  0.956125700414070300, 0.955788849178880300, 0.955451962802066120,
    0.955115041296014880,
  0.954778084673113870, 0.954441092945751630, 0.954104066126319150,
    0.953767004227207060,
  0.953429907260809120, 0.953092775239518630, 0.952755608175731570,
    0.952418406081844360,
  0.952081168970254520, 0.951743896853362140, 0.951406589743566950,
    0.951069247653271500,
  0.950731870594878510, 0.950394458580791970, 0.950057011623418380,
    0.949719529735163940,
  0.949382012928437600, 0.949044461215648560, 0.948706874609207220,
    0.948369253121526420,
  0.948031596765018910, 0.947693905552099870, 0.947356179495185020,
    0.947018418606691230,
  0.946680622899037650, 0.946342792384643360, 0.946004927075930090,
    0.945667026985319680,
  0.945329092125236190, 0.944991122508104350, 0.944653118146349890,
    0.944315079052401090,
  0.943977005238685770, 0.943638896717634900, 0.943300753501679190,
    0.942962575603250920,
  0.942624363034784580, 0.942286115808714690, 0.941947833937478270,
    0.941609517433512730,
  0.941271166309256450, 0.940932780577150460, 0.940594360249635500,
    0.940255905339155150,
  0.939917415858152920, 0.939578891819073720, 0.939240333234364950,
    0.938901740116473540,
  0.938563112477849630, 0.938224450330942590, 0.937885753688204820,
    0.937547022562088990,
  0.937208256965048840, 0.936869456909540490, 0.936530622408019990,
    0.936191753472946030,
  0.935852850116777430, 0.935513912351974450, 0.935174940190999560,
    0.934835933646314900,
  0.934496892730385720, 0.934157817455677160, 0.933818707834655590,
    0.933479563879790030,
  0.933140385603548840, 0.932801173018403480, 0.932461926136825660,
    0.932122644971287830,
  0.931783329534265240, 0.931443979838232900, 0.931104595895668410,
    0.930765177719049210,
  0.930425725320855430, 0.930086238713567440, 0.929746717909666790,
    0.929407162921637610,
  0.929067573761963250, 0.928727950443130500, 0.928388292977625930,
    0.928048601377937210,
  0.927708875656554800, 0.927369115825968480, 0.927029321898671270,
    0.926689493887155820,
  0.926349631803916270, 0.926009735661449170, 0.925669805472250860,
    0.925329841248820340,
  0.924989843003656610, 0.924649810749260110, 0.924309744498133750,
    0.923969644262779830,
  0.923629510055703820, 0.923289341889410480, 0.922949139776407800,
    0.922608903729203570,
  0.922268633760306990, 0.921928329882229390, 0.921587992107482210,
    0.921247620448579440,
  0.920907214918035070, 0.920566775528364410, 0.920226302292085460,
    0.919885795221715540,
  0.919545254329774850, 0.919204679628783720, 0.918864071131263780,
    0.918523428849739030,
  0.918182752796733110, 0.917842042984772340, 0.917501299426383480,
    0.917160522134094160,
  0.916819711120434700, 0.916478866397934850, 0.916137987979127270,
    0.915797075876544350,
  0.915456130102721200, 0.915115150670193110, 0.914774137591496510,
    0.914433090879170130,
  0.914092010545752620, 0.913750896603785280, 0.913409749065809520,
    0.913068567944367970,
  0.912727353252005710, 0.912386105001267270, 0.912044823204700370,
    0.911703507874852440,
  0.911362159024272310, 0.911020776665511290, 0.910679360811120000,
    0.910337911473652390,
  0.909996428665661990, 0.909654912399703860, 0.909313362688335290,
    0.908971779544113350,
  0.908630162979597760, 0.908288513007348140, 0.907946829639926790,
    0.907605112889895870,
  0.907263362769819000, 0.906921579292262250, 0.906579762469791110,
    0.906237912314974080,
  0.905896028840379560, 0.905554112058577170, 0.905212161982139160,
    0.904870178623637170,
  0.904528161995645670, 0.904186112110739510, 0.903844028981494190,
    0.903501912620488070,
  0.903159763040298880, 0.902817580253507450, 0.902475364272694370,
    0.902133115110441470,
  0.901790832779333250, 0.901448517291953520, 0.901106168660889110,
    0.900763786898726380,
  0.900421372018054500, 0.900078924031462610, 0.899736442951541320,
    0.899393928790883420,
  0.899051381562081310, 0.898708801277730340, 0.898366187950425780,
    0.898023541592764210,
  0.897680862217344440, 0.897338149836764960, 0.896995404463627350,
    0.896652626110532870,
  0.896309814790084090, 0.895966970514885940, 0.895624093297543110,
    0.895281183150662960,
  0.894938240086852970, 0.894595264118721810, 0.894252255258880410,
    0.893909213519939460,
  0.893566138914512420, 0.893223031455212530, 0.892879891154655380,
    0.892536718025457090,
  0.892193512080234670, 0.891850273331607600, 0.891507001792195000,
    0.891163697474618880,
  0.890820360391500920, 0.890476990555464480, 0.890133587979135000,
    0.889790152675137610,
  0.889446684656100330, 0.889103183934650930, 0.888759650523418650,
    0.888416084435035060,
  0.888072485682131150, 0.887728854277341050, 0.887385190233298650,
    0.887041493562639060,
  0.886697764277999840, 0.886354002392018110, 0.886010207917333760,
    0.885666380866586560,
  0.885322521252418610, 0.884978629087472270, 0.884634704384391180,
    0.884290747155821230,
  0.883946757414407980, 0.883602735172799640, 0.883258680443644530,
    0.882914593239592320,
  0.882570473573294660, 0.882226321457403320, 0.881882136904572400,
    0.881537919927456340,
  0.881193670538710450, 0.880849388750992610, 0.880505074576960370,
    0.880160728029273920,
  0.879816349120593590, 0.879471937863580690, 0.879127494270899090,
    0.878783018355212220,
  0.878438510129186170, 0.878093969605486800, 0.877749396796782770,
    0.877404791715742370,
  0.877060154375035710, 0.876715484787334630, 0.876370782965310900,
    0.876026048921639160,
  0.875681282668993700, 0.875336484220050390, 0.874991653587487090,
    0.874646790783981660,
  0.874301895822214290, 0.873956968714865500, 0.873612009474616810,
    0.873267018114152300,
  0.872921994646155390, 0.872576939083312460, 0.872231851438309840,
    0.871886731723835020,
  0.871541579952577750, 0.871196396137227660, 0.870851180290476810,
    0.870505932425017060,
  0.870160652553543020, 0.869815340688749220, 0.869469996843331370,
    0.869124621029987670,
  0.868779213261415610, 0.868433773550315810, 0.868088301909388680,
    0.867742798351335720,
  0.867397262888861100, 0.867051695534668210, 0.866706096301463340,
    0.866360465201952980,
  0.866014802248844420, 0.865669107454847490, 0.865323380832671800,
    0.864977622395029290,
  0.864631832154632240, 0.864286010124194040, 0.863940156316430170,
    0.863594270744056040,
  0.863248353419789670, 0.862902404356348570, 0.862556423566453230,
    0.862210411062823810,
  0.861864366858181910, 0.861518290965251340, 0.861172183396755500,
    0.860826044165420630,
  0.860479873283972910, 0.860133670765139580, 0.859787436621650360,
    0.859441170866234390,
  0.859094873511623840, 0.858748544570550610, 0.858402184055747750,
    0.858055791979950740,
  0.857709368355894840, 0.857362913196317630, 0.857016426513956930,
    0.856669908321551650,
  0.856323358631843170, 0.855976777457572280, 0.855630164811482460,
    0.855283520706317080,
  0.854936845154821930, 0.854590138169742830, 0.854243399763827020,
    0.853896629949823630,
  0.853549828740481690, 0.853202996148552880, 0.852856132186788910,
    0.852509236867942440,
  0.852162310204768740, 0.851815352210022470, 0.851468362896461110,
    0.851121342276842110,
  0.850774290363923820, 0.850427207170467380, 0.850080092709233130,
    0.849732946992984290,
  0.849385770034483680, 0.849038561846496730, 0.848691322441788910,
    0.848344051833126780,
  0.847996750033279350, 0.847649417055015060, 0.847302052911105160,
    0.846954657614320980,
  0.846607231177434640, 0.846259773613221020, 0.845912284934454140,
    0.845564765153910990,
  0.845217214284368690, 0.844869632338605130, 0.844522019329400630,
    0.844174375269535320,
  0.843826700171791620, 0.843478994048952440, 0.843131256913801420,
    0.842783488779124570,
  0.842435689657707650, 0.842087859562339000, 0.841739998505806610,
    0.841392106500900900,
  0.841044183560412770, 0.840696229697133760, 0.840348244923857960,
    0.840000229253379030,
  0.839652182698493290, 0.839304105271996950, 0.838955996986687550,
    0.838607857855364740,
  0.838259687890827830, 0.837911487105878820, 0.837563255513319780,
    0.837214993125953600,
  0.836866699956585690, 0.836518376018021260, 0.836170021323067610,
    0.835821635884532730,
  0.835473219715225040, 0.835124772827955830, 0.834776295235535540,
    0.834427786950777460,
  0.834079247986494690, 0.833730678355502630, 0.833382078070616820,
    0.833033447144653880,
  0.832684785590432690, 0.832336093420771970, 0.831987370648492710,
    0.831638617286416190,
  0.831289833347364620, 0.830941018844162600, 0.830592173789634240,
    0.830243298196606360,
  0.829894392077905720, 0.829545455446360270, 0.829196488314800080,
    0.828847490696055010,
  0.828498462602957340, 0.828149404048339590, 0.827800315045035150,
    0.827451195605879990,
  0.827102045743709160, 0.826752865471360950, 0.826403654801672770,
    0.826054413747485010,
  0.825705142321637720, 0.825355840536972420, 0.825006508406332490,
    0.824657145942561230,
  0.824307753158504460, 0.823958330067008030, 0.823608876680918760,
    0.823259393013085820,
  0.822909879076357930, 0.822560334883586490, 0.822210760447622980,
    0.821861155781319800,
  0.821511520897531660, 0.821161855809112830, 0.820812160528920360,
    0.820462435069811090,
  0.820112679444643060, 0.819762893666276530, 0.819413077747571440,
    0.819063231701390170,
  0.818713355540594880, 0.818363449278050270, 0.818013512926620940,
    0.817663546499172720,
  0.817313550008573640, 0.816963523467691410, 0.816613466889396070,
    0.816263380286557980,
  0.815913263672048310, 0.815563117058740630, 0.815212940459508210,
    0.814862733887226740,
  0.814512497354771830, 0.814162230875020380, 0.813811934460851430,
    0.813461608125143560,
  0.813111251880778150, 0.812760865740636440, 0.812410449717600570,
    0.812060003824555230,
  0.811709528074384460, 0.811359022479975040, 0.811008487054213360,
    0.810657921809988410,
  0.810307326760189020, 0.809956701917705080, 0.809606047295428950,
    0.809255362906252440,
  0.808904648763069890, 0.808553904878775760, 0.808203131266265420,
    0.807852327938436750,
  0.807501494908186900, 0.807150632188415760, 0.806799739792023240,
    0.806448817731910130,
  0.806097866020979660, 0.805746884672134620, 0.805395873698280360,
    0.805044833112322000,
  0.804693762927166100, 0.804342663155721230, 0.803991533810895500,
    0.803640374905599810,
  0.803289186452744390, 0.802937968465242240, 0.802586720956006250,
    0.802235443937950320,
  0.801884137423990890, 0.801532801427043530, 0.801181435960026780,
    0.800830041035858750,
  0.800478616667459010, 0.800127162867749210, 0.799775679649650460,
    0.799424167026086540,
  0.799072625009981330, 0.798721053614259490, 0.798369452851848020,
    0.798017822735673680,
  0.797666163278665570, 0.797314474493752810, 0.796962756393865600,
    0.796611008991936490,
  0.796259232300897350, 0.795907426333682830, 0.795555591103226930,
    0.795203726622466520,
  0.794851832904338360, 0.794499909961779990, 0.794147957807731400,
    0.793795976455132220,
  0.793443965916924570, 0.793091926206050400, 0.792739857335452710,
    0.792387759318077150,
  0.792035632166868230, 0.791683475894773720, 0.791331290514740830,
    0.790979076039718180,
  0.790626832482656310, 0.790274559856505520, 0.789922258174218570,
    0.789569927448748320,
  0.789217567693048520, 0.788865178920075130, 0.788512761142783790,
    0.788160314374132590,
  0.787807838627079260, 0.787455333914584220, 0.787102800249607550,
    0.786750237645110430,
  0.786397646114056490, 0.786045025669408700, 0.785692376324132690,
    0.785339698091194080,
  0.784986990983559170, 0.784634255014197040, 0.784281490196075850,
    0.783928696542166680,
  0.783575874065440270, 0.783223022778868350, 0.782870142695425320,
    0.782517233828084580,
  0.782164296189822530, 0.781811329793615120, 0.781458334652439630,
    0.781105310779275470,
  0.780752258187101480, 0.780399176888899150, 0.780046066897649550,
    0.779692928226336290,
  0.779339760887942880, 0.778986564895453810, 0.778633340261856040,
    0.778280087000135730,
  0.777926805123281830, 0.777573494644283050, 0.777220155576129220,
    0.776866787931812410,
  0.776513391724324210, 0.776159966966658680, 0.775806513671809860,
    0.775453031852772920,
  0.775099521522545020, 0.774745982694123090, 0.774392415380506400,
    0.774038819594694230,
  0.773685195349686940, 0.773331542658487140, 0.772977861534096640,
    0.772624151989520280,
  0.772270414037761980, 0.771916647691828660, 0.771562852964726710,
    0.771209029869463940,
  0.770855178419050050, 0.770501298626494410, 0.770147390504808960,
    0.769793454067005500,
  0.769439489326096850, 0.769085496295098040, 0.768731474987023660,
    0.768377425414890850,
  0.768023347591716640, 0.767669241530518850, 0.767315107244318060,
    0.766960944746133740,
  0.766606754048988260, 0.766252535165903970, 0.765898288109903900,
    0.765544012894013530,
  0.765189709531257760, 0.764835378034664170, 0.764481018417259680,
    0.764126630692073870,
  0.763772214872136200, 0.763417770970477140, 0.763063299000129260,
    0.762708798974124800,
  0.762354270905498450, 0.761999714807284790, 0.761645130692519490,
    0.761290518574240350,
  0.760935878465484720, 0.760581210379292380, 0.760226514328703140,
    0.759871790326757670,
  0.759517038386499090, 0.759162258520969860, 0.758807450743214760,
    0.758452615066278920,
  0.758097751503208020, 0.757742860067050380, 0.757387940770853360,
    0.757032993627667290,
  0.756678018650541630, 0.756323015852528700, 0.755967985246680520,
    0.755612926846050080,
  0.755257840663692730, 0.754902726712663120, 0.754547585006018600,
    0.754192415556816380,
  0.753837218378114460, 0.753481993482973400, 0.753126740884452970,
    0.752771460595615500,
  0.752416152629523330, 0.752060816999239660, 0.751705453717829930,
    0.751350062798359140,
  0.750994644253894730, 0.750639198097504010, 0.750283724342255320,
    0.749928223001219310,
  0.749572694087465850, 0.749217137614067500, 0.748861553594096340,
    0.748505942040627040,
  0.748150302966733790, 0.747794636385492150, 0.747438942309979870,
    0.747083220753273820,
  0.746727471728453770, 0.746371695248599140, 0.746015891326790470,
    0.745660059976110400,
  0.745304201209641030, 0.744948315040467210, 0.744592401481673270,
    0.744236460546344850,
  0.743880492247569580, 0.743524496598434670, 0.743168473612029980,
    0.742812423301444810,
  0.742456345679769810, 0.742100240760097840, 0.741744108555520860,
    0.741387949079133860,
  0.741031762344030790, 0.740675548363308620, 0.740319307150063780,
    0.739963038717393880,
  0.739606743078398690, 0.739250420246177380, 0.738894070233831800,
    0.738537693054463370,
  0.738181288721174830, 0.737824857247070810, 0.737468398645255490,
    0.737111912928835710,
  0.736755400110918000, 0.736398860204609870, 0.736042293223021060,
    0.735685699179260850,
  0.735329078086440880, 0.734972429957672760, 0.734615754806068890,
    0.734259052644744230,
  0.733902323486812610, 0.733545567345390890, 0.733188784233595240,
    0.732831974164544150,
  0.732475137151356370, 0.732118273207151170, 0.731761382345050280,
    0.731404464578174760,
  0.731047519919648340, 0.730690548382594280, 0.730333549980137110,
    0.729976524725403530,
  0.729619472631519270, 0.729262393711613280, 0.728905287978813600,
    0.728548155446249730,
  0.728190996127053180, 0.727833810034354990, 0.727476597181288540,
    0.727119357580987220,
  0.726762091246585200, 0.726404798191218950, 0.726047478428024420,
    0.725690131970139980,
  0.725332758830703360, 0.724975359022855150, 0.724617932559735390,
    0.724260479454485130,
  0.723902999720247850, 0.723545493370166160, 0.723187960417385530,
    0.722830400875050790,
  0.722472814756308090, 0.722115202074305680, 0.721757562842191060,
    0.721399897073114470,
  0.721042204780225960, 0.720684485976676230, 0.720326740675618530,
    0.719968968890205230,
  0.719611170633591480, 0.719253345918932090, 0.718895494759382860,
    0.718537617168101610,
  0.718179713158245800, 0.717821782742975370, 0.717463825935449550,
    0.717105842748830160,
  0.716747833196278770, 0.716389797290958090, 0.716031735046032900,
    0.715673646474667140,
  0.715315531590027700, 0.714957390405280950, 0.714599222933594240,
    0.714241029188137260,
  0.713882809182079030, 0.713524562928591010, 0.713166290440844450,
    0.712807991732011590,
  0.712449666815266890, 0.712091315703784260, 0.711732938410739810,
    0.711374534949309800,
  0.711016105332671340, 0.710657649574003460, 0.710299167686484930,
    0.709940659683296890,
  0.709582125577619790, 0.709223565382636760, 0.708864979111530680,
    0.708506366777485130,
  0.708147728393686340, 0.707789063973319310, 0.707430373529572170,
    0.707071657075632460,
  0.706712914624688770, 0.706354146189931750, 0.705995351784551530,
    0.705636531421740880,
  0.705277685114692020, 0.704918812876598410, 0.704559914720655490,
    0.704200990660058150,
  0.703842040708003820, 0.703483064877689630, 0.703124063182313690,
    0.702765035635076310,
  0.702405982249177160, 0.702046903037818250, 0.701687798014201110,
    0.701328667191529980,
  0.700969510583008600, 0.700610328201841660, 0.700251120061236020,
    0.699891886174398130,
  0.699532626554536630, 0.699173341214860190, 0.698814030168578240,
    0.698454693428902320,
  0.698095331009043640, 0.697735942922215520, 0.697376529181631400,
    0.697017089800505250,
  0.696657624792053730, 0.696298134169492380, 0.695938617946039510,
    0.695579076134912990,
  0.695219508749331800, 0.694859915802517050, 0.694500297307689140,
    0.694140653278070950,
  0.693780983726884790, 0.693421288667355530, 0.693061568112707690,
    0.692701822076166820,
  0.692342050570960430, 0.691982253610315510, 0.691622431207461700,
    0.691262583375628180,
  0.690902710128045050, 0.690542811477944610, 0.690182887438558710,
    0.689822938023121220,
  0.689462963244866330, 0.689102963117028790, 0.688742937652845550,
    0.688382886865552930,
  0.688022810768389670, 0.687662709374594510, 0.687302582697406850,
    0.686942430750068330,
  0.686582253545819920, 0.686222051097905130, 0.685861823419566700,
    0.685501570524050140,
  0.685141292424600310, 0.684780989134463280, 0.684420660666887120,
    0.684060307035119440,
  0.683699928252410110, 0.683339524332008840, 0.682979095287166160,
    0.682618641131135020,
  0.682258161877167370, 0.681897657538517720, 0.681537128128440470,
    0.681176573660190910,
  0.680815994147026320, 0.680455389602203310, 0.680094760038981280,
    0.679734105470619080,
  0.679373425910376310, 0.679012721371515250, 0.678651991867297080,
    0.678291237410985510,
  0.677930458015843620, 0.677569653695137220, 0.677208824462131490,
    0.676847970330092700,
  0.676487091312289350, 0.676126187421989040, 0.675765258672461950,
    0.675404305076978020,
  0.675043326648808170, 0.674682323401225250, 0.674321295347501510,
    0.673960242500911690,
  0.673599164874730370, 0.673238062482232950, 0.672876935336696900,
    0.672515783451398950,
  0.672154606839618470, 0.671793405514634180, 0.671432179489727110,
    0.671070928778178090,
  0.670709653393269050, 0.670348353348283690, 0.669987028656505170,
    0.669625679331219300,
  0.669264305385711360, 0.668902906833267590, 0.668541483687176590,
    0.668180035960725840,
  0.667818563667205600, 0.667457066819905800, 0.667095545432117240,
    0.666733999517132860,
  0.666372429088244790, 0.666010834158747840, 0.665649214741936390,
    0.665287570851105680,
  0.664925902499553190, 0.664564209700575500, 0.664202492467472090,
    0.663840750813541210,
  0.663478984752084110, 0.663117194296401260, 0.662755379459794350,
    0.662393540255567070,
  0.662031676697022450, 0.661669788797465960, 0.661307876570202740,
    0.660945940028538900,
  0.660583979185782600, 0.660221994055241400, 0.659859984650225110,
    0.659497950984043510,
  0.659135893070007080, 0.658773810921428500, 0.658411704551619570,
    0.658049573973894850,
  0.657687419201568260, 0.657325240247955020, 0.656963037126372160,
    0.656600809850135910,
  0.656238558432565400, 0.655876282886978410, 0.655513983226695960,
    0.655151659465038060,
  0.654789311615326050, 0.654426939690883280, 0.654064543705032310,
    0.653702123671098150,
  0.653339679602405470, 0.652977211512280050, 0.652614719414049580,
    0.652252203321041060,
  0.651889663246583930, 0.651527099204007310, 0.651164511206641320,
    0.650801899267818060,
  0.650439263400868990, 0.650076603619127890, 0.649713919935928420,
    0.649351212364604910,
  0.648988480918494040, 0.648625725610931460, 0.648262946455255510,
    0.647900143464803730,
  0.647537316652916140, 0.647174466032932490, 0.646811591618193350,
    0.646448693422041360,
  0.646085771457818310, 0.645722825738868860, 0.645359856278536980,
    0.644996863090167570,
  0.644633846187107620, 0.644270805582703550, 0.643907741290304040,
    0.643544653323257610,
  0.643181541694913480, 0.642818406418622980, 0.642455247507736860,
    0.642092064975608220,
  0.641728858835589830, 0.641365629101035340, 0.641002375785300500,
    0.640639098901740200,
  0.640275798463712080, 0.639912474484572560, 0.639549126977681070,
    0.639185755956396480,
  0.638822361434078330, 0.638458943424088490, 0.638095501939787920,
    0.637732036994540290,
  0.637368548601708660, 0.637005036774657030, 0.636641501526751590,
    0.636277942871357530,
  0.635914360821842830, 0.635550755391574910, 0.635187126593922070,
    0.634823474442254840,
  0.634459798949942640, 0.634096100130357660, 0.633732377996871770,
    0.633368632562857470,
  0.633004863841689520, 0.632641071846741790, 0.632277256591390780,
    0.631913418089012020,
  0.631549556352983710, 0.631185671396683470, 0.630821763233490040,
    0.630457831876783950,
  0.630093877339945260, 0.629729899636356280, 0.629365898779399080,
    0.629001874782456500,
  0.628637827658913300, 0.628273757422153860, 0.627909664085564810,
    0.627545547662532230,
  0.627181408166443410, 0.626817245610687520, 0.626453060008652860,
    0.626088851373730380,
  0.625724619719310480, 0.625360365058784670, 0.624996087405546350,
    0.624631786772988030,
  0.624267463174504880, 0.623903116623491180, 0.623538747133343780,
    0.623174354717459190,
  0.622809939389234460, 0.622445501162069090, 0.622081040049361490,
    0.621716556064512820,
  0.621352049220923570, 0.620987519531995270, 0.620622967011131400,
    0.620258391671734690,
  0.619893793527210410, 0.619529172590963410, 0.619164528876399280,
    0.618799862396925750,
  0.618435173165949760, 0.618070461196880800, 0.617705726503127720,
    0.617340969098100430,
  0.616976188995210780, 0.616611386207870040, 0.616246560749491690,
    0.615881712633488340,
  0.615516841873275490, 0.615151948482267840, 0.614787032473881110,
    0.614422093861533010,
  0.614057132658640590, 0.613692148878623000, 0.613327142534899510,
    0.612962113640889710,
  0.612597062210015750, 0.612231988255698470, 0.611866891791361560,
    0.611501772830428060,
  0.611136631386322020, 0.610771467472469460, 0.610406281102295440,
    0.610041072289227990,
  0.609675841046694030, 0.609310587388121830, 0.608945311326941520,
    0.608580012876582370,
  0.608214692050476290, 0.607849348862054220, 0.607483983324749510,
    0.607118595451995420,
  0.606753185257225550, 0.606387752753876020, 0.606022297955381760,
    0.605656820875180360,
  0.605291321526709060, 0.604925799923405670, 0.604560256078710220,
    0.604194690006061960,
  0.603829101718902580, 0.603463491230673220, 0.603097858554815790,
    0.602732203704774650,
  0.602366526693992930, 0.602000827535916330, 0.601635106243990190,
    0.601269362831660550,
  0.600903597312375640, 0.600537809699582810, 0.600172000006731770,
    0.599806168247271620,
  0.599440314434653620, 0.599074438582328780, 0.598708540703749010,
    0.598342620812368000,
  0.597976678921638860, 0.597610715045016950, 0.597244729195957500,
    0.596878721387916090,
  0.596512691634350830, 0.596146639948718640, 0.595780566344478960,
    0.595414470835091030,
  0.595048353434014630, 0.594682214154711790, 0.594316053010643270,
    0.593949870015273000,
  0.593583665182063740, 0.593217438524479500, 0.592851190055986300,
    0.592484919790049140,
  0.592118627740135460, 0.591752313919712170, 0.591385978342248260,
    0.591019621021212420,
  0.590653241970074180, 0.590286841202305120, 0.589920418731375800,
    0.589553974570759530,
  0.589187508733928890, 0.588821021234357310, 0.588454512085520460,
    0.588087981300892900,
  0.587721428893951850, 0.587354854878173850, 0.586988259267036350,
    0.586621642074019120,
  0.586255003312600500, 0.585888342996261690, 0.585521661138483250,
    0.585154957752746730,
  0.584788232852535560, 0.584421486451332410, 0.584054718562622140,
    0.583687929199888990,
  0.583321118376619710, 0.582954286106300290, 0.582587432402417840,
    0.582220557278461340,
  0.581853660747918780, 0.581486742824280810, 0.581119803521037650,
    0.580752842851679940,
  0.580385860829700780, 0.580018857468592270, 0.579651832781848730,
    0.579284786782964360,
  0.578917719485433800, 0.578550630902754050, 0.578183521048421080,
    0.577816389935933090,
  0.577449237578788300, 0.577082063990485340, 0.576714869184524860,
    0.576347653174406840,
  0.575980415973633590, 0.575613157595706530, 0.575245878054129520,
    0.574878577362406000,
  0.574511255534040030, 0.574143912582537940, 0.573776548521405030,
    0.573409163364148930,
  0.573041757124277180, 0.572674329815297640, 0.572306881450720390,
    0.571939412044054740,
  0.571571921608812320, 0.571204410158504090, 0.570836877706642270,
    0.570469324266740570,
  0.570101749852312100, 0.569734154476872480, 0.569366538153936560,
    0.568998900897020210,
  0.568631242719641270, 0.568263563635316600, 0.567895863657565500,
    0.567528142799906490,
  0.567160401075860410, 0.566792638498947680, 0.566424855082689470,
    0.566057050840608870,
  0.565689225786228160, 0.565321379933072190, 0.564953513294665140,
    0.564585625884531870,
  0.564217717716199550, 0.563849788803194140, 0.563481839159044150,
    0.563113868797277870,
  0.562745877731423820, 0.562377865975012940, 0.562009833541575080,
    0.561641780444642640,
  0.561273706697747450, 0.560905612314422150, 0.560537497308201240,
    0.560169361692618440,
  0.559801205481210040, 0.559433028687510990, 0.559064831325059240,
    0.558696613407391630,
  0.558328374948046320, 0.557960115960563050, 0.557591836458480870,
    0.557223536455341280,
  0.556855215964685120, 0.556486875000054000, 0.556118513574991650,
    0.555750131703040880,
  0.555381729397746880, 0.555013306672654360, 0.554644863541308600,
    0.554276400017257090,
  0.553907916114046440, 0.553539411845225590, 0.553170887224342820,
    0.552802342264947400,
  0.552433776980590490, 0.552065191384822350, 0.551696585491195710,
    0.551327959313262280,
  0.550959312864576220, 0.550590646158691240, 0.550221959209161620,
    0.549853252029543830,
  0.549484524633393480, 0.549115777034268170, 0.548747009245725500,
    0.548378221281323520,
  0.548009413154622370, 0.547640584879181100, 0.547271736468561530,
    0.546902867936324590,
  0.546533979296032200, 0.546165070561248080, 0.545796141745535150,
    0.545427192862458780,
  0.545058223925583670, 0.544689234948475210, 0.544320225944701200,
    0.543951196927828010,
  0.543582147911424560, 0.543213078909059120, 0.542843989934301940,
    0.542474881000723050,
  0.542105752121893050, 0.541736603311384620, 0.541367434582769480,
    0.540998245949621760,
  0.540629037425515050, 0.540259809024023600, 0.539890560758723770,
    0.539521292643190930,
  0.539152004691002770, 0.538782696915736770, 0.538413369330970610,
    0.538044021950284450,
  0.537674654787257180, 0.537305267855470390, 0.536935861168504670,
    0.536566434739941920,
  0.536196988583365510, 0.535827522712358230, 0.535458037140505110,
    0.535088531881390050,
  0.534719006948599860, 0.534349462355720230, 0.533979898116337950,
    0.533610314244041710,
  0.533240710752419080, 0.532871087655060300, 0.532501444965554960,
    0.532131782697493170,
  0.531762100864467290, 0.531392399480068670, 0.531022678557890980,
    0.530652938111527360,
  0.530283178154571710, 0.529913398700619820, 0.529543599763266700,
    0.529173781356109600,
  0.528803943492745180, 0.528434086186771010, 0.528064209451786560,
    0.527694313301390160,
  0.527324397749182720, 0.526954462808764120, 0.526584508493736840,
    0.526214534817702310,
  0.525844541794263210, 0.525474529437023890, 0.525104497759587900,
    0.524734446775560910,
  0.524364376498548390, 0.523994286942156220, 0.523624178119992400,
    0.523254050045663940,
  0.522883902732780290, 0.522513736194950230, 0.522143550445783310,
    0.521773345498891090,
  0.521403121367884030, 0.521032878066375100, 0.520662615607976660,
    0.520292334006301820,
  0.519922033274965560, 0.519551713427582000, 0.519181374477767470,
    0.518811016439137520,
  0.518440639325310040, 0.518070243149902240, 0.517699827926532130,
    0.517329393668819580,
  0.516958940390383700, 0.516588468104845820, 0.516217976825826600,
    0.515847466566947580,
  0.515476937341832310, 0.515106389164103120, 0.514735822047384990,
    0.514365236005302040,
  0.513994631051479240, 0.513624007199543600, 0.513253364463121090,
    0.512882702855839920,
  0.512512022391327980, 0.512141323083213470, 0.511770604945127050,
    0.511399867990697920,
  0.511029112233557960, 0.510658337687338040, 0.510287544365671140,
    0.509916732282189920,
  0.509545901450527690, 0.509175051884319660, 0.508804183597200140,
    0.508433296602805670,
  0.508062390914772230, 0.507691466546736580, 0.507320523512337470,
    0.506949561825212450,
  0.506578581499001590, 0.506207582547344550, 0.505836564983881190,
    0.505465528822253710,
  0.505094474076103310, 0.504723400759073290, 0.504352308884806750,
    0.503981198466947000,
  0.503610069519139780, 0.503238922055029400, 0.502867756088262840,
    0.502496571632486070,
  0.502125368701347050, 0.501754147308493770, 0.501382907467574190,
    0.501011649192238950,
  0.500640372496137020, 0.500269077392920150, 0.499897763896239410,
    0.499526432019746450,
  0.499155081777094940, 0.498783713181937540, 0.498412326247929250,
    0.498040920988724490,
  0.497669497417978280, 0.497298055549347750, 0.496926595396488870,
    0.496555116973059980,
  0.496183620292718900, 0.495812105369124070, 0.495440572215935850,
    0.495069020846813650,
  0.494697451275419140, 0.494325863515413130, 0.493954257580458580,
    0.493582633484217940,
  0.493210991240354450, 0.492839330862533120, 0.492467652364417970,
    0.492095955759675460,
  0.491724241061971320, 0.491352508284972070, 0.490980757442346090,
    0.490608988547760690,
  0.490237201614885710, 0.489865396657390210, 0.489493573688943970,
    0.489121732723218740,
  0.488749873773885120, 0.488377996854616250, 0.488006101979084450,
    0.487634189160962910,
  0.487262258413926560, 0.486890309751649490, 0.486518343187807900,
    0.486146358736077200,
  0.485774356410135000, 0.485402336223658360, 0.485030298190324950,
    0.484658242323814380,
  0.484286168637805270, 0.483914077145978560, 0.483541967862014480,
    0.483169840799594130,
  0.482797695972400300, 0.482425533394114920, 0.482053353078422120,
    0.481681155039005550,
  0.481308939289549380, 0.480936705843739820, 0.480564454715261990,
    0.480192185917803270,
  0.479819899465050160, 0.479447595370691370, 0.479075273648415010,
    0.478702934311909910,
  0.478330577374866780, 0.477958202850975230, 0.477585810753927250,
    0.477213401097414220,
  0.476840973895128200, 0.476468529160763100, 0.476096066908011760,
    0.475723587150569390,
  0.475351089902130650, 0.474978575176390750, 0.474606042987046840,
    0.474233493347795020,
  0.473860926272333670, 0.473488341774360670, 0.473115739867574380,
    0.472743120565675250,
  0.472370483882362520, 0.471997829831337810, 0.471625158426301700,
    0.471252469680957190,
  0.470879763609006460, 0.470507040224152460, 0.470134299540099940,
    0.469761541570552780,
  0.469388766329217000, 0.469015973829798090, 0.468643164086002100,
    0.468270337111537040,
  0.467897492920109850, 0.467524631525429830, 0.467151752941205530,
    0.466778857181146260,
  0.466405944258963200, 0.466033014188366350, 0.465660066983068220,
    0.465287102656780530,
  0.464914121223215740, 0.464541122696088100, 0.464168107089110940,
    0.463795074415999760,
  0.463422024690469060, 0.463048957926235630, 0.462675874137015720,
    0.462302773336526080,
  0.461929655538485470, 0.461556520756611410, 0.461183369004623920,
    0.460810200296242310,
  0.460437014645186440, 0.460063812065178160, 0.459690592569938270,
    0.459317356173189750,
  0.458944102888655060, 0.458570832730057170, 0.458197545711121090,
    0.457824241845570630,
  0.457450921147131930, 0.457077583629530550, 0.456704229306492570,
    0.456330858191746010,
  0.455957470299017840, 0.455584065642037350, 0.455210644234532610,
    0.454837206090234200,
  0.454463751222871910, 0.454090279646176210, 0.453716791373879380,
    0.453343286419712720,
  0.452969764797409750, 0.452596226520703360, 0.452222671603327130,
    0.451849100059016350,
  0.451475511901505420, 0.451101907144530910, 0.450728285801828830,
    0.450354647887135640,
  0.449980993414189900, 0.449607322396728900, 0.449233634848492320,
    0.448859930783219170,
  0.448486210214649020, 0.448112473156523420, 0.447738719622582710,
    0.447364949626569590,
  0.446991163182225700, 0.446617360303294910, 0.446243541003520480,
    0.445869705296646270,
  0.445495853196417930, 0.445121984716580210, 0.444748099870879880,
    0.444374198673063330,
  0.444000281136877280, 0.443626347276070590, 0.443252397104390790,
    0.442878430635587910,
  0.442504447883411090, 0.442130448861610240, 0.441756433583937120,
    0.441382402064142250,
  0.441008354315978680, 0.440634290353198510, 0.440260210189554690,
    0.439886113838801880,
  0.439512001314693700, 0.439137872630986080, 0.438763727801433690,
    0.438389566839793740,
  0.438015389759822630, 0.437641196575277220, 0.437266987299916590,
    0.436892761947498260,
  0.436518520531782470, 0.436144263066528480, 0.435769989565496290,
    0.435395700042447710,
  0.435021394511143410, 0.434647072985346380, 0.434272735478819010,
    0.433898382005324050,
  0.433524012578626440, 0.433149627212489670, 0.432775225920679740,
    0.432400808716961900,
  0.432026375615101930, 0.431651926628867530, 0.431277461772025310,
    0.430902981058344070,
  0.430528484501591540, 0.430153972115537800, 0.429779443913952170,
    0.429404899910604490,
  0.429030340119266550, 0.428655764553708960, 0.428281173227704760,
    0.427906566155026040,
  0.427531943349445720, 0.427157304824738350, 0.426782650594677570,
    0.426407980673039090,
  0.426033295073598160, 0.425658593810130330, 0.425283876896413280,
    0.424909144346223290,
  0.424534396173339160, 0.424159632391538870, 0.423784853014600950,
    0.423410058056305830,
  0.423035247530432810, 0.422660421450763490, 0.422285579831078230,
    0.421910722685159720,
  0.421535850026790060, 0.421160961869751720, 0.420786058227829220,
    0.420411139114805770,
  0.420036204544466940, 0.419661254530597550, 0.419286289086983070,
    0.418911308227410740,
  0.418536311965666650, 0.418161300315539220, 0.417786273290816130,
    0.417411230905285650,
  0.417036173172737830, 0.416661100106961610, 0.416286011721748230,
    0.415910908030888200,
  0.415535789048172620, 0.415160654787394280, 0.414785505262345030,
    0.414410340486818910,
  0.414035160474608700, 0.413659965239509710, 0.413284754795316230,
    0.412909529155823300,
  0.412534288334827750, 0.412159032346125280, 0.411783761203513790,
    0.411408474920790520,
  0.411033173511753220, 0.410657856990201580, 0.410282525369933980,
    0.409907178664751180,
  0.409531816888453190, 0.409156440054840590, 0.408781048177715660,
    0.408405641270879690,
  0.408030219348136270, 0.407654782423288010, 0.407279330510138260,
    0.406903863622492260,
  0.406528381774153900, 0.406152884978929480, 0.405777373250624070,
    0.405401846603045010,
  0.405026305049998980, 0.404650748605293040, 0.404275177282736260,
    0.403899591096136380,
  0.403523990059303620, 0.403148374186047210, 0.402772743490177110,
    0.402397097985504990,
  0.402021437685841480, 0.401645762604999350, 0.401270072756790610,
    0.400894368155027990,
  0.400518648813525830, 0.400142914746097480, 0.399767165966558420,
    0.399391402488723400,
  0.399015624326407800, 0.398639831493428740, 0.398264024003602220,
    0.397888201870746420,
  0.397512365108678430, 0.397136513731217500, 0.396760647752182230,
    0.396384767185391620,
  0.396008872044666730, 0.395632962343827170, 0.395257038096694990,
    0.394881099317091370,
  0.394505146018838130, 0.394129178215758820, 0.393753195921675850,
    0.393377199150413860,
  0.393001187915796750, 0.392625162231649010, 0.392249122111796800,
    0.391873067570065240,
  0.391496998620281590, 0.391120915276272410, 0.390744817551864850,
    0.390368705460887750,
  0.389992579017168830, 0.389616438234538010, 0.389240283126824070,
    0.388864113707858060,
  0.388487929991470140, 0.388111731991491180, 0.387735519721753690,
    0.387359293196089140,
  0.386983052428331030, 0.386606797432312350, 0.386230528221866430,
    0.385854244810828530,
  0.385477947213032580, 0.385101635442314900, 0.384725309512510880,
    0.384348969437456610,
  0.383972615230989860, 0.383596246906947210, 0.383219864479167560,
    0.382843467961488940,
  0.382467057367749940, 0.382090632711791060, 0.381714194007451380,
    0.381337741268572390,
  0.380961274508994250, 0.380584793742559550, 0.380208298983109930,
    0.379831790244487540,
  0.379455267540536490, 0.379078730885099520, 0.378702180292021630,
    0.378325615775147170,
  0.377949037348320800, 0.377572445025389230, 0.377195838820197690,
    0.376819218746593910,
  0.376442584818424570, 0.376065937049537060, 0.375689275453780500,
    0.375312600045002780,
  0.374935910837054080, 0.374559207843783660, 0.374182491079041500,
    0.373805760556679190,
  0.373429016290547200, 0.373052258294498230, 0.372675486582383640,
    0.372298701168057190,
  0.371921902065371730, 0.371545089288180640, 0.371168262850339210,
    0.370791422765701320,
  0.370414569048123140, 0.370037701711460170, 0.369660820769568240,
    0.369283926236305070,
  0.368907018125527120, 0.368530096451093140, 0.368153161226860980,
    0.367776212466689010,
  0.367399250184437480, 0.367022274393965340, 0.366645285109133750,
    0.366268282343803150,
  0.365891266111834370, 0.365514236427090080, 0.365137193303431750,
    0.364760136754723020,
  0.364383066794826350, 0.364005983437606320, 0.363628886696926890,
    0.363251776586652310,
  0.362874653120648700, 0.362497516312780990, 0.362120366176916230,
    0.361743202726920790,
  0.361366025976661450, 0.360988835940006750, 0.360611632630824020,
    0.360234416062982840,
  0.359857186250351960, 0.359479943206800550, 0.359102686946199680,
    0.358725417482419150,
  0.358348134829330870, 0.357970839000806010, 0.357593530010716310,
    0.357216207872935120,
  0.356838872601334680, 0.356461524209789380, 0.356084162712172360,
    0.355706788122359060,
  0.355329400454223950, 0.354951999721642100, 0.354574585938490280,
    0.354197159118644080,
  0.353819719275981330, 0.353442266424378930, 0.353064800577714280,
    0.352687321749866610,
  0.352309829954713830, 0.351932325206136210, 0.351554807518012990,
    0.351177276904224070,
  0.350799733378650890, 0.350422176955173910, 0.350044607647675640,
    0.349667025470037810,
  0.349289430436142520, 0.348911822559873850, 0.348534201855114360,
    0.348156568335749040,
  0.347778922015661520, 0.347401262908737570, 0.347023591028862320,
    0.346645906389921150,
  0.346268209005801410, 0.345890498890388980, 0.345512776057572080,
    0.345135040521238170,
  0.344757292295274910, 0.344379531393571970, 0.344001757830017680,
    0.343623971618502560,
  0.343246172772916250, 0.342868361307148980, 0.342490537235092600,
    0.342112700570637750,
  0.341734851327677280, 0.341356989520103240, 0.340979115161808070,
    0.340601228266685980,
  0.340223328848629880, 0.339845416921535030, 0.339467492499295200,
    0.339089555595806560,
  0.338711606224964210, 0.338333644400663940, 0.337955670136803170,
    0.337577683447278010,
  0.337199684345986910, 0.336821672846827290, 0.336443648963697160,
    0.336065612710496290,
  0.335687564101123050, 0.335309503149478110, 0.334931429869461230,
    0.334553344274972690,
  0.334175246379914470, 0.333797136198187240, 0.333419013743693980,
    0.333040879030336690,
  0.332662732072017800, 0.332284572882641680, 0.331906401476111280,
    0.331528217866331690,
  0.331150022067206780, 0.330771814092642610, 0.330393593956544440,
    0.330015361672817750,
  0.329637117255370090, 0.329258860718107450, 0.328880592074938190,
    0.328502311339769700,
  0.328124018526509800, 0.327745713649068180, 0.327367396721353070,
    0.326989067757275040,
  0.326610726770743760, 0.326232373775669270, 0.325854008785963320,
    0.325475631815536570,
  0.325097242878301660, 0.324718841988170470, 0.324340429159055250,
    0.323962004404870050,
  0.323583567739527570, 0.323205119176942720, 0.322826658731029110,
    0.322448186415702550,
  0.322069702244877910, 0.321691206232470550, 0.321312698392397570,
    0.320934178738574720,
  0.320555647284919980, 0.320177104045350440, 0.319798549033783570,
    0.319419982264138650,
  0.319041403750333630, 0.318662813506288670, 0.318284211545923010,
    0.317905597883156250,
  0.317526972531909870, 0.317148335506103940, 0.316769686819660780,
    0.316391026486501690,
  0.316012354520548600, 0.315633670935725030, 0.315254975745953180,
    0.314876268965157470,
  0.314497550607261090, 0.314118820686189180, 0.313740079215866160,
    0.313361326210216840,
  0.312982561683167790, 0.312603785648644220, 0.312224998120573420,
    0.311846199112882030,
  0.311467388639496860, 0.311088566714346650, 0.310709733351358600,
    0.310330888564462340,
  0.309952032367586390, 0.309573164774659850, 0.309194285799613390,
    0.308815395456376430,
  0.308436493758880660, 0.308057580721056660, 0.307678656356835560,
    0.307299720680150270,
  0.306920773704932260, 0.306541815445115160, 0.306162845914631390,
    0.305783865127415400,
  0.305404873097400780, 0.305025869838521590, 0.304646855364713530,
    0.304267829689911010,
  0.303888792828050650, 0.303509744793068030, 0.303130685598899270,
    0.302751615259482190,
  0.302372533788753170, 0.301993441200650910, 0.301614337509113100,
    0.301235222728077840,
  0.300856096871485010, 0.300476959953273060, 0.300097811987382670,
    0.299718652987753580,
  0.299339482968325970, 0.298960301943041680, 0.298581109925841300,
    0.298201906930667390,
  0.297822692971461410, 0.297443468062166820, 0.297064232216726120,
    0.296684985449082390,
  0.296305727773180260, 0.295926459202963120, 0.295547179752376430,
    0.295167889435364820,
  0.294788588265873170, 0.294409276257848300, 0.294029953425235520,
    0.293650619781982260,
  0.293271275342035120, 0.292891920119341120, 0.292512554127848930,
    0.292133177381505850,
  0.291753789894261320, 0.291374391680063520, 0.290994982752862730,
    0.290615563126608250,
  0.290236132815249790, 0.289856691832738880, 0.289477240193025510,
    0.289097777910061970,
  0.288718304997799550, 0.288338821470189910, 0.287959327341186510,
    0.287579822624741350,
  0.287200307334808670, 0.286820781485341620, 0.286441245090293950,
    0.286061698163620930,
  0.285682140719276560, 0.285302572771216960, 0.284922994333397350,
    0.284543405419773240,
  0.284163806044301910, 0.283784196220939370, 0.283404575963643550,
    0.283024945286371230,
  0.282645304203081090, 0.282265652727731130, 0.281885990874279570,
    0.281506318656686290,
  0.281126636088910030, 0.280746943184911340, 0.280367239958650150,
    0.279987526424086530,
  0.279607802595182420, 0.279228068485898210, 0.278848324110196550,
    0.278468569482039130,
  0.278088804615388040, 0.277709029524206950, 0.277329244222458250,
    0.276949448724106480,
  0.276569643043115150, 0.276189827193448200, 0.275810001189071290,
    0.275430165043948570,
  0.275050318772046500, 0.274670462387330010, 0.274290595903766200,
    0.273910719335321300,
  0.273530832695961790, 0.273150935999655950, 0.272771029260370560,
    0.272391112492074590,
  0.272011185708736060, 0.271631248924323390, 0.271251302152806570,
    0.270871345408154380,
  0.270491378704337540, 0.270111402055325910, 0.269731415475089780,
    0.269351418977600950,
  0.268971412576829990, 0.268591396286749500, 0.268211370121331170,
    0.267831334094547010,
  0.267451288220370730, 0.267071232512774700, 0.266691166985733360,
    0.266311091653219700,
  0.265931006529208920, 0.265550911627675250, 0.265170806962593210,
    0.264790692547939020,
  0.264410568397687560, 0.264030434525815760, 0.263650290946299660,
    0.263270137673115630,
  0.262889974720241610, 0.262509802101654310, 0.262129619831332370,
    0.261749427923253670,
  0.261369226391396310, 0.260989015249740050, 0.260608794512263380,
    0.260228564192946710,
  0.259848324305769600, 0.259468074864711960, 0.259087815883755400,
    0.258707547376880010,
  0.258327269358068100, 0.257946981841300490, 0.257566684840560170,
    0.257186378369829110,
  0.256806062443089680, 0.256425737074325920, 0.256045402277520320,
    0.255665058066657680,
  0.255284704455721660, 0.254904341458696390, 0.254523969089567590,
    0.254143587362319620,
  0.253763196290938850, 0.253382795889410710, 0.253002386171721110,
    0.252621967151857420,
  0.252241538843805680, 0.251861101261554090, 0.251480654419089730,
    0.251100198330400150,
  0.250719733009474530, 0.250339258470300590, 0.249958774726868170,
    0.249578281793165680,
  0.249197779683183660, 0.248817268410911650, 0.248436747990339490,
    0.248056218435458720,
  0.247675679760259450, 0.247295131978733870, 0.246914575104873220,
    0.246534009152669040,
  0.246153434136114490, 0.245772850069201410, 0.245392256965923620,
    0.245011654840274010,
  0.244631043706245800, 0.244250423577833860, 0.243869794469031620,
    0.243489156393834590,
  0.243108509366237320, 0.242727853400234670, 0.242347188509823150,
    0.241966514708997830,
  0.241585832011755900, 0.241205140432093070, 0.240824439984007180,
    0.240443730681495050,
  0.240063012538553830, 0.239682285569182310, 0.239301549787377890,
    0.238920805207139960,
  0.238540051842467020, 0.238159289707357810, 0.237778518815812740,
    0.237397739181830820,
  0.237016950819413100, 0.236636153742559610, 0.236255347965270780,
    0.235874533501548580,
  0.235493710365393630, 0.235112878570808560, 0.234732038131795020,
    0.234351189062355030,
  0.233970331376492150, 0.233589465088208580, 0.233208590211508550,
    0.232827706760394850,
  0.232446814748872410, 0.232065914190945020, 0.231685005100616930,
    0.231304087491893930,
  0.230923161378780380, 0.230542226775282770, 0.230161283695406500,
    0.229780332153157300,
  0.229399372162542610, 0.229018403737568290, 0.228637426892242400,
    0.228256441640571880,
  0.227875447996564060, 0.227494445974227850, 0.227113435587570770,
    0.226732416850602300,
  0.226351389777330990, 0.225970354381765690, 0.225589310677916880,
    0.225208258679793520,
  0.224827198401406690, 0.224446129856766040, 0.224065053059883250,
    0.223683968024768950,
  0.223302874765434120, 0.222921773295891380, 0.222540663630151820,
    0.222159545782228660,
  0.221778419766134050, 0.221397285595880480, 0.221016143285482050,
    0.220634992848951380,
  0.220253834300303180, 0.219872667653551100, 0.219491492922709110,
    0.219110310121792800,
  0.218729119264816280, 0.218347920365795780, 0.217966713438746380,
    0.217585498497683580,
  0.217204275556624420, 0.216823044629584520, 0.216441805730581500,
    0.216060558873631570,
  0.215679304072752960, 0.215298041341962870, 0.214916770695278810,
    0.214535492146719880,
  0.214154205710303750, 0.213772911400050090, 0.213391609229977570,
    0.213010299214105140,
  0.212628981366453330, 0.212247655701041290, 0.211866322231890090,
    0.211484980973019880,
  0.211103631938451000, 0.210722275142205480, 0.210340910598303870,
    0.209959538320768660,
  0.209578158323621420, 0.209196770620883960, 0.208815375226579670,
    0.208433972154730530,
  0.208052561419360520, 0.207671143034492080, 0.207289717014149830,
    0.206908283372357230,
  0.206526842123138070, 0.206145393280517730, 0.205763936858520150,
    0.205382472871171230,
  0.205001001332495910, 0.204619522256519300, 0.204238035657268250,
    0.203856541548768030,
  0.203475039945045950, 0.203093530860128300, 0.202712014308041620,
    0.202330490302814110,
  0.201948958858472420, 0.201567419989045200, 0.201185873708560170,
    0.200804320031045230,
  0.200422758970529910, 0.200041190541042220, 0.199659614756612230,
    0.199278031631268500,
  0.198896441179041650, 0.198514843413961220, 0.198133238350057030,
    0.197751626001360480,
  0.197370006381901520, 0.196988379505712050, 0.196606745386822960,
    0.196225104039265410,
  0.195843455477072190, 0.195461799714274460, 0.195080136764905570,
    0.194698466642997730,
  0.194316789362583340, 0.193935104937696560, 0.193553413382369890,
    0.193171714710637930,
  0.192790008936534220, 0.192408296074092570, 0.192026576137348330,
    0.191644849140335360,
  0.191263115097089540, 0.190881374021645320, 0.190499625928039040,
    0.190117870830306100,
  0.189736108742482030, 0.189354339678604100, 0.188972563652707950,
    0.188590780678831250,
  0.188208990771010640, 0.187827193943283040, 0.187445390209686870,
    0.187063579584259070,
  0.186681762081038650, 0.186299937714063470, 0.185918106497371700,
    0.185536268445003070,
  0.185154423570995760, 0.184772571889390000, 0.184390713414225000,
    0.184008848159540110,
  0.183626976139376310, 0.183245097367773090, 0.182863211858771880,
    0.182481319626412670,
  0.182099420684737420, 0.181717515047787020, 0.181335602729602590,
    0.180953683744226880,
  0.180571758105701030, 0.180189825828068250, 0.179807886925370670,
    0.179425941411650660,
  0.179043989300952110, 0.178662030607317450, 0.178280065344791100,
    0.177898093527416370,
  0.177516115169236820, 0.177134130284297610, 0.176752138886642350,
    0.176370140990316640,
  0.175988136609365020, 0.175606125757832240, 0.175224108449764660,
    0.174842084699207030,
  0.174460054520206240, 0.174078017926807490, 0.173695974933058080,
    0.173313925553004180,
  0.172931869800692250, 0.172549807690170230, 0.172167739235484620,
    0.171785664450683800,
  0.171403583349815180, 0.171021495946926340, 0.170639402256066410,
    0.170257302291283000,
  0.169875196066625710, 0.169493083596143100, 0.169110964893883830,
    0.168728839973898290,
  0.168346708850235140, 0.167964571536945220, 0.167582428048078130,
    0.167200278397683750,
  0.166818122599813570, 0.166435960668517400, 0.166053792617847200,
    0.165671618461853270,
  0.165289438214587970, 0.164907251890102520, 0.164525059502448390,
    0.164142861065678550,
  0.163760656593844480, 0.163378446100999640, 0.162996229601196390,
    0.162614007108487250,
  0.162231778636926370, 0.161849544200566300, 0.161467303813461580,
    0.161085057489665670,
  0.160702805243232240, 0.160320547088216470, 0.159938283038672050,
    0.159556013108654580,
  0.159173737312218650, 0.158791455663418930, 0.158409168176311760,
    0.158026874864951870,
  0.157644575743395960, 0.157262270825699210, 0.156879960125918730,
    0.156497643658110590,
  0.156115321436331000, 0.155732993474637760, 0.155350659787087090,
    0.154968320387737170,
  0.154585975290645110, 0.154203624509868190, 0.153821268059465250,
    0.153438905953493550,
  0.153056538206012340, 0.152674164831079730, 0.152291785842754070,
    0.151909401255095250,
  0.151527011082161540, 0.151144615338013210, 0.150762214036709470,
    0.150379807192309620,
  0.149997394818874590, 0.149614976930463660, 0.149232553541138180,
    0.148850124664957870,
  0.148467690315984390, 0.148085250508278370, 0.147702805255900570,
    0.147320354572913260,
  0.146937898473377210, 0.146555436971355090, 0.146172970080908520,
    0.145790497816099230,
  0.145408020190990560, 0.145025537219644170, 0.144643048916123810,
    0.144260555294492000,
  0.143878056368811510, 0.143495552153146630, 0.143113042661560050,
    0.142730527908116440,
  0.142348007906879320, 0.141965482671912420, 0.141582952217280980,
    0.141200416557048680,
  0.140817875705281120, 0.140435329676042390, 0.140052778483398480,
    0.139670222141414250,
  0.139287660664154770, 0.138905094065686600, 0.138522522360074780,
    0.138139945561386200,
  0.137757363683686740, 0.137374776741042340, 0.136992184747520560,
    0.136609587717187310,
  0.136226985664110460, 0.135844378602356760, 0.135461766545993150,
    0.135079149509088060,
  0.134696527505708320, 0.134313900549922760, 0.133931268655799020,
    0.133548631837404950,
  0.133165990108809860, 0.132783343484081580, 0.132400691977289760,
    0.132018035602502530,
  0.131635374373789940, 0.131252708305220960, 0.130870037410864640,
    0.130487361704791580,
  0.130104681201070800, 0.129721995913773260, 0.129339305856968730,
    0.128956611044727220,
  0.128573911491120210, 0.128191207210217570, 0.127808498216091110,
    0.127425784522811530,
  0.127043066144449680, 0.126660343095077900, 0.126277615388766920,
    0.125894883039589430,
  0.125512146061616980, 0.125129404468921260, 0.124746658275575490,
    0.124363907495651240,
  0.123981152143222060, 0.123598392232359880, 0.123215627777138580,
    0.122832858791630880,
  0.122450085289909640, 0.122067307286049230, 0.121684524794122440,
    0.121301737828203960,
  0.120918946402367330, 0.120536150530686250, 0.120153350227235940,
    0.119770545506089950,
  0.119387736381323830, 0.119004922867011920, 0.118622104977228730,
    0.118239282726050290,
  0.117856456127550970, 0.117473625195807100, 0.117090789944893860,
    0.116707950388886520,
  0.116325106541861910, 0.115942258417895240, 0.115559406031063570,
    0.115176549395442460,
  0.114793688525109290, 0.114410823434140360, 0.114027954136612060,
    0.113645080646602280,
  0.113262202978187320, 0.112879321145445350, 0.112496435162453430,
    0.112113545043288730,
  0.111730650802029900, 0.111347752452754000, 0.110964850009539970,
    0.110581943486465610,
  0.110199032897608850, 0.109816118257049110, 0.109433199578864170,
    0.109050276877133770,
  0.108667350165936400, 0.108284419459350770, 0.107901484771457020,
    0.107518546116333660,
  0.107135603508061170, 0.106752656960718350, 0.106369706488385940,
    0.105986752105143480,
  0.105603793825070680, 0.105220831662248700, 0.104837865630757090,
    0.104454895744677270,
  0.104071922018089540, 0.103688944465074300, 0.103305963099713400,
    0.102922977936087120,
  0.102539988988277600, 0.102156996270365800, 0.101773999796432830,
    0.101390999580561250,
  0.101007995636832020, 0.100624987979327970, 0.100241976622130760,
    0.099858961579322170,
  0.099475942864985456, 0.099092920493202258, 0.098709894478056073,
    0.098326864833628791,
  0.097943831574004214, 0.097560794713264939, 0.097177754265493674,
    0.096794710244774623,
  0.096411662665190329, 0.096028611540825232, 0.095645556885762609,
    0.095262498714085819,
  0.094879437039879722, 0.094496371877227495, 0.094113303240214247,
    0.093730231142923864,
  0.093347155599440373, 0.092964076623849271, 0.092580994230234359,
    0.092197908432681386,
  0.091814819245274432, 0.091431726682099479, 0.091048630757241303,
    0.090665531484784803,
  0.090282428878816323, 0.089899322953420582, 0.089516213722684160,
    0.089133101200692441,
  0.088749985401530951, 0.088366866339286629, 0.087983744028044805,
    0.087600618481892656,
  0.087217489714916191, 0.086834357741201490, 0.086451222574836131,
    0.086068084229906014,
  0.085684942720498897, 0.085301798060701386, 0.084918650264600160,
    0.084535499346283349,
  0.084152345319837438, 0.083769188199350780, 0.083386027998910095,
    0.083002864732603973,
  0.082619698414519799, 0.082236529058745025, 0.081853356679368619,
    0.081470181290477811,
  0.081087002906161790, 0.080703821540508452, 0.080320637207605849,
    0.079937449921543474,
  0.079554259696409127, 0.079171066546292510, 0.078787870485282088,
    0.078404671527466441,
  0.078021469686935602, 0.077638264977777913, 0.077255057414083589,
    0.076871847009941652,
  0.076488633779441206, 0.076105417736672773, 0.075722198895725248,
    0.075338977270689375,
  0.074955752875654230, 0.074572525724710764, 0.074189295831948693,
    0.073806063211457842,
  0.073422827877329483, 0.073039589843653177, 0.072656349124520389,
    0.072273105734021334,
  0.071889859686246352, 0.071506610995287156, 0.071123359675233852,
    0.070740105740178361,
  0.070356849204211397, 0.069973590081423773, 0.069590328385907715,
    0.069207064131753759,
  0.068823797333054326, 0.068440528003900616, 0.068057256158383886,
    0.067673981810596848,
  0.067290704974630494, 0.066907425664577733, 0.066524143894529736,
    0.066140859678579578,
  0.065757573030819083, 0.065374283965340146, 0.064990992496236119,
    0.064607698637598646,
  0.064224402403521202, 0.063841103808096086, 0.063457802865415636,
    0.063074499589573618,
  0.062691193994662109, 0.062307886094775049, 0.061924575904005130,
    0.061541263436445129,
  0.061157948706189229, 0.060774631727329942, 0.060391312513961619,
    0.060007991080177375,
  0.059624667440070382, 0.059241341607735261, 0.058858013597264912,
    0.058474683422754095,
  0.058091351098295878, 0.057708016637985186, 0.057324680055915692,
    0.056941341366181127,
  0.056558000582876661, 0.056174657720095743, 0.055791312791933681,
    0.055407965812484541,
  0.055024616795842439, 0.054641265756102911, 0.054257912707359794,
    0.053874557663708772,
  0.053491200639244271, 0.053107841648060788, 0.052724480704254229,
    0.052341117821918783,
  0.051957753015150501, 0.051574386298044173, 0.051191017684694640,
    0.050807647189198162,
  0.050424274825649297, 0.050040900608144430, 0.049657524550778251,
    0.049274146667647289,
  0.048890766972846805, 0.048507385480472134, 0.048124002204620014,
    0.047740617159385448,
  0.047357230358865306, 0.046973841817155179, 0.046590451548350717,
    0.046207059566548990,
  0.045823665885845313, 0.045440270520336883, 0.045056873484119603,
    0.044673474791289434,
  0.044290074455943754, 0.043906672492178188, 0.043523268914090238,
    0.043139863735776100,
  0.042756456971332048, 0.042373048634855741, 0.041989638740443119,
    0.041606227302191955,
  0.041222814334198304, 0.040839399850560058, 0.040455983865373815,
    0.040072566392736257,
  0.039689147446745419, 0.039305727041497644, 0.038922305191091085,
    0.038538881909622631,
  0.038155457211189216, 0.037772031109889144, 0.037388603619819022,
    0.037005174755077273,
  0.036621744529761024, 0.036238312957967478, 0.035854880053795196,
    0.035471445831341021,
  0.035088010304703626, 0.034704573487980395, 0.034321135395268765,
    0.033937696040667535,
  0.033554255438273790, 0.033170813602186440, 0.032787370546502645,
    0.032403926285321405,
  0.032020480832740429, 0.031637034202857461, 0.031253586409771626,
    0.030870137467580314,
  0.030486687390382738, 0.030103236192276818, 0.029719783887360508,
    0.029336330489733147,
  0.028952876013492331, 0.028569420472737472, 0.028185963881566689,
    0.027802506254078142,
  0.027419047604371360, 0.027035587946544135, 0.026652127294696067,
    0.026268665662925468,
  0.025885203065330677, 0.025501739516011413, 0.025118275029065638,
    0.024734809618593138,
  0.024351343298691951, 0.023967876083461924, 0.023584407987001611,
    0.023200939023409587,
  0.022817469206785804, 0.022433998551228459, 0.022050527070837558,
    0.021667054779711814,
  0.021283581691949955, 0.020900107821652084, 0.020516633182916549,
    0.020133157789843505,
  0.019749681656531803, 0.019366204797080316, 0.018982727225589285,
    0.018599248956157190,
  0.018215770002884327, 0.017832290379869671, 0.017448810101212228,
    0.017065329181012358,
  0.016681847633368677, 0.016298365472381587, 0.015914882712149747,
    0.015531399366773606,
  0.015147915450352307, 0.014764430976985016, 0.014380945960772247,
    0.013997460415812761,
  0.013613974356207112, 0.013230487796054543, 0.012847000749454314,
    0.012463513230507034,
  0.012080025253311559, 0.011696536831968529, 0.011313047980577277,
    0.010929558713237145,
  0.010546069044048827, 0.010162578987111254, 0.009779088556525145,
    0.009395597766389905,
  0.009012106630804949, 0.008628615163871038, 0.008245123379687167,
    0.007861631292354124,
  0.007478138915970929, 0.007094646264638386, 0.006711153352455981,
    0.006327660193523208,
  0.005944166801940901, 0.005560673191808128, 0.005177179377225743,
    0.004793685372293270,
  0.004410191191110246, 0.004026696847777542, 0.003643202356394263,
    0.003259707731061291,
  0.002876212985878184, 0.002492718134944503, 0.002109223192361147,
    0.001725728172227238,
  0.001342233088643682, 0.000958737955710053, 0.000575242787525925,
    0.000191747598192208,

};














 

arm_status arm_dct4_init_f32(
  arm_dct4_instance_f32 * S,
  arm_rfft_instance_f32 * S_RFFT,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  float32_t normalize)
{
   
  arm_status status = ARM_MATH_SUCCESS;

   
  float32_t *twiddlePtr[4] =
    { (float32_t *) Weights_128, (float32_t *) Weights_512,
    (float32_t *) Weights_2048, (float32_t *) Weights_8192
  };

   
  float32_t *pCosFactor[4] =
    { (float32_t *) cos_factors_128, (float32_t *) cos_factors_512,
    (float32_t *) cos_factors_2048, (float32_t *) cos_factors_8192
  };

   
  S->N = N;

   
  S->Nby2 = Nby2;

   
  S->normalize = normalize;

   
  S->pRfft = S_RFFT;

   
  S->pCfft = S_CFFT;

  switch (N)
  {
     
  case 8192u:
    S->pTwiddle = twiddlePtr[3];
    S->pCosFactor = pCosFactor[3];
    break;
  case 2048u:
    S->pTwiddle = twiddlePtr[2];
    S->pCosFactor = pCosFactor[2];
    break;
  case 512u:
    S->pTwiddle = twiddlePtr[1];
    S->pCosFactor = pCosFactor[1];
    break;
  case 128u:
    S->pTwiddle = twiddlePtr[0];
    S->pCosFactor = pCosFactor[0];
    break;
  default:
    status = ARM_MATH_ARGUMENT_ERROR;
  }

   
  arm_rfft_init_f32(S->pRfft, S->pCfft, S->N, 0u, 1u);

   
  return (status);
}



 
