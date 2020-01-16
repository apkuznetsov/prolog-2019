domains
	l = integer*
predicates
	del(integer, l , l).
clauses
	del(1, [_|L], L).
	del(N, [H|T], [H|L]) :- 
		NewN = N - 1, 
		del(NewN, T, L).
goal 
	del(3, [1, 2, 3, 4, 5, 6, 7], L).