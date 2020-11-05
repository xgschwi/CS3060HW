For task 1, the user can input scala task1.scala into the command line to run task1. Then the user can input two lines of text which will be written to the file task1.txt.
xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ scala task1.scala
This is line 1
This is line 2 for this assignment
xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ cat task1.txt
This is line 1
This is line 2 for this assignment



For task 2, the user can use the command scala task2.scala to run task2. The user can then input a text file to read from. My example uses task2.txt since that file exists in the same directory and has the desired keywords. For files with the word "Scala" the result will be "The file content is interesting". For "Ruby", the file content is not interesting. For anything else, the file is meaningless.

xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ scala task2.scala
Please input a file to read from
task2.txt
The file is meaningless
xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ cat task2.txt
This contains
nothing
Yo
xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ vi task2.txt
xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ scala task2.scala
Please input a file to read from
task2.txt
The file content is interesting
xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ cat task2.txt
This contains
Scala
Yo
xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ vi task2.txt
xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ scala task2.scala
Please input a file to read from
task2.txt
The file content is not interesting
xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ cat task2.txt
This contains some Ruby
and other words
Yeah


For task 3, the user can input the command scala task3.scala to run task 3. This will return the cubes of a where a is iterated from 5 to 54.


xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ scala task3.scala
The cube of 5 is 125
The cube of 6 is 216
The cube of 7 is 343
The cube of 8 is 512
The cube of 9 is 729
The cube of 10 is 1000
The cube of 11 is 1331
The cube of 12 is 1728
The cube of 13 is 2197
The cube of 14 is 2744
The cube of 15 is 3375
The cube of 16 is 4096
The cube of 17 is 4913
The cube of 18 is 5832
The cube of 19 is 6859
The cube of 20 is 8000
The cube of 21 is 9261
The cube of 22 is 10648
The cube of 23 is 12167
The cube of 24 is 13824
The cube of 25 is 15625
The cube of 26 is 17576
The cube of 27 is 19683
The cube of 28 is 21952
The cube of 29 is 24389
The cube of 30 is 27000
The cube of 31 is 29791
The cube of 32 is 32768
The cube of 33 is 35937
The cube of 34 is 39304
The cube of 35 is 42875
The cube of 36 is 46656
The cube of 37 is 50653
The cube of 38 is 54872
The cube of 39 is 59319
The cube of 40 is 64000
The cube of 41 is 68921
The cube of 42 is 74088
The cube of 43 is 79507
The cube of 44 is 85184
The cube of 45 is 91125
The cube of 46 is 97336
The cube of 47 is 103823
The cube of 48 is 110592
The cube of 49 is 117649
The cube of 50 is 125000
The cube of 51 is 132651
The cube of 52 is 140608
The cube of 53 is 148877
The cube of 54 is 157464





For task 4, the user may run it via "scala task4.scala", this will run an analysis on the text file "story.txt" to give statistics on the total words, number of distinct words, the second most frequent word, and the number of words starting with the letter s.

xgschwi@csvm14:~/fa20-cs3060-hw/hw5$ scala task4.scala
The total number of words is: 986
The number of Distinct Words is: 441
The second most frequent word is: to 30
The number of words that start with s is 39
