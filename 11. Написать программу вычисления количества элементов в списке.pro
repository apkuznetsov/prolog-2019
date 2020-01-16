domains
	l = integer*
predicates
	nondeterm quantity(integer, l)
clauses
	quantity (N, [_|T]) :- 
		quantity (M, T), 
		N = M + 1.
	quantity (0, []).
goal
	quantity (C, [1, 2, 3, 4, 5]).