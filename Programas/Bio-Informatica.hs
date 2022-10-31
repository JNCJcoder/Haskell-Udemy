-- Bio-Informatica

-- Definindo os Tipos 

type DNA = String
type Base = Char

-- Contar DNA
-- 
-- Recebe o DNA e a Letra referente a Base passada, e retorna quantas vezes a base se repete

contarDNA :: DNA -> Base -> Int
contarDNA [] c = 0
contarDNA (x:xs) c 
                | (c == x) = 1 + (contarDNA xs c)
                | otherwise = contarDNA xs c

-- Função Principal do Programa
-- 
-- Recebe o DNA pelo Usuario e retorna para o usuario quantas vezez as bases se repetem

principal :: IO ()
principal = do
                putStr "Digite a sequência do DNA: "
                dna <- getLine
                putStrLn ("Adenina: " ++ show (contarDNA (show dna) 'A')) 
                putStrLn ("Timina: " ++ show (contarDNA (show dna) 'T')) 
                putStrLn ("Citosina: " ++ show (contarDNA (show dna) 'C')) 
                putStrLn ("Guanina: " ++ show (contarDNA (show dna) 'G')) 