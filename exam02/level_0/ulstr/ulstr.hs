import Data.Char (isAsciiLower, isAsciiUpper, toLower, toUpper)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  putStrLn $ if length args == 1 then solve args else ""
  where
    solve a = map transform (head a)

transform :: Char -> Char
transform c
  | isAsciiLower c = toUpper c
  | isAsciiUpper c = toLower c
  | otherwise = c
