    .data   # data segment
    .text   # text segment
main:
    li a2, 7
    jal fct
    li a7, 1  # print int
    ecall
    li a7, 10 #  exit.
    ecall
fct : 
    slli a0, a2, 1
    ret # ou jr ra
    
