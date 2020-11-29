module Main where

myCount:: Eq a => a ->[a]-> Int

myCount _ [] = 0
myCount p (h:t) = if p == h then 1 + myCount p t else myCount p t
main = print()
