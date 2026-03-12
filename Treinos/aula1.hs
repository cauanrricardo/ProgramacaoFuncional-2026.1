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

aplicaDuasVezes :: (t -> t) -> t -> t
aplicaDuasVezes f x = f (f x) 
 {- recebe uma função f
 receber um valor x
 aplicar f 2 vezes em x

 aplicaDuasVezes dobro 3
  dobro de 3 = 6
  primeira vez: dobro 3 = 6
  segunda vez: dobro 6 = 12 -}

incrementa :: Num a => a -> a
incrementa x = x + 1

aplicaTresVezes :: (t -> t) -> t -> t
aplicaTresVezes f x = f (f (f x))

aplicaQuatroVezes :: (t -> t) -> t -> t
aplicaQuatroVezes f x = f (f (f (f x)))


aplicaNVezes :: Int -> (t2 -> t2) -> t2 -> t2
aplicaNVezes 0 f x = x --caso base
aplicaNVezes n f x = aplicaNVezes (n - 1) f (f x) --caso recursivo