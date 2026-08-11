

BITS 32

global entry32
extern kernel_main

section .text
    ; this entry for 32-bit
    entry32:
        ; we chek the eax value
        cmp eax, 0x2BADB002
        jz .call_kernel
        jmp .exit_kernel
        .call_kernel:
            push ebx ; ebx have multiboot info pointer
            mov esp, stack.bottom ; set reg esp stack
            call kernel_main 
            pop ebx 
        .exit_kernel:
            ; in this i think add function for shutdown
            jmp $

; ------- stack  ----------
section .bss
    stack:
        .bottom:
            resb 4096
        .top:
