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

