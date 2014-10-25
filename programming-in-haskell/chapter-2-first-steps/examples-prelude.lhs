➜  chapter-1-introduction git:(master) ✗ ghci
GHCi, version 7.8.3: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
Prelude> 2   + 3
5
Prelude> 2 - 3
-1
Prelude> 2 * 3
6
Prelude> 7 `div` 2
3
Prelude> 2^3
8
Prelude> head [1,2,3,4,5]
1
Prelude> tail [1,2,3,4,5]
[2,3,4,5]
Prelude> [1,2,3,4,5]!!2
3
Prelude> take 3 [1,2,3,4,5]
[1,2,3]
Prelude> drop 3 [1,2,3,4,5]
[4,5]
Prelude> length [1,2,3,4,5]
5
Prelude> sum [1,2,3,4,5]
15
Prelude> product [1,2,3,4,5]
120
Prelude> [1,2,3]++[4,5]
[1,2,3,4,5]
Prelude> reverse [1,2,3,4,5]
[5,4,3,2,1]
Prelude> 1 `div` 0
*** Exception: divide by zero
Prelude> head []
*** Exception: Prelude.head: empty list
Prelude>
Leaving GHCi.
