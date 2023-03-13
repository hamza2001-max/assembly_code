[org 0x100]

;find this sequence.
;1 2 3 6 7 14 15 30 31 62 63 126…

mov al, 1
mov bl, 2
add al, bl
jmp sequence

sequence:
mul bl
inc al
jmp sequence

mov ax, 0x4c00
int 0x21