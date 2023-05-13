[org 0x100]

jmp start

;Using NASM, initialize two registers one using
;direct and one using indirect address. After
;multiplication if the result is equal to 20 divide
;that by 5 else exit.

num1: dw 4,5

start:
mov ax, [num1]
mov bx, [num1 + 2]
mul bx
cmp ax, 20
jne exit
div bx

exit:
mov ax, 0x4c00
int 0x21