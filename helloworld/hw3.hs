#!/usr/bin/env runhaskell

main = do
    putStrLn "What's your first name?"
    first_name <- getLine
    putStrLn "What's your last name?"
    last_name <- getLine
    putStrLn $ "Hello, " ++ first_name ++ "!"
    putStrLn $ "Hello, Mr./Ms. " ++ last_name ++ "!"
    return ()
