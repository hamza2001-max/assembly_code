org 0x100

;perform the following operation.
;(11⁴)+7-(2*3+4)+33

mov ax, 1
mov bx, 11
mov cx, 4
jmp powerLoop

powerLoop:
mul bx
dec cx
jz done
jmp powerLoop

done:
mov cx, ax
mov ax, 2
mov bx, 3
mul bx
add ax, 4
add ax, 33
add cx, 7

mov bx, cx
mov cx, ax
mov ax, bx
sub ax, cx

mov ax, 0x4c00
int 0x21

