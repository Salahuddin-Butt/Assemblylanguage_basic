.model small
include "emu8086.inc"
.stack 100h
.data
array db 4 ?  
.code
main proc 
    mov ax,@data
    mov ds,ax
    
     
    lea si,array
    mov cx,4
     print " input array values:"
     loopb:
    
   
    mov ah,1
    int 21h  
    mov [si],al
    
    inc si
    loop loopb
    lea si,array
    mov cx,4
    print "Array Values Are:"
     
     
     loopa:
    mov bl,[si]
    mov dl,bl
    mov ah,2
    int 21h
    
    inc si
    loop loopa
     
    
     
     main endp
 end main