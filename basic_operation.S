
#include<avr/io.h>
.global main
.text
.org 0x0000
main:
    LDI R16,2   ; LDI function is used to load a given data into R16 to R31 register only.
    LDI R17,4
    
    ADD R16,R17 ; ADD function adds value in both the register and save it in the first given register.
    MOV R2,R16  ; MOV function is used to copy data from one register and store it in another register

    SUB R16,R17 ; SUB function subtracts value in both the register and save it in the first give register.
    MOV R3,R16  ; This line of code will copy data from R16 to R3

    MUL R17,R16 ; MUL function multiplies the values in both register and save it in either R0 or R16

    LDI R18,0
                ; There is no function to divide a number and to tackle this we can use the code given below
L1:
    INC R18     ; INC function increments the value by 1 in the register
    SUB R17,R16 ; C will only be equal to 1 when the value in R17 is less than R16
    BRCS L1     ; BRCC function uses C(carry {can have 1 and 0 as value}) bit flag in Status Register(SREG) 

    DEC R18
    MOV R4,R18

    STS 0x200,R17 ; STS function store value from registers to any given address location
    LDS R19,0X200 ; LDS function loads value from address location to registers which 
                  ; cannot be accessed using LDI function

L2:
    RJMP L2



    



