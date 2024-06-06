elementAt [] _ = error "Can't fetch from empty list"
elementAt (x : _) 1 = x
elementAt (x : xs) n = elementAt xs (n - 1)

test =
  check (elementAt [1, 2, 3] 2 == 2)
    <> check (elementAt "haskell" 5 == 'e')

check True = "Passed"
check False = "Failed"
