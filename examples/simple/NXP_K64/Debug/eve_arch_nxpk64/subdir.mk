################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/workspace.kds/EVE-MCU-BRT_AN_025/ports/eve_arch_nxpk64/EVE_MCU_NXP.c 

OBJS += \
./eve_arch_nxpk64/EVE_MCU_NXP.o 

C_DEPS += \
./eve_arch_nxpk64/EVE_MCU_NXP.d 


# Each subdirectory must supply rules for building sources it contributes
eve_arch_nxpk64/EVE_MCU_NXP.o: C:/workspace.kds/EVE-MCU-BRT_AN_025/ports/eve_arch_nxpk64/EVE_MCU_NXP.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPLATFORM_NXPK64=1 -I"../Sources" -I"../Includes" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\common" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\..\..\include" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


