.model small
org 100h
.data 
msg1 db 10,13,"Enter First Value:$"
msg2 db 10,13,"Enter Second Value:$"
msg3 db 10,13,"Both Sides Are Equal:$"
msg4 db 10,13,"Both sides are notequal:$"
.code

main proc
     
   mov ax,@data
   mov dx,ax
    lea dx,msg1
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov bl,al
    lea dx,msg2
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov cl,al
    int 21h
    
    cmp bl,cl
    je label1
     
    lea dx,msg4
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    
     label1:
    lea dx,msg3
    mov ah,9
    int 21h
    mov  ah,4ch
    int 21h
   
    main endp