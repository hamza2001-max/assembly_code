org 0x100
;Modify the program to count the number of matching characters 
;in the compared strings and print the count.
jmp start
source: db 'heldo'
dest: db 'hello'

start:
mov cx, 5
mov bx, 0
mov si, source
mov di, dest

check:
cmpsb
jz nte
back:
loop check
jmp exit

nte:
inc bx
jmp back

exit:
mov ax, 0x4c00
int 0x21
