# Esta macro retorna uma string sem o último caractere
# Exemplo:
# Entrada: x1 = 3 (base = cardinalidade do alfabeto), x2 = 'baba' = 70 (string na forma numérica)
# Saída: y = 69 = 'bab'
#
# Exemplo de uso (p/ x1 = 3 = {a,b,c} e x2 = 'abc' = 18):
# x1 = 3, x2 = 18
# macro r: 'MacroRtrunc.l'
# y = r(x1,x2)
#
# Isto deverá retornar y = 15.

macro a: 'MacroAtribuiX2.l'
macro r: 'MacroRtend.l'
macro s: 'MacroSubtracao.l'

z1 = a(x2)
z2 = r(x1,x2)
y = s(z1,z2)
