-- Escreva abaixo o comando SQL que busca os títulos que possuem mais de 300
-- páginas da Ed. Fantasias.
SELECT
  Titulo
FROM
  Livros
WHERE
  Paginas > 300
  AND Editora = "Ed. Fantasias"