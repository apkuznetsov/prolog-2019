domains
	l = integer* 
predicates
	reverse(l, l, l)
clauses
	reverse([],    T2, T2).
	reverse([H|T], T1, T2) :- 
		reverse(T, [H|T1], T2).
goal
	reverse([1, 2, 3, 4, 5], [], L).