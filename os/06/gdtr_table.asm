; Define GDTR Data Structure
GDTR:
        dw  GDTEND - GDT - 1    ; Size of GDT Table
        dd  ( GDT - $$ + 0x10000 ) ; Start Address of GDT

; Define GDT Table
GDT:
    NULLDESCRIPTOR:
        dw  0x0000
        dw  0x0000
        db  0x00
        db  0x00
        db  0x00
        db  0x00
        db  0x00

    ; Data Segment Descritor for 16bit mode kernal    
    DATADESCRIPTOR:
        dw  0xFFFF          ; Limit [15:0]
        dw  0x0000          ; Base [15:0]
        db  0x00            ; Base [23:16]
        db  0x92            ; P=1; DPL=0, Data Segment, Read/Write
        db  0xCF            ; G=1, D=1, L=0, Limit[19:16]
        db  0x00            ; Base [31:24]
GDTEND: