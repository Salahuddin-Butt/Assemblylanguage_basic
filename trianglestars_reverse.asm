.model small
include "emu8086.inc"
org 100h
.data
.code
main proc
      mov bx,5
      mov cx,5
      l1:
      push cx
      mov cx,bx
      l2:
      mov dx,'*'
      mov ah,2
      int 21h
      loop l2
      printn
      dec bx
      pop cx
      loop l1
      mov ah,4ch
      int 21h
        
        main endp

    