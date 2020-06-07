# Banco de Dados - Introdução à SQL
## Aprendendo a acessar informações em bancos de dados utilizando o WHERE.

Já aprendemos a utilizar o `SELECT` para visualizar apenas dados de um
determinado tipo. Neste desafio vamos utilizar o comando `WHERE` para limitar
ainda mais a busca de dados dentro de um determinado tipo. Por exemplo, utilizando
a tabela de animais abaixo, se quisermos buscar apenas aqueles que pertencem à
Classe Mamíferos, podemos utilizar o seguinte comando SQL:

```
SELECT * FROM Animais WHERE classe='Mamíferos'

```

Tabela: Animais

| `nome_popular`     | `nome_cientifico`       | `classe`  |
|--------------------|-------------------------|-----------|
| Cão                |*Canis lupus familiaris* | Mamíferos |
| Lobo               |*Canis lupus*            | Mamíferos |
| Gato               |*Felis catus*            | Mamíferos |
| Jacaré-do-pantanal |*Caiman yacare*          | Répteis   |
| Tucano-toco        |*Ramphastos toco*        | Aves      |


Essa *query* nos retorna apenas os animais da Classe Mamíferos presentes na
tabela, nesse caso, cão, lobo e gato.

Alguns operadores disponíveis para utilizar com o `WHERE` são:

|Operador | Descrição           |
|---------|---------------------|
|=        | Igual               |
|>        | Maior que           |
|<        | Menor que           |
|LIKE     | Busca por um padrão |

A *query* `SELECT * FROM Animais WHERE nome_cientifico LIKE 'Canis%'` procura esse
padrão e nos devolve os dados de cão e lobo, já que ambos possuem 'Canis' em
seus nomes científicos. O símbolo `%` indica que são aceitáveis quaisquer
caracteres a partir dessa posição.

Além disso, o `WHERE` também permite que sejam feitas combinações de critérios
de busca utilizando os operadores `AND`, `OR` e `NOT`.

Por exemplo, se quisermos buscar todos os répteis e aves da tabela, podemos fazer a
seguinte *query*:

```
SELECT * FROM Animais WHERE classe='Répteis' OR classe='Aves'

```

Repita o procedimento do desafio anterior escrevendo em cada arquivo `.sql` os
comandos solicitados, sempre rodando o `rspec` para validar sua solução.

Essa série de desafios tem como objetivo apresentar conteúdo básico para acessar
e manipular informações em bancos de dados SQL. Para mais informações,
recomandamos consultar a [W3schools](https://www.w3schools.com).

;)

Abaixo apresentamos as duas tabelas utilizadas no desafio:

Tabela: Pessoas

| `nome`       | `idade`| `cidade`      | `rg`          |
|--------------|--------|---------------|---------------|
| Daniel       | 36     | Porto Alegre  | nil           |
| Paula        | 28     | Recife        | ""            |
| Juca         | 15     | Recife        | 22.515.135-3  |
| Joana        | 24     | Salvador      | 66.234.262-4  |
| Ana Carolina | 37     | Salvador      | 12.455.616-8  |

Tabela: Livros

| `titulo`                        | `autor`         |`paginas`| `editora`      |
|---------------------------------|-----------------|---------|----------------|
| O estrangeiro                   | Albert Camus    | 250     | Ed. Fantasias  |
| 1964                            | George Orwell   | 342     | Cia. de Livros |
| Vidas secas                     | Graciliano Ramos| 290     | Brasil Editora |
| Harry Potter e a Pedra Filosofal| J. K. Rowling   | 439     | Ed. Fantasias  |
| Musashi                         | Eiji Yoshikawa  | 932     | Cia. de Livros |


