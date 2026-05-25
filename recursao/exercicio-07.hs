-- Inverter lista
-- inverte [1,2,3] = [3,2,1]
inverte :: [Int] -> [Int] 
inverte [] = []
inverte (x:xs) = inverte xs  ++ [x]
