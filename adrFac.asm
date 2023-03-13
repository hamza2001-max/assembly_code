[org 0x100]

;Write a program to calculate the factorial of a
;number using direct addressing mode.

jmp start
num: db 5

start:
mov al, [num]
mov cl, al
dec cl

fac:
jz exit
mul cl
dec cl
jmp fac

exit:
mov ax, 0x4c00
int 0x21