module FtReverse where

ftReverse :: [a] -> [a]
ftReverse [] = []
ftReverse (x : xs) = ftReverse xs ++ [x]
