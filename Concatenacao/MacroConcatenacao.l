x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro realiza a concatenação de duas strings dadas como entrada.
# x1 é a cardinalidade do conjunto (alfabeto), x2 é a primeira string e x4 é a segunda string
# Exemplo de uso (p/ um alfabeto = {a,b,c}, x1 = 3, x2 = 'aa' = 4, x4 = 'aa' = 4):
# x1= 3, x2 = 4, x4 = 4
# macro c: 'MacroConcatenacao.l'
# y = c(x1,x3,x4)

macro c: 'MacroComprimento.l'
macro e: 'MacroExponenciacao2.l'
macro m: 'MacroMultiplicacao2.l'
macro s: 'MacroSoma3.l'
macro a: 'MacroAtribui4.l'
macro f: 'MacroAtribui6.l'

if x2 != 0 goto A
y = f(x4)
if x100 != 0 goto E
[A] if x4 != 0 goto B
	y = a(x2)
	if x100 != 0 goto E
[B] z = c(x1,x4)
	z1 = e(x1,z)
	x2 = m(x2,z1)
	y = s(x2,x4)

