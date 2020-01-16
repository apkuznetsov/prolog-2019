domains
	list = integer* 
predicates
	nondeterm get(integer, list, integer, integer)
clauses
	get(E,	[E|T],	CurrPos, CurrPos).
	get(E,	[_|T],	CurrPos, Res) :- 
		NewPos = CurrPos + 1,  
		get(E, T, NewPos, Res).
goal
	get(6,[1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1, N).