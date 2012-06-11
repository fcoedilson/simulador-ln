x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro atribui o valor de z (passado como parametro) para uma outra variavel, fazendo a vez da macro (v <- v')
# Exemplo de uso:
# z = 3
# macro a: 'MacroAtribui.l'
# z2 = a(z)
# Isto fará com que a variável z2 receba o valor de z

if z != 0 goto A
if x100 != 0 goto E
[A] z = z - 1
	Y = Y + 1
if z != 0 goto A
if x100 != 0 goto E

