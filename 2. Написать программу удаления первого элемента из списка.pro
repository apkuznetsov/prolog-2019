domains
	list = integer*
predicates
	del(list, list)
clauses
	del([_|Tail], Tail).
goal
	del([1, 2, 3, 4, 5, 6, 7], L).