[org 0x100]

mov ax, 10

mov bx, 10

mov cx, 5

add_loop:

add ax, bx ; add BX to AX

mov bx,ax

loopnz add_loop ; loop ZF=1 and CX != 0

mov ax, 0x4c00

int 0x21