--  Inico CRUD
-- Create 
INSERT INTO clientes (nome, nif, email, telefone, endereco)
VALUES ('Mauro Gaspar', '12345', 'mauro@email.com', '924650998', 'Rua Angola');

--Read
SELECT * FROM clientes;
--
UPDATE clientes
SET telefone = '923235945'
WHERE nome = 'João Silva';
--DELETE
DELETE FROM clientes
WHERE nome = 'Maria Oliveira';



--Listar todos os pedidos de um cliente específico
SELECT id_pedido, data_pedido, valor_total_pedido, status_pedido
FROM pedidos
INNER JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
WHERE clientes.nome = 'João Silva';


--Verificar o estoque de uma joia específica
SELECT nome_joia, estoque_joia
FROM joias
WHERE nome_joia = 'Colar de Ouro';


--Listar os vendedores e suas comissões
SELECT f.nome_funcionario, v.comissao_vendedor, v.vendas_totais_vendedor
FROM vendedores v
INNER JOIN funcionarios f ON v.id_vendedor = f.id_funcionarios;

--Listar os gerentes e suas metas
SELECT f.nome_funcionario, g.metas_gerente, g.equipe_vendas
FROM gerentes g
INNER JOIN funcionarios f ON g.id_gerente = f.id_funcionarios;

--Listar todas as joias com os seus fornecedores
SELECT j.nome_joia, f.nome_fornecedor, jf.quantidade
FROM joias_fornecedores jf
INNER JOIN joias j ON jf.id_joia = j.id_joia
INNER JOIN fornecedores f ON jf.id_fornecedor = f.id_fornecedor;