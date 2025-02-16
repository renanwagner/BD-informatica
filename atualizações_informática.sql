/*
Atualizando a tabela
*/

SHOW DATABASES;

use informatica;

SELECT * FROM cliente_cadastrado;


desc cliente_cadastrado;

-- Atualizando 1 campo
UPDATE cliente_cadastrado
SET email = 'marianowilliam_novo@email.com' 
WHERE id_cliente = 1;

-- Atualizando múltiplos campos
UPDATE cliente_cadastrado 
SET data_nascimento = '1970-04-11', limite_credito = 4700.00
WHERE id_cliente = 2;

-- Atualizando com operadores matemáticos
UPDATE cliente_cadastrado 
SET limite_credito = limite_credito - 400
WHERE id_cliente = 3;

-- Atualizando com condições complexas
UPDATE cliente_cadastrado
SET cadastro_ativo = FALSE
WHERE limite_credito < 4000 OR data_nascimento < '1980-01-01';


-- Atualizar todos os registros de uma coluna
UPDATE cliente_cadastrado
SET info_adicionais = 'Revisão de cadastro'