.data
	array_1: .word 1:3 #array len=10 of 1 values
	array_2: .word 1:3 #array len=10 of 1 values
	texto0: .asciiz "Ingrese un numero del vector 1: "
	texto1: .asciiz "Ingrese un numero del vector 2: "
	texto2: .asciiz "El Producto Escalar es: "
.text
main:
	la $t0, array_1
	la $t1, array_2
loop1: #set values
	beq $t2, 3 end_loop1
	li $v0, 4
 	la $a0, texto0
 	syscall

 	li $v0, 5
 	syscall
 	move $a0, $v0
 	sw $a0, 0($t0) #set
 	add $t0, $t0, 4
 	add $t2, $t2, 1
	j loop1
end_loop1:
	li $t2, 0
	loop2:
		beq $t2, 3 end_loop2
		li $v0, 4
 		la $a0, texto1
 		syscall

 		li $v0, 5
 		syscall
 		move $a0, $v0
 		sw $a0, 0($t1) #set
 		add $t1, $t1, 4
 		add $t2, $t2, 1
 		j loop2
 	end_loop2:
 		li $t2, 0
 		la $t0, array_1
 		la $t1, array_2
 		li $t6, 0
 		loop3:
			beq $t2, 3 end_loop3
			lw $t3, 0($t0) #cargo el word
			lw $t4, 0($t1) #cargo el segundo word
			mult $t3, $t4
			mflo $t5 
			add $t6, $t6, $t5

			add $t0, $t0, 4
			add $t1, $t1, 4

			add $t2, $t2, 1 #contador
			j loop3
		end_loop3:
			li $v0, 4
			la $a0, texto2
			syscall 

			li $v0, 1 #print value int
			move $a0, $t6
			syscall
			jr $ra




