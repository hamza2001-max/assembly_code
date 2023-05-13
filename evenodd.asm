[org 0x100]

jmp start

;Write an assembly program to store all the
;odd/even numbers from 1 to 20 in respective arrays
;using loops and compare instructions.

odArr: dw 0, 0, 0, 0, 0
evArr: dw 0, 0, 0, 0, 0

sort:
push ax
push cx
push di

mov ax, 0
mov bx, 0
mov cx, 10

mov di, odArr

nextNum:
mov di, odArr
add di, ax

test cx, 1
jz evSort
mov [di], cx
add ax, 2
jmp nextNumLoop

evSort:
mov di, evArr
add di, bx
mov [di], cx
add bx, 2

nextNumLoop:
loop nextNum

pop ax
pop cx
pop di
ret

start:
call sort

mov ax, 0x4c00
int 0x21
