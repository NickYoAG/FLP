.data
texto1: .asciiz "Ingrese un numero: "
texto2: .asciiz "El maximo comun divisor es: "
.text
main:	
	li $v0, 4
	la $a0, texto1
	syscall 

	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 4
	la $a0, texto1
	syscall 

	li $v0, 5
	syscall
	move $t1, $v0

Loop: 
	beq $t0, $t1 Exit
	bge $t0, $t1 LABEL_IF 
	LABEL_ELSE:
		sub $t1, $t1, $t0
		b END_LABEL_IF
	LABEL_IF:
		sub $t0, $t0, $t1
		b END_LABEL_IF
	END_LABEL_IF:
		move $t2, $t0
	j Loop
Exit:
	li $v0, 1
	move $a0, $t2
	syscall 
	jr $ra
