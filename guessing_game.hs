import System.Random

guess number = do
    answer <- getLine
    let x = read answer :: Integer
    if x == number  
        then putStrLn "gz"
    else if number > x then do 
        putStrLn "it's bigger"
        guess number
    else do
        putStrLn "it's smaller"
        guess number


main = do
    number <- randomRIO (1, 50)
    putStrLn "my number is in range 1 - 50, can you guess it\n GUESS"
    guess number