.data
    msg1: .asciiz "Digite a quantidade de horas normais: "
    msg2: .asciiz "Digite a quantidade de horas extras: "
    msg3: .asciiz "Digite o desconto em %: "
    msg4: .asciiz "O salário bruto é igual a: "
    msg5: .asciiz "\nO salário líquido é igual a: "
    const: .float 100.0
.text
    .globl main
    main:
        li $v0, 4
        la $a0, msg1
        syscall
    
        li $v0, 5
        syscall

        move $t0, $v0
        li $t1, 10
        mul $s0, $t0, $t1

        li $v0, 4
        la $a0, msg2
        syscall
    
        li $v0, 5
        syscall

        move $t0, $v0
        li $t1, 15
        mul $s1, $t0, $t1

        li $v0, 4
        la $a0, msg3
        syscall

        li $v0, 5
        syscall
        move $t0, $v0

        mtc1 $t0, $f0
        cvt.s.w $f0, $f0

        add $s3, $s0, $s1

        mtc1 $s3, $f1
        cvt.s.w $f1, $f1
        l.s $f4, const
        div.s $f2, $f0, $f4

        mul.s $f3, $f1, $f2
        sub.s $f20, $f1, $f3
        
        li $v0, 4
        la $a0, msg4
        syscall

        li $v0, 1
        move $a0, $s3
        syscall

        li $v0, 4
        la $a0, msg5
        syscall

        li $v0, 2
        mov.s $f12, $f20
        syscall
        
        jr $ra