-- Extract a slice from a list

-- Give two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the
--      original list (both limits included). Start counting the elements with 1

slice :: [a] -> Int -> Int -> Maybe [a]
slice [] _ _ = Just []
slice xs k n 
    | k == n = Just []
    | k > n || k > length xs || n > length xs || k < 0 || n < 0 = Nothing
    | k == 0 = Just (take n xs)
    | otherwise = Just $ drop (k - 1) $ take n xs