domains
	l = integer*
predicates
	add(integer, l, l)
clauses
  	add(E, [],    [E]).
  	add(E, [H|T], [H|T1]) :- 
		add(E, T, T1).
goal
  	add(5, [1, 2, 3, 4], L).