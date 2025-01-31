;dato un array di interi positivi a 32 bit,
;terminato dal valore -1, calcolarne la
;dimensione e memorizzarla in una apposita
;locazione di memoria
ARR    DCD     1,4,3,6,8,12,1,-1
LEN    FILL    4

       MOV     R0, #ARR
       MOV     R1, #0

ciclo  LDR     R2, [R0], #4
       CMP     R2, #-1
       BEQ     fine
       ADD     R1, R1, #1
       B       ciclo

fine   MOV     R3, #LEN
       STR     R1, [R3]
       END
