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
    
    sub dl,bl
    add dl,48
    sub dl,cl
    add dl,48    
    mov ah,2
    int 21h
     
      main endp 