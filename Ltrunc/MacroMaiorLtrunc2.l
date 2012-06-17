x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro retorna 0, se x2 < z4, e 1, se x2 >= z4
# Exemplo de uso:
# x2 = 2, z4 = 1
# macro m: 'MacroMaior.l'
# y = m(x2,z4)
# Isto deverá retornar y = 0

y = y - 1
[A] if x2 != 0 goto B
	if x100 != 0 goto E
[B] if z4 != 0 goto C
	y = y + 1
	if x100 != 0 goto E
[C] x2 = x2 - 1
	z4 = z4 - 1
	if x100 != 0 goto A
