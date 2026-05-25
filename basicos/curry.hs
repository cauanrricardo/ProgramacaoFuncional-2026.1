-- haskell = toda funcao recebe um argumento por vez
soma :: Int -> Int -> Int
soma x y = x + y

-- soma recebe x 
--  e retorna outra funcao esperando y

--exemplo 
multiplica :: Int -> Int -> Int
multiplica x y = x * y
dobro = multiplica 2 -- dobro y = 2 * y


-- map
multi2 = map (multiplica 2) [1,2,3]
-- map aplica em cada elemento
-- 2*1
-- 2*2
-- 2*3

--exercicio 01
multiplica2 :: Int -> Int -> Int
multiplica2 x y = x * y
triplo = multiplica2 3


-- exercicio 02
potencia :: Int -> Int -> Int
potencia x y = x ^ y
aoQuadrado x = potencia x  2