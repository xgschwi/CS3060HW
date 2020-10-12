Complete the template prolog files (task1, task2, and task3).
Edit this README file to mention the following: (a) how to run your program, (b) input (if any), (c) Sample test results for each of the tasks.

For task one, you can use the command "swipl task1.pl" to access task1. Input specific to this task includes using the rule findFlightRoute(X,Y).
To print out the flight routes one may type in locations like toledo, chicago, newOrleans, sanFrancisco, etc. to the rule. 

swipl task1.pl ->

?- findFlightRoute(toledo, chicago).
toledo--detroit  detroit--sanFrancisco  sanFrancisco--columbus  columbus--philadelphia  philadelphia--newOrleans  newOrleans--chicago
true.

?- findFlightRoute(toledo, sanFrancisco).
toledo--detroit  detroit--sanFrancisco
true.

?- findFlightRoute(toledo, bowlingGreen).
false.


For task 2, you can type in the command "swipl task2.pl" to access task2. In this task you can delete the first occurence of a character in a list as well as all the occurences in a list.
Following this, you are prompted to type in the name of a file you would like to output to. I chose task2 for the deleteFirst rule and task2b for deleteAll rule. deleteFirst(A, [a,b,c,d,...]) is the rule where
your rule will take a list as the second argument and the first argument is the member of that list that you would like to delete when the first occurence of the first argument is detected.
deleteAll(A, [a,b,c,d...]). Deletes all of A from the list in the second argument.






For task3, type the command swipl task3.pl. Then input a sudoku puzzle with empty spaces as underscores in the form "sudoku([1st row Col1, 1st row col2, _, ...], Solution). Input every number of the puzzle in the form where you type everything row by row. For the sake of SWI Prolog, it is best to input the underscores close to the beginning and a minimal number of _'s as possible for the sake of computation time.


?- sudoku([5,_,4,6,7,8,9,1,2,                                                                                                                                                                                      6,7,2,1,9,5,3,4,8,                                                                                                                                                                                                 1,9,8,3,4,2,5,6,7,                                                                                                                                                                                                 8,5,9,7,6,1,4,2,3,                                                                                                                                                                                                 4,2,6,8,5,3,7,9,1,                                                                                                                                                                                                 7,1,3,9,2,4,8,5,6,                                                                                                                                                                                                 9,6,1,5,3,7,2,8,4,                                                                                                                                                                                                 2,8,7,4,1,9,6,3,5,                                                                                                                                                                                                 3,4,5,2,8,6,1,7,9], Solution).
Solution = [5, 3, 4, 6, 7, 8, 9, 1, 2|...] ;
false.

?- sudoku([5,_,4,6,_,8,9,_,2,                                                                                                                                                                                      6,7,2,1,9,5,3,4,8,                                                                                                                                                                                                 1,9,8,3,4,2,5,6,7,                                                                                                                                                                                                 8,5,9,7,6,1,4,2,3,                                                                                                                                                                                                 4,2,6,8,5,3,7,9,1,                                                                                                                                                                                                 7,1,3,9,2,4,8,5,6,                                                                                                                                                                                                 9,6,1,5,3,7,2,8,4,                                                                                                                                                                                                 2,8,7,4,1,9,6,3,5,                                                                                                                                                                                                 3,4,5,2,8,6,1,7,9], Solution).
Solution = [5, 3, 4, 6, 7, 8, 9, 1, 2|...] ;
false.


As you can see, SWI Prolog is not printing out the rest of the sudoku solution because the array is so long. This is the reason why the underscores are best placed at the start of the puzzle for this version.
