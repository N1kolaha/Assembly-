section .text
global main
%include "io.inc"
section .data
y db 0
section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov ax,16
    mov bl,3
    div bl
    mov ah,0
   mov [y],al
    mov bx,8
    shl bx,1
    mov ax,[y]
    sub ax,bx
    mov bx,5
    xchg ax,bx
    mov ah,3
    imul ah
    add ax,bx
   mov bx,15
   xchg ax,bx
   mov cl,6
   div cl
   mov ah,0
   xchg ax,bx
   div bl
    PRINT_DEC 1, ax
    ret