.data
	array_1: .word 1:5 #array len=10 of 1 values
	texto0: .asciiz "Ingrese un numero: "
	texto1: .asciiz "Los Multiplos de "
	texto2: .asciiz " son: "
.text
main:
	li $v0, 4
 	la $a0, texto0
 	syscall

	li $v0, 5
 	syscall
 	move $t0, $v0 #numero n	
	la $t1, array_1
	li $t2, 1 #contador
loop1: #set values
	beq $t5, $t0 end_loop1
	mult $t2, $t0
	mflo $a0 
	sw $a0, 0($t1) #set
	add $t1, $t1, 4
	add $t2, $t2, 1
	add $t5, $t5, 1
	j loop1
end_loop1:
	li $v0, 4
 	la $a0, texto1
 	syscall
 	li $v0, 1
 	move $a0, $t0
 	syscall
 	li $v0, 4
 	la $a0, texto2
 	syscall

	la $t1, array_1
	li $t5, 0
	loop2: #show values
		beq $t5, $t0 end_loop2
		lw $t3, 0($t1)
		add $t1, $t1, 4

		li $v0, 1 #print int
		move $a0, $t3
		syscall

		li $a0, 32 #print space
		li $v0, 11 #código del sistema para imprimir un carácter
		syscall

		add $t5, $t5, 1 #contador
		j loop2
	end_loop2:
		jr $ra


