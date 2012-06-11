# Esta macro deverá retornar o resto da divisão de x1 por x2
# Exemplo de uso:
# x1 = 69, x2 = 2
# macro r: 'MacroResto.l'
# y = r(x1,x2)

## [A] r = x1 - q.x2
##     IF r > x2 goto A 

z10 = 0
macro m: 'mult.l'
macro h: 'MacroSubtracao.l'
macro w: 'MacroMaior.l'

[F] z10 = z10 + 1
	z12 = m(z10,x2)
	z13 = h(x1,z12)
	z14 = w(z13,x2)
	if z14 != 0 goto F
[G] z13 = z13 -1
    y = y + 1
    if z13 != 0 goto G
 
