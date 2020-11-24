module Main where
   type Card = (Rank, Suit)
   type Hand = [Card]

   data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | King | Queen | Ace deriving (Show)
   data Suit = Spades | Hearts | Clubs | Diamonds deriving (Show)

   value::Rank -> Integer

   value Two = 2
   value Three = 3
   value Four = 4
   value Five = 5
   value Six = 6
   value Seven = 7
   value Eight = 8
   value Nine = 9
   value Ten = 10
   value Jack = 11
   value Queen = 12
   value King = 13
   value Ace = 14

   cardValue :: Card -> Integer -- Returns value of a card
   cardValue (rank, suit) = value rank

   upperCard :: Card -> Card -> Card -- Returns card with greater value
   upperCard c1 c2 = if cardValue c1 > cardValue c2 then c1 else c2

   findVals:: Hand -> [Integer] -- Helper function to map values from a Hand
   findVals hand = map cardValue hand

   sumValue:: Hand -> Integer -- Sums the values in a hand
   sumValue hand = foldl (+) 0 (findVals hand)

   lowerHand:: Hand -> Hand -> Hand -- Returns the hand with the lowest value
   lowerHand hand1 hand2 = if sumValue hand1 > sumValue hand2 then hand1 else hand2

   main = print()
