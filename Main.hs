module Main where
import Interp (interp, Env, emptyEnv)
import Parser (parser, lexer)
  
driver :: String -> Maybe Env -> Int
driver s env = interp ((parser . lexer) s) $ case env of 
  Just env ->  env
  Nothing -> emptyEnv

