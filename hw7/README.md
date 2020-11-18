# Assignment1Haskell

***Task1***

For Task 1,the user can use the command 'ghc -o hello task1.hs' to compile task1 as hello.exe. The user can run hello.exe through "./hello", and this will print "Hello, you are hard working."


Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw7 (master)
$ ghc -o hello task1.hs

Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw7 (master)
$ ./hello
"Hello, you are hard working."


***Task2***

For task 2, the user can use the function d5 to send in a list and return a sublist of all the integers divisible by 5 in the given list. The user can use the command "ghci task2.hs" to load the program. Then, the user can use "d5[1,2,3...]" to give the function a list to process. The multiples of 5 are returned in a sublist.


Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw7 (master)
$ ghci task2.hs
WARNING: GHCi invoked via 'ghci.exe' in MinTTY consoles (e.g., Cygwin or MSYS)
         doesn't handle Ctrl-C well; use the 'ghcii.sh' shell wrapper instead
GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( task2.hs, interpreted )
Ok, one module loaded.
*Main> d5[34,2,14,25,15,32,20]
[25,15,20]
*Main> d5[6,8,10,10,24,25,30,1,4,5]
[10,10,25,30,5]
*Main> :quit
Leaving GHCi.


***Task 3***

For task3, the program will count how many negative numbers are in a given list and return that to the user. Run "ghci task3.hs" to load the program. Then, use "negatives[1,-2,3...]" to process the list.


Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw7 (master)
$ ghci task3.hs
WARNING: GHCi invoked via 'ghci.exe' in MinTTY consoles (e.g., Cygwin or MSYS)
         doesn't handle Ctrl-C well; use the 'ghcii.sh' shell wrapper instead
GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( task3.hs, interpreted )
Ok, one module loaded.
*Main> negatives[-1,2,-3,-4,5,6,7,-9,-3,2,1]
5
*Main> negatives[1,2,3,4,-5,-2,6]
2
*Main> :quit

<interactive>:3:1: error: lexical error at character '\ESC'
*Main> :quit
Leaving GHCi.

***Task 4***

For task4, the user can run "ghci task4.hs" to load the program to convert a given integer into its digits in a list. Using the form "toDigits(1234)" the user can input their numbers. If the number is 0 or negative, an empty list will be the resulting output.


Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw7 (master)
$ ghci task4.hs
WARNING: GHCi invoked via 'ghci.exe' in MinTTY consoles (e.g., Cygwin or MSYS)
         doesn't handle Ctrl-C well; use the 'ghcii.sh' shell wrapper instead
GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( task4.hs, interpreted )
Ok, one module loaded.
*Main> toDigits 3754
[3,7,5,4]
*Main> toDigits 0
[]
*Main> toDigits(-17)
[]
*Main> :quit
Leaving GHCi.


