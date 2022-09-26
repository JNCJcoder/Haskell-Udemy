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

-- pop
-- 
-- Remove o item que esta no topo da Pilha

pop :: [Int] -> [Int]
pop [] = error "Pilha vazia"
pop (x:xs) | (x == (top (x:xs))) = xs
           | otherwise = x:(pop xs)
