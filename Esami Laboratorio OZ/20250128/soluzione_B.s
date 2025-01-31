ARR     DCD     1,4,2,6,12,5
LEN     DCD     6
CUT     DCD     5
LOW     FILL    6*4
HIGH    FILL    6*4

        MOV     R0, #ARR ;puntatore array
        MOV     R1, #LEN
        LDR     R1, [R1] ;lunghezza array
        MOV     R2, #CUT
        LDR     R2, [R2] ;cut
        MOV     R3, #LOW ;puntatore low
        MOV     R4, #HIGH ;puntatore high
        MOV     R6, #0 ;contatore low
        MOV     R7, #0 ;contatore high

ciclo   CMP     R1, #0
        BLE     fine
        LDR     R5, [R0], #4 ;elemento corrente
        SUB     R1, R1, #1
        CMP     R5, R2
        BEQ     ciclo
        BGT     high
        STR     R5, [R3], #4
        ADD     R6, R6, #1
        B       ciclo
high    STR     R5, [R4], #4
        ADD     R7, R7, #1
        B       ciclo

fine    CMP     R6, R7
        BEQ     equal
        BGT     greater
        MOV     R0, #1
        END

equal   MOV     R0, #0
        END

greater MOV     R0, #-1
        END
