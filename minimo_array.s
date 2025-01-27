;dato un array di interi a 32 bit, calcolare
;il minimo e salvarlo in una apposita locazione
;di memoria
ARR    DCD     -10,4,23,50,0,40,10,7
LEN    DCD     8
MIN    FILL    4

       MOV     R0, #ARR ;puntatore array
       MOV     R1, #LEN
       LDR     R1, [R1] ;lunghezza array
       LDR     R2, [R0], #4 ;minimo parziale
       SUB     R1, R1, #1

ciclo  SUBS    R1, R1, #1
       BLT     fine
       LDR     R3, [R0], #4
       CMP     R3, R2
       BGE     ciclo
       MOV     R2, R3
       B       ciclo

fine   MOV     R0, #MIN
       STR     R2, [R0]
       END
