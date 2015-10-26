---
title: Introduction to Monads
---

\begin{code}
r1 :: a -> Maybe a
r1 x = Just x

b1 :: Maybe a -> (a -> Maybe b) -> Maybe b
b1 Nothing f = Nothing
b1 (Just x) f = f x

comp :: (a -> Maybe b) -> (b -> Maybe c) -> (a -> Maybe c)
comp f g x = (f x) `b1` g
\end{code}

\begin{code}
r2 :: a -> [a]
r2 x = [x]

b2 :: [a] -> (a -> [b]) -> [b]
b2 [] f = []
b2 (x:xs) f = (f x)++(b2 xs f)
\end{code}

\begin{code}
b2' :: [a] -> (a -> [b]) -> [b]
b2' l f = concat $ map f l
\end{code}

~~~~~~~~~~~~~~~~~~~~~~.{haskell}
 return :: a -> m a
 (>>=) :: m a -> (a -> m b) -> m b
~~~~~~~~~~~~~~~~~~~~~~

\begin{code}
exp1 = (Just 42) >>= (\x -> return $ x + 5)
exp2 = Nothing >>= (\x -> return $ x + 5)
\end{code}

\begin{code}
data State a =
  State (Int -> (a, Int))

put :: Int -> State ()
put n = State $ \_ -> ((), n)

get :: State Int 
get = State $ \n -> (n,n)

r3 :: a -> State a
r3 x = State $ \s -> (x, s)

b3 :: State a -> (a -> State b) -> State b
b3 st f = State $ b3' st f
  where
    b3' :: State a -> (a -> State b) -> (Int -> (b,Int))
    b3' (State f) g s = h s'
      where
        (x, s') = f s
        (State h) = g x

instance Functor State where
  fmap f s = s `b3` (\x -> r3 $ f x)

instance Applicative State where
    pure = r3
    (<*>) s s' = s `b3` (\f -> s' `b3` (\x -> r3 $ f x))

instance Monad State where
  return = r3
  (>>=) = b3

evens :: [Int] -> State Int
evens [] = get
evens (n:ns) | n `mod` 2 == 0 =
                  do m <- get
                     put (m+1)
                     evens ns
              | otherwise = evens ns
                    
evens' :: [Int] -> State Int
evens' [] = get
evens' (n:ns) | n `mod` 2 == 0 =
                   get
                 `b3` (\m -> ((
                   put (m+1)
                 ) `b3` (\_ ->
                   evens' ns)
                 ))
             | otherwise = evens' ns

evalState :: State a -> Int -> a
evalState (State t) n = fst $ t n
\end{code}
