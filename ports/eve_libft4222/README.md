# EVE-MCU-Dev Ports for libft4222

[Back](../README.md)

The port for libft4222 comprises a host PC with a USB host controller connecting to the target EVE device through an FTDI FT4222H device. The FT4222H device manages the EVE device SPI bus. The host PC uses a library or DLL to manage the interface with the FT4222H device.

## Hardware

This code requires an FT4222H adapter to connect to the EVE module. The FT4222H adapter is normally based around the FTDI FT4222H USB bridging chip.

A popular solution which makes it easy to get up and running quickly is the FTDI [UMFT4222EV-D](https://ftdichip.com/products/umft4222ev/) module. 

The UMFT4222EV-D module uses the FT4222H chipset. The module can be connected to the associated pins of the EVE module using jumper wires.

| UMFT4222EV-D Name | UMFT4222EV-D Pin | EVE Signal |
| --- | --- | --- |
| SCK | JP5 Pin 9 | SCK |
| MOSI | JP5 Pin 7 | MOSI |
| MISO | JP5 Pin 8 | MISO |
| SSO0 | JP4 Pin 9 | CS# |
| GPIO2 | JP4 Pin 6 | INT# _(1)_ |
| GPIO0 | JP4 Pin 4 | PD# |
| VCC (5V) | JP4 Pin 1 | 5V |
| GND | JP4 Pin 3 / JP5 Pin 10 | GND |

- (1) The INT# line is not required for operation unless `EVE_COPRO_METHOD` macro is set with `EVE_COPRO_INT` in the configuration for EVE-MCU-Dev.

The adapter also provides a 5V power supply via the 5V pin on the header. Ensure that the computer has sufficient power to supply the EVE module when the backlight is on (and if the audio amplifier is used). If the PC cannot provide sufficient power, a separate power connection to the EVE module could be used, with the grounds of the VA800A-SPI and the separate power source common together to EVE. 

### ME812AU-WH50R Module

The ME812AU-WH50R from Bridgetek has an integrated FT4222H and a FT812Q. The screen resolution is 800x480.

The settings required in `EVE_config.h` are:
```
#define EVE_DEVICE FT812
#define EVE_DISPLAY_RES WVGA
```

### VM816CU50A-D Module

The VM816CU50A-D from Bridgetek has an integrated FT4222H and a BT816Q. The screen resolution is 800x480.

The settings required in `EVE_config.h` are:
```
#define EVE_DEVICE BT816
#define EVE_DISPLAY_RES WVGA
```

## Windows

Important Information about Windows builds.

To compile this you will have to download the **LibFT4222** "middleware library" for Windows. The recommended version is v1.4.8 or later. The distributed files for this library are collected in the repository by Bridgetek for convenience: 

https://github.com/Bridgetek/FTDI-SW-Release/

This is used as a submodule for Windows compilations and is found in the directory `ports/external/ftdi_libraries`. Ensure that the repository has been cloned before compiling libft4222 builds.

## Linux

Important Information about Linux builds.

To compile this you will have to download the **LibFT4222** "middleware library" for Linux. The recommended version is v1.4.7 or later. It is available from the FTDI website:

https://ftdichip.com/software-examples/ft4222h-software-examples/

Download the latest version of the LibFT4222 library distribution. The file will typically have a name in the format `LibFT4222-linux-vx.x.x.yyy.zip` where *vx.x.x* is the version number. 

The library is installed *once* into the Linux file system. When building the example code the library files (H, DLL and LIB files) are found by the operating system.

### Install the LibFT4222 Middleware Library in Linux

The LibFT4222 library distribution zip file must be extracted into a new directory. The new directory will have a file called `ReadMe.txt` which describes in detail how to install the library on a Linux system. 

Once the library is installed then the build will search the standard locations for include and library files.
