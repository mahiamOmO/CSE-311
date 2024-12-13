.model small          ; Set the memory model to small (for small programs)
.stack 100h           ; Allocate 256 bytes of stack space

.data
msg db 3              ; Define a variable `msg` initialized with the value 3 (ASCII value for '3')
msg1 db ?             ; Define a variable `msg1` which will be used for future input (uninitialized)

.code
main proc             ; Start of the main procedure

    ; Initialize data segment
    mov ax,@data      ; Load the address of the data segment into register AX
    mov ds,ax         ; Move the value of AX into DS (Data Segment Register)

    ; Print the character stored in msg ('3')
    mov ah,2          ; Set DOS function 2 (Display character)
    add msg,48        ; Add 48 to `msg` to convert the number 3 to the ASCII character '3' (3 + 48 = 51, ASCII for '3')
    mov dl,msg        ; Move the value of `msg` (now 51, ASCII for '3') into DL (Data Register)
    int 21h           ; Call DOS interrupt 21h to print the character in DL

    ; Exit the program
exit:
    mov ah,4ch        ; Set DOS function 4Ch (Terminate program)
    int 21h           ; Call DOS interrupt 21h to exit the program

main endp             ; End of the main procedure
end main              ; End of the program
