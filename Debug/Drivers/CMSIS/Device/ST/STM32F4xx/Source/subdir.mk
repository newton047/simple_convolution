################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/Device/ST/STM32F4xx/Source/system_stm32f4xx.c 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32F4xx/Source/system_stm32f4xx.o 

C_DEPS += \
./Drivers/CMSIS/Device/ST/STM32F4xx/Source/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32F4xx/Source/%.o Drivers/CMSIS/Device/ST/STM32F4xx/Source/%.su Drivers/CMSIS/Device/ST/STM32F4xx/Source/%.cyclo: ../Drivers/CMSIS/Device/ST/STM32F4xx/Source/%.c Drivers/CMSIS/Device/ST/STM32F4xx/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F401xE -DSTM32 -DSTM32F401RETx -DSTM32F4 -DARM_MATH_CM4 -D__FPU_PRESENT -c -I../Inc -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Inc" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/PrivateInclude" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/ComputeLibrary/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/DSP_Signals" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32F4xx-2f-Source

clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32F4xx-2f-Source:
	-$(RM) ./Drivers/CMSIS/Device/ST/STM32F4xx/Source/system_stm32f4xx.cyclo ./Drivers/CMSIS/Device/ST/STM32F4xx/Source/system_stm32f4xx.d ./Drivers/CMSIS/Device/ST/STM32F4xx/Source/system_stm32f4xx.o ./Drivers/CMSIS/Device/ST/STM32F4xx/Source/system_stm32f4xx.su

.PHONY: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32F4xx-2f-Source

