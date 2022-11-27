-- Quick Sort
-- 
-- Algoritmo de Quick Sort feito do zero

quickSort [] = []
quickSort (x:xs) = quickSort esquerda ++ [x] ++ quickSort direita
                where
                    esquerda = [y | y <- xs, y < x]
                    direita = [y | y <- xs, y >= x]
