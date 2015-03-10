f :: Int -> [Int] -> [Int]
f n [] = []
f n (x:xs) = (rep n x) ++ f n xs
  where rep 0 x = []
        rep n x = x : rep (n-1) x

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words

