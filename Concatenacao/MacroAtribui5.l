x100 = 1

# x100 é somente para efeito de sintaxe
# Esta macro atribui o valor de z4 (passado como parametro) para uma outra variavel, fazendo a vez da macro (v <- v')
# Exemplo de uso:
# z4 = 3
# macro a: 'MacroAtribui.l'
# z2 = a(z4)
# Isto fará com que a variável z2 receba o valor de z4

if z4 != 0 goto A
if x100 != 0 goto E
[A] z4 = z4 - 1
	Y = Y + 1
if z4 != 0 goto A
if x100 != 0 goto E
