-- Escreva abaixo o comando SQL que busca apenas os autores que foram publicados
-- pela Ed. Fantasias ou Brasil Editora.
SELECT
  Autor
FROM
  Livros
WHERE
  Editora = "Ed. Fantasias"
  OR Editora = "Brasil Editora"