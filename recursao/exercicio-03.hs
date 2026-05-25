-- EXERCÍCIO 3 — multiplicar todos os elementos
-- produtoLista [2,3,4] = 24
-- 2 * produtoslista(xs)
-- 2 * 3 * produtolista(xs)
-- 2 *3 * 4 produtolista(xs)
-- 2 * 3 * 4 * 1 = 24
produtoLista :: [Int] -> Int
produtoLista [] = 1
produtoLista (x:xs) = x * produtoLista(xs)
