-- Remove k'th element in a list and return it

removeAt n xs 
            | n > 0 && n <= length xs = ( Just (xs !! index), take index xs ++ drop n xs )
            | otherwise = (Nothing, xs)
            where index = n - 1