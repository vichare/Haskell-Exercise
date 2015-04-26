
import Data.List

--elementAt :: Integral n => [a] -> n -> a
elementAt [] _ = error "Empty List"
elementAt (x:_) 1 = x
elementAt (x:xs) n = elementAt xs (n-1)

result = 'e' == elementAt "haskell" 5

