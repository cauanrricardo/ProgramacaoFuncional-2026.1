--  Pegar último elemento
ultimo :: [Int] -> Int
ultimo [x] = x
ultimo (_:xs) = ultimo xs