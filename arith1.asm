[org 100h]

;perform the following operation.
;(8 + 2) * (10 - 6)

mov ax, 8
add ax, 2
mov bx, 10
sub bx, 6
mul bx

ret