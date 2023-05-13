[org 0x100]
jmp start

;Write a program that takes an array of integers and
;outputs the index of the first occurrence of the number
;42. Use JE and JZ to check if the current element in the
;array is equal to 42.

array: dw 45, 23, 12, 65, 32, 76, 55, 42, 6, 4, 74
value: dw 42
index: dw 0

start:
mov bx, 0
mov dx, 0

search:
mov ax, [array + bx]
cmp ax, [value]
je exit
add bx, 2
inc dx
jmp search 

exit:
mov [index], dx
mov ax, 0x4c00
int 0x21