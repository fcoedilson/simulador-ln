x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro calcula a operação de subtração x2 - z4
# Exemplo de uso:
#
# x2 = 3, z4 = 1
# macro s: 'MacroSubtracao.l'
# y = s(x2,z4)
#
# Isto deverá retornar y = 2.

macro m: 'MacroMaiorLtrunc2.l'
macro a: 'MacroAtribuiX2.l'

y = y - 1
z = m(x2,z4)
if z != 0 goto A
if x100 != 0 goto E
[A] y = a(x2)
	if x2 != 0 goto B
	if x100 != 0 goto E
[B] if z4 != 0 goto C
	if x100 != 0 goto E
[C] x2 = x2 - 1
	z4 = z4 - 1
	if x100 != 0 goto A
