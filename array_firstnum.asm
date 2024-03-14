.model small   
org 100h
.data 
arr db 2,3,4,5,6
msg db "Array Values are:$"
.code

main proc
     
   mov ax,@data
   mov dx,ax
   
   lea si,arr
   mov cx,1
   
   lea dx,msg
   mov ah,9
   int 21h
   
   looop:
   mov dl,[si]
   add dl,48
   mov ah,2
   int 21h
   
   inc si
   loop looop
   
    main endp