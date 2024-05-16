################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../DSP_Signals/signals.c 

OBJS += \
./DSP_Signals/signals.o 

C_DEPS += \
./DSP_Signals/signals.d 


# Each subdirectory must supply rules for building sources it contributes
DSP_Signals/%.o DSP_Signals/%.su DSP_Signals/%.cyclo: ../DSP_Signals/%.c DSP_Signals/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F401xE -DSTM32 -DSTM32F401RETx -DSTM32F4 -DARM_MATH_CM4 -D__FPU_PRESENT -c -I../Inc -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Inc" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/PrivateInclude" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/ComputeLibrary/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/DSP_Signals" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-DSP_Signals

clean-DSP_Signals:
	-$(RM) ./DSP_Signals/signals.cyclo ./DSP_Signals/signals.d ./DSP_Signals/signals.o ./DSP_Signals/signals.su

.PHONY: clean-DSP_Signals

