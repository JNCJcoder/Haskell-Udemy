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
