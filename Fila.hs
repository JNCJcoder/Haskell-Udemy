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
