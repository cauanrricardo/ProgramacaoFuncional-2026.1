 -- Exercicio  3. casamento com tupla: soma só se o char for 'a'
somaSeA :: [(Char, Int)] -> Int
somaSeA [] = 0
somaSeA ((c, n):resto)
 | c == 'a'     = n + somaSeA resto
 | otherwise    = somaSeA resto