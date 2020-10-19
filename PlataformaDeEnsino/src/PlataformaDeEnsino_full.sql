-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: PlataformaDeEnsino
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `PlataformaDeEnsino`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PlataformaDeEnsino` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `PlataformaDeEnsino`;

--
-- Table structure for table `aula`
--

DROP TABLE IF EXISTS `aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aula` (
  `TemaAula` varchar(50) DEFAULT NULL,
  `ConteudoAula` varchar(255) DEFAULT NULL,
  `ObjetivoAula` varchar(255) DEFAULT NULL,
  `dtInicioAula` date DEFAULT NULL,
  `dtTerminoAula` date DEFAULT NULL,
  `BibliografiaAula` varchar(255) DEFAULT NULL,
  `MaterialAula` varchar(255) DEFAULT NULL,
  `VideoAula` varchar(255) DEFAULT NULL,
  `AvaliacaoAula` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula`
--

LOCK TABLES `aula` WRITE;
/*!40000 ALTER TABLE `aula` DISABLE KEYS */;
INSERT INTO `aula` VALUES ('TEMA','                \r\n               conteudo','                \r\n               objetivo','2020-10-22','2020-10-20','                \r\n               refe','CPF-FRENTE(1).pdf','COMPROVANTE_RENDA.PDF','                \r\n               avaliacao'),('TEMA','                \r\n               conteudo','                \r\n               objetivo','2020-10-22','2020-10-20','                \r\n               refe','CPF-FRENTE(1).pdf','COMPROVANTE_RENDA.PDF','                \r\n               avaliacao'),('TEMA','                \r\n               5jery','                \r\n               rttjert','2020-10-06','2020-10-06','                \r\n               rtjrtj','ENSINO-TECNICO.pdf','RESIDENCIA.PDF','                \r\n               rjrtj'),('TEMA','                \r\n               rtjtrjm','                \r\n               etjrtj','2020-10-01','2020-10-13','                \r\n               q3hq3rh','ENSINO_MEDIO.docx','FOTO.jpg','                \r\n               wrgq43'),('TEMA','                \r\n               rtjtrjm','                \r\n               etjrtj','2020-10-01','2020-10-13','                \r\n               q3hq3rh','ENSINO_MEDIO.docx','FOTO.jpg','                \r\n               wrgq43'),('TEMA','                \r\n               rtjtrjm','                \r\n               etjrtj','2020-10-01','2020-10-13','                \r\n               q3hq3rh','ENSINO_MEDIO.docx','FOTO.jpg','                \r\n               wrgq43'),('g4r3whr','                \r\n               r3rh3wr','                \r\n               3rhr3r2','2020-09-29','2020-09-28','                \r\n               qgqewg','ENSINO-MEDIO.jpg','ENSINO_MEDIO.docx','                \r\n               qrhqr'),('hwrweh','                \r\n               rwehrew','                \r\n               rhrwh','2020-09-30','2020-09-28','                \r\n               weqgeqwe','FOTO.jpg','FOTO.jpg','                \r\n               wegewg'),('TEMA','                \r\n               gtq2hqew','                \r\n               qeegqeg','2020-09-29','2020-09-29','                \r\n               qewgewq','','','                \r\n               egeqeg'),('ED_02','                \r\n          ALGORITIMO     ','                \r\n               APRENDER A LINGUAGEM C','2020-10-08','2020-10-23','                \r\n               NÃO TEM','boletofatecpdf.pdf','COMPROVANTE_RENDA.PDF','                \r\n               NÃO TEM ');
/*!40000 ALTER TABLE `aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contatos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` VALUES (27,'AMAURI AGOSTINHO FERREIRA','nh4amauri@hotmail.com','ewgaweg','2020-08-11'),(28,'AMAURI AGOSTINHO FERREIRA','nh4amauri@hotmail.com','ewgaweg','2020-08-11'),(29,'AMAURI AGOSTINHO FERREIRA','nh4amauri@hotmail.com','ewgaweg','2020-08-11'),(30,'AMAURI AGOSTINHO FERREIRA','nh4amauri@hotmail.com','ewgaweg','2020-08-11'),(31,'AMAURI AGOSTINHO FERREIRA','nh4amauri@hotmail.com','ewgaweg','2020-08-11'),(32,'AMAURI AGOSTINHO FERREIRA','nh4amauri@hotmail.com','ewgaweg','2020-08-11'),(33,'AMAURI AGOSTINHO FERREIRA','nh4amauri@hotmail.co','ewgaweg','2020-08-11');
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `NomeCoordenador` varchar(50) DEFAULT NULL,
  `NomeProfessor` varchar(50) DEFAULT NULL,
  `NomeCurso` varchar(50) DEFAULT NULL,
  `CargaHoraria` int DEFAULT NULL,
  `dtInicio` date DEFAULT NULL,
  `Requisitos` varchar(255) DEFAULT NULL,
  `EmentaCurso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (NULL,NULL,'ED_10',NULL,NULL,NULL,NULL),('teste5','ola','ED15',6,'2020-09-30','teste2','teste2');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso1`
--

DROP TABLE IF EXISTS `curso1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso1` (
  `nomeTurma` varchar(50) DEFAULT NULL,
  `dtInicio` date DEFAULT NULL,
  `dtTermino` date DEFAULT NULL,
  `diaSemana` date DEFAULT NULL,
  `horaInicio` time DEFAULT NULL,
  `horaTermino` time DEFAULT NULL,
  `Requisitos` varchar(255) DEFAULT NULL,
  `Ementa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso1`
--

LOCK TABLES `curso1` WRITE;
/*!40000 ALTER TABLE `curso1` DISABLE KEYS */;
/*!40000 ALTER TABLE `curso1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `Cep` varchar(10) DEFAULT NULL,
  `Tipo` varchar(10) DEFAULT NULL,
  `NomeLogradouro` varchar(50) DEFAULT NULL,
  `Numero` int DEFAULT NULL,
  `Bairro` varchar(50) DEFAULT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `fk_id` bigint DEFAULT NULL,
  KEY `fk_id` (`fk_id`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('05359001','Rua','wegweqg',71,'BUTANTA','AP 71 D','SÃO PAULO','PE',NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('05359001','Rua','wegweqg',71,'BUTANTA','AP 71 D','SÃO PAULO','PE',NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('','Rua','',71,'','','','PE',NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('','Rua','',71,'','','','Selecione',NULL),('','Rua','',71,'','','','Selecione',NULL),('','Rua','',71,'','','','Selecione',NULL),('','Rua','',71,'','','','Selecione',NULL),('','Rua','',71,'','','','Selecione',NULL),('','Rua','',71,'','','','Selecione',NULL),('','Rua','',71,'','','','Selecione',NULL),('','Rua','',71,'','','','Selecione',NULL),('','Rua','',71,'','','','Selecione',NULL),('','Rua','',71,'','','','Selecione',NULL),('','Rua','',71,'','','','Selecione',NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `registroFuncional` int DEFAULT NULL,
  `cargo` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL,
  `fk_id` bigint DEFAULT NULL,
  KEY `fk_id` (`fk_id`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`fk_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `Email` varchar(255) DEFAULT NULL,
  `senha` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `Diploma` varchar(50) DEFAULT NULL,
  `NomeCurso` varchar(50) DEFAULT NULL,
  `NomeInstituicao` varchar(50) DEFAULT NULL,
  `TipoCurso` varchar(50) DEFAULT NULL,
  `CargaHoraria` int DEFAULT NULL,
  `dtInicio` date DEFAULT NULL,
  `dtTermino` date DEFAULT NULL,
  `fk_id` bigint DEFAULT NULL,
  KEY `fk_id` (`fk_id`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`fk_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES ('1','ED15','4','4',6,'2020-11-04','2020-10-26',NULL),('1','ED15','4','4',6,'2020-11-04','2020-10-26',NULL),('1','ED15','3','4',6,'2020-10-27','2020-10-27',NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1','2','','4',5,'2020-10-28','2020-10-27',NULL),('1','ED_02','3','4',6,'2020-10-20','2020-10-27',NULL),('1','ED15','4','4',1,'2020-10-13','2020-10-27',NULL),('1','ED_02','4','4',6,'2020-10-27','2020-10-28',NULL),('wfwf1','ED15','4','4',6,'2020-10-27','2020-11-03',NULL),('1','ED15','4','4',6,'2020-10-28','2020-10-27',NULL),('1','2','3','4',5,'2020-10-27','2020-10-27',NULL),('1','2','4','4',1,'2020-10-28','2020-10-27',NULL),('1','2','4','4',6,'2020-10-27','2020-10-28',NULL),('','','','',1,'2020-10-13','2020-10-28',NULL),('1','2','4','4',5,'2020-10-27','2020-10-27',NULL),('1','2','4','4',1,'2020-10-27','2020-10-28',NULL),('1','2','3','4',6,NULL,NULL,NULL),('1','ED15','3','4',6,NULL,NULL,NULL),('1','2','4','4',5,NULL,NULL,NULL),('1','2','','4',6,NULL,NULL,NULL),('1','2','3','4',6,NULL,NULL,NULL),('1','2','3','4',5,NULL,NULL,NULL),('0','1','2',NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CPF-FRENTE(1).pdf','ED_10','4',NULL,6,'2020-10-15','2020-10-20',NULL),('FOTO.jpg','Mecanica','4',NULL,6,'2020-10-15','2020-10-22',NULL);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `nome` varchar(255) DEFAULT NULL,
  `nomeMae` varchar(255) DEFAULT NULL,
  `dtNascimento` date DEFAULT NULL,
  `cpf` varchar(18) DEFAULT NULL,
  `TelefoneFixo` varchar(18) DEFAULT NULL,
  `TelefoneCelular` varchar(18) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('AMAURI AGOSTINHO FERREIRA',NULL,NULL,NULL,NULL,NULL,'nh4amauri@hotmail.com','',63),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,217),('FERREIRA','teste3','2020-10-06','052.566.034-85',NULL,NULL,'','',218),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,219),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,221),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,222),('FERREIRA','teste3','2020-10-06','052.566.034-85',NULL,NULL,'','',223),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,224),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,225),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,226),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,227),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,228),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,229),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,230),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,231),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,232),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,233),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,234),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,235),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,236),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,237),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,238),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,239),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,241),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,242),('AMAURI AGOSTINHO FERREIRA','','2020-10-06','052.566.034-85',NULL,NULL,'','',243),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,244),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,245),('','','2020-10-06','',NULL,NULL,'','',246),('','','2020-10-06','',NULL,NULL,'','',247),('','','2020-10-06','',NULL,NULL,'','',248),('','','2020-10-06','',NULL,NULL,'','',249),('','','2020-10-06','',NULL,NULL,'','',250),('','','2020-10-06','',NULL,NULL,'','',251),('','','2020-10-06','',NULL,NULL,'','',252),('','','2020-10-06','',NULL,NULL,'','',253),('','','2020-10-06','',NULL,NULL,'','',254),('','','2020-10-06','',NULL,NULL,'','',255),('','','2020-10-06','',NULL,NULL,'','',256),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,257),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,258),('AMAURI AGOSTINHO FERREIRA',NULL,NULL,NULL,NULL,NULL,'123','123',259);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-18 23:12:33
