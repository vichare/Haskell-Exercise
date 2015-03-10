solve :: Double -> Double
solve x = helper 9 x 1 1.0 0.0
    where helper 0 x counter term cumulator = cumulator + term
          helper n x counter term cumulator = helper (n-1) x (counter+1) (term*x/fromIntegral(counter)) (cumulator+term)

main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words

