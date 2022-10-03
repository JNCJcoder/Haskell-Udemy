-- Definindo tipo ArvoreBinaria
data ArvoreBinaria = Nulo | No Int ArvoreBinaria ArvoreBinaria

-- Nossa Arvore Binaria
arvore :: ArvoreBinaria
arvore = (No 1 
                (No 2 
                    (No 4 Nulo Nulo) (No 5 Nulo Nulo))
                (No 3 
                    (No 6 Nulo Nulo))
         )

-- 
-- 
-- 
emOrdem :: ArvoreBinaria -> [Int]
emOrdem Nulo = []
emOrdem (No numero esquerda direita) = (emOrdem esquerda) ++ [numero] ++ (emOrdem direita)