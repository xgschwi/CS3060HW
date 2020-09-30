Complete the template prolog files (task1, task2, and task3).
Edit this README file to mention the following: (a) how to run your program, (b) input (if any), (c) Sample test results for each of the tasks.


How to run the tasks: 

For task1, use the command: swipl task1.pl
From there insert queries relating to the facts:
favoriteDesert(X, Y).
isDesert(X, Y).
has(X, Y).
...

For task2, use the command: swipl task2.pl
From there insert queries to find the max number in a list.
The format is as below:
largest([1,2,3,...n], Max).

Any numbers may be put into this list and the max number will be returned

For task3, use the command: swipl task3.pl
Insert queries related to the destinations: 
toledo, detroit, sanFrancisco, columbus, philadelphia, newOrleans, chicago, and houston.
where the format to find flight routes is:

hasFlightRoute(Destination1, Destination2).

This uses hasDirectFlight(Destination1, Destination2) as a fact during its recursion




Results below:

xgschwi@csvm14:~/fa20-cs3060-hw/hw3$ swipl task1.pl
Welcome to SWI-Prolog (threaded, 64 bits, version 8.2.1)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?- isDesert(apple).
false.

?- has(cake,toppings).
true .

?- likes(xavier, Contents).
Contents = toppings ;
Contents = filling.

?- similar(cake, pie).
true.

?- has(X, Y).
X = cake,
Y = toppings ;
X = pie,
Y = toppings ;
X = cake,
Y = frosting ;
X = pie,
Y = filling.

?- sweet(bread).
false.

?- sweet(X).
X = pie ;
X = cake.

?- has(cake, Y).
Y = toppings ;
Y = frosting.

?- favoriteDesert(xavier, D).
D = pie.

?- favoriteDesert(ronni, cake).
true.

?- likes(X, Y).
X = xavier,
Y = toppings ;
X = xavier,
Y = filling ;
X = ronni,
Y = toppings ;
X = ronni,
Y = frosting.

?- halt.
xgschwi@csvm14:~/fa20-cs3060-hw/hw3$ swipl task2.pl
Welcome to SWI-Prolog (threaded, 64 bits, version 8.2.1)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?- largest([1, 45, 21, 20, 20, 0, 49, -5], Max).
Max = 49 ;
false.

?- largest([-9, -5, - 2, - 49], Max).
Max = - 2 ;
false.

?- largest([-500, 0], Max).
Max = 0 ;
false.

?- halt.
xgschwi@csvm14:~/fa20-cs3060-hw/hw3$ swipl task3.pl
Welcome to SWI-Prolog (threaded, 64 bits, version 8.2.1)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?- hasFlightRoute(newOrleans, Destination).
Destination = chicago ;
false.

?- hasFlightRoute(chicago, Destination).
false.

?- hasFlightRoute(toledo, Destination).
Destination = detroit ;
Destination = sanFrancisco ;
Destination = columbus ;
Destination = philadelphia ;
Destination = newOrleans ;
Destination = chicago ;
false.

?- hasFlightRoute(houston, Destination).
Destination = sanFrancisco ;
Destination = columbus ;
Destination = philadelphia ;
Destination = newOrleans ;
Destination = chicago ;
false.

?- hasFlightRoute(columbus, Destination).
Destination = philadelphia ;
Destination = newOrleans ;
Destination = chicago ;
false.

?- hasFlightRoute(detroit, Destination).
Destination = sanFrancisco ;
Destination = columbus ;
Destination = philadelphia ;
Destination = newOrleans ;
Destination = chicago ;
false.

?- halt.
