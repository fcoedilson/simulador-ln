x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro retorna 0, se x2 < x1, e 1, se x2 => x1
# Exemplo de uso:
#
# x2 = 2, x1 = 1
# macro m: 'MacroMaior.l'
# y = m(x2,x1)
#
# Isto deverá retornar y = 1

y = y - 1
[A] if x2 != 0 goto B
	if x1 != 0 goto E
	y = y + 1
	if x100 != 0 goto E
[B] if x1 != 0 goto C
	y = y + 1
	if x100 != 0 goto E
[C] x2 = x2 - 1
	x1 = x1 - 1
	if x100 != 0 goto A
