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