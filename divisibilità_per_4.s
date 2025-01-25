;dato in input un array di interi a 32 bit, inserire all'interno di
;un array di output tutti e soli i valori divisibili per 4 (senza utilizzare
;l'algoritmo della divisione)

ARR_IN  DCD     1,2,4,8,6,12
LEN     DCD     6
ARR_OUT FILL    6*4

        MOV     R0, #ARR_IN ;puntatore array input
        MOV     R1, #LEN
        LDR     R1, [R1] ;lunghezza array
        MOV     R2, #ARR_OUT ;puntatore array output

ciclo   SUBS    R1, R1, #1
        BLT     fine
        LDR     R3, [R0], #4 ;elemento corrente
        LSL     R4, R3, #30
        CMP     R4, #0
        BNE     ciclo
        STR     R3, [R2], #4
        B       ciclo

fine    END

