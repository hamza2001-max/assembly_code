[org 0x100]

;Division: Use LOOPZ or LOOPNZ to subtract a number
;repeatedly.
;Set CX = 5

mov ax, 50
mov bx, 5
mov cx, 5
mov dx, 0
divloop:
sub ax, bx
inc dx
loopnz divloop

mov ax, 0x4c00
int 0x21