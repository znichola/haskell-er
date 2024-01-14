-- import FtTake (ftTake)
-- import make the linter shutup

ftTake :: (Num n, Ord n) => n -> [a] -> [a]
ftTake n _
  | n <= 0 = []
ftTake _ [] = []
ftTake n (x : xs) = x : ftTake (n - 1) xs


strings = ["foobar", "   spaces might be hard ?", "123456789", ""]
words = [["hello", "world"], ["the", "heck", "is", "7h1s", "#04"], ["", "", "foo", "bar"]]
numbers = [[1, 2, 3, 4, 5, 6, 7], [2147483647, -2147483648, 0, 1], []]
floats :: [Float]
floats = [1.333, 2.421, 12.9]
doubles = [0.123, -923.0, 1e10, -42e4]
empties = [ [], [], []]

main = do
  print "hello world"


test :: [a] -> [Bool]
test = map run
  where
    run t = allEqual $ zipWith (==) (ftTake 3 t) (take 3 t)


allEqual :: Eq a => [a] -> Bool
allEqual []     = True
allEqual (x:xs) = all (== x) xs
