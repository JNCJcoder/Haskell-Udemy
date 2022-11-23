-- Josephus Problem

josephusProblem :: Int -> Int -> Int
josephusProblem 1 _ = 1
josephusProblem numero salto = (mod ((josephusProblem (numero - 1) salto) + salto - 1) numero) + 1