# Banco de Dados - Introdução à SQL
## Aprendendo a inserir informações em tabelas de bancos de dados.

Neste desafio vamos ver como podemos adicionar informações a uma tabela dentro
de um banco de dados. Para isso usamos o comando `INSERT INTO`, seguido pelo
nome da tabela em que os dados serão inseridos. Utilizando como exemplo a tabela
de Animais abaixo, podemos utilizar o comando para adicionar dados:

Tabela: Animais

| `nome_popular`     | `nome_cientifico`       | `class`  |
|--------------------|-------------------------|-----------|
| Cão                |*Canis lupus familiaris* | Mamíferos |
| Jacaré-do-pantanal |*Caiman yacare*          | Répteis   |
| Tucano-toco        |*Ramphastos toco*        | Aves      |

```
  INSERT INTO Animais (nome_popular, nome_cientifico, classe)
  VALUES ('Raposa-vermelha','Vulpes vulpes', 'Mamíferos')
```

Se você está adicionando valores para todas as colunas da tabela, não é
necessário especificar os campos no comando chamado:

```
  INSERT INTO Animais
  VALUES ('Raposa-vermelha','Vulpes vulpes', 'Mamíferos')
```

Além disso, se você adicionar valores exatamente na mesma ordem das colunas da
tabela, não é necessário especificar os campos para que as informações sejam
adicionadas nos locais corretos.

Se você quiser, também pode inserir dados apenas em colunas específicas da
tabela:

```
  INSERT INTO Animais (nome_popular, classe)
  VALUES ('Urso-polar', 'Mamíferos')
```

Esse comando resultará em valor `nil`(nulo) na coluna `nome_cientifico`. Nesses casos,
se existir alguma validação que torna o campo obrigatório, ocorrerá um erro na
inserção dos dados.

Repita o procedimento do desafio anterior escrevendo em cada arquivo `.sql` os
comandos solicitados, sempre rodando o `rspec` para validar sua solução.

Essa série de desafios tem como objetivo apresentar conteúdo básico para acessar
e manipular informações em bancos de dados SQL. Para mais informações,
recomandamos consultar a [W3schools](https://www.w3schools.com).

;)


Abaixo apresentamos a estrutura das duas tabelas utilizadas no desafio:

Tabela: Pessoas

| `nome`       |`idade` | `cidade`      | `rg`          |
|--------------|--------|---------------|---------------|
| Daniel       | 36     | Porto Alegre  | 33.525.155-1  |


Tabela: Livros

| `titulo`      | `autor`         |`paginas`| `editora`      |
|---------------|-----------------|---------|----------------|
| O estrangeiro | Albert Camus    | 250     | Ed. Fantasias  |

