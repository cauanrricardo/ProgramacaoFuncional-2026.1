fatorial 0 = 1 --caso base
fatorial n = n * fatorial(n - 1)
{-- ex: 4!
1º = 4 * 3 * 2 * 1
4 x 3= 12
12
--}

fac n = 
        if n <= 1 then
            1
        else 
            n * fac (n-1)


somaAte 0 = 0
somaAte x = x + somaAte(x - 1)
{-- 5 + somaAte 4 + 3 + 2 + 1 + 0 = 15
--}


potencia x 0 = 1
potencia x n = x * potencia x (n - 1)
{--
x^n
2^3 = 2 * 2^2
2^2 = 2 * 2^1
2^1 = 2 * 2^0
2^0 = 1
--}

conteAte 0 = 0 --caso base
conteAte n = 1 + conteAte (n - 1)
{-- 5 = 1 + contaAte (4)--}

listaAte 0 = [0] --caso base
listaAte n = n : listaAte(n - 1)

somaLista [] = 0
somaLista (x:xs) = x + somaLista xs
