x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro calcula a soma z + z1
# Exemplo de uso:
# z = 2, z1 = 2
# macro s: 'MacroSoma.l'
# y = s(z,z1)
# Isto deverá retornar y = 4

macro a: 'MacroAtribui.l'

y = y - 1
[C] if z != 0  goto A
	if x100 != 0 goto B
[A] y = a(z)
[B] if z1 != 0 goto D
	if x100 != 0 goto E
[D] y = y + 1
	z1 = z1 - 1
	if x100 != 0 goto B
