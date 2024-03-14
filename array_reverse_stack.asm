.model small
include 'emu8086.inc '
org 100h
.data
arr db 2,3,4,5,6 
.code
main proc  
    
    mov ax,@data
    mov ds,ax
    lea si,arr
    mov cx,5
    l1:
    mov bx,[si]
    push bx
    inc si
    loop l1
    
    mov cx,5
    l2:
    pop dx
    add dx,48
    mov ah,2
    int 21h
    
    loop l2
    mov ah,4ch
    
     main endp
    
     

    