################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.c \
../Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c \
../Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.o \
./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o \
./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.d \
./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.d \
./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/BayesFunctions/%.o Drivers/CMSIS/DSP/Source/BayesFunctions/%.su Drivers/CMSIS/DSP/Source/BayesFunctions/%.cyclo: ../Drivers/CMSIS/DSP/Source/BayesFunctions/%.c Drivers/CMSIS/DSP/Source/BayesFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F401xE -DSTM32 -DSTM32F401RETx -DSTM32F4 -DARM_MATH_CM4 -D__FPU_PRESENT -c -I../Inc -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Inc" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/PrivateInclude" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/Drivers/CMSIS/DSP/ComputeLibrary/Include" -I"D:/Newton/Courses/Digital Signal Processing/Coding/2_CUSTOM_CONVOLUTION_DSP_FUNCTIONS/DSP_Signals" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-BayesFunctions

clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-BayesFunctions:
	-$(RM) ./Drivers/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.cyclo ./Drivers/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.d ./Drivers/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.o ./Drivers/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.su ./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.cyclo ./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.d ./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o ./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.su ./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.cyclo ./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.d ./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o ./Drivers/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-BayesFunctions

