domains
	i	= integer
	il	= integer*
predicates
	nondeterm reshuffle(il, il)
	nondeterm insert(i, il, il)
clauses
	reshuffle([], []).
	reshuffle([H|L], P) :- 
		reshuffle(L, L1), 
		insert(H, L1, P).
	insert(X, [], [X]) :- !.
	insert(X, L, [X|L]).
	insert(X, [H|T], [H|T1]) :- 
		insert(X, T, T1).
goal
	reshuffle([1,2,3,4], N).