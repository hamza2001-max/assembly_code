[org 0x100]

;Write a Procedure that takes 3 numbers as an argument.
;Calculate the sum of numbers and return the sum. 
jmp start

sum:
push bp
mov bp, sp

push ax
push bx
push cx

mov ax, [bp+8]
mov bx, [bp+6]
mov cx, [bp+4]

add ax, bx
add ax, cx


pop cx
pop bx
pop ax
pop bp
ret 6

start:
mov ax, 23
mov bx, 45
mov cx, 12

push ax
push bx
push cx
call sum

mov ax, 0x4c00
int 0x21