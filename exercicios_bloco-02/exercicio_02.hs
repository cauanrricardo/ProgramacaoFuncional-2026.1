-- Exercicio -- 2. casamento com lista: retorna True se lista tem exatamente 1 elemento
umElemento :: [a] -> Bool
umElemento [_] = True -- casa com 1 elemento
umElemento _   = False