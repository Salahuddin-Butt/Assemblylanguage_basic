.model small
include "emu8086.inc"
org 100h
.data
.code

    main proc
        print "Enter a Character:"  
        
        mov ah
       
        int 21h
         printn
         
         
         
         cmp al,'a'
        cmp al,'A'
        
        je equal1
        print "The Character You enterd is not Vowel "   
        printn
        mov ah,4ch
        int 21h     
        
                                                              
                                                              
                                                              
          cmp al,'e'
        cmp al,'E'
        je equal1
        print "The Character You enterd is not Vowel "   
         printn
        mov ah,4ch
        int 21h 
        
        
        
        
          cmp al,'i'
        cmp al,'I'
        je equal1
        print "The Character You enterd is not Vowel "  
         printn
        mov ah,4ch
        int 21h 
        
        
        
        
          cmp al,'o'
        cmp al,'O'
        je equal1
        print "The Character You enterd is not Vowel "   
         printn
        mov ah,4ch
        int 21h 
                                                         
            cmp al,'u'
        cmp al,'U'
        je equal1
        print "The Character You enterd is not Vowel " 
         printn
        mov ah,4ch
        int 21h                                                    
                                                         
        
        
                equal1:
         print "The Character You enterd is  VOWEL"      
         printn
                  mov ah,4ch
                  int 21h  
                    
       
                   main endp
                         




