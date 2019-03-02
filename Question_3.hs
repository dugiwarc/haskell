-- Find the n'th element of a list

elementAt::[a]->Int->a 
elementAt (x:_) 1 = x
elementAt (_:xs) i = elementAt xs (i - 1)
elementAt _ _ = error "Index out of bounds"


-- Example on (x:xs)
getL :: [Int] -> String
getL [] = "Your list is empty"
getL (x:_) 1 = x
getL (x:xs) = "Your list starts with " ++ show x ++ " and the rest " ++ show xs