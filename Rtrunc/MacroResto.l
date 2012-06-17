x100 = 1

# x100 é apenas para efeito de sintaxe
# Esta macro retorna o resto da divisão de x2 por x1 (base = cardinalidade do alfabeto):
# R(x2,x1), se x1 não divide x2
# x1, caso contrário
# Exemplo de uso:
#
# x1 = 10, x2 = 14
# macro r: 'MacroResto.l'
# y = r(x1,x2)
#
# Isto deverá retornar y = 4.

macro m: 'MacroMaiorRtend.l'
macro a: 'MacroAtribuiX1.l'
macro f: 'MacroAtribuiX2.l'

[A] z1 = a(x1)
	y = f(x2)
	z2 = m(x2,x1)
	if z2 != 0 goto B
	if x2 != 0 goto E
	y = a(x1)
	if x100 != 0 goto E
[B] if z1 != 0 goto C
	if x100 != 0 goto A
[C] z1 = z1 - 1
	x2 = x2 - 1
	if x100 != 0 goto B
