
import Data.List

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem e) = [e]
flatten (List []) = []
flatten (List l) = foldl' (++) [] (fmap flatten l)

result = [[5], [1,2,3,4,5], []] == [
      flatten (Elem 5)
    , flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
    , flatten (List [])
    ]
