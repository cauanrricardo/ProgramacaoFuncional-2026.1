-- Questão 1 — Fatoração em números primos
fprimos :: Int -> [(Int,Int)]
fprimos 1 = []

-- Questao 02 -  Seja uma strings s da qual se deseja construir a lista das frequências dos CARACTERES. Cada frequência é uma dupla formada pelo caractere e o total de vezes que ele acontece
freq :: String -> Char -> Int
freq [] _ = 0
freq (c:cs) ch
 | c == ch      = 1 + freq cs ch
 | otherwise    = freq cs ch

frequencia :: String -> [(Char, Int)]
frequencia [] = []
frequencia (c:cs) = (c, cont) : frequencia semC  -- ('a' , 3) : resto
    where
        cont = 1 + freq cs c    -- usa o freq que definiu acima
        semC = filter (/= c) cs -- remover todo caracteres iguais ao atual

-- Questão 03 — Lista de tamanhos das palavras        
tamanhos :: [String] -> [(String, Int)]
tamanhos [] = []
tamanhos (c:cs) = (c, length c) : tamanhos cs
        