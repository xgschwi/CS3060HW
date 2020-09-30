/* here you write your code for Task 1 */
/*Written by Xavier Gschwind*/

isDesert(pie).
isDesert(cake).
favoriteDesert(xavier, pie).
favoriteDesert(ronni, cake).
has(cake, toppings).
has(pie, toppings).
has(cake, frosting).
has(pie, filling).

likes(Person,Contents):- favoriteDesert(Person, Food) , has(Food, Contents).
similar(Desert1,Desert2):-isDesert(Desert1), isDesert(Desert2), \+ (Desert1 = Desert2).
same(Type1,Type2):- Type1 = Type2.
sweet(Desert):- isDesert(Desert).

