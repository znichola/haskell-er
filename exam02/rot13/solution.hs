import Data.Char (chr, isAsciiLower, isAsciiUpper, ord)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  putStrLn $ solve args
  where
    solve [] = ""
    solve (x : xs) = map rotate x

wrap :: Int -> Int -> Int -> Int
wrap upper lower num
  | num > upper = num - upper + lower - 1
  | otherwise = num

rotate :: Char -> Char
rotate c
  | isAsciiUpper c = chr (wrap 90 65 (ord c + 13))
  | isAsciiLower c = chr (wrap 122 97 (ord c + 13))
  | otherwise = c
