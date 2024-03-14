.model small
include 'emu8086.inc '
org 100h
.data
arr db 5 dup(?) 
.code
main proc  
    
    mov ax,@data
    mov ds,ax
    print "Enter Array Values"
    mov cx,5
    mov ah,1
   
    
    l1:  
    int 21h
    mov [bx],al
    
    inc bx
    push bx
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
    
     

    