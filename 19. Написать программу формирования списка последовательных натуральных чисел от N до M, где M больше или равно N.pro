domains
	list = integer*  
predicates
	nondeterm get(integer, integer, list)
	nondeterm list(integer, integer, list, list)
	nondeterm reverse(list, list, list)
clauses 
	get(First, Last, Buf) :- 
		list(First, Last, [],   Res),
		reverse(Res, [], Buf). 
	list(N, N, Res, Res).
	list(N, Last, L, Res) :- 
		NewN = N + 1, 
		NewL = [N|L], 
		list(NewN,  Last, NewL, Res).
	reverse([],    T2, T2). 
	reverse([H|T], T1, T2) :- 
		reverse(T, [H|T1], T2).
goal
	get(4, 8, Res).