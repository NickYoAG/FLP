.data 	
 texto1: .asciiz "Ingrese un numero: "
 texto2: .asciiz "\nEl numero "
 texto3: .asciiz " es par "
 texto4: .asciiz " es impar "
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

 	li $t1, 2
 	div $t0, $t1
 	mfhi $a0

		beq $a0, 0, LABEL_IF
		 LABEL_ELSE:
		 	li $v0, 4
		 	la $a0, texto4
		 	syscall
		 	b END_LABEL_IF
		  LABEL_IF:
		  	li $v0, 4
		 	la $a0, texto3
		 	syscall
		  END_LABEL_IF:
		  jr $ra
