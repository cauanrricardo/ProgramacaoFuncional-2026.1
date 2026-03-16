inverso :: [a] -> [a]
inverso [] = []
inverso (x : xs) = inverso xs ++ [x]