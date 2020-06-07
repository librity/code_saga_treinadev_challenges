# Banco de Dados - Introdução à SQL
## Aprendendo a atualizar informações em tabelas de bancos de dados.

Neste desafio vamos atualizar informações em tabelas de um banco de dados. O
comando utilizado para isso é `UPDATE`, seguido pelo `SET` e pelo `WHERE`, que
vão indicar exatamente quais campos e valores serão alterados.

Vamos usar a tabela abaixo como exemplo:

Tabela: Animais

| `nome_popular`     | `nome_cientifico`       | `classe`  |
|--------------------|-------------------------|-----------|
| Cão                |*Canis lupus*            | nil       |
| Lobo               |*Canis lupus*            | Mamíferos |
| Gato               |*Felis catus*            | Mamíferos |
| Jacaré-do-pantanal |*Caiman yacare*          | Répteis   |
| Tucano-toco        |*Ramphastos toco*        | Aves      |

Para atualizar o `nome_cientifico` de cão para *Canis lupus familiaris* e sua
classe para 'Mamíferos', podemos aplicar o comando:

```
UPDATE Animais
SET nome_cientifico='Canis lupus familiaris', classe='Mamíferos'
WHERE nome_popular='cão'
```

Atente para as condições descritas no comando `WHERE`, pois ele pode
afetar muitos valores e, se não for definida nenhuma condição, ele vai alterar 
todas as linhas nos campos especificados no `SET`. Se quisermos, por exemplo,
modificar todos os `nomes_populares` dos mamíferos para "macaco", poderíamos
utilizar o seguinte comando:

```
UPDATE Animais
SET nome_popular='macaco'
WHERE classe='Mamíferos'
```

Repita o procedimento do desafio anterior escrevendo em cada arquivo `.sql` os
comandos solicitados, sempre rodando o `rspec` para validar sua solução.

Essa série de desafios tem como objetivo apresentar conteúdo básico para acessar
e manipular informações em bancos de dados SQL. Para mais informações,
recomandamos consultar a [W3schools](https://www.w3schools.com).

;)

Abaixo apresentamos as duas tabelas utilizadas no desafio:

Tabela: Pessoas

| `nome`       |`idade` | `cidade`      | `maioridade`  |
|--------------|--------|---------------|---------------|
| Daniel       | 36     | Porto Alegre  | 0             |
| Paula        | 28     | Pernambuco    | 0             |
| Juca         | 15     | Pernambuco    | 0             |
| Joana        | 24     | Salvador      | 0             |
| Ana Carolina | 16     | Salvador      | 0             |
| Henrique     | 26     | nil           | 0             |
| Erika        | 18     | nil           | 0             |

Tabela: Livros

| `titulo`                        | `autor`         |`genero `   | `editora`      |
|---------------------------------|-----------------|------------|----------------|
| O Estrangeiro                   | Albert Camus    | Filosofia  | Ed. Fantasias  |
| 1984                            | George Orwell   | Ficção     | Cia. de Livros |
| Vidas Secas                     | Graciliano Ramos| Romance    | Brasil Editora |
| Harry Potter e a Pedra Filosofal| J. K. Rowling   | Ficção     | Ed. Fantasias  |
| Musashi                         | Eiji Yoshikawa  | Romance    | Cia. de Livros |
| Dom Casmurro                    | Machado de Assis| Romance    | nil            |
