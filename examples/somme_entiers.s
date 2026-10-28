        .data
print1: .asciz "Entrez un entier > 0 : "
saut:   .asciz "\n"

        .text		
main:	
	# Print a message
	la a0, print1
	li a7, 4
	ecall
	
	# read an integer from keyboard input
	li a7, 5
	ecall
	mv t1, a0	# result in t1
	
	# Initialisations
	li	t0, 0
loop:				# loop for sums
	add	t0, t0, t1 
	addi	t1, t1, -1
	bgtz	t1, loop 	    # if (t1 > 0) goto loop 

	# Afficher le resultat
	mv	a0, t0   	# Value to print to a0
	li	a7, 1		# ecall to print integer
	ecall
	la a0, saut	# load address of string
	li a7, 4		# 4 = print str ecall
	ecall		# execute the system call

	# End
	li	a7, 10	 	# ecall for exit
	ecall
