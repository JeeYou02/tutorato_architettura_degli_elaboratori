;dato un array di interi a 32 bit, moltiplicare
;tutti i valori per 2
ARR    DCD     2,4,5,10,4,1,7,6
LEN    DCD     8

       MOV     R0, #ARR ;puntatore array
       MOV     R1, #LEN
       LDR     R1, [R1] ;lunghezza array

ciclo  SUBS    R1, R1, #1
       BLT     fine
       LDR     R2, [R0]
       LSL     R2, R2, #1
       STR     R2, [R0], #4
       B       ciclo

fine   END
