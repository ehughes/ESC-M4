################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/CM_TEST.c \
C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/Goertzel.c \
C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/IIR.c \
../src/boot_multicore_slave.c \
../src/cr_startup_lpc5411x.c \
../src/crp.c \
../src/sysinit.c 

OBJS += \
./src/CM_TEST.o \
./src/Goertzel.o \
./src/IIR.o \
./src/boot_multicore_slave.o \
./src/cr_startup_lpc5411x.o \
./src/crp.o \
./src/sysinit.o 

C_DEPS += \
./src/CM_TEST.d \
./src/Goertzel.d \
./src/IIR.d \
./src/boot_multicore_slave.d \
./src/cr_startup_lpc5411x.d \
./src/crp.d \
./src/sysinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/CM_TEST.o: C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/CM_TEST.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__MULTICORE_NONE -DBOARD=2 -D__FPU_PRESENT=1 -DABI=1 -DBUILD_CONFIG=3 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -DDEBUG -D__CODE_RED -DCORE_M4 -D__USE_LPCOPEN -D__LPC5411X__ -D__REDLIB__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\LIB\LPCXPRESSO\lpc_board_lpcxpresso_54114\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\SRC\CMSIS_DSP_4_5\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\LIB\LPCXPRESSO\lpc_chip_5411x\inc" -O3 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"src/CM_TEST.d" -MT"src/CM_TEST.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Goertzel.o: C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/Goertzel.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__MULTICORE_NONE -DBOARD=2 -D__FPU_PRESENT=1 -DABI=1 -DBUILD_CONFIG=3 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -DDEBUG -D__CODE_RED -DCORE_M4 -D__USE_LPCOPEN -D__LPC5411X__ -D__REDLIB__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\LIB\LPCXPRESSO\lpc_board_lpcxpresso_54114\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\SRC\CMSIS_DSP_4_5\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\LIB\LPCXPRESSO\lpc_chip_5411x\inc" -O3 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"src/Goertzel.d" -MT"src/Goertzel.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/IIR.o: C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/IIR.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__MULTICORE_NONE -DBOARD=2 -D__FPU_PRESENT=1 -DABI=1 -DBUILD_CONFIG=3 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -DDEBUG -D__CODE_RED -DCORE_M4 -D__USE_LPCOPEN -D__LPC5411X__ -D__REDLIB__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\LIB\LPCXPRESSO\lpc_board_lpcxpresso_54114\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\SRC\CMSIS_DSP_4_5\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\LIB\LPCXPRESSO\lpc_chip_5411x\inc" -O3 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"src/IIR.d" -MT"src/IIR.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__MULTICORE_NONE -DBOARD=2 -D__FPU_PRESENT=1 -DABI=1 -DBUILD_CONFIG=3 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -DDEBUG -D__CODE_RED -DCORE_M4 -D__USE_LPCOPEN -D__LPC5411X__ -D__REDLIB__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\LIB\LPCXPRESSO\lpc_board_lpcxpresso_54114\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\SRC\CMSIS_DSP_4_5\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\LIB\LPCXPRESSO\lpc_chip_5411x\inc" -O3 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


