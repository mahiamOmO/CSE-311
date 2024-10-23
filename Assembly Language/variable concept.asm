.model small      ; Define memory model as small (64KB code and 64KB data)
.stack 100h       ; Reserve 256 bytes of stack space
.data             ; Begin data segment
msg db 3          ; Define 'msg' and initialize it with the value 3
.code             ; Begin code segment

main proc         ; Main procedure starts
    mov ax, @data ; Load data segment address into AX
    mov ds, ax    ; Move it to DS register to access data segment

    ; Convert 'msg' to its ASCII equivalent and print it
    mov al, msg   ; Move the value of 'msg' (3) into AL register
    add al, 48    ; Convert the number to its ASCII code by adding 48 (for '0')
    
    mov dl, al    ; Move the converted value into DL for printing
    mov ah, 2     ; DOS interrupt 21h, function 2: print a character
    int 21h       ; Call interrupt to print the character

exit:
    mov ah, 4ch   ; DOS interrupt 21h, function 4Ch: terminate the program
    int 21h       ; Exit the program
main endp         ; End of the main procedure
end main          ; End of the program
