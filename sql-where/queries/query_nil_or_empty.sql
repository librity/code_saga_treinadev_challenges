-- Escreva abaixo o comando SQL que busca apenas os nomes de quem não possui RG
SELECT
  Nome
FROM
  Pessoas
WHERE
  RG IS NULL
  OR RG = ""