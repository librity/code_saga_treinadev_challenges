-- Escreva abaixo o comando SQL que deleta de Livros todos aqueles que não
-- possuem editora nula
DELETE FROM
  Livros
WHERE
  Editora NOT NULL