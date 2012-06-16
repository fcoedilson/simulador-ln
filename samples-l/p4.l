# Uma nova modificac ̧a ̃o no programa permite que o valor de entrada 
# seja copiado para a varia ́vel Y sem perder o valor de X.
# A ideia  ́e simples: primeiro movemos o valor de X para Y e Z; 
# em seguida, movemos o valor de Z de volta para X.

[A] if X!=0,goto B
z0 = z0 + 1 
	if z0 != 0 goto C
[B] X = X - 1 
	Y  =  Y + 1 
	Z  =  Z + 1
	goto A
[C] if Z != 0,goto D
	goto E
[D] Z = Z-1 
	X  =  X + 1
	goto C
