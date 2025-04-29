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
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `PK_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (PK_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`PK_id`, `nome`) VALUES
(1, 'DS');

-- --------------------------------------------------------

--
-- Estrutura para tabela `projetos`
--

CREATE TABLE `projetos` (
  `PK_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (PK_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `projetos`
--

INSERT INTO `projetos` (`PK_id`, `nome`) VALUES
(1, 'Seguidor de linha'),
(2, 'Maratona de programação');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trunos`
--

CREATE TABLE `turnos` (
  `PK_id` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` varchar(5) DEFAULT NULL,
  PRIMARY KEY(PK_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turnos`
--

INSERT INTO `turnos` (`PK_id`, `periodo`) VALUES
(1, 'Manhã'),
(2, 'Tarde'),
(3, 'Noite');

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `PK_id` int(11) NOT NULL AUTO_INCREMENT,
  `serie` int(11) DEFAULT NULL,
  `FK_curso_id` int(11) DEFAULT NULL,
  `FK_turno_id` int(11) DEFAULT NULL,
  PRIMARY KEY (PK_id),
  FOREIGN KEY (FK_curso_id)REFERENCES cursos(PK_id),
  FOREIGN KEY (FK_turno_id)REFERENCES turnos(PK_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`serie`, `FK_curso_id`, `FK_turno_id`, `PK_id`) VALUES
(2, 1, 1, 1),
(3, 1, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `PK_id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` int(14) NOT NULL,
  `rm` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `FK_turma_id` int(11) DEFAULT NULL,
  `FK_projeto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (PK_id),
  FOREIGN KEY (FK_turma_id)REFERENCES turmas(PK_id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`cpf`, `rm`, `nome`, `FK_turma_id`, `FK_projeto_id`) VALUES
(1234, 8190, 'Adriano', 1, 1),
(9731, 3401, 'Rafael', 2, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
