domains
	list = integer* 
predicates
	nondeterm solve(integer, list, integer, integer)
clauses             	
	solve(_,   [],	  Res, Res).
	solve(Pos, [H|T], N,   Res) :- 
		Pos mod 2 = 0, 
		NewPos = Pos + 1,
		N1 = N + H, 
		solve(NewPos, T, N1, Res).
	solve(Pos, [_|T], N,   Res) :- 
		Pos mod 2 = 1, 
		NewPos = Pos + 1, 
		solve(NewPos, T, N,  Res).
goal
	solve(1, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 0, Sum).