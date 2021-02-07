-- | http://learnyouahaskell.com/starting-out#im-a-list-comprehension

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

main = do
    let result = boomBangs [7..13]
    print result