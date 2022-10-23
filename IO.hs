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

-- Somar Numeros 
-- 
-- Recebe dois numeros e retorna a soma deles

somarNumeros :: IO Int
somarNumeros = do
                    putStr "Digite o primeiro número: "
                    linha1 <- getLine
                    putStr "Digite o segundo número: "
                    linha2 <- getLine
                    return ((read linha1 :: Int) + (read linha2 :: Int))

-- Escrever Arquivo
-- 
-- Escreve duas strings no arquivo teste.txt

escreverArquivo :: IO ()
escreverArquivo = do
                    arquivo <- openFile "teste.txt" WriteMode
                    hPutStr arquivo "Escrita no Arquivo\n"
                    hPutStr arquivo "Escrita novamente no Arquivo"
                    putStrLn "Escrita realizada com sucesso!"
                    hFlush arquivo
                    hClose arquivo

-- Ler Arquivo
-- 
-- Le o arquivo teste.txt e retorna o seu conteudo no terminal.

lerArquivo :: IO ()
lerArquivo = do
                arquivo <- openFile "teste.txt" ReadMode
                conteudo <- hGetContents arquivo
                putStrLn conteudo
                hClose arquivo
