#include<avr/io.h>
.global main
.text
.org 0x200
pArr: .byte 0,1,2,3,4,5,6,7,8,9

.org 0x600
main:
    ldi r21,10
    ldi r17,0
    ldi r30,lo8(pArr)
    ldi r31,hi8(pArr)
l1: 
    lpm r18,z+
    add r17,r18
    dec r16
    brne l1
    rjmp l2
l2:
    sts 0x200,r17
    rjmp l3
l3: 
    rjmp l3
    