.data
    msg1: .asciiz "Digite o cateto A: "
    msg2: .asciiz "Digite o cateto B: "
    msg3: .asciiz "A hipotenusa é igual a: "

.text
    .globl main
    main:
        li $v0, 4
        la $a0, msg1
        syscall

        li $v0, 6
        syscall
        mul.s $f20, $f0, $f0

        li $v0, 4
        la $a0, msg2
        syscall

        li $v0, 6
        syscall
        mul.s $f22, $f0, $f0

        add.s $f1, $f20, $f22
        sqrt.s $f24, $f1

        li $v0, 4
        la $a0, msg3
        syscall

        li $v0, 2
        mov.s $f12, $f24
        syscall     

        jr $ra