domains
	l = integer*
predicates
	append(l, l, l)
clauses
	append([],     L,  L).
	append([H|L1], L2, [H|L3]):-
		append(L1, L2, L3).  
goal
	append([1, 2, 3], [4, 5], L).