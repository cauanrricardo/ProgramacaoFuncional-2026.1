-- nome = "Cauan Ricardo"
-- matricula = "569566"

-- Questão 1 — Transformar inteiro em lista de dígitos
digs:: Int -> [Int]
digs n 
 | n < 10       = [n]
 | otherwise    = digs (n `div` 10) ++ [n `mod` 10]

-- exemplo
-- digs 123
-- = digs 12 ++ [3]
-- = (digs 1 ++ [2]) ++ [3]
-- = ([1] ++ [2]) ++ [3]
-- = [1,2,3]  

-- digs 987
-- digs 987 ( 987 div 10 = 98) ++ (987 mod 10 = 7)
-- 98 ++ 7
-- digs 97  div 10 = 9  ++ (97 mod 10 = 8) ++ [7]
-- digs 9 < 10 True = [9] ++ [8] ++ [7]

--------------------

-- Questao 02 — Somar os módulos (valores absolutos) de uma lista
sabs :: [Int] -> Int
sabs []     = 0
sabs (x:xs) = abs x + sabs xs
-- sabs [-1,-2,-3] = 1 + 2 + 3 = 6

-- Questao 03 - Retorna o maior valor absoluto
maximum' :: [Int] -> Int
maximum' [x] = abs x
maximum' (x:xs) = max (abs x) (maximum' xs)
-- maximum [-3,-3,-2,-8] = 8

-- Questao 04: retorna a frequência de um caractere numa string
freq:: String -> Char  -> Int 
freq [] _ = 0
freq (c:cs) ch
 | c == ch      = 1 + freq cs ch
 | otherwise    = freq cs ch
-- freq "banana" 'a' → 3
-- freq (c:cs)
--      c = primeiro caracter
--      cs = resto caracter