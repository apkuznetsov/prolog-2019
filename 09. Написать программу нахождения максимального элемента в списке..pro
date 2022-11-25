domains
	l = integer*
predicates
	nondeterm find(integer, l)
clauses
	find(M, [H|T]) :- 
		find(M, T), 
		M > H.
	find(H, [H|T]) :- 
		find(M, T), 
		M < H.
	find(H, [H]).
goal
	find(Max, [1, 2, 3, 4]).