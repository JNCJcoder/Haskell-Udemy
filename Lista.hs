-- Lista

-- Criação de Lista
-- 
-- Cria uma lista com itens de 1 ate 10

[1 .. 10]

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

-- Compreensão de Lista
-- 
-- Filtrando numeros par em uma lista

ListaFiltradaPar = [x | x <- [1 .. 10], mod x 2 == 0]

-- Inverter Lista
-- 
-- Inverte a lista, caso possua itens dentro

inverterLista :: [a] -> [a]
inverterLista [] = []
inverterLista (x:xs) = (inverterLista xs) ++ [x]

-- Concatenar Listas
-- 
-- Concatena duas listas, caso não seja passado uma segunda lista apenas retorna a Lista
-- Caso seja passado as listas [1, 2] e [3, 4] retornara [1, 2, 3, 4]

concatenarListas :: [a] -> [a] -> [a]
concatenarListas [] y = y
concatenarListas x [] = x
concatenarListas (x:xs) y = x : concatenarListas xs y

-- Gerar Lista Infinita
-- 
-- Gera uma lista potencialmente Infinita

gerarListaInfinita :: Int -> [Int]
gerarLista n = n : gerarLista(n + 1)

-- Somar Lista
-- 
-- Soma todos os elementos da lista e retorna o resultado

somarLista :: [Int] -> Int
somarLista [] = 0
somarLista (x:xs) = x + somarLista xs

-- isPrime
-- 
-- Retorna os numeros primos

isPrime :: Int -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime n | (length [x | x <-  [2 .. n - 1], mod n x == 0]) > 0 = False
          | otherwise = True