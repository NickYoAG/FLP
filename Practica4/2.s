.data
	array_1: .word 1:5 #array len=10 of 1 values
	texto0: .asciiz "Ingrese un numero: "
.text
main:
	la $t1, array_1
loop1: #set values
	beq $t0, 5 end_loop1
	li $v0, 4
 	la $a0, texto0
 	syscall

 	li $v0, 5
 	syscall
 	move $a0, $v0
 	sw $a0, 0($t1) #set
 	add $t1, $t1, 4
 	add $t0, $t0, 1
	j loop1
end_loop1:
	#la $t1, array_1
	li $t0, 0
	loop2: #show values
		beq $t0, 5 end_loop2
		sub $t1, $t1, 4
		lw $t3, 0($t1)

		li $v0, 1 #print int
		move $a0, $t3
		syscall

		li $a0, 32 #print space
		li $v0, 11 #código del sistema para imprimir un carácter
		syscall

		add $t0, $t0, 1 #contador
		j loop2
	end_loop2:
		jr $ra


