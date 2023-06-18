[org 0x100]

jmp start
dividend: db 8
divisor: db 2
acc: db 0
counter: db 8
quotient: db 0
remainder: db 0

start:
mov bl,[divisor]
mov al,[dividend]
mov ah,[acc]
mov cl,[counter]

outerloop:
shl ax, 1
sub ah, bl
mov dl, ah
shr ah, 7
cmp ah, 1
mov ah, dl
je equal
add al, 1
jmp skip
equal:
add al, 0
add ah, bl
skip:
sub cl, 1
cmp cl, 0
je terminate
jne outerloop


terminate:
mov [quotient], al
mov [remainder], ah

mov ax, 0x4c00
int 0x21
