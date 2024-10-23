.model small      ; Defines memory model as small (64KB code and 64KB data)
.stack 100h       ; Reserves 256 bytes of stack space
.code             ; Begins code segment

main proc         ; Main procedure starts here
    mov ah,1      ; Prepare to use DOS interrupt 21h, function 1: input a character
    int 21h       ; Call interrupt 21h to read a character from the keyboard
    mov bl,al     ; Store the character in register BL (AL contains the input character)

    mov ah,2      ; Prepare to use DOS interrupt 21h, function 2: display a character
    mov dl,bl     ; Move the character stored in BL to DL (DL holds the character for output)
    int 21h       ; Call interrupt 21h to display the character

exit:             ; Exit label
    mov ah,4ch    ; DOS interrupt 21h, function 4Ch: terminate the program
    int 21h       ; Call interrupt 21h to exit

main endp         ; End of the main procedure
end main          ; End of the program
