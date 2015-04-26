    -- Find the last element of a list.
myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs
myLast' = foldr1 (const id)

-- I prefer this one because it returns 'Nothing' 
-- instead of throwing an error.
last' :: [a] -> Maybe a
--last' xs = foldl (const Just) Nothing xs
last' xs = foldl (Just . (curry snd)) Nothing xs

