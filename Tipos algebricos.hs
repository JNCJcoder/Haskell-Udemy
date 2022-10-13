-- Tipos algébricos

-- Nomeando Novos Tipos
-- 

type Nome           = String
type Linguagem      = String
type Universidade   = String

-- Criando um Tipo Algébrico
-- 

data Pessoa = Programador Nome Linguagem | Aluno Nome Universidade
                deriving(Show)


-- Criando Itens
-- 

programador = Programador "Fulano" "Haskell"
aluno = Aluno "Fulano" "UFRJ"

-- isProgramador
-- 
-- Verifica se a Pessoa é do construtor Programador, caso seja retorna True

isProgramador :: Pessoa -> Bool
isProgramador (Programador _ _) = True
isProgramador _ = False

-- isAluno
-- 
-- Verifica se a Pessoa é do construtor Aluno, caso seja retorna True

isAluno :: Pessoa -> Bool
isAluno (Aluno _ _) = True
isAluno _ = False