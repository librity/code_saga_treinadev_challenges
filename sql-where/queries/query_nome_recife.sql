-- Escreva abaixo o comando SQL que busca apenas os nomes das pessoas que moram
-- em Recife.
SELECT
  Nome
FROM
  Pessoas
WHERE
  Cidade = "Recife"