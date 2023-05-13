[org 0x100]

mov al, 5
mov bl, -13

not bl
inc bl

sub al, bl
dec al
not al

mov ax, 0x4c00
int 0x21
