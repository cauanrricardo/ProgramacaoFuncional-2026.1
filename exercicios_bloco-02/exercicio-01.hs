-- Exercicio 01 - Guardas Par ou Impar
parImpar :: Int -> String
parImpar n
 | n `mod` 2 == 0       = "par"
 | otherwise            = "impar"