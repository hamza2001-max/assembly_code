[org 0x100]
jmp start
;Write “hello” into the memory and show the results in m2.

src: db 'hello world'
dest: db 0

start:
xor ax, ax
mov cx, 11
mov si, src
mov di, dest

printstr:
lodsb
stosb
loop printstr

mov ax, 0x4c00
int 0x21
