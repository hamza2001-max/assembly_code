[org 0x100]

;Write a program to calculate the sum of first 10
;values using indirect addressing mode.

jmp start

num: dw 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

start:
xor ax, ax
mov bx, 0

sum:
add ax, [num+bx]
add bx, 2
cmp bx, 20
je exit
jmp sum

exit:
mov ax, 0x4c00
int 0x21