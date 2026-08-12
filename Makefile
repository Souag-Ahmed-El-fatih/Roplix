
VERSION = 1
ARCH = x86
DEVLOPER = SOUAG AHMED EL FATIH

CC = i686-elf-gcc
AS = nasm
LD = i686-elf-ld

# ==========================
#     FOLDERS
KERNEL_DIR = kernel/
ENTRY_DIR = kernel/entry/

BUILD_DIR = build/
ELF_DIR = build/elf/
BIN_DIR = build/bin/
OBJ_DIR = build/obj/
INCLUDE_DIR = ./include
ARCH_DIR = arch/
# ====================== 
# 		FILES
ROPLIX_FILE = $(ELF_DIR)roplix.elf
MULTIBOOT_FILE = $(ENTRY_DIR)multiboot.asm
ENTRY_FILE = $(ENTRY_DIR)entry32.asm
LINKER_FILE = $(KERNEL_DIR)linker32.ld
OBJ_FILE = $(wildcard $(OBJ_DIR)*.o)
# ====================== 
#		 FLAGS
LD_FLAGS = -m elf_i386 -T $(LINKER_FILE)
AS_FLAGS = -f elf32
CC_FLAGS = -ffreestanding -I$(INCLUDE_DIR) -c 


all: build_entry build_kernel build_elf 

build_entry:
	@echo "-- [ BUILD entry & multiboot ] -- "
	$(AS) $(AS_FLAGS) $(MULTIBOOT_FILE) -o $(OBJ_DIR)multiboot.o
	$(AS) $(AS_FLAGS) $(ENTRY_FILE) -o $(OBJ_DIR)entry.o

build_kernel:
	$(CC) $(CC_FLAGS) $(KERNEL_DIR)kernel.c -o $(OBJ_DIR)kernel.o
	$(AS) $(AS_FLAGS) $(ARCH_DIR)$(ARCH)/port.asm -o $(OBJ_DIR)port.o

build_elf:
	$(LD) $(LD_FLAGS) $(OBJ_FILE) -o $(ROPLIX_FILE)

setup:
	rm -rf $(BUILD_DIR)
	mkdir -p $(BIN_DIR) $(ELF_DIR) $(OBJ_DIR)

