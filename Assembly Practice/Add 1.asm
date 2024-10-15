; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


MOV AL, VAR   ; Move the value of VAR (10) into AL
MOV BL, XYZ   ; Move the value of XYZ (3) into BL

ADD AL, BL    ; Add AL and BL (10 + 3 = 13)

HLT           ; Halt the program

VAR DB 10     ; Define VAR with a value of 10
XYZ DB 3      ; Define XYZ with a value of 3
 

ret




                              