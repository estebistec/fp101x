4. Show how the library function last that selects the last element of a non-empty list could be defined in terms of the library functions introduced in this chapter. Can you think of another possible definition?

Graham Hutton. Programming in Haskell (Kindle Locations 259-260). Kindle Edition.

Index last by list-length:

> lastByLength (x : xs) = (x:xs)!!(length xs)

Drop list-length:

> lastDropLength (x : xs) = head $ drop (length xs) (x:xs)

Recursive head

> lastRecurseHead (x : []) = x
> lastRecurseHead (x : xs) = lastRecurseHead xs

Head of reverse

> lastBest (x:xs) = head (reverse (x:xs))

Try them all out

> main = do
>            putStrLn $ "lastByLength: " ++ show (lastByLength xs)
>            putStrLn $ "lastDropLength: " ++ show (lastDropLength xs)
>            putStrLn $ "lastRecurseHead: " ++ show (lastRecurseHead xs)
>            putStrLn $ "lastBest: " ++ show (lastBest xs)
>        where xs = [1..5]
