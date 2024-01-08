import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  putStrLn $ takeUntil (/= ' ') $ getFirstArg args

getFirstArg :: [String] -> String
getFirstArg [] = ""
getFirstArg [x] = x
getFirstArg (x : _) = ""

takeUntil :: (a -> Bool) -> [a] -> [a]
takeUntil p = foldr func []
  where
    func x acc = if p x then x : acc else []