-- pack consecutive duplicates of list elements into sublists.
-- if a list contains repeated elements they should be placed in separate sublists

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x:first) : pack rest
    where
        getReps [] = ([], [])
        getReps (y:ys)
            | y == x = let (f, r) = getReps ys in (y:f, r)
            | otherwise = ([], (y:ys))
        (first, rest) = getReps xs