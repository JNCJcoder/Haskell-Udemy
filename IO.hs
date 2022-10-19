-- IO

import System.IO

-- Pegar Caractere
-- 
-- Recebe Um caractere do usuario e retorna o caratere para ele

pegarCaractere :: IO ()
pegarCaractere = do
                    putStr "Digite um caractere"
                    caractere <- getChar
                    putStr "O caractere digitado foi: "
                    putChar caractere
