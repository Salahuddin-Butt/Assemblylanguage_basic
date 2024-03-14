.model small
org 100h
.data
msg1 db "enter the number:$"
msg2 db 10,13, "number is even:$"
msg3 db 10,13, "number is odd:$"
.code
 main proc
    mov ax,@data
    mov dx,ax 
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    test al,1
    
    jz label1:
    lea dx,msg3
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
     label1:
    lea dx, msg2
    mov ah,9
    int 21h
     main endp
    
    
    


