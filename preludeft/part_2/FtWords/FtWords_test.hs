import Text.Printf (printf)
import FtWords (ftWords)

main = do
  printf "%s %s\n" "leading space" $ pass $ run "    leading spaces, test"
  printf "%s %s\n" "single word" $ pass $ run "single-word"
  printf "%s %s\n" "no words" $ pass $ run "       "
  printf "%s %s\n" "repeated words" $ pass $ run "a o a a a"
  printf "%s %s\n" "ending psace" $ pass $ run "ending spaces           "
  printf "%s %s\n" "all whitespace characters" $ pass $ run "\tnon space\t__\nthing\rthe\fbar\vfoo"

pass v = if v then "Pass" else error "Fail"

takeAmounts :: [Int]
takeAmounts = [-3, 0, 1, 4, 6, 4200, -2147483648]

run :: String -> Bool
run s = show (ftWords s) == show (words s)

allEqual :: (Eq a) => [a] -> Bool
allEqual [] = True
allEqual (x : xs) = all (== x) xs
