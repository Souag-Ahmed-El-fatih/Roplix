
BITS 32

global outB
global inB
global outW
global inW


outB:
  mov eax, [esp+4] ; value
  mov edx, [esp+8] ; port
  out dx, al
  ret

inB:
  mov eax, 0
  mov dx, [esp+4] ; port
  in al, dx
  ret


outW:
  mov eax, [esp+4]
  mov edx, [esp+4]
  out dx, ax
  ret

inW:
  mov eax, 0
  mov edx, [esp+4]
  in ax, dx
  ret
