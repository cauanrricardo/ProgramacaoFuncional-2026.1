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
listaNumeros = [1,2,3]
mutiplicaLista = map(\n -> n * 3) listaNumeros

-- soma dois numeros
somar = \x y -> x + y
somaLambda =  somar 10 5

-- elevar ao quadrado
listaQuadrado = [2,3,4]
listaAoQuadrado = map(\n -> n ^ 2) listaQuadrado -- ^serve pra potencia inteira

-- filtarr numeros pares
listaX = [1,2,3,4,5,6]
pares = filter(\x -> mod x 2 == 0) listaX

-- >= 10
notas =  [1,2,3,4,16,12,34,67,89,9]
listaMaiorQueDez = filter(\x -> x >= 10) notas

-- usando map e filter juntos
numeros = [1,2,4,6,8,10]
resultado = map(\x -> x * 2) (filter (\x -> x > 5) numeros) -- lembrar da ordem dos () filter vem 1º

-- somar 2 a cada elemento
lista2 = [5,10,15]
resultadoLista2 = map(\x -> x + 2) lista2

--usar filter pra <= 8
lista3 = [2,5,8,10,1,7]
resultadoLista3 = filter(\x -> x <= 8) lista3

-- filtar apenas numeros inpares e mutiplicar - los
lista4 = [1,2,3,4,5]
resultadoLista4 = map(\x -> x * 10) (filter(\x -> mod x 2 /= 0) lista4)

-- lambda com dois argumentos
formula = (\x y -> x * y + 1)
resultadoFormula = formula 3 4