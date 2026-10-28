	.data		# data segment
chaine: .asciz "Bonjour à tous"
saut:   .asciz "\n"

	.text		# text segment
main:
	la a0, chaine	# load address of string
	li a7, 4	# 4 = print str ecall
	ecall		# execute the system call
	
	la a0, saut	# load address of string
	ecall		# execute the system call

	li a7, 10      # ecall to exit.
        ecall
        
