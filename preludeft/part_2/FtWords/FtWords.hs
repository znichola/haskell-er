module FtWords where

import Data.Char (isSpace)

ftWords :: String -> [String]
ftWords s = case dropWhile isSpace s of
  "" -> []
  s' -> w : ftWords s'' where (w, s'') = break isSpace s'
