.data
    msg1: .asciiz "Digite valor A: "
    msg2: .asciiz "Digite valor B: "
    msg3: .asciiz "A multiplicação de A e B é igual a: "
    msg4: .asciiz "A soma de A e B é igual a: "
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

        beq		$s0, $s1, equal
        mul $s2, $s0, $s1   #not equal

        li $v0, 4
        la $a0, msg3
        syscall

        li $v0, 1
        move $a0, $s2
        syscall

        jr $ra

        equal:
        add $s2, $s0, $s1
        
        li $v0, 4
        la $a0, msg4
        syscall

        li $v0, 1
        move $a0, $s2
        syscall
        
        jr $ra