/* here you write your code for Task 2 */
/* Written by Xavier Gschwind*/

largest([], 0). % An empty lists max number is nothing, zero
largest([L], L):- !, true. % prevents back tracking to avoid unnecesary 2nd identical max value

largest([H|T], Max):- largest(T, Max), Max >= H. % Max comparison is after function call in 
						% subgoals so largest can keep getting called as necessary
largest([H|T], H):- largest(T, Max), H > Max. % Detects when head of list is greater than Max
