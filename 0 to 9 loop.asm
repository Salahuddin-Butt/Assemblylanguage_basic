.model small
org 100h
.data 
.code

main proc
     
    mov cx,10
    mov dl,48
    l1:
    mov ah,2
    int 21h  
    inc dl 
    loop l1
    
    mov ah,4ch
    int 21h
    main endp