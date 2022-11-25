domains
	l = integer*
predicates
	memb(integer, l ).
clauses
	memb(X, [X|_]) :- 
		!. 
	memb(X, [_|T]) :- 
		memb(X, T).
goal 
	memb(10, [1, 2, 3, 4, 5, 6, 7]).