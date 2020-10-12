/* here you write your code for Task 2 */
% Written by Xavier Gschwind

% Writes code to file of user's choice
writer(List2):- write("Please enter the name of the file you would like to output to: "), read(X),
        open(X, append, Stream), write(Stream, List2), write(Stream,", "), close(Stream).

deleteFirst(_,[],[]).
deleteFirst(A, [A|LT], LT).

% Head is not A so traverse past the head and pass the rest of the list.
deleteFirst(A, [LH|List2], [LH|Result]) :- deleteFirst(A, List2, Result).

writerDelFirst(A, List1, List2) :- deleteFirst(A, List1, List2), writer(List2).
writerDelAll(A, List1, List2) :- deleteAll(A, List1, List2), writer(List2).

% searches each head for A until the the second list has been traversed fully
deleteAll(_, [], []).
deleteAll(A, [A|LT], List2) :- !, deleteAll(A, LT, List2). 

deleteAll(A, [LH|List2], [LH|Result]):- !, deleteAll(A, List2, Result).
