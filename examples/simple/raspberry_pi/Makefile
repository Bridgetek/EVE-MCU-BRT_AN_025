PLATFORM?=RASPBERRYPI

CC = gcc
CFLAGS = -c -Wall -g -Os -DPLATFORM_RASPBERRYPI -DUSE_LINUX_SPI_DEV -I../../../include -I../common
LD = $(CC)
LDFLAGS = 

TARGET = $(shell basename $(CURDIR))

OBJECTS = $(patsubst %.c, %.o, $(shell find . -name "*.c"))
OBJECTS += $(patsubst %.c, %.o, $(shell find ../common -name "*.c"))
OBJECTS += $(patsubst %.c, %.o, $(shell find ../../../source -name "*.c"))
OBJECTS += $(patsubst %.c, %.o, $(shell find ../../../ports/eve_arch_rpi -name "*.c"))

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(LD) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm $(TARGET) $(OBJECTS)
