x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro calcula a expressão z4 * z3
# Exemplo de uso:
# z3 = 3, z4 = 5
# macro m: 'MacroMultiplicacao.l'
# y = m(z4,z3)
# Isto deverá retornar y = 15

macro r: 'MacroAtribui.l'
macro a: 'MacroAtribui5.l'
macro s: 'MacroSomaLtrunc.l'

y = y - 1
if z4 != 0 goto A
if x100 != 0 goto E
[A] z = a(z4)
	z3 = z3 - 1
[C] if z3 != 0 goto B
	if x100 != 0 goto E
[B] z = s(z,z4)
	z3 = z3 - 1
	y = r(z)
	if x100 != 0 goto C
	
