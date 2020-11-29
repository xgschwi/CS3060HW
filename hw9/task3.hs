module Main where
data Tree a = Leaf a | BinTree (Tree a) a (Tree a) deriving (Show)

lessThan5 (Leaf x) = if x < 5 then 1 else 0
lessThan5 (BinTree t1 x t2) = if x < 5 then lessThan5 t1 + 1 + lessThan5 t2 else lessThan5 t1 + lessThan5 t2

main=print()
