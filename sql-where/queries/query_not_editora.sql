-- Escreva abaixo o comando SQL que busca os títulos dos livros que não foram
-- publicados pela Cia. de Livros.
SELECT
  Titulo
FROM
  Livros
WHERE
  NOT Editora = "Cia. de Livros"