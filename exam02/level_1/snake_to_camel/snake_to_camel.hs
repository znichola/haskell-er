import Data.Char (isAlpha, isLower, isSpace, isUpper)
import System.Environment (getArgs)

main = do
  args <- getArgs
  putStrLn $ if length args == 1 then solve args else ""
  where
    solve (snake : _) = snakeToCamel [] snake

snakeToCamel :: String -> String -> String
snakeToCamel _ [] = []
snakeToCamel acc (x : y : ys)
  | x == '_' && y == '_' = snakeToCamel acc (y : ys)
  | x == '_' && isAlpha y = snakeToCamel (y : acc) ys
  | isAlpha x = snakeToCamel (x : acc) (y : ys)
  | otherwise = "error"

-- words' s = case dropWhile isSpace s of
--   "" -> []
--   s' -> w : words' s''
--     where
--       (w, s'') =
--         break isSpace s'

-- ftSplit :: String -> [String]
-- ftSplit s = case dropWhile isSpace s of
--   "" -> []
--   s' -> w : ftSplit s'' where (w, s'') = break isSpace s'
