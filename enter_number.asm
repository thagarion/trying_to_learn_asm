section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, ask
    mov edx, ask_len
    int 80h

    mov eax, 3
    mov ebx, 2
    mov ecx, num
    mov edx, 5
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, answ
    mov edx, answ_len
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, num
    mov edx, 5
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, endl
    mov edx, 1
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 80h

section .data
    ask db 'Please enter a number: '
    ask_len equ $-ask
    answ db 'You have entered: '
    answ_len equ $-answ
    endl db 0xa

section .bss
    num resb 1
