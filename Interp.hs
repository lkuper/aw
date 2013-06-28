module Interp (Expr(..), Env, emptyEnv, interp) where
import qualified Data.Map as Map

data Expr = Number Int
    | Var String
    | Plus Expr Expr
    | Minus Expr Expr  
    | Times Expr Expr
 deriving Show

type Env = Map.Map String Int

emptyEnv :: Env
emptyEnv = Map.empty

lookupEnv :: Env -> String -> Int
lookupEnv env x = case Map.lookup x env of
  Just n -> n
  Nothing -> error "Unbound variable!"

interp :: Expr -> Env -> Int
interp e env = case e of
  Var x -> lookupEnv env x
  Number n -> n
  Plus e1 e2 -> (interp e1 env) + (interp e2 env)
  Minus e1 e2 -> (interp e1 env) - (interp e2 env)
  Times e1 e2 -> (interp e1 env) * (interp e2 env)
