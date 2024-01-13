import System.Environment (getArgs)

main = do
  args <- getArgs
  putStrLn $ if length args == 3 then solve args else ""
  where
    solve (a : "*" : b : _) = show $ (read a :: Float) * (read b :: Float)
    solve (a : "+" : b : _) = show $ (read a :: Float) + (read b :: Float)
    solve (a : "-" : b : _) = show $ (read a :: Float) - (read b :: Float)
    solve (a : "/" : b : _) = show $ (read a :: Float) / (read b :: Float)
    solve _ = "Error"
