################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/main.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_it.c \
../Src/syscalls.c \
../Src/sysmem.c 

OBJS += \
./Src/main.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_it.o \
./Src/syscalls.o \
./Src/sysmem.o 

C_DEPS += \
./Src/main.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_it.d \
./Src/syscalls.d \
./Src/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F401xE -DSTM32 -DSTM32F401RETx -DSTM32F4 -DARM_MATH_CM4 -D__FPU_PRESENT -c -I../Inc -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Inc" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/PrivateInclude" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/ComputeLibrary/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/DSP_Signals" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/stm32f4xx_hal_msp.cyclo ./Src/stm32f4xx_hal_msp.d ./Src/stm32f4xx_hal_msp.o ./Src/stm32f4xx_hal_msp.su ./Src/stm32f4xx_it.cyclo ./Src/stm32f4xx_it.d ./Src/stm32f4xx_it.o ./Src/stm32f4xx_it.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.cyclo ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su

.PHONY: clean-Src

