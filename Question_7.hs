-- flatten a neste list structure

-- Example
-- * (my-flatten '(a (b (c d) e)))
-- (A B C D E)

flatten :: NestedList a -> [a]
flatten (Elem a   )   = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List [])     = []