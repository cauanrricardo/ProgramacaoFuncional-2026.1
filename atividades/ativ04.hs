atividade = "04"
nome = "Cauan Ricardo Ribeiro"
matricula = "569566"

-- 1
replace :: [Char] -> [Char] -> [Char] -> [Char]
replace [] _ _ = []
replace text from to
  | take (length from) text == from = to ++ replace (drop (length from) text) from to
  | otherwise = head text : replace (tail text) from to

-- 2
lsSplit :: [Int] -> ([Int], Int, [Int])
lsSplit [] = ([], 0, [])
lsSplit (pivo:xs) = (menores, pivo, maiores)
  where
    menores = [x | x <- xs, x <= pivo]
    maiores = [x | x <- xs, x > pivo]

-- 3
selectionSort :: Ord a => [a] -> [a]
selectionSort [] = []
selectionSort ls = menor : selectionSort (remover menor ls)
  where
    menor = minimum ls
    remover _ [] = []
    remover m (x:xs)
      | m == x    = xs
      | otherwise = x : remover m xs