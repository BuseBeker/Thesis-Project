
generate_questions([X], Result) :-
   cartesian_product1([[]], X, Result).
   
generate_questions([X | Rest], Result) :-
   generate_questions(Rest, R),
   cartesian_product1(R, X, Result).


cartesian_product1([], _, []).

cartesian_product1([X | Xs], Y, Result) :-
   cartesian_product2(X, Y, R2),
   cartesian_product1(Xs, Y, R1),
   append(R2, R1, Result).


cartesian_product2(_, [], []).

cartesian_product2(X, [Y | Ys], [List | Rest]) :-
   append([Y], X, List),
   cartesian_product2(X, Ys, Rest).






