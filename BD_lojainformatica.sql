create database if not exists informatica;

/* 
Armazenamento de dados
*/

use informatica;

CREATE TABLE IF NOT EXISTS cliente_cadastrado(
	id_cliente INT AUTO_INCREMENT PRIMARY KEY COMMENT'O id_cliente é um dado único e referencial',
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(50),
    data_nascimento DATE,
    limite_credito DECIMAL(10, 2),
    info_adicionais TEXT,
    cadastro_ativo BOOLEAN DEFAULT 1 COMMENT'O cadastro_ativo é automaticamente definido como TRUE pois a tabela se trata de clientes já ativos',
    id_produto INT,
    UNIQUE (email)
    ) COMMENT='Tabela de clientes ativos na loja de informática';
    
    -- Selecionar uma tabela
    SELECT * FROM cliente_cadastrado; 
    
    -- Inserir registro de valores
    INSERT INTO cliente_cadastrado (id_cliente, nome_completo, email, data_nascimento, limite_credito) VAlUES
									(NULL, 'Mariano', 'marianowilliampereira20@email.com', '1999-01-03', 5200.00);
                                    
	-- Inserir múltiplos registros
    INSERT INTO cliente_cadastrado (nome_completo, email, data_nascimento, limite_credito) VALUES
									('Leandro', 'leandropaulo2024@email.com', '1988-05-29', 12000.00),
                                    ('Luna', 'lunadesa@email.com', '2004-09-12', 7350.00);
                                    
	-- Inserir registro sem especificar campos
    INSERT INTO cliente_cadastrado VALUES (NULL, 'Tomas', 'tomasassuncao05@email.com', '2005-11-20', 3250.00, NULL, TRUE, 1);
    
	-- Alterando coluna
    ALTER TABLE cliente_cadastrado CHANGE cadastro_ativo cadastro VARCHAR(255) NOT NULL;