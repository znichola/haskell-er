module FtRepeat where

ftRepeat :: a -> [a]
ftRepeat x = x : ftRepeat x
