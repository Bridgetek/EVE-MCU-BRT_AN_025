# EVE-MCU-Examples-BRT_AN_025

## Ports

### PLATFORM Macro

The PLATFORM macro sets the port files to be used by the compiler. The options are as follows:

| Port Name | PLATFORM | Port Directory |
| --- | --- | --- |
|Bridgetek FT90x | PLATFORM_FT9XX | eve_arch_ft9xx |
|Bridgetek FT93x | PLATFORM_FT9XX | eve_arch_ft9xx |
|Beaglebone Black | PLATFORM_BEAGLEBONE | eve_arch_beaglebone |
|Expressif ESP32 | PLATFORM_ESP32 | eve_arch_esp32 |
|TI MSP430 | PLATFORM_MSP430 | eve_arch_msp430 |
|Microchip PIC18F | PLATFORM_PIC | eve_arch_pic |
|ST STM32 | PLATFORM_STM32 | eve_arch_stm32 |
|Raspberry Pi | PLATFORM_RASPBERRYPI | eve_arch_rpi |
|Raspberry Pi Pico | PLATFORM_RP2040 | eve_arch_rpi |
|Generic using libMPSSE | USE_MPSSE | eve_libmpsse |

The C source files are in the [ports](ports/) directory. Each source file in each ports folder is guarded by one of the PLATFORM_<i>xxx</i> macros.

The Rasberrry Pi platform is suitable for generic Linux by modifying the GPIO pins and device names to match the CPU and board package.

## Example Code

There are example projects for many MCUs and platforms. These include this repository as a submodule within the required code for the platform.

### Microcontrollers
| MCU | Example Repository |
| --- | --- |
|Bridgetek FT90x/FT93x | [EVE-MCU-BRT_AN_025-Example-FT900](https://github.com/Bridgetek/EVE-MCU-BRT_AN_025-Example-FT900) </td></tr>
|Raspberry Pi Pico | [EVE-MCU-BRT_AN_012-Example-Pico](https://github.com/Bridgetek/EVE-MCU-BRT_AN_012-Example-Pico) </td></tr>
|Beaglebone Black | [EVE-MCU-BRT_AN_025-Example-Beaglebone](https://github.com/Bridgetek/EVE-MCU-BRT_AN_025-Example-Beaglebone) </td></tr>
|Expressif ESP32 | [EVE-MCU-BRT_AN_025-Example-ESP32](https://github.com/Bridgetek/EVE-MCU-BRT_AN_025-Example-ESP32) </td></tr>
|TI MSP430 | [EVE-MCU-BRT_AN_025-Example-MSP430](https://github.com/Bridgetek/EVE-MCU-BRT_AN_025-Example-MSP430) </td></tr>
|Microchip PIC18F | [EVE-MCU-BRT_AN_025-Example-PIC18F46K22](https://github.com/Bridgetek/EVE-MCU-BRT_AN_025-Example-PIC18F46K22) </td></tr>
|ST STM32 | [EVE-MCU-BRT_AN_025-Example-STM32](https://github.com/Bridgetek/EVE-MCU-BRT_AN_025-Example-STM32) </td></tr>
</table>

### Platforms
| Platform | Example Repository |
| --- | --- |
|Raspberry Pi | [EVE-MCU-BRT_AN_025-Example-RPi](https://github.com/Bridgetek/EVE-MCU-BRT_AN_025-Example-RPi) </td></tr>
|Generic using libMPSSE | [EVE-MCU-BRT_AN_025-Example-libMPSSE](https://github.com/Bridgetek/EVE-MCU-BRT_AN_025-Example-libMPSSE) </td></tr>
