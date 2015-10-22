zero = \s -> \z -> z
true  = \x -> \y -> x
false = \x -> \y -> y
plus = \n -> \m -> (\s -> \z -> (n s) (m s z))
pair = \x -> \y -> \z -> (z x) y
first = \p -> p true
sec = \p -> p false
sumPair = \p -> plus (first p) (sec p)
