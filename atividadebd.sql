-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/04/2025 às 14:14
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
-- Banco de dados: `atividadebd`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `PK_cpf` int(11) NOT NULL,
  `rm` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `FK_turma_id` int(11) DEFAULT NULL,
  `FK_projeto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`PK_cpf`, `rm`, `nome`, `FK_turma_id`, `FK_projeto_id`) VALUES
(1234, 8190, 'Adriano', 1, 1),
(9731, 3401, 'Rafael', 2, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `PK_curso_id` int(11) DEFAULT NULL,
  `curso_nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`PK_curso_id`, `curso_nome`) VALUES
(1, 'DS');

-- --------------------------------------------------------

--
-- Estrutura para tabela `projetos`
--

CREATE TABLE `projetos` (
  `PK_projetos_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `projetos`
--

INSERT INTO `projetos` (`PK_projetos_id`, `nome`) VALUES
(1, 'Seguidor de linha'),
(2, 'Maratona de programação');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trunos`
--

CREATE TABLE `trunos` (
  `PK_id` int(11) NOT NULL,
  `periodo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `trunos`
--

INSERT INTO `trunos` (`PK_id`, `periodo`) VALUES
(1, 'Manhã'),
(2, 'Tarde');

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `serie` int(11) DEFAULT NULL,
  `FK_curso_id` int(11) DEFAULT NULL,
  `FK_turno_id` int(11) DEFAULT NULL,
  `PK_turmas_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`serie`, `FK_curso_id`, `FK_turno_id`, `PK_turmas_id`) VALUES
(NULL, NULL, NULL, NULL),
(2, 1, 1, 1),
(3, 1, 2, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
