{

  module Parser (parser, lexer) where
import Data.Char (isDigit, isSpace)
import Interp (Expr(..))

}

%name parser
%tokentype { Token }
%error { parseError }

%token
      int             { TokenInt $$ }
      '+'             { TokenPlus }
      '-'             { TokenMinus }
      '*'             { TokenTimes }
      '('             { TokenOB }
      ')'             { TokenCB }

%%
      
Expr  : int                     { Number $1 }
      | '(' Expr '+' Expr ')'   { Plus $2 $4 }
      | '(' Expr '-' Expr ')'   { Minus $2 $4 }
      | '(' Expr '*' Expr ')'   { Times $2 $4 }

{

parseError :: [Token] -> a
parseError _ = error "Parse error"
        
data Token
      = TokenInt Int
      | TokenPlus
      | TokenMinus
      | TokenTimes
      | TokenOB
      | TokenCB
 deriving Show
          
lexer :: String -> [Token]
lexer [] = []
lexer (c:cs) 
      | isSpace c = lexer cs
      | isDigit c = lexNum (c:cs)
lexer ('+':cs) = TokenPlus : lexer cs
lexer ('-':cs) = TokenMinus : lexer cs
lexer ('*':cs) = TokenTimes : lexer cs
lexer ('(':cs) = TokenOB : lexer cs
lexer (')':cs) = TokenCB : lexer cs

lexNum cs = TokenInt (read num) : lexer rest
  where (num,rest) = span isDigit cs

}
