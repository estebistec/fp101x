5. Show how the library function init that removes the last element from a non-empty list could
similarly be defined in two different ways.

Graham Hutton. Programming in Haskell (Kindle Locations 260-261). Kindle Edition.

Simple recursive build of list

> initRecursive (x:[]) = []
> initRecursive (x:xs) = x:initRecursive xs

Reverse tail reverse (sit-n-spin)

> initReversi (x:xs) = reverse (tail (reverse (x:xs)))

Take length - 1

> initBest (x:xs) = take (length xs) (x:xs)

Try them all out

> main = do
>            putStrLn $ "initRecursive: " ++ show (initRecursive xs)
>            putStrLn $ "initReversi: " ++ show (initReversi xs)
>            putStrLn $ "initBest: " ++ show (initBest xs)
>        where xs = [1..5]
