module FtTake where

ftTake :: (Num n, Ord n) => n -> [a] -> [a]
ftTake n _
  | n <= 0 = []
ftTake _ [] = []
ftTake n (x : xs) = x : ftTake (n - 1) xs

