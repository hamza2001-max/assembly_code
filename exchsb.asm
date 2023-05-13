[org 0x100]
jmp start

;Take 8-bit 8 values (1,2,3,4,5,6,7,8) and replace each of
;them with 0B using STOSB.
;DF must be = 0

list: db 1, 2, 3, 4, 5, 6, 7, 8
value: db 11

start:
cld
mov di, list
mov al, [value]
mov cx, 8
rep STOSB

mov ax, 0x4c00
int 0x21


