x100 = 1

# x1 é a base (cardinalidade do programa)
# x2 é a string em forma numérica.
# Esta macro retorna o caractere mais à esquerda da string.
# Exemplo de uso (p/ x2 = 'baba' e alfabeto = {a,b,c}):
#
# x1 = 3, x2 = 70
# macro r: 'MacroRtend.l'
# y = r(x1,x2)
#
# Isto deverá retornar y = 1.

macro c: 'MacroComprimento.l'
macro d: 'MacroDivisao.l'
macro r: 'MacroResto.l'

z = c(x2)
[A] if z != 0 goto B
	if x100 != 0 goto C
[B] x2 = d(x2,x1)
	z = z - 1
	if x100 != 0 goto A
[C] y = r(x1,x2)

