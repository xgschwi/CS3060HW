# Assignment9Scala-Haskell


Task1 crawls through websites that are given to it to provide statistics on the images and scripts. To run the code, the user can use the command `scala task1.scala` and input a URL when prompted.

Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw9 (master)
$ scala task1.scala
Please input a webpage URL to process: https://www.google.com/
The total number of images is: 1
The total number of scripts is: 2
The total amount of images is: 172
The number of pages with more than two images are: 1
The number of pages with more than two images (par) are: 1
The execution time of using a sequential collection was about: 5 seconds
The execution time of using a parallel collection was about: 1 seconds
The time saved with the parallel collection was about: 3 seconds


Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw9 (master)
$ scala task1.scala
Please input a webpage URL to process: https://www.13abc.com/
The total number of images is: 2
The total number of scripts is: 6
The total amount of images is: 166
The number of pages with more than two images are: 9
The number of pages with more than two images (par) are: 9
The execution time of using a sequential collection was about: 14 seconds
The execution time of using a parallel collection was about: 2 seconds
The time saved with the parallel collection was about: 11 seconds


Task 2 uses the function `myCount p [list contents]` to find count the number of times p is found within the provided list. This works on any type that is given. To run the code, the user can use the command `ghci task2.hs` and use the function myCount as described to use it.


Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw9 (master)
$ ghci task2.hs
WARNING: GHCi invoked via 'ghci.exe' in MinTTY consoles (e.g., Cygwin or MSYS)
         doesn't handle Ctrl-C well; use the 'ghcii.sh' shell wrapper instead
GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( task2.hs, interpreted )
Ok, one module loaded.
*Main> myCount 'b' "bebokerb"
3
*Main> myCount 1 [1,0,0,1,3,1,1,1]
5
*Main> myCount 'c' "cghcerucccec"
6
*Main> :quit
Leaving GHCi.


Task 3 takes a Binary Tree, and it counts the number of nodes that possess a value below 5 within it. To start running the code, the user can input `ghci task3.hs`. The function `lessThan5 BinTree` will run the code on a given binary Tree. Samples of Binary Tree input are typed below.

Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw9 (master)
$ ghci task3.hs
WARNING: GHCi invoked via 'ghci.exe' in MinTTY consoles (e.g., Cygwin or MSYS)
         doesn't handle Ctrl-C well; use the 'ghcii.sh' shell wrapper instead
GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( task3.hs, interpreted )
Ok, one module loaded.
*Main> lessThan5 (BinTree (BinTree (Leaf 6) 2 (Leaf 3)) 9 (BinTree (BinTree (Leaf 2) 3 (Leaf 4)) 5 (BinTree (Leaf 2) 3 (Leaf 4))))
8
*Main> lessThan5 (BinTree (BinTree (Leaf 1) 2 (Leaf 3)) 4 (BinTree (BinTree (Leaf 2) 3 (Leaf 4)) 3 (BinTree (Leaf 2) 3 (Leaf 4))))
11
*Main> lessThan5 (BinTree (BinTree (Leaf 4) 2 (Leaf 8)) 5 (BinTree (BinTree (Leaf 7) 3 (Leaf 5)) 3 (BinTree (Leaf 6) 3 (Leaf 9))))
5
*Main> :quit
Leaving GHCi.



