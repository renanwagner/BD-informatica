/*
Deletando dados
*/

USE informatica;

SELECT * FROM cliente_cadastrado;

-- Deletar apenas um registro
DELETE FROM cliente_cadastrado 
WHERE id_cliente = 2;

-- Deletar registros com múltiplas condições
DELETE FROM cliente_cadastrado 
WHERE id_produto = 0 OR limite_credito < 2000.00;

SET SQL_SAFE_UPDATES = 0;

-- Deletar tabela
DELETE FROM cliente_cadastrado;

-- Deletar tabelas temporárias
TRUNCATE TABLE cliente_cadastrado
