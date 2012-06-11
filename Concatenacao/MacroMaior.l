x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro retorna 0, se z2 <= x4, e 1, se z2 > x4
# Exemplo de uso:
# z2 = 2, x4 = 1
# macro m: 'MacroMaior.l'
# y = m(z2,x4)
# Isto deverá retornar y = 0

y = y - 1
[A] if z2 != 0 goto B
	if x100 != 0 goto E
[B] if x4 != 0 goto C
	y = y + 1
	if x100 != 0 goto E
[C] z2 = z2 - 1
	x4 = x4 - 1
	if x100 != 0 goto A
