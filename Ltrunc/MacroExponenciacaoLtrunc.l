x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro calcula a expressão x1^z2 (x1 elevado a z2)
# Exemplo de uso:
# x1 = 2, z2 = 2
# macro e: 'MacroExponenciacao.l'
# y = e(x1,z2)
# Isto deverá retornar y = 4

macro m: 'MacroMultiplicacao.l'
macro a: 'MacroAtribui2.l'
macro f: 'MacroAtribui3.l'

y = y + 1
z1 = z1 + 1
if x1 != 0 goto A
if x100 != 0 goto E
[A] y = f(x1)
	z1 = f(x1)
	z2 = z2 - 1
[c] if z2 != 0 goto B
	if x100 != 0 goto E
[B] z1 = m(z1,x1)
	y = a(z1)
	z2 = z2 - 1
	if x100 != 0 goto C
