-- funcao normal
dobro x = x * 2

-- funcao lambda
-- \x -> x * 2
soma :: Int -> Int -> Int
soma = \x y -> x + y


-- usando map + lambda
dobroOrd = map(\x -> x * 2) [1,2,3]


-- usando filter + lambda
maior5 = filter (\x -> x >= 5) [1,4,5,7,9]


-- exercicio 01
quadrado :: Float -> Float 
quadrado = \x -> x * x

-- exercicio 02
maior :: Ord a => a -> a -> Bool
maior = \x y -> x > y

-- exercicio 03
soma10 = map (\x -> x + 10) [2,5,10]
-- vai somar mais 10 em cada elmento do vetor