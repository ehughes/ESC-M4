/*
 * GENERATED FILE - DO NOT EDIT
 * (c) Code Red Technologies Ltd, 2008-2013
 * (c) NXP Semiconductors 2013-2016
 * Generated linker script file for LPC54114J256
 * Created from memory.ldt by FMCreateLinkMemory
 * Using Freemarker v2.3.23
 * LPCXpresso v8.2.2 [Build 650] [2016-09-09]  on Nov 29, 2016 1:16:48 PM
 */

MEMORY
{
  /* Define each memory region */
  MFlash256 (rx) : ORIGIN = 0x0, LENGTH = 0x40000 /* 256K bytes (alias Flash) */  
  Ram0_64 (rwx) : ORIGIN = 0x20000000, LENGTH = 0x20000 /* 128K bytes (alias RAM) */  
  Ram2_32 (rwx) : ORIGIN = 0x20020000, LENGTH = 0x8000 /* 32K bytes (alias RAM2) */  
  RamX_32 (rwx) : ORIGIN = 0x4000000, LENGTH = 0x8000 /* 32K bytes (alias RAM3) */  
}

  /* Define a symbol for the top of each memory region */
  __base_MFlash256 = 0x0  ; /* MFlash256 */  
  __base_Flash = 0x0 ; /* Flash */  
  __top_MFlash256 = 0x0 + 0x40000 ; /* 256K bytes */  
  __top_Flash = 0x0 + 0x40000 ; /* 256K bytes */  
  __base_Ram0_64 = 0x20000000  ; /* Ram0_64 */  
  __base_RAM = 0x20000000 ; /* RAM */  
  __top_Ram0_64 = 0x20000000 + 0x20000 ; /* 128K bytes */  
  __top_RAM = 0x20000000 + 0x20000 ; /* 128K bytes */  
  __base_Ram2_32 = 0x20020000  ; /* Ram2_32 */  
  __base_RAM2 = 0x20020000 ; /* RAM2 */  
  __top_Ram2_32 = 0x20020000 + 0x8000 ; /* 32K bytes */  
  __top_RAM2 = 0x20020000 + 0x8000 ; /* 32K bytes */  
  __base_RamX_32 = 0x4000000  ; /* RamX_32 */  
  __base_RAM3 = 0x4000000 ; /* RAM3 */  
  __top_RamX_32 = 0x4000000 + 0x8000 ; /* 32K bytes */  
  __top_RAM3 = 0x4000000 + 0x8000 ; /* 32K bytes */  
