[org 0x100]

;create the table of 2.

mov ax, 0
mov cx, 10
jmp table

table:
add ax, 2
dec cx
jz exit
jmp table

exit:
mov ax, 0x4c00
int 0x21