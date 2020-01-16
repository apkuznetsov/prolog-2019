domains
	list = integer* 
predicates
	nondeterm get(integer, list, integer)
	nondeterm length(list, integer, integer)
clauses
	get(0, L,     Length):-
		length(L, 0, Length).
	get(N, [_|T], Length) :- 
		NewN = N - 1, 
		get(NewN, T, Length).
	length([],     Length, Length) :- 
		!.
	length([_H|T], Buf,    Length) :-
		NewBuf = Buf + 1,
		length(T,      NewBuf, Length).
goal
	get(5, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], Res).