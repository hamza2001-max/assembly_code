[org 0x100]

;perform 8 bit multiplication.

jmp start
multiplicand: dw 255
multiplier: dw 240
result: dw 0

start:
mov bx, [multiplicand]
mov dx, [multiplier]
mov cx, 8

checkpoint
shr dx, 1
jnc skip
add [result], bx
skip:
shl bx, 1
loop checkpoint

mov ax, [result]
mov ax, 0x4c00
int 0x21