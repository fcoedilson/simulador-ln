x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro retorna 0, se z1 < z2, e 1, se z1 >= z2
# Exemplo de uso:
# z1 = 2, z2 = 1
# macro m: 'MacroMaior.l'
# y = m(z1,z2)
# Isto deverá retornar y = 0

y = y - 1
[A] if z1 != 0 goto B
	if x100 != 0 goto E
[B] if z2 != 0 goto C
	y = y + 1
	if x100 != 0 goto E
[C] z1 = z1 - 1
	z2 = z2 - 1
	if x100 != 0 goto A
