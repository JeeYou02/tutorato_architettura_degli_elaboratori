ARR    DCD     1,3,5,6,5,3,14,8
LEN    DCD     8
LOW    DCD     4
HIGH   DCD     8
ARR_B  FILL    8*4
SOMMA  FILL    4

       MOV     R0, #ARR ;puntatore array
       MOV     R1, #LEN
       LDR     R1, [R1] ;lunghezza array
       MOV     R2, #LOW
       LDR     R2, [R2] ;low
       MOV     R3, #HIGH
       LDR     R3, [R3] ;high
       MOV     R5, #ARR_B ;puntatore array di output
       MOV     R6, #0 ;somma elementi array di output

ciclo  CMP     R1, #0
       BLE     fine
       LDR     R4, [R0], #4 ;elemento corrente
       SUB     R1, R1, #1
       CMP     R4, R2
       BLE     ciclo
       CMP     R4, R3
       BGE     ciclo
       STR     R4, [R5], #4
       ADD     R6, R6, R4
       B       ciclo

fine   MOV     R0, #SOMMA
       STR     R6, [R0]
       END
