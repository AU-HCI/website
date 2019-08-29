module ShortPalin where

type Str = (String, String)

new_str :: String -> Str
new_str s = (s, reverse s)

count_ptuples :: Str -> Integer -> Integer
count_ptuples ([x1,x2], [y2,y1]) c | [x1,x2] == [y1,y2] = undefined
                                   | otherwise = undefined
count_ptuples (x:xs,y:ys) c | x == y = undefined
                            | otherwise = undefined
