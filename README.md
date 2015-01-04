The littlest interpreter for the littlest language.  Mostly just a
reason to try out [Happy].

~~~
$ make
happy Parser.y
GHCi, version 7.4.2: http://www.haskell.org/ghc/  :? for help
$ ghci Main.hs
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
[1 of 3] Compiling Interp           ( Interp.hs, interpreted )
[2 of 3] Compiling Parser           ( Parser.hs, interpreted )
[3 of 3] Compiling Main             ( Main.hs, interpreted )
Ok, modules loaded: Parser, Main, Interp.
*Main> driver "((3 + 4) - 2)" Nothing
Loading package array-0.4.0.0 ... linking ... done.
Loading package deepseq-1.3.0.0 ... linking ... done.
Loading package containers-0.4.2.1 ... linking ... done.
5
~~~

[Happy]: http://www.haskell.org/happy/