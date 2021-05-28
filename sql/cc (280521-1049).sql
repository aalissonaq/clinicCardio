-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2021 at 01:48 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cc`
--

-- --------------------------------------------------------

--
-- Table structure for table `bancadaexame`
--

CREATE TABLE `bancadaexame` (
  `idBancada` int(10) UNSIGNED NOT NULL,
  `nmBancada` varchar(190) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bancadaexame`
--

INSERT INTO `bancadaexame` (`idBancada`, `nmBancada`) VALUES
(253, 'Animal'),
(246, 'Auto-Imunidade'),
(259, 'Bio - Eletrólitos'),
(258, 'Bio - Glicemias'),
(260, 'Bio - Imunoglobulinas'),
(31, 'BIO - Teste I'),
(30, 'BIO - Teste II'),
(29, 'BIO - Teste III'),
(264, 'Bio - Uro'),
(262, 'Bio-Anemias'),
(261, 'Bio-Imuno'),
(263, 'Bio-Testes Rápidos'),
(269, 'BIOPSIAS'),
(36, 'Bioquimica - Colesterol Total e Frações'),
(255, 'Bioquimica - Função Pancreatica'),
(254, 'Bioquimica - Função Renal'),
(257, 'Bioquimica - Isoenzimas'),
(3, 'Bioquimica I'),
(4, 'Bioquimica II'),
(5, 'Bioquimica III'),
(6, 'Bioquimica IV'),
(242, 'BIOQUIMICA LIQUOR'),
(18, 'Bioquimica V'),
(25, 'Bioquimica VI'),
(26, 'Bioquimica VII'),
(42, 'Bioquimica VIII  - Teste de tolerancia a glicose'),
(34, 'Bioquimica X'),
(256, 'Bioquimica-Função Hepatica'),
(252, 'Bloqueados'),
(274, 'Centrallab'),
(17, 'Citologia'),
(294, 'Coagulação - 01'),
(295, 'Coagulação - 02'),
(296, 'Coagulação - 03'),
(297, 'Coagulação - 04'),
(298, 'Coagulação - 05'),
(20, 'Coprologia'),
(275, 'Curvas'),
(270, 'Diagnóstico do Brasil'),
(284, 'Diagnóstico do Brasil - Autoimunidade'),
(281, 'Diagnóstico do Brasil - Congelados'),
(278, 'Diagnóstico do Brasil - Hormônios'),
(283, 'Diagnóstico do Brasil - Ige'),
(279, 'Diagnóstico do Brasil - Teste do pezinho'),
(282, 'Diagnóstico do Brasil - Urinas'),
(280, 'Diagnóstico do Brasil - Urinas 24h'),
(277, 'Diagnóstico do Brasil - Vitaminas'),
(33, 'Diversas'),
(272, 'DNA - INVESTIGAÇÃO DE PATERNIDADE/MATERNIDADE'),
(288, 'GENE'),
(299, 'Glicemia - 01'),
(300, 'Glicemia - 02'),
(301, 'Glicemia - 03'),
(302, 'Glicemia - 04'),
(303, 'Glicemia - 05'),
(244, 'Hemato-Coagulação'),
(250, 'Hemato-Imuno'),
(28, 'Hematologia'),
(2, 'Hematologia (INATIVO)'),
(289, 'Hematologia - 01'),
(290, 'Hematologia - 02'),
(291, 'Hematologia - 03'),
(292, 'Hematologia - 04'),
(293, 'Hematologia - 05'),
(1, 'Hematologia - Hemograma'),
(245, 'Hermes Pardini'),
(7, 'Hormonios'),
(266, 'Hormônios - Função Pancreática'),
(265, 'Hormônios - Função Tireoidiana'),
(27, 'HORMONIOS I'),
(38, 'HORMONIOS II'),
(39, 'HORMONIOS III'),
(268, 'Hormônios Sexuais'),
(248, 'Ige Específico'),
(249, 'Imuno-Hepatites'),
(247, 'Imuno-Hormônios'),
(251, 'Imuno-Marcadores'),
(8, 'Imunologia'),
(287, 'Imunotch'),
(19, 'Lab. Apoio'),
(16, 'Liquidos Corporais'),
(304, 'Medicação'),
(10, 'Microbiologia'),
(41, 'Microbiologia I'),
(286, 'N.A'),
(11, 'Parasitologia'),
(32, 'Teste IV'),
(273, 'Toxicológicos'),
(21, 'Uranálise'),
(12, 'Uranalise I'),
(13, 'Uranalise II'),
(14, 'Uranalise III'),
(243, 'Urina de 24 horas'),
(15, 'Urina Rotina'),
(9, 'Virologia');

-- --------------------------------------------------------

--
-- Table structure for table `convenios`
--

CREATE TABLE `convenios` (
  `idConvenio` int(11) NOT NULL,
  `RazaoSocialConvenio` varchar(200) NOT NULL DEFAULT '0',
  `nmFantasiaConvenio` varchar(200) NOT NULL DEFAULT '0',
  `nnCepConvenio` varchar(20) NOT NULL DEFAULT '0',
  `strLogradouroConvenio` varchar(200) NOT NULL DEFAULT '0',
  `strComplementoConvenio` varchar(200) DEFAULT 'Não Informado',
  `srtBairroConvenio` varchar(200) NOT NULL DEFAULT '0',
  `srtCidadeConvenio` varchar(200) NOT NULL DEFAULT '0',
  `srtEstadoConvenio` varchar(200) NOT NULL DEFAULT '0',
  `srtTipoConvenio` varchar(200) NOT NULL DEFAULT '0',
  `nnCnpjConvenio` varchar(20) NOT NULL DEFAULT '0',
  `nnIncricaoConvenio` varchar(50) NOT NULL DEFAULT '0',
  `contatoConvenio` varchar(200) NOT NULL DEFAULT '0',
  `nnTelefoneConvenio` varchar(50) NOT NULL DEFAULT '0',
  `srtEmailConvenio` varchar(200) NOT NULL DEFAULT '0',
  `instAtendimentoConvenio` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `despesa`
--

CREATE TABLE `despesa` (
  `idDespesa` int(11) NOT NULL,
  `descricaoDespesa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vlDespesa` decimal(12,2) DEFAULT NULL,
  `tipoDespesa` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusDespesa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dtVencimentoDispesa` varchar(20) NOT NULL,
  `dtPagamentoDispesa` varchar(20) DEFAULT NULL,
  `idRespCadastroDispesa` int(11) NOT NULL,
  `cadastroDespesa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtVenvimento` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `despesa`
--

INSERT INTO `despesa` (`idDespesa`, `descricaoDespesa`, `vlDespesa`, `tipoDespesa`, `statusDespesa`, `dtVencimentoDispesa`, `dtPagamentoDispesa`, `idRespCadastroDispesa`, `cadastroDespesa`, `dtVenvimento`) VALUES
(1, 'despesa 01', '10.20', 'alimentação ', 'pago', '', NULL, 0, '2021-05-25 07:03:45', NULL),
(2, 'PAGAMENTO 01', '1234567.89', 'SERVIçOS', 'PAGO', '', NULL, 0, '2021-05-27 07:45:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exames`
--

CREATE TABLE `exames` (
  `idExame` int(11) NOT NULL,
  `codigoexame` varchar(50) NOT NULL DEFAULT '0',
  `exame` varchar(191) NOT NULL DEFAULT '0',
  `sinonimos` varchar(191) NOT NULL DEFAULT '0',
  `material` varchar(191) NOT NULL DEFAULT '0',
  `interpretacaoexame` longtext,
  `metodoexame` varchar(191) NOT NULL DEFAULT '0',
  `parametroexame` varchar(191) NOT NULL DEFAULT '0',
  `valorReferenciaExame` varchar(191) NOT NULL DEFAULT '0',
  `instrucoesPreparoExame` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exames`
--

INSERT INTO `exames` (`idExame`, `codigoexame`, `exame`, `sinonimos`, `material`, `interpretacaoexame`, `metodoexame`, `parametroexame`, `valorReferenciaExame`, `instrucoesPreparoExame`) VALUES
(1, 'FE', 'FERRO SéRICO', 'CBHPM - 40301842', 'SORO', '<P>O FERRO PARTICIPA NUMA VARIEDADE DE PROCESSOS VITAIS NO ORGANISMO, DESDE OS MECANISMOS DE OXIDAçãO CELULAR AO TRANSPORTE E ALIMENTAçãO DE OXIGêNIO PARA AS CéLULAS DO ORGANISMO.</P><P>é UM ELEMENTO&NBSP; CONSTITUINTES DAS CROMOPROTEíNAS ....</P>', '<P>COLORIMéTRICO</P>', 'FERRO SERICO', '<P>RECéM-NASCIDO......................................... 100 A 250 UG/DL<BR>CRIANçA COM MENOS DE 7 ANOS:................ 40 A 100 UG/DL</P>', 'JEJUM');

-- --------------------------------------------------------

--
-- Table structure for table `exemesac`
--

CREATE TABLE `exemesac` (
  `idExamesac` int(10) UNSIGNED NOT NULL,
  `idBancada` int(10) UNSIGNED DEFAULT '0',
  `identifexameac` varchar(100) NOT NULL DEFAULT '0',
  `descricaoexameac` varchar(190) NOT NULL DEFAULT '0',
  `tuboexameac` varchar(190) NOT NULL DEFAULT '0',
  `materialexameac` varchar(190) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exemesac`
--

INSERT INTO `exemesac` (`idExamesac`, `idBancada`, `identifexameac`, `descricaoexameac`, `tuboexameac`, `materialexameac`) VALUES
(2, 0, 'V-U', 'UREIA - VETERINARIO', 'Soro BQ - 02', 'Sangue'),
(3, 0, 'CAL', 'CÁLCIO', 'Soro BQ - 02', 'Soro'),
(4, 0, 'CAION', 'CÁLCIO IÔNICO', 'Soro BQ - 02', 'Soro'),
(5, 0, 'CLO', 'CLORETOS', 'Soro BQ - 02', 'Soro'),
(6, 0, 'FOS', 'FÓSFORO', 'Soro BQ - 02', 'Soro'),
(7, 0, 'MAG', 'MAGNESIO', 'Soro BQ - 02', 'Soro'),
(8, 0, 'POT.DIVERS', 'POTÁSSIO', 'Soro BQ - 02', 'Diversos'),
(9, 0, 'POT', 'POTÁSSIO', 'Soro BQ - 02', 'Soro'),
(10, 0, 'SOD', 'SÓDIO', 'Soro BQ - 02', 'Soro'),
(11, 0, 'ZINCO', 'ZINCO SÉRICO', 'Soro metais terceirizado - 75', 'Soro'),
(12, 0, 'CG5D', 'CURVA GLICÊMICA CLASSICA', 'Plasma fluoretado - 64', 'Sangue'),
(13, 0, 'GLI1CAFE', 'GLICEMIA 1 HORA APOS CAFE', 'Soro BQ - 02', 'Plasma fluoretado'),
(14, 0, 'GLI1ALMOCO', 'GLICEMIA 1 HORA APOS O ALMOÇO', 'Plasma fluoretado', 'Plasma fluoretado'),
(15, 0, 'GLI1JANT', 'GLICEMIA 1 HORAS APOS O JANTAR', 'Soro BQ - 02', 'Plasma fluoretado'),
(16, 0, 'GLI2ALMOC', 'GLICEMIA 2 HORAS APOS ALMOÇO', 'Plasma fluoretado', 'Plasma fluoretado'),
(17, 0, 'GLI2CAFE', 'GLICEMIA 2 HORAS APÓS O CAFÉ', 'Plasma fluoretado', 'Plasma fluoretado'),
(18, 0, 'GLI2JANT', 'GLICEMIA 2 HORAS APOS O JANTAR', 'Plasma fluoretado', 'Plasma fluoretado'),
(19, 0, 'GLI.DIVER', 'GLICOSE', 'Diversos - 14', 'Diversos'),
(20, 0, 'GLI.LIQPLE', 'GLICOSE', 'Líquido pleural - 235', 'Líquido pleural'),
(21, 0, 'G2D', 'GLICOSE  (2 HORAS APÓS DEXTROSOL)', 'Soro terceirizado - 28', 'Plasma fluoretado'),
(22, 0, 'G3D', 'GLICOSE ( 3 HORAS APÓS )', 'Soro BQ - 30', 'Sangue'),
(23, 0, 'G1D', 'GLICOSE (1 HORA APÓS DEXTROSOL)', 'Soro - 29', 'Plasma fluoretado'),
(24, 0, 'GLIFLUOR', 'GLICOSE DE JEJUM', 'Plasma fluor - 67', 'Soro ou plasma fluoretado'),
(25, 0, 'GLI', 'GLICOSE DE JEJUM', 'Soro BQ - 02', 'Soro ou plasma fluoretado'),
(26, 0, 'HGT', 'GLICOSE DE JEJUM', 'Soro BQ - 02', 'Sangue Total'),
(27, 0, 'GLP', 'GLICOSE PÓS PRANDIAL', 'Plasma fluoretado - 52', 'Plasma fluoretado'),
(28, 0, 'GLITARDE', 'GLICOSE SEM JEJUM', 'Soro BQ - 02', 'Soro ou plasma fluoretado'),
(29, 0, 'HGF D-10', 'HEMOGLOBINA GLICOSILADA (HBA1C)', 'Sangue Total (EDTA) 134', 'Sangue total (EDTA)'),
(30, 0, 'HOMABETA', 'INSULINA HOMA - Índice de HOMA: IR e Beta', 'Soro BQ - 02', 'Soro'),
(31, 0, 'LACTOSE', 'LACTOSE TESTE DE TOLERÂNCIA PADRÃO', 'Plasma fluoretado - 52', 'Sangue'),
(32, 0, 'TTGO', 'TESTE DE TOLERÂNCIA À GLICOSE ORAL', 'Plasma fluoretado - 52', 'Sangue'),
(33, 0, 'LACT120', 'TESTE DE TOLERÂNCIA À LACTOSE  - 120 minutos', 'Plasma fluoretado - 52', 'Plasma fluoretado'),
(34, 0, 'LACT.15', 'TESTE DE TOLERÂNCIA À LACTOSE  - 15 minutos', 'Plasma fluoretado - 58', 'Plasma fluoretado'),
(35, 0, 'LACT.30', 'TESTE DE TOLERÂNCIA À LACTOSE  - 30 minutos', 'Plasma fluoretado - 58', 'Plasma fluoretado'),
(36, 0, 'LACT.45', 'TESTE DE TOLERÂNCIA À LACTOSE  - 45 minutos', 'Plasma fluoretado - 58', 'Plasma fluoretado'),
(37, 0, 'LACT.60', 'TESTE DE TOLERÂNCIA À LACTOSE  - 60 minutos', 'Plasma fluoretado - 59', 'Plasma fluoretado'),
(38, 0, 'LACT.90', 'TESTE DE TOLERÂNCIA À LACTOSE  - 90 minutos', 'Plasma fluoretado - 52', 'Plasma fluoretado'),
(39, 0, 'LACT.0', 'TESTE DE TOLERÂNCIA À LACTOSE  - BASAL', 'Plasma fluoretado - 52', 'Plasma fluoretado'),
(40, 0, 'C3TQ', 'COMPLEMENTO C3', 'Soro BQ - 02', 'Soro'),
(41, 0, 'C4TQ', 'COMPLEMENTO C4', 'Soro BQ - 02', 'Soro'),
(42, 0, 'IGG', 'IMUNOGLOBULINA IgG', 'Soro BQ - 02', 'Soro'),
(43, 0, 'IGMDOSA', 'IMUNOGLOBULINA IGM', 'Soro BQ - 02', 'Soro'),
(44, 0, 'IGADOS', 'IMUNOGLOBULINAS IgA', 'Soro BQ - 02', 'Soro'),
(45, 0, 'AUR.RECENT', 'ÁCIDO ÚRICO URINÁRIO', 'Urina Recente Bioquímica - 63', 'Urina recente'),
(46, 0, 'AMIL24H', 'AMILASE URINÁRIA', 'Urina 24h com HCL- 24', 'Urina 24h'),
(47, 0, 'CAL.RECENT', 'CALCIO URINÁRIO', 'Urina recente - 07', 'Urina recente'),
(48, 0, 'CAL24H', 'CÁLCIO URINÁRIO', 'Urina 24h Sem conservante - 81', 'Urina 24h'),
(49, 0, 'CCR.URI', 'CLEARANCE DE CREATININA', 'Urina 24h com HCL- 24', 'Urina de 24h + Soro'),
(50, 0, 'CREAURINA', 'CREATININA URINARIA', 'Urina Recente Bioquímica - 63', 'Urina recente'),
(51, 0, 'MIC24H', 'MICROALBUMINURIA', 'Urina 24h Sem conservante - 81', 'Urina 24h'),
(52, 0, 'MICRORECT', 'MICROALBUMINURIA - URINA RECENTE', 'Urina Recente Bioquímica - 63', 'Urina recente'),
(53, 0, 'PROT24H.', 'PROTEINA URINÁRIA - 24 HORAS', 'Urina 24h Sem conservante - 81', 'Urina 24h'),
(54, 0, 'PROT.ASC', 'PROTEÍNAS TOTAIS (LÍQUIDO ASCÍTICO)', 'Líquido ascístico - 46', 'Líquido ascítico'),
(55, 0, 'PROT.SIN', 'PROTEÍNAS TOTAIS (LÍQUIDO SINOVIAL)', 'Líquido sinovial - 43', 'Líquido sinovial'),
(56, 0, 'PROT.UR', 'PROTEINURIA', 'Urina Recente Bioquímica - 63', 'Urina recente'),
(57, 0, 'PROT12H', 'PROTEINÚRIA', 'Urina 12h - 39', 'Urina 12h'),
(58, 0, 'RAZAOP/CRE', 'RAZÃO PROTEÍNA/CREATININA', 'Urina Recente Bioquímica - 63', 'Urina recente'),
(59, 0, 'UREIA.RECT', 'UREIA', 'Urina Recente Bioquímica - 63', 'Urina recente'),
(60, 0, 'UREIA24H', 'URÉIA URINÁRIA', 'Urina 24h Sem conservante - 81', 'Urina 24h'),
(61, 0, 'TIBC', 'CAPACIDADE TOTAL DE LIGAÇÃO DO FERRO', 'Soro BQ - 02', 'Soro'),
(62, 0, 'FER', 'FERRO', 'Soro BQ - 02', 'Soro'),
(63, 0, 'SATIST', 'INDÍCE DE SATURACAO DA TRANSFERRINA', 'Soro BQ - 02', 'Sangue'),
(64, 0, 'TRF', 'TRANSFERRINA', 'Soro BQ - 02', 'Soro'),
(65, 0, 'MUCO', 'ALFA-1-GLICOPROTEINA ÁCIDA', 'Soro BQ - 02', 'Soro'),
(66, 0, 'ASO', 'ANTIESTREPTOLISINA \"O\"', 'Soro BQ - 30', 'Soro'),
(67, 0, 'LAT', 'FATOR REUMATOIDE', 'Soro BQ - 30', 'Soro'),
(68, 0, 'PCR', 'PROTEÍNA C-REATIVA', 'Soro BQ - 30', 'Soro'),
(69, 0, 'WAL', 'WAALER ROSE (FATOR REUMATÓIDE)', 'Soro BQ - 02', 'Soro'),
(70, 0, 'COL', 'COLESTEROL', 'Soro BQ - 02', 'Soro'),
(71, 0, 'HDL', 'COLESTEROL HDL', 'Soro BQ - 02', 'Soro'),
(72, 0, 'LDL', 'COLESTEROL LDL', 'Soro BQ - 02', 'Soro'),
(73, 0, 'COLTF', 'COLESTEROL TOTAL E FRAÇÕES', 'Soro BQ - 02', 'Soro'),
(74, 0, 'MARTIN', 'COLESTEROL TOTAL E FRAÇÕES', 'Soro BQ - 02', 'Soro'),
(75, 0, 'VLD', 'COLESTEROL VLDL', 'Soro BQ - 02', 'Soro'),
(76, 0, 'LPTT', 'LIPIDIOS TOTAIS', 'Soro BQ - 02', 'Soro'),
(77, 0, 'TRI', 'TRIGLICERÍDEOS', 'Soro BQ - 02', 'Soro'),
(78, 0, 'AMI', 'AMILASE', 'Soro BQ - 02', 'Soro'),
(79, 0, 'LIP', 'LIPASE', 'Soro BQ - 02', 'Soro'),
(80, 0, 'AUR', 'ÁCIDO ÚRICO', 'Soro BQ - 02', 'Soro'),
(81, 0, 'CREAT', 'CREATININA', 'Soro BQ - 02', 'Soro'),
(82, 0, 'GLB', 'GLOBULINA', 'Soro BQ - 02', 'Soro'),
(83, 0, 'PROT', 'PROTEÍNAS TOTAIS', 'Soro BQ - 02', 'Soro'),
(84, 0, 'PROT.PLEU', 'PROTEÍNAS TOTAIS  (LÍQUIDO PLEURAL)', 'Líquido pleural - 235', 'Líquido pleural'),
(85, 0, 'URE', 'URÉIA', 'Soro BQ - 02', 'Soro'),
(86, 0, 'CKMB', 'CKMB', 'Soro BQ - 02', 'Soro'),
(87, 0, 'CKNAC', 'CK-NAC (CREATINA QUINASE TOTAL- CK)', 'Soro BQ - 02', 'Soro'),
(88, 0, 'LDH.PLEUR', 'DESIDROGENASE LACTICA  ( LIQUIDO PLEURAL )', 'Líquido pleural - 235', 'Líquido pleural'),
(89, 0, 'LDH.ASC', 'DESIDROGENASE LACTICA ( LIQUIDO ASCITICO )', 'Líquido ascístico - 46', 'Líquido ascítico'),
(90, 0, 'DHL/LDH LB', 'DESIDROGENASE LÁTICA', 'Soro BQ - 02', 'Soro'),
(91, 0, 'ALB.LIQASC', 'ALBUMINA', 'Líquido ascístico - 46', 'Líquido ascítico'),
(92, 0, 'ALB.LIQPLE', 'ALBUMINA', 'Líquido pleural - 235', 'Líquido pleural'),
(93, 0, 'LIQ.ALB', 'ALBUMINA - LÍQUOR', 'Líquor - 19', 'Líquor'),
(94, 0, 'AMI.LIQASC', 'AMILASE', 'Líquido ascístico - 46', 'Líquido ascítico'),
(95, 0, 'AMIL.DIVE', 'AMILASE', 'Diversos - 14', 'Diversos'),
(96, 0, 'CLO.DIVERS', 'CLORETOS', 'Diversos - 14', 'Diversos'),
(97, 0, 'LDH.DIVER', 'DESIDROGENASE LACTICA', 'Diversos - 14', 'Diversos'),
(98, 0, 'GLI.LIQ', 'GLICOSE', 'Líquor - 19', 'Líquor'),
(99, 0, 'PROT.LIQ', 'PROTEÍNAS TOTAIS', 'Líquor - 19', 'Líquor'),
(100, 0, 'SODIO.DIVE', 'SÓDIO', 'Soro BQ - 02', 'Diversos'),
(101, 0, 'ALBUM', 'ALBUMINA', 'Soro BQ - 02', 'Soro'),
(102, 0, 'BILI', 'BILIRRUBINA TOTAL E FRAÇOES', 'Soro BQ - 02', 'Soro'),
(103, 0, 'FAL', 'FOSFATASE ALCALINA', 'Soro BQ - 02', 'Soro'),
(104, 0, 'GGT', 'GAMA GLUTAMIL TRANSFERASE (GGT)', 'Soro BQ - 02', 'Soro'),
(105, 0, 'PTF', 'PROTEINAS TOTAIS E FRAÇÕES', 'Soro BQ - 02', 'Soro'),
(106, 0, 'PTF.DIVER', 'PROTEINAS TOTAIS E FRAÇÕES', 'Diversos - 14', 'Diversos'),
(107, 0, 'TGO', 'TRANSAMINASE OXALACÉTICA (AST)', 'Soro BQ - 02', 'Soro'),
(108, 0, 'TGP', 'TRANSAMINASE PIRÚVICA (ALT)', 'Soro BQ - 02', 'Soro'),
(109, 0, 'CHIK IGG/M', 'CHIKUNGUNYA IgG/ IgM', 'Soro BQ - 30', 'Soro'),
(110, 0, 'CHIKUN IGM', 'CHIKUNGUNYA IgM', 'Soro BQ - 30', 'Soro'),
(111, 0, 'DENGUE', 'DENGUE IgG/IgM', 'Soro BQ - 30', 'Soro'),
(112, 0, 'DENM', 'DENGUE IgM', 'Soro BQ - 30', 'Soro'),
(113, 0, 'DENS1', 'DENGUE, ANTIGENO NS1 Ag', 'Soro BQ - 30', 'Soro'),
(114, 0, 'TROPOI', 'TROPONINA I', 'Soro BQ - 30', 'Soro'),
(115, 0, 'PARIETAL', 'ANTICORPOS ANTI-CÉLULAS PARIETAIS', 'Soro terceirizado - 28', 'Soro'),
(116, 0, 'CURV.HGH', 'CURVA DE HGH', 'Soro tercerizado - 66', 'Soro'),
(117, 0, 'HGHCURVA', 'CURVA DE HGH', '', 'Sangue'),
(118, 0, 'EXD', 'EXAME DIRETO', 'Diversos - 14', 'Diversos'),
(119, 0, 'MOSQUI', 'IGE PARA MOSQUITO - CULEX PIPIENS NÃO ENCONTRADO', 'Imunologia - 49', 'Sangue'),
(120, 0, 'RESULTA', 'RESULTADO', 'Diversos - 14', 'Diversos'),
(121, 0, 'SMM', 'SM, AUTO ANTICORPOS ANTI', 'Imunologia - 49', 'Soro'),
(122, 0, 'LIQ.VDRL', 'VDRL- REAÇÃO', 'Líquor - 19', 'Líquor'),
(123, 0, 'FERROLIVRE', 'CAPACIDADE LIVRE DE COMBINAÇÃO DO FERRO', 'Soro BQ - 02', 'Soro'),
(124, 0, 'IGEF105.CE', 'IGE ESPECÍFICO PARA ALIMENTOS  - CHOCOLATE (F105)', 'Soro tercerizado - 66', 'Soro'),
(125, 0, 'IGEC6.CENT', 'IGE ESPECÍFICO PARA DROGAS - AMOXILINA (C6)', 'Soro tercerizado - 66', 'Soro'),
(126, 0, 'CD3.CENTRA', 'LINFÓCITOS T CD3', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(127, 0, 'PANDY.CENT', 'PANDY NONNE', 'Líquor - 19', 'Líquor'),
(128, 0, 'PI.CENTRAL', 'PERMEABILIDADE INTESTINAL', 'Urina recente - 07', 'Urina recente'),
(129, 0, 'SUBIGG.CEN', 'SUBCLASSES DE IgG (IgG1, IgG2, IgG3, IgG4)', 'Soro tercerizado - 66', 'Soro'),
(130, 0, 'TIREO.CENT', 'TIREOGLOBULINA', 'Soro tercerizado - 66', 'Soro'),
(131, 0, 'TIREO.DIVE', 'TIREOGLOBULINA', 'Soro tercerizado - 66', ''),
(132, 0, 'TROPI.CENT', 'TROPONINA CARDÍACA - I', 'Soro tercerizado - 66', 'Soro'),
(133, 0, 'CUR.HGH', 'CURVA DE HGH', 'Imuno-Hormônios - 50', 'Soro'),
(134, 0, 'CURV.FSH6', 'CURVA DE HORMÔNIO FOLÍCULO ESTIMULANTE - FSH', 'Imuno-Hormônios - 50', 'Soro'),
(135, 0, 'CURV.FSH', 'CURVA DE HORMÔNIO FOLÍCULO ESTIMULANTE - FSH', 'Imuno-Hormônios - 50', 'Soro'),
(136, 0, 'CURV.LH', 'CURVA DE HORMÔNIO LUTEINIZANTE - LH', 'Imuno-Hormônios - 50', 'Soro'),
(137, 0, 'CURV.LH6', 'CURVA DE HORMÔNIO LUTEINIZANTE - LH', 'Imuno-Hormônios - 50', 'Soro'),
(138, 0, 'INS', 'CURVA DE INSULINA', 'Imuno-Hormônios - 50', 'Soro'),
(139, 0, 'CURV.TESTO', 'CURVA DE TESTOSTERONA', 'Imuno-Hormônios - 50', 'Soro'),
(140, 0, 'VIT125.DB', '1,25 DIHIDROXI VITAMINA D', 'Soro tercerizado - 66', 'Soro'),
(141, 0, '5NUC.DB', '5\' NUCLEOTIDASE', 'Soro tercerizado - 66', 'Soro'),
(142, 0, 'ACERI.DB', 'ACETILCOLINESTERASE ERITROCITÁRIA', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(143, 0, 'ACLAT.DB', 'ÁCIDO LÁTICO - LACTATO', 'Plasma fluoreto terceir - 103', 'Plasma fluoretado'),
(144, 0, 'ACLALI.DB', 'ÁCIDO LÁTICO EM LÍQUIDOS', 'Diversos - 14', 'Diversos'),
(145, 0, 'ACLAS', 'ÁCIDO LÁTICO PÓS ESFORÇO', 'Plasma fluoreto terceir - 103', 'Plasma fluoretado'),
(146, 0, 'PIRUV.DB', 'ACIDO PIRUVICO - PIRUVATO', 'Sangue total (citrato) - 04', 'Plasma Congelado'),
(147, 0, 'VAL.DB', 'ACIDO VALPRÓICO', 'Soro tercerizado - 66', 'Soro'),
(148, 0, 'ACGXL.DB', 'ACIDOS GRAXOS DE CADEIA MUITO LONGA', 'Soro terceirizado - 28', 'Soro'),
(149, 0, 'ACORG.DB', 'ÁCIDOS ORGÂNICOS - QUALITATIVO', 'Urina recente terceir - 104', 'Urina'),
(150, 0, 'ADALQ.DB', 'ADENOSINA DEAMINASE', 'Líquor - 19', 'Líquor'),
(151, 0, 'ADA.DB', 'ADENOSINA DEAMINASE', 'Soro tercerizado - 66', 'Soro'),
(152, 0, 'ADALP.DB', 'ADENOSINA DEAMINASE ADA - LÍQUIDO PLEURAL', 'Líquido pleural - 235', 'Líquido pleural'),
(153, 0, 'ADENF.DB', 'ADENOVÍRUS - PESQUISA', 'Fezes terceirizado - 99', 'Fezes'),
(154, 0, 'ALDOL.DB', 'ALDOLASE', 'Soro tercerizado - 66', 'Soro'),
(155, 0, 'ALDOS.DB', 'ALDOSTERONA', 'Soro tercerizado - 66', 'Soro'),
(156, 0, 'A1A.DB', 'ALFA 1 ANTITRIPSINA', 'Soro terceirizado - 28', 'Soro'),
(157, 0, 'AGAL.DB', 'ALFA GALACTOSIDASE A', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(158, 0, 'A1AF.DB', 'ALFA-1-ANTITRIPSINA FECAL', 'Fezes terceirizado - 99', 'Fezes'),
(159, 0, 'ALU.DB', 'ALUMINIO SÉRICO', 'Soro metais terceirizado - 75', 'Soro'),
(160, 0, 'AMICRO.PEZ', 'AMINOACIDOPATIAS (CROMATOGRAFIA DE AMINOACIDOS)', 'Papel filtro - 55', 'Sangue capilar'),
(161, 0, 'AACQT.DB', 'AMINOÁCIDOS FRACIONADOS - DETERMINAÇÃO QUANTITATIVA', 'Urina recente terceir - 104', 'Urina'),
(162, 0, 'AMPC.DB', 'AMP CÍCLICO - URINA 24 HORAS', 'Urina 24h terceirizado - 105', 'Urina 24h congelada'),
(163, 0, 'ANDROS.DB', 'ANDROSTENEDIONA', 'Soro tercerizado - 66', 'Soro'),
(164, 0, 'GLIADA.DB', 'ANTI- GLIADINA IgA', 'Soro tercerizado - 66', 'Soro'),
(165, 0, 'GLIADG.DB', 'ANTI GLIADINA IgG', 'Soro tercerizado - 66', 'Soro'),
(166, 0, 'AGLM.DB', 'ANTI GLIADINA IGM', 'Soro tercerizado - 66', 'Soro'),
(167, 0, 'CARDIGA.DB', 'ANTI-CARDIOLIPINA IgA', 'Soro tercerizado - 66', 'Soro'),
(168, 0, 'CARDIGG.DB', 'ANTI-CARDIOLIPINA IgG', 'Soro tercerizado - 66', 'Soro'),
(169, 0, 'CARDIGM.DB', 'ANTI-CARDIOLIPINA IgM', 'Soro tercerizado - 66', 'Soro'),
(170, 0, 'ACETI.DB', 'ANTICORPO ANTI-RECEPTOR DE ACETILCOLINA', 'Soro tercerizado - 66', 'Soro'),
(171, 0, 'AMUSL.DB', 'ANTICORPOS  ANTI MUSCULO LISO', 'Soro tercerizado - 66', 'Soro'),
(172, 0, 'FATINTR.DB', 'ANTICORPOS ANTI - FATOR INTRINSECO', 'Soro tercerizado - 66', 'Soro'),
(173, 0, 'IA2', 'ANTICORPOS ANTI - IA2 (DIABETES MELLITUS)', 'Soro tercerizado - 66', 'Soro'),
(174, 0, 'AINS.DB', 'ANTICORPOS ANTI - INSULINA', 'Soro tercerizado - 66', 'Soro'),
(175, 0, 'MIT2.DB', 'ANTICORPOS ANTI - MITOCÔNDRIA M2', 'Soro tercerizado - 66', 'Soro congelado'),
(176, 0, 'CHIKUNGUNY', 'ANTICORPOS ANTI CHIKUNGUNYA IGG E IGM', 'Soro tercerizado - 66', 'Soro'),
(177, 0, 'IGGCM.DB', 'ANTICORPOS ANTI CITOMEGALOVIRUS IGG', 'Soro tercerizado - 66', 'Soro'),
(178, 0, 'IGMCM.DB', 'ANTICORPOS ANTI CITOMEGALOVIRUS IGM', 'Soro tercerizado - 66', 'Soro'),
(179, 0, 'ASREN.DB', 'ANTICORPOS ANTI CORTEX ADRENA', 'Soro tercerizado - 66', 'Soro'),
(180, 0, 'HIST.DB', 'ANTICORPOS ANTI HISTOPLASMA CAPSULATUM', 'Soro terceirizado - 28', 'Soro'),
(181, 0, 'HTLVI.DB', 'ANTICORPOS ANTI HTLV I+II', 'Líquor - 19', 'Líquor'),
(182, 0, 'AAINS.DB', 'ANTICORPOS ANTI INSULINA', 'Soro tercerizado - 66', 'Sangue'),
(183, 0, 'MPO.DB', 'ANTICORPOS ANTI MIELOPEROXIDASE', 'Soro tercerizado - 66', 'Soro'),
(184, 0, 'AMITO.DB', 'ANTICORPOS ANTI MITOCONDRIA', 'Soro tercerizado - 66', 'Soro'),
(185, 0, 'APM1.DB', 'ANTICORPOS ANTI PM/SCL (PM-1)', 'Tubo seco - 138', 'Soro'),
(186, 0, 'PNEUG.DB', 'ANTICORPOS ANTI PNEUMOCOCOS IGG', 'Soro tercerizado - 66', 'Soro'),
(187, 0, 'APR3.DB', 'ANTICORPOS ANTI PROTEINASE 3', 'Soro tercerizado - 66', 'Soro'),
(188, 0, 'AURIB.DB', 'ANTICORPOS ANTI RIBOSSOMAS', 'Soro tercerizado - 66', 'Soro'),
(189, 0, 'ARNAPI.DB', 'ANTICORPOS ANTI RNA POLIMERASE I', 'Soro tercerizado - 66', 'Soro'),
(190, 0, 'AMUSK.DB', 'ANTICORPOS ANTI TIROQUINASE MÚSCULO ESPECÍFICA (ANTI-MUSK)', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(191, 0, 'AACTI.DB', 'ANTICORPOS ANTI-ACTINA', 'Soro tercerizado - 66', 'Soro'),
(192, 0, 'PARIETA.DB', 'ANTICORPOS ANTI-CÉLULAS PARIETAIS', 'Soro tercerizado - 66', 'Soro'),
(193, 0, 'CENTRO.DB', 'ANTICORPOS ANTI-CENTRÔMERO', 'Soro tercerizado - 66', 'Soro'),
(194, 0, 'PANCA.DB', 'ANTICORPOS ANTI-CITOPLASMA DE NEUTRÓFILOS C E P', 'Soro tercerizado - 66', 'Soro'),
(195, 0, 'FOSFATI.DB', 'ANTICORPOS ANTI-FOSFATIDILSERINA  (IgM, IgG e IgA)', 'Soro tercerizado - 66', 'Soro'),
(196, 0, 'GAD.DB', 'ANTICORPOS ANTI-GAD', 'Soro tercerizado - 66', 'Soro'),
(197, 0, 'HIVWB.DB', 'ANTICORPOS ANTI-HIV  (WESTERN BLOT)', 'Soro tercerizado - 66', 'Soro'),
(198, 0, 'AILHO.DB', 'ANTICORPOS ANTI-ILHOTA', 'Soro tercerizado - 66', 'Soro'),
(199, 0, 'MIT12.BD', 'ANTICORPOS ANTI-MI - MI-1 / MI-2', 'Soro tercerizado - 66', 'Soro'),
(200, 0, 'AAPLA.DB', 'ANTICORPOS ANTI-PLAQUETAS - IGG,IGM', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(201, 0, 'AACOL.DB', 'ANTICORPOS COCLEARES P-68', 'Soro tercerizado - 66', 'Soro'),
(202, 0, 'B2GLA.DB', 'ANTICORPOS IGA ANTI BETA2 GLICOPROTEÍNA 1', 'Soro tercerizado - 66', 'Soro'),
(203, 0, 'GIAIG.DB', 'ANTICORPOS IGG ANTI - GIARDIA LAMBLIA', 'Soro tercerizado - 66', 'Soro'),
(204, 0, 'ANEXG.DB', 'ANTICORPOS IGG ANTI ANEXINA', 'Soro tercerizado - 66', 'Soro'),
(205, 0, 'AQUA4.DB', 'ANTICORPOS IGG ANTI AQUAPORINA 4', 'Soro tercerizado - 66', 'Soro'),
(206, 0, 'BORRG.DB', 'ANTICORPOS IGG ANTI BORRELIA BURGDORFERI', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(207, 0, 'COXSB.DB', 'ANTICORPOS IGG ANTI COXSACKIE B[1-6]', 'Soro tercerizado - 66', 'Soro'),
(208, 0, 'EHISG.DB', 'ANTICORPOS IGG ANTI ENTAMOEBA HISTOLYTICA', 'Soro tercerizado - 66', 'Soro'),
(209, 0, 'GANGG.DB', 'ANTICORPOS IGG ANTI GANGLIOSÍDEOS', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(210, 0, 'AGANG.DB', 'ANTICORPOS IGG ANTI GANGLIOSÍDEOS - GM1', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(211, 0, 'HPVG.DB', 'ANTICORPOS IgG ANTI PAPILOMA HUMANO', 'Soro tercerizado - 66', 'Soro congelado'),
(212, 0, 'ARRG.DB', 'ANTICORPOS IGG ANTI RICKETTSIA RICKETTSII - FEBRE MACULOSA', 'Soro tercerizado - 66', 'Soro'),
(213, 0, 'APN.DB', 'ANTICORPOS IGG ANTI SOROTIPOS DE PNEUMOCOCOS', 'Soro terceirizado - 28', 'Soro'),
(214, 0, 'UREAG.DB', 'ANTICORPOS IGG ANTI UREAPLASMA UREALYTICUM', 'Soro terceirizado - 28', 'Soro'),
(215, 0, 'SINRE.DB', 'ANTICORPOS IGG ANTI VÍRUS SINCICIAL RESPIRATÓRIO (VSR)', 'Soro tercerizado - 66', 'Soro'),
(216, 0, 'AAHU.DB', 'ANTICORPOS IGG ANTI-HU (ANNA 1) - ANTI NEURONAL NUCLEAR', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(217, 0, 'AMAGM.DB', 'ANTICORPOS IGG ANTI-MAG', 'Soro tercerizado - 66', 'Soro congelado'),
(218, 0, 'AMAGG.DB', 'ANTICORPOS IGG ANTI-MAG', 'Soro tercerizado - 66', 'Soro congelado'),
(219, 0, 'COXA.DB', 'ANTICORPOS IGG E IGM ANTI COXSACKIE A9', 'Soro tercerizado - 66', 'Soro'),
(220, 0, 'ANEXM.DB', 'ANTICORPOS IGM ANTI ANEXINA', 'Soro tercerizado - 66', 'Soro'),
(221, 0, 'BORRM.DB', 'ANTICORPOS IGM ANTI BORRELIA BURGDORFERI', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(222, 0, 'EHISM.DB', 'ANTICORPOS IGM ANTI ENTAMOEBA HISTOLYTICA', 'Soro tercerizado - 66', 'Soro'),
(223, 0, 'GANGM.DB', 'ANTICORPOS IGM ANTI GANGLIOSIDEOS', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(224, 0, 'AGANM.DB', 'ANTICORPOS IGM ANTI GANGLIOSÍDEOS - GM1', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(225, 0, 'GIAIM.DB', 'ANTICORPOS IGM ANTI GIARDIA LAMBLIA', 'Soro tercerizado - 66', 'Soro'),
(226, 0, 'ARRM.DB', 'ANTICORPOS IGM ANTI RICKETTSIA RICKETTSII - FEBRE MACULOSA', 'Soro tercerizado - 66', 'Soro'),
(227, 0, 'UREAM.DB', 'ANTICORPOS IGM ANTI UREAPLASMA UREALYTICUM', 'Soro terceirizado - 28', 'Soro'),
(228, 0, 'ACTIGM.PEZ', 'ANTICORPOS IgM ANTI-CITOMEGALOVIRUS', 'Papel filtro - 55', 'Sangue capilar'),
(229, 0, 'ARIGM.PEZ', 'ANTICORPOS IgM ANTI-RUBEOLA', 'Papel filtro - 55', 'Sangue capilar'),
(230, 0, 'ATRYIGM.PE', 'ANTICORPOS IgM ANTI-TRYPANOSOMA CRUZI', 'Papel filtro - 55', 'Sangue capilar'),
(231, 0, 'AINFAB.DB', 'ANTICORPOS INFLUENZA A E B', 'Soro tercerizado - 66', 'Soro'),
(232, 0, 'HE4', 'ANTÍGENO HE-4 - MARCADOR TUMORAL DE OVÁRIO', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(233, 0, 'HLAB27.DB', 'ANTIGENO HLA-B-27, PESQUISA', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(234, 0, 'HBS.DB', 'ANTI-HBS', 'Soro tercerizado - 66', 'Soro'),
(235, 0, 'TROMBIN.DB', 'ANTITROMBINA III', 'Citrato - 56', 'Plasma citratado congelado'),
(236, 0, 'APOA.DB', 'APOLIPOPROTEINA \"A\"', 'Soro tercerizado - 66', 'Soro'),
(237, 0, 'APOB.DB', 'APOLIPOPROTEINA \"B\"', 'Soro tercerizado - 66', 'Soro'),
(238, 0, 'ARSES.DB', 'ARSÊNIO SÉRICO', 'Soro metais terceirizado - 75', 'Soro'),
(239, 0, 'ATAXIA12', 'ATAXIA ESPINOCEREBELOSA TIPO 12- SCA12', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(240, 0, 'ATAXIASC', 'ATAXIA ESPINOCEREBELOSA, PAINEL', 'Sangue EDTA terceirizado - 74', 'Sangue'),
(241, 0, 'BIONEO.PEZ', 'ATIVIDADE DA BIOTINIDASE - NEONATAL', 'Papel filtro - 55', 'Sangue capilar'),
(242, 0, 'AEB.DB', 'ATIVIDADE ENZIMATICA DA BIOTINIDASE', 'Diversos - 14', 'Diversos'),
(243, 0, 'RENAT.DB', 'ATIVIDADE PLASMATICA DA RENINA (ANGIOTENSINA)', 'Plasma EDTA - 31', 'Plasma EDTA'),
(244, 0, 'ATAXIADR', 'ATROFIA DENTATO-RUBRO-PALIDO-LIUSIANA, DRPLA-ATN1', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(245, 0, 'BANOLI.DB', 'BANDA OLIGOCLONAL', 'Diversos - 14', 'Diversos'),
(246, 0, '210PC.DB', 'BCR/ABL - QUALITATIVO P210', 'Diversos - 14', 'Diversos'),
(247, 0, 'BCRAB.DB', 'BCR/ABL - TRANSLOCAÇÃO QUANTITATIVO (P210)', 'Diversos - 14', 'Diversos'),
(248, 0, 'B2M.DB', 'BETA 2 MICROGLOBULINA', 'Soro tercerizado - 66', 'Soro'),
(249, 0, 'BCARO', 'BETA CAROTENO', 'Soro tercerizado - 66', 'Soro congelado'),
(250, 0, 'BT2GLI.DB', 'BETA-2-GLICOPROTEINA I, ANTICORPOS IgG E IgM', 'Soro tercerizado - 66', 'Soro'),
(251, 0, 'BIGPROL.DB', 'BIG PROLACTINA / MACROPROLACTINA', 'Soro tercerizado - 66', 'Soro'),
(252, 0, 'BNP.DB', 'BNP - PEPTÍDEO NATRIURÉTICO', 'Plasma EDTA - 31', 'Plasma Congelado'),
(253, 0, 'BORG.DB', 'BORDETELLA - ANTICORPOS IGG', 'Soro tercerizado - 66', 'Soro'),
(254, 0, 'BORM.DB', 'BORDETELLA - ANTICORPOS IGM', 'Soro tercerizado - 66', 'Soro'),
(255, 0, 'BRCA1.DB', 'BRCA 1', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(256, 0, 'BRCA2.DB', 'BRCA 2', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(257, 0, 'BRCA1E2.DB', 'BRCA1 E BRCA2 - SEQUENCIAMENTO DE NOVA GERAÇÃO', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(258, 0, 'BRUCG.DB', 'BRUCELOSE - ANTICORPOS IGG', 'Soro tercerizado - 66', 'Soro'),
(259, 0, 'BRUCM.DB', 'BRUCELOSE - ANTICORPOS IGM', 'Soro tercerizado - 66', 'Soro'),
(260, 0, 'CA15-3.DB', 'CA 15-3', 'Soro tercerizado - 66', 'Soro'),
(261, 0, 'CA19-9.DB', 'CA 19-9', 'Soro tercerizado - 66', 'Soro'),
(262, 0, 'CA72/4.DB', 'CA 72/4', 'Soro tercerizado - 66', 'Soro'),
(263, 0, 'KAPLA.DB', 'CADEIAS LEVES LIVRES KAPPA - LAMBDA', 'Soro terceirizado - 28', 'Soro'),
(264, 0, 'CADMS.DB', 'CÁDMIO SANGUÍNEO', 'Sangue heparina terceir - 106', 'Sangue'),
(265, 0, 'CCT.DB', 'CALCITONINA', 'Soro tercerizado congelado- 80', 'Soro'),
(266, 0, 'CALVE.DB', 'CÁLCULO BILIAR, ANÁLISE FÍSICO E QUÍMICA', 'Diversos - 14', 'Diversos'),
(267, 0, 'CALUR.DB', 'CÁLCULO RENAL - ANÁLISE FÍSICO-QUÍMICA', 'Diversos - 14', 'Diversos'),
(268, 0, 'CALF.DB', 'CALPROTECTINA FECAL', 'Fezes terceirizado - 99', 'Fezes'),
(269, 0, 'CANDA.DB', 'CÂNDIDA - ANTICORPOS IGA', 'Soro tercerizado - 66', 'Soro'),
(270, 0, 'CANDG.DB', 'CÂNDIDA - ANTICORPOS IGG', 'Soro tercerizado - 66', 'Soro'),
(271, 0, 'CANDM.DB', 'CÂNDIDA - ANTICORPOS IGM', 'Soro tercerizado - 66', 'Soro'),
(272, 0, 'HPVCAP.DB', 'CAPTURA HIBRIDA PARA HPV', 'Diversos - 14', 'Diversos'),
(273, 0, 'CAR.DB', 'CARBAMAZEPINA', 'Soro tercerizado - 66', 'Soro'),
(274, 0, 'CARBG.DB', 'CARIÓTIPO BANDA G - CONSTITUCIONAL', 'Sangue heparina terceir - 106', 'Sangue Total'),
(275, 0, 'CARBM.DB', 'CARIÓTIPO BANDA G - MEDULA ÓSSEA', 'Sangue Total (Heparina) - 08', 'MEDULA ÓSSEA'),
(276, 0, 'CARI100.DB', 'CARIÓTIPO COM BANDAS G 100 CÉLULAS', 'Sangue heparina terceir - 106', 'Sangue total heparinizado'),
(277, 0, 'CARDH.DB', 'CARIÓTIPO COM BANDAS PARA DOENÇAS HEMATOLÓGICAS MALIGNAS', 'Sangue total + Heparina  - 03', 'Sangue Total'),
(278, 0, 'RESTOSOVUL', 'CARIÓTIPO COM RESTOS OVULARES', '', 'RESTOS OVULARES'),
(279, 0, 'CARBG50.DB', 'CARIÓTIPO CONTAGEM DE 50 CÉLULAS', 'Sangue heparina terceir - 106', 'Sangue Total'),
(280, 0, 'CARXF.DB', 'CARIÓTIPO X FRÁGIL', 'Sangue heparina terceir - 106', 'Sangue Total'),
(281, 0, 'CEU.DB', 'CATECOLAMINA URINÁRIA', 'Urina 24H terceirizado com HCL', 'Urina 24h'),
(282, 0, 'CATEP.DB', 'CATECOLAMINAS PLASMATICAS', 'Sangue heparina terceir - 106', 'Plasma Congelado'),
(283, 0, 'CXG.DB', 'CAXUMBA IgG', 'Soro tercerizado - 66', 'Soro'),
(284, 0, 'CXM.DB', 'CAXUMBA IgM', 'Soro tercerizado - 66', 'Soro'),
(285, 0, 'CCP.DB', 'CCP, ANTICORPOS ANTI', 'Soro tercerizado - 66', 'Soro'),
(286, 0, 'CELUNK.DB', 'CÉLULAS NK - CD16/CD56', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(287, 0, 'CER.DB', 'CERULOPLASMINA', 'Soro tercerizado - 66', 'Soro'),
(288, 0, 'CHAGAS.DB', 'CHAGAS - ANTICORPOS IGG - ELISA', 'Soro tercerizado - 66', 'Sangue'),
(289, 0, 'CHAGAS.CON', 'CHAGAS - MACHADO GUERREIRO', 'Soro tercerizado - 66', 'Soro'),
(290, 0, 'CTPCR.DB', 'CHLAMYDIA TRACHOMATIS - DETECÇÃO POR PCR', 'Diversos - 14', 'Diversos'),
(291, 0, 'CTNG.DB', 'CHLAMYDIA TRACHOMATIS E NEISSERIA GONORRHOEAE', 'Diversos - 14', 'Diversos'),
(292, 0, 'CHLAIGG.DB', 'CHLAMYDIA TRACHOMATIS IGG', 'Soro tercerizado - 66', 'Soro'),
(293, 0, 'CHLAIGM.DB', 'CHLAMYDIA TRACHOMATIS IGM', 'Soro tercerizado - 66', 'Soro'),
(294, 0, 'CHUSG.DB', 'CHUMBO', 'Sangue heparina terceir - 106', 'Sangue total heparinizado'),
(295, 0, 'CHU', 'CHUMBO URINÁRIO INÍCIO DE JORNADA DE TRABALHO', 'Urina Recente Bioquímica - 63', 'Urina recente'),
(296, 0, 'CICLO.DB', 'CICLOSPORINA', 'Sangue EDTA terceirizado - 87', 'Sangue Total'),
(297, 0, 'CISTC.DB', 'CISTATINA C', 'Soro tercerizado - 66', 'Soro congelado'),
(298, 0, 'CISTG.DB', 'CISTICERCOSE - ANTICORPOS IGG', 'Soro tercerizado - 66', 'Soro'),
(299, 0, 'CISTL.DB', 'CISTICERCOSE - ANTICORPOS IGG LÍQUOR', 'Líquor - 19', 'Líquor'),
(300, 0, 'CIST.DB', 'CISTINA URINÁRIA - 24 Horas', 'Urina 24h terceirizado - 105', 'Urina 24h'),
(301, 0, 'CITO.DB', 'CITOLOGIA EM MEIO LÍQUIDO', 'Lâmina - 71', 'Diversos'),
(302, 0, 'CITOL.DB', 'CITOLOGIA ONCÓTICA DE LÍQUIDOS E SECREÇÕES - 1ª AMOSTRA', 'Diversos - 14', 'Diversos'),
(303, 0, 'CITL2.DB', 'CITOLOGIA ONCÓTICA DE LÍQUIDOS E SECREÇÕES - 2ª AMOSTRA', 'Diversos - 14', 'Diversos'),
(304, 0, 'CITL3.DB', 'CITOLOGIA ONCÓTICA DE LÍQUIDOS E SECREÇÕES - 3ª AMOSTRA', 'Diversos - 14', 'Diversos'),
(305, 0, 'CITL4.DB', 'CITOLOGIA ONCÓTICA DE LÍQUIDOS E SECREÇÕES - 4ª AMOSTRA', 'Diversos - 14', 'Diversos'),
(306, 0, 'CITL5.DB', 'CITOLOGIA ONCÓTICA DE LÍQUIDOS E SECREÇÕES - 5ª AMOSTRA', 'Diversos - 14', 'Diversos'),
(307, 0, 'PUNCA3.DB', 'CITOLOGIA ONCÓTICA DE PUNÇÃO ASPIRATIVA', 'Lâmina 03 - 125', 'Diversos'),
(308, 0, 'PUNCA4.DB', 'CITOLOGIA ONCÓTICA DE PUNÇÃO ASPIRATIVA', 'Lâmina 04 - 126', 'Diversos'),
(309, 0, 'PUNCA.DB', 'CITOLOGIA ONCÓTICA DE PUNÇÃO ASPIRATIVA', 'Lâmina 02 - 110', 'Diversos'),
(310, 0, 'PUNCA2.DB', 'CITOLOGIA ONCÓTICA DE PUNÇÃO ASPIRATIVA', 'Lâmina - 71', 'Diversos'),
(311, 0, 'CITTD.DB', 'CITOLOGIA TOTAL E DIFERENCIAL', 'Líquor - 19', 'Líquor'),
(312, 0, 'CITOUR.DB', 'CITOLOGIA VAGINAL - COLPOCITOLOGIA ONCÓTICA', 'Lâmina - 71', 'Lâmina citológica'),
(313, 0, 'CITOVAG.DB', 'CITOLOGIA VAGINAL - COLPOCITOLOGIA ONCÓTICA', 'Lâmina - 71', 'Lâmina citológica'),
(314, 0, 'CMVQT.DB', 'CITOMEGALOVÍRUS - QUANTIFICAÇÃO POR PCR', 'Diversos - 14', 'Diversos'),
(315, 0, 'AVCITO.DB', 'CITOMEGALOVIRUS - TESTE DE AVIDEZ IgG', 'Soro tercerizado - 66', 'Soro'),
(316, 0, 'CMVM.DB', 'CITOMEGALOVIRUS IGM', 'Soro tercerizado - 66', 'Soro'),
(317, 0, 'CITRA.DB', 'CITRATO URINÁRIO (ÁCIDO CÍTRICO)', 'Urina 24H terceirizado com HCL', 'Urina 24h'),
(318, 0, 'CLOBA.DB', 'CLOBAZAM (C), NORCLOBAZAM (N) E RELAÇÃO N/C', 'Soro tercerizado - 66', 'Soro'),
(319, 0, 'CLONA.DB', 'CLONAZEPAM - DOSAGEM', 'Soro tercerizado - 66', 'Soro'),
(320, 0, 'CLU.DB', 'CLORETO URINARIO', 'Urina 24h terceirizado - 105', 'Urina 24h'),
(321, 0, 'CD.DB', 'CLOSTRIDIUM DIFFICILE - TOXINA A E B', 'Fezes terceirizado - 99', 'Fezes'),
(322, 0, 'COBRE.DB', 'COBRE SÉRICO', 'Soro metais terceirizado - 75', 'Soro'),
(323, 0, 'COBRURI.DB', 'COBRE URINÁRIO', 'Urina 24h terceirizado - 105', 'Urina 24h'),
(324, 0, 'COBRI.DB', 'COBRE URINÁRIO INÍCIO DE JORNADA DE TRABALHO', 'Urina Inicio de Jornada - 112', 'Urina recente'),
(325, 0, 'COLIN.DB', 'COLINESTERASE', 'Soro terceirizado - 28', 'Soro'),
(326, 0, 'C1Q.DB', 'COMPLEMENTO C1q', 'Soro tercerizado - 66', 'Soro'),
(327, 0, 'CC2F.DB', 'COMPLEMENTO C2 - FRAÇÃO', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(328, 0, 'CC4.DB', 'COMPLEMENTO C4', 'Soro tercerizado - 66', 'Soro'),
(329, 0, 'C5.DB', 'COMPLEMENTO C5', 'Soro tercerizado - 66', 'Soro congelado'),
(330, 0, 'DES.DB', 'COMPOSTO S 11 DESOXI-CORTISOL', 'Soro tercerizado - 66', 'Soro'),
(331, 0, 'COI.DB', 'COOMBS INDIRETO', 'Soro tercerizado - 66', 'Soro'),
(332, 0, 'CUIND.DB', 'COOMBS INDIRETO', 'Soro terceirizado - 28', 'Soro'),
(333, 0, 'CORTD.DB', 'CORTISOL APÓS DEXAMETASONA', 'Soro tercerizado - 66', 'Soro'),
(334, 0, 'CORT.ESTDB', 'CORTISOL APOS ESTÍMULO', 'Soro tercerizado - 66', 'Soro'),
(335, 0, 'CORTEST.DB', 'CORTISOL APÓS ESTÍMULO', 'Soro tercerizado - 66', 'Soro'),
(336, 0, 'CORTU.DB', 'CORTISOL URINÁRIO - 24 HORAS', 'Urina 24h Sem conservante - 81', 'Urina 24h'),
(337, 0, 'CINA.DB', 'CREATINA', 'Soro terceirizado - 133', 'Soro congelado'),
(338, 0, 'VCK-BM', 'CREATINA QUINASE - MB - ATIVIDADE', 'Soro BQ - 02', 'Soro'),
(339, 0, 'CRIO.DB', 'CRIOGLOBULINAS - PESQUISA', 'Soro tercerizado - 66', 'Soro'),
(340, 0, 'CROSG.DB', 'CROMATOGRAFIA DE AMINOÁCIDOS - SANGUE', 'Sangue total + Heparina  - 03', 'Sangue total heparinizado'),
(341, 0, 'CROMO.DB', 'CROMO SÉRICO', 'Soro metais terceirizado - 75', 'Soro'),
(342, 0, 'CROMA.DB', 'CROMOGRANINA A', 'Soro tercerizado - 66', 'Soro congelado'),
(343, 0, 'CROSM', 'CROSS MATCH - PROVA CRUZADA', 'Soro BQ - 02', 'Soro + Sangue total ACD'),
(344, 0, 'CRYPT.DB', 'CRYPTOCOCCUS - PESQUISA NO LCR', 'Líquor - 19', 'Líquor'),
(345, 0, 'CTX.DB', 'CTX (C-TELOPEPTÍDEO)', 'Plasma EDTA - 31', 'Plasma EDTA congelado'),
(346, 0, 'CULBK.DB', 'CULTURA - BAAR', 'Diversos - 14', 'Diversos'),
(347, 0, 'CULBK2.DB', 'CULTURA - BAAR 2ª AMOSTRA', 'Diversos - 14', 'Diversos'),
(348, 0, 'CULBK3.DB', 'CULTURA - BAAR 3ª AMOSTRA', 'Diversos - 14', 'Diversos'),
(349, 0, 'CULBK4.DB', 'CULTURA - BAAR 4ª AMOSTRA', 'Diversos - 14', 'Diversos'),
(350, 0, 'CULMU.DB', 'CULTURA E ANTIBIOGRAMA - MYCOPLASMA/UREAPLASMA', 'Meio R1 - 128', 'Diversos'),
(351, 0, 'CULNE.DB', 'CULTURA E ANTIBIOGRAMA - NEISSERIA', 'Diversos - 14', 'Diversos'),
(352, 0, 'DIMERO.DB', 'D - DÍMERO', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(353, 0, 'DEFICTN', 'DEFICIÊNCIA DE BIOTINIDASE', 'Papel filtro - 55', 'Sangue papel filtro'),
(354, 0, 'DHEA.DB', 'DEHIDROEPIANDROSTERONA - DHEA', 'Soro tercerizado - 66', 'Soro'),
(355, 0, 'DHEAPOS.DB', 'DEHIDROEPIANDROSTERONA APÓS ESTÍMULO', 'Soro tercerizado - 66', 'Soro'),
(356, 0, 'MPS4S.DB', 'DETERMINAÇÃO DA ATIVIDADE DA BETA-GALACTOSIDASE', 'Sangue Total (Heparina) - 08', 'Sangue'),
(357, 0, 'GALC.DB', 'DETERMINAÇÃO DA ATIVIDADE DA GALACTOCEREBROSIDASE', 'Sangue heparina terceir - 106', 'Sangue total heparinizado'),
(358, 0, 'BIOTI.DB', 'DETERMINAÇÃO DA ATIVIDADE ENZIMÁTICA DA BIOTINIDASE', 'Sangue total + Heparina  - 03', 'Plasma heparinizado'),
(359, 0, 'CROSQ.DB', 'DETERMINAÇÃO QUANTITATIVA DE AMINOÁCIDOS', 'Sangue heparina terceir - 106', 'Diversos'),
(360, 0, 'DHT.DB', 'DI-HIDROTESTOSTERONA  (DHT)', 'Soro terceirizado - 28', 'Soro'),
(361, 0, 'DIGOX.DB', 'DOSAGEM DE DIGOXINA', 'Soro tercerizado - 66', 'Soro'),
(362, 0, 'TACROLI.DB', 'DOSAGEM DE TACROLIMUS', 'Sangue total (citrato) - 04', 'Sangue total  EDTA'),
(363, 0, 'CH100.DB', 'DOSAGEM DO COMPLEMENTO DO CH - 100', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(364, 0, 'CCH50.DB', 'DOSAGEM DO COMPLEMENTO DO CH - 50', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(365, 0, 'ELASP.DB', 'ELASTASE PANCREÁTICA', 'Fezes terceirizado - 99', 'Fezes'),
(366, 0, 'ELEHEMO.DB', 'ELETROFORESE DE HEMOGLOBINA', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(367, 0, 'ELELIPO.DB', 'ELETROFORESE DE LIPOPROTEINAS', 'Soro tercerizado - 66', 'Soro'),
(368, 0, 'ELETR.DB', 'ELETROFORESE DE PROTEINAS', 'Soro terceirizado - 28', 'Soro'),
(369, 0, 'ELPRL.DB', 'ELETROFORESE DE PROTEÍNAS - LÍQUOR', 'Líquor - 19', 'Líquor'),
(370, 0, 'ELPRH.DB', 'ELETROFORESE DE PROTEÍNAS - URINA 24 HORAS', 'Urina 24h terceirizado - 105', 'Urina 24h'),
(371, 0, 'ELPRU.DB', 'ELETROFORESE DE PROTEINAS URINARIA', 'Urina recente terceir - 104', 'Urina'),
(372, 0, 'ECA.DB', 'ENZIMA CONVERSORA DA ANGIOTENSINA I/D - ECA - POLIMORFISMO', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(373, 0, 'ECANG.DB', 'ENZIMA CONVERSORA DE ANGIOTENSINA', 'Tubo seco - 138', 'Soro'),
(374, 0, 'EBVG.DB', 'EPSTEIN BAAR IgG - ANTICPORPOS ANTI-ANTIGENOS', 'Soro tercerizado - 66', 'Soro'),
(375, 0, 'EBVM.DB', 'EPSTEIN BAAR IgM - ANTICORPOS ANTI-ANTIGENOS', 'Soro tercerizado - 66', 'Soro'),
(376, 0, 'ERITRO.DB', 'ERITROPOIETINA', 'Soro tercerizado - 66', 'Soro'),
(377, 0, 'EIM.DB', 'ERROS INATOS DO METABOLISMO (EIM)', 'Urina recente terceir - 104', 'Urina'),
(378, 0, 'RECP6.DB', 'ESPÓLIOS COM ATÉ 2 PARENTES DO SUPOSTO PAI', 'Papel filtro - 55', 'SANGUE OU SALIVA EM FTA'),
(379, 0, 'ESTRONA.DB', 'ESTRONA', 'Soro tercerizado - 66', 'Soro'),
(380, 0, 'A109.DB', 'ESTUDO DE INTOLERÂNCIA ALIMENTAR 109 ALIMENTOS', 'Soro tercerizado - 66', 'Soro'),
(381, 0, 'DELY.DB', 'ESTUDO DE MICRODELEÇÃO NO CROMOSSOMO Y', 'Sangue total (citrato) - 04', 'Sangue total (EDTA)'),
(382, 0, 'IVS8.DB', 'ESTUDO MOLECULAR GENE CFTR - MUTAÇÃO IVS8', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(383, 0, 'PORFS.DB', 'ESTUDO PORFIRINAS', 'Sangue EDTA terceirizado - 74', 'Sangue'),
(384, 0, 'BIOPSI9.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 09 - 122', 'Diversos'),
(385, 0, 'BIOPSI8.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 08 - 120', 'Diversos'),
(386, 0, 'BIOPSI7.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 07 - 119', 'Diversos'),
(387, 0, 'BIOPSI6.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 06 - 118', 'Diversos'),
(388, 0, 'BIOPSI5.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 05 - 117', 'Diversos'),
(389, 0, 'BIOPSI4.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 04 - 116', 'Diversos'),
(390, 0, 'BIOPSI3.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 03 - 111', 'Diversos'),
(391, 0, 'BIOPSI2.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 02 - 109', 'Diversos'),
(392, 0, 'BIOPSI1.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 01 - 17', 'Diversos'),
(393, 0, 'BIOPUR9.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 09 - 122', ''),
(394, 0, 'BIOPUR8.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 08 - 120', ''),
(395, 0, 'BIOPUR7.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 07 - 119', ''),
(396, 0, 'BIOPUR6.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 06 - 118', ''),
(397, 0, 'BIOPUR5.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 05 - 117', ''),
(398, 0, 'BIOPUR4.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 04 - 116', ''),
(399, 0, 'BIOPUR3.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 03 - 111', ''),
(400, 0, 'BIOPUR2.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 02 - 109', ''),
(401, 0, 'BIOPSUR.DB', 'EXAME ANATOMOPATOLOGICO', 'Biopsia 01 - 17', ''),
(402, 0, 'BIOPR1.DB', 'EXAME ANATOMOPATOLOGICO - REVISÃO', 'Biopsia 01 - 17', 'Diversos'),
(403, 0, 'TNFA.DB', 'FATOR DE NECROSE TUMORAL ALFA', 'Soro congelado - 216', 'Soro congelado'),
(404, 0, 'FAT9.DB', 'FATOR IX', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(405, 0, 'FNA.DB', 'FATOR NATRIURÉTICO ATRIAL', 'Plasma EDTA congelado - 86', 'Plasma'),
(406, 0, 'FVLEIDE.DB', 'FATOR V LEIDEN', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(407, 0, 'FATVIII.DB', 'FATOR VIII DA COAGULACAO', 'Citrato terceirizado - 100', 'Sangue total (citrato)'),
(408, 0, 'FAT11.DB', 'FATOR XI', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(409, 0, 'FAT12.DB', 'FATOR XII', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(410, 0, 'FXII.DB', 'FATOR XII DA COAGULACAO', 'Citrato terceirizado - 100', 'Plasma citratado'),
(411, 0, 'FENIL.DB', 'FENILALANINA PLASMÁTICA', 'Plasma EDTA - 31', 'Plasma EDTA congelado'),
(412, 0, 'FENP.DB', 'FENILCETONÚRIA - PESQUISA', 'Urina recente - 07', 'Urina recente'),
(413, 0, 'FENIL.PEZ', 'FENILCETONÚRIA - PKU', 'Papel filtro - 55', 'Sangue capilar'),
(414, 0, 'FNT.DB', 'FENITOÍNA', 'Soro tercerizado - 66', 'Soro'),
(415, 0, 'FEN.DB', 'FENOBARBITAL', 'Soro tercerizado - 66', 'Soro'),
(416, 0, 'CD19.DB', 'FENOTIPAGEM PARA LINFÓCITOS B - CD19', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(417, 0, 'FIB.DB', 'FIBRINOGÊNIO', 'Citrato - 56', 'Plasma'),
(418, 0, 'FIBROCTN', 'FIBROSE CÍSTICA - IRT', 'Papel filtro - 55', 'Sangue papel filtro'),
(419, 0, 'TP53F.DB', 'FISH TP53 (LSI 17P13)', 'Diversos - 14', 'Diversos'),
(420, 0, 'FLUOI.DB', 'FLUORETOS INÍCIO DE JORNADA', 'Urina Inicio de Jornada - 112', 'Urina início da jornada de trabalho'),
(421, 0, 'FAP.DB', 'FOSFATASE ÁCIDA PROSTÁTICA', 'Soro terceirizado acidificado', 'Soro acidificado'),
(422, 0, 'FACC', 'FOSFATASE ACIDA TOTAL', 'Soro terceirizado - 28', 'Soro acidificado congelado'),
(423, 0, 'FAC.DB', 'FOSFATASE ACIDA TOTAL', 'Soro acidificado terceir - 146', 'Soro acidificado congelado'),
(424, 0, 'FAO.DB', 'FOSFATASE ALCALINA - FRAÇÃO ÓSSEA', 'Soro tercerizado - 66', 'Soro'),
(425, 0, 'FRUTO.DB', 'FRUTOSAMINA', 'Soro tercerizado - 66', 'Soro'),
(426, 0, 'FRUTOSE.DB', 'FRUTOSE', 'Esperma - 13', 'Esperma'),
(427, 0, 'FTAG.DB', 'FTA-ABS ANTICORPOS IgG', 'Soro tercerizado - 66', 'Soro'),
(428, 0, 'FTAM.DB', 'FTA-ABS ANTICORPOS IgM', 'Soro tercerizado - 66', 'Soro'),
(429, 0, 'GALTO.DB', 'GALACTOSE + GALACTOSE-1-FOSTATO', 'Papel filtro - 55', 'Sangue capilar'),
(430, 0, 'GALA1.DB', 'GALACTOSE 1 FOSFATO URIDIL TRANSFERASE', 'Sangue EDTA terceirizado - 87', 'Sangue total  EDTA'),
(431, 0, 'GALNEO.PEZ', 'GALACTOSE E GALACTOSE-1-FOSTATO', 'Papel filtro - 55', 'Sangue capilar'),
(432, 0, 'GFUT.DB', 'GALACTOSEMIA', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(433, 0, 'GASTR.DB', 'GASTRINA', 'Soro tercerizado - 66', 'Soro congelado'),
(434, 0, 'HLA.DB', 'GENOTIPAGEM DO HLA LOCCUS A - BAIXA RESOLUÇÃO', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(435, 0, 'HCVGE.DB', 'GENOTIPAGEM PARA HCV', 'PPT - 83', 'Plasma Congelado'),
(436, 0, 'HPVAB.DB', 'GENOTIPAGEM PARA HPV', 'Diversos - 14', 'Diversos'),
(437, 0, 'GLICO.DB', 'GLICOSAMINOGLICANOS', 'Urina 24h terceirizado - 105', 'Urina 24h congelada'),
(438, 0, 'G6PD.DB', 'GLICOSE 6-FOSFATO DEHIDROGENASE', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(439, 0, 'GLILIQ.DB', 'GLICOSE EM LÍQUIDOS', 'Diversos - 14', ''),
(440, 0, 'G6PDNEO.DB', 'GLICOSE-6-FOSFATO DESIDROGENASE - G6PD', 'Papel filtro - 55', 'Sangue capilar'),
(441, 0, 'G6PDNEO.PE', 'GLICOSE-6-FOSFATO DESIDROGENASE - G6PD', 'Papel filtro - 55', 'Sangue capilar'),
(442, 0, 'SHBG.DB', 'GLOBULINA LIGADORA DE HORMONIO SEXUAIS - SHBG', 'Soro tercerizado - 66', 'Soro'),
(443, 0, 'GLUCA.DB', 'GLUCAGON', 'Sangue EDTA terceirizado - 74', 'Plasma EDTA congelado'),
(444, 0, 'GLPER.DB', 'GLUTATIONA PEROXIDASE ERITROCITARIA', 'Sangue heparina terceir - 106', 'Sangue total heparinizado'),
(445, 0, 'H1N1.DB', 'H1N1 - DETECÇÃO POR PCR', 'Diversos - 14', 'Diversos'),
(446, 0, 'HAPTO.DB', 'HAPTOGLOBINA', 'Soro tercerizado - 66', 'Soro'),
(447, 0, 'HBSAG.DB', 'HBsAg - ANTIGENO SUPERFÍCIE HEPATITE B', 'Soro tercerizado - 66', 'Soro'),
(448, 0, 'HPA.DB', 'HELICOBACTER PYLORI - ANTICORPOS IGA', 'Soro tercerizado - 66', 'Soro'),
(449, 0, 'HPAG.DB', 'HELICOBACTER PYLORI - ANTICORPOS IGG', 'Soro tercerizado - 66', 'Soro'),
(450, 0, 'HPAM.DB', 'HELICOBACTER PYLORI - ANTICORPOS IGM', 'Soro tercerizado - 66', 'Soro'),
(451, 0, 'HFE.DB', 'HEMOCROMATOSE C282Y, H63D E S65C', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(452, 0, 'HGF .DB', 'HEMOGLOBINA GLICOSILADA (HBA1C)', 'Sangue Total (EDTA) 134', 'Sangue total (EDTA)'),
(453, 0, 'HBH.DB', 'HEMOGLOBINA H - PESQUISA', 'Sangue EDTA terceirizado - 74', 'Sangue'),
(454, 0, 'NHPAT', 'HEMOGLOBINOPATIAS - TRIAGEM NEONATAL', 'Papel filtro - 55', 'Sangue capilar'),
(455, 0, 'HVAG.DB', 'HEPATITE A - ANTI - HVA IGG', 'Soro tercerizado - 66', 'Soro'),
(456, 0, 'HVAM.DB', 'HEPATITE A - IgM', 'Soro tercerizado - 66', 'Soro'),
(457, 0, 'AHBE.DB', 'HEPATITE B - ANTI - HBE', 'Soro tercerizado - 66', 'Soro'),
(458, 0, 'HBCT.DB', 'HEPATITE B - ANTI-HBC TOTAL', 'Soro tercerizado - 66', 'Soro'),
(459, 0, 'HBEAG.DB', 'HEPATITE B - HBeAg', 'Soro tercerizado - 66', 'Soro'),
(460, 0, 'HBPCR.DB', 'HEPATITE B - QUALITATIVO', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(461, 0, 'HBQT', 'HEPATITE B - QUANTIFICAÇÃO POR PCR', 'PPT - 83', 'Plasma EDTA congelado'),
(462, 0, 'HCVAB.DB', 'HEPATITE C - ANTI - HCV', 'Soro terceirizado - 28', 'Soro'),
(463, 0, 'HCVPC.DB', 'HEPATITE C - QUALITATIVO', 'PPT - 83', 'Plasma Congelado'),
(464, 0, 'HCVQF.DB', 'HEPATITE C - QUANTIFICAÇÃO E GENOTIPAGEM', 'PPT - 83', 'Plasma Congelado'),
(465, 0, 'HCVPCR.DB', 'HEPATITE C - QUANTIFICAÇÃO POR PCR', 'Plasma EDTA - 31', 'Plasma EDTA congelado'),
(466, 0, 'HCVQT.DB', 'HEPATITE C - QUANTIFICAÇÃO POR PCR', 'PPT - 83', 'Plasma Congelado'),
(467, 0, 'HEPD.DB', 'HEPATITE D - ANTICORPOS TOTAIS', 'Soro tercerizado - 66', 'Soro'),
(468, 0, 'FHER2.DB', 'HER2/NEU (LSI 17Q21.1) FISH', 'Biopsia 01 - 17', 'Diversos'),
(469, 0, 'HERP.DB', 'HERPES - PESQUISA', 'Diversos - 14', 'Diversos'),
(470, 0, 'HERPS.DB', 'HERPES SIMPLES 1 E 2 - DETECÇÃO POR PCR', 'Diversos - 14', 'Diversos'),
(471, 0, 'HER2P.DB', 'HERPES SIMPLEX 2 - DETECÇÃO POR PCR', 'Diversos - 14', 'Diversos'),
(472, 0, 'HERPESG.DB', 'HERPESVIRUS SIMPLES I E II IGG', 'Soro tercerizado - 66', 'Soro'),
(473, 0, 'HERPESM.DB', 'HERPESVIRUS SIMPLES I E II IGM', 'Soro tercerizado - 66', 'Soro'),
(474, 0, 'ARRAYS.DB', 'HIBRIDAÇÃO GENÔMICA COMPARATIVA POR ARRAYS', 'Sangue total (EDTA) - 36', 'Sangue total  EDTA'),
(475, 0, 'HISTO.DB', 'HISTONA - ANTICORPOS', 'Soro terceirizado - 28', 'Soro'),
(476, 0, 'HIVP24.DB', 'HIV - ANTÍGENO P24', 'Soro terceirizado - 28', 'Soro'),
(477, 0, 'HIV4.DB', 'HIV 1 E 2 - ANTÍGENO E ANTICORPOS', 'Soro tercerizado - 66', 'Soro'),
(478, 0, 'HIVN.DB', 'HIV 1 e 2  NEONATAL', 'Papel filtro - 55', 'Sangue capilar'),
(479, 0, 'HIVQT.DB', 'HIV PCR QUANTITATIVO EM TEMPO REAL', 'PPT - 83', 'Plasma Congelado'),
(480, 0, 'CELIA.DB', 'HLA DQ2 E DQ8 - DOENÇA CELÍACA', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(481, 0, 'HOMOCIS.DB', 'HOMOCISTEÍNA', 'Soro tercerizado - 66', 'Soro'),
(482, 0, 'ACTH. DB', 'HORMÔNIO ADRENOCORTICOTRÓFICO - ACTH', 'Sangue EDTA terceirizado - 74', 'Plasma EDTA'),
(483, 0, 'ACTH.TARDE', 'HORMÔNIO ADRENOCORTICOTRÓFICO - ACTH - TARDE', 'Sangue EDTA terceirizado - 74', 'Plasma EDTA'),
(484, 0, 'HAM.DB', 'HORMONIO ANTI-MULLERIANO', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(485, 0, 'HTLVPC.DB', 'HTLV 1 E 2 QUALITATIVO - PCR', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(486, 0, 'HTLV.DB', 'HTLV I E II Ab', 'Soro tercerizado - 66', 'Soro'),
(487, 0, 'HTLVW.DB', 'HTLV I/II - WESTERN BLOT', 'Soro tercerizado - 66', 'Soro'),
(488, 0, 'IGA-SAL.DB', 'IGA SECRETORA - SALIVA', 'Saliva - 20', 'Saliva'),
(489, 0, 'IGEE204.DB', 'IGE ESP (E204) - ALBUMINA SORO BOVINO', 'Soro tercerizado - 66', 'Soro'),
(490, 0, 'IGEF432', 'IGE ESPECÍFICO PARA ALIMENTOS - GLYCININ LEGUMIN (F432)', 'Soro terceirizado - 28', 'Soro'),
(491, 0, 'IGEF33.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - LARANJA (F33)', 'Soro terceirizado - 28', 'Soro'),
(492, 0, 'IGEEX71.DB', 'IGE PAINEL PARA EPITÉLIOS - PENAS (EX71)', 'Soro terceirizado - 28', 'Soro'),
(493, 0, 'SUBIGG1.DB', 'IGG - 1 - Subclasse de IgG', 'Soro tercerizado - 66', 'Soro'),
(494, 0, 'SUBIGG3.DB', 'IGG - 3 - Subclasse de IgG', 'Soro tercerizado - 66', 'Soro'),
(495, 0, 'CC1Q.DB', 'IMUNOCOMPLEXOS CIRCULANTES C1q IgG', 'Soro tercerizado - 66', 'Soro'),
(496, 0, 'IMUSS.DB', 'IMUNOELETROFORESE DE PROTEÍNAS SÉRICAS - QUANTITATIVO', 'Soro tercerizado - 66', 'Soro'),
(497, 0, 'IMUNO.DB', 'IMUNOFENOTIPAGEM - NEOPLASIA HEMATOLÓGICA', 'Sangue EDTA terceirizado - 74', 'MEDULA ÓSSEA'),
(498, 0, 'IMUC.DB', 'IMUNOFENOTIPAGEM PARA PESQUISA DE HPN', 'Sangue total (citrato) - 04', 'Sangue total  EDTA'),
(499, 0, 'IMUD.DB', 'IMUNOFENOTIPAGEM PARA PESQUISAS DE DRM', 'Diversos - 14', 'Diversos'),
(500, 0, 'IMUNS.DB', 'IMUNOFIXAÇÃO DE PROTEÍNAS SÉRICAS - QUALITATIVO', 'Soro tercerizado - 66', 'Soro'),
(501, 0, 'IMUU.DB', 'IMUNOFIXAÇÃO DE PROTEÍNAS URINÁRIAS', 'Urina recente terceir - 104', 'Urina'),
(502, 0, 'IMU24.DB', 'IMUNOFIXACAO URINARIA -  24 HORAS', 'Urina 24h terceirizado - 105', 'Urina (amostra única)'),
(503, 0, 'IMFURI.REC', 'IMUNOFIXACAO URINARIA -  URINA RECENTE', 'Urina recente terceir - 104', 'Urina (amostra única)'),
(504, 0, 'CH.IGG.DB', 'IMUNOFLUORESCÊNCIA PARA TRYPANOSOMA CRUZI (IgG)', 'Soro tercerizado - 66', 'Soro'),
(505, 0, 'CH.IGM.DB', 'IMUNOFLUORESCÊNCIA PARA TRYPANOSOMA CRUZI (IgM)', 'Soro tercerizado - 66', 'Soro'),
(506, 0, 'IGD.DB', 'IMUNOGLOBULINA IGD', 'Soro tercerizado congelado- 80', 'Soro'),
(507, 0, 'HISTQ.DB', 'IMUNOHISTOQUÍMICO - PAINÉIS NEOPLÁSICOS', 'Diversos - 14', 'Diversos'),
(508, 0, 'HISMA.DB', 'IMUNOHISTOQUÍMICO - PAINEL PROGNÓSTICO DE MAMA', 'Diversos - 14', 'Diversos'),
(509, 0, 'HISLE.DB', 'IMUNOHISTOQUÍMICO - PESQUISA DE LEISHMANIOSE', 'Diversos - 14', 'Diversos'),
(510, 0, 'C1SEIF.DB', 'INIBIDOR DE C1 ESTERASE FUNCIONAL', 'Citrato terceirizado - 100', 'Plasma citratado'),
(511, 0, 'C1-EST.DB', 'INIBIDOR DE C1 ESTERASE QUANTITATIVO', 'Soro tercerizado - 66', 'Soro'),
(512, 0, 'IFATIX.DB', 'INIBIDOR DO FATOR IX', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(513, 0, 'INIBA.DB', 'INIBINA A', 'Soro tercerizado - 66', 'Soro congelado'),
(514, 0, 'INIB.DB', 'INIBINA B - INIB-B', 'Soro tercerizado - 66', 'Soro congelado'),
(515, 0, 'IAA.DB', 'INSULINA, AUTO ANTICORPOS ANTI', 'Soro tercerizado - 66', 'Soro'),
(516, 0, 'IL4.DB', 'INTERLEUCINA 4', 'Soro tercerizado - 66', 'Soro congelado'),
(517, 0, 'INT6.DB', 'INTERLEUCINA 6', 'Soro tercerizado - 66', 'Soro congelado'),
(518, 0, 'IODO.DB', 'IODO SERICO', 'Soro tercerizado - 66', 'Soro'),
(519, 0, 'JO1.DB', 'JO-1, AUTO ANTICORPOS ANTI', 'Soro tercerizado - 66', 'Soro'),
(520, 0, 'LDHLQ.DB', 'LACTADO DESIDROGENASE EM LÍQUIDOS', 'Diversos - 14', 'Diversos'),
(521, 0, 'LAMOTRI.DB', 'LAMOTRIGINA', 'Soro tercerizado - 66', 'Soro'),
(522, 0, 'LEISG.DB', 'LEISHMANIA DONOVANI - ANTICORPOS IGG', 'Soro tercerizado - 66', 'Soro'),
(523, 0, 'LEISM.DB', 'LEISHMANIA DONOVANI - ANTICORPOS IGM', 'Soro tercerizado - 66', 'Soro'),
(524, 0, 'LEPTI.DB', 'LEPTINA', 'Soro tercerizado - 66', 'Soro congelado'),
(525, 0, 'LEPIGG.DB', 'LEPTOSPIROSE, ANTICORPOS IgG', 'Soro tercerizado - 66', 'Soro'),
(526, 0, 'LEPIGM.DB', 'LEPTOSPIROSE, ANTICORPOS IgM', 'Soro tercerizado - 66', 'Soro'),
(527, 0, 'CD8.DB', 'LINFÓCITO T CITOTÓXICO CD8', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(528, 0, 'CD4.DB', 'LINFÓCITOS T AUXILIADORES CD4', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(529, 0, 'CD3.DB', 'LINFÓCITOS T CD3', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(530, 0, 'CD319.DB', 'LINFÓCITOS T E B - CD3 - CD19', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(531, 0, 'LIPA.DB', 'LIPOPROTEINA \"A\"', 'Soro terceirizado - 28', 'Soro'),
(532, 0, 'LITIO.DB', 'LITIO', 'Soro tercerizado - 66', 'Soro'),
(533, 0, 'LKM.DB', 'LKM-1, ANTI ( Anti-microssomal de figado e rim )', 'Soro tercerizado - 66', 'Sangue'),
(534, 0, 'MGERI.DB', 'MAGNESIO ERITROCITARIO', 'Trace - Heparina (azul) - 70', 'Sangue total  EDTA'),
(535, 0, 'MAG.DB', 'MANGANÊS SÉRICO', 'Trace (Sem aditivo) - 60', 'Soro'),
(536, 0, 'MERCURIO', 'MERCÚRIO SANGUÍNEO', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(537, 0, 'MERUI.DB', 'MERCÚRIO URINA FINAL DE JORNADA DE TRABALHO', 'Urina final da jornada - 238', 'Urina'),
(538, 0, 'MERUI2.DB', 'MERCÚRIO URINA INÍCIO DE JORNADA DE TRABALHO', 'Urina Recente Bioquímica - 63', 'Urina'),
(539, 0, 'MHB.DB', 'METAHEMOGLOBINA', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(540, 0, 'METP.DB', 'METANEFRINAS PLASMÁTICAS', 'Plasma EDTA - 121', 'Plasma EDTA congelado'),
(541, 0, 'METAU.DB', 'METANEFRINAS URINARIA', 'Urina 24H terceirizado com HCL', 'Urina 24h'),
(542, 0, 'ANGELM.DB', 'METILAÇÃO ESPECÍFICA MLPA PARA SÍNDROME DE ANGELMAN', 'Sangue EDTA terceirizado - 74', 'Sangue total (EDTA)'),
(543, 0, 'MTREX.DB', 'METOTREXATO', 'Soro protegido da luz - 76', 'Soro'),
(544, 0, 'MIOGL.DB', 'MIOGLOBINA', 'Soro tercerizado - 66', 'Soro'),
(545, 0, 'MOLIB.DB', 'MOLIBDÊNIO', 'Soro terceirizado - 28', 'Soro'),
(546, 0, 'MKGR.DB', 'MORFOLOGIA ESTRITA DE KRUGER', 'Lâmina + Líquido Seminal', 'LÂMINA - LÍQUIDO SEMINAL'),
(547, 0, 'MUCO.DB', 'MUCOPOLISSACARÍDEOS', 'Urina recente terceir - 104', 'Urina Congelada'),
(548, 0, 'AML.DB', 'MUSCULO LISO, ANTICORPOS ANTI ASMA', 'Soro tercerizado - 66', 'Sangue'),
(549, 0, 'FATII.DB', 'MUTAÇÃO NO GENE DA PROTROMBINA G20210A (Fator II )', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(550, 0, 'BRAF.DB', 'MUTAÇÃO V600E NO GENE BRAF', 'Diversos - 14', 'TECIDO TUMORAL EM BLOCO DE PARAFINA'),
(551, 0, 'JAK2.DB', 'MUTAÇÃO V617F NO GENE JAK2 - DETECÇÃO', 'Diversos - 14', 'Diversos'),
(552, 0, 'MTHFR.DB', 'MUTACOES A1298C E C677T da MTHFR', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(553, 0, 'MTQT.DB', 'MYCOBACTERIUM TUBERCULOSIS - DETECÇÃO POR PCR', 'Diversos - 14', 'Diversos'),
(554, 0, 'MTRIF.DB', 'MYCOBACTERIUM TUBERCULOSIS DETECCAO E RESISTENCIA [MT-TRM]', 'Diversos - 14', 'Diversos'),
(555, 0, 'MYPNE.DB', 'MYCOPLASMA PNEUMONIAE - ANTICORPOS IGG E IGM', 'Soro terceirizado - 28', 'Soro'),
(556, 0, 'NGPCR.DB', 'NEISSERIA GONORRHOEAE - PCR', 'Diversos - 14', 'Diversos'),
(557, 0, 'NIQS.DB', 'NÍQUEL SÉRICO', 'Soro tercerizado - 66', 'Soro congelado'),
(558, 0, 'NTX.DB', 'N-TELOPEPTIDEO [NTX]', 'Segunda urina da manhã - 85', 'Urina'),
(559, 0, 'OSMUR.DB', 'OSMOLALIDADE ( URINA )', 'Urina 24h terceirizado - 105', 'Urina 24h'),
(560, 0, 'OSMOL.DB', 'OSMOLALIDADE SÉRICA', 'Soro tercerizado - 66', 'Soro congelado'),
(561, 0, 'OSMURI.DB', 'OSMOLALIDADE URINÁRIA - AMOSTRA ISOLADA', 'Urina recente terceir - 104', 'Urina'),
(562, 0, 'OSTEO.DB', 'OSTEOCALCINA', 'Sangue heparina terceir - 106', 'Sangue total heparinizado'),
(563, 0, 'OXALA.DB', 'OXALATO - ÁCIDO OXÁLICO URINÁRIO', 'Urina 24H terceirizado com HCL', 'Urina 24h Consert. HCL 25%'),
(564, 0, 'OXC.DB', 'OXCARBAZEPINA', 'Soro tercerizado - 66', 'Soro'),
(565, 0, 'PMEPI.DB', 'PAINEL MULTIGENE DE INVESTIGAÇÃO DE EPILEPSIA', 'Sangue EDTA terceirizado - 74', 'Sangue'),
(566, 0, 'PREAC.DB', 'PAINEL REATIVO DE ANTICORPOS ANTI-HLA', 'Soro tercerizado congelado- 80', 'Soro'),
(567, 0, 'HPVRT.DB', 'PAPILOMAVÍRUS HUMANO (HPV) - SONDAS DE ALTO RISCO', 'Diversos - 14', 'Diversos'),
(568, 0, 'HPVC.DB', 'PAPILOMAVÍRUS HUMANO (HPV) CAPTURA HIBRIDA', 'Diversos - 14', 'Soro congelado'),
(569, 0, 'PB19I.DB', 'PARVOVÍRUS - ANTICORPOS IGG E IGM', 'Soro terceirizado - 28', 'Sangue'),
(570, 0, 'PB19G.DB', 'PARVOVIRUS B19 IgG, ANTICORPOS ANTI', 'Soro tercerizado - 66', 'Soro'),
(571, 0, 'PB19M.DB', 'PARVOVIRUS B19 IgM, ANTICORPOS ANTI', 'Soro tercerizado - 66', 'Soro'),
(572, 0, 'PEPC.DB', 'PEPTÍDEO C', 'Soro tercerizado - 66', 'Soro'),
(573, 0, 'PIV.DB', 'PEPTIDEO INTESTINAL VASOATIVO [VIP]', 'Sangue EDTA terceirizado - 74', 'Plasma Congelado');
INSERT INTO `exemesac` (`idExamesac`, `idBancada`, `identifexameac`, `descricaoexameac`, `tuboexameac`, `materialexameac`) VALUES
(574, 0, 'PERFIA.DB', 'PERFIL ALÉRGICO - FP2+FP7+FP73+ HP1+IP6+MP1+EP1', 'Soro tercerizado - 66', 'Soro'),
(575, 0, 'SURDM.DB', 'PESQUISA DA MUTAÇÃO CONEXINA 26 SURDEZ HEREDITÁRIA', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(576, 0, 'AHP.DB', 'PESQUISA DE ANTIGENO HELICOBACTER PYLORI', 'Fezes terceirizado - 99', 'Fezes'),
(577, 0, 'CF.DB', 'PESQUISA DE COPROPORFIRINAS', 'Fezes terceirizado - 99', 'Fezes Protegida da Luz'),
(578, 0, 'MCP', 'PESQUISA DE MACROPROLACTINA', 'Soro tercerizado - 66', 'Soro'),
(579, 0, 'HLB51.DB', 'PESQUISA DO ALELO HLA-B51', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(580, 0, 'XFRAGIL.DB', 'PESQUISA MOLECULAR DE CROMOSSOMO X-FRÁGIL', 'Sangue total (EDTA) - 36', 'Sangue total  EDTA'),
(581, 0, 'PSQ.TOXCLO', 'PESQUISA TOXINA A E B CLOSTRIDIUM DIFICILE', 'Fezes terceirizado - 99', 'Fezes'),
(582, 0, 'PAI1.DB', 'PLASMINÓGENO TISSULAR (4G/5G - PAI1) - POLIMORFISMO', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(583, 0, 'MALA.DB', 'PLASMODIUM FALCIPARUM (MALÁRIA) ANTICORPOS IGG E IGM', 'Soro tercerizado - 66', 'Soro'),
(584, 0, 'PORFU.DB', 'PORFIRINAS URINARIAS', 'Urina 24h Bicarbonato Tercei', 'Urina 24h'),
(585, 0, 'PORFO.DB', 'PORFOBILINOGÊNIO', 'Urina recente - 07', 'Urina Congelada Protegida da Luz'),
(586, 0, 'KUR.DB', 'POTASSIO URINARIO', 'Urina 24h terceirizado - 105', 'Urina 24h'),
(587, 0, 'PREAL.DB', 'PRE-ALBUMINA', 'Soro tercerizado - 66', 'Soro congelado'),
(588, 0, 'PROCT.DB', 'PRÓ - CALCITONINA', 'Soro tercerizado - 66', 'Soro congelado'),
(589, 0, 'PBNP.DB', 'PRÓ BNP - N - TERMINAL', 'Sangue Total (Heparina) - 08', 'Plasma'),
(590, 0, 'PBNP.CENTR', 'PRÓ BNP - N - TERMINAL', 'Sangue EDTA terceirizado - 87', 'Plasma'),
(591, 0, 'PROGR.DB', 'PROGRAF - DOSAGEM DE TACROLIMUS', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(592, 0, 'PROLD.DB', 'PROLACTINA APOS DILUIÇÃO', 'Soro tercerizado - 66', 'Sangue'),
(593, 0, 'PROCO.DB', 'PROPEPTIDEO PROCOLAGENO TIPO I (P1NP)', 'Soro tercerizado - 66', 'Soro congelado'),
(594, 0, 'PCRULTR.DB', 'PROTEÍNA \"C\" REATIVA ULTRA-SENSÍVEL', 'Soro tercerizado - 66', 'Soro'),
(595, 0, 'ALZH.DB', 'PROTEINA BETA AMILOIDE/TAU', 'Líquor - 19', 'Líquor'),
(596, 0, 'PROC.DB', 'PROTEÍNA C FUNCIONAL', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(597, 0, 'PPTH.DB', 'PROTEÍNA RELACIONADA AO PARATORMÔNIO [PTHRP]', 'Plasma EDTA congelado - 86', 'Plasma EDTA congelado'),
(598, 0, 'PTSA.DB', 'PROTEINA S ANTIGENICA TOTAL', 'Citrato terceirizado - 100', 'Plasma Congelado'),
(599, 0, 'PROS.DB', 'PROTEÍNA S FUNCIONAL', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(600, 0, 'PTLIQ.DB', 'PROTEÍNAS TOTAIS EM LÍQUIDOS', 'Diversos - 14', 'Diversos'),
(601, 0, 'PRLI.DB', 'PROTOPORFIRINA LIVRE ERITROCITARIA', 'Sangue heparina terceir - 106', 'Sangue total heparinizado'),
(602, 0, 'PRZN.DB', 'PROTOPORFIRINA ZINCO', 'Sangue heparina terceir - 106', 'Sangue total heparinizado'),
(603, 0, 'CROSS.DB', 'PROVA CRUZADA CÉLULAS T E B', 'Diversos - 14', 'Sangue'),
(604, 0, 'RAIVA.DB', 'RAIVA - SOROLOGIA', 'Soro tercerizado - 66', 'Soro'),
(605, 0, 'RARA.DB', 'RELAÇÃO ALDOSTERONA/RENINA ATIVIDADE', 'Plasma EDTA congelado - 86', 'Plasma EDTA congelado'),
(606, 0, 'RCACR.DB', 'RELAÇÃO CÁLCIO CREATININA - AMOSTRA ISOLADA', 'Urina recente terceir - 104', 'Urina recente'),
(607, 0, 'RURCR.DB', 'RELAÇÃO URÉIA/ CREATININA - AMOSTRA ISOLADA', 'Urina recente terceir - 104', 'Urina'),
(608, 0, 'ATV.REN', 'RENINA - ATIVIDADE (ANGIOTENSINA)', 'Plasma EDTA congelado - 86', 'Plasma EDTA congelado'),
(609, 0, 'BIC.DB', 'RESERVA ALCALINA', 'Soro tercerizado congelado- 80', 'Soro'),
(610, 0, 'RPCA.DB', 'RESISTÊNCIA A PROTEÍNA C ATIVADA - RPCA', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(611, 0, 'RISPE', 'RISPERIDONA', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(612, 0, 'ROTPL.DB', 'ROTINA - LÍQUIDO PLEURAL', 'Líquido pleural - 235', 'Líquido pleural'),
(613, 0, 'ROTPL2.DB', 'ROTINA - LÍQUIDO PLEURAL (2ª AMOSTRA)', 'Líquido pleural - 235', 'Líquido pleural'),
(614, 0, 'ROTPL3.DB', 'ROTINA - LÍQUIDO PLEURAL (3ª AMOSTRA)', 'Líquido pleural - 235', 'Líquido pleural'),
(615, 0, 'ROTPL4.DB', 'ROTINA - LÍQUIDO PLEURAL (4ª AMOSTRA)', 'Líquido pleural - 235', 'Líquido pleural'),
(616, 0, 'ROTLC.DB', 'ROTINA - LÍQUOR', 'Líquor - 19', 'Líquor'),
(617, 0, 'AVRUB.DB', 'RUBEOLA - TESTE DE AVIDEZ IgG', 'Soro tercerizado - 66', 'Soro'),
(618, 0, 'ASCA.DB', 'SACCHAROMYCES CEREVISIAE, ANTICORPOS IgG E IgA', 'Soro tercerizado - 66', 'Soro'),
(619, 0, 'SALG.DB', 'SALMONELLA TYPHI - ANTICORPOS IGG', 'Soro tercerizado - 66', 'Soro'),
(620, 0, 'SALM.DB', 'SALMONELLA TYPHI - ANTICORPOS IGM', 'Soro tercerizado - 66', 'Soro'),
(621, 0, 'SAM.IGG.DB', 'SARAMPO IgG', 'Soro tercerizado - 66', 'Soro'),
(622, 0, 'SAM.IGM.DB', 'SARAMPO IgM', 'Soro tercerizado - 66', 'Soro'),
(623, 0, 'SCL70.DB', 'SCL 70, AUTO ANTICORPOS ANTI', 'Soro tercerizado - 66', 'Soro'),
(624, 0, 'SELENIO.DB', 'SELÊNIO SÉRICO', 'Soro metais terceirizado - 75', 'Soro'),
(625, 0, 'EXOMA.DB', 'SEQUENCIAMENTO COMPLETO DO EXOMA', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(626, 0, 'SEROTS.DB', 'SEROTONINA SÉRICA', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(627, 0, 'SIFTN.DB', 'SIFILIS NEONATAL', 'Papel filtro - 55', 'Sangue capilar'),
(628, 0, 'PRADM.DB', 'SÍNDROME DE PRADER-WILLI', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(629, 0, 'FSWB.DB', 'SÍNDROME DE WILLIAMS BEUREN (DEL 7Q11.23) - FISH', 'Sangue Total (Heparina) - 08', 'Sangue Total'),
(630, 0, 'SOD.URI.DB', 'SÓDIO URINARIO 24 HORAS', 'Urina 24h terceirizado - 105', 'Urina 24h'),
(631, 0, 'AMILOID.DB', 'SORO AMILÓIDE A', 'Soro tercerizado - 66', 'Soro'),
(632, 0, 'STREAG.DB', 'STREPTOCOCCUS AGALACTIAE (GRUPO B)', 'Diversos - 14', 'Diversos'),
(633, 0, 'SUBIGG.DB', 'SUBCLASSES DE IgG (IgG1, IgG2, IgG3, IgG4)', 'Soro tercerizado - 66', 'Soro'),
(634, 0, 'SB12A.DB', 'SUBCLASSES DE IMUNOGLOBULINA IGA 1 E 2', 'Soro tercerizado - 66', 'Soro'),
(635, 0, 'CD348.DB', 'SUBPOPULAÇÃO LINFOCITÁRIA CD3 - CD4 - CD8', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(636, 0, 'T3R.DB', 'T3 - TRIIODOTIRONINA REVERSO', 'Soro tercerizado - 66', 'Soro'),
(637, 0, 'T4NEO.PEZ', 'T4 NEONATAL', 'Papel filtro - 55', 'Sangue papel filtro'),
(638, 0, 'GLIGT.DB', 'TBG - GLOBULINA LIGADORA DE TIROXINA', 'Soro tercerizado - 66', 'Soro'),
(639, 0, 'TTRO.DB', 'TEMPO DE TROMBINA', 'Citrato - 01', 'Plasma citratado congelado'),
(640, 0, 'TADXI.DB', 'TESTE DE ABSORÇÃO DA D - XILOSE - 120 MINUTOS', 'Soro terceirizado - 28', 'Soro'),
(641, 0, 'SEXFE.DB', 'TESTE DE SEXAGEM FETAL', 'PPT - 83', 'Plasma EDTA ou Soro'),
(642, 0, 'PMCAD.DB', 'TESTE DO PEZINHO - MCAD', 'Papel filtro - 55', 'Sangue papel filtro'),
(643, 0, 'AMPLI.TRIA', 'TESTE DO PEZINHO AMPLIADO', 'Soro BQ - 02', 'Sangue papel filtro'),
(644, 0, 'AMPESP.TRI', 'TESTE DO PEZINHO AMPLIADO ESPECIAL', 'Soro BQ - 02', 'Sangue papel filtro'),
(645, 0, 'BASIC.TRIA', 'TESTE DO PEZINHO BÁSICO', 'Soro BQ - 02', 'Sangue papel filtro'),
(646, 0, 'BASESP.TRI', 'TESTE DO PEZINHO BÁSICO ESPECIAL', 'Soro BQ - 02', 'Sangue papel filtro'),
(647, 0, 'MAST.TRIA', 'TESTE DO PEZINHO MASTER', 'Papel filtro - 55', 'Sangue papel filtro'),
(648, 0, 'MASTHIV.TR', 'TESTE DO PEZINHO MASTER + HIV', 'Papel filtro - 55', 'Sangue papel filtro'),
(649, 0, 'PLUS.TRIA', 'TESTE DO PEZINHO PLUS', 'Soro BQ - 02', 'Sangue papel filtro'),
(650, 0, 'PLUSG6.TRI', 'TESTE DO PEZINHO PLUS + G6PD', 'Soro BQ - 02', 'Sangue papel filtro'),
(651, 0, 'PLUSES.TRI', 'TESTE DO PEZINHO PLUS ESPECIAL', 'Soro BQ - 02', 'Sangue papel filtro'),
(652, 0, 'LACTG.DB', 'TESTE GENÉTICO PARA LACTOSE', 'Diversos terceirizado - 150', 'Diversos'),
(653, 0, 'NIPT.DB', 'TESTE PRÉ-NATAL MOLECULAR - PAINEL 1', '', 'Sangue Total'),
(654, 0, 'TTB.DB', 'TESTOSTERONA BIODISPONIVEL (LIVRE CALCULADA)', 'Soro tercerizado - 66', 'Soro'),
(655, 0, 'TIREO.DB', 'TIREOGLOBULINA', 'Soro tercerizado - 66', 'Soro'),
(656, 0, 'TOPI.DB', 'TOPIRAMATO', 'Soro tercerizado - 66', 'Soro'),
(657, 0, 'TOXOCARA', 'TOXOCARA, ANTICORPOS IgG', 'Soro tercerizado - 66', 'Soro'),
(658, 0, 'AVITOX.DB', 'TOXOPLASMOSE - TESTE DE AVIDEZ IgG', 'Soro tercerizado - 66', 'Soro'),
(659, 0, 'TGPCR.DB', 'TOXOPLASMOSE DETECÇÃO POR PCR', 'Sangue EDTA terceirizado - 74', 'Diversos'),
(660, 0, 'ATOXIGM.PE', 'TOXOPLASMOSE NEONATAL - ANTICORPOS IGM', 'Papel filtro - 55', 'Sangue capilar'),
(661, 0, 'TPP.DB', 'TREPONEMA PALLIDUM - PESQUISA', 'Diversos - 14', 'Diversos'),
(662, 0, 'IRT.DB', 'TRIPSINA IMUNO REATIVA - FIBROSE CÍSTICA (IRT)', 'Papel filtro - 55', 'Sangue papel filtro'),
(663, 0, 'TRINEO.PEZ', 'TRIPSINA NEONATAL', 'Papel filtro - 55', 'Sangue papel filtro'),
(664, 0, 'TRIPT.DB', 'TRIPTASE', 'Soro tercerizado - 66', 'Soro'),
(665, 0, 'TWPCR.DB', 'TROPHERYMA WHIPPLEI DNA (DOENÇA WHIPPLE)', 'Diversos - 14', 'Diversos'),
(666, 0, 'TROPI.DB', 'TROPONINA CARDÍACA - I', 'Soro tercerizado - 66', 'Soro'),
(667, 0, 'TROPONINA', 'TROPONINA T', 'Soro tercerizado - 66', 'Soro'),
(668, 0, 'TSHNEO.PEZ', 'TSH NEONATAL', 'Papel filtro - 55', 'Sangue papel filtro'),
(669, 0, 'TRA.DB', 'TSH, ANTICORPO ANTI-RECEPTOR - TRAB', 'Soro terceirizado - 28', 'Soro'),
(670, 0, 'UUPCR', 'UREAPLASMA UREALYTICUM - DETECÇÃO POR PCR', 'Diversos - 14', 'Diversos'),
(671, 0, 'UROP.DB', 'UROPORFIRINAS', 'Urina recente - 07', 'Urina'),
(672, 0, 'VARZG.DB', 'VARICELA ZOSTER - ANTICORPOS IGG', 'Soro terceirizado - 28', 'Soro'),
(673, 0, 'VARZM.DB', 'VARICELA ZOSTER - ANTICORPOS IGM', 'Soro tercerizado - 66', 'Soro'),
(674, 0, 'VASO.DB', 'VASOPRESSINA - HORMONIO ANTIDIURETICO', 'Plasma EDTA - 121', 'Plasma EDTA congelado'),
(675, 0, 'VAGA.DB', 'VIGABATRINA (GAMA-VINIL GABA)', 'Soro terceirizado - 28', 'Soro'),
(676, 0, 'CHIKUN.DB', 'VIRUS CHIKUNGUNYA - DETECÇÃO POR PCR', 'Sangue EDTA terceirizado - 74', 'Diversos'),
(677, 0, 'ZIKAG.DB', 'ZIKA VIRUS ANTICORPOS IGG', 'Soro tercerizado - 66', 'Soro'),
(678, 0, 'ZIKAM.DB', 'ZIKA VIRUS ANTICORPOS IGM', 'Soro tercerizado - 66', 'Soro'),
(679, 0, 'ZNERI.DB', 'ZINCO ERITROCITÁRIO', 'Hepatina azul - 84', 'Sangue'),
(680, 0, 'ZINCO.DB', 'ZINCO SÉRICO', 'Soro metais terceirizado - 75', 'Soro'),
(681, 0, 'AENA.DB', 'ANTI - ENA PAINEL', 'Soro tercerizado - 66', 'Soro'),
(682, 0, 'ENDOIGM.DB', 'ANTI - ENDOMÍSIO - ANTICORPOS IGM', 'Soro tercerizado - 66', 'Soro'),
(683, 0, 'DNASCRE.DB', 'ANTI dsDNA SCREEN', 'Soro terceirizado - 28', 'Soro'),
(684, 0, 'TRANIGG.DB', 'ANTI- TRANSGLUTAMINASE TECIDUAL IGG', 'Soro tercerizado - 66', 'Soro'),
(685, 0, 'SLALP.DB', 'ANTICORPO ANTI ANTIGENO HEPATICO SOLUVEL FIGADO\'', 'Soro terceirizado - 28', 'Soro'),
(686, 0, 'ADNAB.DB', 'ANTICORPOS ANTI ESTREPTOCOCCUS [DNAASE B]', 'Soro tercerizado - 66', 'Soro'),
(687, 0, 'ENDIGA.DB', 'ANTI-ENDOMÍSIO - ANTICORPOS IGA', 'Soro terceirizado - 28', 'Soro'),
(688, 0, 'ENDOMI.DB', 'ANTI-ENDOMÍSIO - ANTICORPOS IGG', 'Soro tercerizado - 66', 'Soro'),
(689, 0, 'TRANIGA.DB', 'ANTI-TRANSGLUTAMINASE TECIDUAL IGA', 'Soro terceirizado - 28', 'Soro'),
(690, 0, 'FAN.DB', 'FAN - PESQUISA DE AUTOANTICORPOS ANTICÉLULA (Célula HEp-2)', 'Soro terceirizado - 28', 'Soro'),
(691, 0, 'AACH1.DB', 'LC-1 ANTICORPOS', 'Soro terceirizado - 28', 'Soro'),
(692, 0, 'PPRG.DB', 'PROTEÍNA P RIBOSSOMAL - ANTICORPOS IGG', 'Soro tercerizado - 66', 'Soro'),
(693, 0, 'RNP.DB', 'RNP, AUTO ANTICORPOS ANTI', 'Soro tercerizado - 66', 'Soro'),
(694, 0, 'SM.DB', 'SM, AUTO ANTICORPOS ANTI', 'Soro tercerizado - 66', 'Soro'),
(695, 0, 'SSAR.DB', 'SSA/RO, AUTO ANTICORPOS ANTI', 'Soro tercerizado - 66', 'Soro'),
(696, 0, 'SSBLA.DB', 'SSB/LA, AUTO ANTICORPOS ANTI', 'Soro tercerizado - 66', 'Soro'),
(697, 0, '17HPG.DB', '17 HIDROXIPREGNENOLONA', 'Soro tercerizado congelado- 80', 'Soro'),
(698, 0, 'ACFOSF.DB', 'ÁCIDO FOSFATÍDICO IGA, IGG E IGM', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(699, 0, 'AMALO.DB', 'ÁCIDO METILMALÔNICO', 'Urina recente terceir - 104', 'Urina'),
(700, 0, 'AMMALO.DB', 'ÁCIDO METILMALÔNICO SÉRICO', 'Soro tercerizado - 66', 'Soro'),
(701, 0, 'I4M3.DB', 'ANTICORPOS IMUNOGLOBULINA IGG4 ESPECIFICO - (M3) ASPERGILLUS', 'Soro tercerizado congelado- 80', 'Soro'),
(702, 0, 'FVOWR.DB', 'ATIVIDADE DE COFATOR RISTOCETINA DO FATOR DE VON WILLEBRAND', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(703, 0, 'FATXA.DB', 'FATOR ANTI-XA ATIVADO', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(704, 0, 'FVOWI.DB', 'FATOR DE VON WILLEBRAND', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(705, 0, 'FAT7.DB', 'FATOR VII', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(706, 0, 'FOSGLI.DB', 'FOSFATIDILGLICEROL IGA, IGG E IGM', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(707, 0, 'PTSL.DB', 'PROTEÍNA S LIVRE', 'Citrato terceirizado - 100', 'Plasma citratado'),
(708, 0, 'VITAH.DB', 'VITAMINA H (BIOTINA)', 'Soro tercerizado congelado- 80', 'Soro'),
(709, 0, '17OH.DB', '17 ALFA - HIDROXIPROGESTERONA', 'Soro terceirizado - 28', 'Soro'),
(710, 0, '17OHPOS.DB', '17 ALFA - HIDROXIPROGESTERONA APÓS ESTÍMULO', 'Soro tercerizado - 66', 'Soro'),
(711, 0, 'VIT25.DB', '25-HIDROXIVITAMINA D', 'Soro tercerizado - 66', 'Soro'),
(712, 0, 'ACFOL.DB', 'ÁCIDO FÓLICO', 'Soro tercerizado - 66', 'Soro'),
(713, 0, 'AFP.DB', 'ALFAFETOPROTEÍNA', 'Soro tercerizado - 66', 'Soro'),
(714, 0, 'HBCG.DB', 'ANTI HBC IgG - ANTI HEPATITE B', 'Soro tercerizado - 66', 'Soro'),
(715, 0, 'HBCM.DB', 'ANTI HBC IgM  - ANTI HEPATITE B', 'Soro tercerizado - 66', 'Soro'),
(716, 0, 'ANTIATG.DB', 'ANTICORPO ANTI-TIREOGLOBULINA', 'Soro tercerizado - 66', 'Soro'),
(717, 0, 'ANTITPO.DB', 'ANTICORPOS ANTI-PEROXIDASE (Anti-TPO)', 'Soro tercerizado - 66', 'Soro'),
(718, 0, 'PSA.DB', 'ANTÍGENO PROSTÁTICO ESPECÍFICO (PSA)', 'Soro tercerizado - 66', 'Soro'),
(719, 0, 'CA125.DB', 'CA 125', 'Soro tercerizado - 66', 'Soro'),
(720, 0, 'CEA.DB', 'CEA, ANTIGENO CARCINOEMBRIONARIO', 'Soro tercerizado - 66', 'Soro'),
(721, 0, 'CMVG.DB', 'CITOMEGALOVIRUS IGG', 'Soro tercerizado - 66', 'Soro'),
(722, 0, 'CORTIS2.DB', 'CORTISOL', 'Soro tercerizado - 66', 'Soro'),
(723, 0, 'CORTIS.DB', 'CORTISOL', 'Soro tercerizado - 66', 'Soro'),
(724, 0, 'CORTSAL.DB', 'CORTISOL SALIVAR - AMOSTRA NOITE', 'Saliva - 20', 'Saliva'),
(725, 0, 'CORTS.DB', 'CORTISOL SALIVAR - MANHÃ', 'Saliva - 20', 'Saliva'),
(726, 0, 'SDHEA.DB', 'DEHIDROEPIANDROSTERONA SULFATO - SDHEA', 'Soro tercerizado - 66', 'Soro'),
(727, 0, 'SDHEAPO.DB', 'DEHIDROEPIANDROSTERONA SULFATO APÓS ESTÍMULO', 'Soro tercerizado - 66', 'Soro'),
(728, 0, 'ESTRAD.DB', 'ESTRADIOL', 'Soro tercerizado - 66', 'Soro'),
(729, 0, 'ESTRIOL.DB', 'ESTRIOL', 'Soro tercerizado - 66', 'Soro'),
(730, 0, 'FERRITI.DB', 'FERRITINA', 'Soro tercerizado - 66', 'Soro'),
(731, 0, 'HGH.DB', 'HORMÔNIO DO CRESCIMENTO HUMANO - HGH', 'Soro tercerizado - 66', 'Soro'),
(732, 0, 'FSH.DB', 'HORMÔNIO FOLÍCULO ESTIMULANTE - FSH', 'Soro tercerizado - 66', 'Soro'),
(733, 0, 'LH.DB', 'HORMONIO LUTEINIZANTE - LH', 'Soro tercerizado - 66', 'Soro'),
(734, 0, 'TSH...DB', 'HORMÔNIO TIREOESTIMULANTE ULTRA-SENSSÍVEL - TSH', 'Soro tercerizado - 66', 'Soro'),
(735, 0, 'IGF1.DB', 'IGF-1 - SOMATOMEDINA C', 'Soro tercerizado - 66', 'Soro'),
(736, 0, 'IGFBP.DB', 'IGFBP-3 PROTEINA LIGADORA IGF-I TIPO 3', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(737, 0, 'IAL.DB', 'ÍNDICE DE ANDRÓGENOS LIVRES', 'Soro terceirizado - 28', 'Soro'),
(738, 0, 'INSULIN.DB', 'INSULINA', 'Soro tercerizado - 66', 'Soro'),
(739, 0, 'INS12.DB', 'INSULINA 120 MINUTOS', 'Soro terceirizado - 28', 'Soro'),
(740, 0, 'INS60.DB', 'INSULINA 60 MINUTOS', 'Soro terceirizado - 28', 'Soro'),
(741, 0, 'INSD.DB', 'INSULINA PÓS DEXTROSOL', 'Soro tercerizado - 66', 'Soro'),
(742, 0, 'INSPP.DB', 'INSULINA PÓS PRANDIAL', 'Soro tercerizado - 66', 'Soro'),
(743, 0, 'MELAT.DB', 'MELATONINA SÉRICA', 'Soro tercerizado - 66', 'Soro'),
(744, 0, 'PTH.DB', 'PARATORMONIO - PTH - MOLÉCULA INTACTA', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(745, 0, 'PROG.DB', 'PROGESTERONA', 'Soro tercerizado - 66', 'Soro'),
(746, 0, 'PROLAC.DB', 'PROLACTINA', 'Soro tercerizado - 66', 'Soro'),
(747, 0, 'PSALT.DB', 'PSA LIVRE / TOTAL', 'Soro tercerizado - 66', 'Soro'),
(748, 0, 'RUBEG.DB', 'RUBEOLA IGG', 'Soro tercerizado - 66', 'Soro'),
(749, 0, 'RUBEM.DB', 'RUBEOLA IGM', 'Soro tercerizado - 66', 'Soro'),
(750, 0, 'T3.DB', 'T3 TOTAL', 'Soro tercerizado - 66', 'Soro'),
(751, 0, 'T4T.DB', 'T4 TOTAL', 'Soro tercerizado - 66', 'Soro'),
(752, 0, 'TESBI.DB', 'TESTOSTERONA BIODISPONÍVEL', 'Soro tercerizado - 66', 'Soro'),
(753, 0, 'TESTL.DB', 'TESTOSTERONA LIVRE', 'Soro tercerizado - 66', 'Soro'),
(754, 0, 'TESTO.DB', 'TESTOSTERONA TOTAL', 'Soro tercerizado - 66', 'Soro'),
(755, 0, 'T4L.DB', 'TIROXINA LIVRE (T4 LIVRE)', 'Soro tercerizado - 66', 'Soro'),
(756, 0, 'TOXGI.DB', 'TOXOPLASMOSE - ANTICORPOS IGG (IFI)', 'Soro tercerizado - 66', 'Soro'),
(757, 0, 'TOXMI.DB', 'TOXOPLASMOSE - ANTICORPOS IGM (IFI)', 'Soro tercerizado - 66', 'Soro'),
(758, 0, 'TOXG.DB', 'TOXOPLASMOSE IGG', 'Soro tercerizado - 66', 'Soro'),
(759, 0, 'TOXM.DB', 'TOXOPLASMOSE IGM', 'Soro tercerizado - 66', 'Soro'),
(760, 0, 'T3L.DB', 'TRIIODOTIRONINA LIVRE (T3 LIVRE)', 'Soro tercerizado - 66', 'Soro'),
(761, 0, 'HVB12.DB', 'VITAMINA B12', 'Soro tercerizado - 66', 'Soro'),
(762, 0, 'AZITRO.DB', 'ANTICORPOS IGE ESPECIFICOS AZITROMICINA', 'Soro terceirizado - 28', 'Soro'),
(763, 0, 'IGEO215.DB', 'IGE ESPECÍFICO  - GALACTOSA-ALFA-1,3-GALACTOSA (O215)', 'Soro terceirizado - 28', 'Soro'),
(764, 0, 'IGEK208.DB', 'IGE ESPECÍFICO NGAL D 4 (K208) LISOZIMA', 'Soro tercerizado - 66', 'Soro'),
(765, 0, 'IGEK208.CE', 'IGE ESPECÍFICO NGAL D 4 (K208) LISOZIMA', 'Soro tercerizado - 66', 'Soro'),
(766, 0, 'IGEK20.DB', 'IGE ESPECÍFICO OCUPACIONAIS - LÃ (K20)', 'Soro tercerizado - 66', 'Diversos'),
(767, 0, 'IGED70.CEN', 'IGE ESPECÍFICO PARA ÁCAROS - ACARUS SIRO (D70)', 'Soro tercerizado - 66', 'Soro'),
(768, 0, 'IGED70.DB', 'IGE ESPECÍFICO PARA ÁCAROS - ACARUS SIRO (D70)', 'Soro tercerizado - 66', 'Soro'),
(769, 0, 'IGED201.CE', 'IGE ESPECÍFICO PARA ÁCAROS - BLOMIA TROPICALIS (D201)', 'Soro tercerizado - 66', 'Soro'),
(770, 0, 'IGED2.CENT', 'IGE ESPECÍFICO PARA ÁCAROS - DERMATOPHAGO FARINAE (D2)', 'Soro tercerizado - 66', 'Soro'),
(771, 0, 'IGED202.DB', 'IGE ESPECÍFICO PARA ÁCAROS - DERMATOPHAGO PTERONYSSINUS', 'Soro tercerizado - 66', 'Soro'),
(772, 0, 'IGED1.CENT', 'IGE ESPECÍFICO PARA ÁCAROS - DERMATOPHAGO PTERONYSSINUS (D1)', 'Soro tercerizado - 66', 'Soro'),
(773, 0, 'IGED205.DB', 'IGE ESPECÍFICO PARA ÁCAROS - TROPOMIOSINA (D205)', 'Soro tercerizado - 66', 'Soro congelado'),
(774, 0, 'IGEF105.DB', 'IGE ESPECÍFICO PARA ALIMENTOS  - CHOCOLATE (F105)', 'Soro tercerizado - 66', 'Soro'),
(775, 0, 'IGEK71.DB', 'IGE ESPECÍFICO PARA ALIMENTOS -  MAMONA/FEIJÃO KASTOR (K71)', 'Soro tercerizado - 66', 'Soro'),
(776, 0, 'IGEF96.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - ABACATE (F96)', 'Soro tercerizado - 66', 'Soro'),
(777, 0, 'IGEF96.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - ABACATE (F96)', 'Soro tercerizado - 66', 'Soro'),
(778, 0, 'IGEF210.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - ABACAXI (F210)', 'Soro tercerizado - 66', 'Soro'),
(779, 0, 'IGEF210.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - ABACAXI (F210)', 'Soro tercerizado - 66', 'Soro'),
(780, 0, 'IGEF85.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - AIPO (F85)', 'Soro tercerizado - 66', 'Soro'),
(781, 0, 'IGEF76.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - ALFA LACTOALBUMINA (F76)', 'Soro tercerizado - 66', 'Soro'),
(782, 0, 'IGEF47.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - ALHO (F47)', 'Soro tercerizado - 66', 'Soro'),
(783, 0, 'IGEF20.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - AMÊNDOA (F20)', 'Soro tercerizado - 66', 'Soro'),
(784, 0, 'IGEF13.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - AMENDOIM (F13)', 'Soro tercerizado - 66', 'Soro'),
(785, 0, 'IGEF9.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - ARROZ (F9)', 'Soro tercerizado - 66', 'Soro'),
(786, 0, 'IGEF9.CENT', 'IGE ESPECÍFICO PARA ALIMENTOS - ARROZ (F9)', 'Soro tercerizado - 66', 'Soro'),
(787, 0, 'IGEF7.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - AVEIA (F7)', 'Soro tercerizado - 66', 'Soro'),
(788, 0, 'IGEF92.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - BANANA (F92)', 'Soro tercerizado - 66', 'Soro'),
(789, 0, 'IGEF92.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - BANANA (F92)', 'Soro tercerizado - 66', 'Soro'),
(790, 0, 'IGEF35.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - BATATA (F35)', 'Soro tercerizado - 66', 'Soro'),
(791, 0, 'IGEF54.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - BATATA DOCE (F54)', 'Soro tercerizado - 66', 'Soro'),
(792, 0, 'IGEF77.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - BETA LACTOGLOBULINA (F77)', 'Soro tercerizado - 66', 'Soro'),
(793, 0, 'IGEF319.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - BETERRABA (F319)', 'Soro tercerizado - 66', 'Soro'),
(794, 0, 'IGEF260.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - BRÓCOLIS (F260)', 'Soro tercerizado - 66', 'Soro'),
(795, 0, 'IGEF97.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - CACAU (F97)', 'Soro tercerizado - 66', 'Soro'),
(796, 0, 'IGEF221.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - CAFÉ (F221)', 'Soro tercerizado - 66', 'Soro'),
(797, 0, 'IGEF202.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - CAJÚ (F202)', 'Soro tercerizado - 66', 'Soro'),
(798, 0, 'IGEF24.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - CAMARÃO (F24)', 'Soro tercerizado - 66', 'Soro'),
(799, 0, 'IGEF24.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - CAMARÃO (F24)', 'Soro tercerizado - 66', 'Soro'),
(800, 0, 'IGEF220.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - CANELA (F220)', 'Soro terceirizado - 28', 'Soro'),
(801, 0, 'IGEF23.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - CARANGUEJO - SIRI (F23)', 'Soro tercerizado - 66', 'Soro'),
(802, 0, 'IGEF23.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - CARANGUEJO - SIRI (F23)', 'Soro tercerizado - 66', 'Soro'),
(803, 0, 'IGEF88.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - CARNE DE CARNEIRO (F88)', 'Soro terceirizado - 28', 'Soro'),
(804, 0, 'IGEF83.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - CARNE DE FRANGO (F83)', 'Soro tercerizado - 66', 'Soro'),
(805, 0, 'IGEF284.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - CARNE DE PERU (F284)', 'Soro tercerizado - 66', 'Soro'),
(806, 0, 'IGEF27.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - CARNE DE VACA (F27)', 'Soro tercerizado - 66', 'Soro'),
(807, 0, 'IGEF78.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - CASEÍNA (F78)', 'Soro tercerizado - 66', 'Soro'),
(808, 0, 'IGEF299.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - CASTANHA (F299)', 'Soro tercerizado - 66', 'Soro'),
(809, 0, 'IGEF202.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - CASTANHA DE CAJU (F202)', 'Soro tercerizado - 66', 'Soro'),
(810, 0, 'IGEF18.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - CASTANHA DO PARÁ (F18)', 'Soro tercerizado - 66', 'Soro'),
(811, 0, 'IGEF50.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - CAVALINHA (F50)', 'Soro terceirizado - 28', 'Soro'),
(812, 0, 'IGEF48.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - CEBOLA (F48)', 'Soro tercerizado - 66', 'Soro'),
(813, 0, 'IGEF48.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - CEBOLA (F48)', 'Soro tercerizado - 66', 'Soro'),
(814, 0, 'IGEF31.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - CENOURA (F31)', 'Soro tercerizado - 66', 'Soro'),
(815, 0, 'IGEF31.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - CENOURA (F31)', 'Soro tercerizado - 66', 'Soro'),
(816, 0, 'IGEF5.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - CENTEIO (F5)', 'Soro tercerizado - 66', 'Soro'),
(817, 0, 'IGEF1.CENT', 'IGE ESPECÍFICO PARA ALIMENTOS - CLARA DE OVO (F1)', 'Soro tercerizado - 66', 'Soro'),
(818, 0, 'IGEF36.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - COCO (F36)', 'Soro tercerizado - 66', 'Soro'),
(819, 0, 'IGEF265.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - COMINHO (CARUM CARVI) (F265)', 'Soro terceirizado - 28', 'Soro'),
(820, 0, 'IGEF12.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - ERVILHA (F12)', 'Soro tercerizado - 66', 'Soro'),
(821, 0, 'IGEF214', 'IGE ESPECÍFICO PARA ALIMENTOS - ESPINAFRE (F214)', 'Soro tercerizado - 66', 'Soro'),
(822, 0, 'IGEF15.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - FEIJÃO BRANCO (F15)', 'Soro tercerizado - 66', 'Soro'),
(823, 0, 'IGEF315.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - FEIJÃO VERDE (F315)', 'Soro tercerizado - 66', 'Soro'),
(824, 0, 'IGEF287.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - FEIJÃO VERMELHO (F287)', 'Soro tercerizado - 66', 'Soro'),
(825, 0, 'IGEF75.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - GEMA DE OVO (F75)', 'Soro tercerizado - 66', 'Soro'),
(826, 0, 'IGEF75.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - GEMA DE OVO (F75)', 'Soro tercerizado - 66', 'Soro'),
(827, 0, 'IGEF10.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - GERGELIM (F10)', 'Soro tercerizado - 66', 'Soro'),
(828, 0, 'IGEF79.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - GLÚTEN (F79)', 'Soro tercerizado - 66', 'Soro'),
(829, 0, 'IGEF292.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - GOIABA (F292)', 'Soro tercerizado - 66', 'Soro'),
(830, 0, 'IGEF84.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - KIWI (F84)', 'Soro tercerizado - 66', 'Soro'),
(831, 0, 'IGEF80.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - LAGOSTA (F80)', 'Soro tercerizado - 66', 'Soro'),
(832, 0, 'IGEF33.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - LARANJA (F33)', 'Soro tercerizado - 66', 'Soro'),
(833, 0, 'IGEF2.CENT', 'IGE ESPECÍFICO PARA ALIMENTOS - LEITE (F2)', 'Soro tercerizado - 66', 'Soro'),
(834, 0, 'IGEF2.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - LEITE (F2)', 'Soro tercerizado - 66', 'Soro'),
(835, 0, 'IGEF300.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - LEITE DE CABRA (F300)', 'Soro tercerizado - 66', 'Soro'),
(836, 0, 'IGEF231.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - LEITE FERVIDO (F231)', 'Soro tercerizado - 66', 'Soro'),
(837, 0, 'IGEF45.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - LEVEDURA - FERMENTO (F45)', 'Soro tercerizado - 66', 'Soro'),
(838, 0, 'IGEF208.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - LIMÃO SICILIANO (F208)', 'Soro tercerizado - 66', 'Soro'),
(839, 0, 'IGEF333.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - LINHAÇA (F333)', 'Soro tercerizado - 66', 'Soro'),
(840, 0, 'IGEF49.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - MAÇÃ (F49)', 'Soro tercerizado - 66', 'Soro'),
(841, 0, 'IGEF49.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - MAÇÃ (F49)', 'Soro tercerizado - 66', 'Soro'),
(842, 0, 'IGEF91.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - MANGA (F91)', 'Soro tercerizado - 66', 'Soro'),
(843, 0, 'IGEF91.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - MANGA (F91)', 'Soro tercerizado - 66', 'Soro'),
(844, 0, 'IGEF294.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - MARACUJÁ (F294)', 'Soro tercerizado - 66', 'Soro'),
(845, 0, 'IGEF247.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - MEL (F247)', 'Soro terceirizado - 28', 'Soro'),
(846, 0, 'IGEF329.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - MELANCIA (F329)', 'Soro tercerizado - 66', 'Soro'),
(847, 0, 'IGEF87.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - MELÃO (F87)', 'Soro tercerizado - 66', 'Soro'),
(848, 0, 'IGEF87.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - MELÃO (F87)', 'Soro tercerizado - 66', 'Soro'),
(849, 0, 'IGEF8.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - MILHO (F8)', 'Soro tercerizado - 66', 'Soro'),
(850, 0, 'IGEF8.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - MILHO (F8)', 'Soro tercerizado - 66', 'Soro'),
(851, 0, 'IGEF44.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - MORANGO (F44)', 'Soro tercerizado - 66', 'Soro'),
(852, 0, 'IGEF44.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - MORANGO (F44)', 'Soro tercerizado - 66', 'Soro'),
(853, 0, 'IGEF256.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - NOZES (F256)', 'Soro tercerizado - 66', 'Soro'),
(854, 0, 'IGEF245.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - OVO (F245)', 'Soro tercerizado - 66', 'Soro'),
(855, 0, 'IGEF232.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - OVOALBUMINA (F232)', 'Soro tercerizado - 66', 'Soro'),
(856, 0, 'IGEF232.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - OVOALBUMINA (F232)', 'Soro tercerizado - 66', 'Soro'),
(857, 0, 'IGEF233.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - OVOMUCÓIDE (F233)', 'Soro tercerizado - 66', 'Soro'),
(858, 0, 'IGEF233.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - OVOMUCÓIDE (F233)', 'Soro tercerizado - 66', 'Soro'),
(859, 0, 'IGEF218.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - PÁPRICA/PIMENTÃO (F218)', 'Soro tercerizado - 66', 'Soro'),
(860, 0, 'IGEF40.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - PEIXE - ATUM (F40)', 'Soro tercerizado - 66', 'Soro'),
(861, 0, 'IGEF414.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - PEIXE - TILÁPIA (F414)', 'Soro tercerizado - 66', 'Soro'),
(862, 0, 'IGEF244.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - PEPINO (F244)', 'Soro tercerizado - 66', 'Soro'),
(863, 0, 'IGEF94.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - PÊRA (F94)', 'Soro terceirizado - 28', 'Soro'),
(864, 0, 'IGEF94.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - PÊRA (F94)', 'Soro terceirizado - 28', 'Soro'),
(865, 0, 'IGEF279.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - PIMENTA CHILI (F279)', 'Soro tercerizado - 66', 'Soro'),
(866, 0, 'IGEF280.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - PIMENTA PRETA ( F280)', 'Soro tercerizado - 66', 'Soro'),
(867, 0, 'IGEF280.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - PIMENTA PRETA ( F280)', 'Soro tercerizado - 66', 'Soro'),
(868, 0, 'IGEF203.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - PISTACHE (F203)', 'Soro tercerizado - 66', 'Soro'),
(869, 0, 'IGEF81.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - QUEIJO CHEDDAR (F81)', 'Soro tercerizado - 66', 'Soro'),
(870, 0, 'IGEF82.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - QUEIJO GORGONZOLA (F82)', 'Soro tercerizado - 66', 'Soro'),
(871, 0, 'IGEF41.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - SALMÃO (F41)', 'Soro tercerizado - 66', 'Soro'),
(872, 0, 'IGEF308.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - SARDINHA (F308)', 'Soro tercerizado - 66', 'Soro'),
(873, 0, 'IGEF14.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - SOJA ( F14)', 'Soro tercerizado - 66', 'Soro'),
(874, 0, 'IGEF14.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - SOJA ( F14)', 'Soro tercerizado - 66', 'Soro'),
(875, 0, 'IGEF302.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - TANGERINA (F302)', 'Soro tercerizado - 66', 'Soro'),
(876, 0, 'IGEF25.CEN', 'IGE ESPECÍFICO PARA ALIMENTOS - TOMATE (F25)', 'Soro tercerizado - 66', 'Soro'),
(877, 0, 'IGEF4.CENT', 'IGE ESPECÍFICO PARA ALIMENTOS - TRIGO (F4)', 'Soro tercerizado - 66', 'Soro'),
(878, 0, 'IGEF259.CE', 'IGE ESPECÍFICO PARA ALIMENTOS - UVA (F259)', 'Soro tercerizado - 66', 'Soro'),
(879, 0, 'IGEF259.DB', 'IGE ESPECÍFICO PARA ALIMENTOS - UVA (F259)', 'Soro tercerizado - 66', 'Soro'),
(880, 0, 'IGEC279.DB', 'IGE ESPECÍFICO PARA CORANTE - TARTRAZINA - AMARELO (C279)', 'Soro tercerizado - 66', 'Soro'),
(881, 0, 'IGEF340.CE', 'IGE ESPECÍFICO PARA CORANTE - VERMELHO CARMIM (F340)', 'Soro tercerizado - 66', 'Soro'),
(882, 0, 'IGEC209.DB', 'IGE ESPECÍFICO PARA DROGAS -  PARACETAMOL (C209)', 'Soro tercerizado - 66', 'Soro'),
(883, 0, 'IGEC207.DB', 'IGE ESPECÍFICO PARA DROGAS - ÁCIDO ACETILSALICILICO (C207)', 'Soro tercerizado - 66', 'Soro'),
(884, 0, 'IGEC6.DB', 'IGE ESPECÍFICO PARA DROGAS - AMOXILINA (C6)', 'Soro tercerizado - 66', 'Soro'),
(885, 0, 'IGEC5.DB', 'IGE ESPECÍFICO PARA DROGAS - AMPICILINA (C5)', 'Soro tercerizado - 66', 'Soro'),
(886, 0, 'IGEC231.DB', 'IGE ESPECÍFICO PARA DROGAS - ARTICAINA (C231)', 'Soro congelado - 216', 'Soro'),
(887, 0, 'IGEC285.DB', 'IGE ESPECÍFICO PARA DROGAS - BUPIVACAINA (C285)', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(888, 0, 'IGEC7.DB', 'IGE ESPECÍFICO PARA DROGAS - CEFACLOR (C7)', 'Soro tercerizado - 66', 'Soro congelado'),
(889, 0, 'IGEC309.DB', 'IGE ESPECÍFICO PARA DROGAS - CEFALEXINA (C309)', 'Soro tercerizado - 66', 'Soro'),
(890, 0, 'IGEC307.DB', 'IGE ESPECÍFICO PARA DROGAS - CIPROFLOXACINA (C307)', 'Soro tercerizado - 66', 'Soro'),
(891, 0, 'IGEC281.DB', 'IGE ESPECÍFICO PARA DROGAS - DICLOFENACO (C281)', 'Soro tercerizado - 66', 'Soro'),
(892, 0, 'IGEC294.DB', 'IGE ESPECÍFICO PARA DROGAS - DIPIRONA / METAMIZOL (C294)', 'Soro tercerizado - 66', 'Soro'),
(893, 0, 'IGEC212.DB', 'IGE ESPECÍFICO PARA DROGAS - ERITROMICINA (C212)', 'Soro tercerizado - 66', 'Soro'),
(894, 0, 'IGEC286.DB', 'IGE ESPECÍFICO PARA DROGAS - IBUPROFENO (C286)', 'Soro tercerizado - 66', 'Soro'),
(895, 0, 'IGEC616.DB', 'IGE ESPECÍFICO PARA DROGAS - IODO', 'Soro tercerizado - 66', 'Soro congelado'),
(896, 0, 'IGEC233.DB', 'IGE ESPECÍFICO PARA DROGAS - MEPIVACAÍNA (C233)', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(897, 0, 'IGEC260.DB', 'IGE ESPECÍFICO PARA DROGAS - MORFINA (C260)', 'Soro tercerizado - 66', 'Soro'),
(898, 0, 'IGEC1.DB', 'IGE ESPECÍFICO PARA DROGAS - PENICILINA G (C1)', 'Soro tercerizado - 66', 'Soro'),
(899, 0, 'IGEC2.DB', 'IGE ESPECÍFICO PARA DROGAS - PENICILINA V (C2)', 'Soro tercerizado - 66', 'Soro'),
(900, 0, 'IGEC234.DB', 'IGE ESPECÍFICO PARA DROGAS - PRILOCAÍNA (C234)', 'Soro tercerizado congelado- 80', 'Soro congelado'),
(901, 0, 'IGEC301', 'IGE ESPECÍFICO PARA DROGAS - RIFAMPICINA (C301)', 'Soro tercerizado - 66', 'Soro'),
(902, 0, 'IGEC232.DB', 'IGE ESPECÍFICO PARA DROGAS - XILOCAÍNA / LIDOCAÍNA (C232)', 'Soro tercerizado - 66', 'Soro'),
(903, 0, 'IGEC204.DB', 'IGE ESPECÍFICO PARA DROGAS- AMOXILINA (C204)', 'Soro tercerizado - 66', 'Soro'),
(904, 0, 'IGEC8.DB', 'IGE ESPECÍFICO PARA DROGAS- CLORHEXIDINA (C8)', 'Soro tercerizado - 66', 'Soro'),
(905, 0, 'IGEC206.DB', 'IGE ESPECÍFICO PARA DROGAS- HORMÔNIO ADRENOCORTICO ACTH C206', 'Soro tercerizado - 66', 'Soro'),
(906, 0, 'IGEC202.DB', 'IGE ESPECÍFICO PARA DROGAS- SUXAMETHONIUM (C202)', 'Soro tercerizado - 66', 'Soro congelado'),
(907, 0, 'IGEE5.DB', 'IGE ESPECÍFICO PARA EPITÉLIOS - CASPA DE CACHORRO (E5)', 'Soro tercerizado - 66', 'Soro'),
(908, 0, 'IGEE5.CENT', 'IGE ESPECÍFICO PARA EPITÉLIOS - CASPA DE CACHORRO (E5)', 'Soro tercerizado - 66', 'Soro'),
(909, 0, 'IGEE1.CENT', 'IGE ESPECÍFICO PARA EPITÉLIOS - CASPA DE GATO (E1)', 'Soro tercerizado - 66', 'Soro'),
(910, 0, 'IGEE81.DB', 'IGE ESPECÍFICO PARA EPITÉLIOS - EPITÉLIO DE CARNEIRO (E81)', 'Soro tercerizado - 66', 'Soro'),
(911, 0, 'IGEE82.DB', 'IGE ESPECÍFICO PARA EPITÉLIOS - PÊLO DE COELHO (E82)', 'Soro tercerizado - 66', 'Soro'),
(912, 0, 'IGEE84.DB', 'IGE ESPECÍFICO PARA EPITÉLIOS - PÊLO DE HAMSTER (E84)', 'Soro tercerizado - 66', 'Soro'),
(913, 0, 'IGEE85.DB', 'IGE ESPECÍFICO PARA EPITÉLIOS - PENA DE GALINHA (E85)', 'Soro tercerizado - 66', 'Soro'),
(914, 0, 'IGEE213.DB', 'IGE ESPECÍFICO PARA EPITÉLIOS - PENA DE PAPAGAIO (E213)', 'Soro tercerizado - 66', 'Soro'),
(915, 0, 'IGEW5.DB', 'IGE ESPECÍFICO PARA ERVAS DANINHAS - ABSINTO (W5)', 'Soro tercerizado - 66', 'Soro'),
(916, 0, 'IGEW6.DB', 'IGE ESPECÍFICO PARA ERVAS DANINHAS - ARTEMÍSIA (W6)', 'Soro tercerizado - 66', 'Soro'),
(917, 0, 'IGEF287.CE', 'IGE ESPECÍFICO PARA FEIJÃO VERMELHO (F287)', 'Soro tercerizado - 66', 'Soro'),
(918, 0, 'IGEO201.DB', 'IGE ESPECÍFICO PARA FIBRAS - FOLHA DE TABACO (O201)', 'Soro tercerizado - 66', 'Soro'),
(919, 0, 'IGEM6.DB', 'IGE ESPECÍFICO PARA FUNGOS - ALTERNARIA ALTERNATA (M6)', 'Soro tercerizado - 66', 'Soro'),
(920, 0, 'IGEM3.DB', 'IGE ESPECÍFICO PARA FUNGOS - ASPERGILLUS FUMIGATUS (M3)', 'Soro tercerizado - 66', 'Soro'),
(921, 0, 'IGEM207.DB', 'IGE ESPECÍFICO PARA FUNGOS - ASPERGILLUS NIGER (M207)', 'Soro tercerizado - 66', 'Soro'),
(922, 0, 'IGEG2.DB', 'IGE ESPECÍFICO PARA GRAMÍNEAS - GRAMA DAS BERMUDAS', 'Soro tercerizado - 66', 'Soro'),
(923, 0, 'IGEI1.CENT', 'IGE ESPECÍFICO PARA INSETOS - ABELHA (I1)', 'Soro tercerizado - 66', 'Soro'),
(924, 0, 'IGEI1.DB', 'IGE ESPECÍFICO PARA INSETOS - ABELHA (I1)', 'Soro tercerizado - 66', 'Soro'),
(925, 0, 'IGEI6.CENT', 'IGE ESPECÍFICO PARA INSETOS - BARATA (I6)', 'Soro tercerizado - 66', 'Soro'),
(926, 0, 'IGEI206.DB', 'IGE ESPECÍFICO PARA INSETOS - BARATA VERMELHA  (I206)', 'Soro tercerizado - 66', 'Soro'),
(927, 0, 'IGEI70.CEN', 'IGE ESPECÍFICO PARA INSETOS - FORMIGA DE FOGO (I70)', 'Soro tercerizado - 66', 'Soro'),
(928, 0, 'IGEI4.DB', 'IGE ESPECÍFICO PARA INSETOS - MARIMBONDO (I4)', 'Soro tercerizado - 66', 'Soro'),
(929, 0, 'IGEI4.CENT', 'IGE ESPECÍFICO PARA INSETOS - MARIMBONDO (I4)', 'Soro tercerizado - 66', 'Soro'),
(930, 0, 'IGEI204.DB', 'IGE ESPECÍFICO PARA INSETOS - TABANUS (MOSCA MUTUCA)  (I204)', 'Soro tercerizado - 66', 'Soro'),
(931, 0, 'IGEI3.DB', 'IGE ESPECÍFICO PARA INSETOS - VESPA CAPA AMARELA (I3)', 'Soro tercerizado - 66', 'Soro'),
(932, 0, 'IGEI3.CENT', 'IGE ESPECÍFICO PARA INSETOS - VESPA CAPA AMARELA (I3)', 'Soro tercerizado - 66', 'Soro'),
(933, 0, 'IGEI71.CEN', 'IGE ESPECÍFICO PARA INSETOS- MOSQUITO COMUM-PERNILONGO (I71)', 'Soro tercerizado - 66', 'Soro'),
(934, 0, 'IGEO1.DB', 'IGE ESPECÍFICO PARA OCUPACIONAIS - ALGODÃO (O1)', 'Soro tercerizado - 66', 'Soro'),
(935, 0, 'IGEPK77.DB', 'IGE ESPECÍFICO PARA OCUPACIONAIS - ISOCIANATO HDI (K77)', 'Soro tercerizado - 66', 'Soro'),
(936, 0, 'IGEPK76.DB', 'IGE ESPECÍFICO PARA OCUPACIONAIS - ISOCIANATO MDI (K76)', 'Soro tercerizado - 66', 'Soro'),
(937, 0, 'IGEPK75.DB', 'IGE ESPECÍFICO PARA OCUPACIONAIS - ISOCIANATO TDI (K75)', 'Soro tercerizado - 66', 'Soro'),
(938, 0, 'IGEK82.DB', 'IGE ESPECÍFICO PARA OCUPACIONAIS - LÁTEX (K82)', 'Soro tercerizado - 66', 'Soro'),
(939, 0, 'IGEK78.DB', 'IGE ESPECÍFICO PARA OCUPACIONAIS - ÓXIDO DE ETILENOL', 'Soro tercerizado - 66', 'Soro'),
(940, 0, 'IGEK84.DB', 'IGE ESPECÍFICO PARA OCUPACIONAIS - SEMENTE DE GIRASSOL (K84)', 'Soro tercerizado - 66', 'Soro'),
(941, 0, 'IGEK80.DB', 'IGE ESPECÍFICO PARA OCUPACIONAIS-FORMALINA/FORMALDEIDO (K80)', 'Soro tercerizado - 66', 'Soro'),
(942, 0, 'IGEH1.DB', 'IGE ESPECÍFICO PARA PÓ CASEIRO - GREER LABORATORIES', 'Soro tercerizado - 66', 'Soro'),
(943, 0, 'IGEH1.CENT', 'IGE ESPECÍFICO PARA PÓ CASEIRO - GREER LABORATORIES', 'Soro tercerizado - 66', 'Soro'),
(944, 0, 'IGET19.DB', 'IGE ESPECÍFICO PARA PÓLENS DE ÁRVORES - ACÁCIA', 'Soro tercerizado - 66', 'Soro'),
(945, 0, 'IGET3.DB', 'IGE ESPECÍFICO PARA PÓLENS DE ÁRVORES - VIDOEIRO (T3)', 'Soro tercerizado - 66', 'Soro'),
(946, 0, 'IGEPT3.DB', 'IGE ESPECÍFICO PARA PÓLENS DE ÁRVORES - VIDOEIRO/BETULA (T3)', 'Soro tercerizado - 66', 'Soro'),
(947, 0, 'IGEF416.DB', 'IGE ESPECÍFICO PARA RTRI A 19; OMEGA-5 GLIADINA (F416)', 'Soro tercerizado - 66', 'Soro'),
(948, 0, 'IGEF351.DB', 'IGE ESPECÍFICO PARA TROPOMIOSINA RECOMBINANTE CAMARÃO  (F351', 'Soro tercerizado - 66', 'Soro'),
(949, 0, 'IGEF293.CE', 'IGE ESPECÍFICO PARAALIMENTOS - MAMÃO PAPAIA (F293)', 'Soro tercerizado - 66', 'Soro'),
(950, 0, 'IGEF293.DB', 'IGE ESPECÍFICO PARAALIMENTOS - MAMÃO PAPAIA (F293)', 'Soro tercerizado - 66', 'Soro'),
(951, 0, 'IGEFX2.CE', 'IGE MÚLTIPLO (FX2) - PEIXE E FRUTOS DO MAR', 'Soro tercerizado - 66', 'Soro'),
(952, 0, 'IGEEX72.CE', 'IGE PAINEL (EX72) - PENAS', 'Soro tercerizado - 66', 'Soro'),
(953, 0, 'IGEFX16.DB', 'IGE PAINEL (FX16) - ALIMENTOS', 'Soro tercerizado - 66', 'Soro'),
(954, 0, 'IGEFX18', 'IGE PAINEL (FX18) - ALIMENTOS', 'Soro tercerizado - 66', 'Soro congelado'),
(955, 0, 'IGEFX17.DB', 'IGE PAINEL (FX7) - ALIMENTOS', 'Soro tercerizado - 66', 'Soro'),
(956, 0, 'IGEFX8.DB', 'IGE PAINEL (FX8) - ALIMENTOS', 'Soro tercerizado - 66', 'Soro'),
(957, 0, 'IGEGX2.DB', 'IGE PAINEL (GX2) - GRAMÍNEAS', 'Soro tercerizado - 66', 'Soro'),
(958, 0, 'IGEHX1.DB', 'IGE PAINEL (HX1) - POEIRA', 'Soro tercerizado - 66', 'Soro'),
(959, 0, 'IGEIX1.DB', 'IGE PAINEL (IX1) - INALANTES', 'Soro terceirizado - 28', 'Soro'),
(960, 0, 'IGEHX2.CEN', 'IGE PAINEL PARA ÁCAROS - PÓ CASEIRO (HX2)', 'Soro tercerizado - 66', 'Soro'),
(961, 0, 'IGEFX20.DB', 'IGE PAINEL PARA ALIMENTOS (FX20)', 'Soro tercerizado - 66', 'Soro'),
(962, 0, 'IGEFX5.CEN', 'IGE PAINEL PARA ALIMENTOS (FX5)', 'Soro tercerizado - 66', 'Soro'),
(963, 0, 'IGEEX1.CEN', 'IGE PAINEL PARA EPITÉLIO - ANIMAIS (EX1)', 'Soro tercerizado - 66', 'Soro'),
(964, 0, 'IGEEX2.DB', 'IGE PAINEL PARA EPITÉLIOS (EX2)', 'Soro tercerizado - 66', 'Soro'),
(965, 0, 'IGEEX2.CEN', 'IGE PAINEL PARA EPITÉLIOS (EX2)', 'Soro tercerizado - 66', 'Soro'),
(966, 0, 'IGEMX1.CEN', 'IGE PAINEL PARA FUNGOS (MX1)', 'Soro tercerizado - 66', 'Soro'),
(967, 0, 'IGEMX2.CEN', 'IGE PAINEL PARA FUNGOS (MX2)', 'Soro tercerizado - 66', 'Soro'),
(968, 0, 'IGEGX1.CEN', 'IGE PAINEL PARA GRAMÍNEAS (GX1)', 'Soro tercerizado - 66', 'Soro'),
(969, 0, 'IGEGX2.CEN', 'IGE PAINEL PARA GRAMÍNEAS (GX2)', 'Soro tercerizado - 66', 'Soro'),
(970, 0, 'IGEGX3.DB', 'IGE PAINEL PARA GRAMÍNEAS (GX3)', 'Soro tercerizado - 66', 'Soro'),
(971, 0, 'IGEGX4.CEN', 'IGE PAINEL PARA GRAMÍNEAS (GX4)', 'Soro tercerizado - 66', 'Soro'),
(972, 0, 'IGEGX6.DB', 'IGE PAINEL PARA GRAMÍNEAS (GX6)', 'Soro tercerizado - 66', 'Soro'),
(973, 0, 'IGETX1.DB', 'IGE PAINEL PARA PÓLEN DE ÁRVORE 1 (TX1)', 'Soro tercerizado - 66', 'Soro'),
(974, 0, 'IGETX3.DB', 'IGE PAINEL PARA PÓLEN DE ÁRVORE 3 (TX3)', 'Soro terceirizado - 28', 'Soro'),
(975, 0, 'IGETX4.DB', 'IGE PAINEL PARA PÓLEN DE ÁRVORE 4 (TX4)', 'Soro terceirizado - 28', 'Soro'),
(976, 0, 'IGETX5.DB', 'IGE PAINEL PARA PÓLEN DE ÁRVORE 5 (TX5)', 'Soro terceirizado - 28', 'Soro'),
(977, 0, 'IGETX6.DB', 'IGE PAINEL PARA PÓLEN DE ÁRVORE 6 (TX6)', 'Soro terceirizado - 28', 'Soro'),
(978, 0, 'IGETX7.DB', 'IGE PAINEL PARA PÓLEN DE ÁRVORE 7 (TX7)', 'Soro terceirizado - 28', 'Soro'),
(979, 0, 'IGETX8.DB', 'IGE PAINEL PARA PÓLEN DE ÁRVORE 8 (TX8)', 'Soro terceirizado - 28', 'Soro'),
(980, 0, 'IGETX9.DB', 'IGE PAINEL PARA PÓLENS (TX9)', 'Soro tercerizado - 66', 'Soro'),
(981, 0, 'IGET.DB', 'IGE TOTAL', 'Soro terceirizado - 28', 'Soro'),
(982, 0, 'OH17NEO.PE', '17 ALFA-OH-PROGESTERONA NEONATAL', 'Papel filtro - 55', 'Sangue papel filtro'),
(983, 0, '25HXD.DB', '2,5 HEXANODIONA URINÁRIA FINAL DE JORNADA', 'Urina final da jornada - 238', 'Urina final de jornada de trabalho'),
(984, 0, '25HXI.DB', '2,5 HEXANODIONA URINÁRIA INÍCIO DE JORNADA', 'Urina Inicio de Jornada - 112', 'Urina início da jornada de trabalho'),
(985, 0, 'AH.DB', 'ÁCIDO HIPÚRICO FINAL DE JORNADA DE TRABALHO', 'Urina final da jornada - 238', 'Urina'),
(986, 0, 'AHI.DB', 'ÁCIDO HIPÚRICO INÍCIO DE JORNADA DE TRABALHO', 'Urina Inicio de Jornada - 112', 'Urina'),
(987, 0, 'AMH.DB', 'ÁCIDO METILHIPÚRICO FINAL DA JORNADA DE TRABALHO', 'Urina final da jornada - 238', 'Urina recente'),
(988, 0, 'AMHI.DB', 'ÁCIDO METILHIPÚRICO INÍCIO DE JORNADA DE TRABALHO', 'Urina Recente Bioquímica - 63', 'Urina recente'),
(989, 0, 'ATRA.DB', 'ÁCIDO TRANS, TRANS MUCÔNICO', 'Urina recente terceir - 104', 'Urina'),
(990, 0, 'ATRAI.DB', 'ÁCIDO TRANS,TRANS MUCÔNICO INÍCIO DE JORNADA', 'Urina Recente Bioquímica - 63', 'Urina início da jornada de trabalho'),
(991, 0, 'CADIN.DB', 'CÁDMIO URINA INÍCIO DE JORNADA DE TRABALHO', 'Urina Inicio de Jornada - 112', 'Urina'),
(992, 0, 'CROMU.DB', 'CROMO URINÁRIO FINAL DE JORNADA DE TRABALHO', 'Urina final da jornada - 238', 'Urina'),
(993, 0, 'CROMI.DB', 'CROMO URINÁRIO INÍCIO DE JORNADA DE TRABALHO', 'Urina Recente Bioquímica - 63', 'Urina'),
(994, 0, 'FENU.DB', 'FENOL URINÁRIO FINAL DE JORNADA DE TRABALHO', 'Urina final da jornada - 238', 'Urina final de jornada de trabalho'),
(995, 0, 'FENUI.DB', 'FENOL URINÁRIO INÍCIO DE JORNADA DE TRABALHO', 'Urina Inicio de Jornada - 112', 'Urina início da jornada de trabalho'),
(996, 0, 'METU.DB', 'METANOL URINÁRIO FINAL DE JORNADA DE TRABALHO', 'Urina final da jornada - 238', 'Urina'),
(997, 0, 'METUI.DB', 'METANOL URINÁRIO INÍCIO DE JORNADA DE TRABALHO', 'Urina Recente Bioquímica - 63', 'Urina'),
(998, 0, 'PTU12.DB', 'PROTEINURIA 12 HORAS', 'Urina 12h - 39', 'Urina 12h'),
(999, 0, 'SRU.DB', 'SUBSTÂNCIAS REDUTORAS - URINA', 'Urina recente terceir - 104', 'Urina recente'),
(1000, 0, 'ACVAM.DB', 'ÁCIDO VANIL MANDÉLICO', 'Urina 24h com Bicarbonato - 42', 'Urina 24h Consert. HCL 25%'),
(1001, 0, 'BICARU.DB', 'BICARBONATO URINA', 'Urina 24h terceirizado - 105', 'Urina 24h'),
(1002, 0, 'CAD24.DB', 'CADMIO - URINA 24 HORAS', 'Urina 24h terceirizado - 105', 'Urina 24h'),
(1003, 0, 'GLIUT.DB', 'GLICOSE URINÁRIA 24 HORAS', 'Urina 24h terceirizado - 105', 'Urina 24h'),
(1004, 0, 'VITMA.DB', 'VITAMINA A (RETINOL)', 'Soro protegido da luz - 76', 'Soro congelado'),
(1005, 0, 'VITB1.DB', 'VITAMINA B1 (TIAMINA)', 'Sangue EDTA protegido luz - 77', 'Sangue total  EDTA'),
(1006, 0, 'VITB2.DB', 'VITAMINA B2 (RIBOFLAVINA)', 'Sangue EDTA protegido luz - 77', 'Sangue total  EDTA'),
(1007, 0, 'VITB3.DB', 'VITAMINA B3 (NIACINA)', 'Soro protegido da luz - 76', 'Soro'),
(1008, 0, 'VITB5.DB', 'VITAMINA B5 (ÁCIDO PANTOTÊNICO)', 'Soro tercerizado - 66', 'Soro congelado'),
(1009, 0, 'VITB6.DB', 'VITAMINA B6 (PIRIDOXINA)', 'Sangue EDTA protegido luz - 77', 'Sangue Total'),
(1010, 0, 'VITC.DB', 'VITAMINA C (ÁCIDO ASCÓRBICO)', 'Plasma heparina protegido - 78', 'Plasma - congelado/protegido da luz'),
(1011, 0, 'VITE.DB', 'VITAMINA E (TOCOFEROL)', 'Soro protegido da luz - 76', 'Soro'),
(1012, 0, 'VITK.DB', 'VITAMINA K-1 (FILOQUINONA)', 'Soro protegido da luz - 76', 'Soro congelado'),
(1013, 0, 'BAG', 'COLETA DE BAG', 'Diversos - 14', 'Diversos'),
(1014, 0, 'T4T.CENTRA', 'T4 TOTAL', 'Soro tercerizado - 66', 'Soro'),
(1015, 0, 'DNA.DUO', 'DNA (INVESTIGACAO DE PATERNIDADE) - DUO', 'Sangue total (citrato) - 04', 'Sangue'),
(1016, 0, 'DNA.TRIO', 'DNA (INVESTIGACAO DE PATERNIDADE) - TRIO', 'Sangue total (citrato) - 04', 'Sangue'),
(1017, 0, 'DNARECONS', 'DNA PATERNIDADE ( RECONSTITUIÇÃO )', 'Sangue total (citrato) - 04', 'Sangue'),
(1018, 0, 'RECP2P.DB', 'ESPÓLIO COM AVÓS PATERNOS - FILHO(A) REQUERENTE IMPRESSO', 'Papel filtro - 55', 'SANGUE OU SALIVA EM FTA'),
(1019, 0, 'RECP1P.DB', 'ESPÓLIO COM AVÓS PATERNOS -FILHO (A) REQUER. E MÃE IMPRESSO', 'Papel filtro - 55', 'SANGUE OU SALIVA EM FTA'),
(1020, 0, 'RECP5P.DB', 'ESPÓLIOS COM ATÉ 2 PARENTES DO SUPOSTO PAI + MÃE', 'Papel filtro - 55', 'SANGUE OU SALIVA EM FTA'),
(1021, 0, 'RECP4P.DB', 'ESPÓLIOS COM MÍNIMO DE 3 PARENTES DO SUPOSTO PAI IMPRESSO', 'Papel filtro - 55', 'SANGUE OU SALIVA EM FTA'),
(1022, 0, 'TPF1', 'TESTE DE PATERNIDADE 1 FILHO(A) EXTRA', '', 'Sangue capilar'),
(1023, 0, 'TPF2', 'TESTE DE PATERNIDADE 2 FILHO(A) EXTRA', '', 'Sangue capilar'),
(1024, 0, 'PATPN.DB', 'TESTE DE PATERNIDADE PRÉ-NATAL', 'Diversos - 14', 'Diversos'),
(1025, 0, 'CARIO.DIVE', 'CARIÓTIPO MOLECULAR DE ALTA RESOLUÇÃO', 'Diversos - 14', 'Diversos'),
(1026, 0, 'ACP.ACL', 'ANTICOAGULANTE LÚPICO', 'Citrato - 01', 'Plasma'),
(1027, 0, 'COAG.', 'COAGULOGRAMA COMPLETO', 'Citrato + EDTA - 72', 'Sangue total (citrato)'),
(1028, 0, 'FIB', 'FIBRINOGÊNIO', 'Citrato - 56', 'Plasma'),
(1029, 0, 'RETRACAO', 'RETRAÇÃO DO COAGULO', 'Soro BQ - 02', 'Sangue Total'),
(1030, 0, 'SAM.IGM.HP', 'SARAMPO IgM', 'Soro terceirizado - 28', 'Soro'),
(1031, 0, 'SCL70.HP', 'SCL 70, AUTO ANTICORPOS ANTI', 'Soro tercerizado - 66', 'Soro'),
(1032, 0, 'COD', 'COOMBS DIRETO', 'Sangue total (EDTA) - 36', 'Sangue total  EDTA'),
(1033, 0, 'COI', 'COOMBS INDIRETO', 'Soro HM - 68', 'Soro'),
(1034, 0, 'ABO', 'GRUPO SANGUINEO E FATOR RH', 'Sangue total (EDTA) - 36', 'Sangue total  EDTA'),
(1035, 0, 'VHS', 'VELOCIDADE DE HEMOSSEDIMENTAÇÃO', 'Sangue total (EDTA) - 36', 'Sangue total  EDTA'),
(1036, 0, 'VHS2HORAS', 'VELOCIDADE DE HEMOSSEDIMENTAÇÃO ( 2 HORAS )', 'Sangue total (citrato) - 04', 'Sangue total (EDTA)'),
(1037, 0, 'RETICULOCI', 'CONTAGEM DE RETICULÓCITOS', 'Sangue total (EDTA) - 36', 'Sangue total  EDTA'),
(1038, 0, 'FALCI', 'FALCIZAÇÃO DAS HEMACIAS', 'Sangue total (EDTA) - 36', 'Sangue total (EDTA)'),
(1039, 0, 'HGB', 'HEMOGLOBINA', 'Sangue total (citrato) - 04', 'Sangue total (EDTA)'),
(1040, 0, 'PESQ.ACANT', 'PESQUISA DE ACANTÓCITOS', 'Sangue total (EDTA) - 36', 'Sangue total (EDTA)'),
(1041, 0, 'DRE', 'PESQUISA DE DREPANÓCITOS', 'Soro BQ - 02', 'Sangue total (EDTA)'),
(1042, 0, 'HEMPAR', 'PESQUISA DE HEMOPARASITOSES', 'Lâmina - 71', 'Sangue'),
(1043, 0, 'PLASMODIUM', 'PESQUISA DE PLASMODIUM', 'Sangue total (citrato) - 04', 'Sangue Total'),
(1044, 0, 'GOTA.ESPES', 'PROTOZOARIOS, PESQUISA DIRETA', 'Diversos - 14', 'Sangue total (EDTA)'),
(1045, 0, 'PROVLAÇO', 'PROVA DO LAÇO', '', 'Diversos'),
(1046, 0, 'ROTI.LIQ', 'ROTINA - LCR', 'Urina 24h Sem conservante - 81', 'LÍQUOR'),
(1047, 0, 'TC', 'TEMPO DE COAGULACAO', 'Papel filtro - 55', 'Sangue Total'),
(1048, 0, 'TSIVY', 'TEMPO DE SAGRAMENTO', 'Sangue total (citrato) - 04', 'Sangue'),
(1049, 0, 'TS', 'TEMPO DE SANGRAMENTO', 'Papel filtro - 55', 'Sangue'),
(1050, 0, 'PLA', 'CONTAGEM DE PLAQUETAS', 'Sangue total (citrato) - 04', 'Sangue'),
(1051, 0, 'ERI', 'ERITROGRAMA', 'Sangue total (EDTA) - 36', 'Sangue'),
(1052, 0, 'HTC', 'HEMATÓCRITO', 'Sangue total (citrato) - 04', 'Sangue'),
(1053, 0, 'HEMO.AUT', 'HEMOGRAMA AUTOMATIZADO', 'Sangue total (EDTA) - 36', 'Sangue total  EDTA'),
(1054, 0, 'HEMO.CITRA', 'HEMOGRAMA AUTOMATIZADO', 'Sangue total (citrato) - 04', 'Sangue total (citrato)'),
(1055, 0, 'HEMO.CAO.', 'HEMOGRAMA AUTOMATIZADO - VETERINÁRIO (CACHORRO)', 'Sangue total (EDTA) - 36', 'Sangue total  EDTA'),
(1056, 0, 'HEM.D30', 'HEMOGRAMA COMPLETO - 30 MINUTOS DE DESCANSO', 'Sangue total (EDTA) - 36', 'Sangue total  EDTA'),
(1057, 0, 'LEUCO', 'LEUCOGRAMA', 'Sangue total (EDTA) - 36', 'Sangue total  EDTA'),
(1058, 0, 'TPAE.ACL', 'TEMPO DE PROTROMBINA', 'Citrato - 01', 'Plasma'),
(1059, 0, 'TTP', 'TEMPO DE TROMBOPLASTINA PARCIAL', 'Citrato - 01', 'Plasma'),
(1060, 0, 'X', 'x', 'Sangue total (EDTA) - 36', 'Sangue total  EDTA'),
(1061, 0, 'DNASCRE.HP', 'ANTI dsDNA SCREEN', 'Soro terceirizado - 28', 'Soro'),
(1062, 0, 'HBCG.HP', 'ANTI HBC IgG - ANTI HEPATITE B', 'Soro tercerizado - 66', 'Soro'),
(1063, 0, 'HBCM.HP', 'ANTI HBC IgM  - ANTI HEPATITE B', 'Soro tercerizado - 66', 'Soro'),
(1064, 0, 'TRASNGG.HP', 'ANTI- TRANSGLUTAMINASE TECIDUAL IGG', 'Soro tercerizado - 66', 'Soro'),
(1065, 0, 'CARDIGA.HP', 'ANTI-CARDIOLIPINA IgA', 'Soro tercerizado - 66', 'Soro'),
(1066, 0, 'CARDIGG.HP', 'ANTI-CARDIOLIPINA IgG', 'Soro tercerizado - 66', 'Soro'),
(1067, 0, 'CARDIGM.HP', 'ANTI-CARDIOLIPINA IgM', 'Soro tercerizado - 66', 'Soro'),
(1068, 0, 'ANTITPO.HP', 'ANTICORPOS ANTI-PEROXIDASE (Anti-TPO)', 'Soro tercerizado - 66', 'Soro'),
(1069, 0, 'APN.HP', 'ANTICORPOS IGG ANTI SOROTIPOS DE PNEUMOCOCOS', 'Soro terceirizado - 28', 'Soro'),
(1070, 0, 'TRASNGA.HP', 'ANTI-TRANSGLUTAMINASE TECIDUAL IGA', 'Soro terceirizado - 28', 'Soro'),
(1071, 0, 'BORG.HP', 'BORDETELLA - ANTICORPOS IGG', 'Soro terceirizado - 28', 'Soro'),
(1072, 0, 'BORM.HP', 'BORDETELLA - ANTICORPOS IGM', 'Soro terceirizado - 28', 'Soro'),
(1073, 0, 'CELUNK.HP', 'CÉLULAS NK - CD16/CD56', 'Sangue EDTA terceirizado - 87', 'Sangue total  EDTA'),
(1074, 0, 'CMVG.HP', 'CITOMEGALOVIRUS IGG', 'Soro tercerizado - 66', 'Soro'),
(1075, 0, 'CMVM.HP', 'CITOMEGALOVIRUS IGM', 'Soro tercerizado - 66', 'Soro'),
(1076, 0, 'CITRATO.HP', 'CITRATO URINÁRIO (ÁCIDO CÍTRICO)', 'Urina 24h com Bicarbonato - 42', 'Urina 24h'),
(1077, 0, 'C1Q.HP', 'COMPLEMENTO C1q', 'Soro tercerizado - 66', 'Soro'),
(1078, 0, 'C9.HP', 'COMPLEMENTO C9', 'Soro terceirizado - 28', 'Soro'),
(1079, 0, 'CRIO.HP', 'CRIOGLOBULINAS - PESQUISA', 'Soro tercerizado - 66', 'Soro'),
(1080, 0, 'DIMERO.HP', 'D - DÍMERO', 'Citrato terceirizado - 100', 'Plasma citratado congelado'),
(1081, 0, 'CCH50.HP', 'DOSAGEM DO COMPLEMENTO DO CH - 50', 'Soro tercerizado congelado- 80', 'Soro'),
(1082, 0, 'EBVG.HP', 'EPSTEIN BAAR IgG - ANTICPORPOS ANTI-ANTIGENOS', 'Soro tercerizado - 66', 'Soro'),
(1083, 0, 'EBVM.HP', 'EPSTEIN BAAR IgM - ANTICORPOS ANTI-ANTIGENOS', 'Soro tercerizado - 66', 'Soro'),
(1084, 0, 'ESTUDO', 'ESTUDO CITOGENETICO', 'Diversos - 14', 'Diversos'),
(1085, 0, 'EVEROLI.HP', 'EVEROLIMUS', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(1086, 0, 'FAN.HP', 'FAN - PESQUISA DE AUTOANTICORPOS ANTICÉLULA (Célula HEp-2)', 'Soro terceirizado - 28', 'Soro');
INSERT INTO `exemesac` (`idExamesac`, `idBancada`, `identifexameac`, `descricaoexameac`, `tuboexameac`, `materialexameac`) VALUES
(1087, 0, 'FAT12.HP', 'FATOR XII DA COAGULACAO', 'Citrato terceirizado - 100', 'Plasma citratado'),
(1088, 0, 'CD19.HP', 'FENOTIPAGEM PARA LINFÓCITOS B - CD19', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(1089, 0, 'G6PD.HP', 'GLICOSE 6-FOSFATO DEHIDROGENASE', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(1090, 0, 'HBSAG.HP', 'HBsAg - ANTIGENO SUPERFÍCIE HEPATITE B', 'Soro tercerizado - 66', 'Soro'),
(1091, 0, 'HPA.HP', 'HELICOBACTER PYLORI - ANTICORPOS IGA', 'Soro terceirizado - 28', 'Soro'),
(1092, 0, 'HPAG.HP', 'HELICOBACTER PYLORI - ANTICORPOS IGG', 'Soro terceirizado - 28', 'Soro'),
(1093, 0, 'HPAM.HP', 'HELICOBACTER PYLORI - ANTICORPOS IGM', 'Soro terceirizado - 28', 'Soro'),
(1094, 0, 'HVAG.HP', 'HEPATITE A - ANTI - HVA IGG', 'Soro tercerizado - 66', 'Soro'),
(1095, 0, 'HVAM.HP', 'HEPATITE A - IgM', 'Soro tercerizado - 66', 'Soro'),
(1096, 0, 'HCVAB.HP', 'HEPATITE C - ANTI - HCV', 'Soro terceirizado - 28', 'Soro'),
(1097, 0, 'HERPESG.HP', 'HERPESVIRUS SIMPLES I E II IGG', 'Soro tercerizado - 66', 'Soro'),
(1098, 0, 'HERPESM.HP', 'HERPESVIRUS SIMPLES I E II IGM', 'Soro tercerizado - 66', 'Soro'),
(1099, 0, 'IGED201.HP', 'IGE ESPECÍFICO PARA ÁCAROS - BLOMIA TROPICALIS (D201)', 'Soro tercerizado - 66', 'Soro'),
(1100, 0, 'IGED2.HP', 'IGE ESPECÍFICO PARA ÁCAROS - DERMATOPHAGO FARINAE (D2)', 'Soro tercerizado - 66', 'Soro'),
(1101, 0, 'IGED1.HP', 'IGE ESPECÍFICO PARA ÁCAROS - DERMATOPHAGO PTERONYSSINUS (D1)', 'Soro tercerizado - 66', 'Soro'),
(1102, 0, 'IGEF76.HP', 'IGE ESPECÍFICO PARA ALIMENTOS - ALFA LACTOALBUMINA (F76)', 'Soro tercerizado - 66', 'Soro'),
(1103, 0, 'IGEF13.HP', 'IGE ESPECÍFICO PARA ALIMENTOS - AMENDOIM (F13)', 'Soro tercerizado - 66', 'Soro'),
(1104, 0, 'IGEF92.HP', 'IGE ESPECÍFICO PARA ALIMENTOS - BANANA (F92)', 'Soro tercerizado - 66', 'Soro'),
(1105, 0, 'IGEF77.HP', 'IGE ESPECÍFICO PARA ALIMENTOS - BETA LACTOGLOBULINA (F77)', 'Soro tercerizado - 66', 'Soro'),
(1106, 0, 'IGEF24.HP', 'IGE ESPECÍFICO PARA ALIMENTOS - CAMARÃO (F24)', 'Soro tercerizado - 66', 'Soro'),
(1107, 0, 'IGEF78.HP', 'IGE ESPECÍFICO PARA ALIMENTOS - CASEÍNA (F78)', 'Soro tercerizado - 66', 'Soro'),
(1108, 0, 'IGEF2.HP', 'IGE ESPECÍFICO PARA ALIMENTOS - LEITE (F2)', 'Soro tercerizado - 66', 'Soro'),
(1109, 0, 'IGEF245.HP', 'IGE ESPECÍFICO PARA ALIMENTOS - OVO (F245)', 'Soro tercerizado - 66', 'Soro'),
(1110, 0, 'IGEF280.HP', 'IGE ESPECÍFICO PARA ALIMENTOS - PIMENTA PRETA ( F280)', 'Soro tercerizado - 66', 'Soro'),
(1111, 0, 'IGEF14.HP', 'IGE ESPECÍFICO PARA ALIMENTOS - SOJA ( F14)', 'Soro tercerizado - 66', 'Soro'),
(1112, 0, 'IGEF4.HP', 'IGE ESPECÍFICO PARA ALIMENTOS - TRIGO (F4)', 'Soro tercerizado - 66', 'Soro'),
(1113, 0, 'IGEC207.HP', 'IGE ESPECÍFICO PARA DROGAS - ÁCIDO ACETILSALICILICO (C207)', 'Soro tercerizado - 66', 'Soro'),
(1114, 0, 'IGEC294.HP', 'IGE ESPECÍFICO PARA DROGAS - DIPIRONA / METAMIZOL (C294)', 'Soro tercerizado - 66', 'Soro'),
(1115, 0, 'IGEE5.HP', 'IGE ESPECÍFICO PARA EPITÉLIOS - CASPA DE CACHORRO (E5)', 'Soro tercerizado - 66', 'Soro'),
(1116, 0, 'IGEE1.HP', 'IGE ESPECÍFICO PARA EPITÉLIOS - CASPA DE GATO (E1)', 'Soro tercerizado - 66', 'Soro'),
(1117, 0, 'IGEM3.HP', 'IGE ESPECÍFICO PARA FUNGOS - ASPERGILLUS FUMIGATUS (M3)', 'Soro tercerizado - 66', 'Soro'),
(1118, 0, 'IGEI1.HP', 'IGE ESPECÍFICO PARA INSETOS - ABELHA (I1)', 'Soro tercerizado - 66', 'Soro'),
(1119, 0, 'IGEI6.HP', 'IGE ESPECÍFICO PARA INSETOS - BARATA (I6)', 'Soro tercerizado - 66', 'Soro'),
(1120, 0, 'IGEI206.HP', 'IGE ESPECÍFICO PARA INSETOS - BARATA VERMELHA  (I206)', 'Soro tercerizado - 66', 'Soro'),
(1121, 0, 'IGEI70.HP', 'IGE ESPECÍFICO PARA INSETOS - FORMIGA DE FOGO (I70)', 'Soro tercerizado - 66', 'Soro'),
(1122, 0, 'IGEI3.HP', 'IGE ESPECÍFICO PARA INSETOS - VESPA CAPA AMARELA (I3)', 'Soro tercerizado - 66', 'Soro'),
(1123, 0, 'IGEI71.HP', 'IGE ESPECÍFICO PARA INSETOS- MOSQUITO COMUM-PERNILONGO (I71)', 'Soro tercerizado - 66', 'Soro'),
(1124, 0, 'IGEK82.HP', 'IGE ESPECÍFICO PARA OCUPACIONAIS - LÁTEX (K82)', 'Soro tercerizado - 66', 'Soro'),
(1125, 0, 'IGEF416.HP', 'IGE ESPECÍFICO PARA RTRI A 19; OMEGA-5 GLIADINA (F416)', 'Soro tercerizado - 66', 'Soro'),
(1126, 0, 'IGEEX17.HP', 'IGE PAINEL EPTÉLIOS  (EX17)', 'Soro tercerizado - 66', 'Soro'),
(1127, 0, 'IGEHX2.HP', 'IGE PAINEL PARA ÁCAROS - PÓ CASEIRO (HX2)', 'Soro tercerizado - 66', 'Soro'),
(1128, 0, 'IGEEX1.HP', 'IGE PAINEL PARA EPITÉLIO - ANIMAIS (EX1)', 'Soro tercerizado - 66', 'Soro'),
(1129, 0, 'IGEMX1.HP', 'IGE PAINEL PARA FUNGOS (MX1)', 'Soro tercerizado - 66', 'Soro'),
(1130, 0, 'IGEGX1.HP', 'IGE PAINEL PARA GRAMÍNEAS (GX1)', 'Soro tercerizado - 66', 'Soro'),
(1131, 0, 'IGEGX2.HP', 'IGE PAINEL PARA GRAMÍNEAS (GX2)', 'Soro tercerizado - 66', 'Soro'),
(1132, 0, 'IGET.HP', 'IGE TOTAL', 'Soro tercerizado - 66', 'Soro'),
(1133, 0, 'IGD.HP', 'IMUNOGLOBULINA IGD', 'Soro terceirizado - 28', 'Sangue'),
(1134, 0, 'C1SEIF.HP', 'INIBIDOR DE C1 ESTERASE FUNCIONAL', 'Citrato terceirizado - 100', 'Plasma citratado'),
(1135, 0, 'C1-EST.HP', 'INIBIDOR DE C1 ESTERASE QUANTITATIVO', 'Soro tercerizado congelado- 80', 'Soro'),
(1136, 0, 'MINERA.HP', 'MINERALOGRAMA', 'Diversos - 14', 'Diversos'),
(1137, 0, 'PEIMT.HP', 'PAINEL DE ERROS INATOS DO METABOLISMO (TRATÁVEIS)', 'Sangue EDTA terceirizado - 74', 'Sangue total  EDTA'),
(1138, 0, 'RUBEG.HP', 'RUBEOLA IGG', 'Soro tercerizado - 66', 'Soro'),
(1139, 0, 'RUBEM.HP', 'RUBEOLA IGM', 'Soro tercerizado - 66', 'Soro'),
(1140, 0, 'SAM.IGG.HP', 'SARAMPO IgG', 'Soro terceirizado - 28', 'Soro'),
(1141, 0, 'AMILOID.HP', 'SORO AMILÓIDE A', 'Soro tercerizado - 66', 'Soro'),
(1142, 0, 'CD348.HP', 'SUBPOPULAÇÃO LINFOCITÁRIA CD3 - CD4 - CD8', 'Sangue EDTA terceirizado - 74', 'Sangue Total'),
(1143, 0, 'GENLACT.HP', 'TESTE GENÉTICO PARA LACTOSE', 'Diversos - 14', 'Diversos'),
(1144, 0, 'LACTG.HP', 'TESTE GENÉTICO PARA LACTOSE', 'Diversos - 14', 'Diversos'),
(1145, 0, 'TLIVC', 'TESTOSTERONA LIVRE CALCULADA', 'Soro terceirizado - 28', 'Soro'),
(1146, 0, 'TOXG.HP', 'TOXOPLASMOSE IGG', 'Soro tercerizado - 66', 'Soro'),
(1147, 0, 'TOXM.HP', 'TOXOPLASMOSE IGM', 'Soro tercerizado - 66', 'Soro'),
(1148, 0, 'TRIPT.HP', 'TRIPTASE', 'Soro tercerizado - 66', 'Soro'),
(1149, 0, 'TRA.HP', 'TSH, ANTICORPO ANTI-RECEPTOR - TRAB', 'Soro terceirizado - 28', 'Soro'),
(1150, 0, 'VIT25', '25-OH-VITAMINA D', 'Imuno-Hormônios - 50', 'Soro'),
(1151, 0, 'HFOLICO', 'ACIDO FOLICO NAS HEMACIAS ( Eritrocitário )', 'Sangue total (EDTA) - 36', 'Sangue'),
(1152, 0, 'PSA', 'ANTÍGENO PROSTÁTICO ESPECÍFICO (PSA)', 'Imuno-Hormônios - 50', 'Soro'),
(1153, 0, 'BHCG.QT', 'BHCG QUANTITATIVO', 'Imuno-Hormônios - 50', 'Soro'),
(1154, 0, 'CA125', 'CA 125', 'Imuno-Hormônios - 50', 'Soro'),
(1155, 0, 'CEA.LAMIC', 'CEA, ANTIGENO CARCINOEMBRIONARIO', 'Imuno-Hormônios - 50', 'Soro'),
(1156, 0, 'CMGIGM', 'CITOMEGALOVIRUS IGM', 'Imuno-Hormônios - 50', 'Soro'),
(1157, 0, 'CORT.ESTI', 'CORTISOL APOS ESTÍMULO', 'Imuno-Hormônios - 50', 'Soro'),
(1158, 0, 'SDHEA.', 'DEHIDROEPIANDROSTERONA SULFATO - SDHEA', 'Imuno-Hormônios - 50', 'Soro'),
(1159, 0, 'ESTRA', 'ESTRADIOL ( E2-6 III)', 'Imuno-Hormônios - 50', 'Soro'),
(1160, 0, 'FERRITINA', 'FERRITINA', 'Imuno-Hormônios - 50', 'Soro'),
(1161, 0, 'GASOART.CE', 'GASOMETRIA ARTERIAL', 'Sangue arterial - 233', 'Sangue arterial'),
(1162, 0, 'GASOVEN.CE', 'GASOMETRIA VENOSA', 'Sangue arterial - 233', 'Sangue venoso'),
(1163, 0, 'HGH', 'HORMÔNIO DO CRESCIMENTO HUMANO - (HGH)', 'Imuno-Hormônios - 50', 'Soro'),
(1164, 0, 'HGH.ESTIM', 'HORMONIO SOMATOTROFINA (HGH)', 'Imuno-Hormônios - 50', 'Soro'),
(1165, 0, 'TSH.ESTIM', 'HORMONIO TIREOESTIMULANTE (TSH)', 'Imuno-Hormônios - 50', 'Soro'),
(1166, 0, 'INSULINA', 'INSULINA ULTRASENSITIVE', 'Imuno-Hormônios - 50', 'Soro'),
(1167, 0, 'PSA LIVRE', 'PSA LIVRE', 'Imuno-Hormônios - 50', 'Soro'),
(1168, 0, 'PSALT', 'PSA LIVRE / TOTAL', 'Imuno-Hormônios - 50', 'Soro'),
(1169, 0, 'RUBIGG', 'RUBEOLA IGG', 'Imuno-Hormônios - 50', 'Soro'),
(1170, 0, 'TOXOIGM', 'TOXOPLASMOSE IGM', 'Imuno-Hormônios - 50', 'Soro'),
(1171, 0, 'HVB12', 'VITAMINA B12', 'Imuno-Hormônios - 50', 'Soro'),
(1172, 0, 'TSH', 'HORMÔNIO TIREOESTIMULANTE ULTRA-SENSSÍVEL (TSH )', 'Imuno-Hormônios - 50', 'Soro'),
(1173, 0, 'T4L', 'TIROXINA LIVRE (T4 LIVRE)', 'Imuno-Hormônios - 50', 'Soro'),
(1174, 0, 'T4T', 'TIROXINA TOTAL (T4 TOTAL)', 'Imuno-Hormônios - 50', 'Soro'),
(1175, 0, 'FSH', 'HORMÔNIO FOLÍCULO ESTIMULANTE (FSH)', 'Imuno-Hormônios - 50', 'Soro'),
(1176, 0, 'FSH.ESTIM', 'HORMÔNIO FOLÍCULO ESTIMULANTE (FSH) APOS ESTIMULO', 'Imuno-Hormônios - 50', 'Soro'),
(1177, 0, 'LH', 'HORMONIO LUTEINIZANTE (LH)', 'Imuno-Hormônios - 50', 'Soro'),
(1178, 0, 'LHAPOS', 'HORMONIO LUTEINIZANTE (LH) APOS ESTIMULO', 'Imuno-Hormônios - 50', 'Soro'),
(1179, 0, 'PROG', 'PROGESTERONA', 'Imuno-Hormônios - 50', 'Soro'),
(1180, 0, 'PROLACTINA', 'PROLACTINA', 'Imuno-Hormônios - 50', 'Soro'),
(1181, 0, 'TEST.TOTAL', 'TESTOSTERONA TOTAL', 'Imuno-Hormônios - 50', 'Soro'),
(1182, 0, 'ALER', 'ALERGOGRAMA MAST', 'Imuno-Hormônios - 50', 'Soro'),
(1183, 0, 'IGED201', 'IGE ESPECÍFICO PARA ÁCAROS - BLOMIA TROPICALIS (D201)', 'Imuno-Hormônios - 50', 'Soro'),
(1184, 0, 'IGED2', 'IGE ESPECÍFICO PARA ÁCAROS - DERMATOPHAGO FARINAE (D2)', 'Imuno-Hormônios - 50', 'Soro'),
(1185, 0, 'IGEF76', 'IGE ESPECÍFICO PARA ALIMENTOS - ALFA LACTOALBUMINA (F76)', 'Imuno-Hormônios - 50', 'Soro'),
(1186, 0, 'IGEF13', 'IGE ESPECÍFICO PARA ALIMENTOS - AMENDOIM (F13)', 'Imuno-Hormônios - 50', 'Soro'),
(1187, 0, 'IGEF17', 'IGE ESPECÍFICO PARA ALIMENTOS - AVELÃ (F17)', 'Imuno-Hormônios - 50', 'Soro'),
(1188, 0, 'IGEF77', 'IGE ESPECÍFICO PARA ALIMENTOS - BETA LACTOGLOBULINA (F77)', 'Imuno-Hormônios - 50', 'Soro'),
(1189, 0, 'IGEF97', 'IGE ESPECÍFICO PARA ALIMENTOS - CACAU (F97)', 'Imuno-Hormônios - 50', 'Soro'),
(1190, 0, 'IGEF27', 'IGE ESPECÍFICO PARA ALIMENTOS - CARNE DE BOI (F27)', 'Imuno-Hormônios - 50', 'Soro'),
(1191, 0, 'IGEF83', 'IGE ESPECÍFICO PARA ALIMENTOS - CARNE DE FRANGO (F83)', 'Imuno-Hormônios - 50', 'Soro'),
(1192, 0, 'IGEF26', 'IGE ESPECÍFICO PARA ALIMENTOS - CARNE DE PORCO (F26)', 'Imuno-Hormônios - 50', 'Soro'),
(1193, 0, 'IGEF78', 'IGE ESPECÍFICO PARA ALIMENTOS - CASEÍNA (F78)', 'Imuno-Hormônios - 50', 'Soro'),
(1194, 0, 'IGEF1', 'IGE ESPECÍFICO PARA ALIMENTOS - CLARA DE OVO (F1)', 'Imuno-Hormônios - 50', 'Soro'),
(1195, 0, 'IGEF3', 'IGE ESPECÍFICO PARA ALIMENTOS - PEIXE - BACALHAU (F3)', 'Imuno-Hormônios - 50', 'Soro'),
(1196, 0, 'IGEF4', 'IGE ESPECÍFICO PARA ALIMENTOS - TRIGO (F4)', 'Imuno-Hormônios - 50', 'Soro'),
(1197, 0, 'IGEM2', 'IGE ESPECIFICO PARA CLADOSPORIUM HERBARUM (M2)', 'Imuno-Hormônios - 50', 'Soro'),
(1198, 0, 'IGEC281', 'IGE ESPECÍFICO PARA DROGAS - DICLOFENACO (C281)', 'Imuno-Hormônios - 50', 'Soro'),
(1199, 0, 'IGEE4', 'IGE ESPECÍFICO PARA EPITÉLIOS - CASPA DE BOI (E4)', 'Imuno-Hormônios - 50', 'Soro'),
(1200, 0, 'IGEE3', 'IGE ESPECÍFICO PARA EPITÉLIOS - CASPA DE CAVALO (E3)', 'Imuno-Hormônios - 50', 'Soro'),
(1201, 0, 'IGEE1', 'IGE ESPECÍFICO PARA EPITÉLIOS - CASPA DE GATO (E1)', 'Imuno-Hormônios - 50', 'Soro'),
(1202, 0, 'IGEI6', 'IGE ESPECÍFICO PARA INSETOS - BARATA (I6)', 'Imuno-Hormônios - 50', 'Soro'),
(1203, 0, 'IGEI70', 'IGE ESPECÍFICO PARA INSETOS - FORMIGA DE FOGO (I70)', 'Imuno-Hormônios - 50', 'Soro'),
(1204, 0, 'IGEI71', 'IGE ESPECÍFICO PARA MOSQUITO CULEX PEQUENO (I71)', 'Imuno-Hormônios - 50', 'Soro'),
(1205, 0, 'IGEK82', 'IGE ESPECÍFICO PARA OCUPACIONAIS - LÁTEX (K82)', 'Imuno-Hormônios - 50', 'Soro'),
(1206, 0, 'IGEFX3', 'IGE PAINEL ALIMENTOS - CEREAIS (FX3)', 'Imuno-Hormônios - 50', 'Soro'),
(1207, 0, 'IGEEX17', 'IGE PAINEL EPTÉLIOS  (EX17)', 'Imuno-Hormônios - 50', 'Soro'),
(1208, 0, 'IGEFX2', 'IGE PAINEL PARA ALIMENTOS -  PEIXE E FRUTOS DO MAR (FX2)', 'Imuno-Hormônios - 50', 'Soro'),
(1209, 0, 'IGEFX15', 'IGE PAINEL PARA ALIMENTOS - FRUTAS (FX15)', 'Imuno-Hormônios - 50', 'Sangue'),
(1210, 0, 'IGEFX1', 'IGE PAINEL PARA ALIMENTOS - NOZES (FX1)', 'Imuno-Hormônios - 50', 'Soro'),
(1211, 0, 'IGEF252', 'IGE PAINEL PARA ALIMENTOS - OVO (F252)', 'Imuno-Hormônios - 50', 'Soro'),
(1212, 0, 'IGEFX5', 'IGE PAINEL PARA ALIMENTOS (FX5)', 'Imuno-Hormônios - 50', 'Soro'),
(1213, 0, 'IGEEX1', 'IGE PAINEL PARA EPITÉLIO - ANIMAIS (EX1)', 'Imuno-Hormônios - 50', 'Sangue'),
(1214, 0, 'IGEMX1', 'IGE PAINEL PARA FUNGOS (MX1)', 'Imuno-Hormônios - 50', 'Soro'),
(1215, 0, 'IGEMX2', 'IGE PAINEL PARA FUNGOS (MX2)', 'Imuno-Hormônios - 50', 'Soro'),
(1216, 0, 'IGEGX1', 'IGE PAINEL PARA GRAMÍNEAS (GX1)', 'Imuno-Hormônios - 50', 'Soro'),
(1217, 0, 'IGEEX11', 'IGE PAINEL PARA PENAS DE AVES DE GAIOLA  (EX11)', 'Imuno-Hormônios - 50', 'Soro'),
(1218, 0, 'ANTIHBS', 'ANTI - HBs Total', 'Imuno-Hormônios - 50', 'Soro'),
(1219, 0, 'BHCQ.QUALI', 'BETA HCG QUALITATIVO', 'Imuno-Hormônios - 50', 'Soro'),
(1220, 0, 'HGH.CURVA', 'CURVA DE HGH', 'Imuno-Hormônios - 50', 'Soro'),
(1221, 0, 'HBSAG.', 'HBsAg - ANTIGENO SUPERFÍCIE HEPATITE B', 'Imuno-Hormônios - 50', 'Soro'),
(1222, 0, 'ANTI HBs', 'HEPATITE B - ANTI - HBS', 'Imuno-Hormônios - 50', 'Soro'),
(1223, 0, 'K39', 'LEISHMANIOSE VISCERAL HUMANA - ANTÍGENO K39', 'Imuno-Hormônios - 50', 'Sangue'),
(1224, 0, 'SULFASDHEA', 'SDHEA,  BASAL E APOS ESTIMULO', 'Imuno-Hormônios - 50', 'Sangue'),
(1225, 0, 'CHAGAS', 'CHAGAS', 'Imuno-Hormônios - 50', 'Soro'),
(1226, 0, 'FTA', 'FTA-ABS ( Syphilis Ab )', 'Imuno-Hormônios - 50', 'Soro'),
(1227, 0, 'HIV.', 'HIV tipo-1 e tipo-2 ( Ab e Ag )', 'Imuno-Hormônios - 50', 'Soro'),
(1228, 0, 'LE', 'PESQUISA DE CELULAS LE', 'Imuno-Hormônios - 50', 'Soro'),
(1229, 0, 'LHRH', 'RELEFACT LH-RH 0,1 MG - 1 AMPOLA', '', ''),
(1230, 0, 'CORTROSINA', 'SYNACTHEN 0,25 MG - 1 AMPOLA', '', ''),
(1231, 0, 'BACILOSCO', 'BACILOSCOPIA', 'Diversos - 14', 'Diversos'),
(1232, 0, 'BAC', 'BACTERIOSCOPIA (GRAM)', 'Diversos - 14', 'Diversos'),
(1233, 0, 'COPROCUL', 'COPROCULTURA', 'Fezes - 97', 'Fezes'),
(1234, 0, 'CUL.NEG.02', 'CULTURA', 'Secreção vaginal - 06', 'Diversos'),
(1235, 0, 'CUL.NEGATI', 'CULTURA', 'Diversos - 14', 'Diversos'),
(1236, 0, 'CULBK.', 'CULTURA - BAAR', 'Diversos - 14', 'Diversos'),
(1237, 0, 'CULTURA', 'CULTURA COM ANTIBIOGRAMA', 'Diversos - 14', 'Diversos'),
(1238, 0, 'CULTURA1', 'CULTURA COM ANTIBIOGRAMA', 'Diversos - 14', 'Diversos'),
(1239, 0, 'CULTURA2', 'CULTURA COM ANTIBIOGRAMA', 'Diversos - 14', 'Diversos'),
(1240, 0, 'CULTURA3', 'CULTURA COM ANTIBIOGRAMA', 'Diversos - 14', 'Diversos'),
(1241, 0, 'CULTURA4', 'CULTURA COM ANTIBIOGRAMA', 'Diversos - 14', 'Diversos'),
(1242, 0, 'CULTURA5', 'CULTURA DE FUNGOS COM ANTIFUNGIGRAMA', 'Diversos - 14', 'Diversos'),
(1243, 0, 'CUL.SBHRET', 'CULTURA DE STREPTOCOCCUS BETA HEMOLITICO RETAL', 'Secreção vaginal - 06', 'Secreção retal'),
(1244, 0, 'CUL.SBHVAG', 'CULTURA DE STREPTOCOCCUS BETA HEMOLITICO VAGINAL', 'Secreção vaginal - 06', 'Secreção vaginal'),
(1245, 0, 'CUL.URINA', 'CULTURA DE URINA COM ANTIBIOGRAMA', 'Cultura de Urina - 09', 'Urina'),
(1246, 0, 'CUL1.JATO', 'CULTURA DE URINA COM ANTIBIOGRAMA 1º JATO', 'Cultura de Urina - 09', 'Urina'),
(1247, 0, 'CUL2.JATO', 'CULTURA DE URINA COM ANTIBIOGRAMA 2º JATO', 'Cultura de Urina - 09', 'Urina'),
(1248, 0, 'CUL.FUNEG', 'CULTURA PARA FUNGOS', 'Diversos - 14', 'Diversos'),
(1249, 0, 'CUL.FUNG', 'CULTURA PARA FUNGOS', 'Diversos - 14', 'Diversos'),
(1250, 0, 'CUL.FUNG2', 'CULTURA PARA FUNGOS', 'Diversos - 14', 'Diversos'),
(1251, 0, 'CULT.ESTR', 'CULTURA PARA STREPTOCOCCUS GRUPO B', 'Diversos - 14', 'Diversos'),
(1252, 0, 'ESPERMOGRA', 'ESPERMOGRAMA', 'Esperma - 13', 'Sêmen'),
(1253, 0, 'EXDVAGINAL', 'EXAME DIRETO DA SECRECAO VAGINAL', 'Diversos - 14', 'Secreção vaginal'),
(1254, 0, 'ED.FEZES', 'EXAME DIRETO NAS FEZES', 'Fezes - 12', 'Fezes'),
(1255, 0, 'MICOLOGIC2', 'EXAME MICOLÓGICO DIRETO', 'Diversos - 14', 'Diversos'),
(1256, 0, 'MICOLOGICO', 'EXAME MICOLÓGICO DIRETO', 'Diversos - 14', 'Diversos'),
(1257, 0, 'GRA', 'GRAM', 'Urina recente - 07', 'Diversos'),
(1258, 0, 'HEMOCULT', 'HEMOCULTURA', 'Hemocultura - 69', 'Sangue'),
(1259, 0, 'HEMOC24H', 'HEMOCULTURA - PARCIAL 24 HORAS', 'Hemocultura - 69', 'Sangue'),
(1260, 0, 'HEMOC48H', 'HEMOCULTURA - PARCIAL 48 HORAS', 'Hemocultura - 69', 'Sangue'),
(1261, 0, 'HEMO1AMOST', 'HEMOCULTURA PRIMEIRA AMOSTRA', 'Hemocultura - 69', 'Sangue'),
(1262, 0, 'HEMO2AMOST', 'HEMOCULTURA SEGUNDA AMOSTRA', 'Hemocultura - 69', 'Sangue'),
(1263, 0, 'HEMO3AMOST', 'HEMOCULTURA TERCEIRA AMOSTRA', 'Hemocultura - 69', 'Sangue'),
(1264, 0, 'CEPA.DB', 'IDENTIFICAÇÃO DE CEPA MICROBIANA COM TSA', 'Diversos - 14', 'Diversos'),
(1265, 0, 'H1N1ANTIGE', 'INFLUENZA A/B (H1N1)', 'Swab nasofaringe', 'Swab nasofaringe'),
(1266, 0, 'PES.ACAN', 'PESQUISA DE ACANTHAMOEBA', 'Diversos - 14', 'Diversos'),
(1267, 0, 'BAR', 'PESQUISA DE BAAR - PRIMEIRA AMOSTRA', 'Diversos - 14', 'Diversos'),
(1268, 0, 'BAR2', 'PESQUISA DE BAAR - SEGUNDA AMOSTRA', 'Escarro - 15', 'Diversos'),
(1269, 0, 'BAR3', 'PESQUISA DE BAAR - TERCEIRA AMOSTRA', 'Escarro - 15', 'Diversos'),
(1270, 0, 'BAARLINFA', 'PESQUISA DE BAAR NA LINFA', 'Diversos - 14', 'Linfa'),
(1271, 0, 'PESCLAMIDI', 'PESQUISA DE CHLAMYDIA', 'Diversos - 14', 'Diversos'),
(1272, 0, 'PC.OC', 'PESQUISA DE CRISTAIS DE OXALATO DE CÁLCIO', 'Diversos - 14', 'Diversos'),
(1273, 0, 'P.COC', 'PESQUISA DE CRISTAIS DE OXALATO DE CÁLCIO', 'Secreção vaginal - 06', 'Diversos'),
(1274, 0, 'PESQFUNGOS', 'PESQUISA DE FUNGOS', 'Diversos - 14', 'Diversos'),
(1275, 0, 'PLEISH', 'PESQUISA DE LEISHMANIA', 'Diversos - 14', 'Diversos'),
(1276, 0, 'MOBILU', 'PESQUISA DE MOBILUNCUS', 'Diversos - 14', 'Diversos'),
(1277, 0, 'NGONORR', 'PESQUISA DE NEISSERIA GONORRHOEAE', 'Diversos - 14', 'Diversos'),
(1278, 0, 'PH.DIVER', 'PH', 'Diversos - 14', 'Diversos'),
(1279, 0, 'WID', 'REAÇÃO DE WIDAL', 'Soro BQ - 02', 'Soro'),
(1280, 0, 'STREP', 'STREP-A-STRIP TESTE', 'Secreção de orofaringe - 21', 'Secreção da oro-faringe'),
(1281, 0, 'STREPRETAL', 'STREPTOCOCCUS B-HEMOLITICO SWAB RETAL', 'Swab retal - 32', 'Swab retal'),
(1282, 0, 'STREPVAGIN', 'STREPTOCOCCUS B-HEMOLITICO SWAB VAGINAL', 'Swab vaginal - 33', 'Swab vaginal'),
(1283, 0, 'UROCULTURT', 'UROCULTURA', 'Tubo cônico - 54', 'Urina'),
(1284, 0, 'UROINF', 'UROCULTURA', 'Tubo cônico - 54', 'Urina'),
(1285, 0, 'VDRL', 'VDRL - REAÇÃO SEMI-QUANTITATIVA', 'Soro MC - 65', 'Soro'),
(1286, 0, 'VDR.LIQU', 'VDRL - REAÇÃO SEMI-QUANTITATIVA EM LIQUIDOS', 'Soro MC - 65', 'Diversos'),
(1287, 0, 'NOVAAMOSTR', 'NOVA AMOSTRA', 'Nova Amostra - 88', 'N.A'),
(1288, 0, 'COPROLOGIA', 'COPROLOGIA FUNCIONAL', 'Fezes - 94', 'Fezes'),
(1289, 0, 'COPROL.2ªA', 'COPROLOGIA FUNCIONAL - 2ª AMOSTRA', 'Fezes - 94', 'Fezes'),
(1290, 0, 'ED.SECEND', 'EXAME DIRETO DA SECRECAO ENDOCERVICAL', 'Diversos - 14', 'Secreção endocervical'),
(1291, 0, 'SUDAMIII', 'GORDURA FECAL - DETERMINACAO (SUDAM III)', 'Fezes - 96', 'Fezes'),
(1292, 0, 'GORDURA FE', 'GORDURA FECAL 24H', 'Fezes - 12', 'Fezes'),
(1293, 0, 'PHFECAL', 'P.H FECAL', 'Fezes - 12', 'Fezes'),
(1294, 0, 'SO+CPRL+PF', 'PARASITOLÓGICO', 'Fezes - 12', 'Fezes'),
(1295, 0, 'EPF', 'PARASITOLÓGICO', 'Fezes - 96', 'Fezes'),
(1296, 0, 'PFSSERIADO', 'PARASITOLÓGICO DE FEZES SERIADO', 'Fezes - 12', 'Fezes'),
(1297, 0, 'PESQ.FF', 'PESQUISA DE FUNGOS NAS FEZES', 'Diversos - 14', 'Fezes'),
(1298, 0, 'LEF', 'PESQUISA DE LEUCÓCITOS FECAIS', 'Fezes - 12', 'Fezes'),
(1299, 0, 'OXI', 'PESQUISA DE OXIÚRUS', 'Oxiurus - 11', 'Swab anal'),
(1300, 0, 'ROT', 'PESQUISA DE ROTAVIRUS', 'Fezes - 12', 'Fezes'),
(1301, 0, 'SO', 'PESQUISA DE SANGUE OCULTO', 'Fezes - 93', 'Fezes'),
(1302, 0, 'SOS.', 'SANGUE OCULTO SERIADO', 'Fezes seriado - 10', 'Fezes'),
(1303, 0, 'SOS1ªAMOS', 'SANGUE OCULTO SERIADO 1ª AMOSTRA', 'Fezes - 90', 'Fezes'),
(1304, 0, 'SOS2ªAMOS', 'SANGUE OCULTO SERIADO 2ª AMOSTRA', 'Fezes - 91', 'Fezes'),
(1305, 0, 'SOS3ªAMOS', 'SANGUE OCULTO SERIADO 3ª AMOSTRA', 'Fezes - 92', 'Fezes'),
(1306, 0, 'PSR', 'SUBSTANCIAS REDUTORAS NAS FEZES', 'Fezes - 96', 'Fezes'),
(1307, 0, 'TOXI.CONCU', 'TOXICOLÓGICO', 'Diversos - 14', 'Diversos'),
(1308, 0, 'TOXI.EMPRE', 'TOXICOLÓGICO', 'Diversos - 14', 'Diversos'),
(1309, 0, 'TOXIC.CNH', 'TOXICOLÓGICO', 'Diversos - 14', 'Diversos'),
(1310, 0, 'DIS', 'DISMORFISMO ERITROCITÁRIO', 'Urina recente - 07', 'Urina'),
(1311, 0, 'PH.URINA24', 'PH - URINA DE 24 HORAS', 'Urina 24h Sem conservante - 81', 'Urina 24h'),
(1312, 0, 'SUMARIOINF', 'SUMÁRIO DE URINA', 'Urina recente - 07', 'Urina recente'),
(1313, 0, 'SUMARIO', 'SUMÁRIO DE URINA', 'Urina recente - 07', 'Urina recente'),
(1314, 0, 'SUMAR.ANIM', 'SUMÁRIO DE URINA  - VETERINÁRIO (CACHORRO)', 'Urina recente - 07', 'Urina recente'),
(1315, 0, 'URO1.JATO', 'UROCULTURA ( 1º JATO )', 'Tubo cônico - 54', 'Urina'),
(1316, 0, 'URO2.JATO', 'UROCULTURA ( 2º JATO )', 'Tubo cônico - 54', 'Urina'),
(1317, 0, 'PBJ.24H', 'PROTEÍNA DE BENCE JONES', 'Urina 24h com Bicarbonato - 42', 'Urina 24h'),
(1318, 0, 'AURIC24H', 'ÁCIDO ÚRICO URINÁRIO', 'Urina 24h com Bicarbonato - 42', 'Urina 24h'),
(1319, 0, 'CREAT24H', 'CREATININA URINÁRIA', 'Urina 24h com HCL- 24', 'Urina 24h'),
(1320, 0, 'CALC.RECEN', 'FOSFATURIA', 'Urina recente - 07', 'Urina recente (amostra única)'),
(1321, 0, 'FOS.RECENT', 'FÓSFORO URINARIO', 'Urina Recente Bioquímica - 63', 'Urina recente'),
(1322, 0, 'FOSF24HORA', 'FÓSFORO URINÁRIO', 'Urina 24h com HCL- 24', 'Urina 24h'),
(1323, 0, 'MAGNU24H', 'MAGNÉSIO URINÁRIO', 'Urina 24h com HCL- 24', 'Urina 24h'),
(1324, 0, 'MITI.FAMIL', 'MITICARD PLANO FAMILIA', '', 'Diversos'),
(1325, 0, 'MITI.INDIV', 'MITICARD PLANO INDIVIDUAL', '', '3 Lâminas (esfregaço) sem anticoagulante');

-- --------------------------------------------------------

--
-- Table structure for table `exemesimp`
--

CREATE TABLE `exemesimp` (
  `��ࡱ�` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `materiais`
--

CREATE TABLE `materiais` (
  `idMaterial` int(11) NOT NULL,
  `codMaterial` int(11) NOT NULL DEFAULT '0',
  `strMaterial` varchar(255) NOT NULL DEFAULT '0',
  `unMaterial` enum('Unidade','Frasco','Pacote','Caixa','Galão','Rolo','Kit','Rack','Saco') NOT NULL DEFAULT 'Unidade',
  `qtdEstoqueMaterial` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materiais`
--

INSERT INTO `materiais` (`idMaterial`, `codMaterial`, `strMaterial`, `unMaterial`, `qtdEstoqueMaterial`) VALUES
(2, 297, 'ABAIXADOR DE LíNGUA MEDEIRA -PC/10', 'Unidade', 5),
(3, 612, 'ACIDO CLIRICRICO N/10(0,1N) 100ML', 'Frasco', 6),
(4, 296, 'ADAPTADOR DE AGULHA C/ TRAVA DE SEGURANçA', 'Unidade', 0),
(5, 248, 'AGUA DEIONIZADA GL 5LTS', 'Frasco', 5),
(6, 284, 'áGUA PARA INJEçãO 500ML', 'Frasco', 10),
(7, 270, 'AGULHA HIPODERMICA DESC. 25X0,7MM', 'Unidade', 123),
(8, 217, 'AGUILHA MULT A VACUO 25X0,7MM PC/10', 'Pacote', 1234),
(9, 2480, 'AGUA DEIONIZADA GL 5LTS - EDT', 'Galão', 12);

-- --------------------------------------------------------

--
-- Table structure for table `paciente`
--

CREATE TABLE `paciente` (
  `idPaciente` int(11) NOT NULL,
  `idPessoa` int(11) NOT NULL DEFAULT '0',
  `sexoPaciente` varchar(50) DEFAULT NULL,
  `strEstadoCivilPaciente` varchar(50) DEFAULT 'Não Informado',
  `strNaturalidadePaciente` varchar(200) DEFAULT 'Não Informado',
  `nnRg` varchar(50) DEFAULT '0',
  `nmMae` varchar(250) DEFAULT 'Não informado',
  `nmPai` varchar(250) DEFAULT 'Não informado',
  `nmResponsavel` varchar(200) DEFAULT 'Não informado',
  `idRespCadastroPaciente` int(11) DEFAULT NULL,
  `pacientecol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paciente`
--

INSERT INTO `paciente` (`idPaciente`, `idPessoa`, `sexoPaciente`, `strEstadoCivilPaciente`, `strNaturalidadePaciente`, `nnRg`, `nmMae`, `nmPai`, `nmResponsavel`, `idRespCadastroPaciente`, `pacientecol`) VALUES
(8, 41, 'Masculino', 'Casado', 'juazeiro do norte', '2000029150311', 'ROSA MARIA A PINTO QUEIROZ', 'ANTONIO DATAS QUEIROZ', '', NULL, NULL),
(9, 42, 'Feminino', 'Casado', 'juazeiro do norte', '123131234123412412', 'ROSA MARIA A PINTO QUEIROZ', 'ROSA MARIA A PINTO QUEIROZ', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pessoa`
--

CREATE TABLE `pessoa` (
  `idPessoa` int(11) NOT NULL,
  `nmPessoa` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `docPessoa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dtNascPessoa` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `stLogradouroPessoa` varchar(190) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nnCasaPessoa` int(11) DEFAULT NULL,
  `stCompleEndPessoa` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `stBairroPessoa` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stCidadePessoa` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `stEstadoPessoa` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `stCepPessoa` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nnTelefonePessoa` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `nnWhatsappPessoa` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `stEmailPessoa` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txtObsContatosPessoas` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pessoa`
--

INSERT INTO `pessoa` (`idPessoa`, `nmPessoa`, `docPessoa`, `dtNascPessoa`, `stLogradouroPessoa`, `nnCasaPessoa`, `stCompleEndPessoa`, `stBairroPessoa`, `stCidadePessoa`, `stEstadoPessoa`, `stCepPessoa`, `nnTelefonePessoa`, `nnWhatsappPessoa`, `stEmailPessoa`, `txtObsContatosPessoas`) VALUES
(1, 'USUÁRIO ROOT', '00000000000', '03/04/1968', '-', 0, '', '0', '', 'CE', '0', '0', '0', '', ''),
(41, 'ANTONIO ALISSON ALMEIDA QUEIROZ', '00299304302', '03/04/1986', 'RUA DAS LARANJEIRAS', 40, 'CASA AMARELA', 'CAJUíNA SãO GERALDO', 'JUAZEIRO DO NORTE', 'CE', '63022-050', '(88) 99696-5764', '(88) 99696-5764', 'alisson.almeidaq@gmail.com', NULL),
(42, 'ROSA MARIA A PINTO QUEIROZ', '12411101317', '10/08/1965', 'RUA DAS LARANJEIRAS', 23, '', 'CAJUíNA SãO GERALDO', '', 'CE', '63022-050', '(88) 99696-5764', '', 'nephrotech01@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `servicos`
--

CREATE TABLE `servicos` (
  `idServicos` int(11) NOT NULL,
  `nomeServico` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vlServico` decimal(6,2) DEFAULT '1.00',
  `statusServico` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicos`
--

INSERT INTO `servicos` (`idServicos`, `nomeServico`, `vlServico`, `statusServico`) VALUES
(10, 'ECOCARDIOGRAMA TRANSTORáCICA', '0.00', 1),
(11, 'ELETROCARDIOGRAMA', '0.00', 1),
(12, 'CONSULTA CARDIOLóGICA', '0.00', 1),
(13, 'PARECER CARDIOLóGICO', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `solicitante`
--

CREATE TABLE `solicitante` (
  `idSolicitante` int(11) NOT NULL,
  `nmSolicitante` varchar(190) NOT NULL DEFAULT '0',
  `tipoSolicitante` int(11) NOT NULL DEFAULT '0',
  `nnRegistroSolicitante` varchar(190) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tiposolicitante`
--

CREATE TABLE `tiposolicitante` (
  `idTipoSolicitanta` int(11) NOT NULL,
  `descricaoTipoSolicitante` varchar(150) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tiposolicitante`
--

INSERT INTO `tiposolicitante` (`idTipoSolicitanta`, `descricaoTipoSolicitante`) VALUES
(1, 'MéDICO'),
(2, 'DESTE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `idPessoa` int(11) NOT NULL,
  `passUser` varchar(200) NOT NULL,
  `nivelUser` int(11) NOT NULL,
  `flStatusUser` int(11) NOT NULL DEFAULT '1',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `idPessoa`, `passUser`, `nivelUser`, `flStatusUser`, `dtCadastro`) VALUES
(1, 1, '21232f297a57a5a743894a0e4a801fc3', 0, 1, '2019-06-27 02:38:17');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_pessoa_paciente`
-- (See below for the actual view)
--
CREATE TABLE `vw_pessoa_paciente` (
`idPassoaPessoa` int(11)
,`nmPessoa` varchar(150)
,`docPessoa` varchar(20)
,`dtNascPessoa` varchar(11)
,`stLogradouroPessoa` varchar(190)
,`nnCasaPessoa` int(11)
,`stCompleEndPessoa` varchar(100)
,`stBairroPessoa` varchar(150)
,`stCidadePessoa` varchar(200)
,`stEstadoPessoa` varchar(2)
,`stCepPessoa` varchar(10)
,`nnTelefonePessoa` varchar(45)
,`nnWhatsappPessoa` varchar(45)
,`stEmailPessoa` varchar(145)
,`txtObsContatosPessoas` longtext
,`idPaciente` int(11)
,`idPessoaPaciente` int(11)
,`sexoPaciente` varchar(50)
,`strEstadoCivilPaciente` varchar(50)
,`strNaturalidadePaciente` varchar(200)
,`nnRg` varchar(50)
,`nmMae` varchar(250)
,`nmPai` varchar(250)
,`nmResponsavel` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_pessoa_user`
-- (See below for the actual view)
--
CREATE TABLE `vw_pessoa_user` (
`idPessoaPessoa` int(11)
,`nmPessoa` varchar(150)
,`docPessoa` varchar(20)
,`dtNascPessoa` varchar(11)
,`stLogradouroPessoa` varchar(190)
,`nnCasaPessoa` int(11)
,`stCompleEndPessoa` varchar(100)
,`stBairroPessoa` varchar(150)
,`stEstadoPessoa` varchar(2)
,`stCepPessoa` varchar(10)
,`nnTelefonePessoa` varchar(45)
,`nnWhatsappPessoa` varchar(45)
,`stEmailPessoa` varchar(145)
,`txtObsContatosPessoas` longtext
,`id` int(11)
,`idPessoaUser` int(11)
,`passUser` varchar(200)
,`nivelUser` int(11)
,`flStatusUser` int(11)
,`dtCadastro` timestamp
);

-- --------------------------------------------------------

--
-- Structure for view `vw_pessoa_paciente`
--
DROP TABLE IF EXISTS `vw_pessoa_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_pessoa_paciente`  AS  select `pessoa`.`idPessoa` AS `idPassoaPessoa`,`pessoa`.`nmPessoa` AS `nmPessoa`,`pessoa`.`docPessoa` AS `docPessoa`,`pessoa`.`dtNascPessoa` AS `dtNascPessoa`,`pessoa`.`stLogradouroPessoa` AS `stLogradouroPessoa`,`pessoa`.`nnCasaPessoa` AS `nnCasaPessoa`,`pessoa`.`stCompleEndPessoa` AS `stCompleEndPessoa`,`pessoa`.`stBairroPessoa` AS `stBairroPessoa`,`pessoa`.`stCidadePessoa` AS `stCidadePessoa`,`pessoa`.`stEstadoPessoa` AS `stEstadoPessoa`,`pessoa`.`stCepPessoa` AS `stCepPessoa`,`pessoa`.`nnTelefonePessoa` AS `nnTelefonePessoa`,`pessoa`.`nnWhatsappPessoa` AS `nnWhatsappPessoa`,`pessoa`.`stEmailPessoa` AS `stEmailPessoa`,`pessoa`.`txtObsContatosPessoas` AS `txtObsContatosPessoas`,`paciente`.`idPaciente` AS `idPaciente`,`paciente`.`idPessoa` AS `idPessoaPaciente`,`paciente`.`sexoPaciente` AS `sexoPaciente`,`paciente`.`strEstadoCivilPaciente` AS `strEstadoCivilPaciente`,`paciente`.`strNaturalidadePaciente` AS `strNaturalidadePaciente`,`paciente`.`nnRg` AS `nnRg`,`paciente`.`nmMae` AS `nmMae`,`paciente`.`nmPai` AS `nmPai`,`paciente`.`nmResponsavel` AS `nmResponsavel` from (`pessoa` join `paciente` on((`paciente`.`idPessoa` = `pessoa`.`idPessoa`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_pessoa_user`
--
DROP TABLE IF EXISTS `vw_pessoa_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_pessoa_user`  AS  select `pessoa`.`idPessoa` AS `idPessoaPessoa`,`pessoa`.`nmPessoa` AS `nmPessoa`,`pessoa`.`docPessoa` AS `docPessoa`,`pessoa`.`dtNascPessoa` AS `dtNascPessoa`,`pessoa`.`stLogradouroPessoa` AS `stLogradouroPessoa`,`pessoa`.`nnCasaPessoa` AS `nnCasaPessoa`,`pessoa`.`stCompleEndPessoa` AS `stCompleEndPessoa`,`pessoa`.`stBairroPessoa` AS `stBairroPessoa`,`pessoa`.`stEstadoPessoa` AS `stEstadoPessoa`,`pessoa`.`stCepPessoa` AS `stCepPessoa`,`pessoa`.`nnTelefonePessoa` AS `nnTelefonePessoa`,`pessoa`.`nnWhatsappPessoa` AS `nnWhatsappPessoa`,`pessoa`.`stEmailPessoa` AS `stEmailPessoa`,`pessoa`.`txtObsContatosPessoas` AS `txtObsContatosPessoas`,`users`.`id` AS `id`,`users`.`idPessoa` AS `idPessoaUser`,`users`.`passUser` AS `passUser`,`users`.`nivelUser` AS `nivelUser`,`users`.`flStatusUser` AS `flStatusUser`,`users`.`dtCadastro` AS `dtCadastro` from (`pessoa` join `users`) where (`pessoa`.`idPessoa` = `users`.`idPessoa`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bancadaexame`
--
ALTER TABLE `bancadaexame`
  ADD PRIMARY KEY (`idBancada`),
  ADD UNIQUE KEY `nmBancada` (`nmBancada`);

--
-- Indexes for table `convenios`
--
ALTER TABLE `convenios`
  ADD PRIMARY KEY (`idConvenio`);

--
-- Indexes for table `despesa`
--
ALTER TABLE `despesa`
  ADD PRIMARY KEY (`idDespesa`);

--
-- Indexes for table `exames`
--
ALTER TABLE `exames`
  ADD PRIMARY KEY (`idExame`);

--
-- Indexes for table `exemesac`
--
ALTER TABLE `exemesac`
  ADD PRIMARY KEY (`idExamesac`);

--
-- Indexes for table `materiais`
--
ALTER TABLE `materiais`
  ADD PRIMARY KEY (`idMaterial`);

--
-- Indexes for table `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idPaciente`),
  ADD UNIQUE KEY `idPessoa_UNIQUE` (`idPessoa`),
  ADD KEY `idPessoa` (`idPessoa`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`idPessoa`),
  ADD UNIQUE KEY `nnCpfPessoa_UNIQUE` (`docPessoa`);

--
-- Indexes for table `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idServicos`);

--
-- Indexes for table `solicitante`
--
ALTER TABLE `solicitante`
  ADD PRIMARY KEY (`idSolicitante`),
  ADD KEY `FK_TIPO_SOLICITANTE` (`tipoSolicitante`);

--
-- Indexes for table `tiposolicitante`
--
ALTER TABLE `tiposolicitante`
  ADD PRIMARY KEY (`idTipoSolicitanta`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bancadaexame`
--
ALTER TABLE `bancadaexame`
  MODIFY `idBancada` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `convenios`
--
ALTER TABLE `convenios`
  MODIFY `idConvenio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `despesa`
--
ALTER TABLE `despesa`
  MODIFY `idDespesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exames`
--
ALTER TABLE `exames`
  MODIFY `idExame` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exemesac`
--
ALTER TABLE `exemesac`
  MODIFY `idExamesac` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1326;

--
-- AUTO_INCREMENT for table `materiais`
--
ALTER TABLE `materiais`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idPaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `idPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idServicos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `solicitante`
--
ALTER TABLE `solicitante`
  MODIFY `idSolicitante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiposolicitante`
--
ALTER TABLE `tiposolicitante`
  MODIFY `idTipoSolicitanta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `idPessoa` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`);

--
-- Constraints for table `solicitante`
--
ALTER TABLE `solicitante`
  ADD CONSTRAINT `FK_TIPO_SOLICITANTE` FOREIGN KEY (`tipoSolicitante`) REFERENCES `tiposolicitante` (`idTipoSolicitanta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
