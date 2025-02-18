

ARR_IN  DCD     5,1,3,7,2,4,0,5,1
LEN     EQU     9
ARR_OUT FILL    7*4

        MOV     R0, #ARR_IN
        MOV     R1, #LEN
        MOV     R2, #ARR_OUT

ciclo1  SUBS    R1, R1, #1
        BLT     fine
        LDR     R3, [R0], #4 ;elemento corrente
        CMP     R3, #1
        BEQ     ciclo2
        B       ciclo1

ciclo2  SUBS    R1, R1, #1
        BLT     fine
        LDR     R3, [R0], #4 ;elemento corrente
        STR     R3, [R2], #4
        CMP     R3, #0
        BEQ     ciclo1
        B       ciclo2

fine    END
