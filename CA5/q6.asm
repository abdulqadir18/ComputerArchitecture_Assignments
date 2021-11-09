.text
        .globl  main

main:
        ori     $1,$0,0x7654      
        sll     $1,$1,16       
        ori     $1,$1,0x3210
        ori     $2,$0,0x7777
        sll     $2,$2,16
        ori     $2,$2,0x7777
        xor     $2,$2,$1