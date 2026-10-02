CC = powerpc-elf-gcc
LD = powerpc-elf-ld
OBJCOPY = powerpc-elf-objcopy

CFLAGS = -O2 -m32 -fno-pic -ffreestanding -Wall -I./src
LDFLAGS = -subsystem:0x2 -v

SRCS = src/main.c src/store_ui.c src/network.c
OBJS = $(SRCS:.c=.o)
TARGET = build/project_amber.elf

all: $(TARGET)

$(TARGET): $(OBJS)
	@mkdir -p build
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf src/*.o build/ default.xex

