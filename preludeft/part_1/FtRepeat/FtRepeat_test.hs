import Text.Printf (printf)
import FtRepeat (ftRepeat)

main = do
  printf "%s %s\n" "strings" $ pass $ run "strings"
  printf "%s %s\n" "string" $ pass $ run 'a'
  printf "%s %s\n" "listOfStrings" $ pass $ run ["foo", "bar"]
  printf "%s %s\n" "numbers" $ pass $ run 42
  printf "%s %s\n" "floats" $ pass $ run 1.34
  printf "%s %s\n" "doubles" $ pass $ run 10e6

pass v = if v then "Pass" else error "Fail"

takeAmounts :: [Int]
takeAmounts = [-3, 0, 1, 4, 6, 4200, -2147483648]

run :: (Show a) => a -> Bool
run t = allEqual $ map (testSingle t) takeAmounts

testSingle :: (Show a) => a -> Int -> Bool
testSingle s n = show (take n $ ftRepeat s) == show (take n $ repeat s)

allEqual :: (Eq a) => [a] -> Bool
allEqual [] = True
allEqual (x : xs) = all (== x) xs
