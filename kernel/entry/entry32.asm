

BITS 32

global entry32
extern kernel_main

section .text
    entry32:
        push eax
        push ebx
        mov esp, stack.bottom
        call kernel_main
        pop ebx
        pop eax
        jmp $

section .bss
    stack:
        .bottom:
            resb 4096
        .top:
