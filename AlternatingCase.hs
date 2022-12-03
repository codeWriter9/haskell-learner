uppercase :: String -> String
uppercase = map (\c -> if c >= 'a' && c <= 'z' then toEnum (fromEnum c - 32) else c)

lowercase :: String -> String
lowercase = map (\c -> if c >= 'A' && c <= 'Z' then toEnum (fromEnum c + 32) else c)

toAlternatingCase :: String -> String
toAlternatingCase = map (\c -> if c >= 'a' && c <= 'z' then toEnum (fromEnum c - 32) else (if c >= 'A' && c <= 'Z' then toEnum (fromEnum c + 32) else c))
                  

main = print ( toAlternatingCase "Hello" )
