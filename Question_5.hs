-- reverse a list

reverset :: [a] -> [a]
reverset [] = []
reverset (x:xs) = reverset xs ++ [x]
