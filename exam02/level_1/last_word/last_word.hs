import Data.Char (isSpace)
import System.Environment (getArgs)

main = do
  args <- getArgs
  putStrLn $ if length args == 1 then solve $ head args else ""
  where
    solve string = ftReverse $ takeUntil (/= ' ') $ trimSpace $ ftReverse string

takeUntil :: (Eq a) => (a -> Bool) -> [a] -> [a]
takeUntil p = foldr func []
  where
    func x acc = if p x then x : acc else []

ftReverse :: String -> String
ftReverse [] = []
ftReverse (x : xs) = ftReverse xs ++ [x]

trimSpace :: String -> String
trimSpace [] = []
trimSpace (x : xs)
  | isSpace x = trimSpace xs
  | otherwise = x : xs
