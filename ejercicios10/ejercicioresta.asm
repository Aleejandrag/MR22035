section .data
    Resultado db "0"
    msg db "El resultado de la resta es: "
    SigLinea db 13, 10
    len_msg equ $ - msg

section .text
    global _start

_start:
    
    mov ax, 10          
    sub ax, 5
    sub ax, 5

    
    add ax, '0'        
    mov [Resultado], al

    
    mov eax, 4          
    mov ebx, 1         
    mov ecx, msg        
    mov edx, len_msg   
    int 80h             

  
    mov eax, 4          
    mov ebx, 1          
    mov ecx, Resultado 
    mov edx, 1          
    int 80h             

    
    mov eax, 4          
    mov ebx, 1          
    mov ecx, SigLinea   
    mov edx, 2          
    int 80h             

    
    mov eax, 1          
    xor ebx, ebx        
    int 80h

