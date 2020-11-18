module Main where
d5::[Integer]->[Integer]
d5[] = []

d5(h:t) = if h `mod` 5 == 0 then h:d5(t) else d5(t)

main = print()
