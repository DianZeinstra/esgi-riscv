# Exercice 3
#
# Objectif: Additionner toutes les cases d'un tableau version «naive»
#
# A faire: complêter le programme à trou.
#
# Questions:
# A venir

.data
# /!\ Attention! ce sont des variables globales en mémoire! /!\

# On déclare «naivement» un tableau et sa taille, dans le segment data.
# On vera dans la suite du cours que c'est pas exactement comme ça qu'on fait,
# dans la vrai vie des choses de font dans la pile.
size_array_g: .word 6
array_g: .word 124, 256, 512, 2, 8, 4

.text

main:


la t0,array_g
# On souhaite faire la somme du tableau! on va faire la méthode bourrin
# ou on additionne toute les cases dans un registre.
# load word depuis l'addresse 0 + register dans le register t1
lw  t1, 0(t0)
lw  t2, 4(t0)
add a0, t1,t2

lw  t1, 8(t0)
add a0, a0,t1
lw  t2, 12(t0)
add a0, a0,t2

lw  t2, 16(t0)
add a0, a0,t1
lw  t2, 20(t0)
add a0, a0,t2

# t2 <- @num1
l?  t2,  ???
# Quelle instruction permet de charger un mot mémoire?
??? t3, 0(t2)

# chargement de l'addresse du resultat.
la t4, ???
# fait l'addition entre nos deux registres dans un registre.
add ???, ???, ???
# store word, stock le contenu du registre dans l'addresse à 0 + t4


