import Distribution.Simple.Utils (xargs)
-- Máximo da lista
maiorLista :: [Int] -> Int
maiorLista [x] = x
maiorLista (x:xs) = max x (maiorLista xs)