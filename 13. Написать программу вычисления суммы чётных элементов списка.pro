domains 
	list = integer*
predicates
	nondeterm sum(list, integer)
clauses
	sum([],    0)	:-
		!.
	sum([H|T], Sum)	:- 
		sum(T, Sum),
		H mod 2 = 0.
	sum([H|T], Sum)	:- 
		sum(T, TSum),
		Sum = TSum + H, 
		H mod 2 <> 0.
goal
	sum([2, 1, 8, 1, 10, 1], Res).