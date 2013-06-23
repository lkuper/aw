The littlest interpreter for the littlest language.  Mostly just a
reason to try out [Happy].

~~~
lkuper@mitzi:~/repos/aw$ make
happy Parser.y
lkuper@mitzi:~/repos/aw$ ghci Main.hs 
GHCi, version 7.4.2: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
[1 of 3] Compiling Interp           ( Interp.hs, interpreted )
[2 of 3] Compiling Parser           ( Parser.hs, interpreted )
[3 of 3] Compiling Main             ( Main.hs, interpreted )
Ok, modules loaded: Parser, Main, Interp.
*Main> driver "((3 + 4) - 2)"
5
~~~

[Happy]: http://www.haskell.org/happy/