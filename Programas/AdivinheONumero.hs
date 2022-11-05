-- Adivinhe o Numero

import System.Random

-- Função Principal do Programa

principal = 
            do numero <- randomRIO (1::Int, 50)
                adivinhar numero

-- Adivinhar
-- 
-- Mantem um Loop ate o usuario acertar o numero randomico

adivinhar numeroRandomico = do
                        putStr "\nDigite um número entre 1 e 50: "
                        valorDigitado <- getLine
                        if (read valorDigitado) < numeroRandomico
                            then do
                                putStrLn "Dica: Mais para cima!"
                                adivinhar numeroRandomico
                        else if (read valorDigitado) > numeroRandomico
                            then do
                                putStrLn "Dica: Mais para baixo!"
                                adivinhar numeroRandomico
                        else
                            do putStrLn "Parabens!! Você acertou!!"
