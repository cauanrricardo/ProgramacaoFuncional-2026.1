-- Fold é uma recursão embutida. Em vez de você escrever o padrão (x:xs) na mão, o fold já faz isso
-- foldl: percorre da esquerda pra direita
-- foldl função acumulador lista

resultado = foldl (+) 0 [1,2,3,4,5]
-- comeca com 0
-- 0 + 1 = 1
-- 1 + 2 = 3
-- 3 + 3 = 6
-- 6 + 4 = 10
-- 10 + 5 = 15

-- mesma coisa de:
somaLista [] = 0
somaLista (x:xs) = x + somaLista xs



