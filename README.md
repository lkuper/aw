The littlest interpreter for the littlest language.  Mostly just a reason to try out [Happy].

~~~
landin:aw lkuper$ make
happy ArithParser.y
landin:aw lkuper$ ghci Interp.hs
GHCi, version 7.4.2: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
[1 of 2] Compiling ArithParser      ( ArithParser.hs, interpreted )
[2 of 2] Compiling Main             ( Interp.hs, interpreted )
Ok, modules loaded: ArithParser, Main.
*Main> (interp . arith . lexer) "((3 + 4) - 2)"
5
~~~

[Happy]: http://www.haskell.org/happy/