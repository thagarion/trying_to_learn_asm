section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, 9
    int 0x80

    mov [name], dword 'Nuha'

    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, 8
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, endl
    mov edx, 1
    int 0x80

    mov eax,1
    int 80h

section .data
    name db 'Zara Ali'
    endl db 0xa