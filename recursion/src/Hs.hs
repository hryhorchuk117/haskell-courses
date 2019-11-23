module Hs where


--7.11

tensDigit :: Integral a => a -> a
tensDigit x = d where d = xLast `mod` 10 where xLast = x `div` 10

tensDigitNew :: Integral a => a -> a
tensDigitNew x = d where d = snd (divMod xLast 10) where xLast = fst (divMod x 10)

--2

sumToN :: Integer -> Integer
sumToN 1 = 1
sumToN n = sumToN(n - 1) + n

--3

recursiveMult :: Integer -> Integer -> Integer
recursiveMult _ 0 = 0
recursiveMult 0 _ = 0
recursiveMult a 1 = a
recursiveMult a b = recursiveMult a (b - 1) + a

--4

mcCarthy :: Integer -> Integer
mcCarthy x = if x > 100 then (x - 10) else mcCarthy . mcCarthy $ (x + 11)

--5

numbersToWords :: Integer -> String
numbersToWords 1 = "one"
numbersToWords 2 = "two"
numbersToWords 3 = "three"
numbersToWords 4 = "four"
numbersToWords 5 = "five"
numbersToWords 6 = "six"
numbersToWords 7 = "seven"
numbersToWords 8 = "eight"
numbersToWords 9 = "nine"
numbersToWords 0 = "zero"
numbersToWords n = numbersToWords(div n 10) ++ "-" ++ numbersToWords(mod n 10)
