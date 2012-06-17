x100 = 1

# x100 é somente para efeito de sintaxe
# x1 é a base (cardinalidade do conjunto)
# x2 é a string em forma numérica
# Esta macro retorna o quociente da divisão de x2 por x1:
# Q(x2,x1), se x1 não divide x2
# Q(x2,x1) - 1, caso contrário
# Exemplo de uso:
#
# x1 = 3, x2 = 70
# macro d: 'MacroDivisao.l'
# y = d(x2,x1)
#
# Isto deverá retornar y = 23.

macro a: 'MacroAtribuiX1.l'
macro m: 'MacroMaiorLtend.l'

y = y - 1
[A] z1 = a(x1)
	z2 = m(x2,x1)
	if z2 != 0 goto B
	if x2 != 0 goto E
	y = y - 1
	if x100 != 0 goto E
[B] y = y + 1
[C] if z1 != 0 goto D
	if x100 != 0 goto A
[D] z1 = z1 - 1
	x2 = x2 - 1	
	if x100 != 0 goto C
