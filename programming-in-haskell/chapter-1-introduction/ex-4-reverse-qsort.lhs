4. How should the definition of the function qsort be modified so that it produces a reverse sorted version of a list?

Graham Hutton. Programming in Haskell (Kindle Locations 190-191). Kindle Edition.


Simply reverse the order of the array concatenation. As usual, list head (x) is selected as sort
pivot.

> rqsort [] = []
> rqsort (x : xs) = rqsort larger ++ [x] ++ rqsort smaller
>                   where
>                     smaller = [a | a <- xs, a <= x]
>                     larger = [b | b <- xs, b > x]
> main = print (rqsort [3, 1, 5, 2, 4])
