---
title: Introduction to Monads
---

\begin{code}
r1 :: a -> Maybe a
r1 x = Just x

b1 :: Maybe a -> (a -> Maybe b) -> Maybe b
b1 Nothing f = Nothing
b1 (Just x) f = f x
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

\begin{code}
type State = Integer        
type Env a = State -> (a, State)
     
r3 :: a -> Env a
r3 x = \s -> (x, s)
   
b3 :: Env a -> (a -> Env b) -> Env b
b3 e f s = g s'
 where
   (x,s') = e s   
   g = f x
\end{code}

~~~~~~~~~~~~~~~~~~~~~~.{haskell}
 return :: a -> m a
 (>>=) :: m a -> (a -> m b) -> m b
~~~~~~~~~~~~~~~~~~~~~~

\begin{code}
exp1 = (Just 42) >>= (\x -> return $ x + 5)
exp2 = Nothing >>= (\x -> return $ x + 5)
\end{code}