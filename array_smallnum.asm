.model small
org 100h
.data 
msg1 db "Smallest Value is:$"
arr db 2,3,4,5,6
.code

main proc
     
   mov ax,@data
   mov dx,ax
   
   lea si,arr
   mov cx,5
   mov bl,[si]
   
    
    loopp:
    cmp [si],bl
    
    jle small
    compare:
    inc si
    loop loopp
    
    lea dx,msg1
    add bl,48
    mov dl,bl
    mov ah,2
    int 21h
    mov dl,32
    int 21h  
    
    small:
    mov bl,[si]
    jmp compare
    mov dl,[si]
    mov ah,4ch
    int 21
  
    

    main endp