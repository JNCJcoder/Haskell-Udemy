-- Busca Binaria

import System.Random 

-- Pegar Sequencia
-- 
-- Cria uma sequencia de 1 a 10

pegarSequencia :: [Int]
pegarSequencia = [x | x <- [1..10]]

-- Busca Binaria
-- 
-- Faz a busca binaria

buscaBinaria :: [Int] -> Int -> Int -> Int -> Int -> Int
buscaBinaria vet num lim_baixo lim_alto tentativas
                | vet!!meio > num = buscaBinaria vet num lim_baixo meio (tentativas + 1)
                | vet!!meio < num = buscaBinaria vet num meio lim_alto (tentativas + 1)
                | otherwise = tentativas
                where
                    meio = div (lim_baixo + lim_alto) 2

-- Main
-- 
-- 

main :: IO ()
main = do 
        num <- randomRIO(1, (length pegarSequencia))
        putStrLn ("Numero Sorteado: " ++ (show num))
        putStrLn ("Numero de tentativas: " ++ (show (buscaBinaria pegarSequencia num 0 (length pegarSequencia) 1)))
