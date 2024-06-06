import Control.Exception (assert)

myLast [] = error "Can't return last element of empty list"
myLast [a] = a
myLast (_:as) = myLast as


test = do
  assert (myLast [1, 2, 3, 4] == 4) "Passed"
  assert (myLast "hello word" == 'd') "Passed"
  assert (myLast [1] == 1) "Passed"
  assert (myLast [[1, 2], [3, 4], [5, 6]] == [5, 6]) "Passed"
  assert (myLast []) "Shoud have crashed"
