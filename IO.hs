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

-- Anexar Arquivo
-- 
-- Escreve uma string no final do arquivo

anexarArquivo :: IO ()
anexarArquivo = do
                    arquivo <- openFile "teste.txt" AppendMode
                    hPutStr arquivo "Anexo no Arquivo\n"
                    putStrLn "Anexo realizada com sucesso!"
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

-- Escrever Arquivo
-- 
-- Escreve uma strings no arquivo teste.txt diretamente

escreverArquivoDiretamente :: IO ()
escreverArquivoDiretamente = do
                                writeFile "teste.txt" "Aprendendo Haskell"
                                putStrLn "Escrita realizada com sucesso!"

-- Ler Arquivo Diretamente
-- 
-- Le o arquivo teste.txt diretamente e retorna o seu conteudo no terminal.

lerArquivoDiretamente :: IO ()
lerArquivoDiretamente = do 
                            conteudo <- readFile "teste.txt"
                            putStrLn conteudo
