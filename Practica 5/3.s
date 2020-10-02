.data
texto1: .asciiz "\nIngrese un numero: "
texto2: .asciiz "El numero "
texto3: .asciiz " es primo"
texto4: .asciiz " no es primo"
.text
main:	
    li $v0, 4
	la $a0, texto1
	syscall
	li $v0, 5 
	syscall
	move $t0, $v0 
	li $t1, 2
	
Loop:   
    beq $t0, $t1, p #registros iguales
	div $t0, $t1 
	mfhi $t2 
	beqz $t2, np #mayor igual a 0 
	add $t1, $t1 1
	j Loop

	np:
	li $v0, 4
	la $a0, texto2
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, texto4
	syscall

	j Exit
	
	p:
	li $v0, 4
	la $a0, texto2
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, texto3
	syscall

	j Exit
	
Exit:	
	jr $ra
