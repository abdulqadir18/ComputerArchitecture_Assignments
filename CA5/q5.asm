.text
        .globl  main
main:
        ori     $1,$0,0x3210      
        ori     $2,$0,0x0030       
        and     $2,$2,$1
        sll     $2,$2,16
        and     $3,$1,0x3000
        add     $2,$2,$3
        srl     $2,$2,8
        and     $3,$1,0x0303
        add     $2,$2,$3