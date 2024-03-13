################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main/main.c 

S_UPPER_SRCS += \
../main/crt0.S 

C_DEPS += \
./main/main.d 

OBJS += \
./main/crt0.o \
./main/main.o 


# Each subdirectory must supply rules for building sources it contributes
main/%.o: ../main/%.S main/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: FT9xx GCC Assembler'
	ft32-elf-as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

main/%.o: ../main/%.c main/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: FT9xx GCC Compiler'
	ft32-elf-gcc -D__FT900__ -DPLATFORM_FT9XX -I"C:\Users\graham.brown\AppData\Local\Bridgetek\FT9xx Toolchain\Toolchain/hardware/include" -I"C:\EVE-MCU-BRT_AN_025\include" -I"C:\EVE-MCU-BRT_AN_025\examples\BRT_AN_074_Source\BRT_AN_074_Color_Picker_Examples\example" -Og -g -fvar-tracking -fvar-tracking-assignments -Wall -c -fmessage-length=0 -ffunction-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-main

clean-main:
	-$(RM) ./main/crt0.o ./main/main.d ./main/main.o

.PHONY: clean-main

