[org 0x100]
;Count the number of occurrences of a specific
;character in a string.
jmp start
string: db 'hello world'
dest: db 0

start:
xor ax, ax
mov cx, 11
mov bx, 0
mov si, string
mov di, dest

cntChar:
lodsb
cmp al, 'l'
jne skip
inc bx
skip:
loop cntChar

mov ax, 0x4c00
int 0x21