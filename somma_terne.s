;dato un array di interi a 32 bit, memorizzare
;in un array di output la somma delle terne consecutive

ARR    DCD     2,3,4,2,2,2,1,2,3
LEN    DCD     9
ARR2   FILL    3*4

       MOV     R0, #ARR ;puntatore arr
       MOV     R1, #LEN
       LDR     R1, [R1] ;lunghezza
       MOV     R2, #ARR2 ;puntatore arr2

ciclo  SUBS    R1, R1, #3
       BLT     fine
       MOV     R3, #0 ;somma
       LDR     R4, [R0], #4;elemento corrente
       ADD     R3, R3, R4
       LDR     R4, [R0], #4
       ADD     R3, R3, R4
       LDR     R4, [R0], #4
       ADD     R3, R3, R4
       STR     R3, [R2], #4
       B       ciclo

fine   END
