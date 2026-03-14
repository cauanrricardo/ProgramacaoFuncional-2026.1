-- \x -> x + 1
--pegue x e retonar x + 1

lista = [1,2,3,4]
novaLista = map(\x -> x + 1) lista
mutiplicarPorDois = map(\x -> x * 2) lista

--ou usar (+) seção de operador

novaListaSoma = map (+1) lista
novaListaPorDois = map (*2) lista

nomes = ["cauan", "ricardo", "ribeiro"]
bomDia = map (\nome -> "bom dia, " ++ nome) nomes

-- Lambda com dois argumentos
-- \x y -> x + y
-- funcao q recebe x e y e retorna x + y



-- Exercicios

--mutiplicar por 3
listaNumeros = [3,6,9]
mutiplicaLista = map(\n -> n * 3) listaNumeros

-- soma dois numeros
somar = \x y -> x + y
somaLambda =  somar 10 5

-- elevar ao quadrado
listaQuadrado = [2,3,4]
listaAoQuadrado = map(\n -> n ^ 2) listaQuadrado