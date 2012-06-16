macro a: 'MacroAtribui2.l'
z1 = a(x1)
z2 = a(x2)

[A] z1 = z1 - 1
	y = y + 1
	z3 = z3 +1
	if z1 != 0 goto A
[B] z3 = z3 - 1
	z1 = z1 + 1
	if z3 != 0 goto B
	z2 = z2 -1
	if z2 != 0 goto A
