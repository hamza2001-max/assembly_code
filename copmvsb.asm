[org 0x100]
;Write a program that copies a string to another memory 
;location and displays the copied string.
jmp start
source: db 'hello'
dest: times 5 db 0

start:
mov cx, 5
mov si, source
mov di, dest

cld
rep movsb

mov ax, 0x4c00
int 0x21
