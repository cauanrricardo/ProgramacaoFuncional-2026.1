import Control.Monad (when)
-- Guardas são o if/else feito do jeito Haskell. Muito mais legível quando tem muitas condições.
-- estrutura
--nomeFuncao arg
  -- | condição1 = resultado1
  -- | condição2 = resultado2
  -- | otherwise = resultadoPadrão
--  ^^^^^^^
--  "otherwise" = True, sempre cai aqui se nada antes casou

--EXEMPLO USANDO IF
-- classificar n = if n > 0 then "positivo"
  --              else if n < 0 then "negativo"
    --            else "zero"

-- EXEMPLO USANDO GUARDS
classificar :: Int -> String
classificar n
 | n > 0      = "positivo"
 | n < 0      = "negativo"
 | otherwise  = "zero"


-- Guadas com varios argumentos + where
imc :: Float -> Float -> String
imc peso altura 
 | resultado < 18.5         = "abaixo do peso"
 | resultado < 25.0         = "normal"
 | resultado < 30.0         = "sobrepeso"
 | otherwise                = "obesidade"
    where
        resultado = peso / (altura ^2)


-- Exercicio 01 - Nota Aluno
situacao :: Float -> Float -> Float -> String
situacao nota1 nota2 nota3
 | media >= 7.0         = "aprovado"
 | media >= 4.0         = "AF"
 | otherwise            = "reprovado"
    where
        media = (nota1 + nota2 + nota3) / 3

-- Exercício 02 — Triângulo
triangulo :: Int -> Int -> Int -> String
triangulo x y z
 | x == y && y == z     = "equilatero"
 | x == y || x == z || y == z = "equilatero"
 | otherwise = "escaleno"