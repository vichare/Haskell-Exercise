
import Data.List

myLength = foldl' (\n _ -> n+1) 0


{-
myLength :: [a] -> Int
myLength1 =  foldl (\n _ -> n + 1) 0
myLength2 =  foldr (\_ n -> n + 1) 0
myLength3 =  foldr (\_ -> (+1)) 0
myLength4 =  foldr ((+) . (const 1)) 0
myLength5 =  foldr (const (+1)) 0
myLength6 =  foldl (const . (+1)) 0
-}

result = [0, 10, 7, 12, 2] == [ myLength []
    , myLength [1..10]
    , myLength "Haskell"
    , myLength "Hello,World!"
    , myLength [[], "test"]
    ]

