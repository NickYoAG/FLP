.data 	
 texto1: .asciiz "Ingrese un numero: "
 texto2: .asciiz "\nLos numeros impares hasta "
 texto3: .asciiz " son: "
.text 
main:
	li $v0, 4
	la $a0, texto1
	syscall 

	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, texto2
	syscall	

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, texto3
	syscall

	li $t1, 1
	Loop:
		bge $t1, $t0 Exit
		
		li $v0, 1
		move $a0, $t1
		syscall 

		li $a0, 32 #print space
		li $v0, 11 #código del sistema para imprimir un carácter
		syscall
		
		add $t1, $t1, 2
		j Loop
	Exit:
jr $ra


