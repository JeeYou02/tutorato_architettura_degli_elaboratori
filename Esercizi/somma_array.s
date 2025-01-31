;dato in input un array di interi a 32 bit, calcolare la somma
;di tutti gli elementi dell'array e memorizzarla all'interno di
;un'apposita locazione di memoria RAM.

ARR    DCD     1,3,5,2,7,6
LEN    DCD     6
SOMMA  FILL    4

       MOV     R0, #ARR ;puntatore array
       MOV     R1, #LEN
       LDR     R1, [R1] ;dimensione array
       MOV     R2, #0 ;somma parziale

ciclo  SUBS    R1, R1, #1
       BLT     fine
       LDR     R3, [R0], #4 ;elemento corrente
       ADD     R2, R2, R3
       B       ciclo


fine   MOV     R0, #SOMMA
       STR     R2, [R0]
       END
