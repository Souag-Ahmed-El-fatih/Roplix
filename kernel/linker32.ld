ENTRY(entry32)

SECTIONS
{
    . = 1M;

    .multiboot : ALIGN(4096)
    {
        *(.multiboot)
    }

    .text : ALIGN(4096)
    {
        *(.text*)
    }

    .rodata : ALIGN(4096)
    {
        *(.rodata*)
    }

    .data : ALIGN(4096)
    {
        *(.data*)
    }

    .bss : ALIGN(4096)
    {
        *(.bss*)
    }
}
