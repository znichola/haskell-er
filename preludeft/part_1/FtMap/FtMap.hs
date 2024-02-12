module FtMap where

ftMap :: (a -> b) -> [a] -> [b]
ftMap _ [] = []
ftMap f (x:xs) = f x : ftMap f xs
