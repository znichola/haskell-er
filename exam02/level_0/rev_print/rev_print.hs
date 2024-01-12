import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  putStrLn $ if length args == 1 then ftReverse $ head args else ""

ftReverse :: [a] -> [a]
ftReverse [] = []
ftReverse (x : xs) = ftReverse xs ++ [x]
