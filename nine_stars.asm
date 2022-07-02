section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, stars
    mov edx, 9
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, endl
    mov edx, 1
    int 0x80

    mov eax, 1
    int 0x80

section .data
    msg db 'Displaying 9 stars', 0xa
    len equ $ - msg
    stars times 9 db '*'
    endl db 0xa