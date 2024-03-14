.model small
include 'emu8086.inc '
org 100h
.data 
.code
main proc  
    
     print "Salahuddin Nasir"
     
     call newline
     
     print "Bscs-A"
     
     call newline
     
     print "31"
     
     main endp


   newline proc
    
    
    mov dl, 10
    mov ah,2
      int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    
    
        ret
     newline endp
    
     

    