%include "io.inc"

section .data
    a dd 5   ; Первое число для сложения
    b dd 10 ; Второе число для сложения
    sum dd 0           ; Результат сложения

section .text
global main
summa:
    push ebp            
    mov ebp, esp        

    mov eax, [ebp + 8]  
    add eax, [ebp + 12] 

    pop ebp            
    ret                 

main:
    mov ebp, esp        

   
    push dword [a]
    push dword [b]

    call summa     

  
    mov [sum], eax

 
    add esp, 8

    
    PRINT_UDEC 4, eax
    NEWLINE

    xor eax, eax        
    ret