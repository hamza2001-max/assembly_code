[org 0x100]

;create a fibonacci series.

mov ax, 1
mov bx, 1

fib:
mov cx, ax
add ax, bx
mov bx, cx
jmp fib

mov ax, 0x4c00
int 0x21