-- Vetor

import Data.Array

-- Vetor
-- 
-- Guardando um vetor

getArray = array (1, 4) [(1, 'A'), (2, 'B'), (3, 'C'), (4, 'D')]

-- elems 
-- 
-- Retornando Todos os Elementos

elems getArray

-- getArray
-- 
-- retorna valor da posição X do vetor

getArray ! 1 -- Retorna A
getArray ! 2 -- Retorna B
getArray ! 3 -- Retorna C
getArray ! 4 -- Retorna D

-- bounds
-- 
-- Retorna os limites do Array

bounds getArray
