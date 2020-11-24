# Assignment2Haskell

Task 1
--------


For Task1, the user can start the program with the command `ghci task1.hs`. Following this, the user can use three types of functions as seen below. `bar x` will give the product of all even integers below x. `upperCharCount x` will take a string "x", and it will tell the user how many uppercase letters are present within the string. In `shrtStrCount x`, the function will take a list of strings ["string1", "string2"... "stringn"], and it will count how many have strings with less than 3 characters present.



Xavie@LAPTOP-XGschwind MINGW64 ~/Desktop/fa20-cs3060-hw/hw8 (master)
$ ghci task1.hs
WARNING: GHCi invoked via 'ghci.exe' in MinTTY consoles (e.g., Cygwin or MSYS)
         doesn't handle Ctrl-C well; use the 'ghcii.sh' shell wrapper instead
GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( task1.hs, interpreted )
bOk, one module loaded.
*Main>bar 0
0
*Main> bar 1
0
*Main> bar 2
0
*Main> bar 3
8
*Main> bar 4
8
*Main> bar 5
512
*Main> bar 6
512
*Main> bar 7
110592
*Main> bar 8
110592
*Main> bar 9
56623104
*Main> bar 10
56623104
*Main> upperCharCount "HeLloEvErYoNe"
6
*Main> upperCharCount "someUPPERcaseletters"
5
*Main> "ANDmore"
"ANDmore"
*Main> upperCharCount "ANDmore"
3
*Main> shrtStrCount ["hi", "and", "happy", "holidays"]
1
*Main> shrtStrCount ["to", "go", "hi", "yes", "another", "string"]
3
*Main> :quit
Leaving GHCi.


Task 2
---------


For Task2, the user can use the function `upperCard c1 c2` to compare two cards and return the one with the higher value. The function `sumValue hand` will take a hand from the user and compute the total value of all the cards present in that hand. The function `lowerHand hand1 hand2` will take two hands from the user and return the hand that has the lower total value. Their usage is detailed below.



$ ghci task2.hs
WARNING: GHCi invoked via 'ghci.exe' in MinTTY consoles (e.g., Cygwin or MSYS)
         doesn't handle Ctrl-C well; use the 'ghcii.sh' shell wrapper instead
GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( task2.hs, interpreted )
Ok, one module loaded.
*Main> upperCard (Nine, Hearts) (Four, Diamonds)
(Nine,Hearts)
*Main> upperCard (Ace, Spades) (King, Hearts)
(Ace,Spades)
*Main> sumValue [(Five, Hearts), (Ten, Diamonds), (Two, Spades)]
17
*Main> sumValue [(Seven, Spades), (Seven, Clubs), (Jack, Hearts)]
25
*Main> lowerHand [(Four, Hearts), (Five, Diamonds), (Six, Clubs)] [(Six, Spades)]
[(Four,Hearts),(Five,Diamonds),(Six,Clubs)]
*Main> lowerHand [(Three, Diamonds), (King, Hearts)] [(Queen, Diamonds), (Two, Hearts), (Three, Spades)]
[(Queen,Diamonds),(Two,Hearts),(Three,Spades)]

