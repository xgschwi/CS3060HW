# Assignment2Ruby

This is your 2nd homework assignment in Ruby.

For task 1, you have to input command line arguments. Any word may be typed for the string to be search for after the ruby task1.rb command, however, string is the intended keyword. Next, you may input any file name however, the program will only work if the file name is a name of a text file in the same directory as the task. The input file I use is "task1.txt". The user only has to input the name itself, not the file extention".txt". So the user in this case should input "task1" for the file name. Each line, with a line number, containing the string from the command line argument will be printed. If a nonexstent file is used, you will have to renter the command for the program.

For task 2, the user does not have to do any work for the functions to execute. This task will create an array of 40 elements with values between 10 and 80 in it. This array is passed to a function that prints the square of the elements in A. Then, each element is printed 4 times, then all the elements that are multiples of 3 are printed. Then, the product of all elements in the array is calculated.

For task 3, a Fibonacci Series is printed twice via iteration and recursion. These methods of calculation are also compared to find out the computation time involved with each method.

For task 4, a nested hash structure is used to create a Tree structure. In this Tree structure, the names of each node in the tree is printed after the visit all function is called to traverse through all the children in the hash.

For task 5, a list of 50 shape objects is created. These shape objects are determined to be either a rectangle or circle depending on the rand() function. Once the type of shape is determined, a rectangle or circle object is constructed with a random radius, width, and/or length and a color and set into the list of the shapes. Then, each shape's area will be calculated and printed for the user to see.


Output for all tasks:

xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task1.rb word task1

"Here are all the lines that include this string:"
"3 random line without the intended keyword in it"
"9 something, something, something, and other words for this line"
"10 some more random words and such and what not"
"13 that is unless the word you searched for is not string so"
xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task1.rb string task1

"Here are all the lines that include this string:"
"1 Here is a text file with some great strings in it"
"2 These strings can determine how much output"
"4 is sent to the user, if 'string' is their input,"
"7 if not, surely this line #5 will be printed because of the strings in it"
"8 a string is pretty cool"
"12 you see that other line said string so it was included"
"13 that is unless the word you searched for is not string so"
"14 please input string so task1 will produce the intended output"
xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task1.rb string randomFileName
"Please enter a valid file name (task1) when you execute this program"

------------------

xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task2.rb
"Here are the squares of each element of the array: "
"1681"
"2809"
"100"
"5329"
"2401"
"1024"
"529"
"1600"
"3969"
"3721"
"2401"
"2500"
"3721"
"841"
"1369"
"2209"
"3600"
"1444"
"1225"
"5929"
"1936"
"1936"
"3364"
"324"
"1156"
"169"
"900"
"2025"
"6084"
"1681"
"3721"
"729"
"1156"
"144"
"576"
"3969"
"2601"
"5041"
"2401"
"2209"
"Here is each element printed 4 times: "
[41][41][41][41]
[53][53][53][53]
[10][10][10][10]
[73][73][73][73]
[49][49][49][49]
[32][32][32][32]
[23][23][23][23]
[40][40][40][40]
[63][63][63][63]
[61][61][61][61]
[49][49][49][49]
[50][50][50][50]
[61][61][61][61]
[29][29][29][29]
[37][37][37][37]
[47][47][47][47]
[60][60][60][60]
[38][38][38][38]
[35][35][35][35]
[77][77][77][77]
[44][44][44][44]
[44][44][44][44]
[58][58][58][58]
[18][18][18][18]
[34][34][34][34]
[13][13][13][13]
[30][30][30][30]
[45][45][45][45]
[78][78][78][78]
[41][41][41][41]
[61][61][61][61]
[27][27][27][27]
[34][34][34][34]
[12][12][12][12]
[24][24][24][24]
[63][63][63][63]
[51][51][51][51]
[71][71][71][71]
[49][49][49][49]
[47][47][47][47]
Here are all the multiples of 3 from the first array: [63, 60, 18, 30, 45, 78, 27, 12, 24, 63, 51]
"Here are the squares of the array: [1681, 2809, 100, 5329, 2401, 1024, 529, 1600, 3969, 3721, 2401, 2500, 3721, 841, 1369, 2209, 3600, 1444, 1225, 5929, 1936, 1936, 3364, 324, 1156, 169, 900, 2025, 6084, 1681, 3721, 729, 1156, 144, 576, 3969, 2601, 5041, 2401, 2209]"
"Here is the product of all the items in the array: 13308905381638687280591517376111166720748477441901697433600000000"

--------------------------------

xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task3.rb
            user     system      total        real
fA      0.000008   0.000001   0.000009 (  0.000202)
fB      0.137752   0.000000   0.137752 (  0.138191)
"Here are the results from function A and function B: "
832040
832040

---------------------

xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task4.rb
"Visiting all"
ggrandparent
grandparent1
parent1
child1
parent2
child2
child3
grandparent2
parent3
child4
parent4
child5
child6

--------------------

xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task5.rb
263.7
xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task5.rb
292.8199999999999
xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task5.rb
235.27999999999994
xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task5.rb
234.48
xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task5.rb
280.54
xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task5.rb
298.6599999999999
xgschwi@csvm14:~/fa20-cs3060-hw/hw2$ ruby task5.rb
322.06
