################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/TransformFunctions/subdir.mk
-include src/SupportFunctions/subdir.mk
-include src/StatisticsFunctions/subdir.mk
-include src/MatrixFunctions/subdir.mk
-include src/FilteringFunctions/subdir.mk
-include src/FastMathFunctions/subdir.mk
-include src/ControllerFunctions/subdir.mk
-include src/ComplexMathFunctions/subdir.mk
-include src/CommonTables/subdir.mk
-include src/BasicMathFunctions/subdir.mk
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
all: libCMSIS_DSP_4_3_0_Os_HARD.a

# Tool invocations
libCMSIS_DSP_4_3_0_Os_HARD.a: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Archiver'
	arm-none-eabi-ar -r  "libCMSIS_DSP_4_3_0_Os_HARD.a" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(ARCHIVES) libCMSIS_DSP_4_3_0_Os_HARD.a
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "libCMSIS_DSP_4_3_0_Os_HARD.a" ; # arm-none-eabi-objdump -h -S "libCMSIS_DSP_4_3_0_Os_HARD.a" >"libCMSIS_DSP_4_3_0_Os_HARD.lss"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
