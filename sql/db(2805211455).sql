-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cc
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `convenios`
--

DROP TABLE IF EXISTS `convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenios` (
  `idConvenio` int(11) NOT NULL AUTO_INCREMENT,
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
  `instAtendimentoConvenio` longtext,
  PRIMARY KEY (`idConvenio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenios`
--

LOCK TABLES `convenios` WRITE;
/*!40000 ALTER TABLE `convenios` DISABLE KEYS */;
/*!40000 ALTER TABLE `convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `despesa`
--

DROP TABLE IF EXISTS `despesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `despesa` (
  `idDespesa` int(11) NOT NULL AUTO_INCREMENT,
  `descricaoDespesa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vlDespesa` decimal(12,2) DEFAULT NULL,
  `tipoDespesa` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusDespesa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dtVencimentoDespesa` date DEFAULT NULL,
  `dtPagamentoDespesa` varchar(20) DEFAULT NULL,
  `idRespCadastroDispesa` int(11) NOT NULL,
  `cadastroDespesa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDespesa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despesa`
--

LOCK TABLES `despesa` WRITE;
/*!40000 ALTER TABLE `despesa` DISABLE KEYS */;
INSERT INTO `despesa` VALUES (1,'despesa 01',10.20,'alimentação ','pago',NULL,NULL,0,'2021-05-25 07:03:45'),(2,'PAGAMENTO 01',1234567.89,'SERVIçOS','PAGO',NULL,NULL,0,'2021-05-27 07:45:49'),(3,'tes',12.34,'test','pago','2021-05-31',NULL,1,'2021-05-28 17:22:32'),(4,'DESPESA TESTE',0.12,'EVENTUAL','PAGO','2021-05-28','2021-05-28',1,'2021-05-28 17:28:21'),(5,'DESPESA TESTE 2',100.00,'EVENTUAL','AGENDADO','2021-06-01','2021-05-28',1,'2021-05-28 17:30:17'),(6,'DESPESA TESTE 2',100.00,'EVENTUAL','AGENDADO','2021-06-01','',1,'2021-05-28 17:34:43'),(7,'DESPESA TESTE3',110.00,'EVENTUAL','PAGO','2021-05-28','',1,'2021-05-28 17:37:58'),(8,'DESPESA TESTE 4',100.00,'EVENTUAL','AGENDADO','2021-06-01','',1,'2021-05-28 17:40:42'),(9,'DESPESA TESTE 05',1234.56,'EVENTUAL','PAGO','2021-05-28','2021-05-28',1,'2021-05-28 17:43:28'),(10,'DESPESA TESTE 05',1234.56,'EVENTUAL','AGENDADO','2021-05-28','',1,'2021-05-28 17:44:17');
/*!40000 ALTER TABLE `despesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exames`
--

DROP TABLE IF EXISTS `exames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exames` (
  `idExame` int(11) NOT NULL AUTO_INCREMENT,
  `codigoexame` varchar(50) NOT NULL DEFAULT '0',
  `exame` varchar(191) NOT NULL DEFAULT '0',
  `sinonimos` varchar(191) NOT NULL DEFAULT '0',
  `material` varchar(191) NOT NULL DEFAULT '0',
  `interpretacaoexame` longtext,
  `metodoexame` varchar(191) NOT NULL DEFAULT '0',
  `parametroexame` varchar(191) NOT NULL DEFAULT '0',
  `valorReferenciaExame` varchar(191) NOT NULL DEFAULT '0',
  `instrucoesPreparoExame` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`idExame`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exames`
--

LOCK TABLES `exames` WRITE;
/*!40000 ALTER TABLE `exames` DISABLE KEYS */;
INSERT INTO `exames` VALUES (1,'FE','FERRO SéRICO','CBHPM - 40301842','SORO','<P>O FERRO PARTICIPA NUMA VARIEDADE DE PROCESSOS VITAIS NO ORGANISMO, DESDE OS MECANISMOS DE OXIDAçãO CELULAR AO TRANSPORTE E ALIMENTAçãO DE OXIGêNIO PARA AS CéLULAS DO ORGANISMO.</P><P>é UM ELEMENTO&NBSP; CONSTITUINTES DAS CROMOPROTEíNAS ....</P>','<P>COLORIMéTRICO</P>','FERRO SERICO','<P>RECéM-NASCIDO......................................... 100 A 250 UG/DL<BR>CRIANçA COM MENOS DE 7 ANOS:................ 40 A 100 UG/DL</P>','JEJUM');
/*!40000 ALTER TABLE `exames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `idPaciente` int(11) NOT NULL AUTO_INCREMENT,
  `idPessoa` int(11) NOT NULL DEFAULT '0',
  `sexoPaciente` varchar(50) DEFAULT NULL,
  `strEstadoCivilPaciente` varchar(50) DEFAULT 'Não Informado',
  `strNaturalidadePaciente` varchar(200) DEFAULT 'Não Informado',
  `nnRg` varchar(50) DEFAULT '0',
  `nmMae` varchar(250) DEFAULT 'Não informado',
  `nmPai` varchar(250) DEFAULT 'Não informado',
  `nmResponsavel` varchar(200) DEFAULT 'Não informado',
  `idRespCadastroPaciente` int(11) DEFAULT NULL,
  `pacientecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPaciente`),
  UNIQUE KEY `idPessoa_UNIQUE` (`idPessoa`),
  KEY `idPessoa` (`idPessoa`),
  CONSTRAINT `idPessoa` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (8,41,'Masculino','Casado','juazeiro do norte','2000029150311','ROSA MARIA A PINTO QUEIROZ','ANTONIO DATAS QUEIROZ','',NULL,NULL),(9,42,'Feminino','Casado','juazeiro do norte','123131234123412412','ROSA MARIA A PINTO QUEIROZ','ROSA MARIA A PINTO QUEIROZ','',NULL,NULL);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `idPessoa` int(11) NOT NULL AUTO_INCREMENT,
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
  `txtObsContatosPessoas` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`idPessoa`),
  UNIQUE KEY `nnCpfPessoa_UNIQUE` (`docPessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'USUÁRIO ROOT','00000000000','03/04/1968','-',0,'','0','','CE','0','0','0','',''),(41,'ANTONIO ALISSON ALMEIDA QUEIROZ','00299304302','03/04/1986','RUA DAS LARANJEIRAS',40,'CASA AMARELA','CAJUíNA SãO GERALDO','JUAZEIRO DO NORTE','CE','63022-050','(88) 99696-5764','(88) 99696-5764','alisson.almeidaq@gmail.com',NULL),(42,'ROSA MARIA A PINTO QUEIROZ','12411101317','10/08/1965','RUA DAS LARANJEIRAS',23,'','CAJUíNA SãO GERALDO','','CE','63022-050','(88) 99696-5764','','nephrotech01@gmail.com',NULL);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos` (
  `idServicos` int(11) NOT NULL AUTO_INCREMENT,
  `nomeServico` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vlServico` decimal(6,2) DEFAULT '1.00',
  `statusServico` int(1) DEFAULT '0',
  PRIMARY KEY (`idServicos`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (10,'ECOCARDIOGRAMA TRANSTORáCICA',0.00,1),(11,'ELETROCARDIOGRAMA',0.00,1),(12,'CONSULTA CARDIOLóGICA',0.00,1),(13,'PARECER CARDIOLóGICO',0.00,1);
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPessoa` int(11) NOT NULL,
  `passUser` varchar(200) NOT NULL,
  `nivelUser` int(11) NOT NULL,
  `flStatusUser` int(11) NOT NULL DEFAULT '1',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'21232f297a57a5a743894a0e4a801fc3',0,1,'2019-06-27 02:38:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_pessoa_paciente`
--

DROP TABLE IF EXISTS `vw_pessoa_paciente`;
/*!50001 DROP VIEW IF EXISTS `vw_pessoa_paciente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pessoa_paciente` AS SELECT 
 1 AS `idPassoaPessoa`,
 1 AS `nmPessoa`,
 1 AS `docPessoa`,
 1 AS `dtNascPessoa`,
 1 AS `stLogradouroPessoa`,
 1 AS `nnCasaPessoa`,
 1 AS `stCompleEndPessoa`,
 1 AS `stBairroPessoa`,
 1 AS `stCidadePessoa`,
 1 AS `stEstadoPessoa`,
 1 AS `stCepPessoa`,
 1 AS `nnTelefonePessoa`,
 1 AS `nnWhatsappPessoa`,
 1 AS `stEmailPessoa`,
 1 AS `txtObsContatosPessoas`,
 1 AS `idPaciente`,
 1 AS `idPessoaPaciente`,
 1 AS `sexoPaciente`,
 1 AS `strEstadoCivilPaciente`,
 1 AS `strNaturalidadePaciente`,
 1 AS `nnRg`,
 1 AS `nmMae`,
 1 AS `nmPai`,
 1 AS `nmResponsavel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pessoa_user`
--

DROP TABLE IF EXISTS `vw_pessoa_user`;
/*!50001 DROP VIEW IF EXISTS `vw_pessoa_user`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pessoa_user` AS SELECT 
 1 AS `idPessoaPessoa`,
 1 AS `nmPessoa`,
 1 AS `docPessoa`,
 1 AS `dtNascPessoa`,
 1 AS `stLogradouroPessoa`,
 1 AS `nnCasaPessoa`,
 1 AS `stCompleEndPessoa`,
 1 AS `stBairroPessoa`,
 1 AS `stEstadoPessoa`,
 1 AS `stCepPessoa`,
 1 AS `nnTelefonePessoa`,
 1 AS `nnWhatsappPessoa`,
 1 AS `stEmailPessoa`,
 1 AS `txtObsContatosPessoas`,
 1 AS `id`,
 1 AS `idPessoaUser`,
 1 AS `passUser`,
 1 AS `nivelUser`,
 1 AS `flStatusUser`,
 1 AS `dtCadastro`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_pessoa_paciente`
--

/*!50001 DROP VIEW IF EXISTS `vw_pessoa_paciente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pessoa_paciente` AS select `pessoa`.`idPessoa` AS `idPassoaPessoa`,`pessoa`.`nmPessoa` AS `nmPessoa`,`pessoa`.`docPessoa` AS `docPessoa`,`pessoa`.`dtNascPessoa` AS `dtNascPessoa`,`pessoa`.`stLogradouroPessoa` AS `stLogradouroPessoa`,`pessoa`.`nnCasaPessoa` AS `nnCasaPessoa`,`pessoa`.`stCompleEndPessoa` AS `stCompleEndPessoa`,`pessoa`.`stBairroPessoa` AS `stBairroPessoa`,`pessoa`.`stCidadePessoa` AS `stCidadePessoa`,`pessoa`.`stEstadoPessoa` AS `stEstadoPessoa`,`pessoa`.`stCepPessoa` AS `stCepPessoa`,`pessoa`.`nnTelefonePessoa` AS `nnTelefonePessoa`,`pessoa`.`nnWhatsappPessoa` AS `nnWhatsappPessoa`,`pessoa`.`stEmailPessoa` AS `stEmailPessoa`,`pessoa`.`txtObsContatosPessoas` AS `txtObsContatosPessoas`,`paciente`.`idPaciente` AS `idPaciente`,`paciente`.`idPessoa` AS `idPessoaPaciente`,`paciente`.`sexoPaciente` AS `sexoPaciente`,`paciente`.`strEstadoCivilPaciente` AS `strEstadoCivilPaciente`,`paciente`.`strNaturalidadePaciente` AS `strNaturalidadePaciente`,`paciente`.`nnRg` AS `nnRg`,`paciente`.`nmMae` AS `nmMae`,`paciente`.`nmPai` AS `nmPai`,`paciente`.`nmResponsavel` AS `nmResponsavel` from (`pessoa` join `paciente` on((`paciente`.`idPessoa` = `pessoa`.`idPessoa`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pessoa_user`
--

/*!50001 DROP VIEW IF EXISTS `vw_pessoa_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pessoa_user` AS select `pessoa`.`idPessoa` AS `idPessoaPessoa`,`pessoa`.`nmPessoa` AS `nmPessoa`,`pessoa`.`docPessoa` AS `docPessoa`,`pessoa`.`dtNascPessoa` AS `dtNascPessoa`,`pessoa`.`stLogradouroPessoa` AS `stLogradouroPessoa`,`pessoa`.`nnCasaPessoa` AS `nnCasaPessoa`,`pessoa`.`stCompleEndPessoa` AS `stCompleEndPessoa`,`pessoa`.`stBairroPessoa` AS `stBairroPessoa`,`pessoa`.`stEstadoPessoa` AS `stEstadoPessoa`,`pessoa`.`stCepPessoa` AS `stCepPessoa`,`pessoa`.`nnTelefonePessoa` AS `nnTelefonePessoa`,`pessoa`.`nnWhatsappPessoa` AS `nnWhatsappPessoa`,`pessoa`.`stEmailPessoa` AS `stEmailPessoa`,`pessoa`.`txtObsContatosPessoas` AS `txtObsContatosPessoas`,`users`.`id` AS `id`,`users`.`idPessoa` AS `idPessoaUser`,`users`.`passUser` AS `passUser`,`users`.`nivelUser` AS `nivelUser`,`users`.`flStatusUser` AS `flStatusUser`,`users`.`dtCadastro` AS `dtCadastro` from (`pessoa` join `users`) where (`pessoa`.`idPessoa` = `users`.`idPessoa`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-28 14:55:28
