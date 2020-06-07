-- Escreva abaixo o comando SQL que atualiza maioridade para 1 em Pessoas,
-- somente para aqueles que possuem idade maior ou igual a 18 anos
UPDATE
  Pessoas
SET
  Maioridade = 1
WHERE
  Idade >= 18