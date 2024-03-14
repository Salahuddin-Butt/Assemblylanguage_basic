.model small
include "emu8086.inc"
.stack 100h
.data
.code
main proc 
        
        print "input 1st number:"
        mov ah,1
        int 21h
        mov dl,al
        
        print "input 2nd number:"
        mov ah,1
        int 21h
        mov bl,al
        
        print "input 3rd number:"
        mov ah,1
        int 21h
        mov cl,al
        
        cmp dl,bl
        jnl label1
        cmp   bl,cl
        jnl  label2 
         cmp dl,cl
        jnl label3
        
        label1:
        print "Smalllest Value is:"
        mov ah,2
        int 21h
        mov ah,4ch
        int 21h
        
        
        label2:
        print "Smallest Value is:"
        mov dl,bl
        mov ah,2
        int 21h
        mov ah,4ch
        int 21h
        
        label3: 
        print "Smallest Value is:"
        mov ah,2
        int 21h
        mov ah, 4ch
        int 21h
       
        
       main endp
end main
   