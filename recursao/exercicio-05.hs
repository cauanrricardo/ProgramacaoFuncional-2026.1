-- EXERCÍCIO 5 — repetir elemento
-- repete 3 "oi"
-- ["oi","oi","oi"]
-- "oi" : repete 2 "oi"
-- "oi" : ("oi" : repete 1 "oi")
-- "oi" : ("oi" : ("oi" : repete 0 "oi"))

repete :: Int -> a -> [a]
repete 0 x = []
repete n x = x: repete(n - 1) x

