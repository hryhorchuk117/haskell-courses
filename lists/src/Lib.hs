module Lib where

zipNew :: [a] -> [b] -> [(a,b)]
zipNew [] _ = []
zipNew _ [] = []
zipNew (h1:t1) (h2:t2) = [(h1,h2)] ++ zipNew t1 t2


zipWithNew :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWithNew [] _ = []
zipWithNew _ [] = []
zipWithNew (h1:t1) (h2:t2) = [] ++ zipWithNew t1 t2