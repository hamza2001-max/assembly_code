[org 100h]

;perform the following operation.
;2 * (5 + 6) - 3 * (4 + 1)

mov ax, 5
add ax, 6
mov bx, 2
mul bx

mov cx, ax
mov ax, 4
inc ax
mov bx, 3
mul bx

sub cx, ax

ret


