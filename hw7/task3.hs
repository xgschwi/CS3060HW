module Main where
negatives::[Integer]->Integer
negatives[] = 0 --base case

negatives(h:t) = if h < 0 then 1 + negatives(t) else negatives(t)

main = print()
