import ArithParser

interp :: Expr -> Int
interp e = case e of
  Number n -> n
  Plus e1 e2 -> (interp e1) + (interp e2)
  Minus e1 e2 -> (interp e1) - (interp e2)
  Times e1 e2 -> (interp e1) * (interp e2)