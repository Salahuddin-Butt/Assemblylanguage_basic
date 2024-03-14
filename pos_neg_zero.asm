.model small
org 100h
.data 
msg1 db 10,13,"Enter Value:$"
msg2 db 10,13,"Number is Positive:$"
msg3 db 10,13,"Number is negative:$" 
msg4 db 10,13,"Numer is Zero:$"
.code

main proc
     
   mov ax,@data
   mov dx,ax
    lea dx,msg1
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov cl,'0'
    mov bl,al
    add bl,48 
    add cl,48
    int 21h 
   
    
    
    
    cmp cl,bl
    jz label3
    jng label1
    jnl label2
    
    
     label3:
    lea dx,msg4
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    
     label1:
    lea dx,msg2
    mov ah,9
    int 21h
    mov  ah,4ch
    int 21h
      
     label2:
    lea dx,msg3
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    
       

   
    main endp