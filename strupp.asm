[org 0x100]
jmp start
;Read a string from the input, convert it to uppercase, and
;store it in memory.
string: db 'hello world'
dest: db 0
start:
xor ax, ax
mov cx, 11
mov si, string
mov di, dest

strupp:
lodsb
cmp al, 'a'
jb skip
cmp al, 'z'
ja skip
sub al, 32
skip:
stosb
loop strupp

mov ax, 0x4c00
int 0x21

