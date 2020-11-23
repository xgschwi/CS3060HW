module Main where
import Data.Char

bar:: [Int] -> Int

bar[1] = 0
bar x= foldl(\acc y -> if y `mod` 2 == 0 then acc*y*y*y else acc) 1 x

upperCharCount:: [Char] -> Int

upperCharCount[] = 0
upperCharCount (word:t) = if isUpper(word) then 1 + upperCharCount t else upperCharCount t

shrtStrCount:: [String]->Int

shrtStrCount[] = 0
shrtStrCount (list:t) = if length list > 3 then 1 + shrtStrCount t else shrtStrCount t

main = print()
