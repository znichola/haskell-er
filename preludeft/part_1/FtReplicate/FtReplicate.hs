module FtReplicate where

ftReplicate :: (Ord i, Num i) => i -> a -> [a]
ftReplicate n x
  | n <= 0 = []
  | otherwise = x : ftReplicate (n - 1) x
