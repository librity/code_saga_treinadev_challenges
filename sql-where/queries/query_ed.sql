-- Escreva abaixo o comando SQL que busca uma única ocorrência de cada editora
-- cujo nome possui as letras Ed.
SELECT
  DISTINCT Editora
FROM
  Livros
WHERE
  Editora LIKE "%Ed%"