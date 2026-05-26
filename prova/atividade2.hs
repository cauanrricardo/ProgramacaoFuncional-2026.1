-- identificação
nome = "Cauan Ricardo Ribeiro"
matrícula = "569566"


--1
-- Implementar função que calcule a soma dos dígitos de um inteiro não negativo
-- soma 123 = 6

soma :: (Integral a) => a-> a
soma n 
 | n < 0     = 0
 | n < 10    = n
 | otherwise = soma (n `div` 10 ) + (n `mod` 10 )

-- 2
-- seja a série S(x de inteiros ) que inicia no inteiro não nulo x e os demais são formados   pela soma dos dígitos do termo anterior. Exemplos,


-- S(99) = 99 > 18 > 9
-- S(829) = 829 > 19 > 10 > 1
-- S(3586) = 3586 > 22 > 4
-- S(0) = 0 > 0


-- Tais séries sempre convergem para um dígito. implementar função que dado x retorne o último dígito de S(x).
último ::(Integral a)=> a -> a  
último x = 0 


-- 3
-- Seja D uma lista F cujos elementos são dígitos de 0 a 9. Reduza D de modo que F seja constituída  por tuplas (d,f) onde d é o dígito e f quantas vezes o dígito se repete em D. exemplo,


-- [1,1,5,9,9,3,9,7,5,7,6,


-- gera,


-- [(0,0),(1,2),(2,0),(3,1),(4,0),(5,2),(6,2),(7,2),(8,0),(9,3)]


-- Implemente função que receba uma lista e gere sua resução conforme ilustrado.


reduzir :: (Integral a) => [a] -> [(a,a)]
reduzir u = []


-- 4
-- Implementar função que retorne a versão maiúscula de um caractere utf-8
maiúscula :: Char -> Char
maiúscula c
 | c == 'a'  = 'A'
 | c == 'b'  = 'B'
 | c == 'c'   = 'C'
 | c == 'd'  = 'D'
 | c == 'e'  = 'E'
 | c == 'f'  = 'F'
 | c ==  'g'  = 'G'
 | c == 'h'  = 'H'
 | c ==  'i'  = 'I'
 | c == 'j' = 'J'
 | c == 'k' = 'K'
 | c == 'l'  = 'L'
 | c == 'm'  = 'M'
 | c == 'n'  ='N'
 | c == 'o' = 'O'
 | c ==  'p'  = 'P'
 | c == 'q' = 'Q'
 | c == 'r'  = 'R'
 | c == 's'  = 'S'
 | c == 't' =  'T'
 | c == 'u'  = 'U'
 | c == 'v' = 'V'
 | c == 'w' = 'W'
 | c == 'x'  = 'X'
 | c ==  'y' = 'Y'
 | c == 'z'  = 'Z'
 | otherwise = c


-- 5
-- Implementar função que receba uma string e retorne sua versão capitalizada, ou seja, cada palavra é repassada para a saída apenas com a primeira letra em maiúsculo. Exemplo,
-- "a casa caiu" > "A Casa Caiu"

capitalizar :: String -> String
capitalizar [ ] = [ ]
capitalizar (c : cs) = maiúscula c  : resto cs
 where
  resto [ ] = [ ]
  resto (r : rs)
   | r == ' '  = r : capitalizar  rs
   |  otherwise = r : resto rs

