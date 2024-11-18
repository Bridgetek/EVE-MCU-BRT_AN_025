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

There are example projects for many MCUs and platforms. These are included in various directories in this repository.

### Microcontrollers
| MCU | Example Directory |
| --- | --- |
|Bridgetek FT90x/FT93x | [FT900](examples/simple/ft900) </td></tr>
|Raspberry Pi Pico | [Pico](examples/simple/pico) </td></tr>
|Beaglebone Black | [Beaglebone](examples/simple/BeagleBone) </td></tr>
|Expressif ESP32 | [ESP32](examples/simple/ESP32) </td></tr>
|TI MSP430 | [MSP430](examples/simple/MSP430) </td></tr>
|Microchip PIC18F | [PIC18F46K22](examples/simple/PIC18F) </td></tr>
|NXP K64 | [K64](examples/simple/NXP_K64) </td></tr>
|ST STM32 | [STM32](example/simple/STM32) </td></tr>
|ST STM32 Cube | [STM32](example/simple/STM32CUBE) </td></tr>
</table>

### Platforms
| Platform | Example Directory |
| --- | --- |
|Raspberry Pi | [RPi](examples/simple/raspberry_pi) </td></tr>
|Generic using libMPSSE | [libMPSSE](examples/simple/libmpsse) </td></tr>
