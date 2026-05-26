-- Questão 1 — Somar os dígitos de um número
somaDig :: Int -> Int
somaDig n 
 | n < 10       = n
 | otherwise    = somaDig (n `div` 10 ) + (n `mod` 10)
-- somaDig 123 = 6
-- somaDig 123 
-- 12 + 3
-- 1 + 2 + 3

-- Questão 2 — Contar números negativos
contNeg :: [Int] -> Int
contNeg [] = 0
contNeg (x:xs) 
 | x < 0      = 1 + contNeg xs
 | otherwise  = contNeg xs

 -- Questao 03 - Retornar o menor número da lista
menorLista :: [Int] -> Int
menorLista [] = error "lista vazia"
menorLista [x] = x
menorLista (x:xs) = min x (menorLista xs)

-- Questão 4 — Contar vogais numa string
vogais :: String -> Int
vogais [] = 0
vogais (c:cs)
 | elem c vogais'     =  1 + vogais cs
 | otherwise          = vogais cs
    where
        vogais'     = ['a', 'e', 'i', 'o', 'u']
-- -- elem verifica se um elemento pertence a uma lista      