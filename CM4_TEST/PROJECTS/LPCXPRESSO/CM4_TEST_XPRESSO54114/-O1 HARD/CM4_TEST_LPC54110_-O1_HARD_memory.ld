/*
 * GENERATED FILE - DO NOT EDIT
 * (c) Code Red Technologies Ltd, 2008-2013
 * (c) NXP Semiconductors 2013-2016
 * Generated linker script file for LPC54114J256
 * Created from memory.ldt by FMCreateLinkMemory
 * Using Freemarker v2.3.23
 * LPCXpresso v8.2.2 [Build 650] [2016-09-09]  on Oct 12, 2016 10:05:53 PM
 */

MEMORY
{
  /* Define each memory region */
  Ram0_64 (rwx) : ORIGIN = 0x20000000, LENGTH = 0x28000 /* 160K bytes (alias RAM) */  
  RamX_32 (rwx) : ORIGIN = 0x4000000, LENGTH = 0x8000 /* 32K bytes (alias RAM2) */  
}

  /* Define a symbol for the top of each memory region */
  __base_Ram0_64 = 0x20000000  ; /* Ram0_64 */  
  __base_RAM = 0x20000000 ; /* RAM */  
  __top_Ram0_64 = 0x20000000 + 0x28000 ; /* 160K bytes */  
  __top_RAM = 0x20000000 + 0x28000 ; /* 160K bytes */  
  __base_RamX_32 = 0x4000000  ; /* RamX_32 */  
  __base_RAM2 = 0x4000000 ; /* RAM2 */  
  __top_RamX_32 = 0x4000000 + 0x8000 ; /* 32K bytes */  
  __top_RAM2 = 0x4000000 + 0x8000 ; /* 32K bytes */  
