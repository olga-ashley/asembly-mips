.data
    msg1: .asciiz "Digite a quantidade de camisetas pequenas: "
    msg2: .asciiz "A de camisas médias: "
    msg3: .asciiz "E de camisas grandes: "
    msg4: .asciiz "O total é igual a: "
.text
    .globl main

main:
    li $v0, 4
    la $a0, msg1
    syscall
    
    li $v0, 5
    syscall

    li $t0, 10
    mul $s1, $v0, $t0
    
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    
    li $t0, 12
    mul $s2, $v0, $t0

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    
    li $t0, 15
    mul $s3, $v0, $t0

    add $t0, $s1, $s2
    add $t1, $s3, $t0

    li $v0, 1
    move $a0, $s1
    syscall
    
    jr $ra







