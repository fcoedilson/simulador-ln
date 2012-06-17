x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro calcula a soma z + z4
# Exemplo de uso:
# z = 2, z4 = 2
# macro s: 'MacroSoma.l'
# y = s(z,z4)
# Isto deverá retornar y = 4

macro a: 'MacroAtribui.l'

y = y - 1
[C] if z != 0  goto A
	if x100 != 0 goto B
[A] y = a(z)
[B] if z4 != 0 goto D
	if x100 != 0 goto E
[D] y = y + 1
	z4 = z4 - 1
	if x100 != 0 goto B
