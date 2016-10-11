/*
 * GENERATED FILE - DO NOT EDIT
 * (c) Code Red Technologies Ltd, 2008-2013
 * (c) NXP Semiconductors 2013-2016
 * Generated linker script file for LPC4370
 * Created from memory.ldt by FMCreateLinkMemory
 * Using Freemarker v2.3.23
 * LPCXpresso v8.2.2 [Build 650] [2016-09-09]  on Oct 11, 2016 2:55:16 PM
 */

MEMORY
{
  /* Define each memory region */
  RamLoc128 (rwx) : ORIGIN = 0x10000000, LENGTH = 0x20000 /* 128K bytes (alias RAM) */  
  RamLoc72 (rwx) : ORIGIN = 0x10080000, LENGTH = 0x12000 /* 72K bytes (alias RAM2) */  
  RamAHB32 (rwx) : ORIGIN = 0x20000000, LENGTH = 0x8000 /* 32K bytes (alias RAM3) */  
  RamAHB16 (rwx) : ORIGIN = 0x20008000, LENGTH = 0x4000 /* 16K bytes (alias RAM4) */  
  RamAHB_ETB16 (rwx) : ORIGIN = 0x2000c000, LENGTH = 0x4000 /* 16K bytes (alias RAM5) */  
  RamM0Sub16 (rwx) : ORIGIN = 0x18000000, LENGTH = 0x4000 /* 16K bytes (alias RAM6) */  
  RamM0Sub2 (rwx) : ORIGIN = 0x18004000, LENGTH = 0x800 /* 2K bytes (alias RAM7) */  
}

  /* Define a symbol for the top of each memory region */
  __base_RamLoc128 = 0x10000000  ; /* RamLoc128 */  
  __base_RAM = 0x10000000 ; /* RAM */  
  __top_RamLoc128 = 0x10000000 + 0x20000 ; /* 128K bytes */  
  __top_RAM = 0x10000000 + 0x20000 ; /* 128K bytes */  
  __base_RamLoc72 = 0x10080000  ; /* RamLoc72 */  
  __base_RAM2 = 0x10080000 ; /* RAM2 */  
  __top_RamLoc72 = 0x10080000 + 0x12000 ; /* 72K bytes */  
  __top_RAM2 = 0x10080000 + 0x12000 ; /* 72K bytes */  
  __base_RamAHB32 = 0x20000000  ; /* RamAHB32 */  
  __base_RAM3 = 0x20000000 ; /* RAM3 */  
  __top_RamAHB32 = 0x20000000 + 0x8000 ; /* 32K bytes */  
  __top_RAM3 = 0x20000000 + 0x8000 ; /* 32K bytes */  
  __base_RamAHB16 = 0x20008000  ; /* RamAHB16 */  
  __base_RAM4 = 0x20008000 ; /* RAM4 */  
  __top_RamAHB16 = 0x20008000 + 0x4000 ; /* 16K bytes */  
  __top_RAM4 = 0x20008000 + 0x4000 ; /* 16K bytes */  
  __base_RamAHB_ETB16 = 0x2000c000  ; /* RamAHB_ETB16 */  
  __base_RAM5 = 0x2000c000 ; /* RAM5 */  
  __top_RamAHB_ETB16 = 0x2000c000 + 0x4000 ; /* 16K bytes */  
  __top_RAM5 = 0x2000c000 + 0x4000 ; /* 16K bytes */  
  __base_RamM0Sub16 = 0x18000000  ; /* RamM0Sub16 */  
  __base_RAM6 = 0x18000000 ; /* RAM6 */  
  __top_RamM0Sub16 = 0x18000000 + 0x4000 ; /* 16K bytes */  
  __top_RAM6 = 0x18000000 + 0x4000 ; /* 16K bytes */  
  __base_RamM0Sub2 = 0x18004000  ; /* RamM0Sub2 */  
  __base_RAM7 = 0x18004000 ; /* RAM7 */  
  __top_RamM0Sub2 = 0x18004000 + 0x800 ; /* 2K bytes */  
  __top_RAM7 = 0x18004000 + 0x800 ; /* 2K bytes */  
