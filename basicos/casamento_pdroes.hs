import Foreign (allocaArray)
import Distribution.Compat.CharParsing (chainl)
import Main (soma)
import GHC.TypeLits (someNatVal)
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