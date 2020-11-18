module Main where
   toDigits::Integer -> [Integer]
   toDigits 0 = [] --base case
 
   toDigits x
    | x < 10 && x > 0 = [x]
    | x > 0 = (toDigits $ quot x 10) ++[x `mod` 10]
    | otherwise = toDigits 0 --catches negative cases and returns base case

   main = print()
