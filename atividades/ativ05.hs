-- atividade 5
nome = "Cauan Ricardo Ribeiro"
matricula = "569566"

-- 1.
chip'sum :: [(Char, Float)] -> Char -> Float
chip'sum [] _ = 0.0
chip'sum ((c, v):xs) busca
    | c == busca && c `elem` "abcdeABCDE" = v + chip'sum xs busca
    | otherwise = chip'sum xs busca

-- 2.
chip'sum' :: [(Char, Float)] -> Char -> Float
chip'sum' lista busca = foldl (\acc (c, v) -> if c == busca && c `elem` "abcdeABCDE" then acc + v else acc) 0.0 lista

-- 3.
words' :: String -> [String]
words' "" = []
words' (x:xs)
    | x == ' '  = words' xs
    | otherwise = (x : pegarPalavra xs) : words' (removerPalavra xs)
  where
    pegarPalavra [] = ""
    pegarPalavra (y:ys)
        | y == ' '  = ""
        | otherwise = y : pegarPalavra ys

    removerPalavra [] = ""
    removerPalavra (z:zs)
        | z == ' '  = zs
        | otherwise = removerPalavra zs
        