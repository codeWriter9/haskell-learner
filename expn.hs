factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1)

powern :: Int -> Int -> Int  
powern a 0 = 1 
powern a 1 = a
powern a b = a  * (powern a (b - 1))

inverse :: (RealFloat  a) => a -> a
inverse 1 = 1
inverse a = 1 / a

expn :: [Int] -> Float
expn [] = 0.0 
expn (x:xs) = inverse (fromIntegral(factorial (fromIntegral x))) + (expn xs)
