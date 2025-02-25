/*
Consultando dados
*/

USE informatica;

-- Selecionando todos os dados de uma tabela
SELECT * FROM cliente_cadastrado;

-- Selecionando colunas específicas
SELECT nome, email, limite_credito FROM cliente_cadastrado;

-- Criando tabela com base no SELECT *(Backup. Não aplica restrições)
CREATE TABLE backup_cliente AS SELECT * FROM cliente_cadastrado;

-- Inserir registros a partir da seleção de dados (aplica também as restrições)
truncate backup_cliente;
select * from backup_cliente;
INSERT INTO backup_cliente SELECT * FROM cliente_cadastrado;

-- Consulta por condição

-- Filtrar por campo numérico
SELECT nome, limite_credito FROM cliente_cadastrado 
WHERE limite_credito <= 5000.00;

-- Filtra por campo de texto
SELECT nome, limite_credito FROM cliente_cadastrado 
WHERE nome = 'Tomas'; -- A busca irá retornar o registro que corresponde exatamente ao que está escrito
SELECT nome, limite_credito FROM cliente_cadastrado
WHERE nome LIKE 'T%'; -- A busca irá retornar apenas nomes com a letra T, devido ao comando LIKE e o símbolo coringa %

-- Filtrar por campo boleano
SELECT nome, email FROM cliente_cadastrado
WHERE cadastro = FALSE;

-- Filtrar por campo de data
SELECT nome, data_nascimento FROM cliente_cadastrado
WHERE data_nascimento >= '1990-01-01'; -- Filtra pelo valor exato da data no padrão AAAA-MM-DD

SELECT nome, data_nascimento FROM cliente_cadastrado
WHERE year(data_nascimento) >= '1990'; -- filtra expecificamente por um dos critérios: year, month, day 
