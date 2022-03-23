# EVE-MCU-Examples-BRT_AN_025

## Ports

### PLATFORM Macro

The PLATFORM macro sets the port files to be used by the compiler. The options are as follows:

<table>
    <tr><th>Port Name</th><th>PLATFORM</th><th>Directory</th></tr>
    <tr><td>Bridgetek FT90x</td><td>FT900</td><td>eve_arch_ft9xx</td></tr>
    <tr><td>Bridgetek FT93x</td><td>FT930</td><td>eve_arch_ft9xx</td></tr>
    <tr><td>Beaglebone Black</td><td>BEAGLEBONE</td><td>eve_arch_beaglebone</td></tr>
    <tr><td>Expressif ESP32</td><td>ESP32</td><td>eve_arch_esp32</td></tr>
    <tr><td>TI MSP430</td><td>MSP430</td><td>eve_arch_msp430</td></tr>
    <tr><td>Microchip PIC18F</td><td>PIC</td><td>eve_arch_pic</td></tr>
    <tr><td>ST STM32</td><td>STM32</td><td>eve_arch_stm32</td></tr>
    <tr><td>Raspberry Pi</td><td>RASPBERRYPI</td><td>eve_arch_rpi</td></tr>
    <tr><td>Generic using libMPSSE</td><td>USE_MPSSE</td><td>eve_libmpsse</td></tr>
</table>

The C source files in each folder are guarded by the PLATFORM macro.
