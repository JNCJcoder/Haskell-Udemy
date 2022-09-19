-- Lista


-- Tamanho da Lista
-- 
-- Retorna o tamanho da lista, caso esteja vazia retorna 0

listaTamanho [] = 0
listaTamanho (x:xs) = 1 + listaTamanho xs

-- Comparar Listas
-- 
-- Compara duas listas e retorna true caso sejam iguais.
-- Caso as duas listas sejam diferentes retorna false

comparaListas :: [Int] -> [Int] -> Bool
comparaListas [] [] = True
comparaListas [] _ = False
comparaListas _ [] = False
comparaListas (a:b) (c:d) | (a == c) = comparaListas b d
                          | otherwise = False