domains
	list = integer*
predicates
	insert_sort(list, list)
	insert(integer, list, list)
clauses
	insert_sort([], []).
	insert_sort([H1|T1], L2) :- 
		insert_sort(T1, T2), 
		insert(H1, T2, L2).
	insert(X, [H1| T1], [H1| T2]) :-  
		X > H1, 
		!, 
		insert(X, T1, T2).
	insert(X, L1,       [X|L1]).

goal
	insert_sort ([4, 7, 3, 9], L).