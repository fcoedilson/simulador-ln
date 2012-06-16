x100 = 1

# x100 é somente para efeito de sintaxe
# Onde x1 é a cardinalidade do conjunto (p/ conjunto = {a,b,c}, x1 = 3) e
# x4 é a string em forma numérica (x4 = 'baba' = 2 * 3^3 + 1 * 3^2 + 2 * 3^1 + 1 * 3^0, logo, x4 = 70)
# Esta macro deverá retornar o comprimento da string x4.
# Exemplo de uso (p/ conjunto = {a,b,c} e string = 'abc'):
# x1 = 3, x4 = 18
# macro m: 'MacroComprimento.l'
# y = m(x1,x4)
# Isto deverá retornar y = 3

macro a: 'MacroAtribui5.l'
macro f: 'MacroAtribui4.l'
macro g: 'MacroAtribui3.l'
macro e: 'MacroExponenciacao.l'
macro m: 'MacroMaior.l'
macro s: 'MacroSoma2.l'

z = g(x1)
x2 = x2 + 1
z2 = e(x1,x2)
[A] z3 = m(z2,x4)
	if z3 != 0 goto B
	x2 = x2 + 1
	z4 = e(x1,x2)
	z4 = s(z4,z2)
	z2 = a(z4)
	if x100 != 0 goto A
[B] y = f(x2)
	if x100 != 0 goto E
