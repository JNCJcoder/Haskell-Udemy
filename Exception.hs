-- Exception

import Control.Exception
import System.IO.Error

lerArquivo :: IO ()
lerArquivo = do
                {catch (ler_arquivo) tratar_erro}
                where
                    ler_arquivo = do
                    {
                        conteudo <- readFile "teste.txt"
                        return (read conteudo)
                    }
                    tratar_erro erro = if isDoesNotExistError erro
                        then do
                    {
                        putStr "Exceção: Arquivo inexistente"
                        putStrLn ""
                    }
                    else isError erro