[org 0x100]

;apply bubble sort to order the 
;numbers in ascending order.

jmp start
list: dw 5, 4, 3, 2, 1
flag: db 0

start:
mov dx, 4

outerloop:
mov byte[flag], 0
mov si, 0
mov cx, 4
dec dx

innerLoop:
mov ax, [list + si]
cmp ax, [list + si + 2]
ja swap
jmp doNothing

swap:
mov bx, [list + si + 2]
mov [list + si + 2], ax
mov [list + si], bx
mov byte[flag], 1

doNothing:
add si, 2
loop innerLoop

cmp byte[flag], 0
je exit
cmp dx, 0
jne outerloop

exit:
mov ax, 0x4c00
int 0x21
