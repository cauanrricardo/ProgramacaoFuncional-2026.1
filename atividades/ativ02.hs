nome = "Cauan Ricardo Ribeiro"
matricula = "569566"

-- atividade 01

-- (1) criar função que dado um número inteiro gere sua fatoração na forma de uma lista de duplas.
fprimos :: Int -> [(Int,Int)]
fprimos 1 = []
fprimos n = auxiliar n 2
  where
    auxiliar 1 _ = []
    auxiliar n d
      | n `mod` d == 0 = (d, contar n d) : auxiliar (remover n d) (d + 1)
      | otherwise      = auxiliar n (d + 1)

    contar n d
      | n `mod` d == 0 = 1 + contar (n `div` d) d
      | otherwise      = 0

    remover n d
      | n `mod` d == 0 = remover (n `div` d) d
      | otherwise      = n

-- (2) Seja uma strings s da qual se deseja construir a lista das frequências dos CARACTERES.
freq :: String -> [(Char, Int)]
freq "" = []
freq (x:xs) = (x, 1 + contar x xs) : freq (remover x xs)
  where
    contar _ [] = 0
    contar c (y:ys)
      | c == y    = 1 + contar c ys
      | otherwise = contar c ys

    remover _ [] = []
    remover c (y:ys)
      | c == y    = remover c ys
      | otherwise = y : remover c ys
