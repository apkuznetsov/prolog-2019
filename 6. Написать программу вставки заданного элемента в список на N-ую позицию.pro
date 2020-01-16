domains
	l = integer* 
predicates
	add(integer, integer, l, l)
clauses
	add(E, 0, L,     NewL)	:- 
		NewL = [E|L].
  	add(E, N, [H|T], [H|L])	:- 
		NewN = N - 1, 
		add(E, NewN, T, L).
goal
	add(111, 5, [1, 2, 3, 4, 5, 6, 7, 8, 9], Res).