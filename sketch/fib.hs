fib n 
  | n < 0 = - fib (-n)
  | n < 2 = n
fib n = fib (n - 2) + fib (n - 1)

main = do
  print $ map fib [-10..10]
