[org 0x100]

;Create a program that calculates the factorial of a given
;number. Use JNE and JNZ to check if the current
;number being multiplied is equal to 1.

mov ax, 5
mov cx, 4

onefac:
mul cx
cmp cx, 1
je exit
loop onefac

exit:
mov ax, 0x4c00
int 0x21