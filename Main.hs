module Main where
import Interp (interp, Env)
import Parser (parser, lexer)
  
driver :: String -> Env -> Int
driver s env = interp ((parser . lexer) s) env
