
module VicTest where

test :: Eq a => (b->a) -> [b] -> [a] -> Bool
test f input output = output == map f input

test2 :: Eq a => (b->c->a) -> [(b,c)] -> [a] -> Bool
test2 f = test (uncurry f)

