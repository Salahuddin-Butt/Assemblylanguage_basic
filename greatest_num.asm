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
        jng label1
        cmp   bl,cl
        jng  label2
        
         label1:
         print "Greatest Value is:"
         mov ah,2
         int 21h
         mov ah,4ch
         int 21h
         
         
        cmp dl,cl
        jng label3
        
        
        label2:
        print "Greatest Value is:"
        mov dl,bl
        mov ah,2
        int 21h
        mov ah,4ch
        int 21h
        
        label3: 
        print "Greatest Value is:"
        mov ah,2
        int 21h
        mov ah, 4ch
        int 21h
       
        
       main endp
end main
   