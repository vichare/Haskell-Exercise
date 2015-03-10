-- Enter your code here. Read input from STDIN. Print output to STDOUT

nextRow :: [Int] -> [Int]
nextRow xs = zipWith (+) (xs ++ [0]) (0:xs)

formateList [] = ""
formateList (x:xs) = (show x) ++ " " ++ (formateList xs)



main = do
    n <- readLn :: IO Int
    putStrLn (unlines . map formateList . take n $ iterate nextRow [1])
    

