/* here you write your code for Task 1 */
% Written by Xavier Gschwind


hasDirectFlight(newOrleans, chicago).
hasDirectFlight(philadelphia, newOrleans).
hasDirectFlight(columbus, philadelphia).
hasDirectFlight(sanFrancisco, columbus).
hasDirectFlight(detroit, sanFrancisco).
hasDirectFlight(toledo, detroit).
hasDirectFlight(houston, sanFrancisco).

hasFlightRoute(X,Y):- hasDirectFlight(X, Y). % has flight route is true
                                             % If there is a direct flight l

% hasFlightRoute is true if there is a direct flight, and that direct flight's Y
% destination is checked for more flight routes with the recursive function.
hasFlightRoute(X, Z):- hasDirectFlight(X,Y), hasFlightRoute(Y,Z).

% X has a route to Y and Y has a route to Location, so the route is printed via X to Y, and this repeats until Y's next stop is location. Then, the final case is called below this rule.
findFlightRoute(X, Location) :- hasFlightRoute(X, Y), hasFlightRoute(Y, Location), write(X), write("--"), write(Y), write("  "), !, findFlightRoute(Y, Location).
findFlightRoute(X, Location) :- hasDirectFlight(X, Location), write(X), write("--"), write(Location), true. % Location is the next stop from X. Base case
