module Main where
   import Data.Char

   bar:: Int -> Int

   bar 0 = 0
   bar 1 = 0
   bar 2 = 0-- Each of these should be zero

   --Sums the cubes of even integers below x
   bar x = foldl(\acc y -> if y `mod` 2 == 0 then acc*y*y*y else acc) 1 [1..x-1]

   -- Gives the count of uppercase characters in a string
   upperCharCount:: [Char] -> Int

   upperCharCount[] = 0 -- Base Case
   upperCharCount (word:t) = if isUpper(word) then 1 + upperCharCount t else upperCharCount t

   -- Count of short strings
   shrtStrCount:: [String]->Int

   shrtStrCount[] = 0
   shrtStrCount (list:t) = if length list < 3 then 1 + shrtStrCount t else shrtStrCount t

   main = print()
