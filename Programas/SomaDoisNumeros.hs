-- Soma Dois Numeros
-- 
-- Exercicio simples usando IO, Monads e Operações Monádicas
-- Recebe do terminal dois numeros e retorna a soma deles dois

somaDoisNumeros :: IO ()
somaDoisNumeros = do
                    putStr "Digite o primeiro número: "
                    numero1 <- getLine
                    putStr "Digite o segundo número: "
                    numero2 <- getLine
                    putStrLn ("Resultado: " ++ (show (read numero1 + read numero2)))
