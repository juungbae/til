CODEDESCRIPTOR:
        dw  0xFFFF              ; Limit [15:0]
        dw  0x0000              ; Base  [15:0]
        db  0x00                ; Base  [23:16]
        db  0x9A                ; P=1, DPL=0, Code Segment, Execute/Read
        db  0xCF                ; G=1, D=1, L=0, Limit[19:16]
        db  0x00                ; Base [31:24]

DATADESCRIPTOR:
        dw  0xFFFF
        dw  0x0000
        db  0x00
        db  0x92                ; P=1, DPL=0, Data Segment, Read/Write
        db  0xCF                ; G=1, D=1, L=0, Limit[19:16]
        db  0x00                ; Base [31:24]

