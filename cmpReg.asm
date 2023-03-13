[org 0x100]

;Using emu8086, initialize three registers and
;calculate the sum of any two of the registers. After
;summation, compare the result with the third
;register
;If results are equal clear all the registers and exit
;Else exit
;Use JMP and JE instruction

mov ax, 23
mov bx, 24
mov cx, 47
jmp summation

summation:
add ax, bx
cmp ax, cx
je equal
jmp exit

equal:
xor ax, ax
xor bx, bx
xor cx, cx
jmp exit

exit:
mov ax, 0x4c00
int 0x21