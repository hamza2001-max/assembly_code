[org 0x100]
;print a string in reverse
jmp start
string: db 'hello world'
dest: db 0

start:
xor ax, ax
mov cx, 11
mov si, string
add si, cx
dec si
mov di, dest

revstr:
lodsb
stosb
sub si, 2
loop revstr

mov ax, 0x4c00
int 0x21

