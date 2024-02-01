%include "io.inc"  
  
section .data  
  
section .text  
global main  
main: 
    mov ebp, esp; for correct debugging  
    mov al, 11001110b  
    
    PRINT_UDEC 4, al 
    NEWLINE
  ;  and al, 00000000b 
   ; and al, 11111010b 
    rol al, 4  
    PRINT_UDEC 4, al  
    NEWLINE
    shr al,5
     PRINT_UDEC 4, al 
    NEWLINE
    not al
     PRINT_UDEC 4, al 
    NEWLINE
    xor eax, eax  
    ret