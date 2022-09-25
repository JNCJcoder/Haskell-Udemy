-- Pilha


-- Push
-- 
-- Recebe uma Pilha e um valor, e adiciona o valor no final da pilha.
-- Caso receba a pilha [1, 2, 3] e o valor 4, então retornara [1, 2, 3, 4]

push :: [Int] -> Int -> [Int]
push pilha x = pilha ++ [x]

-- Top
-- 
-- Retorna o valor do topo da pilha

top :: [Int] -> Int
top [x] = x
top (x:xs) = top xs
