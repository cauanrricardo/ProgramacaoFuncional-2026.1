-- A ideia: você define a função várias vezes, cada uma pra um formato diferente de entrada. Haskell testa de cima pra baixo e usa a primeira que casar
-- -- estrutura
-- nomeFuncao padrão1 = resultado1
-- nomeFuncao padrão2 = resultado2
-- nomeFuncao padrão3 = resultado3

-- Padrão 1 — valores simples
diaDaSemana :: Int -> String
diaDaSemana 1 = "Segunda"
diaDaSemana 2 = "Terça"
diaDaSemana 3 = "Quarta"
diaDaSemana _ = "Outro dia"

-- Padrão 2 - com listas
-- [] lista vazia
-- (x:xs) lsita que tem pelo menos um elemento
--  x = primeiro elemento
--  xs = resto (pod ser [])

--exemplo: pegar o primeiro elemento
meuHead :: [a] -> a
meuHead []  = error "lista vazia"
meuHead (x:_) = x

-- exemplo: somar lista
somarLista :: [Int] -> Int
somarLista [] = 0
somarLista (x:xs) = x + somarLista xs

-- dobrar elementos
dobrarTudo :: [Int] -> [Int]
dobrarTudo [] = []
dobrarTudo (x:xs) = (x*2) : dobrarTudo xs


-- padrao 3 - com tuplas
somaPar :: (Int, Int) -> Int
somaPar (x,y) = x + y

-- exemplo com lista de tuplas
somaFloatSe :: [(Char, Float)] -> Char -> Float
somaFloatSe [] _ = 0.0
somaFloatSe ((c, f): resto) ch
 | c == ch      = f + somaFloatSe resto ch
 | otherwise    = somaFloatSe resto ch

 --exercicio 01 
 -- Somar os inteiros associados ao caractere procurado
 -- contaChar [('a',2), ('b',5), ('a',3)] 'a' = 5
contaChar :: [(Char, Int)] -> Char -> Int 
contaChar [] _ = 0
contaChar ((c, i): resto) ch
 | c == ch      = i + contaChar resto ch
 | otherwise    = contaChar resto ch


-- parte 04 - recursao + casamento
-- contar quantas vezes um char aparece numa string
contar :: Char -> String -> Int
contar _ [] = 0 -- qualquer char - lista vazia
contar ch (x:xs)
 | ch == x      = 1 + contar ch xs
 | otherwise    = contar ch xs