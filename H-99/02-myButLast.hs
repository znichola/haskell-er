
myButLast [] = error "Can't return secont to last element of empty list"
myButLast [a] = error "Can't return second to last element of single element list"
myButLast [a, b] = a
myButLast (_:as) = myButLast as


test =
  check (myButLast [1, 2, 3, 4] == 3)  <>
  check (myButLast "hello word" == 'r')   <>
  check (myButLast [1, 2] == 1) <>
  check (myButLast [[1, 2], [3, 4], [5, 6]] == [3, 4])
  -- check (myButLast []) "Shoud have crashed"

check True = "Passed"
check False = "Failed"
