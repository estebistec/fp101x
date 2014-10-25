3. Define a function product that produces the product of a list of numbers, and show using your
definition that product [2, 3, 4] = 24.

Graham Hutton. Programming in Haskell (Kindle Locations 189-190). Kindle Edition.

Apparently "product" collides with a name in Data.List

> myProduct [] = 1
> myProduct (n:ns) = n * myProduct ns
> main = print (myProduct [2, 3, 4])
