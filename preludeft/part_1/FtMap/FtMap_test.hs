import Data.Char (toUpper)
import FtMap (ftMap)
import Text.Printf (printf)

main = do
  printf "%s %s\n" "string" $ pass $ run toUpper "words and suff ?! 🤖"
  printf "%s %s\n" "number list" $ pass $ run (* 2) [1, 2, 3, 4, 5]
  printf "%s %s\n" "listOfStrings" $ pass $ run length ["foo", "bar"]
  printf "%s %s\n" "empty" $ pass $ run toUpper []

pass v = if v then "Pass" else error "Fail"

takeAmounts :: [Int]
takeAmounts = [-3, 0, 1, 4, 6, 4200, -2147483648]

run :: (Show b) => (a -> b) -> [a] -> Bool
run f t = show (ftMap f t) == show (map f t)
