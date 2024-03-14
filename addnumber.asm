.model small
.stack 100h
.data
.code
main proc   
    mov ah,1
    int 21h
    mov dl,al
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    int 21h
    
    add dl,bl
    sub dl,48
    add dl,cl
    sub dl,48    
    mov ah,2
    int 21h
     
      main endp 