
palindrome list = list == reverse list
palindrome' xs = and $ zipWith (==) xs (reverse xs)

result = palindrome "madamimadam"
    && (not . palindrome) "madamimadan"
    && palindrome "mom"
    && palindrome "mm"

