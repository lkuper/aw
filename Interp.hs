module Interp (Expr(..), interp) where

data Expr = Number Int
    | Plus Expr Expr
    | Minus Expr Expr  
    | Times Expr Expr
 deriving Show

interp :: Expr -> Int
interp e = case e of
  Number n -> n
  Plus e1 e2 -> (interp e1) + (interp e2)
  Minus e1 e2 -> (interp e1) - (interp e2)
  Times e1 e2 -> (interp e1) * (interp e2)
