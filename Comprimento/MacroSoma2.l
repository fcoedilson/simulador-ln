x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro calcula a soma z4 + z2
# Exemplo de uso:
# z4 = 2, z2 = 2
# macro s: 'MacroSoma2.l'
# y = s(z4,z2)
# Isto deverá retornar y = 4

macro a: 'MacroAtribui5.l'

y = y - 1
[C] if z4 != 0  goto A
	if x100 != 0 goto B
[A] y = a(z4)
[B] if z2 != 0 goto D
	if x100 != 0 goto E
[D] y = y + 1
	z2 = z2 - 1
	if x100 != 0 goto B
