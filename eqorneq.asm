org 0x100
;Compare two strings and determine if they are equal. 
;Print "Equal" if they are else "Not Equal".

jmp start

source: db 'hello'
dest: db 'hello'
eq: db 'equal'
nteq: db 'not equal'
result: db 0

start:
mov si, source
mov di, dest
mov cx, 5

repe cmpsb
je equal
jne notEqual

equal:
mov si, eq
mov di, result
mov cx, 5

eqPrint:
lodsb
stosb
loop eqPrint
jmp exit

notEqual:
mov si, nteq
mov di, result
mov cx, 9

ntPrint:
lodsb
stosb
loop ntPrint

exit:
mov ax, 0x4c00
int 0x21
