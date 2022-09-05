-- Funções


-- Função simples recursiva com Pattern Matching
-- 
-- Caso o numero seja igual a 1, então soma(numero) = 1
-- Caso o numero seja maior que 1, então soma(numero) = soma(numero - 1) + 1

soma 1 = 1
soma numero = soma(numero - 1) + numero

-- Função Recursiva Com Tipo
-- 
-- Recebe um valor Inteiro e retorna um valor Inteiro.
-- Caso o numero seja igual a 0, então fatorial(numero) = 1

fatorial :: Int -> Int
fatorial 0 = 1
fatorial numero = fatorial(numero - 1) * numero