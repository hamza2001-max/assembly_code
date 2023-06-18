[org 0x100]
;Extend the program to find and count the total number of 
;occurrences of the specified character in the string.
jmp start
source: db 'hello'
index: db 0

start:
mov di, source
mov cx, 5
mov bx, 0
mov al, 'l'

srch:
scasb
je equal
back:
loop srch
jmp exit

equal:
inc bx
jmp back
jmp exit

exit:
mov ax, 0x4c00
int 0x21
