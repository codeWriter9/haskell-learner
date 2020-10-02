mylength :: (Num a) => [a] -> a
mylength [] = 0
mylength (x:xs) = 1 + mylength xs
