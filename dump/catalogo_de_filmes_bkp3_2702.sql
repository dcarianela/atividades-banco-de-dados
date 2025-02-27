-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/02/2025 às 13:25
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
-- Banco de dados: `catalogo_de_filmes`
--
CREATE DATABASE IF NOT EXISTS `catalogo_de_filmes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `catalogo_de_filmes`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `detalhes`
--

CREATE TABLE `detalhes` (
  `id` int(11) NOT NULL,
  `duracao` int(11) NOT NULL,
  `sinopse` text NOT NULL,
  `bilheteria` decimal(16,2) DEFAULT NULL,
  `orcamento` decimal(16,2) DEFAULT NULL,
  `filme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `detalhes`
--

INSERT INTO `detalhes` (`id`, `duracao`, `sinopse`, `bilheteria`, `orcamento`, `filme_id`) VALUES
(1, 169, 'Em um futuro em que a Terra está morrendo devido a uma série de desastres ambientais, Cooper (Matthew McConaughey), um ex-piloto da NASA, se junta a uma equipe de cientistas em uma missão para encontrar um novo lar para a humanidade. Usando um buraco de minhoca, eles viajam por diferentes planetas em busca de um novo planeta habitável, enfrentando desafios no espaço e na física do tempo e gravidade.', 677471239.00, 165000000.00, 1),
(2, 181, 'O filme é o encerramento da Saga do Infinito no Universo Cinematográfico Marvel. Após os eventos de Vingadores: Guerra Infinita (2018), onde Thanos exterminou metade da população do universo com o estalar de dedos, os Vingadores sobreviventes se unem para tentar reverter os danos causados. Eles traçam um plano para viajar no tempo, coletar as Joias do Infinito e usar o poder delas para restaurar o que foi perdido. No entanto, o caminho é cheio de obstáculos e sacrifícios, culminando em uma batalha épica contra Thanos.', 2798000000.00, 356000000.00, 3),
(3, 112, 'Invocação do Mal é um filme de terror baseado em eventos reais que segue os famosos investigadores paranormais Ed e Lorraine Warren. O casal é chamado para ajudar uma família que está sendo aterrorizada por forças sobrenaturais em sua casa. Conforme eles investigam, descobrem que a residência está sendo invadida por uma entidade demoníaca, e os Warren devem fazer tudo o que for necessário para proteger a família e conter o mal. O filme é o primeiro de uma série de sucessos baseados nos casos reais dos Warrens.', 319500000.00, 20000000.00, 2),
(4, 123, 'O filme é baseado no romance de Nicholas Sparks e conta a história de um amor épico entre Noah (Ryan Gosling) e Allie (Rachel McAdams). Eles se apaixonam durante um verão na década de 1940, mas, devido a diferenças sociais e à oposição da família de Allie, acabam se separando. Anos depois, Noah e Allie se reencontram, mas ela está noiva de outro homem. A história de amor deles é recontada por Noah para Allie, que agora sofre de Alzheimer, em um esforço para reacender as memórias do passado e restaurar o vínculo que sempre os uniu.', 0.00, 29000000.00, 4),
(5, 132, 'Parasita é uma comédia dramática e suspense que segue a história da família Kim, que vive em uma situação de pobreza extrema. Quando o filho mais velho, Ki-woo, consegue um emprego como tutor de inglês para a filha de uma família rica, os Kims começam a se infiltrar na vida dos Park, sem que eles saibam. Gradualmente, os Kims conseguem arrumar empregos para todos os membros da família na casa dos Park, levando a uma série de eventos inesperados e dramáticos. O filme explora temas de desigualdade social, classe e as tensões entre as diferentes camadas da sociedade, culminando em uma reviravolta surpreendente.', 0.00, 0.00, 5),
(7, 103, 'Jogos Mortais segue a história de dois homens, Adam e Lawrence, que acordam presos em um banheiro sujo e abandonado, com correntes amarradas aos seus tornozelos. Eles logo descobrem que estão sendo observados por um psicopata chamado Jigsaw, que coloca suas vítimas em armadilhas mortais para testar sua vontade de sobreviver. Para escapar, Adam e Lawrence devem resolver enigmas e tomar decisões extremas, enquanto o tempo corre e eles tentam entender a lógica do assassino. O filme mistura mistério, suspense e horror psicológico, com reviravoltas surpreendentes ao longo da trama.', 0.00, 0.00, 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `lancamento` date NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filmes`
--

INSERT INTO `filmes` (`id`, `titulo`, `lancamento`, `genero_id`) VALUES
(1, 'Interestelar', '2014-11-06', 4),
(2, 'Invocação do Mal', '2013-09-13', 1),
(3, 'Vingadores: Ultimato', '2019-04-25', 3),
(4, 'Diário de Uma Paixão', '2004-08-13', 7),
(5, 'Parasita', '2019-05-30', 6),
(7, 'Jogos Mortais\r\n', '2005-02-04', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `generos`
--

INSERT INTO `generos` (`id`, `nome`) VALUES
(1, 'Terror'),
(2, 'Fantasia'),
(3, 'Ação'),
(4, 'Ficção Científica'),
(5, 'Drama'),
(6, 'Suspense'),
(7, 'Romance'),
(8, 'Comédia'),
(9, 'Terror Psicológico');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `detalhes`
--
ALTER TABLE `detalhes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detalhes_filmes` (`filme_id`);

--
-- Índices de tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_filmes_generos` (`genero_id`);

--
-- Índices de tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `detalhes`
--
ALTER TABLE `detalhes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `detalhes`
--
ALTER TABLE `detalhes`
  ADD CONSTRAINT `fk_detalhes_filmes` FOREIGN KEY (`filme_id`) REFERENCES `filmes` (`id`);

--
-- Restrições para tabelas `filmes`
--
ALTER TABLE `filmes`
  ADD CONSTRAINT `fk_filmes_generos` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
