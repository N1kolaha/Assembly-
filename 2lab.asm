%include "io.inc"
section .data
x dd 0
a dd 0
y1 dd 0
y2 dd 0
y dd 0    
section .text
global main
main:
    ;write your code here
    GET_DEC 4, x
    GET_DEC 4, a
    xor eax, eax
    mov eax,[x]
    cmp eax,[a]
    jg xgreatera
    mov cx,5
    mov [y1],cx
    
    jmp y1end
    
    xgreatera:
    sub eax,[a]
    mov [y1],eax
    
    y1end:
    mov eax,[a]
    cmp eax,[x]
    
    jg agreaterx
    mov ebx,[x]
    mul ebx
    mov[y2],eax
    jmp y2end
    
    agreaterx:
    mov [y2],eax
    
    y2end:
    mov eax,[y1]
    mov ebx,[y2]
    mul ebx
    mov [y],eax
    PRINT_DEC 4, [y]
    
    ret