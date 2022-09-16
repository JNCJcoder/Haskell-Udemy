-- Lista


-- Tamanho da Lista
-- 
-- Retorna o tamanho da lista, caso esteja vazia retorna 0

listaTamanho [] = 0
listaTamanho (x:xs) = 1 + listaTamanho xs