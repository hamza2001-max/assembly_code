[org 0x100]

;Using NASM, calculate the factorial of the
;following numbers:
;6, 7, 8
;Use JMP, JZ and JNZ instruction

mov ax, 6
mov cx, 5
jmp sixFac

sixFac:
mul cx
dec cx
jz sixNext
jnz sixFac

sixNext:
mov ax, 7
mov cx, 6
jmp sevenFac

sevenFac:
mul cx
dec cx
jz sevenNext
jnz sevenFac

sevenNext:
mov ax, 8
mov cx, 7
jmp eightFac

eightFac:
mul cx
dec cx
jz exit
jnz eightFac

exit:
mov ax, 0x4c00
int 0x21