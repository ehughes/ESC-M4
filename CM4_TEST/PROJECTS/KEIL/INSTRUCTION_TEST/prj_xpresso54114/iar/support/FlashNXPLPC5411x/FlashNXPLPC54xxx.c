/*************************************************************************
 *
 *   Used with ICCARM and AARM.
 *
 *    (c) Copyright IAR Systems 2012
 *
 *    File name   : FlashNXPLPC18xx.c
 *    Description : New Flash loader driver for the NXP LPC18xx and LPC43xx
 *                  series microcontrollers.
 *    History :
 *    1. Date        : 31.01.2008
 *       Author      : Stoyan Choynev
 *       Description : initial verstion
 *
 *    2. Date        : 09.02.2012
 *       Author      : Atanas Uzunov
 *       Description : Added support for flash banks on LPC18xx and LPC43xx
 *
 *    $Revision: 28 $
 **************************************************************************/

//#define TEST  1
/** include files **/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <intrinsics.h>

#include "FlashNXPLPC54xxx.h"
#include "flash_loader.h" // The flash loader framework API declarations.

/** local definitions **/
typedef struct SLayout {
  int sectors;
  int size;
} Layout;

//==============================================
//                512k flash, CortexM4
// LPC54512
//==============================================
const Layout flashLayout[] =
{
  { 16, 0x8000 },
  {  0, 0      }
};

const int allowedWriteSizes[] =
{
  4096,
  1024,
  512,
  256,
  0
};

/** default settings **/

/** external functions **/

/** external data **/

/** internal functions **/
static int ExecuteCommand(unsigned long* cmd, unsigned long* status);
static int CalculateSector(unsigned long addr);
/** public data **/

/** private data **/
/* MCU flash firmware interface function. */
static const IAP iap_entry = (IAP)kIAPentry;
static __no_init int flashBase;
static __no_init int clock;

#if USE_ARGC_ARGV
/** private functions **/
static const char* FlFindOption(char* option, int with_value, int argc, char const* argv[])
{
  int i;

  for (i = 0; i < argc; i++)
  {
    if (strcmp(option, argv[i]) == 0)
    {
      if (with_value)
      {
        if (i + 1 < argc)
          return argv[i + 1]; // The next argument is the value.
        else
          return 0; // The option was found but there is no value to return.
      }
      else
      {
        return argv[i]; // Return the flag argument itself just to get a non-zero pointer.
      }
    }
  }
  return 0;
}
#endif // USE_ARGC_ARGV

static int ExecuteCommand(unsigned long* cmd, unsigned long* status)
{
int ret;

  for (;;)
  {
    iap_entry(cmd, status);
    ret = status[0];
    if (ret != STATUS_BUSY)
    {
      return ret;
    }
    // Try again if busy.
  }
}

/* Returns the flash sector number for a given flash address.
   Returns -1 if the address is outside the flash. */
static int CalculateSector(unsigned long addr)
{
  int i;
  int j;
  int sector = 0;
  unsigned int current = flashBase;

  for (i = 0; flashLayout[i].sectors; i++)
  {
    for (j = 0; j < flashLayout[i].sectors; j++)
    {
      if (addr < current + flashLayout[i].size)
      {
        return sector;
      }
      sector++;
      current += flashLayout[i].size;
    }
  }
  return -1;
}


/** public functions **/
#if USE_ARGC_ARGV
uint32_t FlashInit(void *base_of_flash, uint32_t image_size,
                   uint32_t link_address, uint32_t flags,
                   int argc, char const *argv[])
#else
uint32_t FlashInit(void *base_of_flash, uint32_t image_size,
                   uint32_t link_address, uint32_t flags)
#endif
{

  // The CPU clock speed (CCLK), the default value is used if no clock option is found.
  clock = CCLK;

#if !defined(TEST)
#if USE_ARGC_ARGV
  flashBase = (int)base_of_flash;
  const char* str;
  str = FlFindOption("--clock", 1, argc, argv);

  if (str)
  {
    clock = strtoul(str, 0, 0);
  }

#endif // USE_ARGC_ARGV

#else

  //static int buff[2048];
  volatile uint32_t status;
  //for (int i = 0; i < 2048; i++) {
  //  buff[i] = i;
  //}

  //flashBase = 0;
  status = FlashErase((void *)0x000, 0x1);
  //status = FlashWrite((void *)0x000, 0x0, 8192, (char const *)buff);
#endif
  return 0;
}

/*************************************************************************
 * Function Name: FlashWrite
 * Parameters: block base address, offset in block, data size, ram buffer
 *             pointer
 * Return:
 *
 * Description
 *
 *************************************************************************/
uint32_t FlashWrite(void *block_start,
                    uint32_t offset_into_block,
                    uint32_t count,
                    char const *buffer)
{
  int ret;
  unsigned int  Size ;
  unsigned long cmd[5];
  unsigned long status[5];

  do
  {
    for (unsigned int i = 0; allowedWriteSizes[i]; i++)
    {//take the max. allowed size
      Size = allowedWriteSizes[i];
      if (count >= allowedWriteSizes[i])
      {
        break;
      }
    }

    cmd[0] = CMD_PREPARE_SECTORS;
    if(-1UL == (cmd[1] = CalculateSector((unsigned long)block_start + offset_into_block)))
    {
      return RESULT_ERROR;
    }
    if(-1UL == (cmd[2] = CalculateSector((unsigned long)block_start + offset_into_block + Size-1)))
    {
      return RESULT_ERROR;
    }

    ret = ExecuteCommand(cmd, status);

    if (ret != STATUS_CMD_SUCCESS)
    {
      //message CMD_PREPARE_SECTORS failed.
      return RESULT_ERROR;
    }

    cmd[0] = CMD_COPY_RAM_TO_FLASH;
    cmd[1] = (unsigned long)block_start + offset_into_block;
    cmd[2] = (unsigned long)buffer;
    cmd[3] = Size;
    cmd[4] = clock;

    ret = ExecuteCommand(cmd, status);

    if (ret != STATUS_CMD_SUCCESS)
    {
      //message CMD_COPY_RAM_TO_FLASH failed.
      return RESULT_ERROR;
    }

    if(count > cmd[3]) count -= cmd[3];
    else count = 0;

    offset_into_block += cmd[3];
    buffer += cmd[3];
  }
  while(count);

  return RESULT_OK;
}
/*************************************************************************
 * Function Name: FlashErase
 * Parameters:  Block Address, Block Size
 *
 * Return:
 *
 * Description:
 *
 *************************************************************************/
uint32_t FlashErase(void *block_start,
                    uint32_t block_size)
{
  int ret;
  int start_sector;
  int end_sector;
  unsigned long cmd[5];
  unsigned long status[5];

  start_sector = CalculateSector((unsigned long)block_start);
  end_sector = CalculateSector((unsigned long)block_start+(block_size-1));

  // Prepare sector for erase.
  cmd[0] = CMD_PREPARE_SECTORS;
  cmd[1] = start_sector;
  cmd[2] = end_sector;

  ret = ExecuteCommand(cmd, status);

  if (ret != STATUS_CMD_SUCCESS)
  {
    //message CMD_PREPARE_SECTORS failed.
    return RESULT_ERROR;
  }

  // Erase sector.
  cmd[0] = CMD_ERASE_SECTORS;
  cmd[1] = start_sector;
  cmd[2] = end_sector;
  cmd[3] = clock;

  ret = ExecuteCommand(cmd, status);

  if (ret != STATUS_CMD_SUCCESS)
  {
    //message CMD_ERASE_SECTORS failed.
    return RESULT_ERROR;
  }

  return RESULT_OK;
}
