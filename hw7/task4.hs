module Main where
   toDigits::Integer -> [Integer]
   toDigits 0 = []
 
   toDigits x
    | x < 10 && x > 0 = [x]
    | x > 0 = (toDigits $ quot x 10) ++[x `mod` 10]
    | otherwise = toDigits 0

 ---  toDigits x = if x `mod` 10 > 0 then toDigits (x `div` 10)++[x `mod` 10]--h:toDigits t else toDigits t

   main = print()
