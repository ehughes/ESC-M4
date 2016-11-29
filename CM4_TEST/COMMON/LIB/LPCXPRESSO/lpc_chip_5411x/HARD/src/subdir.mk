################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/adc_5411x.c \
../src/chip_5411x.c \
../src/clock_5411x.c \
../src/dma_5411x.c \
../src/dma_service_5411x.c \
../src/dmic_5411x.c \
../src/flexcomm_5411x.c \
../src/fpu_init.c \
../src/i2cm_5411x.c \
../src/i2cs_5411x.c \
../src/i2s_5411x.c \
../src/iap.c \
../src/pll_5411x.c \
../src/ring_buffer.c \
../src/rtc_ut.c \
../src/sct_5411x.c \
../src/sct_pwm_5411x.c \
../src/spi_common_5411x.c \
../src/spim_5411x.c \
../src/spis_5411x.c \
../src/stopwatch_5411x.c \
../src/syscon_5411x.c \
../src/sysinit_5411x.c \
../src/timer_5411x.c \
../src/uart_5411x.c 

OBJS += \
./src/adc_5411x.o \
./src/chip_5411x.o \
./src/clock_5411x.o \
./src/dma_5411x.o \
./src/dma_service_5411x.o \
./src/dmic_5411x.o \
./src/flexcomm_5411x.o \
./src/fpu_init.o \
./src/i2cm_5411x.o \
./src/i2cs_5411x.o \
./src/i2s_5411x.o \
./src/iap.o \
./src/pll_5411x.o \
./src/ring_buffer.o \
./src/rtc_ut.o \
./src/sct_5411x.o \
./src/sct_pwm_5411x.o \
./src/spi_common_5411x.o \
./src/spim_5411x.o \
./src/spis_5411x.o \
./src/stopwatch_5411x.o \
./src/syscon_5411x.o \
./src/sysinit_5411x.o \
./src/timer_5411x.o \
./src/uart_5411x.o 

C_DEPS += \
./src/adc_5411x.d \
./src/chip_5411x.d \
./src/clock_5411x.d \
./src/dma_5411x.d \
./src/dma_service_5411x.d \
./src/dmic_5411x.d \
./src/flexcomm_5411x.d \
./src/fpu_init.d \
./src/i2cm_5411x.d \
./src/i2cs_5411x.d \
./src/i2s_5411x.d \
./src/iap.d \
./src/pll_5411x.d \
./src/ring_buffer.d \
./src/rtc_ut.d \
./src/sct_5411x.d \
./src/sct_pwm_5411x.d \
./src/spi_common_5411x.d \
./src/spim_5411x.d \
./src/spis_5411x.d \
./src/stopwatch_5411x.d \
./src/syscon_5411x.d \
./src/sysinit_5411x.d \
./src/timer_5411x.d \
./src/uart_5411x.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCORE_M4 -D__CODE_RED -D__LPC5411X__ -DDEBUG -I"C:\Users\ehughes\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\LIB\LPCXPRESSO\lpc_chip_5411x\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


