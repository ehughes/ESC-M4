################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: CM4_TEST_LPC4337_FLASH_O3_SOFT.axf

# Tool invocations
CM4_TEST_LPC4337_FLASH_O3_SOFT.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-O0 HARD" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\lpc_board_nxp_lpcxpresso_4337\SOFT" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-O0 SOFT" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-O1 SOFT" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-O2 SOFT" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-O3 SOFT" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-Os SOFT" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-Og SOFT" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-O1 HARD" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-O2 HARD" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-O3 HARD" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-Os HARD" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\-Og HARD" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\lpc_board_nxp_lpclink2_4370\SOFT" -L"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\lpc_chip_43xx\SOFT" -Xlinker -Map="CM4_TEST_LPC4337_FLASH_O3_SOFT.map" -Xlinker --gc-sections -flto -O3 -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -T "CM4_TEST_LPC4337_FLASH_-O3_SOFT.ld" -o "CM4_TEST_LPC4337_FLASH_O3_SOFT.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) CM4_TEST_LPC4337_FLASH_O3_SOFT.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "CM4_TEST_LPC4337_FLASH_O3_SOFT.axf"; # arm-none-eabi-objcopy -v -O binary "CM4_TEST_LPC4337_FLASH_O3_SOFT.axf" "CM4_TEST_LPC4337_FLASH_O3_SOFT.bin" ; # checksum -p LPC4337 -d "CM4_TEST_LPC4337_FLASH_O3_SOFT.bin";
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
