fibonacci :: (Integral a) => a -> a  
fibonacci 0 = 1
fibonacci 1 = 1  
fibonacci n = fibonacci ( n - 2 ) + fibonacci ( n - 1 )       
