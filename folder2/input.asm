segment .data

    lf          equ 0xA ; '\n'
    null        equ 0xD ;finaliza strng
    so_call     equ 0x80 
    
    so_exit     equ 0x1
    so_read     equ 0x3 
    so_wrt      equ 0x4 

    r_exit      equ 0x0 
    std_in      equ 0x0  
    std_out     equ 0x1  


section .data
    msg db "Digite seu nome:", lf,null
    tam equ $- msg

section .bss
    nome resb 1

section .text

global _start

_start: 
    mov eax, so_wrt
    mov ebx, std_out
    mov ecx, msg
    mov edx, tam 
    int so_call

    mov eax, so_read
    mov ebx, std_in
    mov ecx, nome
    mov edx, 0xA
    int so_call

    mov eax, so_exit
    mov ebx, r_exit
    int so_call
