nome = "Cauan Ricardo Ribeiro"
matricula = "569566"

-- Fundir dois vetores ordenados num vetor ordenado maior.
-- use casamento de padrões.
-- não use meios externos de ordenação.
-- use recursão.

merge :: (Ord a) => [a] -> [a] -> [a]
merge [] v = v
merge u [] = u
merge (x:xs) (y:ys)
  | x <= y    = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys


-- implemente mergesort para 
-- ordenação do vetor u.
--   Use a função anterior.

mergesort :: (Ord a) => [a] -> [a]
mergesort []  = []
mergesort [x] = [x]
mergesort u   = merge (mergesort esq) (mergesort dir)
  where
    (esq, dir) = splitAt (length u `div` 2) u


-- usando fold implementar função que retorne 
-- a série de Fibonacci com n elementos.

fibo'list :: Int -> [Int]
fibo'list 0 = []
fibo'list 1 = [0]
fibo'list 2 = [0, 1]
fibo'list m = reverse (foldl (\acc _ -> proximo acc) [1, 0] [3..m])
  where
    proximo (x:y:zs) = (x + y) : x : y : zs
    proximo list     = list
