[org 0x100]
jmp start

;Write an assembly language program that 
;finds out the largest and smallest number 
;in an array. Store the largest and smallest 
;numbers in separate variables.

list: dw 3, 5, 2, 1, 4, 6

start:
mov ax, 5
mov bx, 0
mov cx, 6
mov dx, 0
jmp check

max:
mov dx, [list + bx]
jmp back1

min:
mov ax, [list + bx]
jmp back2

check:
cmp ax, [list + bx]
ja max

back1:
cmp dx, [list + bx]
jb min

back2:
add bx, 2
loop check

mov ax, 0x4c00
int 0x21

