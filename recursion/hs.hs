module Hs (rvrs, deleteLast) where

	deleteLast :: String -> String
	deleteLast s = reverse $ drop 1 $ reverse s


letterIndex :: Int -> Char
letterIndex index = "Curry is awesome" !! index

rvrs :: String -> String
rvrs s = drop 9 s ++ take 4 (drop 5 s) ++ take 5 s

