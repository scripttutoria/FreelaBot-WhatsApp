-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Maio-2023 às 19:37
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bot`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bot`
--

CREATE TABLE `bot` (
  `id` int(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` int(255) NOT NULL,
  `horario` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `id` int(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `cliente1` varchar(255) NOT NULL,
  `bot` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `horario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`id`, `telefone`, `cliente1`, `bot`, `data`, `horario`) VALUES
(100, '+55 86 9955-3178', 'Oi', 'Olá! Seja bem-vindo(a) à Central de Compartilhamento de Trabalhos Remotos Freelancers!\n Vamos começar o seu atendimento.\n Por gentileza, me informe o seu nome completo?', '28/01/2023', '07:36'),
(101, '+55 86 9955-3178', 'Kelvin Patrício de Macêdo Santos', 'Ótimo, envie o seu currículo em PDF!', '28/01/2023', '07:36'),
(102, '+55 86 9955-3178', 'Ótimo, envie o seu currículo em PDF!', 'Aguarde, pois um robô vai analisar seu curriculo e enviaremos trabalhos remotos freelancers de acordo com as suas qualificações!', '28/01/2023', '07:37'),
(103, '+55 86 9955-3178', 'Ótimo ', 'Aguarde, pois um robô vai analisar seu curriculo e enviaremos trabalhos remotos freelancers de acordo com as suas qualificações!', '28/01/2023', '07:37'),
(104, '+55 86 9955-3178', 'Ok', 'Aguarde, pois um robô vai analisar seu curriculo e enviaremos trabalhos remotos freelancers de acordo com as suas qualificações!', '28/01/2023', '07:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `telefone`, `status`) VALUES
(35, '', '+55 86 9955-3178', '3');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bot`
--
ALTER TABLE `bot`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bot`
--
ALTER TABLE `bot`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
