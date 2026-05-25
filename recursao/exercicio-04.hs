-- EXERCÍCIO 4 — máximo da lista
-- maiorLista [2,10,5] = 10
-- x = 2
-- xs [10,5]
maiorLista :: [Int] -> Int
maiorLista [x] = x
maiorLista (x:xs) = max x  (maiorLista xs)