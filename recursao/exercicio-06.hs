-- 1. Somar  elementos da lista
 somaLista:: [Int] -> Int
 somaLista [] = 0
 somaLista (x:xs) = x + somaLista(xs)
