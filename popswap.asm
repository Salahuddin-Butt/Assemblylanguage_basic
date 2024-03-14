.model small
include 'emu8086.inc'
org 100h
.data

.code
  main proc
     print "Enter 2 numbers to swap:"
     mov ah,1
     int 21h
     mov cx,ax
     
     mov ah,1
     int 21h
     mov bx,ax
     
     push cx
     push bx  
     
     pop cx
     pop bx
               
      mov dl,10
      mov ah,2
      int 21h
      
      mov dl,13
      mov ah,2
      int 21h         
               
     print "After Swapping:"
     
     mov dx,cx
     mov ah,2
     int 21h
     mov dx,bx
     
     mov ah,2
     int 21h
      
      main endp