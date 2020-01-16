domains
	list = integer* 
predicates
	nondeterm get(integer,list,integer)
	nondeterm length(list,integer, integer)
clauses
	get(E, [E|T], Length) :- 
		ListAfterElement = [E|T],
		length(ListAfterElement, -1, Length).
	get(E, [_|T], Length) :- 
		get(E, T, Length).
	length([],     Length, Length) :- 
		!.
	length([_H|T], Buf,    Length) :-
		NewBuf = Buf + 1,
		length(T,      NewBuf, Length).
goal
	get(6, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], Res).