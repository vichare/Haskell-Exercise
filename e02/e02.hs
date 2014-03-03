import Data.Maybe

myButLast :: [a] -> a
myButLast [] = error "The list should contain at lease two elements."
myButLast (x:[]) = error "The list should contain at lease two elements."
myButLast (x:_:[]) = x
myButLast (_:xs) = myButLast xs

-- I prefer this one because it returns 'Nothing' 
-- instead of throwing an error.
type TempCouple a  = (Maybe a, Maybe a)
helper :: TempCouple a -> a -> TempCouple a
helper (x1, x2) y = (x2, Just y)

myButLast' :: [a] -> Maybe a
myButLast' xs = fst (foldl helper (Nothing,Nothing) xs)


