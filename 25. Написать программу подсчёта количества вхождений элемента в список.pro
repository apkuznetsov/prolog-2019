domains
	il = integer*
predicates
	get(il, integer, integer)
clauses
	get([A|B], A, X) :- 
		!,
		get(B, A, Y), 
		X = Y + 1.
	get([_|B], C, X) :-
		get(B, C, X).
	get([],    _, 0).
goal 
	get([6, 1, 2, 3, 4, 5, 6, 6, 7, 6, 6], 6, Res).