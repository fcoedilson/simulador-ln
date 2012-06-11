x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro calcula a expressão x2 * z1
# Exemplo de uso:
# x2 = 3, z1 = 5
# macro m: 'MacroMultiplicacao.l'
# y = m(x2,z1)
# Isto deverá retornar y = 15

macro r: 'MacroAtribui.l'
macro a: 'MacroAtribui4.l'
macro s: 'MacroSoma4.l'

y = y - 1
if x2 != 0 goto A
if x100 != 0 goto E
[A] z = a(x2)
	z1 = z1 - 1
[C] if z1 != 0 goto B
	if x100 != 0 goto E
[B] z = s(z,x2)
	z1 = z1 - 1
	y = r(z)
	if x100 != 0 goto C
