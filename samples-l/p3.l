# Se quisermos que o programa retorne o valor de entrada mesmo no caso em que x = 0, é preciso
# fazer um teste no início do programa. Isso pode ser feito da seguinte maneira:
#X = 2, pode ser testado com o uso de macro passando esse valor como parâmetro
[A] if X != 0, goto B
    Z = Z + 1
    if Z != 0, goto E
[B] X = X - 1
    Y = Y + 1
    Z = Z + 1
    if Z != 0, goto A