[org 100h]

;exhange the values between the registers.
mov ax, 2
mov bx, 3

mov cx, ax
mov ax, bx
mov bx, cx

ret