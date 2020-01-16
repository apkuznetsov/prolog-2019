domains
	il = integer*
predicates
	get(integer, integer, il, il)
clauses
	get(_,    _,   [],        []).
	get(Find, New, [Find|T1], [New|T2]) :-
		get(Find, New, T1, T2), 
		!.
	get(Find, New, [X|T1],    [X|T2]) :-
		Find <> X,
		get(Find, New, T1, T2).
goal
	get(5, 7, [1, 5, 3, 4, 5, 6, 7, 5, 5, 10], L).