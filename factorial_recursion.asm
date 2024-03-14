;Computer organization and assembly language.
;Write a program in assembly that displays the factorial of 5 using the recursion method.
;Following is the program:
.model small
org 100h
.data
num db ?
fact dw ?
input_msg db 'Enter a number (0-9): $'
output_msg db 10,13, 'Factorial is: $'
.code
main proc
    mov ax, @data
    mov ds, ax
    ; Display prompt for user input
    lea dx, input_msg
    mov ah, 09h
    int 21h
    ; Read user input
    mov ah, 01h
    int 21h
    sub al, '0'
    mov num, al
    ; Calculate factorial
    mov ax, 1
    mov bl, num
    call factorial
    mov fact, ax
    ; Display the result
    lea dx, output_msg
    mov ah, 09h
    int 21h
    ; Display the result value
    mov ax, fact
    call display_num
    ; Terminate program
    mov ah, 4ch
    int 21h
    main endp
factorial proc
    cmp bl, 1
    je back
    push bx
    dec bx
    call factorial
    pop bx
    mul bx
    back: ret
factorial endp
display_num proc
    mov bx, 10
    mov cx, 0
    ; Convert the number into a stack of its digits
    convert_loop:
        mov dx, 0
        div bx
        push dx
        inc cx
        test ax, ax
        jnz convert_loop
    ; Display each digit
    print_digits:
        pop dx
        add dl, '0'
        mov ah, 02h
        int 21h
        loop print_digits
    ret
display_num endp
end main
