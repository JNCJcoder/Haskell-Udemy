-- Funções


-- Função simples recursiva com Pattern Matching
-- 
-- Caso o numero seja igual a 1, então soma(numero) = 1
-- Caso o numero seja maior que 1, então soma(numero) = soma(numero - 1) + 1

soma 1 = 1
soma numero = soma(numero - 1) + numero

-- Função Recursiva Com Tipo
-- 
-- Recebe um valor Inteiro e retorna um valor Inteiro.
-- Caso o numero seja igual a 0, então fatorial(numero) = 1

fatorial :: Int -> Int
fatorial 0 = 1
fatorial numero = fatorial(numero - 1) * numero

-- Função Recursiva de Multiplos Retornos
-- 
-- Caso o numero seja igual a 0, então fibonacci(numero) = 0
-- Caso o numero seja igual a 1, então fibonacci(numero) = 1
-- Caso o numero seja maior que 1, então fibonacci(numero) = fibonacci(numero - 1) + fibonacci(numero - 2)

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci numero = fibonacci(numero - 1) + fibonacci(numero - 2)

-- Guarda
-- 
-- Condição Logica, Similar ao Pattern Matching usado acima
-- Caso o valor seja igual a 0, então guarda(valor) = 0
-- Caso o valor seja igual a 1, então guarda(valor) = 1
-- Caso o valor não seja 0 ou 1, então guarda(valor) = 10

guarda valor | (valor == 0) = 0
             | (valor == 1) = 1
             | otherwise = 10

-- Função com 2 Parâmetros Tipados e Variável Anônima
-- 
-- Recebe dois valores Bool e retorna um Bool
-- Variavel Anonima é representada pelo _ (underscore)
-- Caso um dos parametros seja false, retorna false
-- Caso todos os parametros sejam true, retorna true

my_and :: Bool -> Bool -> Bool
my_and False _ = False
my_and _ False = False
my_and True True = True

-- Definindo Novos Tipos
-- 
-- Cria novos tipos de dados baseados em outros tipos
-- Cria um novo elemento do tipo Pessoa 
-- Três Funções que retornam Nome, Idade ou o Idioma da Pessoa

type Nome = String
type Idade = Int
type Idioma = String
type Pessoa = (Nome, Idade, Idioma)

pessoa :: Pessoa
pessoa = ("Jorge", 22, "Português")

pessoaNome :: Pessoa -> Nome
pessoaNome (nome, idade, idioma) = nome

pessoaIdade :: Pessoa -> Idade
pessoaIdade (nome, idade, idioma) = idade

pessoaIdioma :: Pessoa -> Idioma
pessoaIdioma (nome, idade, idioma) = idioma

-- Função Lambda
-- 
-- Funções lambda são feitas usando "\x ->", sendo x o parametro da função
-- A Função abaixo multiplica o valor passado por ele mesmo
-- caso x seja 10, então f_lambda(10) = 100

f_lambda = \x -> (x * x)
