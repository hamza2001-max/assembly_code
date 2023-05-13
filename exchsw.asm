[org 0x100]
jmp start

;Take 16-bit 8 values (1,2,3,4,5,6,7,8) and replace each of
;them with 0A using STOSW.
;DF must be = 1

list: dw 1, 2, 3, 4, 5, 6, 7, 8
value: dw 10

start:
std
mov di, list
mov ax, [value]
mov cx, 8
add di, 16
sub di, 2
rep STOSW

mov ax, 0x4c00
int 0x21