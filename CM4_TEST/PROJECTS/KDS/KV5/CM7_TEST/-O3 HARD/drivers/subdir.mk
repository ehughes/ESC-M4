################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_adc16.c \
../drivers/fsl_aoi.c \
../drivers/fsl_clock.c \
../drivers/fsl_cmp.c \
../drivers/fsl_common.c \
../drivers/fsl_crc.c \
../drivers/fsl_dac.c \
../drivers/fsl_dmamux.c \
../drivers/fsl_dspi.c \
../drivers/fsl_dspi_edma.c \
../drivers/fsl_edma.c \
../drivers/fsl_enet.c \
../drivers/fsl_ewm.c \
../drivers/fsl_flash.c \
../drivers/fsl_flexbus.c \
../drivers/fsl_flexcan.c \
../drivers/fsl_flexcan_edma.c \
../drivers/fsl_ftm.c \
../drivers/fsl_gpio.c \
../drivers/fsl_hsadc.c \
../drivers/fsl_i2c.c \
../drivers/fsl_i2c_edma.c \
../drivers/fsl_llwu.c \
../drivers/fsl_lptmr.c \
../drivers/fsl_mpu.c \
../drivers/fsl_pdb.c \
../drivers/fsl_pit.c \
../drivers/fsl_pmc.c \
../drivers/fsl_pwm.c \
../drivers/fsl_rcm.c \
../drivers/fsl_sim.c \
../drivers/fsl_smc.c \
../drivers/fsl_trng.c \
../drivers/fsl_uart.c \
../drivers/fsl_uart_edma.c \
../drivers/fsl_wdog.c \
../drivers/fsl_xbara.c \
../drivers/fsl_xbarb.c 

OBJS += \
./drivers/fsl_adc16.o \
./drivers/fsl_aoi.o \
./drivers/fsl_clock.o \
./drivers/fsl_cmp.o \
./drivers/fsl_common.o \
./drivers/fsl_crc.o \
./drivers/fsl_dac.o \
./drivers/fsl_dmamux.o \
./drivers/fsl_dspi.o \
./drivers/fsl_dspi_edma.o \
./drivers/fsl_edma.o \
./drivers/fsl_enet.o \
./drivers/fsl_ewm.o \
./drivers/fsl_flash.o \
./drivers/fsl_flexbus.o \
./drivers/fsl_flexcan.o \
./drivers/fsl_flexcan_edma.o \
./drivers/fsl_ftm.o \
./drivers/fsl_gpio.o \
./drivers/fsl_hsadc.o \
./drivers/fsl_i2c.o \
./drivers/fsl_i2c_edma.o \
./drivers/fsl_llwu.o \
./drivers/fsl_lptmr.o \
./drivers/fsl_mpu.o \
./drivers/fsl_pdb.o \
./drivers/fsl_pit.o \
./drivers/fsl_pmc.o \
./drivers/fsl_pwm.o \
./drivers/fsl_rcm.o \
./drivers/fsl_sim.o \
./drivers/fsl_smc.o \
./drivers/fsl_trng.o \
./drivers/fsl_uart.o \
./drivers/fsl_uart_edma.o \
./drivers/fsl_wdog.o \
./drivers/fsl_xbara.o \
./drivers/fsl_xbarb.o 

C_DEPS += \
./drivers/fsl_adc16.d \
./drivers/fsl_aoi.d \
./drivers/fsl_clock.d \
./drivers/fsl_cmp.d \
./drivers/fsl_common.d \
./drivers/fsl_crc.d \
./drivers/fsl_dac.d \
./drivers/fsl_dmamux.d \
./drivers/fsl_dspi.d \
./drivers/fsl_dspi_edma.d \
./drivers/fsl_edma.d \
./drivers/fsl_enet.d \
./drivers/fsl_ewm.d \
./drivers/fsl_flash.d \
./drivers/fsl_flexbus.d \
./drivers/fsl_flexcan.d \
./drivers/fsl_flexcan_edma.d \
./drivers/fsl_ftm.d \
./drivers/fsl_gpio.d \
./drivers/fsl_hsadc.d \
./drivers/fsl_i2c.d \
./drivers/fsl_i2c_edma.d \
./drivers/fsl_llwu.d \
./drivers/fsl_lptmr.d \
./drivers/fsl_mpu.d \
./drivers/fsl_pdb.d \
./drivers/fsl_pit.d \
./drivers/fsl_pmc.d \
./drivers/fsl_pwm.d \
./drivers/fsl_rcm.d \
./drivers/fsl_sim.d \
./drivers/fsl_smc.d \
./drivers/fsl_trng.d \
./drivers/fsl_uart.d \
./drivers/fsl_uart_edma.d \
./drivers/fsl_wdog.d \
./drivers/fsl_xbara.d \
./drivers/fsl_xbarb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -D"CPU_MKV58F1M0VLQ24" -D__FPU_PRESENT=1 -DARM_MATH_CM7 -DBUILD_CONFIG=3 -DBOARD=3 -I../startup -I"../../../../COMMON/SRC/CMSIS_DSP_4_5/inc" -I../board -I../utilities -I../CMSIS -I../drivers -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


