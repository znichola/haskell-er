module Main where

main = print greeting

salutation = "Hello"

entity = "World"

greeting = salutation <> " " <> entity

makeGreeting sal ent = sal <> " " <> ent

-- enthusiasticGreeting sal name = makeGreeting (sal <> "!") name
-- reducing the above to what's below is called eta reduction or n-reduction
enthusiasticGreeting sal = makeGreeting (sal <> "!")

-- using partial application to make new functions
-- we use parens to turn infix functions into regular functions
half = (/ 2)

twoOver = (2 /)

-- we can also use ` to make a function infix
--  usefull for partially applying a function with it's second parameter
greetJane = (`makeGreeting` "Jane")

flip' func arg1 arg2 = func arg2 arg1

floow a b = a <> "->" <> b

sayThree a b c = a <> b <> c
