domains
	list = integer* 
predicates
	nondeterm get(integer, list)
	nondeterm list(integer, list, list)
	nondeterm reverse(list, list, list)
clauses
	get(N, Buf) :- 
		list(N, [10], Res), 
		reverse(Res, [], Buf).
	list(1, Res, Res).
	list(N, L, Res) :- 
		NewN = N - 1, 
		L = [ListH|ListT], 
		NewE = ListH + 1, 
		NewL = [NewE|L], 
		list(NewN, NewL, Res).
	reverse([],    T2, T2).
	reverse([H|T], T1, T2) :- 
		reverse(T, [H|T1], T2).
goal
	get(6, Res).