The littlest interpreter for the littlest language.  Mostly just a
reason to try out [Happy].

~~~
lkuper@mitzi:~/repos/aw$ make
happy Parser.y
lkuper@mitzi:~/repos/aw$ ghci Interp.hs 
GHCi, version 7.4.2: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
[1 of 2] Compiling Parser           ( Parser.hs, interpreted )
[2 of 2] Compiling Main             ( Interp.hs, interpreted )
Ok, modules loaded: Parser, Main.
*Main> (interp . parser . lexer) "((3 + 4) - 2)"
5
~~~

[Happy]: http://www.haskell.org/happy/