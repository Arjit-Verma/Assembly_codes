#include<avr/io.h>
.global main
.text
.org 0x200
pArr: .byte 0,1,2,3,4,5,6,7,8,9   ; data stored from 0x200 memory address location

.org 0x600
main:
    ldi r21,10
    ldi r17,0
    ldi r30,lo8(pArr)             ; making stack pointer to point at the first memory location
    ldi r31,hi8(pArr)
l1: 
    lpm r18,z+                    ; lpm function used for loading data from program memory and z the pointer mentioned above
    add r17,r18                   ; adds numbers
    dec r16                       ; used to run a loop 10 times   
    brne l1
    rjmp l2
l2:
    sts 0x800,r17                 ; stores the value at 0x800 memory location 
    rjmp l3
l3: 
    rjmp l3                       ; end of the program
    
