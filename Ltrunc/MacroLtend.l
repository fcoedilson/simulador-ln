# x1 é a base (cardinalidade do programa)
# x2 é a string em forma numérica.
# Esta macro retorna o caractere mais à esquerda da string.
# Exemplo de uso (p/ x2 = 'baba' e alfabeto = {a,b,c}):
#
# x1 = 3, x2 = 70
# macro l: 'MacroLtend.l'
# y = l(x1,x2)
#
# Isto deverá retornar y = 2.

macro d: 'MacroDivisao.l'
macro r: 'MacroResto.l'

x2 = d(x2,x1)
y = r(x1,x2)

