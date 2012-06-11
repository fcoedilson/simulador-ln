x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro atribui o valor de x4 (passado como parametro) para uma outra variavel, fazendo a vez da macro (v <- v')
# Exemplo de uso:
# x4 = 3
# macro a: 'MacroAtribui6.l'
# z2 = a(x4)
# Isto fará com que a variável z2 receba o valor de x4

if x4 != 0 goto A
if x100 != 0 goto E
[A] x4 = x4 - 1
	Y = Y + 1
if x4 != 0 goto A
if x100 != 0 goto E
