


For task1, the purpose is to randomly generate 50 shapes that are either Rectangles or Circles with random sizes, and calculate and display the total area that all the shapes show.

The user only needs to use the command "scala task1.scala" to use the program

Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw6 (master)
$ scala task1.scala
The total area of the 50 shapes are: 1095.86






For task2, the purpose is to download webpages and count the number of images and scripts in one of them, then the amount of images from all the links connected to the initial webpage as well as the number of webpages with more than two images. Then, the execution time using a sequential collection is compared against that of a parallel collection when processing all the webpages.

The user needs to run the command "scala task2.scala" and input a webpage URL in the program when prompted to run the analysis.


Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw6 (master)
$ scala task2.scala
Please input a webpage URL to process: https://www.google.com/
The total number of images is: 1
The total number of scripts is: 2
The total amount of images is: 172
The number of pages with more than two images are: 1
The execution time of using a sequential collection was about: 3 seconds
The execution time of using a parallel collection was about: 0 seconds
The time saved with the parallel collection was about: 2



For task3, the purpose is to take a list of strings and a list of integers, and return a list of the unique characters in each string - and return the sum of all the cubes in the list of integers.

The user only needs to run the command "scala task3.scala" to see the result of the given lists.


Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw6 (master)
$ scala task3.scala
The distinct characters of List("happy", "hurray", "hello") is: List(List(h, a, p, y), List(h, u, r, a, y), List(h, e, l, o))
The sum of cubes of List(1,3,6,4,2) is: 316

