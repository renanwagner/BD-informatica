# BD-informatica
Um BD de uma loja de informática com dados de clientes cadastrados.

* Como funciona o projeto?
  - Cria-se um banco de dados.
  - Uma tabela é criada para armazenamento de dados cadastrais do cliente
  - São inseridos os dados de cada cliente
 
* Como funcionam as atualizações?
  - No arquivo de atualizações, é possível ver as formas possíveis de atualizar os dados, entre elas:
    - Campo individual
    - Múltiplos campos
    - Operadores matemáticos
    - Condiões complexas
    - Por coluna
  - Em seguida, são atualizados os dados da tabela.

* Como funcionam as deleções?
  - No arquivo de deleção de dados, é possível ver as possíveis formas de deletar dados, entre elas:
     - Campo individual
     - Condições complexas
     - Tabela por inteiro
    - O comando TRUNCATE é referenciado como um comando destinado a tabelas temporárias, pois ele exclui a o programa todo, sem passar em linha por linha, como o DELETE. Portanto, se torna mais eficiente e, no entanto, irreversível.

* Como funcionam as consultas?
  - No arquivo de consultas, é possível analisar a tabela por meio de consultas utilizando SELECT
  - Operadores matemáticos são usados para que a consulta traga como resposta apenas os registros que se encontram dentro daquele padrão.
  - Operadores condicionais como WHERE e LIKE são usados para buscas mais exatas que retornem apenas o dados especificados, podendo serem utilizados em campos de texto
  - Cria-se uma tabela de bakckup através do comando CREATE TABLE e INSERT INTO, passando todos os dados da consulta para uma tabela separada
