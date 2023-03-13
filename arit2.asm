[org 100h]

;perform the following operation.
;100 / (5 * 2)

mov ax, 5
mov bx, 2
mul bx
mov bx, ax
mov ax, 100
div bx

ret

