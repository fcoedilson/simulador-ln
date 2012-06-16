z2 = 1, x1 = 2, x2 = 3
macro m: 'mult.l'
z3 = m(z2,x1)

[A] x2 = x2 - 1
z3 = m(z3,x1)
if x2 != 0 goto A


[B] z3 = z3 -1 
y = y + 1
if z3 != 0 goto B


