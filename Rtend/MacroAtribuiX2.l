x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro atribui o valor de x2 (passado como parametro) para uma outra variavel, fazendo a vez da macro (v <- v')
# Exemplo de uso:
#
# x2 = 3
# macro a: 'MacroAtribui.l'
# z = a(x2)
#
# Isto fará com que a variável z receba o valor de x2

if x2 != 0 goto A
if x100 != 0 goto E
[A] x2 = x2 - 1
	Y = Y + 1
if x2 != 0 goto A
if x100 != 0 goto E
