/*
Ordenando e limitando dados
*/

USE informatica;

SELECT * FROM cliente_cadastrado;

-- Ordenação

-- Ordenar por ordem crescente (alfabética)
SELECT nome FROM cliente_cadastrado ORDER BY nome ASC;

-- Odernar por ordem decrescente 
SELECT nome, data_nascimento FROM cliente_cadastrado ORDER BY  data_nascimento DESC;

-- Ordenar dois campos em diferentes critérios
SELECT nome, limite_credito FROM cliente_cadastrado ORDER BY nome ASC, limite_credito DESC;

-- Limitação

-- Selecionar um registro (Boa prática)
SELECT * FROM cliente_cadastrado LIMIT 3;

-- Selecionar os 3 clientes com maior limite de crédito
SELECT nome, limite_credito FROM cliente_cadastrado 
ORDER BY limite_credito DESC
LIMIT 3;

-- Pular o primeiro registro e selecionar os próximos 2
SELECT nome FROM cliente_cadastrado 
ORDER BY nome ASC 
LIMIT 2 OFFSET 1;






