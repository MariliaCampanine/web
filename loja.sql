-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: loja
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idcliente` bigint(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'José','jose@gmail.com','123456789','$shiro1$SHA-512$750000$ZLh605jpJEvl3XC35kC52Q==$hdx0gnJ2mzdUx3BMbxeZNupKFLu+Yncs82WE5d+V7Kdax9Y/gVmDWQm6ZotH/zq2bwOiGm3jYVW25DrSY2+oKg==',0),(2,'Paulo','paulo@gmail.com','987654321','$shiro1$SHA-512$750000$ZLh605jpJEvl3XC35kC52Q==$hdx0gnJ2mzdUx3BMbxeZNupKFLu+Yncs82WE5d+V7Kdax9Y/gVmDWQm6ZotH/zq2bwOiGm3jYVW25DrSY2+oKg==',0),(3,'Carlos','carlos@gmail.com','111111111','$shiro1$SHA-512$750000$ZLh605jpJEvl3XC35kC52Q==$hdx0gnJ2mzdUx3BMbxeZNupKFLu+Yncs82WE5d+V7Kdax9Y/gVmDWQm6ZotH/zq2bwOiGm3jYVW25DrSY2+oKg==',0),(4,'Pedro','pedro@gmail.com','222222222','$shiro1$SHA-512$750000$ZLh605jpJEvl3XC35kC52Q==$hdx0gnJ2mzdUx3BMbxeZNupKFLu+Yncs82WE5d+V7Kdax9Y/gVmDWQm6ZotH/zq2bwOiGm3jYVW25DrSY2+oKg==',0),(5,'Fernando','aaa','aaaaa','$shiro1$SHA-512$750000$ZLh605jpJEvl3XC35kC52Q==$hdx0gnJ2mzdUx3BMbxeZNupKFLu+Yncs82WE5d+V7Kdax9Y/gVmDWQm6ZotH/zq2bwOiGm3jYVW25DrSY2+oKg==',0),(6,'administrador','admin',NULL,'$shiro1$SHA-512$750000$ZLh605jpJEvl3XC35kC52Q==$hdx0gnJ2mzdUx3BMbxeZNupKFLu+Yncs82WE5d+V7Kdax9Y/gVmDWQm6ZotH/zq2bwOiGm3jYVW25DrSY2+oKg==',1),(7,'Cliente','cliente@gmail.com','123456789','$shiro1$SHA-512$750000$ZLh605jpJEvl3XC35kC52Q==$hdx0gnJ2mzdUx3BMbxeZNupKFLu+Yncs82WE5d+V7Kdax9Y/gVmDWQm6ZotH/zq2bwOiGm3jYVW25DrSY2+oKg==',0),(8,'Visitante','guest',NULL,'$shiro1$SHA-512$750000$ZLh605jpJEvl3XC35kC52Q==$hdx0gnJ2mzdUx3BMbxeZNupKFLu+Yncs82WE5d+V7Kdax9Y/gVmDWQm6ZotH/zq2bwOiGm3jYVW25DrSY2+oKg==',0);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhepedido`
--

DROP TABLE IF EXISTS `detalhepedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalhepedido` (
  `iddetalhePedido` bigint(11) NOT NULL AUTO_INCREMENT,
  `idPedido` bigint(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `idProduto` bigint(11) NOT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`iddetalhePedido`),
  KEY `idPedido_idx` (`idPedido`),
  KEY `idProduto_idx` (`idProduto`),
  CONSTRAINT `idPedido` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idProduto` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhepedido`
--

LOCK TABLES `detalhepedido` WRITE;
/*!40000 ALTER TABLE `detalhepedido` DISABLE KEYS */;
INSERT INTO `detalhepedido` VALUES (92,81,4,9,239.6),(93,82,3,21,179.7),(94,83,2,32,59.8),(95,84,1,7,29.9),(96,85,1,8,39.9),(97,85,1,7,29.9),(98,86,1,9,59.9);
/*!40000 ALTER TABLE `detalhepedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papel`
--

DROP TABLE IF EXISTS `papel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papel` (
  `idPapel` bigint(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPapel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papel`
--

LOCK TABLES `papel` WRITE;
/*!40000 ALTER TABLE `papel` DISABLE KEYS */;
INSERT INTO `papel` VALUES (1,'admin','Administrador do sistema'),(2,'cliente','Cliente');
/*!40000 ALTER TABLE `papel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papel_tem_permissao`
--

DROP TABLE IF EXISTS `papel_tem_permissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papel_tem_permissao` (
  `papel_idPapel` bigint(11) NOT NULL,
  `permissao_idPermissao` bigint(11) NOT NULL,
  KEY `papel_idPapel_idx` (`papel_idPapel`),
  KEY `permissao_idPermissao_idx` (`permissao_idPermissao`),
  CONSTRAINT `papel_idPape` FOREIGN KEY (`papel_idPapel`) REFERENCES `papel` (`idPapel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `permissao_idPermissao` FOREIGN KEY (`permissao_idPermissao`) REFERENCES `permissao` (`idPermissao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papel_tem_permissao`
--

LOCK TABLES `papel_tem_permissao` WRITE;
/*!40000 ALTER TABLE `papel_tem_permissao` DISABLE KEYS */;
INSERT INTO `papel_tem_permissao` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `papel_tem_permissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `idpedido` bigint(11) NOT NULL AUTO_INCREMENT,
  `dataCompra` datetime DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `idCliente` bigint(11) NOT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `idCliente_idx` (`idCliente`),
  CONSTRAINT `idCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idcliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (81,'2017-12-15 00:53:11',239.6,7),(82,'2017-12-15 01:00:04',179.69999999999996,1),(83,'2017-12-15 01:23:08',59.8,6),(84,'2017-12-15 01:24:51',29.9,6),(85,'2017-12-15 01:25:23',69.8,7),(86,'2017-12-15 01:25:48',59.9,6);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissao`
--

DROP TABLE IF EXISTS `permissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissao` (
  `idPermissao` bigint(11) NOT NULL AUTO_INCREMENT,
  `valor` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPermissao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissao`
--

LOCK TABLES `permissao` WRITE;
/*!40000 ALTER TABLE `permissao` DISABLE KEYS */;
INSERT INTO `permissao` VALUES (1,'*','pode fazer o que quiser'),(2,'visitante:*','pode fazer tudo que um visitante pode');
/*!40000 ALTER TABLE `permissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `idproduto` bigint(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `tamanho` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (6,'Fuzz Cardigan','Cardigan',129.9,'imagens/miniatura1.png',36),(7,'Camiseta caveira','Camiseta',29.9,'imagens/miniatura2.png',36),(8,'Blusa magenta','Blusa',39.9,'imagens/miniatura13.png',36),(9,'Camisa Xadrez','Camisa',59.9,'imagens/miniatura9.png',36),(10,'Jaqueta ','Jaqueta',259.9,'imagens/miniatura4.png',36),(11,'Fuzz Cardigan verde','Cardigan',129.9,'imagens/miniatura3.png',36),(12,'Fuzz Cardigan','Cardigan',129.9,'imagens/miniatura1.png',38),(13,'Camiseta caveira','Camiseta',29.9,'imagens/miniatura2.png',38),(14,'Blusa magenta','Blusa',39.9,'imagens/miniatura13.png',38),(15,'Camisa Xadrez','Camisa',59.9,'imagens/miniatura9.png',38),(16,'Jaqueta ','Jaqueta',259.9,'imagens/miniatura4.png',38),(17,'Fuzz Cardigan verde','Cardigan',129.9,'imagens/miniatura3.png',38),(18,'Fuzz Cardigan','Cardigan',129.9,'imagens/miniatura1.png',40),(19,'Camiseta caveira','Camiseta',29.9,'imagens/miniatura2.png',40),(20,'Blusa magenta','Blusa',39.9,'imagens/miniatura13.png',40),(21,'Camisa Xadrez','Camisa',59.9,'imagens/miniatura9.png',40),(22,'Jaqueta ','Jaqueta',259.9,'imagens/miniatura4.png',40),(23,'Fuzz Cardigan verde','Cardigan',129.9,'imagens/miniatura3.png',40),(24,'Fuzz Cardigan','Cardigan',129.9,'imagens/miniatura1.png',42),(25,'Camiseta caveira','Camiseta',29.9,'imagens/miniatura2.png',42),(26,'Blusa magenta','Blusa',39.9,'imagens/miniatura13.png',42),(27,'Camisa Xadrez','Camisa',59.9,'imagens/miniatura9.png',42),(28,'Jaqueta ','Jaqueta',259.9,'imagens/miniatura4.png',42),(29,'Fuzz Cardigan verde','Cardigan',129.9,'imagens/miniatura3.png',42),(30,'Regata Azul','Regata',19.9,'imagens/miniatura5.png',36),(31,'Regata Rosa','Regata',19.9,'imagens/miniatura6.png',36),(32,'Babylook Verde','Babylook',29.9,'imagens/miniatura7.png',36),(33,'Babylook Azul','Babylook',29.9,'imagens/miniatura8.png',36),(34,'Blusa Rosa Bebê','Blusa',79.9,'imagens/miniatura10.png',36),(35,'Shorts Verde','Shorts',49.9,'imagens/miniatura11.png',36),(36,'Camisa Azul','Camisa',69.9,'imagens/miniatura12.png',36),(37,'Regata Azul','Regata',19.9,'imagens/miniatura5.png',38),(38,'Regata Rosa','Regata',19.9,'imagens/miniatura6.png',38),(39,'Babylook Verde','Babylook',29.9,'imagens/miniatura7.png',38),(40,'Babylook Azul','Babylook',29.9,'imagens/miniatura8.png',38),(41,'Blusa Rosa Bebê','Blusa',79.9,'imagens/miniatura10.png',38),(42,'Shorts Verde','Shorts',49.9,'imagens/miniatura11.png',38),(43,'Camisa Azul','Camisa',69.9,'imagens/miniatura12.png',38),(44,'Regata Azul','Regata',19.9,'imagens/miniatura5.png',40),(45,'Regata Rosa','Regata',19.9,'imagens/miniatura6.png',40),(46,'Babylook Verde','Babylook',29.9,'imagens/miniatura7.png',40),(47,'Babylook Azul','Babylook',29.9,'imagens/miniatura8.png',40),(48,'Blusa Rosa Bebê','Blusa',79.9,'imagens/miniatura10.png',40),(49,'Shorts Verde','Shorts',49.9,'imagens/miniatura11.png',40),(50,'Camisa Azul','Camisa',69.9,'imagens/miniatura12.png',40),(51,'Regata Azul','Regata',19.9,'imagens/miniatura5.png',42),(52,'Regata Rosa','Regata',19.9,'imagens/miniatura6.png',42),(53,'Babylook Verde','Babylook',29.9,'imagens/miniatura7.png',42),(54,'Babylook Azul','Babylook',29.9,'imagens/miniatura8.png',42),(55,'Blusa Rosa Bebê','Blusa',79.9,'imagens/miniatura10.png',42),(56,'Shorts Verde','Shorts',49.9,'imagens/miniatura11.png',42),(57,'Camisa Azul','Camisa',69.9,'imagens/miniatura12.png',42);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_tem_papel`
--

DROP TABLE IF EXISTS `usuario_tem_papel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_tem_papel` (
  `usuario_idUsuario` bigint(11) NOT NULL,
  `papel_idPapel` bigint(11) NOT NULL,
  KEY `usuario_idUsuario_idx` (`usuario_idUsuario`),
  KEY `papel_idPapel_idx` (`papel_idPapel`),
  CONSTRAINT `papel_idPapel` FOREIGN KEY (`papel_idPapel`) REFERENCES `papel` (`idPapel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_idUsuario` FOREIGN KEY (`usuario_idUsuario`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_tem_papel`
--

LOCK TABLES `usuario_tem_papel` WRITE;
/*!40000 ALTER TABLE `usuario_tem_papel` DISABLE KEYS */;
INSERT INTO `usuario_tem_papel` VALUES (6,1),(7,2),(8,2),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2);
/*!40000 ALTER TABLE `usuario_tem_papel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-15  1:31:39
