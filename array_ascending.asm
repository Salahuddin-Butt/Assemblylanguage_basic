.model small
include 'emu8086.inc '
org 100h
.data
array db 5 dup(?)  
.code
main proc 
    mov ax,@data
    mov ds,ax
    print "Enter Array Elements"
    mov cx,5
    mov bx,offset array
    mov ah,1
    inputs:
    int 21h
    mov [bx] ,al
    inc bx
    
    loop inputs
    mov cx,5
    dec cx
    outerloop:
    mov bx,cx
    mov si,0
    
    comploop:
    mov al,array[si]
    mov dl,array[si+1]
    
    cmp al,dl 
    jc noswap
    mov array[si],dl
    mov array[si+1],al
    
    noswap:
    inc si
    dec bx
    
    jnz comploop
    loop outerloop
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    print "After swap Ascending Order is:"
    mov cx,5
    mov bx,offset array
    
    outputs:
    mov dl,[bx]  
    mov ah,2
    int 21h
    mov dl,32
    mov ah,2
    int 21h
    
    inc bx
    loop outputs
     
     main endp
 end main