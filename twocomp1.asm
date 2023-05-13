[org 0x100]

mov al, 5
mov bl, -3

not bl
inc bl

sub al, bl

mov ax, 0x4c00
int 0x21