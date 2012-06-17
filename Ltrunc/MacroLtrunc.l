# Esta macro retira o caractere mais à esquerda da string, ou seja, o primeiro caractere
# Exemplo:
# Entrada: x1 = 3 (base = alfabeto = {a,b,c}) e x2 = 'baba' = 70 (string na forma numérica)
# Saída: y = 16
# Exemplo de uso (p/ x1 = 3 e x2 = 70):
# 
# x1 = 3, x2 = 70
# macro l: 'MacroLtrunc.l'
# y = l(x1,x2)
# 
# Isto deverá retornar y = 16.

macro l: 'MacroLtend.l'
macro a: 'MacroAtribuiX2.l'
macro c: 'MacroComprimento.l'
macro e: 'MacroExponenciacaoLtrunc.l'
macro s: 'MacroSubtracao.l'
macro m: 'MacroMultiplicacaoLtrunc.l'

x4  = a(x2)
z2 = c(x1,x4)
z2 = z2 - 1
z3 = e(x1,z2)
z4 = l(x1,x2)
z4 = m(z4,z3)
y = s(x2,z4)
