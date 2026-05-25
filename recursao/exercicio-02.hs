-- EXERCÍCIO 2 — tamanho da lista
-- tamanho [10,20,30] = 3
tamanho :: [Int] -> Int
tamanho [] = 0
tamanho (_:xs) = 1 + tamanho(xs)
