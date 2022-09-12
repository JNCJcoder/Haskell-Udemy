-- Tuplas

-- Somando duas Tuplas
-- 
-- Soma do X e Y entre duas Tuplas

somaTupla :: (Int, Int) -> (Int, Int) -> (Int, Int)
somaTupla (a, b) (c, d) = (a + c, b + d)

-- Extraindo informações da Tupla
-- 
-- SelecionarX retorna o primeiro valor da Tupla
-- SelecionarY retorna o segundo valor da Tupla
-- SelecionarZ retorna o terceiro valor da Tupla

selecionarX (x, _, _) = x
selecionarY (_, y, _) = y
selecionarZ (_, _, z) = z