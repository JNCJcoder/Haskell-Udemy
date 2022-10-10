module Fila where

-- Definindo o tipo Fila
-- 

data Fila t = F [t]
                deriving (Show)

-- Criar Fila
-- 
-- Cria uma fila vazia.

criarFila :: Fila t
criarFila = F []

-- Inserir Fila
-- 
-- 

inserirFila :: Fila t -> t -> Fila t
inserirFila (F lista) n = F (lista ++ [n])

-- Remover Fila
-- 
-- 

removerFila :: Fila t -> Fila t
removerFila (F []) = error "fila vazia"
removerFila (F (x:xs)) = F xs

-- Frente
-- 
-- 

frente :: Fila t -> t
frente (F []) = error "fila vazia"
frente (F (x:xs)) = x

-- Fila Vazia
-- 
-- Caso a lista esteja vazia retorna True.
-- Caso a lista possua algum item retorna False.

filaVazia :: Fila t -> Bool
filaVazia (F []) = True
filaVazia _ = False

-- Mostrar Fila
-- 
-- Converte a fila em uma Lista

mostrarFila :: Fila t -> [t]
mostrarFila fila | ((filaVazia fila) == True) = []
                 | otherwise = (frente fila):(mostrarFila (removerFila fila))
