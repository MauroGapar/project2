# project2
Este projeto implementa um banco de dados para gerenciar uma joalheria, contemplando o controle de joias, fornecedores, clientes, pedidos e pagamentos. Foi desenvolvido utilizando MySQL no ambiente phpMyAdmin.
________________________________________
Estrutura do Banco de Dados
1.	Tabela joias
o	Atributos: id_joia, nome_joia, tipo_joia, material_joia, peso_joia, preco_joia, estoque_joia, categoria.
o	Relacionamento: Associada a vários fornecedores.
2.	Tabela fornecedores
o	Atributos: id_fornecedor, nome_fornecedor, telefone_fornecedor, endereco_fornecedor.
o	Relacionamento: Pode fornecer várias joias.
3.	Tabela clientes
o	Atributos: id_cliente, nome_cliente, nif_cliente, email_cliente, telefone_cliente, endereco_cliente.
4.	Tabela pedidos
o	Atributos: id_pedido, data_pedido, id_cliente, valor_total_pedido, status_pedido.
o	Relacionamentos:
	Feitos por clientes.
	Associados a pagamentos.
5.	Tabela pagamentos
o	Atributos: id_pagamento, data_pagamento, valor_pagamento, metodo_pagamento, id_pedido.
6.	Tabela funcionarios
o	Atributos: id_funcionarios, nome_funcionario, nif_funcionario, data_contratacao, salario, tipo.
o	Especializações:
	Gerentes: metas_gerente, equipe_vendas.
	Vendedores: comissao_vendedor, vendas_totais_vendedor.
7.	Tabela Intermediária
o	joias_fornecedores: Relaciona joias e fornecedores para gerenciar a quantidade fornecida.
________________________________________
Consultas SQL
•	Todas as consultas SQL criadas para interagir com o banco de dados foram organizadas em um arquivo chamado consultas.sql. Este arquivo inclui:
o	Inserção de dados nas tabelas.
o	Consultas de seleção.
o	Atualizações e exclusões.
o	Relações entre tabelas.
Envie o arquivo consultas.sql juntamente com o projeto.
________________________________________
Cardinalidade
•	A cardinalidade entre as tabelas foi representada graficamente em uma imagem separada. Certifique-se de incluir o arquivo de imagem na entrega para facilitar a compreensão do modelo relacional.
________________________________________
Instruções de Uso
1.	Importe os scripts SQL para criar e popular o banco de dados no phpMyAdmin.
2.	Utilize o arquivo consultas.sql para testar as interações com o banco de dados.
3.	Verifique a imagem de cardinalidade para entender as relações entre as tabelas.
