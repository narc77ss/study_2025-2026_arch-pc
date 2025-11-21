%include 'in_out.asm'
SECTION .data
msg: DB 'Введите значение переменной х: ',0
rem: DB 'Результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
    mov eax, msg
    call sprint
    
    mov ecx, x
    mov edx, 80
    call sread
    
    mov eax, x
    call atoi        
    
    mov ebx, eax     
    mul ebx          
    mul ebx          
    
    mov ecx, 3       
    xor edx, edx     
    div ecx          
    
    add eax, 21      
    
    mov edi, eax     
    
    mov eax, rem
    call sprint      
    
    mov eax, edi
    call iprint      
    
    call quit

