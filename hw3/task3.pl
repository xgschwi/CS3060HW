/* here you write your code for Task 3 */
% Written by Xavier Gschwind

hasDirectFlight(newOrleans, chicago).
hasDirectFlight(philadelphia, newOrleans).
hasDirectFlight(columbus, philadelphia).
hasDirectFlight(sanFrancisco, columbus).
hasDirectFlight(detroit, sanFrancisco).
hasDirectFlight(toledo, detroit).
hasDirectFlight(houston, sanFrancisco).

hasFlightRoute(X,Y):- hasDirectFlight(X, Y). % has flight route is true
						% If there is a direct flight left

% hasFlightRoute is true if there is a direct flight, and that direct flight's Y
% destination is checked for more flight routes with the recursive function.
hasFlightRoute(X, Z):- hasDirectFlight(X,Y), hasFlightRoute(Y,Z).

