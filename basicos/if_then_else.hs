-- em Haskell o if SEMPRE tem else
-- e SEMPRE retorna um valor (é uma expressão)

absoluto :: Int -> Int
absoluto n = if n >= 0
                then n
                else -n

dobroOuZero :: Int -> Int
dobroOuZero x = if x > 0
                    then x * 2
                    else 0  

classificar :: Int -> String
classificar n = if n > 0
                    then "positivo"
                    else if n < 0
                        then "negativo"
                        else "zero"   

-- exercicio Par ou Impar
parOuInpar :: Int -> String
parOuInpar x = if x `mod` 2 == 0
                    then "par"
                    else "impar" 

-- exercicio 02 Maior de 2                                                                        
maiorDois :: Int -> Int -> Int
maiorDois x y = if x > y    
                    then x
                    else y               