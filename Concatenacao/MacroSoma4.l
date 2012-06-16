x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro calcula a soma z + x2
# Exemplo de uso:
# z = 2, x2 = 2
# macro s: 'MacroSoma2.l'
# y = s(z,x2)
# Isto deverá retornar y = 4

macro a: 'MacroAtribui.l'

y = y - 1
[C] if z != 0  goto A
	if x100 != 0 goto B
[A] y = a(z)
[B] if x2 != 0 goto D
	if x100 != 0 goto E
[D] y = y + 1
	x2 = x2 - 1
	if x100 != 0 goto B
