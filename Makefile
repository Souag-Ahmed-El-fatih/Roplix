
VERSION = 1
ARCH = X86
DEVLOPER = SOUAG AHMED EL FATIH

CC = i686-elf-gcc
AS = nasm
LD = i686-elf-ld


# ================
KERNEL_DIR = kernel/
ENTRY_DIR = kernel/entry/

BUILD_DIR = build/
ELF_DIR = build/elf/
BIN_DIR = build/bin/
OBJ_DIR = build/obj/
INCLUDE_DIR = ./include

ROPLIX_FILE = $(ELF_DIR)roplix.elf
MULTIBOOT_FILE = $(ENTRY_DIR)multiboot.asm
ENTRY_FILE = $(ENTRY_DIR)entry32.asm
LINKER_FILE = $(KERNEL_DIR)linker32.ld
OBJ_FILE = $(wildcard $(OBJ_DIR)*.o)

LD_FLAGS = -m elf_i386 -T $(LINKER_FILE)
ENTRY_FLAGS = -f elf32
CC_FLAGS = -ffreestanding -I$(INCLUDE_DIR) -c 
all: build_entry build_kernel build_elf 


build_entry:
	@echo "-- [ BUILD entry & multiboot ] -- "
	$(AS) $(ENTRY_FLAGS) $(MULTIBOOT_FILE) -o $(OBJ_DIR)multiboot.o
	$(AS) $(ENTRY_FLAGS) $(ENTRY_FILE) -o $(OBJ_DIR)entry.o

build_kernel:
	$(CC) $(CC_FLAGS) $(KERNEL_DIR)kernel.c -o $(OBJ_DIR)kernel.o

build_elf:
	$(LD) $(LD_FLAGS) $(OBJ_FILE) -o $(ROPLIX_FILE)


clean:
	rm -rf $(BUILD_DIR)
	mkdir -p $(BIN_DIR) $(ELF_DIR) $(OBJ_DIR)

