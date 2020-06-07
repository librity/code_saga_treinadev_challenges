-- Escreva abaixo o comando SQL que atualiza valores nulos de Cidade na tabela
-- Pessoas para Belo Horizonte
UPDATE
  Pessoas
SET
  Cidade = "Belo Horizonte"
WHERE
  Cidade IS NULL