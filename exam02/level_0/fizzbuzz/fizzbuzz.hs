main :: IO ()
main = do
  mapM_ (putStrLn . fizzbuzzer) [1 .. 100]

fizzbuzzer :: Int -> String
fizzbuzzer n
  | (n `mod` 3 == 0) && (n `mod` 5 == 0) = "fizzbuzz"
  | n `mod` 3 == 0 = "fizz"
  | n `mod` 5 == 0 = "buzz"
  | otherwise = show n
