.model small
org 100h
.data 
msg1 db "Array Values are:$"
arr db 2,3,4,5,6
.code

main proc
     
   mov ax,@data
   mov dx,ax
   
   lea si,arr
   mov cx,5
   
    lea dx,msg1
    mov ah,9
    int 21h
    
    loopp:
    mov dl,[si]
    add dl,48
    mov ah,2
    int 21h
    mov dl,32
    int 21h
    
    inc si
    loop loopp
    

    main endp