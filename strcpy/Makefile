# gcc version 15.2.1 20250813 (GCC)
# yasm 1.3.0
TARGET = prog
C_SRC = main.c
ASM_SRC = strcpy.asm
C_OBJ = $(C_SRC:.c=.o)
ASM_OBJ = $(ASM_SRC:.asm=.o)
CC = gcc
AS = yasm
CFLAGS = -Wall -Wextra
ASFLAGS = -f elf64

all: $(TARGET)

$(TARGET): $(C_OBJ) $(ASM_OBJ)
	$(CC) $(C_OBJ) $(ASM_OBJ) -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -f $(TARGET) $(C_OBJ) $(ASM_OBJ)

.PHONY: all clean
