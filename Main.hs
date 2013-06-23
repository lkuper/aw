module Main where
import Interp (interp)
import Parser (parser, lexer)
  
driver :: String -> Int
driver = (interp . parser . lexer)
