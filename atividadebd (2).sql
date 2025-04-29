-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/04/2025 às 14:30
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
  `PK_id` int(11) NOT NULL,
  `cpf` int(14) NOT NULL,
  `rm` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `FK_turma_id` int(11) DEFAULT NULL,
  `FK_projeto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`PK_id`, `cpf`, `rm`, `nome`, `FK_turma_id`, `FK_projeto_id`) VALUES
(1, 1234, 8190, 'Adriano', 1, 1),
(2, 9731, 3401, 'Rafael', 2, 2),
(3, 1063, 5689, 'João', 3, 7),
(4, 2500, 5020, 'Alice', 3, 5),
(5, 2244, 2903, 'Pedro', 6, 2),
(6, 2673, 7351, 'Laura', 1, 8),
(7, 1623, 5671, 'Gabriel', 5, 1),
(8, 2173, 9992, 'Manuela', 2, 9),
(9, 8173, 2140, 'Matheus', 4, 6),
(10, 9999, 1, 'Isabella', 3, 9),
(11, 8172, 5783, 'Vinícius', 4, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `PK_id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`PK_id`, `nome`) VALUES
(1, 'DS'),
(2, 'MEC'),
(3, 'ELT'),
(4, 'ELN'),
(5, 'ADM');

-- --------------------------------------------------------

--
-- Estrutura para tabela `projetos`
--

CREATE TABLE `projetos` (
  `PK_id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `projetos`
--

INSERT INTO `projetos` (`PK_id`, `nome`) VALUES
(1, 'Seguidor de linha'),
(2, 'Maratona de programação'),
(3, 'Horta Vertical Sustentável'),
(4, 'Podcast Escolar'),
(5, 'Desenvolvimento de App'),
(6, 'Teatro de Sombras'),
(7, 'Robô Sumô'),
(8, 'Jogo de Tabuleiro'),
(9, 'Documentário');

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `PK_id` int(11) NOT NULL,
  `serie` int(11) DEFAULT NULL,
  `FK_curso_id` int(11) DEFAULT NULL,
  `FK_turno_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`PK_id`, `serie`, `FK_curso_id`, `FK_turno_id`) VALUES
(1, 2, 1, 1),
(2, 3, 1, 2),
(3, 1, 2, 3),
(4, 3, 2, 4),
(5, 3, 3, 1),
(6, 2, 5, 3),
(7, 1, 4, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `turnos`
--

CREATE TABLE `turnos` (
  `PK_id` int(11) NOT NULL,
  `periodo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turnos`
--

INSERT INTO `turnos` (`PK_id`, `periodo`) VALUES
(1, 'Manhã'),
(2, 'Tarde'),
(3, 'Noite'),
(4, 'Integ');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`PK_id`),
  ADD KEY `FK_turma_id` (`FK_turma_id`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`PK_id`);

--
-- Índices de tabela `projetos`
--
ALTER TABLE `projetos`
  ADD PRIMARY KEY (`PK_id`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`PK_id`),
  ADD KEY `FK_curso_id` (`FK_curso_id`),
  ADD KEY `FK_turno_id` (`FK_turno_id`);

--
-- Índices de tabela `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`PK_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `PK_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `PK_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `projetos`
--
ALTER TABLE `projetos`
  MODIFY `PK_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `PK_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `turnos`
--
ALTER TABLE `turnos`
  MODIFY `PK_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`FK_turma_id`) REFERENCES `turmas` (`PK_id`);

--
-- Restrições para tabelas `turmas`
--
ALTER TABLE `turmas`
  ADD CONSTRAINT `turmas_ibfk_1` FOREIGN KEY (`FK_curso_id`) REFERENCES `cursos` (`PK_id`),
  ADD CONSTRAINT `turmas_ibfk_2` FOREIGN KEY (`FK_turno_id`) REFERENCES `turnos` (`PK_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
