import Text.Printf (printf)

-- This function should return a list [area, volume].
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = [area / 1000.0, volume / 1000.0]
    where area = sum ys
          volume = sum $ map ((*pi) . (**2)) ys
          ys = map f xs
          f x = sum $ zipWith (*) (map fromIntegral a) (map (x**) (map fromIntegral b))
          xs = map ((/1000.0) .fromIntegral) [(l*1000)..(r*1000-1)]



--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines

