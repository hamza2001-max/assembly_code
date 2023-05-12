[org 0x100]

;apply 4 bit multiplication

jmp start
multiplicand: db 13 ;1101
multiplier: db 5 ;101
result: db 0 

start:
mov bl, [multiplicand]
mov dl, [multiplier]
mov cl, 4

checkpoint:
shr dl, 1
jnc skip
add [result], bl
skip:
shl bl, 1
dec cl
jnz checkpoint

mov ax, 0x4c00
int 0x21