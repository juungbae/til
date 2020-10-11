; 커널 코드 세그먼트를 0x00을 기준으로 하는 것으로 교체하고, EIP 값을 0x00을 기준으로 재설정
; CS 세그먼트 셀렉터 : EIP 

; 커널 코드 세그먼트가 0x00을 기준으로 하는데, 실제 코드는 이게 올라간 0x10000 기준으로
; 오프셋에 0x10000을 더해서 세그먼트 교체 후에도 같은 주소를 가리키게 함
JMP         dword   0x08:   ( PROTECTMODE - $$ + 0x10000 )

[BITS 32]  ; 이후에
PROTECTMODE:
    MOV     ax, 0x10
    MOV     ds, ax 
    MOV     es, ax
    MOV     fs, ax
    MOV     gs, ax


    ; Create Stack to 0x00000000 ~ 0x0000FFFF 64KB
    MOV     ss, ax
    MOV     esp, 0xFFFE
    MOV     ebp, 0xFFFE