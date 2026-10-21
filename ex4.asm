.data
    msg1: .asciiz "Insira a base 1: "
    msg2: .asciiz "Insira a base 2: "
    msg3: .asciiz "Insira a altura: "
    msg4: .asciiz "A área do trapézio é igual a: "
.text
    .globl main

    main:
        li $v0, 4
        la $a0, msg1
        syscall

        li $v0, 5
        syscall
        move $s0, $v0

        li $v0, 4
        la $a0, msg2
        syscall

        li $v0, 5
        syscall
        move $s1, $v0

        li $v0, 4
        la $a0, msg3
        syscall

        li $v0, 5
        syscall
        move $s2, $v0

        add $t0, $s0, $s1
        mul $t1, $t0, $s2
        li $t2, 2
        div $s3, $t1, $t2 

        li $v0, 4
        la $a0, msg4
        syscall

        li $v0, 1
        move $a0, $s3
        syscall

        jr $ra