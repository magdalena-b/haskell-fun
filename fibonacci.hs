-- | classic recursive algorithm
fibonacci_recursive :: Integer -> Integer
fibonacci_recursive 0 = 0
fibonacci_recursive 1 = 1
fibonacci_recursive x = fibonacci_recursive (x - 1) + fibonacci_recursive (x - 2)

{-|
    https://www.reddit.com/r/haskell/comments/xeiic/haskell_and_fibonacci_numbers_beginner/
    https://stackoverflow.com/questions/1105765/generating-fibonacci-numbers-in-haskell
    https://stackoverflow.com/questions/26843529/haskell-fibonacci-explanation
    dynamic programming approach
    list!!n -> get nth element of the list
    here we zip two lists with + -> nth element of the result list is nth element from first list
    + nth element from second list
    fibs = [1, 1, 2, 3, 5, 8, 13 ...]
    tail fibs = [1, 2, 3, 5, 8, 13, 21 ...] -> tail is the list after the first element
    for example, we zip [1, 1, 2, 3] with [1, 2, 3] using +, result: [2, 3, 5]
    fibs is 1 : 1 : [2, 3, 5]
    zipWith zips corresponding element, if lists have different lengths, last element of the longer list
    is left out
-}

fibonacci_dynamic x = fibs!!x
    where fibs = 1 : 1 : zipWith (+) fibs (tail fibs)


main = pure()