extern io_newline,io_print_string
section .data
    input db 'I LOVE ASSEMBLER',0  
   
section .bss
 output  resb 0    

section .text
    global main

main:
    mov ebp, esp; for correct debugging
    lea esi, [input]  
    lea edi, [output] 

loop:
cmp byte [esi],0            
    je end          
  lodsb            
   stosb 
   stosb  
   jmp loop    

end:
mov eax, output
call io_print_string 
ret