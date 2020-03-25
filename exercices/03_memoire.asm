# Exercice 3
#
# Objectif: Jouer avec des entiers dans la mémoire pour commencer!
#
# A faire: complêter le programme à trou.
#
# Questions:
# 
# - Quelle est l'addresse de `num0`, `num1`, `resultat`?
# - La dernière addresse du code votre programme
# - Comment est coté en langage machine (hexadecimal) l'instruction: `lw  t1, 0(t0)`
# - La mémoire est-elle dans le processeur
# - Quand on accede à la mémoire par mots de 32 bits est accessible de combien en combien?
# - Quelle est la valeur dans la mémoire de la valeur à l'addresse `num0`

.data


# On déclare deux nombres de 32 bits dans la mémoire
# .word permet de specifier qu'on veux un mot de 32bits.
num0_g: .word 124
num1_g: .word 256

# On souhaite charger le resultat de l'addition dans la memoire a
# l'adresse resultat:
resultat_g: .word 0

.text

main:

# ??? <- @num0
la  t0, num0_g # int32_t * ptr = &num0_g;
# load word depuis l'addresse 0 + register dans le register t1
lw  t1, 0(t0)  #int32_t p = *^ptr;

# t2 <- @num1
la  t2,  num1_g
# Quelle instruction permet de charger un mot mémoire?
lw t3, 0(t2)

# chargement de l'addresse du resultat.
la t4, resultat_g
# fait l'addition entre nos deux registres dans un registre.
add t5, t3, t1
# store word, stock le contenu du registre dans l'addresse à 0 + t4
sw t5, 0(t4)

# A faire par vous totalement:
# Afficher nos deux nombres dans la console
# indice: syscall printInt


