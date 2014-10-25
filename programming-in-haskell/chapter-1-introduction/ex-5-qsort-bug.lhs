5. What would be the effect of replacing <= by < in the definition of qsort? Hint: consider the
example qsort [2, 2, 3, 1, 1 ].

Graham Hutton. Programming in Haskell (Kindle Location 191). Kindle Edition.


It would be a defect whereby numbers equal to the pivot would be left out of the result:

  badqsort [2, 2, 3, 1, 1 ]
= (badqsort [1, 1]) ++ [2] ++ (badqsort [3])
= ((badqsort []) ++ [1] ++ (badqsort [])) ++ [2] ++ ((badqsort []) ++ [3] ++ (badqsort []))
= ([] ++ [1] ++ []) ++ [2] ++ ([] ++ [3] ++ [])
= [1, 2, 3]

which of course is missing some of the elements of the original input list.
