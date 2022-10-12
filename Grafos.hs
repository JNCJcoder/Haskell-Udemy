-- Grafos

-- Definindo os Tipos

type Vertice = Int
type Aresta = (Vertice, Vertice)
type Grafo = [Aresta]

-- Criando uma lista de Grafos

grafo :: [Aresta]
grafo = [
            (1, 2), (1, 3), (1, 4), (1, 5),
            (2, 6), (2, 7),
            (4, 8),
            (5, 9)
        ]

-- Grafos Adjacentes
-- 
-- Retorna os grafos adjacentes de acordo com a vertice passada.

grafosAdjacentes :: Grafo -> Vertice -> [Vertice]
grafosAdjacentes [] _ = []
grafosAdjacentes ((a, b):c) v
                        | (a == v) = b:(grafosAdjacentes c v)
                        | (b == v) = a:(grafosAdjacentes c v)
                        | otherwise = grafosAdjacentes c v