x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro atribui o valor de x1 (passado como parametro) para uma outra variavel, fazendo a vez da macro (v <- v')
# Exemplo de uso:
#
# x1 = 3
# macro a: 'MacroAtribuiX1.l'
# z = a(x1)
#
# Isto fará com que a variável z receba o valor de x1

if x1 != 0 goto A
if x100 != 0 goto E
[A] x1 = x1 - 1
	Y = Y + 1
if x1 != 0 goto A
if x100 != 0 goto E
