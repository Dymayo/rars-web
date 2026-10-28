# factoriel 

        .data
str:    .asciz "valeur = "

        .text
main:
        li      a0, 4              # calcul de factorielle(4)
        jal     fact               # a0 = fact(4)
        mv      s1, a0             # met le résultat de côté

        la      a0, str
        li      a7, 4
        ecall                      # affiche "valeur = "

        mv      a0, s1
        li      a7, 1
        ecall                      # affiche le résultat

        li      a7, 10
        ecall                      # exit

# ---------------------------------------------------------
# fact : a0 = n en entrée, a0 = n! en sortie
# ---------------------------------------------------------
fact:
        addi    sp, sp, -8        # alloue le stack frame
        sw      ra, 12(sp)         # ra sera écrasé par l'appel récursif
        sw      s1, 8(sp)          # s1 est sauvegardé par l'appelé

        li      t0, 2
        blt     a0, t0, base       # si n < 2 : cas de base

        mv      s1, a0             # conserve n par-dessus l'appel
        addi    a0, a0, -1
        jal     fact               # a0 = fact(n-1)
        mul     a0, a0, s1         # a0 = n * fact(n-1)
        j       fin

base:
        li      a0, 1              # 0! = 1! = 1

fin:
        lw      s1, 8(sp)          # restaure les registres sauvegardés
        lw      ra, 12(sp)
        addi    sp, sp, 8         # dépile le stack frame
        ret
	
	
