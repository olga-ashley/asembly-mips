    .data
        msg1: .asciiz "Coloque a largura em metros: "
        msg2: .asciiz "Coloque o comprimento em metros: "
        msg3: .asciiz "O resultado é: "
        msg4: .asciiz " metros."
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

            la $a0, msg2
            li $v0, 5
            syscall
            move $s1, $v0

            mul $s3, $s0, $s1
        
            li $v0, 4
            la $a0, msg3
            syscall

            li $v0, 1
            move $a0, $s3
            syscall

            li $v0, 4
            la $a0, msg4
            syscall

        jr $ra