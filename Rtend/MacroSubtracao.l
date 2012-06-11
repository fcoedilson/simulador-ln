# Essa macro retorna o resultado da subtração de x1 e x2
# Exemplo de uso
# x1 = 30, x2 = 12
# macro s: 'MacroSubtracao.l'
# y = s(x1,x2)

macro a: 'MacroAtribui2.l'


z1 = a(x1)
z2 = a(x2)
[A] z1 = z1 - 1
	z2 = z2 - 1
	if z2 != 0 goto A
[B]	z1 = z1 -1 
	y = y + 1
	if z1 != 0 goto B
    
