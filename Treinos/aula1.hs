soma :: Num a => a -> a -> a
soma x y = x + y

dobro :: Num a => a -> a
dobro x = 2 * x

triplo :: Int -> Int
triplo x = x * 3

quadrado :: Num a => a -> a
quadrado x = x * x

ehPar :: Integral a => a -> Bool
ehPar x = mod x 2 == 0

metade :: Double -> Double
metade x = x / 2

maiorDeIdade :: Int -> Bool
maiorDeIdade idade = idade >= 18

formulacirculo :: Floating a => a -> a
formulacirculo x = x * x  *pi

antecessor :: Num a => a -> a
antecessor x = x - 1

sucessor :: Num a => a -> a
sucessor x = x + 1