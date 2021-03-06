#line 1 "..\\..\\..\\chip_5411x\\startup\\sysinit.c"





























 

#line 1 "..\\..\\..\\brd_xpresso54114\\inc\\board.h"





























 




#line 1 "..\\..\\..\\chip_5411x\\inc\\chip.h"





























 




#line 1 "..\\..\\..\\chip_5411x\\inc\\lpc_types.h"





























 




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






 
#line 36 "..\\..\\..\\chip_5411x\\inc\\lpc_types.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 37 "..\\..\\..\\chip_5411x\\inc\\lpc_types.h"




 



 



 
typedef enum {FALSE = 0, TRUE = !FALSE} Bool;



 






 
typedef enum {RESET = 0, SET = !RESET} FlagStatus, IntStatus, SetState;




 
typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;




 
typedef enum {ERROR = 0, SUCCESS = !ERROR} Status;



 
typedef enum {
	NONE_BLOCKING = 0,		 
	BLOCKING,				 
} TRANSFER_BLOCK_T;

 
typedef void (*PFV)();

 
typedef int32_t (*PFI)();



 



 




 

 





 

 














 

 


 




 


 

 


#line 150 "..\\..\\..\\chip_5411x\\inc\\lpc_types.h"



 

 


 

 
typedef char CHAR;

 
typedef uint8_t UNS_8;

 
typedef int8_t INT_8;

 
typedef uint16_t UNS_16;

 
typedef int16_t INT_16;

 
typedef uint32_t UNS_32;

 
typedef int32_t INT_32;

 
typedef int64_t INT_64;

 
typedef uint64_t UNS_64;






 
typedef _Bool BOOL_32;

 
typedef _Bool BOOL_16;

 
typedef _Bool BOOL_8;








#line 216 "..\\..\\..\\chip_5411x\\inc\\lpc_types.h"



 



 

#line 36 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\cmsis.h"


























 




#line 33 "..\\..\\..\\chip_5411x\\inc\\cmsis.h"





 
#line 1 "..\\..\\..\\chip_5411x\\inc\\cmsis_5411x.h"





























 











 



  #pragma diag_suppress 2525
  #pragma push
  #pragma anon_unions
#line 60 "..\\..\\..\\chip_5411x\\inc\\cmsis_5411x.h"





 







 

typedef enum {
	 
	Reset_IRQn                    = -15,     
	NonMaskableInt_IRQn           = -14,     
	HardFault_IRQn                = -13,     
	MemoryManagement_IRQn         = -12,     
	BusFault_IRQn                 = -11,     
	UsageFault_IRQn               = -10,     
	SVCall_IRQn                   =  -5,     
	DebugMonitor_IRQn             =  -4,     
	PendSV_IRQn                   =  -2,     
	SysTick_IRQn                  =  -1,     

	 
	WDTBOD_IRQn,         
	DMA_IRQn,            
	GINT0_IRQn,          
	GINT1_IRQn,          
	PIN_INT0_IRQn,       
	PIN_INT1_IRQn,       
	PIN_INT2_IRQn,       
	PIN_INT3_IRQn,       
	UTICK_IRQn,          
	MRT_IRQn,            
	CT32B0_IRQn,         
	CT32B1_IRQn,         
	SCT0_IRQn,           
	CT32B3_IRQn,         
	FLEXCOMM0_IRQn,      
	FLEXCOMM1_IRQn,      
	FLEXCOMM2_IRQn,      
	FLEXCOMM3_IRQn,      
	FLEXCOMM4_IRQn,      
	FLEXCOMM5_IRQn,      
	FLEXCOMM6_IRQn,      
	FLEXCOMM7_IRQn,      
	ADC_SEQA_IRQn,       
	ADC_SEQB_IRQn,       
	ADC_THCMP_IRQn,      
	DMIC_IRQn,           
	HWVAD_IRQn,          
	USBACT_IRQn,         
	USB_IRQn,            
	RTC_IRQn,            
	Reserved_IRQn,       
	MAILBOX_IRQn,        
	PIN_INT4_IRQn,       
	PIN_INT5_IRQn,       
	PIN_INT6_IRQn,       
	PIN_INT7_IRQn,       
	CT32B2_IRQn,         
	CT32B4_IRQn,         
	Reserved1_IRQn,      
	SPIFI_IRQn,          
} LPC5411X_IRQn_Type;



 





 



 

 






 
#line 162 "..\\..\\..\\chip_5411x\\inc\\cmsis_5411x.h"

 
#line 173 "..\\..\\..\\chip_5411x\\inc\\cmsis_5411x.h"



 



 





#line 41 "..\\..\\..\\chip_5411x\\inc\\cmsis.h"
typedef LPC5411X_IRQn_Type IRQn_Type;
#line 1 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"
 







 

























 
























 




 


 

 













#line 104 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"


 
#line 118 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"

#line 167 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"

#line 169 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

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










 










 











 









 









 









 











 











 











 







 










 










 









 






#line 685 "..\\..\\..\\chip_5411x\\inc\\core_cmInstr.h"

   

#line 170 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
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




#line 632 "..\\..\\..\\chip_5411x\\inc\\core_cmFunc.h"

 


#line 171 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\core_cm4_simd.h"
 







 

























 












 


 



 


 

 
#line 120 "..\\..\\..\\chip_5411x\\inc\\core_cm4_simd.h"










 



#line 665 "..\\..\\..\\chip_5411x\\inc\\core_cm4_simd.h"

 




#line 172 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"








 
#line 207 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"

 






 
#line 223 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"

 













 


 





 


 
typedef union
{
  struct
  {



    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                

    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       



    uint32_t _reserved0:7;                
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                

    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[8];                  
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];                  
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];                  
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];                  
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];                  
       uint32_t RESERVED4[56];
  volatile uint8_t  IP[240];                  
       uint32_t RESERVED5[644];
  volatile  uint32_t STIR;                     
}  NVIC_Type;

 



 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
  volatile uint32_t VTOR;                     
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
  volatile uint8_t  SHP[12];                  
  volatile uint32_t SHCSR;                    
  volatile uint32_t CFSR;                     
  volatile uint32_t HFSR;                     
  volatile uint32_t DFSR;                     
  volatile uint32_t MMFAR;                    
  volatile uint32_t BFAR;                     
  volatile uint32_t AFSR;                     
  volatile const  uint32_t PFR[2];                   
  volatile const  uint32_t DFR;                      
  volatile const  uint32_t ADR;                      
  volatile const  uint32_t MMFR[4];                  
  volatile const  uint32_t ISAR[5];                  
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;                    
} SCB_Type;

 















 






























 



 





















 









 


















 










































 









 









 















 






 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile const  uint32_t ICTR;                     
  volatile uint32_t ACTLR;                    
} SCnSCB_Type;

 



 















 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 






 


 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                   
    volatile  uint16_t   u16;                  
    volatile  uint32_t   u32;                  
  }  PORT [32];                           
       uint32_t RESERVED0[864];
  volatile uint32_t TER;                      
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;                      
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;                      
       uint32_t RESERVED3[29];
  volatile  uint32_t IWR;                      
  volatile const  uint32_t IRR;                      
  volatile uint32_t IMCR;                     
       uint32_t RESERVED4[43];
  volatile  uint32_t LAR;                      
  volatile const  uint32_t LSR;                      
       uint32_t RESERVED5[6];
  volatile const  uint32_t PID4;                     
  volatile const  uint32_t PID5;                     
  volatile const  uint32_t PID6;                     
  volatile const  uint32_t PID7;                     
  volatile const  uint32_t PID0;                     
  volatile const  uint32_t PID1;                     
  volatile const  uint32_t PID2;                     
  volatile const  uint32_t PID3;                     
  volatile const  uint32_t CID0;                     
  volatile const  uint32_t CID1;                     
  volatile const  uint32_t CID2;                     
  volatile const  uint32_t CID3;                     
} ITM_Type;

 



 



























 



 



 



 









   






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t CYCCNT;                   
  volatile uint32_t CPICNT;                   
  volatile uint32_t EXCCNT;                   
  volatile uint32_t SLEEPCNT;                 
  volatile uint32_t LSUCNT;                   
  volatile uint32_t FOLDCNT;                  
  volatile const  uint32_t PCSR;                     
  volatile uint32_t COMP0;                    
  volatile uint32_t MASK0;                    
  volatile uint32_t FUNCTION0;                
       uint32_t RESERVED0[1];
  volatile uint32_t COMP1;                    
  volatile uint32_t MASK1;                    
  volatile uint32_t FUNCTION1;                
       uint32_t RESERVED1[1];
  volatile uint32_t COMP2;                    
  volatile uint32_t MASK2;                    
  volatile uint32_t FUNCTION2;                
       uint32_t RESERVED2[1];
  volatile uint32_t COMP3;                    
  volatile uint32_t MASK3;                    
  volatile uint32_t FUNCTION3;                
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   






 


 
typedef struct
{
  volatile uint32_t SSPSR;                    
  volatile uint32_t CSPSR;                    
       uint32_t RESERVED0[2];
  volatile uint32_t ACPR;                     
       uint32_t RESERVED1[55];
  volatile uint32_t SPPR;                     
       uint32_t RESERVED2[131];
  volatile const  uint32_t FFSR;                     
  volatile uint32_t FFCR;                     
  volatile const  uint32_t FSCR;                     
       uint32_t RESERVED3[759];
  volatile const  uint32_t TRIGGER;                  
  volatile const  uint32_t FIFO0;                    
  volatile const  uint32_t ITATBCTR2;                
       uint32_t RESERVED4[1];
  volatile const  uint32_t ITATBCTR0;                
  volatile const  uint32_t FIFO1;                    
  volatile uint32_t ITCTRL;                   
       uint32_t RESERVED5[39];
  volatile uint32_t CLAIMSET;                 
  volatile uint32_t CLAIMCLR;                 
       uint32_t RESERVED7[8];
  volatile const  uint32_t DEVID;                    
  volatile const  uint32_t DEVTYPE;                  
} TPI_Type;

 



 



 












 






 



 





















 



 





















 



 



 


















 






   







 


 
typedef struct
{
  volatile const  uint32_t TYPE;                     
  volatile uint32_t CTRL;                     
  volatile uint32_t RNR;                      
  volatile uint32_t RBAR;                     
  volatile uint32_t RASR;                     
  volatile uint32_t RBAR_A1;                  
  volatile uint32_t RASR_A1;                  
  volatile uint32_t RBAR_A2;                  
  volatile uint32_t RASR_A2;                  
  volatile uint32_t RBAR_A3;                  
  volatile uint32_t RASR_A3;                  
} MPU_Type;

 









 









 



 









 






























 








 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile uint32_t FPCCR;                    
  volatile uint32_t FPCAR;                    
  volatile uint32_t FPDSCR;                   
  volatile const  uint32_t MVFR0;                    
  volatile const  uint32_t MVFR1;                    
} FPU_Type;

 



























 



 












 
























 












 







 


 
typedef struct
{
  volatile uint32_t DHCSR;                    
  volatile  uint32_t DCRSR;                    
  volatile uint32_t DCRDR;                    
  volatile uint32_t DEMCR;                    
} CoreDebug_Type;

 




































 






 







































 






 

 
#line 1381 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"

#line 1390 "..\\..\\..\\chip_5411x\\inc\\core_cm4.h"











 










 

 



 




 










 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);                

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((0xFFFFUL << 16) | (7UL << 8));              
  reg_value  =  (reg_value                                 |
                ((uint32_t)0x5FA << 16) |
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}







 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);    
}







 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
 
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32_t)0x1F));  
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 3)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 3)) & 0xff);    }         
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 3)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)]           >> (8 - 3)));  }  
}













 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 3) ? 3 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 3) < 7) ? 0 : PriorityGroupTmp - 7 + 3;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}













 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 3) ? 3 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 3) < 7) ? 0 : PriorityGroupTmp - 7 + 3;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                 (1UL << 2));                    
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);       

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                   
  NVIC_SetPriority (SysTick_IRQn, (1<<3) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 



 




 

extern volatile int32_t ITM_RxBuffer;                     












 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0))                  &&       
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}








 
static __inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }

  return (ch);
}








 
static __inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

 





#line 43 "..\\..\\..\\chip_5411x\\inc\\cmsis.h"
#line 50 "..\\..\\..\\chip_5411x\\inc\\cmsis.h"





#line 37 "..\\..\\..\\chip_5411x\\inc\\chip.h"





#line 48 "..\\..\\..\\chip_5411x\\inc\\chip.h"

 










 







 

 
#line 77 "..\\..\\..\\chip_5411x\\inc\\chip.h"

 
#line 90 "..\\..\\..\\chip_5411x\\inc\\chip.h"

 





 




 
#line 121 "..\\..\\..\\chip_5411x\\inc\\chip.h"



 
#line 134 "..\\..\\..\\chip_5411x\\inc\\chip.h"

 
#line 146 "..\\..\\..\\chip_5411x\\inc\\chip.h"

 








 



 






 
extern const uint32_t ExtClockIn;



 

 
#line 1 "..\\..\\..\\chip_5411x\\inc\\lpc_assert.h"





























 




#line 56 "..\\..\\..\\chip_5411x\\inc\\lpc_assert.h"



#line 176 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\romapi_5411x.h"





























 




#line 36 "..\\..\\..\\chip_5411x\\inc\\romapi_5411x.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\iap.h"





























 











 

 
#line 57 "..\\..\\..\\chip_5411x\\inc\\iap.h"

 
#line 79 "..\\..\\..\\chip_5411x\\inc\\iap.h"

 
typedef void (*IAP_ENTRY_T)(unsigned int[5], unsigned int[4]);









 
uint8_t Chip_IAP_PreSectorForReadWrite(uint32_t strSector, uint32_t endSector);









 
uint8_t Chip_IAP_CopyRamToFlash(uint32_t dstAdd, uint32_t *srcAdd, uint32_t byteswrt);







 
uint8_t Chip_IAP_EraseSector(uint32_t strSector, uint32_t endSector);







 




uint8_t Chip_IAP_BlankCheckSector(uint32_t strSector, uint32_t endSector);




 
uint32_t Chip_IAP_ReadPID(void);




 
uint8_t Chip_IAP_ReadBootCode(void);









 
uint8_t Chip_IAP_Compare(uint32_t dstAdd, uint32_t srcAdd, uint32_t bytescmp);




 
uint8_t Chip_IAP_ReinvokeISP(void);




 
uint32_t Chip_IAP_ReadUID(void);







 





uint8_t Chip_IAP_ErasePage(uint32_t strPage, uint32_t endPage);



 





#line 37 "..\\..\\..\\chip_5411x\\inc\\romapi_5411x.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\error.h"

































 










 
typedef enum
{
    LPC_OK=0,  
    ERR_FAILED = -1,  
    ERR_TIME_OUT = -2,  
    ERR_BUSY = -3,	 

   
  ERR_ISP_BASE = 0x00000000,
    ERR_ISP_INVALID_COMMAND = ERR_ISP_BASE + 1,
    ERR_ISP_SRC_ADDR_ERROR,  
    ERR_ISP_DST_ADDR_ERROR,  
    ERR_ISP_SRC_ADDR_NOT_MAPPED,
    ERR_ISP_DST_ADDR_NOT_MAPPED,
    ERR_ISP_COUNT_ERROR,  
    ERR_ISP_INVALID_SECTOR,
    ERR_ISP_SECTOR_NOT_BLANK,
    ERR_ISP_SECTOR_NOT_PREPARED_FOR_WRITE_OPERATION,
    ERR_ISP_COMPARE_ERROR,
    ERR_ISP_BUSY,  
    ERR_ISP_PARAM_ERROR,  
    ERR_ISP_ADDR_ERROR,  
    ERR_ISP_ADDR_NOT_MAPPED,
    ERR_ISP_CMD_LOCKED,  
    ERR_ISP_INVALID_CODE,  
    ERR_ISP_INVALID_BAUD_RATE,
    ERR_ISP_INVALID_STOP_BIT,
    ERR_ISP_CODE_READ_PROTECTION_ENABLED,
    ERR_ISP_INVALID_FLASH_UNIT,
    ERR_ISP_USER_CODE_CHECKSUM,
    ERR_ISP_SETTING_ACTIVE_PARTITION,
    ERR_ISP_IRC_NO_POWER,
    ERR_ISP_FLASH_NO_POWER,
    ERR_ISP_EEPROM_NO_POWER,
    ERR_ISP_EEPROM_NO_CLOCK,
    ERR_ISP_FLASH_NO_CLOCK,
    ERR_ISP_REINVOKE_ISP_CONFIG,
  
   
  ERR_API_BASE = 0x00010000,
    ERR_API_INVALID_PARAMS = ERR_API_BASE + 1,  
    ERR_API_INVALID_PARAM1,  
    ERR_API_INVALID_PARAM2,  
    ERR_API_INVALID_PARAM3,  
    ERR_API_MOD_INIT,  

   
  ERR_SPIFI_BASE = 0x00020000,
    ERR_SPIFI_DEVICE_ERROR =ERR_SPIFI_BASE+1,  
    ERR_SPIFI_INTERNAL_ERROR,		    
    ERR_SPIFI_TIMEOUT,			    
    ERR_SPIFI_OPERAND_ERROR,		    
    ERR_SPIFI_STATUS_PROBLEM,		    
    ERR_SPIFI_UNKNOWN_EXT, 		    
    ERR_SPIFI_UNKNOWN_ID,  		    
    ERR_SPIFI_UNKNOWN_TYPE,		    
    ERR_SPIFI_UNKNOWN_MFG, 		    
    ERR_SPIFI_NO_DEVICE,
    ERR_SPIFI_ERASE_NEEDED, 		    

  SEC_AES_NO_ERROR=0,
   
  ERR_SEC_AES_BASE = 0x00030000,
    ERR_SEC_AES_WRONG_CMD=ERR_SEC_AES_BASE+1,
    ERR_SEC_AES_NOT_SUPPORTED,
    ERR_SEC_AES_KEY_ALREADY_PROGRAMMED,
    ERR_SEC_AES_DMA_CHANNEL_CFG,
    ERR_SEC_AES_DMA_MUX_CFG,
    SEC_AES_DMA_BUSY,      

   
  ERR_USBD_BASE = 0x00040000,
    ERR_USBD_INVALID_REQ = ERR_USBD_BASE + 1,  
    ERR_USBD_UNHANDLED,  
    ERR_USBD_STALL,      
    ERR_USBD_SEND_ZLP,   
    ERR_USBD_SEND_DATA,  
    ERR_USBD_BAD_DESC,   
    ERR_USBD_BAD_CFG_DESC, 
    ERR_USBD_BAD_INTF_DESC, 
    ERR_USBD_BAD_EP_DESC, 
    ERR_USBD_BAD_MEM_BUF,  
    ERR_USBD_TOO_MANY_CLASS_HDLR,  

   
  ERR_CGU_BASE = 0x00050000,
    ERR_CGU_NOT_IMPL=ERR_CGU_BASE+1,
    ERR_CGU_INVALID_PARAM,
    ERR_CGU_INVALID_SLICE,
    ERR_CGU_OUTPUT_GEN,
    ERR_CGU_DIV_SRC,
    ERR_CGU_DIV_VAL,
    ERR_CGU_SRC, 

   
  ERR_I2C_BASE = 0x00060000,
    ERR_I2C_BUSY = ERR_I2C_BASE,
    ERR_I2C_NAK,
    ERR_I2C_BUFFER_OVERFLOW,    
    ERR_I2C_BYTE_COUNT_ERR,     
    ERR_I2C_LOSS_OF_ARBRITRATION,    
    ERR_I2C_SLAVE_NOT_ADDRESSED,     
    ERR_I2C_LOSS_OF_ARBRITRATION_NAK_BIT,   
    ERR_I2C_GENERAL_FAILURE,         
    ERR_I2C_REGS_SET_TO_DEFAULT,
    ERR_I2C_TIMEOUT,
    ERR_I2C_BUFFER_UNDERFLOW,
    ERR_I2C_PARAM,
  
    
  ERR_OTP_BASE = 0x00070000,
    ERR_OTP_WR_ENABLE_INVALID = ERR_OTP_BASE+1,
    ERR_OTP_SOME_BITS_ALREADY_PROGRAMMED,
    ERR_OTP_ALL_DATA_OR_MASK_ZERO,
    ERR_OTP_WRITE_ACCESS_LOCKED,
    ERR_OTP_READ_DATA_MISMATCH,
    ERR_OTP_USB_ID_ENABLED,
    ERR_OTP_ETH_MAC_ENABLED,
    ERR_OTP_AES_KEYS_ENABLED,
    ERR_OTP_ILLEGAL_BANK,

   
  ERR_UART_BASE = 0x00080000,
    ERR_UART_RXD_BUSY = ERR_UART_BASE+1,   
    ERR_UART_TXD_BUSY,   
    ERR_UART_OVERRUN_FRAME_PARITY_NOISE, 
    ERR_UART_UNDERRUN,    
    ERR_UART_PARAM,       
    ERR_UART_BAUDRATE,    

   
  ERR_CAN_BASE = 0x00090000,
    ERR_CAN_BAD_MEM_BUF = ERR_CAN_BASE+1,
    ERR_CAN_INIT_FAIL,
    ERR_CANOPEN_INIT_FAIL,

   
  ERR_SPIFI_LITE_BASE = 0x000A0000,
    ERR_SPIFI_LITE_INVALID_ARGUMENTS = ERR_SPIFI_LITE_BASE+1,  
    ERR_SPIFI_LITE_BUSY,		    
    ERR_SPIFI_LITE_MEMORY_MODE_ON,			    
    ERR_SPIFI_LITE_MEMORY_MODE_OFF,
    ERR_SPIFI_LITE_IN_DMA,
    ERR_SPIFI_LITE_NOT_IN_DMA,
    PENDING_SPIFI_LITE,

   
  ERR_CLK_BASE = 0x000B0000,
    ERR_CLK_NOT_IMPL=ERR_CLK_BASE+1,
    ERR_CLK_INVALID_PARAM,
    ERR_CLK_INVALID_SLICE,
    ERR_CLK_OUTPUT_GEN,
    ERR_CLK_DIV_SRC,
    ERR_CLK_DIV_VAL,
    ERR_CLK_SRC,
    ERR_CLK_PLL_FIN_TOO_SMALL,
    ERR_CLK_PLL_FIN_TOO_LARGE,
    ERR_CLK_PLL_FOUT_TOO_SMALL,
    ERR_CLK_PLL_FOUT_TOO_LARGE,
    ERR_CLK_PLL_NO_SOLUTION,
    ERR_CLK_PLL_MIN_PCT,
    ERR_CLK_PLL_MAX_PCT,
    ERR_CLK_OSC_FREQ,
    ERR_CLK_CFG,
    ERR_CLK_TIMEOUT,
    ERR_CLK_BASE_OFF,
    ERR_CLK_OFF_DEADLOCK,
    
   
  ERR_PWR_BASE = 0x000C0000,
     PWR_ERROR_ILLEGAL_MODE=ERR_PWR_BASE+1,
     PWR_ERROR_CLOCK_FREQ_TOO_HIGH,
     PWR_ERROR_INVALID_STATE,
     PWR_ERROR_INVALID_CFG,
     PWR_ERROR_PVT_DETECT,

   
  ERR_DMA_BASE = 0x000D0000,
   	 ERR_DMA_ERROR_INT=ERR_DMA_BASE+1,
   	 ERR_DMA_CHANNEL_NUMBER,
   	 ERR_DMA_CHANNEL_DISABLED,
   	 ERR_DMA_BUSY,
   	 ERR_DMA_NOT_ALIGNMENT,
   	 ERR_DMA_PING_PONG_EN,
   	 ERR_DMA_CHANNEL_VALID_PENDING,
   	 ERR_DMA_PARAM,
   	 ERR_DMA_QUEUE_EMPTY,
   	 ERR_DMA_GENERAL,

   
  ERR_SPI_BASE = 0x000E0000,
   	 ERR_SPI_BUSY=ERR_SPI_BASE,
   	 ERR_SPI_RXOVERRUN,
   	 ERR_SPI_TXUNDERRUN,
   	 ERR_SPI_SELNASSERT,
   	 ERR_SPI_SELNDEASSERT,
   	 ERR_SPI_CLKSTALL,
   	 ERR_SPI_PARAM,
   	 ERR_SPI_INVALID_LENGTH,

   
  ERR_ADC_BASE = 0x000F0000,
   	 ERR_ADC_OVERRUN=ERR_ADC_BASE+1,
   	 ERR_ADC_INVALID_CHANNEL,
   	 ERR_ADC_INVALID_SEQUENCE,
   	 ERR_ADC_INVALID_SETUP,
   	 ERR_ADC_PARAM,
   	 ERR_ADC_INVALID_LENGTH,
   	 ERR_ADC_NO_POWER,

   
  ERR_DM_BASE = 0x00100000,
   	 ERR_DM_NOT_ENTERED=ERR_DM_BASE+1,
   	 ERR_DM_UNKNOWN_CMD,
   	 ERR_DM_COMM_FAIL
  
} ErrorCode_t;









#line 38 "..\\..\\..\\chip_5411x\\inc\\romapi_5411x.h"
#line 39 "..\\..\\..\\chip_5411x\\inc\\romapi_5411x.h"









 



 
typedef struct {
	const uint32_t usbdApiBase;				     
	const uint32_t reserved_clib;				 
	const uint32_t reserved_power;				 
	const uint32_t reserved_div;				 
	const uint32_t reserved_usart;				 
	const uint32_t reserved_i2cm;				 
	const uint32_t reserved_i2cs;				 
	const uint32_t reserved_i2cmon;				 
	const uint32_t reserved_spim;				 
	const uint32_t reserved_spis;				 
	const uint32_t reserved_dmaaltd;			 
	const uint32_t reserved_adcaltd;             
	const uint32_t reserved_uartalt;             
	const uint32_t reserved_flexcomm;            
} LPC_ROM_API_T;

 



 


 




 
static __inline void iap_entry(unsigned int cmd_param[5], unsigned int status_result[4])
{
	((IAP_ENTRY_T) 0x03000205)(cmd_param, status_result);
}



 





#line 177 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\syscon_5411x.h"





























 











 



 
typedef struct {
	volatile uint32_t SYSMEMREMAP;			 
	volatile const  uint32_t RESERVED0[3];
	volatile uint32_t AHBMATPRIO;            
	volatile const  uint32_t RESERVED1[11];
	volatile uint32_t SYSTCKCAL;			 
	volatile const  uint32_t RESERVED2[1];
	volatile uint32_t NMISRC;				 
	volatile uint32_t ASYNCAPBCTRL;			 
	volatile const  uint32_t RESERVED3[28];
	volatile const  uint32_t PIOPORCAP[2];          
	volatile const  uint32_t RESERVED4[2];
	volatile const  uint32_t PIORESCAP[2];          
	volatile const  uint32_t RESERVED5[10];
	volatile uint32_t PRESETCTRL[2];		 
	volatile const  uint32_t RESERVED6[6];
	volatile  uint32_t PRESETCTRLSET[2];      
	volatile const  uint32_t RESERVED7[6];
	volatile  uint32_t PRESETCTRLCLR[2];      
	volatile const  uint32_t RESERVED8[42];
	volatile uint32_t SYSRSTSTAT;			 
	volatile const  uint32_t RESERVED9[3];
	volatile uint32_t AHBCLKCTRL[2];         
	volatile const  uint32_t RESERVED10[6];
	volatile  uint32_t AHBCLKCTRLSET[2];      
	volatile const  uint32_t RESERVED11[6];
	volatile  uint32_t AHBCLKCTRLCLR[2];      
	volatile const  uint32_t RESERVED12[14];
	volatile uint32_t MAINCLKSELA;			 
	volatile uint32_t MAINCLKSELB;			 
	volatile uint32_t CLKOUTSELA;			 
	volatile const  uint32_t RESERVED13;
	volatile uint32_t SYSPLLCLKSEL;			 
	volatile const  uint32_t RESERVED14[3];
	volatile uint32_t SPIFICLKSEL;           
	volatile uint32_t ADCCLKSEL;			 
	volatile uint32_t USBCLKSEL;			 
	volatile const  uint32_t RESERVED15;
	volatile uint32_t FXCOMCLKSEL[8];        
	volatile const  uint32_t RESERVED16[4];
	volatile uint32_t MCLKCLKSEL;            
	volatile const  uint32_t RESERVED16A;
	volatile uint32_t FRGCLKSEL;             
	volatile uint32_t DMICCLKSEL;            
	volatile const  uint32_t RESERVED17[4];
	volatile uint32_t SYSTICKCLKDIV;		 
	volatile const  uint32_t RESERVED18[31];
	volatile uint32_t AHBCLKDIV;             
	volatile uint32_t CLKOUTDIV;             
	volatile const  uint32_t RESERVED19[2];
	volatile uint32_t SPIFICLKDIV;           
	volatile uint32_t ADCCLKDIV;             
	volatile uint32_t USBCLKDIV;             
	volatile const  uint32_t RESERVED20;
	volatile uint32_t FRGCTRL;				 
	volatile const  uint32_t RESERVED21;
	volatile uint32_t DMICCLKDIV;             
	volatile uint32_t MCLKDIV;                
	volatile const  uint32_t RESERVED22[20];
	volatile uint32_t FLASHCFG;               
	volatile const  uint32_t RESERVED23[2];
	volatile uint32_t USBCLKCTRL;             
	volatile uint32_t USBCLKSTAT;             
	volatile const  uint32_t RESERVED24;
	volatile uint32_t FREQMECTRL;             
	volatile const  uint32_t RESERVED25;
	volatile uint32_t MCLKIO;                 
	volatile const  uint32_t RESERVED26[55];
	volatile uint32_t FROCTRL;                
	volatile const  uint32_t RESERVED27;
	volatile uint32_t WDTOSCCTRL;             
	volatile uint32_t RTCOSCCTRL;             
	volatile const  uint32_t RESERVED28[28];
	volatile uint32_t SYSPLLCTRL;             
	volatile const  uint32_t SYSPLLSTAT;             
	volatile uint32_t SYSPLLNDEC;             
	volatile uint32_t SYSPLLPDEC;             
	volatile uint32_t SYSPLLSSCTRL[2];        
	volatile const  uint32_t RESERVED29[30];
	volatile uint32_t PDRUNCFG[2];            
	volatile const  uint32_t RESERVED30[2];
	volatile  uint32_t PDRUNCFGSET[2];         
	volatile const  uint32_t RESERVED31[2];
	volatile  uint32_t PDRUNCFGCLR[2];         
	volatile const  uint32_t RESERVED32[18];
	volatile uint32_t STARTERP[2];            
	volatile const  uint32_t RESERVED33[6];
	volatile  uint32_t STARTERPSET[2];         
	volatile const  uint32_t RESERVED34[6];
	volatile  uint32_t STARTERPCLR[2];         
	volatile const  uint32_t RESERVED35[78];
	volatile uint32_t CPCTRL;                 
	volatile uint32_t CPBOOT;                 
	volatile uint32_t CPSTACK;                
	volatile const  uint32_t CPSTAT;                 
	volatile const  uint32_t RESERVED36[381];
    volatile uint32_t AUTOCGOR;
    volatile const  uint32_t RESERVED37[123];
	volatile const  uint32_t JTAGIDCODE;             
	volatile const  uint32_t DEVICE_ID[2];            
} LPC_SYSCON_T;



 
typedef struct {
	volatile uint32_t AYSNCPRESETCTRL;		 
	volatile  uint32_t ASYNCPRESETCTRLSET;	 
	volatile  uint32_t ASYNCPRESETCTRLCLR;	 
	volatile const  uint32_t RESERVED0;
	volatile uint32_t ASYNCAPBCLKCTRL;		 
	volatile uint32_t ASYNCAPBCLKCTRLSET;	 
	volatile uint32_t ASYNCAPBCLKCTRLCLR;	 
	volatile const  uint32_t RESERVED1;
	volatile uint32_t ASYNCAPBCLKSELA;		 
} LPC_ASYNC_SYSCON_T;




 
#line 174 "..\\..\\..\\chip_5411x\\inc\\syscon_5411x.h"


 
typedef enum CHIP_SYSCON_BOOT_MODE_REMAP {
	REMAP_BOOT_LOADER_MODE,	 
	REMAP_USER_RAM_MODE,	 
	REMAP_USER_FLASH_MODE	 
} CHIP_SYSCON_BOOT_MODE_REMAP_T;





 
static __inline void Chip_SYSCON_Map(CHIP_SYSCON_BOOT_MODE_REMAP_T remap)
{
	((LPC_SYSCON_T *) 0x40000000UL)->SYSMEMREMAP = (uint32_t) remap;
}




 
static __inline CHIP_SYSCON_BOOT_MODE_REMAP_T Chip_SYSCON_GetMemoryMap(void)
{
	return (CHIP_SYSCON_BOOT_MODE_REMAP_T) ((LPC_SYSCON_T *) 0x40000000UL)->SYSMEMREMAP;
}





 
static __inline void Chip_SYSCON_SetSYSTCKCAL(uint32_t sysCalVal)
{
	((LPC_SYSCON_T *) 0x40000000UL)->SYSTCKCAL = sysCalVal;
}



 









 
void Chip_SYSCON_SetNMISource(uint32_t intsrc);




 
void Chip_SYSCON_EnableNMISource(void);




 
void Chip_SYSCON_DisableNMISource(void);







 
void Chip_SYSCON_Enable_ASYNC_Syscon(_Bool enable);






 
static __inline void Chip_SYSCON_SetUSARTFRGCtrl(uint8_t fmul, uint8_t fdiv)
{
	((LPC_SYSCON_T *) 0x40000000UL)->FRGCTRL = ((uint32_t) fmul << 8) | fdiv;
}



 










 
static __inline uint32_t Chip_SYSCON_GetSystemRSTStatus(void)
{
	return ((LPC_SYSCON_T *) 0x40000000UL)->SYSRSTSTAT;
}






 
static __inline void Chip_SYSCON_ClearSystemRSTStatus(uint32_t reset)
{
	((LPC_SYSCON_T *) 0x40000000UL)->SYSRSTSTAT = reset;
}



 
typedef enum {
	 
	RESET_FLASH = 7,                 
	RESET_FMC,                       
	RESET_SPIFI = 10,                
	RESET_MUX,                       
	RESET_IOCON = 13,                
	RESET_GPIO0,                     
	RESET_GPIO1,                     
	RESET_PINT = 18,                 
	RESET_GINT,                      
	RESET_DMA,                       
	RESET_CRC,                       
	RESET_WWDT,                      
	RESET_ADC = 27,                  
	RESET_ADC0 = 27,                 

	 
	RESET_MRT = 32,                  
	RESET_SCT0 = 32 + 2,             
	RESET_SCT = 32 + 2,              
	RESET_UTICK = 32 + 10,           
	RESET_FLEXCOMM0,                 
	RESET_FLEXCOMM1,                 
	RESET_FLEXCOMM2,                 
	RESET_FLEXCOMM3,                 
	RESET_FLEXCOMM4,                 
	RESET_FLEXCOMM5,                 
	RESET_FLEXCOMM6,                 
	RESET_FLEXCOMM7,                 
	RESET_DMIC,                      
	RESET_TIMER2 = 32 + 22,          
	RESET_USB,                       
	RESET_TIMER0,                    
	RESET_TIMER1,                    

	 
	RESET_TIMER3 = 128 + 13,		 
	RESET_TIMER4,					 
} CHIP_SYSCON_PERIPH_RESET_T;






 
static __inline void Chip_SYSCON_PeriphReset(CHIP_SYSCON_PERIPH_RESET_T periph)
{
	uint32_t val = (uint32_t) periph;
	if (val < 128) {
		((LPC_SYSCON_T *) 0x40000000UL)->PRESETCTRLSET[val >> 5] = 1 << (val & 31);
	} else {
		((LPC_ASYNC_SYSCON_T *) 0x40040000UL)->ASYNCPRESETCTRLSET = 1 << (val - 128);
	}

	__nop();
	__nop();
	__nop();
	__nop();

	if (val < 128) {
		((LPC_SYSCON_T *) 0x40000000UL)->PRESETCTRLCLR[val >> 5] = 1 << (val & 31);
	} else {
		((LPC_ASYNC_SYSCON_T *) 0x40040000UL)->ASYNCPRESETCTRLCLR = 1 << (val - 128);
	}
}





 
static __inline uint32_t Chip_SYSCON_GetPORPIOStatus(uint8_t port)
{
	return ((LPC_SYSCON_T *) 0x40000000UL)->PIOPORCAP[port];
}






 
static __inline uint32_t Chip_SYSCON_GetResetPIOStatus(uint8_t port)
{
	return ((LPC_SYSCON_T *) 0x40000000UL)->PIORESCAP[port];
}






 
static __inline void Chip_SYSCON_StartFreqMeas(void)
{
	((LPC_SYSCON_T *) 0x40000000UL)->FREQMECTRL = 0;
	((LPC_SYSCON_T *) 0x40000000UL)->FREQMECTRL = (1UL << 31);
}




 
static __inline _Bool Chip_SYSCON_IsFreqMeasComplete(void)
{
	return (_Bool) ((((LPC_SYSCON_T *) 0x40000000UL)->FREQMECTRL & (1UL << 31)) == 0);
}




 
static __inline uint32_t Chip_SYSCON_GetRawFreqMeasCapval(void)
{
	return ((LPC_SYSCON_T *) 0x40000000UL)->FREQMECTRL & 0x3FFF;
}





 
uint32_t Chip_SYSCON_GetCompFreqMeas(uint32_t refClockRate);



 
typedef enum {
	SYSCON_FLASH_1CYCLE = 0,	 
	FLASHTIM_20MHZ_CPU = SYSCON_FLASH_1CYCLE,
	SYSCON_FLASH_2CYCLE,		 
	SYSCON_FLASH_3CYCLE,		 
	SYSCON_FLASH_4CYCLE,		 
	SYSCON_FLASH_5CYCLE,		 
	SYSCON_FLASH_6CYCLE,		 
	SYSCON_FLASH_7CYCLE,		 
	SYSCON_FLASH_8CYCLE			 
} SYSCON_FLASHTIM_T;





 
static __inline void Chip_SYSCON_SetFLASHAccess(SYSCON_FLASHTIM_T clks)
{
	uint32_t tmp;

	tmp = ((LPC_SYSCON_T *) 0x40000000UL)->FLASHCFG & ~(0xF << 12);

	 
	((LPC_SYSCON_T *) 0x40000000UL)->FLASHCFG = tmp | ((uint32_t) clks << 12);
}



 
#line 470 "..\\..\\..\\chip_5411x\\inc\\syscon_5411x.h"





 
static __inline uint32_t Chip_SYSCON_GetPowerStates(void)
{
	return ((LPC_SYSCON_T *) 0x40000000UL)->PDRUNCFG[0];
}





 
static __inline void Chip_SYSCON_PowerDown(uint32_t powerdownmask)
{
	 
	((LPC_SYSCON_T *) 0x40000000UL)->PDRUNCFGSET[0] = powerdownmask;
}





 
void Chip_SYSCON_PowerUp(uint32_t powerupmask);



 
typedef enum {
	SYSCON_STARTER_WWDT_BOD = 0,
	SYSCON_STARTER_DMA,
	SYSCON_STARTER_GINT0,
	SYSCON_STARTER_GINT1,
	SYSCON_STARTER_PINT0,
	SYSCON_STARTER_PINT1,
	SYSCON_STARTER_PINT2,
	SYSCON_STARTER_PINT3,
	SYSCON_STARTER_UTICK,
	SYSCON_STARTER_MRT,
	SYSCON_STARTER_TIMER0,
	SYSCON_STARTER_TIMER1,
	SYSCON_STARTER_SCT0,
	SYSCON_STARTER_TIMER3,
	SYSCON_STARTER_FLEXCOMM0,
	SYSCON_STARTER_FLEXCOMM1,
	SYSCON_STARTER_FLEXCOMM2,
	SYSCON_STARTER_FLEXCOMM3,
	SYSCON_STARTER_FLEXCOMM4,
	SYSCON_STARTER_FLEXCOMM5,
	SYSCON_STARTER_FLEXCOMM6,
	SYSCON_STARTER_FLEXCOMM7,
	SYSCON_STARTER_ADC0_SEQA,
	SYSCON_STARTER_ADC0_SEQB,
	SYSCON_STARTER_ADC0_THCMP,
	SYSCON_STARTER_DMIC,
	SYSCON_STARTER_HWVAD,
	SYSCON_STARTER_USBNEEDCLK,
	SYSCON_STARTER_USB,
	SYSCON_STARTER_RTC,
	SYSCON_STARTER_RESERVED0,
	SYSCON_STARTER_MAILBOX,
	SYSCON_STARTER_PINT4,
	SYSCON_STARTER_PINT5,
	SYSCON_STARTER_PINT6,
	SYSCON_STARTER_PINT7,
	SYSCON_STARTER_TIMER2,
	SYSCON_STARTER_TIMER4,
} CHIP_SYSCON_WAKEUP_T;





 
static __inline void Chip_SYSCON_EnableWakeup(CHIP_SYSCON_WAKEUP_T periphId)
{
	((LPC_SYSCON_T *) 0x40000000UL)->STARTERPSET[(uint32_t) periphId >> 5] = 1 << ((uint32_t) periphId & 31);
}





 
static __inline void Chip_SYSCON_DisableWakeup(CHIP_SYSCON_WAKEUP_T periphId)
{
	((LPC_SYSCON_T *) 0x40000000UL)->STARTERPCLR[(uint32_t) periphId >> 5] = 1 << ((uint32_t) periphId & 31);
}




 
static __inline uint32_t Chip_SYSCON_GetDeviceID(void)
{
	return ((LPC_SYSCON_T *) 0x40000000UL)->DEVICE_ID[0];
}




 









 
static __inline void Chip_SYSCON_DisableAutoClocking(uint32_t mask)
{
	((LPC_SYSCON_T *) 0x40000000UL)->AUTOCGOR = (((LPC_SYSCON_T *) 0x40000000UL)->AUTOCGOR & ((1 << 1) | (1 << 2) | (1 << 3))) | mask;
}





 
static __inline void Chip_SYSCON_EnableAutoClocking(uint32_t mask)
{
	((LPC_SYSCON_T *) 0x40000000UL)->AUTOCGOR = (((LPC_SYSCON_T *) 0x40000000UL)->AUTOCGOR & ((1 << 1) | (1 << 2) | (1 << 3)) & ~mask);
}



 





#line 178 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\cpuctrl_5411x.h"





























 


















 




 
static __inline _Bool Chip_CPU_IsM4Core(void) {
	 
	if (((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CPUID >> 4) & 0xFFF) == 0xC24) {
		return 1;
	}

	return 0;
}

 
typedef enum {
	CORESELECT_M0PLUS = 0,
	CORESELECT_M4
} CORESELECT_T;











 
void Chip_CPU_SelectMasterCore(CORESELECT_T master, CORESELECT_T ownerPower);




 
_Bool Chip_CPU_IsMasterCore(void);








 
void Chip_CPU_CM0Boot(uint32_t *coentry, uint32_t *costackptr);








 
void Chip_CPU_CM4Boot(uint32_t *coentry, uint32_t *costackptr);



 





#line 179 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\clock_5411x.h"





























 




#line 1 "..\\..\\..\\chip_5411x\\inc\\pll_5411x.h"





























 
































































 



 
typedef enum CHIP_SYSCON_PLLCLKSRC {
	SYSCON_PLLCLKSRC_FRO12MHZ = 0,   
	SYSCON_PLLCLKSRC_CLKIN,          
	SYSCON_PLLCLKSRC_WDT,            
	SYSCON_PLLCLKSRC_RTC,            
	SYSCON_PLLCLKSRC_DISABLED = 7    
} CHIP_SYSCON_PLLCLKSRC_T;






 
static __inline void Chip_Clock_SetSystemPLLSource(CHIP_SYSCON_PLLCLKSRC_T src)
{
	((LPC_SYSCON_T *) 0x40000000UL)->SYSPLLCLKSEL = (uint32_t) src;
}




 
uint32_t Chip_Clock_GetSystemPLLInClockRate(void);








 
uint32_t Chip_Clock_GetSystemPLLOutClockRate(_Bool recompute);





 
void Chip_Clock_SetBypassPLL(_Bool bypass);




 
static __inline _Bool Chip_Clock_IsSystemPLLLocked(void)
{
	return (_Bool) ((((LPC_SYSCON_T *) 0x40000000UL)->SYSPLLSTAT & 1) != 0);
}




 
uint32_t Chip_Clock_GetStoredPLLClockRate(void);





 
void Chip_Clock_SetStoredPLLClockRate(uint32_t rate);















 





 
typedef enum {
	SS_MF_512 = (0 << 20),		 
	SS_MF_384 = (1 << 20),		 
	SS_MF_256 = (2 << 20),		 
	SS_MF_128 = (3 << 20),		 
	SS_MF_64  = (4 << 20),		 
	SS_MF_32  = (5 << 20),		 
	SS_MF_24  = (6 << 20),		 
	SS_MF_16  = (7 << 20)		 
} SS_PROGMODFM_T;



 
typedef enum {
	SS_MR_K0   = (0 << 23),		 
	SS_MR_K1   = (1 << 23),		 
	SS_MR_K1_5 = (2 << 23),		 
	SS_MR_K2   = (3 << 23),		 
	SS_MR_K3   = (4 << 23),		 
	SS_MR_K4   = (5 << 23),		 
	SS_MR_K6   = (6 << 23),		 
	SS_MR_K8   = (7 << 23)		 
} SS_PROGMODDP_T;





 
typedef enum {
	SS_MC_NOC  = (0 << 26),		 
	SS_MC_RECC = (2 << 26),		 
	SS_MC_MAXC = (3 << 26),		 
} SS_MODWVCTRL_T;





 
typedef struct {
	uint32_t        desiredRate;	 
	uint32_t        InputRate;		 
	uint32_t        flags;			 
	SS_PROGMODFM_T  ss_mf;			 
	SS_PROGMODDP_T  ss_mr;			 
	SS_MODWVCTRL_T  ss_mc;			 
	_Bool            mfDither;		 
} PLL_CONFIG_T;



 










 
typedef struct {
	uint32_t    SYSPLLCTRL;			 
	uint32_t    SYSPLLNDEC;			 
	uint32_t    SYSPLLPDEC;			 
	uint32_t    SYSPLLSSCTRL[2];	 
	uint32_t    pllRate;             
	uint32_t    flags;				 
} PLL_SETUP_T;


 
typedef enum {
	PLL_ERROR_SUCCESS = 0,			 
	PLL_ERROR_OUTPUT_TOO_LOW,		 
	PLL_ERROR_OUTPUT_TOO_HIGH,		 
	PLL_ERROR_INPUT_TOO_LOW,		 
	PLL_ERROR_INPUT_TOO_HIGH,		 
	PLL_ERROR_OUTSIDE_INTLIMIT		 
} PLL_ERROR_T;





 
uint32_t Chip_Clock_GetSystemPLLOutFromSetup(PLL_SETUP_T *pSetup);








 
PLL_ERROR_T Chip_Clock_SetupPLLData(PLL_CONFIG_T *pControl, PLL_SETUP_T *pSetup);










 
PLL_ERROR_T Chip_Clock_SetupSystemPLLPrec(PLL_SETUP_T *pSetup);










 
PLL_ERROR_T Chip_Clock_SetPLLFreq(const PLL_SETUP_T *pSetup);












 
void Chip_Clock_SetupSystemPLL(uint32_t multiply_by, uint32_t input_freq);



 





#line 36 "..\\..\\..\\chip_5411x\\inc\\clock_5411x.h"








 

 












 
static __inline uint32_t Chip_Clock_GetExtClockInRate(void)
{
	return ExtClockIn;
}




 
static __inline uint32_t Chip_Clock_GetRTCOscRate(void)
{
	return (32768);
}

 
typedef enum {
	WDT_FREQ_RESERVED,  
	WDT_FREQ_400000,    
	WDT_FREQ_600000,    
	WDT_FREQ_750000,    
	WDT_FREQ_900000,    
	WDT_FREQ_1000000,   
	WDT_FREQ_1200000,   
	WDT_FREQ_1300000,   
	WDT_FREQ_1400000,   
	WDT_FREQ_1500000,   
	WDT_FREQ_1600000,   
	WDT_FREQ_1700000,   
	WDT_FREQ_1800000,   
	WDT_FREQ_1900000,   
	WDT_FREQ_2000000,   
	WDT_FREQ_2050000,   
	WDT_FREQ_2100000,   
	WDT_FREQ_2200000,   
	WDT_FREQ_2250000,   
	WDT_FREQ_2300000,   
	WDT_FREQ_2400000,   
	WDT_FREQ_2450000,   
	WDT_FREQ_2500000,   
	WDT_FREQ_2600000,   
	WDT_FREQ_2650000,   
	WDT_FREQ_2700000,   
	WDT_FREQ_2800000,   
	WDT_FREQ_2850000,   
	WDT_FREQ_2900000,   
	WDT_FREQ_2950000,   
	WDT_FREQ_3000000,   
	WDT_FREQ_3050000,   
} WDT_OSC_FREQ_T;








 
static __inline void Chip_Clock_SetWDTOSCRate(WDT_OSC_FREQ_T freq, uint32_t div)
{
	((LPC_SYSCON_T *) 0x40000000UL)->WDTOSCCTRL = (freq << 5) | (((div >> 1) - 1) & 0x1F);
}





 
uint32_t Chip_Clock_GetWDTOSCRate(void);






 
typedef enum {
	SYSCON_MAIN_A_CLKSRC_FRO12MHZ = 0,   
	SYSCON_MAIN_A_CLKSRCA_CLKIN,         
	SYSCON_MAIN_A_CLKSRCA_WDTOSC,        
	SYSCON_MAIN_A_CLKSRCA_FROHF,         
} CHIP_SYSCON_MAIN_A_CLKSRC_T;




 
static __inline uint32_t Chip_Clock_GetFROHFRate(void)
{
	if (((LPC_SYSCON_T *) 0x40000000UL)->FROCTRL & (1UL << 14)) {
		return (96000000);
	} else {
		return (48000000);
	}
}







 
static __inline void Chip_Clock_SetMain_A_ClockSource(CHIP_SYSCON_MAIN_A_CLKSRC_T src)
{
	((LPC_SYSCON_T *) 0x40000000UL)->MAINCLKSELA = (uint32_t) src;
}



 
typedef enum {
	SYSCON_USBCLKSRC_FROHF,            
	SYSCON_USBCLKSRC_PLL,              
	SYSCON_USBCLKSRC_DISABLED = 7      
} CHIP_SYSCON_USBCLKSRC_T;






 
static __inline void Chip_Clock_SetUSBClockSource(CHIP_SYSCON_USBCLKSRC_T src, uint32_t div)
{
	((LPC_SYSCON_T *) 0x40000000UL)->USBCLKSEL = src;
	
	((LPC_SYSCON_T *) 0x40000000UL)->USBCLKDIV = (div - 1) & 0xFF;
}




 
static __inline CHIP_SYSCON_USBCLKSRC_T Chip_Clock_GetUSBClockSource(void)
{
	return (CHIP_SYSCON_USBCLKSRC_T) (((LPC_SYSCON_T *) 0x40000000UL)->USBCLKSEL & 0x07);
}




 
static __inline uint32_t Chip_Clock_GetUSBClockDiv(void)
{
	return (((LPC_SYSCON_T *) 0x40000000UL)->USBCLKDIV & 0xFF)+1;
}



 
typedef enum {
	SYSCON_MCLKSRC_FROHF,              
	SYSCON_MCLKSRC_PLL,                
	SYSCON_MCLKSRC_MCLKIN,             
	SYSCON_MCLKSRC_DISABLED = 7        
} CHIP_SYSCON_MCLKSRC_T;






 
static __inline void Chip_Clock_SetMCLKClockSource(CHIP_SYSCON_MCLKSRC_T src, uint32_t div)
{
	((LPC_SYSCON_T *) 0x40000000UL)->MCLKCLKSEL  = (uint32_t) src;
	((LPC_SYSCON_T *) 0x40000000UL)->MCLKDIV     = (uint32_t) ((div-1) & 0xff);
}




 
static __inline uint32_t Chip_Clock_GetMCLKDiv(void)
{
	return (((LPC_SYSCON_T *) 0x40000000UL)->MCLKDIV & 0xff) + 1;
}




 
static __inline CHIP_SYSCON_MCLKSRC_T Chip_Clock_GetMCLKSource(void)
{
	return (CHIP_SYSCON_MCLKSRC_T) (((LPC_SYSCON_T *) 0x40000000UL)->MCLKCLKSEL & 0x07);
}




 
static __inline void Chip_Clock_SetMCLKDirInput(void)
{
	((LPC_SYSCON_T *) 0x40000000UL)->MCLKIO = 0;
}




 
static __inline void Chip_Clock_SetMCLKDirOutput(void)
{
	((LPC_SYSCON_T *) 0x40000000UL)->MCLKIO = 1;
}





 
static __inline void Chip_Clock_SetMCLKDir(int dir)
{
	if (dir == 0) {
		Chip_Clock_SetMCLKDirInput();
	} else {
		Chip_Clock_SetMCLKDirOutput();
	}
}

static __inline int Chip_Clock_GetMCLKDir(void)
{
	return (((LPC_SYSCON_T *) 0x40000000UL)->MCLKIO & 1);
}




 
static __inline CHIP_SYSCON_MAIN_A_CLKSRC_T Chip_Clock_GetMain_A_ClockSource(void)
{
	return (CHIP_SYSCON_MAIN_A_CLKSRC_T) (((LPC_SYSCON_T *) 0x40000000UL)->MAINCLKSELA & 0x3);
}




 
uint32_t Chip_Clock_GetMain_A_ClockRate(void);



 
typedef enum {
	SYSCON_MAIN_B_CLKSRC_MAINCLKSELA = 0,    
	SYSCON_MAIN_B_CLKSRC_PLL = 2,            
	SYSCON_MAIN_B_CLKSRC_RTC,                
} CHIP_SYSCON_MAIN_B_CLKSRC_T;





 
static __inline void Chip_Clock_SetMain_B_ClockSource(CHIP_SYSCON_MAIN_B_CLKSRC_T src)
{
	((LPC_SYSCON_T *) 0x40000000UL)->MAINCLKSELB = (uint32_t) src;
}




 
static __inline CHIP_SYSCON_MAIN_B_CLKSRC_T Chip_Clock_GetMain_B_ClockSource(void)
{
	return (CHIP_SYSCON_MAIN_B_CLKSRC_T) (((LPC_SYSCON_T *) 0x40000000UL)->MAINCLKSELB);
}




 
uint32_t Chip_Clock_GetMain_B_ClockRate(void);



 
typedef enum {
	SYSCON_CLKOUTSRC_MAINCLK = 0,        
	SYSCON_CLKOUTSRC_CLKIN,              
	SYSCON_CLKOUTSRC_WDTOSC,             
	SYSCON_CLKOUTSRC_FROHF,              
	SYSCON_CLKOUTSRC_PLL,                
	SYSCON_CLKOUTSRC_FRO12MHZ,           
	SYSCON_CLKOUTSRC_RTC,                
	SYSCON_CLKOUTSRC_DISABLED            
} CHIP_SYSCON_CLKOUTSRC_T;







 
static __inline void Chip_Clock_SetCLKOUTSource(CHIP_SYSCON_CLKOUTSRC_T src, uint32_t div)
{
	((LPC_SYSCON_T *) 0x40000000UL)->CLKOUTSELA = (uint32_t) src & 0x07;
	if (div)
		((LPC_SYSCON_T *) 0x40000000UL)->CLKOUTDIV = (div - 1);
}




 
static __inline CHIP_SYSCON_CLKOUTSRC_T Chip_Clock_GetCLKOUTSource(void)
{
	return (CHIP_SYSCON_CLKOUTSRC_T)(((LPC_SYSCON_T *) 0x40000000UL)->CLKOUTSELA & 0x07);
}




 
static __inline uint32_t Chip_Clock_GetCLKOUTDiv(void)
{
	return ((((LPC_SYSCON_T *) 0x40000000UL)->CLKOUTDIV&0xff)+1);
}



 
typedef enum CHIP_SYSCON_CLOCK {
	 
	SYSCON_CLOCK_ROM = 1,                
	SYSCON_CLOCK_SRAM1 = 3,              
	SYSCON_CLOCK_SRAM2,                  
	SYSCON_CLOCK_SRAMX,                  
	SYSCON_CLOCK_FLASH = 7,              
	SYSCON_CLOCK_FMC,                    
	SYSCON_CLOCK_SPIFI = 10,             
	SYSCON_CLOCK_INPUTMUX,               
	SYSCON_CLOCK_IOCON = 13,             
	SYSCON_CLOCK_GPIO0,                  
	SYSCON_CLOCK_GPIO1,                  
	SYSCON_CLOCK_PINT = 18,              
	SYSCON_CLOCK_GINT,                   
	SYSCON_CLOCK_DMA,                    
	SYSCON_CLOCK_CRC,                    
	SYSCON_CLOCK_WWDT,                   
	SYSCON_CLOCK_RTC,                    
	SYSCON_CLOCK_MAILBOX = 26,           
	SYSCON_CLOCK_ADC0,                   

	 
	SYSCON_CLOCK_MRT = 32,               
	SYSCON_CLOCK_SCT0 = 32 + 2,          
	SYSCON_CLOCK_UTICK = 32 + 10,        
	SYSCON_CLOCK_FLEXCOMM0,              
	SYSCON_CLOCK_FLEXCOMM1,              
	SYSCON_CLOCK_FLEXCOMM2,              
	SYSCON_CLOCK_FLEXCOMM3,              
	SYSCON_CLOCK_FLEXCOMM4,              
	SYSCON_CLOCK_FLEXCOMM5,              
	SYSCON_CLOCK_FLEXCOMM6,              
	SYSCON_CLOCK_FLEXCOMM7,              
	SYSCON_CLOCK_DMIC,                   
	SYSCON_CLOCK_TIMER2 = 32 + 22,       
	SYSCON_CLOCK_USB = 32 + 25,          
	SYSCON_CLOCK_TIMER0,                 
	SYSCON_CLOCK_TIMER1,                 

	 
	SYSCON_CLOCK_TIMER3 = 128 + 13,      
	SYSCON_CLOCK_TIMER4,                 
} CHIP_SYSCON_CLOCK_T;





 
void Chip_Clock_EnablePeriphClock(CHIP_SYSCON_CLOCK_T clk);





 
void Chip_Clock_DisablePeriphClock(CHIP_SYSCON_CLOCK_T clk);











 
static __inline void Chip_Clock_SetSysTickClockDiv(uint32_t div)
{
	((LPC_SYSCON_T *) 0x40000000UL)->SYSTICKCLKDIV = div;
}




 
static __inline uint32_t Chip_Clock_GetSysTickClockDiv(void)
{
	return (((LPC_SYSCON_T *) 0x40000000UL)->SYSTICKCLKDIV & 0xff);
}




 
uint32_t Chip_Clock_GetSysTickClockRate(void);







 
static __inline void Chip_Clock_SetSysClockDiv(uint32_t div)
{
	((LPC_SYSCON_T *) 0x40000000UL)->AHBCLKDIV = (div - 1);
}





 
static __inline uint32_t Chip_Clock_GetSysClockDiv(void)
{
	return ((((LPC_SYSCON_T *) 0x40000000UL)->AHBCLKDIV & 0xff)+1);
}









 
static __inline void Chip_Clock_SetADCClockDiv(uint32_t div)
{
	 
	((LPC_SYSCON_T *) 0x40000000UL)->ADCCLKDIV = (div & 0xFF);
}




 
static __inline uint32_t Chip_Clock_GetADCClockDiv(void)
{
	return (((LPC_SYSCON_T *) 0x40000000UL)->ADCCLKDIV & 0xFF);
}



 
typedef enum {
	SYSCON_FLEXCOMMCLKSELSRC_FRO12MHZ = 0,		 
	SYSCON_FLEXCOMMCLKSELSRC_FROHF,              
	SYSCON_FLEXCOMMCLKSELSRC_PLL,                
	SYSCON_FLEXCOMMCLKSELSRC_MCLK,               
	SYSCON_FLEXCOMMCLKSELSRC_FRG,                
	SYSCON_FLEXCOMMCLKSELSRC_NONE = 7            
} CHIP_SYSCON_FLEXCOMMCLKSELSRC_T;






 
static __inline void Chip_Clock_SetFLEXCOMMClockSource(uint32_t idx, CHIP_SYSCON_FLEXCOMMCLKSELSRC_T src)
{
	((LPC_SYSCON_T *) 0x40000000UL)->FXCOMCLKSEL[idx] = (uint32_t) src;
}





 
static __inline CHIP_SYSCON_FLEXCOMMCLKSELSRC_T Chip_Clock_GetFLEXCOMMClockSource(uint32_t idx)
{
	return (CHIP_SYSCON_FLEXCOMMCLKSELSRC_T) (((LPC_SYSCON_T *) 0x40000000UL)->FXCOMCLKSEL[idx] & 0x07);
}





 
uint32_t Chip_Clock_GetFLEXCOMMClockRate(uint32_t id);



 
typedef enum {
	SYSCON_ADCCLKSELSRC_MAINCLK = 0,         
	SYSCON_ADCCLKSELSRC_SYSPLLOUT,           
	SYSCON_ADCCLKSELSRC_FROHF                
} CHIP_SYSCON_ADCCLKSELSRC_T;





 
static __inline void Chip_Clock_SetADCClockSource(CHIP_SYSCON_ADCCLKSELSRC_T src)
{
	((LPC_SYSCON_T *) 0x40000000UL)->ADCCLKSEL = (uint32_t) src;
}




 
static __inline CHIP_SYSCON_ADCCLKSELSRC_T Chip_Clock_GetADCClockSource(void)
{
	return (CHIP_SYSCON_ADCCLKSELSRC_T) (((LPC_SYSCON_T *) 0x40000000UL)->ADCCLKSEL & 0x07);
}




 
uint32_t Chip_Clock_GetADCClockRate(void);






 
static __inline void Chip_Clock_EnableRTCOsc(void)
{
	((LPC_SYSCON_T *) 0x40000000UL)->RTCOSCCTRL  = 1;
}




 
static __inline void Chip_Clock_DisableRTCOsc(void)
{
	((LPC_SYSCON_T *) 0x40000000UL)->RTCOSCCTRL  = 0;
}

static __inline _Bool Chip_Clock_GetRTCOsc(void)
{
	return (((LPC_SYSCON_T *) 0x40000000UL)->RTCOSCCTRL) ? 1 : 0;
}



 
typedef enum {
	SYSCON_ASYNC_MAINCLK = 0,        
	SYSCON_ASYNC_FRO12MHZ,			 
} CHIP_ASYNC_SYSCON_SRC_T;





 
static __inline void Chip_Clock_SetAsyncSysconClockSource(CHIP_ASYNC_SYSCON_SRC_T src)
{
	((LPC_ASYNC_SYSCON_T *) 0x40040000UL)->ASYNCAPBCLKSELA = (uint32_t) src;
}




 
static __inline CHIP_ASYNC_SYSCON_SRC_T Chip_Clock_GetAsyncSysconClockSource(void)
{
	return (CHIP_ASYNC_SYSCON_SRC_T) (((LPC_ASYNC_SYSCON_T *) 0x40040000UL)->ASYNCAPBCLKSELA & 0x3);
}





 
uint32_t Chip_Clock_GetAsyncSyscon_ClockRate(void);




 
typedef enum {
	SYSCON_MAINCLKSRC_FRO12MHZ = 0,          
	SYSCON_MAINCLKSRC_CLKIN,				 
	SYSCON_MAINCLKSRC_WDTOSC,				 
	SYSCON_MAINCLKSRC_FROHF,                 
	SYSCON_MAINCLKSRC_PLLOUT = 6,			 
	SYSCON_MAINCLKSRC_RTC					 
} CHIP_SYSCON_MAINCLKSRC_T;





 
static __inline void Chip_Clock_SetMainClockSource(CHIP_SYSCON_MAINCLKSRC_T src)
{
	uint32_t clkSrc = (uint32_t) src;

	if (clkSrc >= 4) {
		 
		Chip_Clock_SetMain_B_ClockSource((CHIP_SYSCON_MAIN_B_CLKSRC_T) (clkSrc - 4));
	}
	else {
		 
		Chip_Clock_SetMain_A_ClockSource((CHIP_SYSCON_MAIN_A_CLKSRC_T) clkSrc);
		Chip_Clock_SetMain_B_ClockSource(SYSCON_MAIN_B_CLKSRC_MAINCLKSELA);
	}
}





 
CHIP_SYSCON_MAINCLKSRC_T Chip_Clock_GetMainClockSource(void);




 
uint32_t Chip_Clock_GetMainClockRate(void);





 
uint32_t Chip_Clock_GetSystemClockRate(void);



 
typedef enum {
	SYSCON_FRGCLKSRC_MAINCLK,      
	SYSCON_FRGCLKSRC_PLL,          
	SYSCON_FRGCLKSRC_FRO12MHZ,     
	SYSCON_FRGCLKSRC_FROHF,        
	SYSCON_FRGCLKSRC_NONE = 7      
}CHIP_SYSCON_FRGCLKSRC_T;




 
uint32_t Chip_Clock_GetFRGInClockRate(void);





 
static __inline void Chip_Clock_SetFRGClockSource(CHIP_SYSCON_FRGCLKSRC_T src)
{
	((LPC_SYSCON_T *) 0x40000000UL)->FRGCLKSEL = (uint32_t) src;
}





 
static __inline CHIP_SYSCON_FRGCLKSRC_T Chip_Clock_GetFRGClockSource(void)
{
	return (CHIP_SYSCON_FRGCLKSRC_T)(((LPC_SYSCON_T *) 0x40000000UL)->FRGCLKSEL & 0x07);
}




 
uint32_t Chip_Clock_GetFRGClockRate(void);








 
uint32_t Chip_Clock_SetFRGClockRate(uint32_t rate);



 





#line 180 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\pmu_5411x.h"





























 











 




 
typedef struct {
	volatile const  uint32_t RESERVED0[17];
	volatile uint32_t BODCTRL;
} LPC_PMU_T;



 
typedef enum {
	PMU_BODRSTLVL_0,	 
	PMU_BODRSTLVL_1_50V = PMU_BODRSTLVL_0,
	PMU_BODRSTLVL_1,	 
	PMU_BODRSTLVL_1_85V = PMU_BODRSTLVL_1,
	PMU_BODRSTLVL_2,	 
	PMU_BODRSTLVL_2_00V = PMU_BODRSTLVL_2,
	PMU_BODRSTLVL_3,	 
	PMU_BODRSTLVL_2_30V = PMU_BODRSTLVL_3
} CHIP_PMU_BODRSTLVL_T;



 
typedef enum CHIP_PMU_BODRINTVAL {
	PMU_BODINTVAL_LVL0,	 
	PMU_BODINTVAL_2_05v = PMU_BODINTVAL_LVL0,
	PMU_BODINTVAL_LVL1,	 
	PMU_BODINTVAL_2_45v = PMU_BODINTVAL_LVL1,
	PMU_BODINTVAL_LVL2,	 
	PMU_BODINTVAL_2_75v = PMU_BODINTVAL_LVL2,
	PMU_BODINTVAL_LVL3,	 
	PMU_BODINTVAL_3_05v = PMU_BODINTVAL_LVL3
} CHIP_PMU_BODRINTVAL_T;



 



 









 
static __inline void Chip_PMU_SetBODLevels(CHIP_PMU_BODRSTLVL_T rstlvl,
										 CHIP_PMU_BODRINTVAL_T intlvl)
{
	((LPC_PMU_T *) 0x40020000UL)->BODCTRL = ((uint32_t)(rstlvl & 0x03) | ((uint32_t) (intlvl & 0x03) << 3));
}




 
static __inline void Chip_PMU_EnableBODReset(void)
{
	((LPC_PMU_T *) 0x40020000UL)->BODCTRL |= (1 << 2);
}




 
static __inline void Chip_PMU_DisableBODReset(void)
{
	((LPC_PMU_T *) 0x40020000UL)->BODCTRL &= ~(1 << 2);
}




 
static __inline void Chip_PMU_EnableBODInt(void)
{
	((LPC_PMU_T *) 0x40020000UL)->BODCTRL |= (1 << 5);
}




 
static __inline void Chip_PMU_DisableBODInt(void)
{
	((LPC_PMU_T *) 0x40020000UL)->BODCTRL &= ~(1 << 5);
}



 





#line 181 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\iocon_5411x.h"





























 











 



 
typedef struct {			 
	volatile uint32_t  PIO[2][32];
} LPC_IOCON_T;



 
typedef struct {
	uint32_t port : 8;			 
	uint32_t pin : 8;			 
	uint32_t modefunc : 16;		 
} PINMUX_GRP_T;





 
#line 94 "..\\..\\..\\chip_5411x\\inc\\iocon_5411x.h"








 
static __inline void Chip_IOCON_PinMuxSet(LPC_IOCON_T *pIOCON, uint8_t port, uint8_t pin, uint32_t modefunc)
{
	pIOCON->PIO[port][pin] = modefunc;
}









 
static __inline void Chip_IOCON_PinMux(LPC_IOCON_T *pIOCON, uint8_t port, uint8_t pin, uint16_t mode, uint8_t func)
{
	Chip_IOCON_PinMuxSet(pIOCON, port, pin, (uint32_t) (mode | func));
}







 
static __inline void Chip_IOCON_SetPinMuxing(LPC_IOCON_T *pIOCON, const PINMUX_GRP_T *pinArray, uint32_t arrayLength)
{
	uint32_t ix;

	for (ix = 0; ix < arrayLength; ix++ ) {
		Chip_IOCON_PinMuxSet(pIOCON, pinArray[ix].port, pinArray[ix].pin, pinArray[ix].modefunc);
	}
}



 





#line 182 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\pinint_5411x.h"





























 











 



 
typedef struct {			 
	volatile uint32_t ISEL;		 
	volatile uint32_t IENR;		 
	volatile  uint32_t SIENR;	 
	volatile  uint32_t CIENR;	 
	volatile uint32_t IENF;		 
	volatile  uint32_t SIENF;	 
	volatile  uint32_t CIENF;	 
	volatile uint32_t RISE;		 
	volatile uint32_t FALL;		 
	volatile uint32_t IST;		 
	volatile uint32_t PMCTRL;	 
	volatile uint32_t PMSRC;	 
	volatile uint32_t PMCFG;	 
} LPC_PIN_INT_T;




 

 


 


 



 



 





 
#line 98 "..\\..\\..\\chip_5411x\\inc\\pinint_5411x.h"



 
typedef enum Chip_PININT_SELECT {
	PININTSELECT0 = 0,
	PININTSELECT1 = 1,
	PININTSELECT2 = 2,
	PININTSELECT3 = 3,
	PININTSELECT4 = 4,
	PININTSELECT5 = 5,
	PININTSELECT6 = 6,
	PININTSELECT7 = 7
} Chip_PININT_SELECT_T;



 
typedef enum Chip_PININT_BITSLICE {
	PININTBITSLICE0 = 0,	 
	PININTBITSLICE1 = 1,	 
	PININTBITSLICE2 = 2,	 
	PININTBITSLICE3 = 3,	 
	PININTBITSLICE4 = 4,	 
	PININTBITSLICE5 = 5,	 
	PININTBITSLICE6 = 6,	 
	PININTBITSLICE7 = 7		 
} Chip_PININT_BITSLICE_T;



 
typedef enum Chip_PININT_BITSLICE_CFG {
	PININT_PATTERNCONST1           = 0x0,	 
	PININT_PATTERNRISING           = 0x1,	 
	PININT_PATTERNFALLING          = 0x2,	 
	PININT_PATTERNRISINGORFALLING  = 0x3,	 
	PININT_PATTERNHIGH             = 0x4,	 
	PININT_PATTERNLOW              = 0x5,	 
	PININT_PATTERNCONST0           = 0x6,	 
	PININT_PATTERNEVENT            = 0x7	 
} Chip_PININT_BITSLICE_CFG_T;






 
static __inline void Chip_PININT_Init(LPC_PIN_INT_T *pPININT)
{
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_PINT);
	Chip_SYSCON_PeriphReset(RESET_PINT);
}





 
static __inline void Chip_PININT_DeInit(LPC_PIN_INT_T *pPININT)
{
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_PINT);
}






 
static __inline void Chip_PININT_SetPinModeEdge(LPC_PIN_INT_T *pPININT, uint32_t pins)
{
	pPININT->ISEL = (pPININT->ISEL & ((uint32_t) 0x00FF)) & ~pins;
}






 
static __inline void Chip_PININT_SetPinModeLevel(LPC_PIN_INT_T *pPININT, uint32_t pins)
{
	pPININT->ISEL = (pPININT->ISEL & ((uint32_t) 0x00FF)) | pins;
}








 
static __inline uint32_t Chip_PININT_GetPinMode(LPC_PIN_INT_T *pPININT)
{
	return pPININT->ISEL & ((uint32_t) 0x00FF);
}








 
static __inline uint32_t Chip_PININT_GetHighEnabled(LPC_PIN_INT_T *pPININT)
{
	return pPININT->IENR;
}






 
static __inline void Chip_PININT_EnableIntHigh(LPC_PIN_INT_T *pPININT, uint32_t pins)
{
	pPININT->SIENR = pins;
}






 
static __inline void Chip_PININT_DisableIntHigh(LPC_PIN_INT_T *pPININT, uint32_t pins)
{
	pPININT->CIENR = pins;
}








 
static __inline uint32_t Chip_PININT_GetLowEnabled(LPC_PIN_INT_T *pPININT)
{
	return pPININT->IENF;
}






 
static __inline void Chip_PININT_EnableIntLow(LPC_PIN_INT_T *pPININT, uint32_t pins)
{
	pPININT->SIENF = pins;
}






 
static __inline void Chip_PININT_DisableIntLow(LPC_PIN_INT_T *pPININT, uint32_t pins)
{
	pPININT->CIENF = pins;
}





 
static __inline uint32_t Chip_PININT_GetRiseStates(LPC_PIN_INT_T *pPININT)
{
	return pPININT->RISE;
}






 
static __inline void Chip_PININT_ClearRiseStates(LPC_PIN_INT_T *pPININT, uint32_t pins)
{
	pPININT->RISE = pins;
}





 
static __inline uint32_t Chip_PININT_GetFallStates(LPC_PIN_INT_T *pPININT)
{
	return pPININT->FALL;
}






 
static __inline void Chip_PININT_ClearFallStates(LPC_PIN_INT_T *pPININT, uint32_t pins)
{
	pPININT->FALL = pins;
}





 
static __inline uint32_t Chip_PININT_GetIntStatus(LPC_PIN_INT_T *pPININT)
{
	return pPININT->IST;
}






 
static __inline void Chip_PININT_ClearIntStatus(LPC_PIN_INT_T *pPININT, uint32_t pins)
{
	pPININT->IST = pins;
}







 
static __inline void Chip_PININT_SetPatternMatchSrc(LPC_PIN_INT_T *pPININT,
									Chip_PININT_SELECT_T channelNum,
									Chip_PININT_BITSLICE_T sliceNum)
{
	uint32_t idx = 8 + (sliceNum * 3);

	 
	pPININT->PMSRC = (pPININT->PMSRC & ~(7 << idx)) |
			(channelNum << idx);
}








 
static __inline void Chip_PININT_SetPatternMatchConfig(LPC_PIN_INT_T *pPININT,
		Chip_PININT_BITSLICE_T sliceNum,
		Chip_PININT_BITSLICE_CFG_T slice_cfg, _Bool end_point)
{
	uint32_t pmcfg, idx = 8 + (sliceNum * 3);

	 
	pmcfg = pPININT->PMCFG;
	pmcfg = (pmcfg & ~(7 << idx)) | (slice_cfg << idx);

	 
	if (sliceNum != PININTBITSLICE7) {
		if (end_point) {
			pmcfg |= (0x1 << sliceNum);
		}
		else {
			pmcfg &= ~(0x1 << sliceNum);
		}
	}

	pPININT->PMCFG = pmcfg;
}





 
static __inline void Chip_PININT_EnablePatternMatch(LPC_PIN_INT_T *pPININT)
{
	pPININT->PMCTRL = (pPININT->PMCTRL & ((uint32_t) 0xFF000003)) | (1 << 0);
}





 
static __inline void Chip_PININT_DisablePatternMatch(LPC_PIN_INT_T *pPININT)
{
	pPININT->PMCTRL = (pPININT->PMCTRL & ((uint32_t) 0xFF000003)) & ~(1 << 0);
}





 
static __inline void Chip_PININT_EnablePatternMatchRxEv(LPC_PIN_INT_T *pPININT)
{
	pPININT->PMCTRL = (pPININT->PMCTRL & ((uint32_t) 0xFF000003)) | (1 << 1);
}





 
static __inline void Chip_PININT_DisablePatternMatchRxEv(LPC_PIN_INT_T *pPININT)
{
	pPININT->PMCTRL = (pPININT->PMCTRL & ((uint32_t) 0xFF000003)) & ~(1 << 1);
}







 
static __inline uint32_t Chip_PININT_GetPatternMatchState(LPC_PIN_INT_T *pPININT)
{
	return pPININT->PMCTRL >> 24;
}



 





#line 183 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\inmux_5411x.h"





























 











 



 
typedef struct {						 
	volatile const  uint32_t RESERVED1[48];
	volatile uint32_t PINTSEL[8];			 
	volatile uint32_t DMA_ITRIG_INMUX[22];	 
	volatile const  uint32_t RESERVED2[10];
	volatile uint32_t DMA_OTRIG_INMUX[4];	 
	volatile const  uint32_t RESERVED3[4];
	volatile uint32_t FREQMEAS_REF;			 
	volatile uint32_t FREQMEAS_TARGET;		 
} LPC_INMUX_T;







 
static __inline void Chip_INMUX_PinIntSel(uint8_t pintSel, uint8_t portNum, uint8_t pinNum)
{
	((LPC_INMUX_T *) 0x40005000UL)->PINTSEL[pintSel] = (portNum * 32) + pinNum;
}

 
typedef enum {
	DMATRIG_ADC0_SEQA_IRQ = 0,			 
	DMATRIG_ADC0_SEQB_IRQ,				 
	DMATRIG_SCT0_DMA0,				 
	DMATRIG_SCT0_DMA1,				 
	DMATRIG_TIMER0_MATCH0,				 
	DMATRIG_TIMER0_MATCH1,				 
	DMATRIG_TIMER1_MATCH0,				 
	DMATRIG_TIMER2_MATCH0,				 
	DMATRIG_TIMER2_MATCH1,				 
	DMATRIG_TIMER3_MATCH0,				 
	DMATRIG_TIMER4_MATCH0,				 
	DMATRIG_TIMER4_MATCH1,				 
	DMATRIG_PININT0,				 
	DMATRIG_PININT1,				 
	DMATRIG_PININT2,				 
	DMATRIG_PININT3,				 
	DMATRIG_OUTMUX0,				 
	DMATRIG_OUTMUX1,				 
	DMATRIG_OUTMUX2,				 
	DMATRIG_OUTMUX3					 
} DMA_TRIGSRC_T;






 
static __inline void Chip_INMUX_SetDMATrigger(uint8_t ch, DMA_TRIGSRC_T trig)
{
	((LPC_INMUX_T *) 0x40005000UL)->DMA_ITRIG_INMUX[ch] = (uint32_t) trig;
}








 
static __inline void Chip_INMUX_SetDMAOutMux(uint8_t index, uint8_t dmaCh)
{
	((LPC_INMUX_T *) 0x40005000UL)->DMA_OTRIG_INMUX[index] = (uint32_t) dmaCh;
}

 
typedef enum {
	FREQMSR_CLKIN = 0,				 
	FREQMSR_FRO12MHZ,				 
	FREQMSR_WDOSC,					 
	FREQMSR_32KHZOSC,				 
	FREQ_MEAS_MAIN_CLK,				 
	FREQMSR_PIO0_4,					 
	FREQMSR_PIO0_20,				 
	FREQMSR_PIO0_24,				 
	FREQMSR_PIO1_4					 
} FREQMSR_SRC_T;





 
static __inline void Chip_INMUX_SetFreqMeasRefClock(FREQMSR_SRC_T ref)
{
	((LPC_INMUX_T *) 0x40005000UL)->FREQMEAS_REF = (uint32_t) ref;
}





 
static __inline void Chip_INMUX_SetFreqMeasTargClock(FREQMSR_SRC_T targ)
{
	((LPC_INMUX_T *) 0x40005000UL)->FREQMEAS_TARGET = (uint32_t) targ;
}



 





#line 184 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\crc_5411x.h"





























 











 



 
typedef struct {					 
	volatile    uint32_t    MODE;		 
	volatile    uint32_t    SEED;		 
	union {
		volatile const     uint32_t    SUM;	 
		volatile     uint32_t    WRDATA32;	 
		volatile     uint16_t    WRDATA16;	 
		volatile     uint8_t     WRDATA8;	 
	};

} LPC_CRC_T;



 
#line 72 "..\\..\\..\\chip_5411x\\inc\\crc_5411x.h"











 
typedef enum IP_CRC_001_POLY {
	CRC_POLY_CCITT = (0x00),	 
	CRC_POLY_CRC16 = (0x01),	 
	CRC_POLY_CRC32 = (0x02),	 
	CRC_POLY_LAST,
} CRC_POLY_T;





 
static __inline void Chip_CRC_Init(LPC_CRC_T *pCRC)
{
	switch ((uint32_t) pCRC) {
		case 0x40095000UL:
			Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_CRC);
			Chip_SYSCON_PeriphReset(RESET_CRC);
			break;
		default:
			 
			break;
	}
}





 
static __inline void Chip_CRC_Deinit(LPC_CRC_T *pCRC)
{
	switch ((uint32_t) pCRC) {
		case 0x40095000UL:
			Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_CRC);
			break;
		default:
			 
			break;
	}
}









 
static __inline void Chip_CRC_SetPoly(LPC_CRC_T *pCRC, CRC_POLY_T poly, uint32_t flags)
{
	pCRC->MODE = (uint32_t) poly | flags;
}





 
static __inline void Chip_CRC_UseCRC16(LPC_CRC_T *pCRC)
{
	pCRC->MODE = (0x15);
	pCRC->SEED = (0x00000000);
}





 
static __inline void Chip_CRC_UseCRC32(LPC_CRC_T *pCRC)
{
	pCRC->MODE = (0x36);
	pCRC->SEED = (0xFFFFFFFF);
}





 
static __inline void Chip_CRC_UseCCITT(LPC_CRC_T *pCRC)
{
	pCRC->MODE = (0x00);
	pCRC->SEED = (0x0000FFFF);
}






 
static __inline void Chip_CRC_UseDefaultConfig(LPC_CRC_T *pCRC, CRC_POLY_T poly)
{
	switch (poly) {
	case CRC_POLY_CRC16:
		Chip_CRC_UseCRC16(pCRC);
		break;

	case CRC_POLY_CRC32:
		Chip_CRC_UseCRC32(pCRC);
		break;

	case CRC_POLY_CCITT:
	default:
		Chip_CRC_UseCCITT(pCRC);
		break;
	}
}






 
static __inline void Chip_CRC_SetMode(LPC_CRC_T *pCRC, uint32_t mode)
{
	pCRC->MODE = mode;
}





 
static __inline uint32_t Chip_CRC_GetMode(LPC_CRC_T *pCRC)
{
	return pCRC->MODE;
}






 
static __inline void Chip_CRC_SetSeed(LPC_CRC_T *pCRC, uint32_t seed)
{
	pCRC->SEED = seed;
}





 
static __inline uint32_t Chip_CRC_GetSeed(LPC_CRC_T *pCRC)
{
	return pCRC->SEED;
}






 
static __inline void Chip_CRC_Write8(LPC_CRC_T *pCRC, uint8_t data)
{
	pCRC->WRDATA8 = data;
}






 
static __inline void Chip_CRC_Write16(LPC_CRC_T *pCRC, uint16_t data)
{
	pCRC->WRDATA16 = data;
}






 
static __inline void Chip_CRC_Write32(LPC_CRC_T *pCRC, uint32_t data)
{
	pCRC->WRDATA32 = data;
}





 
static __inline uint32_t Chip_CRC_Sum(LPC_CRC_T *pCRC)
{
	return pCRC->SUM;
}







 
static __inline uint32_t Chip_CRC_CRC8(LPC_CRC_T *pCRC, const uint8_t *data, uint32_t bytes)
{
	Chip_CRC_UseCCITT(pCRC);
	while (bytes > 0) {
		Chip_CRC_Write8(pCRC, *data);
		data++;
		bytes--;
	}

	return Chip_CRC_Sum(pCRC);
}







 
static __inline uint32_t Chip_CRC_CRC16(LPC_CRC_T *pCRC, const uint16_t *data, uint32_t hwords)
{
	Chip_CRC_UseCRC16(pCRC);
	while (hwords > 0) {
		Chip_CRC_Write16(pCRC, *data);
		data++;
		hwords--;
	}

	return Chip_CRC_Sum(pCRC);
}







 
static __inline uint32_t Chip_CRC_CRC32(LPC_CRC_T *pCRC, const uint32_t *data, uint32_t words)
{
	Chip_CRC_UseCRC32(pCRC);
	while (words > 0) {
		Chip_CRC_Write32(pCRC, *data);
		data++;
		words--;
	}

	return Chip_CRC_Sum(pCRC);
}



 





#line 185 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\gpio_5411x.h"





























 











 



 
typedef struct {				 
	volatile uint8_t B[128][32];	 
	volatile uint32_t W[32][32];	 
	volatile uint32_t DIR[32];		 
	volatile uint32_t MASK[32];		 
	volatile uint32_t PIN[32];		 
	volatile uint32_t MPIN[32];		 
	volatile uint32_t SET[32];		 
	volatile  uint32_t CLR[32];		 
	volatile  uint32_t NOT[32];		 
} LPC_GPIO_T;







 
static __inline void Chip_GPIO_Init(LPC_GPIO_T *pGPIO)
{
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_GPIO0);
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_GPIO1);
	Chip_SYSCON_PeriphReset(RESET_GPIO0);
	Chip_SYSCON_PeriphReset(RESET_GPIO1);
}





 
static __inline void Chip_GPIO_DeInit(LPC_GPIO_T *pGPIO)
{
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_GPIO0);
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_GPIO1);
}









 
static __inline void Chip_GPIO_WritePortBit(LPC_GPIO_T *pGPIO, uint32_t port, uint8_t pin, _Bool setting)
{
	pGPIO->B[port][pin] = setting;
}









 
static __inline void Chip_GPIO_SetPinState(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin, _Bool setting)
{
	pGPIO->B[port][pin] = setting;
}








 
static __inline _Bool Chip_GPIO_ReadPortBit(LPC_GPIO_T *pGPIO, uint32_t port, uint8_t pin)
{
	return (_Bool) pGPIO->B[port][pin];
}








 
static __inline _Bool Chip_GPIO_GetPinState(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
	return (_Bool) pGPIO->B[port][pin];
}











 
static __inline void Chip_GPIO_WriteDirBit(LPC_GPIO_T *pGPIO, uint32_t port, uint8_t pin, _Bool setting)
{
	if (setting) {
		pGPIO->DIR[port] |= 1UL << pin;
	}
	else {
		pGPIO->DIR[port] &= ~(1UL << pin);
	}
}







 
static __inline void Chip_GPIO_SetPinDIROutput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
	pGPIO->DIR[port] |= 1UL << pin;
}







 
static __inline void Chip_GPIO_SetPinDIRInput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
	pGPIO->DIR[port] &= ~(1UL << pin);
}








 
static __inline void Chip_GPIO_SetPinDIR(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin, _Bool output)
{
	if (output) {
		Chip_GPIO_SetPinDIROutput(pGPIO, port, pin);
	}
	else {
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
	}
}








 
static __inline _Bool Chip_GPIO_ReadDirBit(LPC_GPIO_T *pGPIO, uint32_t port, uint8_t bit)
{
	return (_Bool) (((pGPIO->DIR[port]) >> bit) & 1);
}







 
static __inline _Bool Chip_GPIO_GetPinDIR(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
	return Chip_GPIO_ReadDirBit(pGPIO, port, pin);
}










 
static __inline void Chip_GPIO_SetDir(LPC_GPIO_T *pGPIO, uint8_t portNum, uint32_t bitValue, uint8_t out)
{
	if (out) {
		pGPIO->DIR[portNum] |= bitValue;
	}
	else {
		pGPIO->DIR[portNum] &= ~bitValue;
	}
}









 
static __inline void Chip_GPIO_SetPortDIROutput(LPC_GPIO_T *pGPIO, uint8_t port, uint32_t pinMask)
{
	pGPIO->DIR[port] |= pinMask;
}









 
static __inline void Chip_GPIO_SetPortDIRInput(LPC_GPIO_T *pGPIO, uint8_t port, uint32_t pinMask)
{
	pGPIO->DIR[port] &= ~pinMask;
}










 
static __inline void Chip_GPIO_SetPortDIR(LPC_GPIO_T *pGPIO, uint8_t port, uint32_t pinMask, _Bool outSet)
{
	if (outSet) {
		Chip_GPIO_SetPortDIROutput(pGPIO, port, pinMask);
	}
	else {
		Chip_GPIO_SetPortDIRInput(pGPIO, port, pinMask);
	}
}








 
static __inline uint32_t Chip_GPIO_GetPortDIR(LPC_GPIO_T *pGPIO, uint8_t port)
{
	return pGPIO->DIR[port];
}









 
static __inline void Chip_GPIO_SetPortMask(LPC_GPIO_T *pGPIO, uint8_t port, uint32_t mask)
{
	pGPIO->MASK[port] = mask;
}






 
static __inline uint32_t Chip_GPIO_GetPortMask(LPC_GPIO_T *pGPIO, uint8_t port)
{
	return pGPIO->MASK[port];
}







 
static __inline void Chip_GPIO_SetPortValue(LPC_GPIO_T *pGPIO, uint8_t port, uint32_t value)
{
	pGPIO->PIN[port] = value;
}






 
static __inline uint32_t Chip_GPIO_GetPortValue(LPC_GPIO_T *pGPIO, uint8_t port)
{
	return pGPIO->PIN[port];
}







 
static __inline void Chip_GPIO_SetMaskedPortValue(LPC_GPIO_T *pGPIO, uint8_t port, uint32_t value)
{
	pGPIO->MPIN[port] = value;
}






 
static __inline uint32_t Chip_GPIO_GetMaskedPortValue(LPC_GPIO_T *pGPIO, uint8_t port)
{
	return pGPIO->MPIN[port];
}










 
static __inline void Chip_GPIO_SetValue(LPC_GPIO_T *pGPIO, uint8_t portNum, uint32_t bitValue)
{
	pGPIO->SET[portNum] = bitValue;
}









 
static __inline void Chip_GPIO_SetPortOutHigh(LPC_GPIO_T *pGPIO, uint8_t port, uint32_t pins)
{
	pGPIO->SET[port] = pins;
}









 
static __inline void Chip_GPIO_SetPinOutHigh(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
	pGPIO->SET[port] = (1 << pin);
}










 
static __inline void Chip_GPIO_ClearValue(LPC_GPIO_T *pGPIO, uint8_t portNum, uint32_t bitValue)
{
	pGPIO->CLR[portNum] = bitValue;
}









 
static __inline void Chip_GPIO_SetPortOutLow(LPC_GPIO_T *pGPIO, uint8_t port, uint32_t pins)
{
	pGPIO->CLR[port] = pins;
}









 
static __inline void Chip_GPIO_SetPinOutLow(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
	pGPIO->CLR[port] = (1 << pin);
}









 
static __inline void Chip_GPIO_SetPortToggle(LPC_GPIO_T *pGPIO, uint8_t port, uint32_t pins)
{
	pGPIO->NOT[port] = pins;
}









 
static __inline void Chip_GPIO_SetPinToggle(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
	pGPIO->NOT[port] = (1 << pin);
}









 
static __inline uint32_t Chip_GPIO_ReadValue(LPC_GPIO_T *pGPIO, uint8_t portNum)
{
	return pGPIO->PIN[portNum];
}



 





#line 186 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\mrt_5411x.h"





























 











 



 





 
typedef struct {
	volatile uint32_t INTVAL;	 
	volatile  uint32_t TIMER;	 
	volatile uint32_t CTRL;		 
	volatile uint32_t STAT;		 
} LPC_MRT_CH_T;



 
typedef struct {
	LPC_MRT_CH_T CHANNEL[(4)];
	uint32_t unused[44];
	volatile uint32_t MODCFG;
	volatile  uint32_t IDLE_CH;
	volatile uint32_t IRQ_FLAG;
} LPC_MRT_T;



 
typedef enum MRT_MODE {
	MRT_MODE_REPEAT =  (0 << 1),	 
	MRT_MODE_ONESHOT = (1 << 1)		 
} MRT_MODE_T;



 
 



 



 



 






 









 
static __inline void Chip_MRT_Init(void)
{
	 
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_MRT);

	 
	Chip_SYSCON_PeriphReset(RESET_MRT);
}




 
static __inline void Chip_MRT_DeInit(void)
{
	 
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_MRT);
}





 
static __inline LPC_MRT_CH_T *Chip_MRT_GetRegPtr(uint8_t ch)
{
	return ((LPC_MRT_CH_T *) &((LPC_MRT_T *) 0x4000D000UL)->CHANNEL[(ch)]);
}





 
static __inline uint32_t Chip_MRT_GetInterval(LPC_MRT_CH_T *pMRT)
{
	return pMRT->INTVAL;
}











 
static __inline void Chip_MRT_SetInterval(LPC_MRT_CH_T *pMRT, uint32_t interval)
{
	pMRT->INTVAL = interval;
}





 
static __inline uint32_t Chip_MRT_GetTimer(LPC_MRT_CH_T *pMRT)
{
	return pMRT->TIMER;
}





 
static __inline _Bool Chip_MRT_GetEnabled(LPC_MRT_CH_T *pMRT)
{
	return (_Bool) ((pMRT->CTRL & (0x01)) != 0);
}





 
static __inline void Chip_MRT_SetEnabled(LPC_MRT_CH_T *pMRT)
{
	pMRT->CTRL |= (0x01);
}





 
static __inline void Chip_MRT_SetDisabled(LPC_MRT_CH_T *pMRT)
{
	pMRT->CTRL &= ~(0x01);
}





 
static __inline MRT_MODE_T Chip_MRT_GetMode(LPC_MRT_CH_T *pMRT)
{
	return (MRT_MODE_T) (pMRT->CTRL & (0x06));
}






 
static __inline void Chip_MRT_SetMode(LPC_MRT_CH_T *pMRT, MRT_MODE_T mode)
{
	uint32_t reg;

	reg = pMRT->CTRL & ~(0x06);
	pMRT->CTRL = reg | (uint32_t) mode;
}





 
static __inline _Bool Chip_MRT_IsRepeatMode(LPC_MRT_CH_T *pMRT)
{
	return ((pMRT->CTRL & (0x06)) != 0) ? 0 : 1;
}





 
static __inline _Bool Chip_MRT_IsOneShotMode(LPC_MRT_CH_T *pMRT)
{
	return ((pMRT->CTRL & (0x06)) != 0) ? 1 : 0;
}





 
static __inline _Bool Chip_MRT_IntPending(LPC_MRT_CH_T *pMRT)
{
	return (_Bool) ((pMRT->STAT & (0x01)) != 0);
}





 
static __inline void Chip_MRT_IntClear(LPC_MRT_CH_T *pMRT)
{
	pMRT->STAT |= (0x01);
}





 
static __inline _Bool Chip_MRT_Running(LPC_MRT_CH_T *pMRT)
{
	return (_Bool) ((pMRT->STAT & (0x02)) != 0);
}




 
static __inline uint8_t Chip_MRT_GetIdleChannel(void)
{
	return (uint8_t) (((LPC_MRT_T *) 0x4000D000UL)->IDLE_CH);
}




 
static __inline uint8_t Chip_MRT_GetIdleChannelShifted(void)
{
	return (uint8_t) (Chip_MRT_GetIdleChannel() >> 4);
}




 
static __inline uint32_t Chip_MRT_GetIntPending(void)
{
	return ((LPC_MRT_T *) 0x4000D000UL)->IRQ_FLAG;
}





 
static __inline _Bool Chip_MRT_GetIntPendingByChannel(uint8_t ch)
{
	return (_Bool) (((((LPC_MRT_T *) 0x4000D000UL)->IRQ_FLAG >> ch) & 1) != 0);
}









 
static __inline void Chip_MRT_ClearIntPending(uint32_t mask)
{
	((LPC_MRT_T *) 0x4000D000UL)->IRQ_FLAG = mask;
}



 





#line 187 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\wwdt_5411x.h"





























 











 



 
typedef struct {				 
	volatile uint32_t  MOD;			 
	volatile uint32_t  TC;			 
	volatile  uint32_t  FEED;		 
	volatile const  uint32_t  TV;			 
	volatile const  uint32_t  RESERVED0;
	volatile uint32_t  WARNINT;		 
	volatile uint32_t  WINDOW;		 
} LPC_WWDT_T;



 
 

 

 

 

 

 

 






 
static __inline void Chip_WWDT_Init(LPC_WWDT_T *pWWDT)
{
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_WWDT);
	Chip_SYSCON_PeriphReset(RESET_WWDT);

	 
	pWWDT->MOD       = 0;
	pWWDT->TC        = 0xFF;
	pWWDT->WARNINT   = 0x3FF;
	pWWDT->WINDOW    = 0xFFFFFF;
}





 
static __inline void Chip_WWDT_DeInit(LPC_WWDT_T *pWWDT)
{
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_WWDT);
}






 
static __inline void Chip_WWDT_SetTimeOut(LPC_WWDT_T *pWWDT, uint32_t timeout)
{
	pWWDT->TC = timeout;
}









 
static __inline void Chip_WWDT_Feed(LPC_WWDT_T *pWWDT)
{
	pWWDT->FEED = 0xAA;
	pWWDT->FEED = 0x55;
}








 
static __inline void Chip_WWDT_SetWarning(LPC_WWDT_T *pWWDT, uint32_t timeout)
{
	pWWDT->WARNINT = timeout;
}





 
static __inline uint32_t Chip_WWDT_GetWarning(LPC_WWDT_T *pWWDT)
{
	return pWWDT->WARNINT;
}









 
static __inline void Chip_WWDT_SetWindow(LPC_WWDT_T *pWWDT, uint32_t timeout)
{
	pWWDT->WINDOW = timeout;
}





 
static __inline uint32_t Chip_WWDT_GetWindow(LPC_WWDT_T *pWWDT)
{
	return pWWDT->WINDOW;
}











 
static __inline void Chip_WWDT_SetOption(LPC_WWDT_T *pWWDT, uint32_t options)
{
	pWWDT->MOD = (pWWDT->MOD & ((uint32_t) 0x3F)) | options;
}









 
static __inline void Chip_WWDT_UnsetOption(LPC_WWDT_T *pWWDT, uint32_t options)
{
	pWWDT->MOD &= (~options) & ((uint32_t) 0x3F);
}





 
static __inline void Chip_WWDT_Start(LPC_WWDT_T *pWWDT)
{
	Chip_WWDT_SetOption(pWWDT, ((uint32_t) (1 << 0)));
	Chip_WWDT_Feed(pWWDT);
}





 
static __inline uint32_t Chip_WWDT_GetStatus(LPC_WWDT_T *pWWDT)
{
	return pWWDT->MOD;
}








 
static __inline void Chip_WWDT_ClearStatusFlag(LPC_WWDT_T *pWWDT, uint32_t status)
{
	if (status & ((uint32_t) (1 << 2))) {
		pWWDT->MOD &= (~((uint32_t) (1 << 2))) & ((uint32_t) 0x3F);
	}
	 
	if (status & ((uint32_t) (1 << 3))) {
		pWWDT->MOD = (pWWDT->MOD & ((uint32_t) 0x3F)) | ((uint32_t) (1 << 3));
	}
}





 
static __inline uint32_t Chip_WWDT_GetCurrentCount(LPC_WWDT_T *pWWDT)
{
	return pWWDT->TV;
}



 





#line 188 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\sct_5411x.h"





























 











 




 







 
typedef struct {
	volatile uint32_t CONFIG;		 

	union {
		volatile uint32_t CTRL_U;		 

		struct {
			volatile uint16_t CTRL_L;		 
			volatile uint16_t CTRL_H;		 
		};

	};

	volatile uint16_t LIMIT_L;		 
	volatile uint16_t LIMIT_H;		 
	volatile uint16_t HALT_L;		 
	volatile uint16_t HALT_H;		 
	volatile uint16_t STOP_L;		 
	volatile uint16_t STOP_H;		 
	volatile uint16_t START_L;		 
	volatile uint16_t START_H;		 
	uint32_t RESERVED1[10];		 

	union {
		volatile uint32_t COUNT_U;		 

		struct {
			volatile uint16_t COUNT_L;		 
			volatile uint16_t COUNT_H;		 
		};

	};

	volatile uint16_t STATE_L;		 
	volatile uint16_t STATE_H;		 
	volatile const uint32_t INPUT;		 
	volatile uint16_t REGMODE_L;	 
	volatile uint16_t REGMODE_H;	 
	volatile uint32_t OUTPUT;		 
	volatile uint32_t OUTPUTDIRCTRL;	 
	volatile uint32_t RES;		 
	volatile uint32_t DMA0REQUEST;		 
	volatile uint32_t DMA1REQUEST;		 
	uint32_t RESERVED2[35];
	volatile uint32_t EVEN;		 
	volatile uint32_t EVFLAG;		 
	volatile uint32_t CONEN;	 
	volatile uint32_t CONFLAG;		 

	union {

		volatile union {	 
			uint32_t U;		 

			struct {
				uint16_t L;		 
				uint16_t H;		 
			};

		} MATCH[(13)];

		volatile const union {
			uint32_t U;		 

			struct {
				uint16_t L;		 
				uint16_t H;		 
			};

		} CAP[(13)];

	};

	uint32_t RESERVED3[48 + (16 - (13))];

	union {

		volatile union {	 
			uint32_t U;		 

			struct {
				uint16_t L;		 
				uint16_t H;		 
			};

		} MATCHREL[(13)];

		volatile union {
			uint32_t U;		 

			struct {
				uint16_t L;		 
				uint16_t H;		 
			};

		} CAPCTRL[(13)];

	};

	uint32_t RESERVED6[48 + (16 - (13))];

	volatile struct {		 
		uint32_t STATE;		 
		uint32_t CTRL;		 
	} EVENT[(13)];

	uint32_t RESERVED9[128 - 2 * (13)];		 

	volatile struct {		 
		uint32_t SET;		 
		uint32_t CLR;		 
	} OUT[(8)];

	uint32_t RESERVED10[191 - 2 * (8)];		 
	volatile const uint32_t MODULECONTENT;		 
} LPC_SCT_T;



 













#line 210 "..\\..\\..\\chip_5411x\\inc\\sct_5411x.h"



 









#line 230 "..\\..\\..\\chip_5411x\\inc\\sct_5411x.h"

#line 237 "..\\..\\..\\chip_5411x\\inc\\sct_5411x.h"

#line 252 "..\\..\\..\\chip_5411x\\inc\\sct_5411x.h"



 







 
typedef enum CHIP_SCT_MATCH_REG {
	SCT_MATCH_0 = 0,	 
	SCT_MATCH_1,
	SCT_MATCH_2,
	SCT_MATCH_3,
	SCT_MATCH_4,
	SCT_MATCH_5,
	SCT_MATCH_6,
	SCT_MATCH_7,
	SCT_MATCH_8,
	SCT_MATCH_9,
	SCT_MATCH_10,
	SCT_MATCH_11,
	SCT_MATCH_12,
	SCT_MATCH_13,
	SCT_MATCH_14,
	SCT_MATCH_15
} CHIP_SCT_MATCH_REG_T;



 
typedef enum CHIP_SCT_EVENT {
	SCT_EVT_0 = (1 << 0),		 
	SCT_EVT_1 = (1 << 1),		 
	SCT_EVT_2 = (1 << 2),		 
	SCT_EVT_3 = (1 << 3),		 
	SCT_EVT_4 = (1 << 4),		 
	SCT_EVT_5 = (1 << 5),		 
	SCT_EVT_6 = (1 << 6),		 
	SCT_EVT_7 = (1 << 7),		 
	SCT_EVT_8 = (1 << 8),		 
	SCT_EVT_9 = (1 << 9),		 
	SCT_EVT_10 = (1 << 10),		 
	SCT_EVT_11 = (1 << 11),		 
	SCT_EVT_12 = (1 << 12),		 
	SCT_EVT_13 = (1 << 13),		 
	SCT_EVT_14 = (1 << 14),		 
	SCT_EVT_15 = (1 << 15)		 
} CHIP_SCT_EVENT_T;







 
static __inline void Chip_SCT_EventControl(LPC_SCT_T *pSCT, uint32_t event_number,
										 uint32_t value) {
	pSCT->EVENT[event_number].CTRL = value;
}







 
static __inline void Chip_SCT_EventStateMask(LPC_SCT_T *pSCT, uint32_t event_number,
										   uint32_t event_state_mask) {
	pSCT->EVENT[event_number].STATE = event_state_mask;
}






 
static __inline void Chip_SCT_Config(LPC_SCT_T *pSCT, uint32_t cfg) {
	pSCT->CONFIG = cfg;
}






 
static __inline void Chip_SCT_Limit(LPC_SCT_T *pSCT, uint32_t value) {
	pSCT->LIMIT_L = value;
}












 
void Chip_SCT_SetClrControl(LPC_SCT_T *pSCT, uint32_t value, FunctionalState ena);














 
void Chip_SCT_SetConflictResolution(LPC_SCT_T *pSCT, uint8_t outnum, uint8_t value);






 
static __inline void Chip_SCT_SetCount(LPC_SCT_T *pSCT, uint32_t count) {
	pSCT->COUNT_U = count;
}






 
static __inline void Chip_SCT_SetCountL(LPC_SCT_T *pSCT, uint16_t count) {
	pSCT->COUNT_L = count;
}






 
static __inline void Chip_SCT_SetCountH(LPC_SCT_T *pSCT, uint16_t count) {
	pSCT->COUNT_H = count;
}







 
static __inline void Chip_SCT_SetMatchCount(LPC_SCT_T *pSCT, CHIP_SCT_MATCH_REG_T n, uint32_t value) {
	pSCT->MATCH[n].U = value;
}







 
static __inline void Chip_SCT_SetMatchReload(LPC_SCT_T *pSCT, CHIP_SCT_MATCH_REG_T n, uint32_t value) {
	pSCT->MATCHREL[n].U = value;
}






 
static __inline void Chip_SCT_EnableEventInt(LPC_SCT_T *pSCT, CHIP_SCT_EVENT_T evt) {
	pSCT->EVEN |= evt;
}






 
static __inline void Chip_SCT_DisableEventInt(LPC_SCT_T *pSCT, CHIP_SCT_EVENT_T evt) {
	pSCT->EVEN &= ~(evt);
}






 
static __inline void Chip_SCT_ClearEventFlag(LPC_SCT_T *pSCT, CHIP_SCT_EVENT_T evt) {
	pSCT->EVFLAG |= evt;
}






 
static __inline void Chip_SCT_SetControl(LPC_SCT_T *pSCT, uint32_t value) {
	pSCT->CTRL_U |= value;
}






 
static __inline void Chip_SCT_ClearControl(LPC_SCT_T *pSCT, uint32_t value) {
	pSCT->CTRL_U &= ~(value);
}





 
void Chip_SCT_Init(LPC_SCT_T *pSCT);





 
void Chip_SCT_DeInit(LPC_SCT_T *pSCT);



 






#line 189 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\sct_pwm_5411x.h"





























 
















 







 
static __inline uint32_t Chip_SCTPWM_GetTicksPerCycle(LPC_SCT_T *pSCT)
{
	return pSCT->MATCHREL[0].U;
}










 
static __inline uint32_t Chip_SCTPWM_PercentageToTicks(LPC_SCT_T *pSCT, uint8_t percent)
{
	return (Chip_SCTPWM_GetTicksPerCycle(pSCT) * percent) / 100;
}










 
static __inline uint32_t Chip_SCTPWM_GetDutyCycle(LPC_SCT_T *pSCT, uint8_t index)
{
	return pSCT->MATCHREL[index].U;
}












 
static __inline void Chip_SCTPWM_SetDutyCycle(LPC_SCT_T *pSCT, uint8_t index, uint32_t ticks)
{
	Chip_SCT_SetMatchReload(pSCT, (CHIP_SCT_MATCH_REG_T) index, ticks);
}





 
static __inline void Chip_SCTPWM_Init(LPC_SCT_T *pSCT)
{
	Chip_SCT_Init(pSCT);
}











 
static __inline void Chip_SCTPWM_Start(LPC_SCT_T *pSCT)
{
	Chip_SCT_ClearControl(pSCT, (1 << 2) | (1 << 18));
}





 
static __inline void Chip_SCTPWM_Stop(LPC_SCT_T *pSCT)
{
	 
	Chip_SCT_SetControl(pSCT, (1 << 2) | (1 << 18));

	 
	Chip_SCT_SetControl(pSCT, (1 << 3) | (1 << 19));
}






 
void Chip_SCTPWM_SetRate(LPC_SCT_T *pSCT, uint32_t freq);











 
void Chip_SCTPWM_SetOutPin(LPC_SCT_T *pSCT, uint8_t index, uint8_t pin);



 






#line 190 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\rtc_5411x.h"





























 











 



 
typedef struct {			 
	volatile uint32_t CTRL;		 
	volatile uint32_t MATCH;	 
	volatile uint32_t COUNT;	 
	volatile uint32_t WAKE;		 
} LPC_RTC_T;

 
#line 65 "..\\..\\..\\chip_5411x\\inc\\rtc_5411x.h"






 
static __inline void Chip_RTC_Init(LPC_RTC_T *pRTC)
{
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_RTC);
}





 
static __inline void Chip_RTC_DeInit(LPC_RTC_T *pRTC)
{
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_RTC);
}










 
static __inline void Chip_RTC_EnableOptions(LPC_RTC_T *pRTC, uint32_t flags)
{
	pRTC->CTRL = (pRTC->CTRL & ((uint32_t) 0x0000003FD)) | flags;
}










 
static __inline void Chip_RTC_DisableOptions(LPC_RTC_T *pRTC, uint32_t flags)
{
	pRTC->CTRL = (pRTC->CTRL & ((uint32_t) 0x0000003FD)) & ~flags;
}






 
static __inline void Chip_RTC_Reset(LPC_RTC_T *pRTC)
{
	Chip_RTC_EnableOptions(pRTC, (1 << 0));
	Chip_RTC_DisableOptions(pRTC, (1 << 0));
}







 
static __inline void Chip_RTC_Enable(LPC_RTC_T *pRTC)
{
	Chip_RTC_EnableOptions(pRTC, (1 << 7));
}







 
static __inline void Chip_RTC_Disable(LPC_RTC_T *pRTC)
{
	Chip_RTC_DisableOptions(pRTC, (1 << 7));
}





 
static __inline void Chip_RTC_PowerUp(LPC_RTC_T *pRTC)
{
	Chip_RTC_DisableOptions(pRTC, (1 << 8));
}







 
static __inline void Chip_RTC_PowerDown(LPC_RTC_T *pRTC)
{
	Chip_RTC_EnableOptions(pRTC, (1 << 8));
}









 
static __inline void Chip_RTC_Enable1KHZ(LPC_RTC_T *pRTC)
{
	Chip_RTC_EnableOptions(pRTC, (1 << 6));
}








 
static __inline void Chip_RTC_Disable1KHZ(LPC_RTC_T *pRTC)
{
	Chip_RTC_DisableOptions(pRTC, (1 << 6));
}










 
static __inline void Chip_RTC_EnableWakeup(LPC_RTC_T *pRTC, uint32_t ints)
{
	Chip_RTC_EnableOptions(pRTC, ints);
}










 
static __inline void Chip_RTC_DisableWakeup(LPC_RTC_T *pRTC, uint32_t ints)
{
	Chip_RTC_DisableOptions(pRTC, ints);
}








 
static __inline void Chip_RTC_ClearStatus(LPC_RTC_T *pRTC, uint32_t stsMask)
{
	pRTC->CTRL = (pRTC->CTRL & ((uint32_t) 0x0000003FD)) | stsMask;
}








 
static __inline uint32_t Chip_RTC_GetStatus(LPC_RTC_T *pRTC)
{
	return pRTC->CTRL;
}






 
static __inline void Chip_RTC_SetAlarm(LPC_RTC_T *pRTC, uint32_t count)
{
	pRTC->MATCH = count;
}





 
static __inline uint32_t Chip_RTC_GetAlarm(LPC_RTC_T *pRTC)
{
	return pRTC->MATCH;
}









 
static __inline void Chip_RTC_SetCount(LPC_RTC_T *pRTC, uint32_t count)
{
	pRTC->COUNT = count;
}





 
static __inline uint32_t Chip_RTC_GetCount(LPC_RTC_T *pRTC)
{
	return pRTC->COUNT;
}








 
static __inline void Chip_RTC_SetWake(LPC_RTC_T *pRTC, uint16_t count)
{
	pRTC->WAKE = count;
}





 
static __inline uint16_t Chip_RTC_GetWake(LPC_RTC_T *pRTC)
{
	return pRTC->WAKE;
}



 





#line 191 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\timer_5411x.h"





























 











 



 
typedef struct {					 
	volatile uint32_t IR;				 
	volatile uint32_t TCR;				 
	volatile uint32_t TC;				 
	volatile uint32_t PR;				 
	volatile uint32_t PC;				 
	volatile uint32_t MCR;				 
	volatile uint32_t MR[4];			 
	volatile uint32_t CCR;				 
	volatile uint32_t CR[4];			 
	volatile uint32_t EMR;				 
	volatile const  uint32_t RESERVED0[12];
	volatile uint32_t CTCR;				 
	volatile uint32_t PWMC;
} LPC_TIMER_T;

 


 

 


 

 

 


 

 

 

 


 

 

 

 

 

 






 
static __inline void Chip_TIMER_Init(LPC_TIMER_T *pTMR)
{
	switch((uint32_t) pTMR) {
		case 0x40049000UL:
			Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_TIMER4);
			Chip_SYSCON_PeriphReset(RESET_TIMER4);
		case 0x40048000UL:
			Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_TIMER3);
			Chip_SYSCON_PeriphReset(RESET_TIMER3);
		case 0x40028000UL:
			Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_TIMER2);
			Chip_SYSCON_PeriphReset(RESET_TIMER2);
		case 0x40009000UL:
			Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_TIMER1);
			Chip_SYSCON_PeriphReset(RESET_TIMER1);
		case 0x40008000UL:
			Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_TIMER0);
			Chip_SYSCON_PeriphReset(RESET_TIMER0);
		default:
			 
			return;
	}
}





 
static __inline void Chip_TIMER_DeInit(LPC_TIMER_T *pTMR)
{
	switch((uint32_t) pTMR) {
		case 0x40049000UL:
			Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_TIMER4);
		case 0x40048000UL:
			Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_TIMER3);
		case 0x40028000UL:
			Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_TIMER2);
		case 0x40009000UL:
			Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_TIMER1);
		case 0x40008000UL:
			Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_TIMER0);
		default:
			 
			return;
	}
}








 
static __inline _Bool Chip_TIMER_MatchPending(LPC_TIMER_T *pTMR, int8_t matchnum)
{
	return (_Bool) ((pTMR->IR & ((1 << ((matchnum) & 0x0F)))) != 0);
}








 
static __inline _Bool Chip_TIMER_CapturePending(LPC_TIMER_T *pTMR, int8_t capnum)
{
	return (_Bool) ((pTMR->IR & ((1 << ((((capnum) & 0x0F) + 4))))) != 0);
}







 
static __inline void Chip_TIMER_ClearMatch(LPC_TIMER_T *pTMR, int8_t matchnum)
{
	pTMR->IR = (1 << (matchnum));
}







 
static __inline void Chip_TIMER_ClearCapture(LPC_TIMER_T *pTMR, int8_t capnum)
{
	pTMR->IR = (0x10 << capnum);
}






 
static __inline void Chip_TIMER_Enable(LPC_TIMER_T *pTMR)
{
	pTMR->TCR = (pTMR->TCR & ((uint32_t) 0x03)) | ((uint32_t) (1 << 0));
}






 
static __inline void Chip_TIMER_Disable(LPC_TIMER_T *pTMR)
{
	pTMR->TCR = (pTMR->TCR & ((uint32_t) 0x03)) & ~((uint32_t) (1 << 0));
}






 
static __inline uint32_t Chip_TIMER_ReadCount(LPC_TIMER_T *pTMR)
{
	return pTMR->TC;
}






 
static __inline uint32_t Chip_TIMER_ReadPrescale(LPC_TIMER_T *pTMR)
{
	return pTMR->PC;
}







 
static __inline void Chip_TIMER_PrescaleSet(LPC_TIMER_T *pTMR, uint32_t prescale)
{
	pTMR->PR = prescale;
}








 
static __inline void Chip_TIMER_SetMatch(LPC_TIMER_T *pTMR, int8_t matchnum, uint32_t matchval)
{
	pTMR->MR[matchnum] = matchval;
}







 
static __inline uint32_t Chip_TIMER_ReadCapture(LPC_TIMER_T *pTMR, int8_t capnum)
{
	return pTMR->CR[capnum];
}





 
void Chip_TIMER_Reset(LPC_TIMER_T *pTMR);







 
static __inline void Chip_TIMER_MatchEnableInt(LPC_TIMER_T *pTMR, int8_t matchnum)
{
	pTMR->MCR = (pTMR->MCR & ((uint32_t) 0x0FFF)) | ((1 << (((matchnum) * 3))));
}






 
static __inline void Chip_TIMER_MatchDisableInt(LPC_TIMER_T *pTMR, int8_t matchnum)
{
	pTMR->MCR = (pTMR->MCR & ((uint32_t) 0x0FFF)) & ~((1 << (((matchnum) * 3))));
}






 
static __inline void Chip_TIMER_ResetOnMatchEnable(LPC_TIMER_T *pTMR, int8_t matchnum)
{
	pTMR->MCR = (pTMR->MCR & ((uint32_t) 0x0FFF)) | ((1 << ((((matchnum) * 3) + 1))));
}






 
static __inline void Chip_TIMER_ResetOnMatchDisable(LPC_TIMER_T *pTMR, int8_t matchnum)
{
	pTMR->MCR = (pTMR->MCR & ((uint32_t) 0x0FFF)) & ~((1 << ((((matchnum) * 3) + 1))));
}







 
static __inline void Chip_TIMER_StopOnMatchEnable(LPC_TIMER_T *pTMR, int8_t matchnum)
{
	pTMR->MCR = (pTMR->MCR & ((uint32_t) 0x0FFF)) | ((1 << ((((matchnum) * 3) + 2))));
}







 
static __inline void Chip_TIMER_StopOnMatchDisable(LPC_TIMER_T *pTMR, int8_t matchnum)
{
	pTMR->MCR = (pTMR->MCR & ((uint32_t) 0x0FFF)) & ~((1 << ((((matchnum) * 3) + 2))));
}








 
static __inline void Chip_TIMER_CaptureRisingEdgeEnable(LPC_TIMER_T *pTMR, int8_t capnum)
{
	pTMR->CCR = (pTMR->CCR & ((uint32_t) 0x0FFF)) | ((1 << (((capnum) * 3))));
}








 
static __inline void Chip_TIMER_CaptureRisingEdgeDisable(LPC_TIMER_T *pTMR, int8_t capnum)
{
	pTMR->CCR = (pTMR->CCR & ((uint32_t) 0x0FFF)) & ~((1 << (((capnum) * 3))));
}








 
static __inline void Chip_TIMER_CaptureFallingEdgeEnable(LPC_TIMER_T *pTMR, int8_t capnum)
{
	pTMR->CCR = (pTMR->CCR & ((uint32_t) 0x0FFF)) | ((1 << ((((capnum) * 3) + 1))));
}








 
static __inline void Chip_TIMER_CaptureFallingEdgeDisable(LPC_TIMER_T *pTMR, int8_t capnum)
{
	pTMR->CCR = (pTMR->CCR & ((uint32_t) 0x0FFF)) & ~((1 << ((((capnum) * 3) + 1))));
}








 
static __inline void Chip_TIMER_CaptureEnableInt(LPC_TIMER_T *pTMR, int8_t capnum)
{
	pTMR->CCR = (pTMR->CCR & ((uint32_t) 0x0FFF)) | ((1 << ((((capnum) * 3) + 2))));
}






 
static __inline void Chip_TIMER_CaptureDisableInt(LPC_TIMER_T *pTMR, int8_t capnum)
{
	pTMR->CCR = (pTMR->CCR & ((uint32_t) 0x0FFF)) & ~((1 << ((((capnum) * 3) + 2))));
}



 
typedef enum IP_TIMER_PIN_MATCH_STATE {
	TIMER_EXTMATCH_DO_NOTHING = 0,	 
	TIMER_EXTMATCH_CLEAR      = 1,	 
	TIMER_EXTMATCH_SET        = 2,	 
	TIMER_EXTMATCH_TOGGLE     = 3		 
} TIMER_PIN_MATCH_STATE_T;












 
void Chip_TIMER_ExtMatchControlSet(LPC_TIMER_T *pTMR, int8_t initial_state,
								   TIMER_PIN_MATCH_STATE_T matchState, int8_t matchnum);



 
typedef enum IP_TIMER_CAP_SRC_STATE {
	TIMER_CAPSRC_RISING_PCLK  = 0,	 
	TIMER_CAPSRC_RISING_CAPN  = 1,	 
	TIMER_CAPSRC_FALLING_CAPN = 2,	 
	TIMER_CAPSRC_BOTH_CAPN    = 3		 
} TIMER_CAP_SRC_STATE_T;









 
static __inline void Chip_TIMER_TIMER_SetCountClockSrc(LPC_TIMER_T *pTMR,
													 TIMER_CAP_SRC_STATE_T capSrc,
													 int8_t capnum)
{
	pTMR->CTCR = (pTMR->CTCR & ~((uint32_t) 0x0F)) | ((uint32_t) capSrc | ((uint32_t) capnum) << 2);
}



 





#line 192 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\utick_5411x.h"





























 











 



 
typedef struct {
	volatile uint32_t CTRL;				 
	volatile uint32_t STATUS;			 
} LPC_UTICK_T;



 
 

 

 

 

 






 
static __inline void Chip_UTICK_Init(LPC_UTICK_T *pUTICK)
{
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_UTICK);
	Chip_SYSCON_PeriphReset(RESET_UTICK);
}





 
static __inline void Chip_UTICK_DeInit(LPC_UTICK_T *pUTICK)
{
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_UTICK);
}







 
static __inline void Chip_UTICK_SetTick(LPC_UTICK_T *pUTICK, uint32_t tick_value, _Bool repeat)
{
	if (repeat) {
		tick_value |= ((uint32_t) 1UL << 31);
	}

	pUTICK->CTRL = tick_value;
}









 
static __inline void Chip_UTICK_SetDelayMs(LPC_UTICK_T *pUTICK, uint32_t delayMs, _Bool repeat)
{
	uint32_t tick_value = (delayMs * Chip_Clock_GetWDTOSCRate()) / 1000;

	if (repeat) {
		tick_value |= ((uint32_t) 1UL << 31);
	}
	else {
		tick_value &= ~((uint32_t) 1UL << 31);
	}

	pUTICK->CTRL = tick_value;
}





 
static __inline uint32_t Chip_UTICK_GetTick(LPC_UTICK_T *pUTICK)
{
	return pUTICK->CTRL & ((uint32_t) 0x7FFFFFFF);
}





 
static __inline void Chip_UTICK_Halt(LPC_UTICK_T *pUTICK)
{
	pUTICK->CTRL = 0;
}





 
static __inline uint32_t Chip_UTICK_GetStatus(LPC_UTICK_T *pUTICK)
{
	return pUTICK->STATUS;
}





 
static __inline void Chip_UTICK_ClearInterrupt(LPC_UTICK_T *pUTICK)
{
	pUTICK->STATUS = ((uint32_t) 1 << 0);
}



 





#line 193 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\gpiogroup_5411x.h"





























 











 



 
typedef struct {					 
	volatile uint32_t  CTRL;			 
	volatile const  uint32_t  RESERVED0[7];
	volatile uint32_t  PORT_POL[8];		 
	volatile uint32_t  PORT_ENA[8];		 
	uint32_t       RESERVED1[4072];
} LPC_GPIOGROUPINT_T;



 








 
static __inline void Chip_GPIOGP_Init(LPC_GPIOGROUPINT_T *pGPIOGPINT)
{
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_GINT);
	Chip_SYSCON_PeriphReset(RESET_GINT);
}





 
static __inline void Chip_GPIOGP_DeInit(LPC_GPIOGROUPINT_T *pGPIOGPINT)
{
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_GINT);
}






 
static __inline void Chip_GPIOGP_ClearIntStatus(LPC_GPIOGROUPINT_T *pGPIOGPINT, uint8_t group)
{
	pGPIOGPINT[group].CTRL |= (1 << 0);
}






 
static __inline _Bool Chip_GPIOGP_GetIntStatus(LPC_GPIOGROUPINT_T *pGPIOGPINT, uint8_t group)
{
	return (_Bool) ((pGPIOGPINT[group].CTRL & (1 << 0)) != 0);
}






 
static __inline void Chip_GPIOGP_SelectOrMode(LPC_GPIOGROUPINT_T *pGPIOGPINT, uint8_t group)
{
	pGPIOGPINT[group].CTRL &= ~((1 << 1) | (1 << 0));
}






 
static __inline void Chip_GPIOGP_SelectAndMode(LPC_GPIOGROUPINT_T *pGPIOGPINT, uint8_t group)
{
	pGPIOGPINT[group].CTRL = (pGPIOGPINT[group].CTRL & ~(1 << 0)) | (1 << 1);
}






 
static __inline void Chip_GPIOGP_SelectEdgeMode(LPC_GPIOGROUPINT_T *pGPIOGPINT, uint8_t group)
{
	pGPIOGPINT[group].CTRL &= ~((1 << 2) | (1 << 0));
}






 
static __inline void Chip_GPIOGP_SelectLevelMode(LPC_GPIOGROUPINT_T *pGPIOGPINT, uint8_t group)
{
	pGPIOGPINT[group].CTRL = (pGPIOGPINT[group].CTRL & ~(1 << 0)) | (1 << 2);
}








 
static __inline void Chip_GPIOGP_SelectLowLevel(LPC_GPIOGROUPINT_T *pGPIOGPINT,
											  uint8_t group,
											  uint8_t port,
											  uint32_t pinMask)
{
	pGPIOGPINT[group].PORT_POL[port] &= ~pinMask;
}








 
static __inline void Chip_GPIOGP_SelectHighLevel(LPC_GPIOGROUPINT_T *pGPIOGPINT,
											   uint8_t group,
											   uint8_t port,
											   uint32_t pinMask)
{
	pGPIOGPINT[group].PORT_POL[port] |= pinMask;
}









 
static __inline void Chip_GPIOGP_DisableGroupPins(LPC_GPIOGROUPINT_T *pGPIOGPINT,
												uint8_t group,
												uint8_t port,
												uint32_t pinMask)
{
	pGPIOGPINT[group].PORT_ENA[port] &= ~pinMask;
}









 
static __inline void Chip_GPIOGP_EnableGroupPins(LPC_GPIOGROUPINT_T *pGPIOGPINT,
											   uint8_t group,
											   uint8_t port,
											   uint32_t pinMask)
{
	pGPIOGPINT[group].PORT_ENA[port] |= pinMask;
}



 





#line 194 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\mailbox_5411x.h"





























 











 

 
typedef enum {
	MAILBOX_CM0PLUS = 0,
	MAILBOX_CM4
} MBOX_IDX_T;


 
typedef struct {
	volatile    uint32_t        IRQ;		 
	volatile     uint32_t        IRQSET;		 
	volatile     uint32_t        IRQCLR;		 
	volatile const     uint32_t        RESERVED;
} LPC_MBOXIRQ_T;

 
typedef struct {						 
	LPC_MBOXIRQ_T           BOX[(MAILBOX_CM4 + 1)];	 
	LPC_MBOXIRQ_T           RESERVED1[15 - (MAILBOX_CM4 + 1)];
	volatile const     uint32_t        RESERVED2[2];
	volatile    uint32_t        MUTEX;		 
} LPC_MBOX_T;






 
static __inline void Chip_MBOX_Init(LPC_MBOX_T *pMBOX)
{
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_MAILBOX);
}





 
static __inline void Chip_MBOX_DeInit(LPC_MBOX_T *pMBOX)
{
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_MAILBOX);
}








 
static __inline void Chip_MBOX_SetValue(LPC_MBOX_T *pMBOX, uint32_t cpu_id, uint32_t mboxData)
{
	pMBOX->BOX[cpu_id].IRQ = mboxData;
}









 
static __inline void Chip_MBOX_SetValueBits(LPC_MBOX_T *pMBOX, uint32_t cpu_id, uint32_t mboxSetBits)
{
	pMBOX->BOX[cpu_id].IRQSET = mboxSetBits;
}









 
static __inline void Chip_MBOX_ClearValueBits(LPC_MBOX_T *pMBOX, uint32_t cpu_id, uint32_t mboxClrBits)
{
	pMBOX->BOX[cpu_id].IRQCLR = mboxClrBits;
}






 
static __inline uint32_t Chip_MBOX_GetValue(LPC_MBOX_T *pMBOX, uint32_t cpu_id)
{
	return pMBOX->BOX[cpu_id].IRQ;
}








 
static __inline uint32_t Chip_MBOX_GetMutex(LPC_MBOX_T *pMBOX)
{
	return pMBOX->MUTEX;
}






 
static __inline void Chip_MBOX_SetMutex(LPC_MBOX_T *pMBOX)
{
	pMBOX->MUTEX = 1;
}



 





#line 195 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\fpu_init.h"





























 









 




 
void fpuInit(void);



 

#line 196 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\power_lib_5411x.h"





























 

































































 


 
typedef enum {
	POWER_SLEEP = 0,
	POWER_DEEP_SLEEP,
	POWER_DEEP_POWER_DOWN
} POWER_MODE_T;





 

void Chip_POWER_SetFROHFRate(uint32_t freq);






 
uint32_t Chip_POWER_SetPLL(uint32_t multiply_by, uint32_t input_freq);







 
uint32_t Chip_POWER_SetVoltage(uint32_t desired_freq);






 
void Chip_POWER_SetLowPowerVoltage(uint32_t freq);










 
void Chip_POWER_EnterPowerMode(POWER_MODE_T mode, uint32_t peripheral_ctrl);

 











 
uint32_t Chip_POWER_GetROMVersion(void);



 





#line 197 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\flexcomm_5411x.h"





























 




#line 36 "..\\..\\..\\chip_5411x\\inc\\flexcomm_5411x.h"








 
typedef void LPC_FLEXCOMM_T;

 
typedef enum {
	FLEXCOMM_PERIPH_NONE,       
	FLEXCOMM_PERIPH_USART,      
	FLEXCOMM_PERIPH_SPI,        
	FLEXCOMM_PERIPH_I2C,        
	FLEXCOMM_PERIPH_I2S_TX,     
	FLEXCOMM_PERIPH_I2S_RX,     
} FLEXCOMM_PERIPH_T;

 






 









 
static __inline FLEXCOMM_PERIPH_T Chip_FLEXCOMM_GetFunc(LPC_FLEXCOMM_T *pFCOMM)
{
	return (FLEXCOMM_PERIPH_T)(((volatile uint32_t *) pFCOMM)[0xFF8 / 4] & 7);
}





 
static __inline int Chip_FLEXCOMM_IsLocked(LPC_FLEXCOMM_T *pFCOMM)
{
	return (((volatile uint32_t *) pFCOMM)[0xFF8 / 4] & (1 << 3)) != 0;
}






 
static __inline void Chip_FLEXCOMM_Lock(LPC_FLEXCOMM_T *pFCOMM)
{
	volatile uint32_t *psel = &((volatile uint32_t *)pFCOMM)[0xFF8 / 4];
	if (!(*psel & (1 << 3)))
		*psel = (*psel & 0xF) | (1 << 3);
}











 
int Chip_FLEXCOMM_SetPeriph(LPC_FLEXCOMM_T *pFCOMM, FLEXCOMM_PERIPH_T periph, int lock);





 
int Chip_FLEXCOMM_GetIndex(LPC_FLEXCOMM_T *pFCOMM);








 
int Chip_FLEXCOMM_Init(LPC_FLEXCOMM_T *pFCOMM, FLEXCOMM_PERIPH_T periph);





 
void Chip_FLEXCOMM_DeInit(LPC_FLEXCOMM_T *pFCOMM);

 

 





#line 198 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\usbd_5411x.h"





























 











 



 
typedef struct {				 
	volatile uint32_t DEVCMDSTAT;	 
	volatile uint32_t INFO;			 
	volatile uint32_t EPLISTSTART;	 
	volatile uint32_t DATABUFSTART;	 
	volatile uint32_t LPM;			 
	volatile uint32_t EPSKIP;		 
	volatile uint32_t EPINUSE;		 
	volatile uint32_t EPBUFCFG;		 
	volatile uint32_t INTSTAT;		 
	volatile uint32_t INTEN;		 
	volatile uint32_t INTSETSTAT;	 
	volatile const  uint32_t RESERVED0[2];
	volatile const  uint32_t EPTOGGLE;		 
} LPC_USB_T;




 





#line 199 "..\\..\\..\\chip_5411x\\inc\\chip.h"

#line 1 "..\\..\\..\\chip_5411x\\inc\\adc_5411x.h"





























 











 


 
typedef enum {
	ADC_SEQA_IDX = 0,
	ADC_SEQB_IDX
} ADC_SEQ_IDX_T;



 
typedef struct {								 
	volatile uint32_t CTRL;			
	volatile uint32_t INSEL;		
	union {
		volatile uint32_t SEQ_CTRL[2];	
		struct {
			volatile uint32_t SEQA_CTRL;
			volatile uint32_t SEQB_CTRL;
		};

	};

	union {
		volatile uint32_t SEQ_GDAT[2];	
		struct {
			volatile uint32_t SEQA_GDAT;
			volatile uint32_t SEQB_GDAT;
		};

	};

	volatile uint32_t RESERVED0[2];	
	volatile uint32_t DAT[12];		
	volatile uint32_t THR_LOW[2];	
	volatile uint32_t THR_HIGH[2];	
	volatile uint32_t CHAN_THRSEL;	
	volatile uint32_t INTEN;		
	volatile uint32_t FLAGS;		
	volatile uint32_t STARTUP;		
	volatile uint32_t CALIBR;		
} LPC_ADC_T;

 





 
 
#line 105 "..\\..\\..\\chip_5411x\\inc\\adc_5411x.h"



 
typedef enum _ADC_TSAMP_T {
	ADC_TSAMP_2CLK5 = 0,
	ADC_TSAMP_3CLK5,
	ADC_TSAMP_4CLK5,
	ADC_TSAMP_5CLK5,
	ADC_TSAMP_6CLK5,
	ADC_TSAMP_7CLK5,
	ADC_TSAMP_8CLK5,
	ADC_TSAMP_9CLK5,
} ADC_TSAMP_T;

 
#line 131 "..\\..\\..\\chip_5411x\\inc\\adc_5411x.h"

 
#line 143 "..\\..\\..\\chip_5411x\\inc\\adc_5411x.h"

 
#line 159 "..\\..\\..\\chip_5411x\\inc\\adc_5411x.h"

 



 


 
#line 177 "..\\..\\..\\chip_5411x\\inc\\adc_5411x.h"

 
#line 189 "..\\..\\..\\chip_5411x\\inc\\adc_5411x.h"

 



 











 
void Chip_ADC_Init(LPC_ADC_T *pADC, uint32_t flags);






 
void Chip_ADC_DeInit(LPC_ADC_T *pADC);













 
static __inline void Chip_ADC_SetDivider(LPC_ADC_T *pADC, uint8_t div)
{
	uint32_t temp;

	temp = pADC->CTRL & ~((0xFF << 0));
	pADC->CTRL = temp | (uint32_t) div;
}






 
void Chip_ADC_SetClockRate(LPC_ADC_T *pADC, uint32_t rate);









 
static __inline uint8_t Chip_ADC_GetDivider(LPC_ADC_T *pADC)
{
	return pADC->CTRL & (0xFF << 0);
}








 
uint32_t Chip_ADC_Calibration(LPC_ADC_T *pADC);





 
static __inline void Chip_ADC_SelectTempSensorInput(LPC_ADC_T *pADC)
{
	 
	pADC->INSEL = 0x03;
}










 
static __inline void Chip_ADC_SetSequencerBits(LPC_ADC_T *pADC, ADC_SEQ_IDX_T seqIndex, uint32_t bits)
{
	 
	pADC->SEQ_CTRL[seqIndex] = (pADC->SEQ_CTRL[seqIndex] & ~(0x3F << 20)) | bits;
}









 
static __inline void Chip_ADC_ClearSequencerBits(LPC_ADC_T *pADC, ADC_SEQ_IDX_T seqIndex, uint32_t bits)
{
	 
	pADC->SEQ_CTRL[seqIndex] = pADC->SEQ_CTRL[seqIndex] & ~((0x3F << 20) | bits);
}























 
static __inline void Chip_ADC_SetupSequencer(LPC_ADC_T *pADC, ADC_SEQ_IDX_T seqIndex, uint32_t options)
{
	pADC->SEQ_CTRL[seqIndex] = options;
}






 
static __inline uint32_t Chip_ADC_GetSequencerCtrl(LPC_ADC_T *pADC, ADC_SEQ_IDX_T seqIndex)
{
	return pADC->SEQ_CTRL[seqIndex];
}






 
static __inline void Chip_ADC_EnableSequencer(LPC_ADC_T *pADC, ADC_SEQ_IDX_T seqIndex)
{
	Chip_ADC_SetSequencerBits(pADC, seqIndex, (1UL << 31));
}






 
static __inline void Chip_ADC_DisableSequencer(LPC_ADC_T *pADC, ADC_SEQ_IDX_T seqIndex)
{
	Chip_ADC_ClearSequencerBits(pADC, seqIndex, (1UL << 31));
}









 
static __inline void Chip_ADC_StartSequencer(LPC_ADC_T *pADC, ADC_SEQ_IDX_T seqIndex)
{
	Chip_ADC_ClearSequencerBits(pADC, seqIndex, (1 << 27));
	Chip_ADC_SetSequencerBits(pADC, seqIndex, (1 << 26));
}










 
static __inline void Chip_ADC_StartBurstSequencer(LPC_ADC_T *pADC, ADC_SEQ_IDX_T seqIndex)
{
	 
	Chip_ADC_ClearSequencerBits(pADC, seqIndex, (1 << 26));
	Chip_ADC_SetSequencerBits(pADC, seqIndex, (1 << 27));
}






 
static __inline void Chip_ADC_StopBurstSequencer(LPC_ADC_T *pADC, ADC_SEQ_IDX_T seqIndex)
{
	Chip_ADC_ClearSequencerBits(pADC, seqIndex, (1 << 27));
}

 
typedef enum {
	ADC_DR_THCMPRANGE_INRANGE,
	ADC_DR_THCMPRANGE_RESERVED,
	ADC_DR_THCMPRANGE_BELOW,
	ADC_DR_THCMPRANGE_ABOVE
} ADC_DR_THCMPRANGE_T;

 
typedef enum {
	ADC_DR_THCMPCROSS_NOCROSS,
	ADC_DR_THCMPCROSS_RESERVED,
	ADC_DR_THCMPCROSS_DOWNWARD,
	ADC_DR_THCMPCROSS_UPWARD
} ADC_DR_THCMPCROSS_T;
















 
static __inline uint32_t Chip_ADC_GetGlobalDataReg(LPC_ADC_T *pADC, ADC_SEQ_IDX_T seqIndex)
{
	return pADC->SEQ_GDAT[seqIndex];
}
















 
static __inline uint32_t Chip_ADC_GetDataReg(LPC_ADC_T *pADC, uint8_t index)
{
	return pADC->DAT[index];
}







 
static __inline void Chip_ADC_SetThrLowValue(LPC_ADC_T *pADC, uint8_t thrnum, uint16_t value)
{
	pADC->THR_LOW[thrnum] = (((uint32_t) value) << (4));
}







 
static __inline void Chip_ADC_SetThrHighValue(LPC_ADC_T *pADC, uint8_t thrnum, uint16_t value)
{
	pADC->THR_HIGH[thrnum] = (((uint32_t) value) << (4));
}









 
static __inline void Chip_ADC_SelectTH0Channels(LPC_ADC_T *pADC, uint32_t channels)
{
	 
	pADC->CHAN_THRSEL = pADC->CHAN_THRSEL & (0x00000FFF & ~channels);
}









 
static __inline void Chip_ADC_SelectTH1Channels(LPC_ADC_T *pADC, uint32_t channels)
{
	 
	pADC->CHAN_THRSEL = (pADC->CHAN_THRSEL | channels) & 0x00000FFF;
}









 
static __inline void Chip_ADC_EnableInt(LPC_ADC_T *pADC, uint32_t intMask)
{
	 
	pADC->INTEN = (pADC->INTEN | intMask) & 0x07FFFFFF;
}









 
static __inline void Chip_ADC_DisableInt(LPC_ADC_T *pADC, uint32_t intMask)
{
	 
	pADC->INTEN = pADC->INTEN & (0x07FFFFFF & ~intMask);
}

 
typedef enum {
	ADC_INTEN_THCMP_DISABLE,
	ADC_INTEN_THCMP_OUTSIDE,
	ADC_INTEN_THCMP_CROSSING,
} ADC_INTEN_THCMP_T;







 
static __inline void Chip_ADC_SetThresholdInt(LPC_ADC_T *pADC, uint8_t ch, ADC_INTEN_THCMP_T thInt)
{
	int shiftIndex = 3 + (ch * 2);

	 
	Chip_ADC_DisableInt(pADC, ((3) << shiftIndex));

	 
	Chip_ADC_EnableInt(pADC, ((uint32_t) thInt << shiftIndex));
}









 
static __inline uint32_t Chip_ADC_GetFlags(LPC_ADC_T *pADC)
{
	return pADC->FLAGS;
}






 
static __inline void Chip_ADC_ClearFlags(LPC_ADC_T *pADC, uint32_t flags)
{
	pADC->FLAGS = flags;
}






 
static __inline void Chip_ADC_SetTHRSELBits(LPC_ADC_T *pADC, uint32_t mask)
{
}






 
static __inline void Chip_ADC_ClearTHRSELBits(LPC_ADC_T *pADC, uint32_t mask)
{
}



 





#line 201 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\dma_5411x.h"





























 











 


 
typedef struct {					 
	volatile uint32_t  ENABLESET;		 
	volatile const  uint32_t  RESERVED0;
	volatile  uint32_t  ENABLECLR;		 
	volatile const  uint32_t  RESERVED1;
	volatile const  uint32_t  ACTIVE;			 
	volatile const  uint32_t  RESERVED2;
	volatile const  uint32_t  BUSY;			 
	volatile const  uint32_t  RESERVED3;
	volatile uint32_t  ERRINT;			 
	volatile const  uint32_t  RESERVED4;
	volatile uint32_t  INTENSET;		 
	volatile const  uint32_t  RESERVED5;
	volatile  uint32_t  INTENCLR;		 
	volatile const  uint32_t  RESERVED6;
	volatile uint32_t  INTA;			 
	volatile const  uint32_t  RESERVED7;
	volatile uint32_t  INTB;			 
	volatile const  uint32_t  RESERVED8;
	volatile  uint32_t  SETVALID;		 
	volatile const  uint32_t  RESERVED9;
	volatile  uint32_t  SETTRIG;			 
	volatile const  uint32_t  RESERVED10;
	volatile  uint32_t  ABORT;			 
} LPC_DMA_COMMON_T;



 
typedef struct {					 
	volatile uint32_t  CFG;				 
	volatile uint32_t  CTLSTAT;			 
	volatile uint32_t  XFERCFG;			 
	volatile const  uint32_t  RESERVED;
} LPC_DMA_CHANNEL_T;

 




 
typedef struct {					 
	volatile  uint32_t  CTRL;			 
	volatile  uint32_t  INTSTAT;			 
	volatile  uint32_t  SRAMBASE;		 
	volatile  uint32_t  RESERVED2[5];
	LPC_DMA_COMMON_T DMACOMMON[1];	 
	volatile  uint32_t  RESERVED0[225];
	LPC_DMA_CHANNEL_T DMACH[(20)];	 
} LPC_DMA_T;


 
typedef enum {
	DMA_CH0,                              
	DMA_CH1,                              
	DMA_CH2,                              
	DMA_CH3,                              
	DMA_CH4,                              
	DMA_CH5,                              
	DMA_CH6,                              
	DMA_CH7,                              
	DMA_CH8,                              
	DMA_CH9,                              
	DMA_CH10,                             
	DMA_CH11,                             
	DMA_CH12,                             
	DMA_CH13,                             
	DMA_CH14,                             
	DMA_CH15,                             
	DMA_CH16,                             
	DMA_CH17,                             
	DMA_CH18,                             
	DMA_CH19,                             

	 
	DMAREQ_FLEXCOMM0_RX = DMA_CH0,        
	DMAREQ_FLEXCOMM0_TX,                  
	DMAREQ_FLEXCOMM1_RX,                  
	DMAREQ_FLEXCOMM1_TX,                  
	DMAREQ_FLEXCOMM2_RX,                  
	DMAREQ_FLEXCOMM2_TX,                  
	DMAREQ_FLEXCOMM3_RX,                  
	DMAREQ_FLEXCOMM3_TX,                  
	DMAREQ_FLEXCOMM4_RX,                  
	DMAREQ_FLEXCOMM4_TX,                  
	DMAREQ_FLEXCOMM5_RX,                  
	DMAREQ_FLEXCOMM5_TX,                  
	DMAREQ_FLEXCOMM6_RX,                  
	DMAREQ_FLEXCOMM6_TX,                  
	DMAREQ_FLEXCOMM7_RX,                  
	DMAREQ_FLEXCOMM7_TX,                  
	DMAREQ_DMIC0,                         
	DMAREQ_DMIC1,                         
	DMAREQ_SPIFI,                         
} DMA_CHID_T;

 



 



 
#line 176 "..\\..\\..\\chip_5411x\\inc\\dma_5411x.h"

 



 
#line 200 "..\\..\\..\\chip_5411x\\inc\\dma_5411x.h"



 





 
static __inline void Chip_DMA_Init(LPC_DMA_T *pDMA)
{
	(void) pDMA;
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_DMA);
}





 
static __inline void Chip_DMA_DeInit(LPC_DMA_T *pDMA)
{
	(void) pDMA;
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_DMA);
}





 
static __inline void Chip_DMA_Enable(LPC_DMA_T *pDMA)
{
	pDMA->CTRL = 1;
}





 
static __inline void Chip_DMA_Disable(LPC_DMA_T *pDMA)
{
	pDMA->CTRL = 0;
}








 
static __inline uint32_t Chip_DMA_GetIntStatus(LPC_DMA_T *pDMA)
{
	return pDMA->INTSTAT;
}












 
static __inline void Chip_DMA_SetSRAMBase(LPC_DMA_T *pDMA, uint32_t base)
{
	pDMA->SRAMBASE = base;
}





 
static __inline uint32_t Chip_DMA_GetSRAMBase(LPC_DMA_T *pDMA)
{
	return pDMA->SRAMBASE;
}



 



 






 
static __inline void Chip_DMA_EnableChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	pDMA->DMACOMMON[0].ENABLESET = (1 << ch);
}






 
static __inline void Chip_DMA_DisableChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	pDMA->DMACOMMON[0].ENABLECLR = (1 << ch);
}








 
static __inline uint32_t Chip_DMA_GetEnabledChannels(LPC_DMA_T *pDMA)
{
	return pDMA->DMACOMMON[0].ENABLESET;
}










 
static __inline uint32_t Chip_DMA_GetActiveChannels(LPC_DMA_T *pDMA)
{
	return pDMA->DMACOMMON[0].ACTIVE;
}











 
static __inline uint32_t Chip_DMA_GetBusyChannels(LPC_DMA_T *pDMA)
{
	return pDMA->DMACOMMON[0].BUSY;
}









 
static __inline uint32_t Chip_DMA_GetErrorIntChannels(LPC_DMA_T *pDMA)
{
	return pDMA->DMACOMMON[0].ERRINT;
}






 
static __inline void Chip_DMA_ClearErrorIntChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	pDMA->DMACOMMON[0].ERRINT = (1 << ch);
}






 
static __inline void Chip_DMA_EnableIntChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	pDMA->DMACOMMON[0].INTENSET = (1 << ch);
}






 
static __inline void Chip_DMA_DisableIntChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	pDMA->DMACOMMON[0].INTENCLR = (1 << ch);
}










 
static __inline uint32_t Chip_DMA_GetEnableIntChannels(LPC_DMA_T *pDMA)
{
	return pDMA->DMACOMMON[0].INTENSET;
}









 
static __inline uint32_t Chip_DMA_GetActiveIntAChannels(LPC_DMA_T *pDMA)
{
	return pDMA->DMACOMMON[0].INTA;
}






 
static __inline void Chip_DMA_ClearActiveIntAChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	pDMA->DMACOMMON[0].INTA = (1 << ch);
}









 
static __inline uint32_t Chip_DMA_GetActiveIntBChannels(LPC_DMA_T *pDMA)
{
	return pDMA->DMACOMMON[0].INTB;
}






 
static __inline void Chip_DMA_ClearActiveIntBChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	pDMA->DMACOMMON[0].INTB = (1 << ch);
}








 
static __inline void Chip_DMA_SetValidChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	pDMA->DMACOMMON[0].SETVALID = (1 << ch);
}







 
static __inline void Chip_DMA_SetTrigChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	pDMA->DMACOMMON[0].SETTRIG = (1 << ch);
}











 
static __inline void Chip_DMA_AbortChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	pDMA->DMACOMMON[0].ABORT = (1 << ch);
}



 



 

 
typedef struct {
	uint32_t  xfercfg;	 
	uint32_t  source;		 
	uint32_t  dest;			 
	uint32_t  next;			 
} DMA_CHDESC_T;


 
extern DMA_CHDESC_T Chip_DMA_Table[(20)];





























 
static __inline void Chip_DMA_SetupChannelConfig(LPC_DMA_T *pDMA, DMA_CHID_T ch, uint32_t cfg)
{
	pDMA->DMACH[ch].CFG = cfg;
}






 
static __inline uint32_t Chip_DMA_GetChannelStatus(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	return pDMA->DMACH[ch].XFERCFG;
}

















 
static __inline void Chip_DMA_SetupChannelTransfer(LPC_DMA_T *pDMA, DMA_CHID_T ch, uint32_t cfg)
{
	pDMA->DMACH[ch].XFERCFG = cfg;
}









 
static __inline void Chip_DMA_SetTranBits(LPC_DMA_T *pDMA, DMA_CHID_T ch, uint32_t mask)
{
	pDMA->DMACH[ch].XFERCFG = (pDMA->DMACH[ch].XFERCFG | mask) & ~0xFC000CC0;
}









 
static __inline void Chip_DMA_ClearTranBits(LPC_DMA_T *pDMA, DMA_CHID_T ch, uint32_t mask)
{
	pDMA->DMACH[ch].XFERCFG = pDMA->DMACH[ch].XFERCFG & ~(0xFC000CC0 | mask);
}







 
static __inline void Chip_DMA_SetupChannelTransferSize(LPC_DMA_T *pDMA, DMA_CHID_T ch, uint32_t trans)
{
	Chip_DMA_ClearTranBits(pDMA, ch, (0x3FF << 16));
	Chip_DMA_SetTranBits(pDMA, ch, ((trans - 1) << 16));
}






 
static __inline void Chip_DMA_SetChannelValid(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	Chip_DMA_SetTranBits(pDMA, ch, (1 << 0));
}






 
static __inline void Chip_DMA_SetChannelInValid(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	Chip_DMA_ClearTranBits(pDMA, ch, (1 << 0));
}






 
static __inline void Chip_DMA_SWTriggerChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch)
{
	Chip_DMA_SetTranBits(pDMA, ch, (1 << 2));
}
















 
static __inline _Bool Chip_DMA_SetupTranChannel(LPC_DMA_T *pDMA, DMA_CHID_T ch, DMA_CHDESC_T *desc)
{
	DMA_CHDESC_T *pDesc = (DMA_CHDESC_T *) pDMA->SRAMBASE;

	if ((Chip_DMA_GetActiveChannels(pDMA) & (1 << ch)) == 0) {
		 
		pDesc[ch] = *desc;

		return 1;
	}

	return 0;
}



 



 





#line 202 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\dma_service_5411x.h"





























 











 

typedef void (* DMA_CALLBACK_T)(int32_t);

typedef struct {
	uint32_t			channel;
	volatile uint32_t*	register_location;
	uint32_t			width;
	uint32_t			src_increment;
	uint32_t			dst_increment;
	_Bool				write;
} DMA_PERIPHERAL_CONTEXT_T;

typedef struct {
	DMA_CHDESC_T  descr[2];
} DMA_DUAL_DESCRIPTOR_T;														





 
void Chip_DMASERVICE_Init(DMA_CHDESC_T * base);






 
void Chip_DMASERVICE_Isr(void);






 
void Chip_DMASERVICE_RegisterCb(const DMA_PERIPHERAL_CONTEXT_T * pContext, DMA_CALLBACK_T pCallback);







 
void Chip_DMASERVICE_SingleBuffer(const DMA_PERIPHERAL_CONTEXT_T * pContext, uint32_t  pMem, uint32_t length);








 
void Chip_DMASERVICE_DoubleBuffer(const DMA_PERIPHERAL_CONTEXT_T * pContext, uint32_t  pMem, uint32_t length, DMA_DUAL_DESCRIPTOR_T * pD);





#line 203 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\dmic_5411x.h"





























 











 

typedef struct {
	volatile uint32_t OSR;						
	volatile uint32_t DIVHFCLK;					
	volatile uint32_t PREAC2FSCOEF;				
	volatile uint32_t PREAC4FSCOEF;				
	volatile uint32_t GAINSHFT;					
	volatile uint32_t TDM96EN;					
	volatile uint32_t TDM19EN;					
	volatile uint32_t reserved[25];
	volatile uint32_t FIFO_CTRL;				
	volatile uint32_t FIFO_STATUS;				
	volatile uint32_t FIFO_DATA;				
	volatile uint32_t PHY_CTRL;					
	volatile uint32_t DC_CTRL;					
	volatile uint32_t reserved1[27];
} LPC_DMIC_Channel_Type;


typedef struct {
	volatile LPC_DMIC_Channel_Type CHANNEL[15];	
	
	volatile uint32_t CHANEN;						
	volatile uint32_t reserved0[2];					
	volatile uint32_t IOCFG;						
	volatile uint32_t USE2FS;						
	volatile uint32_t reserved[27];					
	
	volatile uint32_t HWVADGAIN;					
	volatile uint32_t HWVADHPFS;					
	volatile uint32_t HWVADST10;					
	volatile uint32_t HWVADRSTT;					
	volatile uint32_t HWVADTHGN;					
	volatile uint32_t HWVADTHGS;					
	volatile uint32_t HWVADLOWZ;					
	volatile uint32_t reserved1[24];				
	volatile uint32_t ID;							
} LPC_DMIC_T;





 
typedef struct {
	uint32_t		fifo_ints;				 
	uint32_t		fifo_overrun;			 
	uint32_t		fifo_underrun;			 
} DMIC_STATISTICS_T;

















































 
typedef enum {
	DMIC_OP_POLL,
	DMIC_OP_INTR,
	DMIC_OP_DMA,
} OP_MODE_T;

typedef enum {
	DMIC_LEFT			= 0,
	DMIC_RIGHT			= 1,
} STEREO_SIDE_T;

typedef enum {
	DMIC_PDM_DIV1		= 0,
	DMIC_PDM_DIV2		= 1,
	DMIC_PDM_DIV3		= 2,
	DMIC_PDM_DIV4		= 3,
	DMIC_PDM_DIV6		= 4,
	DMIC_PDM_DIV8		= 5,
	DMIC_PDM_DIV12		= 6,
	DMIC_PDM_DIV16		= 7,
	DMIC_PDM_DIV24		= 8,
	DMIC_PDM_DIV32		= 9,
	DMIC_PDM_DIV48		= 10,
	DMIC_PDM_DIV64		= 11,
	DMIC_PDM_DIV96		= 12,
	DMIC_PDM_DIV128		= 13,
} PDM_DIV_T;

typedef enum {
	DMIC_COMP0_0		= 0,
	DMIC_COMP0_16		= 1,
	DMIC_COMP0_15		= 2,
	DMIC_COMP0_13		= 3,
} COMPENSATION_T;

typedef enum {
	DMIC_DC_NOREMOVE	= 0,
	DMIC_DC_CUT155		= 1,
	DMIC_DC_CUT78		= 2,
	DMIC_DC_CUT39		= 3,
} DC_REMOVAL_T;

typedef enum {
	pdm_dual			= 0,		 
	pdm_stereo			= 4,		 
	pdm_bypass			= 3,		 
	pdm_bypass_clk0		= 1,		 
	pdm_bypass_clk1		= 2,		 
} DMIC_IO_T;

typedef struct {
	STEREO_SIDE_T		side;
	PDM_DIV_T			divhfclk;
	uint32_t			osr;
	int32_t				gainshft;
	COMPENSATION_T		preac2coef;
	COMPENSATION_T		preac4coef;
} DMIC_CHANNEL_CONFIG_T;






 
void Chip_DMIC_Init(const CHIP_SYSCON_CLOCK_T clock, const CHIP_SYSCON_PERIPH_RESET_T reset);






 
void Chip_DMIC_CfgIO(LPC_DMIC_T * pDMIC, DMIC_IO_T cfg);






 
void Chip_DMIC_SetOpMode(LPC_DMIC_T * pDMIC, OP_MODE_T mode);







 
void Chip_DMIC_CfgChannel(LPC_DMIC_T * pDMIC, uint32_t channel, DMIC_CHANNEL_CONFIG_T * channel_cfg);









 
void Chip_DMIC_CfgChannelDc(LPC_DMIC_T * pDMIC, uint32_t channel, DC_REMOVAL_T dc_cut_level, uint32_t post_dc_gain_reduce, _Bool saturate16bit);






 
void Chip_DMIC_Use2fs(LPC_DMIC_T * pDMIC, _Bool use2fs);






 
void Chip_DMIC_EnableChannnel(LPC_DMIC_T * pDMIC, uint32_t channelmask);









 
void Chip_DMIC_FifoChannel(LPC_DMIC_T * pDMIC, uint32_t channel, uint32_t trig_level, uint32_t enable, uint32_t resetn);






 
static __inline uint32_t Chip_DMIC_FifoGetStatus(LPC_DMIC_T * pDMIC, uint32_t channel)
{
	return pDMIC->CHANNEL[channel].FIFO_STATUS;
}







 
static __inline void Chip_DMIC_FifoClearStatus(LPC_DMIC_T * pDMIC, uint32_t channel, uint32_t mask)
{
	pDMIC->CHANNEL[channel].FIFO_STATUS = mask;
}






 
static __inline uint32_t Chip_DMIC_FifoGetData(LPC_DMIC_T * pDMIC, uint32_t channel)
{
	return pDMIC->CHANNEL[channel].FIFO_DATA;
}

extern DMA_PERIPHERAL_CONTEXT_T dmic_ch0_dma_context;
extern DMA_PERIPHERAL_CONTEXT_T dmic_ch1_dma_context;
extern DMA_PERIPHERAL_CONTEXT_T dmic_ch0_dma_interleaved_context;
extern DMA_PERIPHERAL_CONTEXT_T dmic_ch1_dma_interleaved_context;





#line 204 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"





























 








#line 1 "..\\..\\..\\chip_5411x\\inc\\ring_buffer.h"





























 




#line 36 "..\\..\\..\\chip_5411x\\inc\\ring_buffer.h"
#line 37 "..\\..\\..\\chip_5411x\\inc\\ring_buffer.h"




 



 
typedef struct {
	void *data;
	int count;
	int itemSz;
	uint32_t head;
	uint32_t tail;
	void *(*copy)(void *dst, const void *src, uint32_t len);
} RINGBUFF_T;




 





 













 
int RingBuffer_Init(RINGBUFF_T *RingBuff,
					void *buffer,
					int itemSize,
					int count,
					void *(*cpyFunc)(void *dst, const void *src, uint32_t len));





 
static __inline void RingBuffer_Flush(RINGBUFF_T *RingBuff)
{
	RingBuff->head = RingBuff->tail = 0;
}





 
static __inline int RingBuffer_GetSize(RINGBUFF_T *RingBuff)
{
	return RingBuff->count;
}





 
static __inline int RingBuffer_GetCount(RINGBUFF_T *RingBuff)
{
	return (*(volatile uint32_t *) &(RingBuff)->head) - (*(volatile uint32_t *) &(RingBuff)->tail);
}





 
static __inline int RingBuffer_GetFree(RINGBUFF_T *RingBuff)
{
	return RingBuff->count - RingBuffer_GetCount(RingBuff);
}





 
static __inline int RingBuffer_IsFull(RINGBUFF_T *RingBuff)
{
	return RingBuffer_GetCount(RingBuff) >= RingBuff->count;
}





 
static __inline int RingBuffer_IsEmpty(RINGBUFF_T *RingBuff)
{
	return (*(volatile uint32_t *) &(RingBuff)->head) == (*(volatile uint32_t *) &(RingBuff)->tail);
}









 
int RingBuffer_Insert(RINGBUFF_T *RingBuff, const void *data);










 
int RingBuffer_InsertMult(RINGBUFF_T *RingBuff, const void *data, int num);









 
int RingBuffer_Pop(RINGBUFF_T *RingBuff, void *data);









 
int RingBuffer_PopMult(RINGBUFF_T *RingBuff, void *data, int num);



 

#line 40 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"




 



 



 
typedef struct {                    
	volatile uint32_t CFG;              
	volatile uint32_t CTL;              
	volatile uint32_t STAT;             
	volatile uint32_t INTENSET;         
	volatile  uint32_t INTENCLR;         
	volatile const  uint32_t RESERVED0A[3];    
	volatile uint32_t BRG;              
	volatile const  uint32_t INTSTAT;          
	volatile uint32_t OSR;              
	volatile uint32_t ADDR;             
	volatile const  uint32_t RESERVED0[884];   

	 
	volatile uint32_t FIFOCFG;          
	volatile uint32_t FIFOSTAT;         
	volatile uint32_t FIFOTRIG;         
	volatile const  uint32_t RESERVED1;        
	volatile uint32_t FIFOINTENSET;     
	volatile uint32_t FIFOINTENCLR;     
	volatile uint32_t FIFOINTSTAT;      
	volatile const  uint32_t RESERVED2;        
	volatile  uint32_t FIFOWR;           
	volatile const  uint32_t RESERVED3[3];     
	volatile const  uint32_t FIFORD;           
	volatile const  uint32_t RESERVED4[3];     
	volatile const  uint32_t FIFORDNOPOP;      
	volatile const  uint32_t RESERVED5[109];   

	 
	volatile uint32_t PSELID;           
	volatile const  uint32_t PID;              
} LPC_USART_T;



 
#line 114 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"




 
#line 125 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"



 
#line 141 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"



 
#line 154 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"



 
#line 167 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"



 
#line 182 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"



 








 
#line 201 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"









 
typedef struct {
	uint32_t		clk;					 
	uint32_t		baud;					 
	uint8_t			ovr;					 
	uint8_t			mul;					 
	uint16_t		div;					 
} UART_BAUD_T;





 
typedef struct {
	uint32_t		interrupts;				 
	uint32_t		lvl_tx;					 
	uint32_t		lvl_rx;					 
	uint32_t		fifo_err_tx;			 
	uint32_t		fifo_err_rx;			 
	uint32_t		uart_cts;				 
	uint32_t		uart_break;				 
	uint32_t		uart_start;				 
	uint32_t		uart_err_frame;			 
	uint32_t		uart_err_parity;		 
	uint32_t		uart_err_rx_noise;		 
	uint32_t		uart_err_auto_baud;		 
} UART_STATISTICS_T;





 
static __inline void Chip_UART_Enable(LPC_USART_T *pUART)
{
	pUART->CFG |= (0x01 << 0);
}





 
static __inline void Chip_UART_Disable(LPC_USART_T *pUART)
{
	pUART->CFG &= ~(0x01 << 0);
}





 
static __inline void Chip_UART_TXEnable(LPC_USART_T *pUART)
{
	pUART->CTL &= ~(0x01 << 6);
}





 
static __inline void Chip_UART_TXDisable(LPC_USART_T *pUART)
{
	pUART->CTL |= (0x01 << 6);
}





 
static __inline uint32_t Chip_UART_AutoBaud(LPC_USART_T *pUART)
{
	while ( (pUART->STAT & (0x01 << 1)) != (0x01 << 1) ) {}
	pUART->CTL |= (0x01 << 16);
	while ( pUART->CTL & (0x01 << 16) ) {
		if ( pUART->STAT & (0x01 << 16) ) {
			pUART->STAT = (0x01 << 16);
			return 0;
		}
	}
	return 1;
}








 
static __inline void Chip_UART_SendByte(LPC_USART_T *pUART, uint8_t data)
{
	pUART->FIFOWR = (uint32_t)data;
}







 
static __inline uint32_t Chip_UART_ReadByte(LPC_USART_T *pUART)
{
	 
	return (uint32_t) (pUART->FIFORD & 0x000001FF);
}








 
static __inline void Chip_UART_IntEnable(LPC_USART_T *pUART, uint32_t intMask)
{
	pUART->INTENSET = intMask;
}








 
static __inline void Chip_UART_IntDisable(LPC_USART_T *pUART, uint32_t intMask)
{
	pUART->INTENCLR = intMask;
}








 
static __inline uint32_t Chip_UART_GetIntsEnabled(LPC_USART_T *pUART)
{
	return pUART->INTENSET;
}








 
static __inline uint32_t Chip_UART_GetIntStatus(LPC_USART_T *pUART)
{
	return pUART->INTSTAT;
}











 
static __inline void Chip_UART_ConfigData(LPC_USART_T *pUART, uint32_t config)
{
	pUART->CFG = (pUART->CFG & (0x00fddbfd)) | config;
}








 
static __inline uint32_t Chip_UART_GetStatus(LPC_USART_T *pUART)
{
	return pUART->STAT;
}









 
static __inline void Chip_UART_ClearStatus(LPC_USART_T *pUART, uint32_t stsMask)
{
	pUART->STAT = stsMask;
}







 
static __inline uint32_t Chip_UART_GetFIFOStatus(LPC_USART_T *pUART)
{
	return pUART->FIFOSTAT;
}






 
static __inline void Chip_UART_ClearFIFOStatus(LPC_USART_T *pUART, uint32_t mask)
{
	pUART->FIFOSTAT = mask;
}











 
static __inline void Chip_UART_SetFIFOTrigLevel(LPC_USART_T *pUART, uint8_t tx_lvl, uint8_t rx_lvl)
{
	pUART->FIFOTRIG = ((1 << 0)|(1 << 1)) | ((tx_lvl & 0x0f) << 8) | ((rx_lvl & 0x0f) << 16);
}






 
static __inline void Chip_UART_EnableFIFOInts(LPC_USART_T *pUART, uint32_t intMask)
{
	pUART->FIFOINTENSET = intMask & (0x001F);
}






 
static __inline void Chip_UART_DisableFIFOInts(LPC_USART_T *pUART, uint32_t intMask)
{
	pUART->FIFOINTENCLR = intMask & (0x001F);
}





 
static __inline uint32_t Chip_UART_GetFIFOEnabledInts(LPC_USART_T *pUART)
{
	return pUART->FIFOINTENSET & (0x001F);
}





 
static __inline uint32_t Chip_UART_GetFIFOPendingInts(LPC_USART_T *pUART)
{
	return pUART->FIFOINTSTAT & (0x001F);
}






 
static __inline void Chip_UART_SetFIFOCfg(LPC_USART_T *pUART, uint32_t cfg)
{
	pUART->FIFOCFG = (pUART->FIFOCFG & (0x7F033)) | cfg;
}






 
static __inline void Chip_UART_ClearFIFOCfg(LPC_USART_T *pUART, uint32_t cfg)
{
	pUART->FIFOCFG = pUART->FIFOCFG & ((0x7F033) & ~cfg);
}





 
static __inline void Chip_UART_FlushFIFOs(LPC_USART_T *pUART)
{
	Chip_UART_SetFIFOCfg(pUART, (1 << 16) | (1 << 17));
}





 
int Chip_UART_Init(LPC_USART_T *pUART);





 
void Chip_UART_DeInit(LPC_USART_T *pUART);





 
void Chip_UART_ConfigDMA(LPC_USART_T *pUART);











 
int Chip_UART_Send(LPC_USART_T *pUART, const void *data, int numBytes);










 
int Chip_UART_Read(LPC_USART_T *pUART, void *data, int numBytes);









 
uint32_t Chip_UART_SetBaud(LPC_USART_T *pUART, uint32_t baudrate);









 
int Chip_UART_SendBlocking(LPC_USART_T *pUART, const void *data, int numBytes);










 
int Chip_UART_ReadBlocking(LPC_USART_T *pUART, void *data, int numBytes);









 
void Chip_UART_RXIntHandlerRB(LPC_USART_T *pUART, RINGBUFF_T *pRB);









 
void Chip_UART_TXIntHandlerRB(LPC_USART_T *pUART, RINGBUFF_T *pRB);











 
uint32_t Chip_UART_SendRB(LPC_USART_T *pUART, RINGBUFF_T *pRB, const void *data, int count);











 
int Chip_UART_ReadRB(LPC_USART_T *pUART, RINGBUFF_T *pRB, void *data, int bytes);











 
void Chip_UART_IRQHandlerRB(LPC_USART_T *pUART, UART_STATISTICS_T* statistics, RINGBUFF_T *pRXRB, RINGBUFF_T *pTXRB);







 
void Chip_UART_IRQHandlerDMA(LPC_USART_T *pUART, UART_STATISTICS_T* statistics);



 
#line 690 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"

 
#line 698 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"

 
#line 706 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"

 
#line 714 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"

 
#line 722 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"

 
#line 730 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"

 
#line 738 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"

 
#line 746 "..\\..\\..\\chip_5411x\\inc\\uart_5411x.h"





 





#line 205 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"





























 



















 



 
typedef struct {																 
	 
	volatile const	 uint32_t RESERVED0[256];
	volatile uint32_t CFG;															 
	volatile uint32_t DLY;															 
	volatile uint32_t STAT;															 
	volatile uint32_t INTENSET;														 
	volatile uint32_t INTENCLR;														 
	volatile const	 uint32_t RESERVED1[4];
	volatile uint32_t DIV;															 
	volatile uint32_t INTSTAT;														 
	volatile const	 uint32_t RESERVED2[629];

	 
	volatile uint32_t FIFOCFG;														 
	volatile uint32_t FIFOSTAT;														 
	volatile uint32_t FIFOTRIG;														 
	volatile const	 uint32_t RESERVED3;													 
	volatile uint32_t FIFOINTENSET;													 
	volatile uint32_t FIFOINTENCLR;													 
	volatile uint32_t FIFOINTSTAT;													 
	volatile const	 uint32_t RESERVED4;													 
	volatile	 uint32_t FIFOWR;														 
	volatile const	 uint32_t RESERVED5[3];													 
	volatile const	 uint32_t FIFORD;														 
	volatile const	 uint32_t RESERVED6[3];													 
	volatile const	 uint32_t FIFORDNOPOP;													 
	volatile const	 uint32_t RESERVED7[109];												 

	 
	volatile uint32_t PSELID;														 
	volatile const	 uint32_t PID;															 
} LPC_SPI_T;



 
#line 106 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"



 








 
#line 125 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"



 








 
#line 147 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"



 
#line 162 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"



 











 
#line 184 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"



 








 
#line 210 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"



 




 


 
typedef enum {
	ROM_SPI_CLOCK_CPHA0_CPOL0 = 0,												 
	ROM_SPI_CLOCK_MODE0 = ROM_SPI_CLOCK_CPHA0_CPOL0,							 
	ROM_SPI_CLOCK_CPHA1_CPOL0 = 1,												 
	ROM_SPI_CLOCK_MODE1 = ROM_SPI_CLOCK_CPHA1_CPOL0,							 
	ROM_SPI_CLOCK_CPHA0_CPOL1 = 2,												 
	ROM_SPI_CLOCK_MODE2 = ROM_SPI_CLOCK_CPHA0_CPOL1,							 
	ROM_SPI_CLOCK_CPHA1_CPOL1 = 3,												 
	ROM_SPI_CLOCK_MODE3 = ROM_SPI_CLOCK_CPHA1_CPOL1,							 
} ROM_SPI_CLOCK_MODE_T;





 
int Chip_SPI_Init(LPC_SPI_T *pSPI);






 
static __inline void Chip_SPI_DeInit(LPC_SPI_T *pSPI)
{
	Chip_FLEXCOMM_DeInit(pSPI);
}








 
static __inline void Chip_SPI_SetCFGRegBits(LPC_SPI_T *pSPI, uint32_t bits)
{
	pSPI->CFG = (pSPI->CFG & (0x0FBD)) | bits;
}








 
static __inline void Chip_SPI_ClearCFGRegBits(LPC_SPI_T *pSPI, uint32_t bits)
{
	pSPI->CFG = pSPI->CFG & (~bits & (0x0FBD));
}





 
static __inline void Chip_SPI_Enable(LPC_SPI_T *pSPI)
{
	Chip_SPI_SetCFGRegBits(pSPI, (1 << 0));
}





 
static __inline void Chip_SPI_Disable(LPC_SPI_T *pSPI)
{
	Chip_SPI_ClearCFGRegBits(pSPI, (1 << 0));
}






 
static __inline void Chip_SPI_EnableSlaveMode(LPC_SPI_T *pSPI)
{
	Chip_SPI_ClearCFGRegBits(pSPI, (1 << 2));
}





 
static __inline void Chip_SPI_EnableLSBFirst(LPC_SPI_T *pSPI)
{
	Chip_SPI_SetCFGRegBits(pSPI, (1 << 3));
}





 
static __inline void Chip_SPI_EnableMSBFirst(LPC_SPI_T *pSPI)
{
	Chip_SPI_ClearCFGRegBits(pSPI, (1 << 3));
}

 
typedef enum IP_SPI_CLOCK_MODE {
	SPI_CLOCK_CPHA0_CPOL0 = (0 << 5) | (0 << 4),				 
	SPI_CLOCK_MODE0 = SPI_CLOCK_CPHA0_CPOL0,									 
	SPI_CLOCK_CPHA1_CPOL0 = (0 << 5) | (1 << 4),				 
	SPI_CLOCK_MODE1 = SPI_CLOCK_CPHA1_CPOL0,									 
	SPI_CLOCK_CPHA0_CPOL1 = (1 << 5) | (0 << 4),				 
	SPI_CLOCK_MODE2 = SPI_CLOCK_CPHA0_CPOL1,									 
	SPI_CLOCK_CPHA1_CPOL1 = (1 << 5) | (1 << 4),				 
	SPI_CLOCK_MODE3 = SPI_CLOCK_CPHA1_CPOL1,									 
} SPI_CLOCK_MODE_T;






 
static __inline void Chip_SPI_SetSPIMode(LPC_SPI_T *pSPI, SPI_CLOCK_MODE_T mode)
{
	Chip_SPI_ClearCFGRegBits(pSPI, ((1 << 5) | (1 << 4)));
	Chip_SPI_SetCFGRegBits(pSPI, (uint32_t) mode);
}







 
static __inline void Chip_SPI_SetCSPolHigh(LPC_SPI_T *pSPI, uint8_t csNum)
{
	Chip_SPI_SetCFGRegBits(pSPI, (1 << ((csNum) + 8)));
}







 
static __inline void Chip_SPI_SetCSPolLow(LPC_SPI_T *pSPI, uint8_t csNum)
{
	Chip_SPI_ClearCFGRegBits(pSPI, (1 << ((csNum) + 8)));
}


 
typedef struct {
	uint32_t master				: 8;											 
	uint32_t lsbFirst			: 8;											 
	SPI_CLOCK_MODE_T mode		: 8;											 
	uint32_t reserved			: 8;											 
} SPI_CFGSETUP_T;






 
void Chip_SPI_ConfigureSPI(LPC_SPI_T *pSPI, SPI_CFGSETUP_T *pCFG);







 
static __inline uint32_t Chip_SPI_GetStatus(LPC_SPI_T *pSPI)
{
	return pSPI->STAT;
}






 
static __inline void Chip_SPI_ClearStatus(LPC_SPI_T *pSPI, uint32_t Flag)
{
	pSPI->STAT = Flag;
}






 
static __inline void Chip_SPI_EnableInts(LPC_SPI_T *pSPI, uint32_t intMask)
{
	pSPI->INTENSET = intMask & (0x0130);
}






 
static __inline void Chip_SPI_DisableInts(LPC_SPI_T *pSPI, uint32_t intMask)
{
	pSPI->INTENCLR = intMask & (0x0130);
}








 
static __inline uint32_t Chip_SPI_GetEnabledInts(LPC_SPI_T *pSPI)
{
	return pSPI->INTSTAT & (0x0130);
}





 
static __inline uint32_t Chip_SPI_GetPendingInts(LPC_SPI_T *pSPI)
{
	uint32_t stat, mask;

	mask = pSPI->INTSTAT;
	stat = pSPI->STAT;
	stat &= mask;

	return stat;
}















 
static __inline void Chip_SPI_SetFIFOCfg(LPC_SPI_T *pSPI, uint32_t cfg)
{
	pSPI->FIFOCFG = (pSPI->FIFOCFG & (0x3F033)) | cfg;
}






 
static __inline void Chip_SPI_ClearFIFOCfg(LPC_SPI_T *pSPI, uint32_t cfg)
{
	pSPI->FIFOCFG = pSPI->FIFOCFG & ((0x3F033) & ~cfg);
}










 
static __inline uint32_t Chip_SPI_GetFIFOStatus(LPC_SPI_T *pSPI)
{
	return pSPI->FIFOSTAT;
}






 
static __inline void Chip_SPI_ClearFIFOStatus(LPC_SPI_T *pSPI, uint32_t mask)
{
	pSPI->FIFOSTAT = mask;
}














 
static __inline void Chip_SPI_SetFIFOTrigLevel(LPC_SPI_T *pSPI, uint8_t tx_lvl, uint8_t rx_lvl)
{
	pSPI->FIFOTRIG = ((tx_lvl & 0x0f) << 8) | ((rx_lvl & 0x0f) << 16) |(1 << 0) | (1 << 0);
}





 
static __inline uint32_t Chip_SPI_GetFIFOTrigLevel(LPC_SPI_T *pSPI)
{
	return pSPI->FIFOTRIG;
}










 
static __inline void Chip_SPI_EnableFIFOInts(LPC_SPI_T *pSPI, uint32_t intMask)
{
	pSPI->FIFOINTENSET = intMask & (0x001F);
}






 
static __inline void Chip_SPI_DisableFIFOInts(LPC_SPI_T *pSPI, uint32_t intMask)
{
	pSPI->FIFOINTENCLR = intMask & (0x001F);
}





 
static __inline uint32_t Chip_SPI_GetFIFOEnabledInts(LPC_SPI_T *pSPI)
{
	return pSPI->FIFOINTENSET & (0x001F);
}





 
static __inline uint32_t Chip_SPI_GetFIFOPendingInts(LPC_SPI_T *pSPI)
{
	return pSPI->FIFOINTSTAT & (0x001F);
}








 
static __inline uint32_t Chip_SPI_ReadRawRXFifo(LPC_SPI_T *pSPI)
{
	return pSPI->FIFORD;
}








 
static __inline uint16_t Chip_SPI_ReadRXData(LPC_SPI_T *pSPI)
{
	volatile const void *ptr = &pSPI->FIFORD;
	return *((volatile const uint16_t *) ptr);
}








 
static __inline void Chip_SPI_WriteFIFO(LPC_SPI_T *pSPI, uint32_t data)
{
	pSPI->FIFOWR = data;
}









 
static __inline void Chip_SPI_SetTXCTRLData(LPC_SPI_T *pSPI, uint16_t ctrl, uint16_t data)
{
	pSPI->FIFOWR = (ctrl << 16) | data;
}







 
static __inline void Chip_SPI_WriteTXData(LPC_SPI_T *pSPI, uint16_t data)
{
	volatile void *ptr = &pSPI->FIFOWR;
	*((volatile uint16_t *) ptr) = data;
}






 
static __inline void Chip_SPI_FlushFifos(LPC_SPI_T *pSPI)
{
	Chip_SPI_SetFIFOCfg(pSPI, (1 << 16) | (1 << 17));
}




 
#line 687 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"

 
#line 695 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"

 
#line 703 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"

 
#line 711 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"

 
#line 719 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"

 
#line 727 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"

 
#line 735 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"

 
#line 743 "..\\..\\..\\chip_5411x\\inc\\spi_common_5411x.h"





 





#line 206 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\spim_5411x.h"





























 




#line 36 "..\\..\\..\\chip_5411x\\inc\\spim_5411x.h"








 





 
static __inline uint32_t Chip_SPIM_GetClockRate(LPC_SPI_T *pSPI)
{
	return Chip_Clock_GetFLEXCOMMClockRate(Chip_FLEXCOMM_GetIndex(pSPI)) / (pSPI->DIV + 1);
}








 
uint32_t Chip_SPIM_SetClockRate(LPC_SPI_T *pSPI, uint32_t rate);




 
typedef struct {
	uint8_t PreDelay;					 
	uint8_t PostDelay;					 
	uint8_t FrameDelay;					 
	uint8_t TransferDelay;				 
} SPIM_DELAY_CONFIG_T;






 
void Chip_SPIM_DelayConfig(LPC_SPI_T *pSPI, SPIM_DELAY_CONFIG_T *pConfig);









 
static __inline void Chip_SPIM_ForceEndOfTransfer(LPC_SPI_T *pSPI)
{
	pSPI->STAT = (1 << 7);
}







 
static __inline void Chip_SPIM_EnableLoopBack(LPC_SPI_T *pSPI)
{
	Chip_SPI_SetCFGRegBits(pSPI, (1 << 7));
}





 
static __inline void Chip_SPIM_DisableLoopBack(LPC_SPI_T *pSPI)
{
	Chip_SPI_ClearCFGRegBits(pSPI, (1 << 7));
}

struct SPIM_XFER;



 
typedef enum {
	SPIM_EVENT_WAIT,          
	SPIM_EVENT_ERRORTX,       
	SPIM_EVENT_ERRORRX,       
	SPIM_EVENT_ERROR,         
	SPIM_EVENT_DONE,          
}SPIM_EVENT_T;



 
typedef enum {
	SPI_XFER_STATE_IDLE,     
	SPI_XFER_STATE_BUSY,     
	SPI_XFER_STATE_DONE,     
	SPI_XFER_STATE_STALL,    
	SPI_XFER_STATE_ERROR,    
} SPIM_XFER_STATE_T;











 
typedef struct SPIM_XFER {
	 
	int (*eventCB) (LPC_SPI_T *pSPI, SPIM_EVENT_T evt, struct SPIM_XFER *xfer);  
	void *txData;               
	void *rxData;               
	uint16_t txCount;           
	uint16_t rxCount;           
	uint16_t dataWidth;         
	uint16_t sselNum;           
	uint32_t option;            
	void *usrData;              
	 
	uint16_t txIndex;           
	uint16_t rxIndex;           
	SPIM_XFER_STATE_T state;    
} SPIM_XFER_T;










 
void Chip_SPIM_XferHandler(LPC_SPI_T *pSPI, SPIM_XFER_T *xfer);
































 
void Chip_SPIM_Xfer(LPC_SPI_T *pSPI, SPIM_XFER_T *xfer);
















 
void Chip_SPIM_XferFIFO(LPC_SPI_T *pSPI, SPIM_XFER_T *xfer);











 
void Chip_SPIM_XferBlocking(LPC_SPI_T *pSPI, SPIM_XFER_T *xfer);



 





#line 207 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\spis_5411x.h"





























 




#line 36 "..\\..\\..\\chip_5411x\\inc\\spis_5411x.h"








 

 
typedef enum
{
	SPIS_EVENT_SASSERT,       
	SPIS_EVENT_SDEASSERT,     
	SPIS_EVENT_DONE,          
	SPIS_EVENT_ERRORTX,       
	SPIS_EVENT_ERRORRX,       
	SPIS_EVENT_THRESHOLD,     
} SPIS_EVENT_T;

 
typedef struct SPIS_XFER {
	int    (*eventCB) (LPC_SPI_T *pSPI, SPIS_EVENT_T evt, struct SPIS_XFER *xfer);  
	void    *txData;                 
	void    *rxData;                 
	uint16_t rxCount;                
	uint16_t txCount;                
	uint16_t txIndex;                
	uint16_t rxIndex;                
	uint16_t thresCount;             
	uint16_t dataWidth;              
	uint8_t	 sselNum;                
	uint32_t ss_count;				 
	_Bool     ss_state;				 
} SPIS_XFER_T;






 
void Chip_SPIS_Init(LPC_SPI_T *pSPI);







 
void Chip_SPIS_EnableInts(LPC_SPI_T *pSPI);







 
void Chip_SPIS_DisableInts(LPC_SPI_T *pSPI);









 
void Chip_SPIS_LoadFIFO(LPC_SPI_T *pSPI, SPIS_XFER_T *xfer);








 
void Chip_SPIS_ReadFIFO(LPC_SPI_T *pSPI, SPIS_XFER_T *xfer);















 
void Chip_SPIS_XferHandler(LPC_SPI_T *pSPI, SPIS_XFER_T *xfer);



 





#line 208 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"





























 











 




 
typedef struct {					 
	volatile uint32_t RESERVED0A[512];
	volatile uint32_t CFG;				 
	volatile uint32_t STAT;				 
	volatile uint32_t INTENSET;			 
	volatile  uint32_t INTENCLR;			 
	volatile uint32_t TIMEOUT;			 
	volatile uint32_t CLKDIV;			 
	volatile uint32_t INTSTAT;			 
	volatile const  uint32_t RESERVED0;
	volatile uint32_t MSTCTL;			 
	volatile uint32_t MSTTIME;			 
	volatile uint32_t MSTDAT;			 
	volatile uint32_t RESERVED1[5];
	volatile uint32_t SLVCTL;			 
	volatile uint32_t SLVDAT;			 
	volatile uint32_t SLVADR[4];		 
	volatile uint32_t SLVQUAL0;			 
	volatile uint32_t RESERVED2[9];
	volatile const  uint32_t MONRXDAT;			 
	volatile const  uint32_t RESERVED3[477];

	 
	volatile uint32_t PSELID;           
	volatile const  uint32_t PID;               
} LPC_I2C_T;



 
#line 84 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"



 
#line 104 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"













 
#line 129 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"



 
#line 144 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"



 




 
#line 164 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"



 







 





 




 






 




 






 





 







 
#line 226 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"



 
#line 246 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"













 
#line 271 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"



 
#line 286 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"



 




 
#line 306 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"



 







 





 




 






 




 






 





 












 
static __inline int Chip_I2C_Init(LPC_I2C_T *pI2C)
{
	return Chip_FLEXCOMM_Init(pI2C, FLEXCOMM_PERIPH_I2C);
}







 
static __inline void Chip_I2C_DeInit(LPC_I2C_T *pI2C)
{
	Chip_FLEXCOMM_DeInit(pI2C);
}











 
static __inline void Chip_I2C_SetClockDiv(LPC_I2C_T *pI2C, uint32_t clkdiv)
{
	if ((clkdiv >= 1) && (clkdiv <= 65536)) {
		pI2C->CLKDIV = clkdiv - 1;
	}
	else {
		pI2C->CLKDIV = 0;
	}
}







 
static __inline uint32_t Chip_I2C_GetClockDiv(LPC_I2C_T *pI2C)
{
	return (pI2C->CLKDIV & 0xFFFF) + 1;
}






 
static __inline void Chip_I2C_EnableInt(LPC_I2C_T *pI2C, uint32_t intEn)
{
	pI2C->INTENSET = intEn;
}






 
static __inline void Chip_I2C_DisableInt(LPC_I2C_T *pI2C, uint32_t intClr)
{
	pI2C->INTENCLR = intClr;
}








 
static __inline void Chip_I2C_ClearInt(LPC_I2C_T *pI2C, uint32_t intClr)
{
	Chip_I2C_DisableInt(pI2C, intClr);
}





 
static __inline uint32_t Chip_I2C_GetPendingInt(LPC_I2C_T *pI2C)
{
	return pI2C->INTSTAT;
}



 
#line 471 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"

 
#line 479 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"

 
#line 487 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"

 
#line 495 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"

 
#line 503 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"

 
#line 511 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"

 
#line 519 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"

 
#line 527 "..\\..\\..\\chip_5411x\\inc\\i2c_common_5411x.h"





 





#line 209 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\i2cm_5411x.h"





























 




#line 1 "..\\..\\..\\chip_5411x\\inc\\chip.h"





























 

#line 36 "..\\..\\..\\chip_5411x\\inc\\i2cm_5411x.h"






















 


 

#line 70 "..\\..\\..\\chip_5411x\\inc\\i2cm_5411x.h"



 
typedef struct {
	const uint8_t *txBuff;	 
	uint8_t *rxBuff;				 
	uint16_t txSz;					
 
	uint16_t rxSz;					
 
	uint16_t status;				 
	uint8_t slaveAddr;			 
} I2CM_XFER_T;











 
static __inline void Chip_I2CM_SetDutyCycle(LPC_I2C_T *pI2C, uint16_t sclH, uint16_t sclL)
{
	pI2C->MSTTIME = (((sclH - 2) & 0x07) << 4) | ((sclL - 2) & 0x07);
}















 
void Chip_I2CM_SetBusSpeed(LPC_I2C_T *pI2C, uint32_t busSpeed);






 
static __inline void Chip_I2CM_Enable(LPC_I2C_T *pI2C)
{
	pI2C->CFG = (pI2C->CFG & ((uint32_t) 0x1F)) | (1 << 0);
}






 
static __inline void Chip_I2CM_Disable(LPC_I2C_T *pI2C)
{
	pI2C->CFG = (pI2C->CFG & ((uint32_t) 0x1F)) & ~(1 << 0);
}






 
static __inline uint32_t Chip_I2CM_GetStatus(LPC_I2C_T *pI2C)
{
	return pI2C->STAT;
}







 
static __inline void Chip_I2CM_ClearStatus(LPC_I2C_T *pI2C, uint32_t clrStatus)
{
	 
	pI2C->STAT = clrStatus & ((1 << 4) | (1 << 6));
}






 
static __inline _Bool Chip_I2CM_IsMasterPending(LPC_I2C_T *pI2C)
{
	return (pI2C->STAT & (1 << 0)) != 0;
}







 
static __inline uint32_t Chip_I2CM_GetMasterState(LPC_I2C_T *pI2C)
{
	return (pI2C->STAT & (0x7 << 1)) >> 1;
}








 
static __inline void Chip_I2CM_SendStart(LPC_I2C_T *pI2C)
{
	pI2C->MSTCTL = (1 << 1);
}








 
static __inline void Chip_I2CM_SendStop(LPC_I2C_T *pI2C)
{
	pI2C->MSTCTL = (1 << 2);
}








 
static __inline void Chip_I2CM_MasterContinue(LPC_I2C_T *pI2C)
{
	pI2C->MSTCTL = (1 << 0);
}









 
static __inline void Chip_I2CM_WriteByte(LPC_I2C_T *pI2C, uint8_t data)
{
	pI2C->MSTDAT = (uint32_t) data;
}







 
static __inline uint8_t Chip_I2CM_ReadByte(LPC_I2C_T *pI2C)
{
	return (uint8_t) (pI2C->MSTDAT & ((uint32_t) 0x00FF << 0));
}












 
uint32_t Chip_I2CM_XferHandler(LPC_I2C_T *pI2C, I2CM_XFER_T *xfer);






































 
void Chip_I2CM_Xfer(LPC_I2C_T *pI2C, I2CM_XFER_T *xfer);








 
uint32_t Chip_I2CM_XferBlocking(LPC_I2C_T *pI2C, I2CM_XFER_T *xfer);



 





#line 210 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\i2cs_5411x.h"





























 




#line 36 "..\\..\\..\\chip_5411x\\inc\\i2cs_5411x.h"









 





 
typedef void (*I2CSlaveXferStart)(uint8_t addr);







 
typedef uint8_t (*I2CSlaveXferSend)(uint8_t *data);







 
typedef uint8_t (*I2CSlaveXferRecv)(uint8_t data);




 
typedef void (*I2CSlaveXferDone)(void);

























 
typedef struct {
	I2CSlaveXferStart slaveStart;	 
	I2CSlaveXferSend slaveSend;		 
	I2CSlaveXferRecv slaveRecv;		 
	I2CSlaveXferDone slaveDone;		 
} I2CS_XFER_T;






 
static __inline void Chip_I2CS_Enable(LPC_I2C_T *pI2C)
{
	pI2C->CFG = (pI2C->CFG & ((uint32_t) 0x1F)) | (1 << 1);
}





 
static __inline void Chip_I2CS_Disable(LPC_I2C_T *pI2C)
{
	pI2C->CFG = (pI2C->CFG & ((uint32_t) 0x1F)) & ~(1 << 1);
}






 
static __inline uint32_t Chip_I2CS_GetStatus(LPC_I2C_T *pI2C)
{
	return pI2C->STAT;
}







 
static __inline void Chip_I2CS_ClearStatus(LPC_I2C_T *pI2C, uint32_t clrStatus)
{
	pI2C->STAT = clrStatus & (1 << 15);
}






 
static __inline _Bool Chip_I2CS_IsSlavePending(LPC_I2C_T *pI2C)
{
	return (pI2C->STAT & (1 << 8)) != 0;
}






 
static __inline _Bool Chip_I2CS_IsSlaveSelected(LPC_I2C_T *pI2C)
{
	return (pI2C->STAT & (1 << 14)) != 0;
}






 
static __inline _Bool Chip_I2CS_IsSlaveDeSelected(LPC_I2C_T *pI2C)
{
	return (pI2C->STAT & (1 << 15)) != 0;
}







 
static __inline uint32_t Chip_I2CS_GetSlaveState(LPC_I2C_T *pI2C)
{
	return (pI2C->STAT & (0x3 << 9)) >> 9;
}





 
static __inline uint32_t Chip_I2CS_GetSlaveMatchIndex(LPC_I2C_T *pI2C)
{
	return (pI2C->STAT & (0x3 << 12)) >> 12;
}








 
static __inline void Chip_I2CS_SlaveContinue(LPC_I2C_T *pI2C)
{
	pI2C->SLVCTL = (1 << 0);
}






 
static __inline void Chip_I2CS_SlaveNACK(LPC_I2C_T *pI2C)
{
	pI2C->SLVCTL = (1 << 1);
}









 
static __inline void Chip_I2CS_SlaveEnableDMA(LPC_I2C_T *pI2C)
{
	pI2C->SLVCTL = (1 << 3);
}






 
static __inline void Chip_I2CS_SlaveDisableDMA(LPC_I2C_T *pI2C)
{
	pI2C->SLVCTL = 0;
}









 
static __inline void Chip_I2CS_WriteByte(LPC_I2C_T *pI2C, uint8_t data)
{
	pI2C->SLVDAT = (uint32_t) data;
}







 
static __inline uint8_t Chip_I2CS_ReadByte(LPC_I2C_T *pI2C)
{
	return (uint8_t) (pI2C->SLVDAT & ((uint32_t) 0x00FF << 0));
}









 
static __inline void Chip_I2CS_SetSlaveAddr(LPC_I2C_T *pI2C, uint8_t slvNum, uint8_t slvAddr)
{
	pI2C->SLVADR[slvNum] = (uint32_t) (slvAddr << 1);
}






 
static __inline uint8_t Chip_I2CS_GetSlaveAddr(LPC_I2C_T *pI2C, uint8_t slvNum)
{
	return (pI2C->SLVADR[slvNum] >> 1) & 0x7F;
}






 
static __inline void Chip_I2CS_EnableSlaveAddr(LPC_I2C_T *pI2C, uint8_t slvNum)
{
	pI2C->SLVADR[slvNum] = (pI2C->SLVADR[slvNum] & ((uint32_t) 0x00FF)) & ~(1 << 0);
}






 
static __inline void Chip_I2CS_DisableSlaveAddr(LPC_I2C_T *pI2C, uint8_t slvNum)
{
	pI2C->SLVADR[slvNum] = (pI2C->SLVADR[slvNum] & ((uint32_t) 0x00FF)) | (1 << 0);
}








 
static __inline void Chip_I2CS_SetSlaveQual0(LPC_I2C_T *pI2C, _Bool extend, uint8_t slvAddr)
{
	slvAddr = slvAddr << 1;
	if (extend) {
		slvAddr |= (1 << 0);
	}

	pI2C->SLVQUAL0 = slvAddr;
}










 
uint32_t Chip_I2CS_XferHandler(LPC_I2C_T *pI2C, const I2CS_XFER_T *xfers);



 





#line 211 "..\\..\\..\\chip_5411x\\inc\\chip.h"
#line 1 "..\\..\\..\\chip_5411x\\inc\\i2s_5411x.h"





























 










 
typedef struct {					 
	volatile uint32_t RESERVED0A[768];
	volatile uint32_t CFG1;				 
	volatile uint32_t CFG2;				 
	volatile uint32_t STAT;				 
	volatile const  uint32_t RESERVED00[4];     
	volatile uint32_t DIV;				 
	volatile const  uint32_t RESERVED0[120];	 

	 
	volatile uint32_t FIFOCFG;			 
	volatile uint32_t FIFOSTAT;			 
	volatile uint32_t FIFOTRIG;			 
	volatile const  uint32_t RESERVED1;		 
	volatile uint32_t FIFOINTENSET;		 
	volatile uint32_t FIFOINTENCLR;		 
	volatile uint32_t FIFOINTSTAT;		 
	volatile const  uint32_t RESERVED2;		 
	volatile  uint32_t FIFOWR;			 
	volatile const  uint32_t FIFOWR48H;		 
	volatile const  uint32_t RESERVED3[2];		 
	volatile const  uint32_t FIFORD;			 
	volatile const  uint32_t FIFORD48H;		 
	volatile const  uint32_t RESERVED4[2];		 
	volatile const  uint32_t FIFORDNOPOP;		 
	volatile const  uint32_t FIFORD48HNOPOP;	 
	volatile const  uint32_t RESERVED5[108];	 

	 
	volatile uint32_t PSELID;			 
	volatile const  uint32_t PID;				 
} LPC_I2S_T;



 
#line 90 "..\\..\\..\\chip_5411x\\inc\\i2s_5411x.h"



 





 







 
#line 120 "..\\..\\..\\chip_5411x\\inc\\i2s_5411x.h"



 
#line 133 "..\\..\\..\\chip_5411x\\inc\\i2s_5411x.h"



 








 
#line 152 "..\\..\\..\\chip_5411x\\inc\\i2s_5411x.h"

typedef enum {
	I2S_FIFO_ENABLE,
	I2S_FIFO_DISABLE,
	I2S_FIFO_DMA_ENABLE,
	I2S_FIFO_DMA_DISABLE,
	I2S_FIFO_CLEAR,
	I2S_FIFO_TXZ_ENABLE,
	I2S_FIFO_TXZ_DISABLE,
} I2S_FIFO_CMD_T;

typedef enum {
	I2S_TX,
	I2S_RX,
} I2S_DIR_T;

typedef enum {
	NORMAL_SLAVE,
	WS_SYNC_MASTER,
	EXT_SCLCK_MASTER,
	NORMAL_MASTER,
} I2S_MSTSLVCFG_T;

typedef enum {
	I2S_CLASSIC,
	DSP_WS_50,
	DSP_WS_SHORT,
	DSP_WS_LONG,
} I2S_MODE_T;

typedef struct {
	I2S_DIR_T			Direction;			 
	I2S_MSTSLVCFG_T		MSCfg;				 
	I2S_MODE_T			Mode;				 
	_Bool				RightLow;			 
	_Bool				LeftJust;			 
	_Bool				PDMData;			 
	_Bool				SCKPol;				 
	_Bool				WSPol;				 
	uint32_t			Divider;			 
	uint8_t				ChannelNumber;		 
	uint16_t			WordWidth;			 
	uint16_t			FrameWidth;			 
	uint16_t			DataPos;			 
	uint16_t			FIFOdepth;			 
} I2S_AUDIO_FORMAT_T;





 
typedef struct {
	uint32_t		interrupts;				 
	uint32_t		lvl_tx;					 
	uint32_t		lvl_rx;					 
	uint32_t		fifo_err_tx;			 
	uint32_t		fifo_err_rx;			 
	uint32_t		i2s_busy;				 
	uint32_t		i2s_slvfrmerr;			 
	uint32_t		i2s_data_paused;		 
} I2S_STATISTICS_T;





 
int Chip_I2S_Init(LPC_I2S_T *pI2S, I2S_AUDIO_FORMAT_T *fmt);

static __inline int Chip_I2S_TX_Init(LPC_I2S_T *pI2S)
{
	return Chip_FLEXCOMM_Init(pI2S, FLEXCOMM_PERIPH_I2S_TX);
}
static __inline int Chip_I2S_RX_Init(LPC_I2S_T *pI2S)
{
	return Chip_FLEXCOMM_Init(pI2S, FLEXCOMM_PERIPH_I2S_RX);
}






 
static __inline void Chip_I2S_DeInit(LPC_I2S_T *pI2S)
{
	Chip_FLEXCOMM_DeInit(pI2S);
}






 
Status Chip_I2S_Config(LPC_I2S_T *pI2S, I2S_AUDIO_FORMAT_T *fmt);








 
static __inline uint32_t Chip_I2S_GetStatus(LPC_I2S_T *pI2S)
{
	return pI2S->STAT;
}









 
static __inline void Chip_I2S_ClearStatus(LPC_I2S_T *pI2S, uint32_t stsMask)
{
	pI2S->STAT = stsMask;
}







 
static __inline void Chip_I2S_Send(LPC_I2S_T *pI2S, uint32_t data)
{
	pI2S->FIFOWR = data;
}






 
static __inline uint32_t Chip_I2S_Receive(LPC_I2S_T *pI2S)
{
	return pI2S->FIFORD;
}





 
static __inline void Chip_I2S_Start(LPC_I2S_T *pI2S)
{
	pI2S->CFG1 |= (0x01 << 0);
}






 
static __inline void Chip_I2S_Stop(LPC_I2S_T *pI2S)
{
	pI2S->CFG1 &= ~(0x01 << 0);
}





 
static __inline void Chip_I2S_Pause(LPC_I2S_T *pI2S)
{
	pI2S->CFG1 |= (0x01 << 1);
}





 
static __inline void Chip_I2S_Play(LPC_I2S_T *pI2S)
{
	pI2S->CFG1 &= ~(0x01 << 1);
}
















 
void Chip_I2S_FIFO_Config(LPC_I2S_T *pI2S, I2S_AUDIO_FORMAT_T *fmt);







 
void Chip_I2S_FIFO_Control(LPC_I2S_T *pI2S, I2S_AUDIO_FORMAT_T *fmt, I2S_FIFO_CMD_T cmd);









 
static __inline uint32_t Chip_I2S_GetFIFOStatus(LPC_I2S_T *pI2S)
{
	return (pI2S->FIFOSTAT);
}






 
static __inline void Chip_I2S_ClrFIFOStatus(LPC_I2S_T *pI2S, uint32_t mask)
{
	pI2S->FIFOSTAT = mask;
}















 
static __inline void Chip_I2S_SetFIFOTrigLevel(LPC_I2S_T *pI2S, uint8_t tx_lvl, uint8_t rx_lvl)
{
	pI2S->FIFOTRIG = (((tx_lvl) & 0x0f) << 8) | (((rx_lvl) & 0x0f) << 16) | (0x01 << 0) | (0x01 << 0);
}





 
static __inline uint32_t Chip_I2S_GetFIFOTrigLevel(LPC_I2S_T *pI2S)
{
	return pI2S->FIFOTRIG;
}








 
static __inline uint8_t Chip_I2S_GetFIFOTxLevel(LPC_I2S_T *pI2S)
{
	return (pI2S->FIFOSTAT >> 8) & 0xF;
}





 
static __inline uint8_t Chip_I2S_GetFIFORxLevel(LPC_I2S_T *pI2S)
{
	return (pI2S->FIFOSTAT >> 16) & 0xF;
}









 
static __inline void Chip_I2S_FIFO_SetInterrupt(LPC_I2S_T *pI2S, uint32_t int_val)
{
	pI2S->FIFOINTENSET = int_val;
}






 
static __inline void Chip_I2S_FIFO_ClrInterrupt(LPC_I2S_T *pI2S, uint32_t int_val)
{
	pI2S->FIFOINTENCLR = int_val;
}





 
static __inline uint32_t Chip_I2S_FIFO_GetPendingInts(LPC_I2S_T *pI2S)
{
	return pI2S->FIFOINTSTAT & (0x001F);
}






 
static __inline void Chip_I2S_FIFO_ClearStatus(LPC_I2S_T *pI2S, uint32_t mask)
{
	pI2S->FIFOSTAT = mask;
}






 
void Chip_I2S_ErrorHandler(LPC_I2S_T *pI2S, I2S_STATISTICS_T* stat);


 
#line 508 "..\\..\\..\\chip_5411x\\inc\\i2s_5411x.h"

 
#line 516 "..\\..\\..\\chip_5411x\\inc\\i2s_5411x.h"





#line 212 "..\\..\\..\\chip_5411x\\inc\\chip.h"




 



 
extern uint32_t SystemCoreClock;





 
void SystemCoreClockUpdate(void);






 
void Chip_SystemInit(void);





 
void Chip_SetupIrcClocking(uint32_t iFreq);





 
void Chip_SetupExtInClocking(uint32_t iFreq);





 
void Chip_SetupFROClocking(uint32_t iFreq);





 
void Chip_USB_Init(void);





 
static __inline void Chip_USB_TrimOff(int enable)
{
	if (enable) {
		 
		((LPC_SYSCON_T *) 0x40000000UL)->FROCTRL = (((LPC_SYSCON_T *) 0x40000000UL)->FROCTRL & ~((1 << 15) | (0xF << 26))) | (1UL << 24);
	} else {
		 
		((LPC_SYSCON_T *) 0x40000000UL)->FROCTRL = ((LPC_SYSCON_T *) 0x40000000UL)->FROCTRL & ~(((1 << 15) | (0xF << 26)) | (1UL << 24));
	}
}



 





#line 36 "..\\..\\..\\brd_xpresso54114\\inc\\board.h"
 















 




 




 





 







 



 



 




 





 




 

 


 




 

#line 1 "..\\..\\..\\brd_xpresso54114\\inc\\board_api.h"





























 




#line 36 "..\\..\\..\\brd_xpresso54114\\inc\\board_api.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 37 "..\\..\\..\\brd_xpresso54114\\inc\\board_api.h"












 







 
void Board_SystemInit(void);






 
void Board_SetupMuxing(void);





 
void Board_SetupClocking(void);







 
void Board_SetupExtMemory(void);




 
void Board_Init(void);




 
void Board_Debug_Init(void);





 
void Board_UARTPutChar(char ch);




 
int Board_UARTGetChar(void);





 
void Board_UARTPutSTR(char *str);





 
_Bool Board_Button_Get(uint8_t btnNum);





 
#line 136 "..\\..\\..\\brd_xpresso54114\\inc\\board_api.h"
void Board_LED_RGB_Set(uint8_t led);




 
void Board_LED_RGB_Off(void);






 
void Board_LED_Set(uint8_t LEDNumber, _Bool State);





 
_Bool Board_LED_Test(uint8_t LEDNumber);





 
void Board_LED_Toggle(uint8_t LEDNumber);






 
void Board_TestIO_Set(uint8_t tst_num, _Bool state);









 
void Board_SetLCDBacklight(uint8_t Intensity);




 
typedef void (*p_msDelay_func_t)(uint32_t);



 
#line 207 "..\\..\\..\\brd_xpresso54114\\inc\\board_api.h"

#line 214 "..\\..\\..\\brd_xpresso54114\\inc\\board_api.h"



 





#line 113 "..\\..\\..\\brd_xpresso54114\\inc\\board.h"





#line 36 "..\\..\\..\\chip_5411x\\startup\\sysinit.c"




 



 







 



 

 
void SystemInit(void)
{




	extern void *__Vectors;
	((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR = (uint32_t) &__Vectors;




	fpuInit();








	 
	Board_SystemInit();


}
