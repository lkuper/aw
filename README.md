The littlest interpreter for the littlest language.  Mostly just a
reason to try out [Happy].

~~~
$ make
happy Parser.y
$ ghci Main.hs
GHCi, version 7.8.3: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
[1 of 3] Compiling Interp           ( Interp.hs, interpreted )
[2 of 3] Compiling Parser           ( Parser.hs, interpreted )
[3 of 3] Compiling Main             ( Main.hs, interpreted )
Ok, modules loaded: Parser, Main, Interp.
*Main> driver "((3 + 4) - 2)" Nothing
Loading package array-0.5.0.0 ... linking ... done.
Loading package deepseq-1.3.0.2 ... linking ... done.
Loading package containers-0.5.5.1 ... linking ... done.
5
~~~

[Happy]: http://www.haskell.org/happy/