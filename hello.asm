; Hello World em assembly!!!!


section .data
    msg db 'Primeiro programa em assembly!'
    tam equ $- msg
  
section .text

global _start ; label que vai chamar o programa

_start: 
    mov eax, 0x4
    mov ebx, 0x1 
    mov ecx, msg 
    mov edx, tam
    int 0x80
saida:
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

    ; transpor a base para hexadecimal
    ; 1 2 3 4 5 6 7 8 9 a b c d e f 10=16  
    



