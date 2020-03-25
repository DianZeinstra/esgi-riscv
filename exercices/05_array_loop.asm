# Exercice 3
#
# Objectif: Additionner toutes les cases d'un tableau avec une boucle!
#
# A faire: complêter le programme à trou.
#
# Questions:
# A venir

.data

size_array_g: .word 6
array_g: .word 124, 256, 512, 2, 8, 4


.text
# Affichez la somme ici!

###
# Méthode avec une boucle
###

# t0: size <- *size_array
la  t0, size_array_g
lw t0, 0(t0)
# Il nous faut un registre pour la somme
# a0: sum <- 0
li a0, 0

# Pour faire une boucle il nous faut l'addresse de base du tableau
la t1, array_g

# t2 = @addrFin
slli t0, t0,2 # Spoiler allignement sur 4! ;p
add t2, t1, t0


# t3 = @addrIterator
mv t3, t1

# Un label pour le début de la boucle
for:
  beq t3, t2 , end_for # addrIterator = AddrFin?
  lw t4, 0(t3)
  add a0, a0, t4
# Ici un test pour savoir si on continue
##beq ,end_for # addrIterator = addFin?
# Incrementateur
##??? # addrIterator = addrIterator + ???
# on continue!
##j for

# Un label pour la sortie de boucle
  addi t3, t3, 4
  j for # on continue!
end_for:


# A faire par vous totalement:
# Afficher nos deux nombres dans la console
# indice: syscall printInt
