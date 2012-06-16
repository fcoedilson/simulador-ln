x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro calcula a soma x2 + x4
# Exemplo de uso:
# x2 = 2, x4 = 2
# macro s: 'MacroSoma2.l'
# y = s(x2,x4)
# Isto deverá retornar y = 4

macro a: 'MacroAtribui4.l'

y = y - 1
[C] if x2 != 0  goto A
	if x100 != 0 goto B
[A] y = a(x2)
[B] if x4 != 0 goto D
	if x100 != 0 goto E
[D] y = y + 1
	x4 = x4 - 1
	if x100 != 0 goto B
