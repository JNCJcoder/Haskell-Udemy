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

-- Função Recursiva de Multiplos Retornos
-- 
-- Caso o numero seja igual a 0, então fibonacci(numero) = 0
-- Caso o numero seja igual a 1, então fibonacci(numero) = 1
-- Caso o numero seja maior que 1, então fibonacci(numero) = fibonacci(numero - 1) + fibonacci(numero - 2)

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci numero = fibonacci(numero - 1) + fibonacci(numero - 2)

-- Guarda
-- 
-- Condição Logica, Similar ao Pattern Matching usado acima
-- Caso o valor seja igual a 0, então guarda(valor) = 0
-- Caso o valor seja igual a 1, então guarda(valor) = 1
-- Caso o valor não seja 0 ou 1, então guarda(valor) = 10

guarda valor | (valor == 0) = 0
             | (valor == 1) = 1
             | otherwise = 10
