-- Escreva abaixo o comando SQL que corrige Cidade de Pernambuco para Recife
-- na tabela Pessoas
UPDATE
  Pessoas
SET
  Cidade = 'Recife'
WHERE
  Cidade = 'Pernambuco'