.model small
include "emu8086.inc"
org 100h
.data
.code

    main proc
        print "Enter a Operator.i.e(+,-,*,/):"
        mov ah,1
        int 21h
        mov cl,al
        printn
        
        print "Enter First value:"
        mov ah,1 
        int 21h
        mov dl,al
       ; add dl,48
        
        printn
        
        print "Enter Second value:"
        mov ah,1  
        int 21h
       ; add al,48
        
        printn
        
          
        cmp cl,'+'
        je lab1
        
         cmp cl,'-'
        je lab2
           
          cmp cl,'*'
        je lab3
               
         cmp cl,'/'
        je lab4
        
        print "Invalid Operation"
       mov ah,4ch
        int 21h                
                
           lab1:
              print "The Addition is:"
        add dl,al 
        sub dl,48  
        mov ah,02h 
        int 21h
        mov ah,4ch
        int 21h                          
           
        lab2: 
             print "The Subtraction is:"
        sub dl,al
        add dl,48 
        mov ah,02h 
        int 21h
        mov ah,4ch
        int 21h
                   
         lab3:  
         print "The Multiplication is:"
         mul dl 
         mov ah,02h 
         int 21h
         mov ah,4ch
         int 21h
                    
        lab4: 
        print "The Division is:"
        div dl
        mov ah,02h 
        int 21h
        mov ah,4ch
        int 21h                                    
                   main endp