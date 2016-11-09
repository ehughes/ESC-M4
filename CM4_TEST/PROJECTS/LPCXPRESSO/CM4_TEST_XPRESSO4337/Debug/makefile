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
all: CM4_TEST.axf

# Tool invocations
CM4_TEST.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"Z:\Dropbox\Embedded System Conference\LPC-LINK-2\COMMON\lpc_board_nxp_lpclink2_4370\Debug" -L"Z:\Dropbox\Embedded System Conference\LPC-LINK-2\COMMON\CMSIS_DSP_4_0_1\Debug" -L"Z:\Dropbox\Embedded System Conference\LPC-LINK-2\COMMON\lpc_chip_43xx\Debug" -Xlinker -Map="CM4_TEST.map" -Xlinker --gc-sections -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -T "CM4_TEST_Debug.ld" -o "CM4_TEST.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) CM4_TEST.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "CM4_TEST.axf"; # arm-none-eabi-objcopy -v -O binary "CM4_TEST.axf" "CM4_TEST.bin" ; # checksum -p LPC4370 -d "CM4_TEST.bin";
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
