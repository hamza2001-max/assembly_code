[org 0x100]
jmp start
;Write an assembly program to check whether 
;a number is prime or not.

flag: db 1
 
start:
mov ax, 7
mov bx, ax
mov cx, ax

checkLoop:
cmp cx, ax
je skip
cmp cx, 1
je skip
div cx
cmp dx, 0
je notPrime
jmp skip

notPrime:
mov byte[flag], 0
jmp exit

skip:
mov ax, bx
loop checkLoop

exit:
mov ax, 0x4c00
int 0x21


