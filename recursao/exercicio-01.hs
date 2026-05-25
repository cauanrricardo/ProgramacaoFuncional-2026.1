-- EXERCÍCIO 1 — contagem regressiva
-- contagem 5
-- [5,4,3,2,1,0]
contagem :: Int -> [Int]
contagem 0  = [0]
contagem n = n : contagem (n -1)