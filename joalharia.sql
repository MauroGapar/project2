-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Dez-2024 às 20:48
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joalharia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aneis`
--

CREATE TABLE `aneis` (
  `id_anel` int(11) NOT NULL,
  `tamanho_anel` decimal(4,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `brincos`
--

CREATE TABLE `brincos` (
  `id_brincos` int(11) NOT NULL,
  `tipo_fecho` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nif` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `nif`, `email`, `telefone`, `endereco`) VALUES
(1, 'João Silva', '123456789', 'joao@email.com', '923235945', 'Rua A'),
(2, 'Maria Oliveira', '987654321', 'maria@email.com', '913456789', 'Rua B'),
(3, 'Mauro Gaspar', '12345', 'mauro@email.com', '924650998', 'Rua Angola');

-- --------------------------------------------------------

--
-- Estrutura da tabela `colares`
--

CREATE TABLE `colares` (
  `id_colar` int(11) NOT NULL,
  `comprimento_colar` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id_fornecedor` int(11) NOT NULL,
  `nome_fornecedor` varchar(100) NOT NULL,
  `nif_fornecedor` varchar(20) NOT NULL,
  `telefone_fornecedor` varchar(15) NOT NULL,
  `endereco_fornecedor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id_fornecedor`, `nome_fornecedor`, `nif_fornecedor`, `telefone_fornecedor`, `endereco_fornecedor`) VALUES
(1, 'Fornecedora Luxo', '111222333', '919876543', 'Rua C'),
(2, 'Fornecedora Premium', '444555666', '928765432', 'Rua D');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionarios` int(11) NOT NULL,
  `nome_funcionario` varchar(100) NOT NULL,
  `nif_funcionario` varchar(20) NOT NULL,
  `data_contratacao` date NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `tipo` enum('GERENTE','VENDEDOR') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionarios`, `nome_funcionario`, `nif_funcionario`, `data_contratacao`, `salario`, `tipo`) VALUES
(1, 'Carlos Santos', '456789123', '2023-01-01', '2500.00', 'VENDEDOR'),
(2, 'Ana Costa', '789123456', '2022-06-15', '3500.00', 'GERENTE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gerentes`
--

CREATE TABLE `gerentes` (
  `id_gerente` int(11) NOT NULL,
  `metas_gerente` varchar(200) NOT NULL,
  `equipe_vendas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gerentes`
--

INSERT INTO `gerentes` (`id_gerente`, `metas_gerente`, `equipe_vendas`) VALUES
(2, 'Aumentar as vendas em 20%', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `joias`
--

CREATE TABLE `joias` (
  `id_joia` int(11) NOT NULL,
  `nome_joia` varchar(100) NOT NULL,
  `tipo_joia` enum('COLAR','ANEL','BRINCO') NOT NULL,
  `material_joia` varchar(50) NOT NULL,
  `peso_joia` decimal(5,2) NOT NULL,
  `preco_joia` decimal(10,2) NOT NULL,
  `estoque_joia` int(11) NOT NULL,
  `categoria` enum('Luxo','Casual','Noivado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `joias`
--

INSERT INTO `joias` (`id_joia`, `nome_joia`, `tipo_joia`, `material_joia`, `peso_joia`, `preco_joia`, `estoque_joia`, `categoria`) VALUES
(1, 'Colar de Pérolas', 'COLAR', 'Pérolas', '15.00', '2000.00', 5, 'Casual'),
(2, 'Colar de Ouro', 'COLAR', 'Ouro', '10.50', '3500.00', 8, 'Luxo'),
(3, 'Colar de Prata', 'COLAR', 'Prata', '12.00', '1500.00', 10, 'Casual'),
(4, 'Brinco de Diamante', 'BRINCO', 'Diamante', '2.50', '5000.00', 3, 'Luxo'),
(5, 'Brinco de Ouro', 'BRINCO', 'Ouro', '1.80', '3000.00', 7, 'Luxo'),
(6, 'Brinco de Prata', 'BRINCO', 'Prata', '2.00', '800.00', 12, 'Noivado'),
(7, 'Anel de Diamante', 'ANEL', 'Diamante', '1.50', '7000.00', 4, 'Noivado'),
(8, 'Anel de Ouro', 'ANEL', 'Ouro', '1.20', '4500.00', 6, 'Casual'),
(9, 'Anel de Prata', 'ANEL', 'Prata', '1.80', '1200.00', 9, 'Luxo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `joias_fornecedores`
--

CREATE TABLE `joias_fornecedores` (
  `id_joia` int(11) NOT NULL,
  `id_fornecedor` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `joias_fornecedores`
--

INSERT INTO `joias_fornecedores` (`id_joia`, `id_fornecedor`, `quantidade`) VALUES
(1, 1, 10),
(1, 2, 5),
(2, 1, 8),
(3, 2, 12),
(4, 1, 7),
(5, 2, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `id_pagamento` int(11) NOT NULL,
  `data_pagamento` date NOT NULL,
  `valor_pagamento` decimal(10,2) NOT NULL,
  `metodo_pagamento` enum('CARTAO','TRANSFERENCIA','DINHEIRO') NOT NULL,
  `id_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pagamentos`
--

INSERT INTO `pagamentos` (`id_pagamento`, `data_pagamento`, `valor_pagamento`, `metodo_pagamento`, `id_pedido`) VALUES
(1, '2024-11-10', '5000.00', 'CARTAO', 1),
(2, '2024-11-11', '1500.00', 'TRANSFERENCIA', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `data_pedido` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `valor_total_pedido` decimal(10,2) NOT NULL,
  `status_pedido` enum('PENDENTE','PAGO','CANCELADO') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `data_pedido`, `id_cliente`, `valor_total_pedido`, `status_pedido`) VALUES
(1, '2024-11-10', 1, '6500.00', 'PENDENTE'),
(2, '2024-11-11', 2, '1500.00', 'PAGO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedores`
--

CREATE TABLE `vendedores` (
  `id_vendedor` int(11) NOT NULL,
  `comissao_vendedor` decimal(5,2) NOT NULL,
  `vendas_totais_vendedor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendedores`
--

INSERT INTO `vendedores` (`id_vendedor`, `comissao_vendedor`, `vendas_totais_vendedor`) VALUES
(1, '5.00', '15000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aneis`
--
ALTER TABLE `aneis`
  ADD PRIMARY KEY (`id_anel`);

--
-- Indexes for table `brincos`
--
ALTER TABLE `brincos`
  ADD PRIMARY KEY (`id_brincos`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `nif` (`nif`);

--
-- Indexes for table `colares`
--
ALTER TABLE `colares`
  ADD PRIMARY KEY (`id_colar`);

--
-- Indexes for table `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id_fornecedor`),
  ADD UNIQUE KEY `nif_fornecedor` (`nif_fornecedor`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionarios`),
  ADD UNIQUE KEY `nif_funcionario` (`nif_funcionario`);

--
-- Indexes for table `gerentes`
--
ALTER TABLE `gerentes`
  ADD PRIMARY KEY (`id_gerente`);

--
-- Indexes for table `joias`
--
ALTER TABLE `joias`
  ADD PRIMARY KEY (`id_joia`);

--
-- Indexes for table `joias_fornecedores`
--
ALTER TABLE `joias_fornecedores`
  ADD PRIMARY KEY (`id_joia`,`id_fornecedor`),
  ADD KEY `id_fornecedor` (`id_fornecedor`);

--
-- Indexes for table `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indexes for table `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id_vendedor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_funcionarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `joias`
--
ALTER TABLE `joias`
  MODIFY `id_joia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pagamentos`
--
ALTER TABLE `pagamentos`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aneis`
--
ALTER TABLE `aneis`
  ADD CONSTRAINT `aneis_ibfk_1` FOREIGN KEY (`id_anel`) REFERENCES `joias` (`id_joia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `brincos`
--
ALTER TABLE `brincos`
  ADD CONSTRAINT `brincos_ibfk_1` FOREIGN KEY (`id_brincos`) REFERENCES `joias` (`id_joia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `colares`
--
ALTER TABLE `colares`
  ADD CONSTRAINT `colares_ibfk_1` FOREIGN KEY (`id_colar`) REFERENCES `joias` (`id_joia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `gerentes`
--
ALTER TABLE `gerentes`
  ADD CONSTRAINT `gerentes_ibfk_1` FOREIGN KEY (`id_gerente`) REFERENCES `funcionarios` (`id_funcionarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `joias_fornecedores`
--
ALTER TABLE `joias_fornecedores`
  ADD CONSTRAINT `joias_fornecedores_ibfk_1` FOREIGN KEY (`id_joia`) REFERENCES `joias` (`id_joia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `joias_fornecedores_ibfk_2` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`id_fornecedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD CONSTRAINT `vendedores_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `funcionarios` (`id_funcionarios`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
