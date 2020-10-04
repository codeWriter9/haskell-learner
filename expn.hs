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

create_tuple :: Int -> [(Int, Int)]
create_tuple a = [(a, b) | b <- [0..10]]

func :: [(Int, Int)] -> Float
func [] = 0.0
func ((x, p):xs) = (fromIntegral(powern x p) / inverse (fromIntegral(factorial (fromIntegral x))))  + (func xs)

expn :: [Int] -> Float
expn [] = 0.0 
expn (x:xs) = inverse (fromIntegral(factorial (fromIntegral x))) + (expn xs)
