	X1 = 2,	X2 = 5, X3 = 5, X4 = 10
# Uma nova modificac ̧a ̃o no programa permite que o valor de entrada seja copiado para a varia ́vel Y sem perder o valor de X.
# A ideia  ́e simples: primeiro movemos o valor de X para Y e Z; em seguida, movemos o valor de Z de volta para X.
	[A] if X1 !=0 goto B
		Z1 = Z1 +1
		if Z1 != 0 goto E
	[B] Y  =  Y + 5
		X1 = X1 - 1
		X2 = X2 - 2
		X3 = X3 * 2
		X4 = X4/2
		if Y != 0 goto A
	