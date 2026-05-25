-- imc sem where
imc peso altura = peso / (altura * altura)

-- usando where
imcMelhorado :: Float -> Float -> Float    
imcMelhorado peso altura = resultado
    where
        resultado = peso / quadrado
        quadrado = altura * altura    

-- exercicio 01
areaRetangulo :: Float -> Float -> Float
areaRetangulo base altura = resultado
    where 
        resultado = base * altura

-- exercicio 02
media3 :: Float -> Float -> Float -> Float     
media3 x y z = media
    where
        soma = x + y + z 
        media = soma / 3