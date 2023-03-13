[org 0x100]

;Write a program to find the maximum of two
;numbers using direct addressing mode.

jmp start
num1: dw 14
num2: dw 12

start:
mov ax, [num1]
mov bx, [num2]
cmp ax, bx
jae maxAx
mov cx, bx
jmp exit

maxAx:
mov cx, ax

exit:
mov ax, 0x4c00
int 0x21