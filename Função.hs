-- Funções


-- Função simples recursiva com Pattern Matching
-- 
-- Caso o numero seja igual a 1, então soma(numero) = 1
-- Caso o numero seja maior que 1, então soma(numero) = soma(numero - 1) + 1

soma 1 = 1
soma numero = soma(numero - 1) + numero