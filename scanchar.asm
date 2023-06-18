org 0x100
;searche for a specific character in a string. Scan a given string to find 
;the occurrence of that character. Print the position of the character if found.
jmp start
source: db 'hello'
index: db 0

start:
mov di, source
mov cx, 5
mov bx, 0
mov al, 'o'

srch:
scasb
je equal
inc bx
loop srch
jne exit

equal:
mov [index], bx
jmp exit

exit:
mov ax, 0x4c00
int 0x21
