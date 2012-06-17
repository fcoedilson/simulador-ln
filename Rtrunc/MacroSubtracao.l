x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro calcula a operação de subtração z1 - z2
# Exemplo de uso:
#
# z1 = 3, z2 = 1
# macro s: 'MacroSubtracao.l'
# y = s(z1,z2)
#
# Isto deverá retornar y = 2.

macro m: 'MacroMaiorRtrunc.l'
macro a: 'MacroAtribuiZ1.l'

y = y - 1
z = m(z1,z2)
if z != 0 goto A
if x100 != 0 goto E
[A] y = a(z1)
	if z1 != 0 goto B
	if x100 != 0 goto E
[B] if z2 != 0 goto C
	if x100 != 0 goto E
[C] z1 = z1 - 1
	z2 = z2 - 1
	if x100 != 0 goto A
