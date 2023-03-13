[org 0x100]

;create a fibonacci series.

mov ax, 1
mov bx, 1
jmp fib

fib:
add ax, bx
add bx, ax
jmp fib

mov ax, 0x4c00
int 0x21