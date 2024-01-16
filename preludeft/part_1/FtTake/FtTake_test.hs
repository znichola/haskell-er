import Text.Printf (printf)
import FtTake (ftTake)
-- import make the linter shutup

strings = ["foobar", "   spaces might be hard ?", "123456789", ""]

words = [["hello", "world"], ["the", "heck", "is", "7h1s", "#04"], ["", "", "foo", "bar"]]

numbers = [[1, 2, 3, 4, 5, 6, 7], [2147483647, -2147483648, 0, 1], []]

floats :: [Float]
floats = [1.333, 2.421, 12.9]

doubles = [0.123, -923.0, 1e10, -42e4]

empties = [[], [], []]

takeAmounts :: [Int]
takeAmounts = [-3, 0, 1, 4, 6, 2147483647, -2147483648]

main = do
  printf "%s %s\n" "strings" $ pass $ run strings
  -- printf "%s %s\n" "words" pass $ run words
  printf "%s %s\n" "numbers" $ pass $ run numbers
  printf "%s %s\n" "floats" $ pass $ run floats
  printf "%s %s\n" "doubles" $ pass $ run doubles
  -- printf "%s %s\n" "strings" pass $ run empties

pass v = if v then "Pass" else "Fail"

run :: (Show a) => [a] -> Bool
run t = allEqual $ map (testSingle t) takeAmounts

testSingle :: (Show a) => [a] -> Int -> Bool
testSingle s n = show (ftTake n s) == show (take n s)

allEqual :: (Eq a) => [a] -> Bool
allEqual [] = True
allEqual (x : xs) = all (== x) xs
