
import Data.List

myReverse = foldl' (\l e -> e:l) []
--(flip (:))  == (\l e -> e:l)

result = 
    "!amanap ,lanac a ,nalp a ,nam A" == myReverse "A man, a plan, a canal, panama!"
    && [4,3,2,1] == myReverse [1..4]
    && [100000,99999..1] == myReverse [1..100000]

