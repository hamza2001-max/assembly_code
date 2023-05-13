[org 0x100]

;Copy the contents of source_array to destination_array
jmp start

srcarr: dw 1, 2, 3, 4, 5
desarr: dw 0

start:
xor ax, ax
mov cx, 5

mov si, srcarr
mov di, desarr

coparr:
LODSW
STOSW
loop coparr

mov ax, 0x4c00
int 0x21
