.model small
include "emu8086.inc" 
org 100h
.data
       fname db 'Salahuddin.txt',0 
       fhandle dw ?
       msg db 'Enter The Data $'
       buffer db 100 dup('$')
.code
   main proc    
        mov ax,@data
        mov ds,ax
        ;Create a File
      ;  mov ah,3ch
     ;   lea dx,fname
     ;   mov cl,0
     ;;    int 21h
      ;  jc if_error
     ;   mov fhandle,ax 
       ;Opening an existing File
        mov ah,3dh
        mov al,2
        lea dx,fname
        int 21h
        jc if_error
        mov fhandle,ax 
       ;Reading Data from the file
        mov ah,3fh
        lea dx,buffer
        mov cx,100
        mov bx,fhandle
        int 21h
        jc if_error
        lea dx,buffer
        mov ah,09h
        int 21h
    
        ;Writing text in File 
       ;  lea dx,msg   
      ;  mov ah,09h
      ;  int 21h
      ;  mov si,0
     ;  mov cx,0
    ;   again:
     ;   mov ah,01h
    ;    int 21h
     ;   cmp al,13
     ;   je exit
     ;   mov buffer[si],al
    ;   inc si
     ;   inc cx
    ;    jmp again 
    ;    exit:   
       mov ah,40h
       mov bx,fhandle
        lea dx,buffer
        ;mov cx
        int 21h
     
            ;Close a File
        mov ah,3eh
        mov bx,fhandle
        int 21h
        jc if_error
    
       
         mov ah,4ch
         int 21h    
           if_error:
         print "File cannot be created:"
         main endp
  
        
        
        