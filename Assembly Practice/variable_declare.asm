
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt  



; VARIABLE DECLARATION

org 100h         

MOV AL, [VAR]    ; Load the value of VAR (10) into AL
MOV BL, [XYZ]    ; Load the value of XYZ (3) into BL

ADD AL, BL       ; Add BL to AL (AL = AL + BL)
MOV [RES], AL    ; Store the result of AL (13) into the memory location RES

HLT              ; Halt the program

VAR DB 10        ; Define VAR with a value of 10
XYZ DB 3         ; Define XYZ with a value of 3
RES DB 0         ; Reserve 1 byte for RES to store the result (initialized with 0)





                              