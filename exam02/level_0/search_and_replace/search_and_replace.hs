import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  putStrLn $ if length args == 3 then solve (args !! 0) (head $ args !! 1) (head $ args !! 2) else ""
  where
    solve replace letter with = map (\c -> if c == letter then with else c) replace