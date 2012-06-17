x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro calcula a expressão z1 * x1
# Exemplo de uso:
# x1 = 3, z1 = 5
# macro m: 'MacroMultiplicacao.l'
# y = m(z1,x1)
# Isto deverá retornar y = 15

macro r: 'MacroAtribui.l'
macro a: 'MacroAtribui2.l'
macro s: 'MacroSoma.l'

y = y - 1
if z1 != 0 goto A
if x100 != 0 goto E
[A] z = a(z1)
	x1 = x1 - 1
[C] if x1 != 0 goto B
	if x100 != 0 goto E
[B] z = s(z,z1)
	x1 = x1 - 1
	y = r(z)
	if x100 != 0 goto C
	
