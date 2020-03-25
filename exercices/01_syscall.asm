# Exercice 1
# utiliser un appel système comme write

# On indique qu'on souhaite ranger des données dans le segment de data.
.data

# la directive .asciz permet de déclarer une chaine fini par un 0x00, '\0' en ascii.
message: .asciz "Hello ASM from .data"
myInt: .word 42


.text # <- segment de code.

# Exercice: Observation dans Rars

# - Quelle est l'addresse de base de la chaine msg ?  R: 0x10010000; Son addresse de fin?  R: 0x10010014

# - Dans quelle segment de la mémoire est elle?  R: Data segment

# - Quelle sont les valeurs en hexadecimales présente dans .data?  R: L'équivalent en hexadéciaml de notre texte "Hello ASM from .data"
# 0x6c6c6548    0x5341206f   0x7266204d   0x2e206d6f   0x61746164

la a0, message # argument de l'appel systeme
li a7, 4 # appel systeme numéro 4 selon la doc de Rars printString
ecall # Permet de basculer en mode kernel pour faire l'appel systeme

# Bonus: Afficher maintenant un nombre, vous aurrez besoin de la documentation.
la t0, myInt
lw a0, 0(t0)
li a7, 1
ecall
