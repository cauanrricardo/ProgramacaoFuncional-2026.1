-- Universidade Federal do Ceará
-- Campus de Quixadá
-- Programaçãop Funcional
-- Atividade 01
-- Professor Ricardo Reis

-- identificação
nome = "Cauan Ricardo"
matricula = "569566"

-- função 01: transformar inteiro na lista de seus dígitos 

digs:: Int -> [Int]
digs n 
    | n < 10 = [n]
    | otherwise = digs (div n 10) ++ [mod n 10]

{--
123 div 10 = 12 ++ [123 mod 10 = 3] - digs 12 ++ [3]
12 div 10 = 1 ++ (12 mod 10 = 2) digs 1 ++ [2] ++ [3]
[1,2,3]
--}

-- exemplo
-- digs 123
-- [1,2,3]

-- função 02: somar os módulos das entradas de uma lista de inteiros

sabs :: [Int] -> Int
sabs [] = 0
sabs (x:xs) = abs x + sabs xs


-- função 3: retornar o maior valor absoluto  de uma lista de inteiros. de 

maximum' :: [Int] -> Int
maximum' ls = maximum (map abs ls) -- trasnformar em abs e dps pega o max


-- função 4: retorna a frequência de um caractere numa string
freq:: String -> Char  -> Int 
freq s ch = length (filter(\x -> x == ch) s)

