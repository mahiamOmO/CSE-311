.model small          ; Set the memory model to small (for small programs)
.stack 100h           ; Allocate 256 bytes of stack space

.code
main proc             ; Start of the main procedure

    ; Read the first character from the user
    mov ah,1          ; Set DOS function 1 (Read a character from the keyboard)
    int 21h           ; Call DOS interrupt 21h, character entered by the user is stored in AL
    mov bl,al         ; Move the value of AL (the first character entered) into BL
    
    ; Read the second character from the user
    mov ah,1          ; Set DOS function 1 (Read a character from the keyboard)
    int 21h           ; Call DOS interrupt 21h, character entered by the user is stored in AL
    mov bh,al         ; Move the value of AL (the second character entered) into BH
    
    ; Print the first character stored in BL
    mov ah,2          ; Set DOS function 2 (Display character)
    mov dl,bl         ; Move the value of BL (first character entered) into DL
    int 21h           ; Call DOS interrupt 21h to print the character in DL
    
    ; Print the second character stored in BH
    mov ah,2          ; Set DOS function 2 (Display character)
    mov dl,bh         ; Move the value of BH (second character entered) into DL
    int 21h           ; Call DOS interrupt 21h to print the character in DL

    ; Exit the program
exit:
    mov ah,4ch        ; Set DOS function 4Ch (Terminate program)
    int 21h           ; Call DOS interrupt 21h to exit the program

main endp             ; End of the main procedure
end main              ; End of the program
