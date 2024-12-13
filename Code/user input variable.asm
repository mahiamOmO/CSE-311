.model small          ; Set memory model to small (for small programs)
.stack 100h           ; Allocate 256 bytes of stack space

.data
msg db 3              ; Define a variable `msg` initialized with the value 3 (ASCII for '3')
msg1 db ?             ; Define a variable `msg1` which will hold a user input character (uninitialized)

.code
main proc             ; Start of the main procedure

    ; Initialize data segment
    mov ax,@data      ; Load the address of the data segment into register AX
    mov ds,ax         ; Move the value of AX into DS (Data Segment Register)

    ; Print the character stored in msg ('3')
    mov ah,2          ; Set DOS function 2 (Display character)
    add msg,48        ; Add 48 to `msg` (ASCII conversion, 3 + 48 = 51, which is the ASCII code for '3')
    mov dl,msg        ; Move the value of `msg` (now 51, ASCII for '3') into DL (Data Register)
    int 21h           ; Call DOS interrupt 21h to print the character in DL

    ; Input a character from the user and store it in msg1
    mov ah,1          ; Set DOS function 1 (Read a character from keyboard)
    int 21h           ; Call DOS interrupt 21h, the character entered will be stored in AL
    mov msg1,al       ; Move the value of AL (the character entered by the user) into `msg1`

    ; Print a newline and return carriage (to move the cursor to the next line)
    mov ah,2          ; Set DOS function 2 (Display character)
    mov dl,10         ; Load ASCII value 10 into DL (newline character '\n')
    int 21h           ; Call DOS interrupt 21h to print the newline

    mov dl,13         ; Load ASCII value 13 into DL (carriage return character '\r')
    int 21h           ; Call DOS interrupt 21h to print the carriage return (move cursor to start of line)

    ; Print the character stored in msg1 (the user input character)
    mov ah,2          ; Set DOS function 2 (Display character)
    mov dl,msg1       ; Move the value of `msg1` (the user input character) into DL
    int 21h           ; Call DOS interrupt 21h to print the character in DL

    ; Exit the program
exit:
    mov ah,4ch        ; Set DOS function 4Ch (Terminate program)
    int 21h           ; Call DOS interrupt 21h to exit the program

main endp             ; End of the main procedure
end main              ; End of the program
