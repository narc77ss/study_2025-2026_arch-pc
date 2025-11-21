%include 'in_out.asm'

SECTION .data
msg1 db 'Введите B: ', 0h
msg2 db 'Наименьшее число: ', 0h
A dd 95
C dd 61

SECTION .bss
min resb 10
B resb 10

SECTION .text
GLOBAL _start
_start:

mov eax, msg1
call sprint

mov ecx, B
mov edx, 10
call sread

mov eax, B
call atoi
mov [B], eax

mov eax, [A]
mov [min], eax

mov eax, [min]
cmp eax, [C]
jle check_B
mov eax, [C]
mov [min], eax

check_B:
mov eax, [min]
cmp eax, [B]
jle print_result
mov eax, [B]
mov [min], eax

print_result:
mov eax, msg2
call sprint
mov eax, [min]
call iprintLF

call quit
