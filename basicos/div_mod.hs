-- pega o ultimo digito
ultimoDig :: Int -> Int
ultimoDig n = mod n 10

removeUlt :: Int -> Int
removeUlt n = div n 10

contaDig :: Int -> Int
contaDig n
    | n  < 10 = 1
    | otherwise = 1 + contaDig(div n 10)

{--
123 < 10 nao
1 + contaDig (div 123 10) = 12
contaDig 12 < 10 nao
1 + contaDig12 (div 12 10) = 1
2 < 10 sim - = 1 + 1 + 1 = 3
--}


somaDig :: Int -> Int
somaDig n
    | n < 10 = n
    | otherwise = (mod n 10) + somaDig(div n 10)

{--
somaDig 123
   |
   v
3 + somaDig 12
        |
        v
     2 + somaDig 1
             |
             v
             1
--}