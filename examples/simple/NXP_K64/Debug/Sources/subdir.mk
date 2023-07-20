################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sources/main.c 

OBJS += \
./Sources/main.o 

C_DEPS += \
./Sources/main.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/%.o: ../Sources/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPLATFORM_NXPK64=1 -I"../Sources" -I"../Includes" -I"C:\EVE-MCU-BRT_AN_025\examples\simple\common" -I"C:\EVE-MCU-BRT_AN_025\include" -I"C:\EVE-MCU-BRT_AN_025\source" -I"C:\EVE-MCU-BRT_AN_025\ports\eve_arch_nxpk64" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


