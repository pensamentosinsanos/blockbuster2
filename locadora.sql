-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/08/2025 às 15:09
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_categoria`) VALUES
(1, 'Comedia'),
(2, 'Terror'),
(3, 'Fantasia'),
(4, 'Romance'),
(5, 'Drama'),
(6, 'Ficcao Cientifica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE `filmes` (
  `id_filme` int(11) NOT NULL,
  `nome_filme` varchar(60) NOT NULL,
  `data_lancamento` date NOT NULL,
  `preco_filme` decimal(10,2) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filmes`
--

INSERT INTO `filmes` (`id_filme`, `nome_filme`, `data_lancamento`, `preco_filme`, `categoria`) VALUES
(1, 'Esposa de Mentirinha', '2011-03-04', 10.50, 1),
(2, 'Tudo bem no Natal que vem', '2021-12-03', 15.00, 1),
(3, 'Os Farofeiros', '2018-03-08', 14.00, 1),
(4, 'Corra', '2017-05-18', 14.00, 2),
(5, 'Pecadores', '2025-04-17', 16.00, 2),
(6, 'A Freira', '2018-09-06', 14.00, 2),
(7, 'O Magico de Oz', '1939-09-18', 10.00, 3),
(8, 'As Cronicas de Narnia', '2005-12-05', 10.00, 3),
(9, 'Harry Potter e a Pedra Filosofal', '2001-11-23', 10.00, 3),
(10, 'Titanic', '1998-01-16', 10.00, 4),
(11, 'Grease: Nos Tempos da Brilhantina', '1978-06-16', 10.00, 4),
(12, 'A Dama e o Vagabundo', '1955-06-24', 10.00, 4),
(13, 'Central do Brasil', '1998-04-03', 10.00, 5),
(14, 'Dan?ando no Escuro', '2000-10-20', 10.00, 5),
(15, 'Taxi Driver', '1976-03-22', 10.00, 5),
(16, 'Her', '2014-02-14', 10.50, 6),
(17, 'Tudo em Todo Lugar ao Mesmo Tempo', '2022-06-23', 15.00, 6),
(18, 'Matrix', '1999-05-21', 10.00, 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id_filme`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id_filme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
