.model small
include "emu8086.inc"
org 100h
.data
.code
main proc
      mov bx,1
      mov cx,5
      l1:
      push cx
      mov cx,bx
      l2:
      mov dx,'*'
      mov ah,2 
      int 21h
      loop l2
      printn
      inc bx
      pop cx
      loop l1
      int 21h  
      printn   
      
      
      
       mov bx,5
      mov cx,5
      l3:
      push cx
      mov cx,bx
      l4:    
      mov dx,'*'
      mov ah,2 
      int 21h
      loop l4
      printn
      dec bx
      pop cx
      loop l3
      int 21h  
      printn   
               
               
               
                 mov bx,1
      mov cx,5
      l5:
      push cx
      mov cx,bx
      l6:
      mov dx,'*'
      mov ah,2 
      int 21h
      loop l6
      printn
      inc bx
      pop cx
      loop l5
      int 21h  
      printn   
      
      
                     
                     
       mov bx,5
      mov cx,5
      l7:
      push cx
      mov cx,bx
      l8:
      mov dx,'*'
      mov ah,2 
      int 21h
      loop l8
      printn
      dec bx
      pop cx
      loop l7
      int 21h  
      printn   
      
   
      
        
        main endp

    