/* here you write your code for Task 2 */
% Written by Xavier Gschwind
count(X) :- count(X), X is X + 1.
writer(List2):- write("Please enter the name of the file you would like to output to: "), read(X),
        open(X, append, Stream), write(Stream, List2), write(Stream,", "), close(Stream).

deleteFirst(_,[],[]).
deleteFirst(A, [A|List2], List2) :- !, 
	write("Please enter the name of the file you would like to output to: "), read(X),
	open(X, append, Stream), write(Stream, List2), write(Stream,", "), close(Stream). % No backtracking and if A is head of List2 remove it
isEmpty([]).
% Head is not A so traverse past the head and pass the rest of the list.
%deleteFirst(A, [LH|List2], [LH|Result]) :- !, deleteFirst(A, List2, Result).%, !,
	%write("Please enter the name of the file you would like to output to: "), read(X), 
	%open(X, append, Stream), write(Stream, [LH|Result]), write(Stream,", "), close(Stream).

deleteAll(_, [], []).
%deleteAll(A, [LH|LT], [LH|Result]):- 
deleteAll(A, [A|LT], List2) :- !, deleteAll(A, LT, List2),!, writer(List2). 
%	write("Please enter the name of the file you would like to output to: "), read(X),
%	open(X, append, Stream), write(Stream, List2), write(Stream,", "), close(Stream).

deleteAll(A, [LH|List2], [LH|Result]):- !, deleteAll(A, List2, Result).%, (isEmpty(List2) -> writer([LH|Result])).
%deleteAll(A, [LH|LT], List2):- \+(LH == A), writer(List2).
