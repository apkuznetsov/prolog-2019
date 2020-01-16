domains
	list = integer* 
predicates
	nondeterm solve(integer, list, list)
clauses             	
	solve(N,   [],    []).
	solve(Pos, [_|T], N) :- 
		Pos mod 2 <> 0, 
		NewPos = Pos + 1, 
		solve(NewPos, T, N1), 
		N = [0|N1].	
	solve(Pos, [H|T], N) :- 
		Pos mod 2 <> 1,
		NewPos = Pos + 1, 
		solve(NewPos, T, N1), 
		N = [H|N1].
goal
	solve(1, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], Res).