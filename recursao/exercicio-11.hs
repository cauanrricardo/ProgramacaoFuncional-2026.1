import Distribution.PackageDescription (cNot)
-- Conta quantas vezes aparece tal numero
contaOcorrencias :: Eq a => a -> [a] -> Int
-- contaOcorrencias 2 [1,2,2,3]
contaOcorrencias y [] = 0
