################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/common/eve_calibrate.c \
C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/common/eve_example.c \
C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/common/eve_fonts.c \
C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/common/eve_helper.c \
C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/common/eve_images.c 

OBJS += \
./common/eve_calibrate.o \
./common/eve_example.o \
./common/eve_fonts.o \
./common/eve_helper.o \
./common/eve_images.o 

C_DEPS += \
./common/eve_calibrate.d \
./common/eve_example.d \
./common/eve_fonts.d \
./common/eve_helper.d \
./common/eve_images.d 


# Each subdirectory must supply rules for building sources it contributes
common/eve_calibrate.o: C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/common/eve_calibrate.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPLATFORM_NXPK64=1 -I"../Sources" -I"../Includes" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\common" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\..\..\include" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

common/eve_example.o: C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/common/eve_example.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPLATFORM_NXPK64=1 -I"../Sources" -I"../Includes" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\common" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\..\..\include" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

common/eve_fonts.o: C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/common/eve_fonts.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPLATFORM_NXPK64=1 -I"../Sources" -I"../Includes" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\common" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\..\..\include" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

common/eve_helper.o: C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/common/eve_helper.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPLATFORM_NXPK64=1 -I"../Sources" -I"../Includes" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\common" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\..\..\include" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

common/eve_images.o: C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/common/eve_images.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPLATFORM_NXPK64=1 -I"../Sources" -I"../Includes" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\common" -I"C:/workspace.kds/EVE-MCU-BRT_AN_025/examples/simple/NXP_K64..\..\..\..\include" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


