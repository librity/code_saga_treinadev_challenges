-- Escreva abaixo o comando SQL que busca os autores publicados pela editora Cia. de Livros.
SELECT
  Autor
FROM
  Livros
WHERE
  Editora = "Cia. de Livros"