CREATE DATABASE  IF NOT EXISTS `ventas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ventas`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: ventas
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_iva` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `num_compra` int(11) NOT NULL,
  `fecha_compra` date NOT NULL,
  `total_neto` decimal(11,2) NOT NULL,
  `total_iva` decimal(11,2) NOT NULL,
  `porcentaje_iva` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `iva_compra` (`id_iva`),
  KEY `proveedor_compra` (`id_proveedor`),
  KEY `usuario_compra` (`id_usuario`),
  CONSTRAINT `iva_compra` FOREIGN KEY (`id_iva`) REFERENCES `iva` (`id_iva`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `proveedor_compra` FOREIGN KEY (`id_proveedor`) REFERENCES `contactos` (`id_contacto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario_compra` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contactos` (
  `id_contacto` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_contacto` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  PRIMARY KEY (`id_contacto`),
  KEY `empresa_contacto` (`id_empresa`),
  KEY `tipo_contacto` (`id_tipo_contacto`),
  CONSTRAINT `empresa_contacto` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tipo_contacto` FOREIGN KEY (`id_tipo_contacto`) REFERENCES `tipo_contacto` (`id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,1,3,'11','11','11','11','2019-01-01'),(17,2,34,'Azul','Azul','Azul','Azul','2019-07-06'),(21,2,38,'asd','ddd','dd@com','ddd','2019-07-06'),(22,2,40,'Hola','QueHace','correoh@gmail.com','5894-0001','2019-07-07'),(23,1,41,'sad','sad','sad@f.vom','ad','2019-07-07'),(25,1,43,'y','y','y@h.c','sda','2019-07-07'),(26,2,44,'t','t','t@t.com','asa','2019-07-07'),(27,1,45,'1','1','o@h.com','as','2019-07-07'),(28,2,46,'6','6','6@sas.co','sd','2019-07-07'),(29,1,47,'nn','nn','n@f.com','sad','2019-07-07'),(30,2,48,'dsa','dsad','sad@k.com','dsad','2019-07-07');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalle_compra` (
  `iddetalle_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `id_iva` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unidad` decimal(11,2) NOT NULL,
  PRIMARY KEY (`iddetalle_compra`),
  KEY `producto_detalle` (`id_producto`),
  KEY `iva_detalle` (`id_iva`),
  CONSTRAINT `iva_detalle` FOREIGN KEY (`id_iva`) REFERENCES `iva` (`id_iva`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `producto_detalle` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra`
--

LOCK TABLES `detalle_compra` WRITE;
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_facturacion`
--

DROP TABLE IF EXISTS `detalle_facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalle_facturacion` (
  `id_detallefact` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unidad` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id_detallefact`),
  KEY `producto_detalle_fact` (`id_producto`),
  KEY `factura_detalle_fact` (`id_factura`),
  CONSTRAINT `factura_detalle_fact` FOREIGN KEY (`id_factura`) REFERENCES `facturacion` (`id_facturacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `producto_detalle_fact` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_facturacion`
--

LOCK TABLES `detalle_facturacion` WRITE;
/*!40000 ALTER TABLE `detalle_facturacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_facturacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `id_pais` int(11) NOT NULL,
  `nombre_empresa` varchar(200) NOT NULL,
  `nit_empresa` varchar(17) NOT NULL,
  `pagina_web` varchar(255) DEFAULT NULL,
  `telefono_empresa` varchar(9) NOT NULL,
  `calle` varchar(200) NOT NULL,
  `ciudad` varchar(200) NOT NULL,
  `region_provincia` varchar(200) NOT NULL,
  `codigo_postal` varchar(25) NOT NULL,
  PRIMARY KEY (`id_empresa`),
  KEY `pais_empresa` (`id_pais`),
  CONSTRAINT `pais_empresa` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,1,'DDD','SSSdd','sadsad','1111','1111','111','11','11'),(2,1,'111','11','11','11','11','11','11','11'),(3,1,'1','1','1','1','1','1','1','1'),(4,1,'Huawei','851dsa51','www.huawei.com','1245-9654','jj','jj','jj','j'),(5,1,'Nose','444','44','44','44','44','44','4'),(6,1,'jhghv','hvhgv','vhvhh','hvh','vh','vhv','h','vh'),(7,1,'a','a','a','a','a','a','a','a'),(8,1,'a','a','a','a','a','a','a','a'),(9,1,'dasd','sadsa','dsa','sadsa','sadsda','dsadsa','dsad','dsad'),(10,2,'HOLA','NIT','PAGINA','88888','Calle','Ciudad','DS','70005'),(11,2,'HOLA','NIT','PAGINA','88888','Calle','Ciudad','DS','70005'),(12,1,'sadad','sad','sad','sad','dsa','dsa','sad','dsa'),(13,1,'sadad','aaa','aaa','aaaa','aaaa','aaa','aaaa','aaaa'),(14,1,'sadad','aaa','aaa','aaaa','aaaa','aaa','aaaa','aaaa'),(15,1,'sadad','aaa','aaa','aaaa','aaaa','aaa','aaaa','aaaa'),(16,2,'2','2','2','2','2','2','2','2'),(17,2,'2','2','2','2','2','2','2','2'),(18,2,'2','2','2','2','2','2','2','2'),(19,2,'2','2','2','2','2','2','2','2'),(20,2,'2','asdddddddddddd','2','2','2','2','2','2'),(21,2,'asdadsd','asdddddddddddd','2','2','2','2','2','2'),(22,1,'1','1','1','1','1','1','1','1'),(23,1,'tyty','tyt','yty','tyt','yty','yty','tyt','1'),(24,2,'gg','gg','g','g','g','g','g','a'),(25,2,'gg','gg','g','g','g','g','g','a'),(26,2,'gg','gg','g','g','g','g','g','a'),(27,2,'gg','gg','g','g','g','g','g','a'),(28,2,'gg','gg','g','g','g','g','g','a'),(29,1,'45454','454','5445','545','87','dasd','sda','1'),(30,2,'uuu','uuu','uuu','uu','uuu','uu','uu','a'),(31,1,'HOLAQUEHACE','9898984151','www.hola.com','8888-0000','Calle','Ciudad 1 ','Narnia','503'),(32,1,'Hola','Hola','Hola','Hola','Hola','Hol','Hola','sa'),(33,1,'Manzana2','Manzana2','Manzana2','Manzana2','Manzana2','Manzana2','Manzana2','1'),(34,1,'Azul','Azul','Azul','Azul','Azul','Azul','Azul','1'),(35,1,'u','u','u','u','u','u','u','u'),(36,1,'sda','sa','sad','sad','dsa','sad','sad','as'),(37,1,'sda','sa','sad','sad','dsa','sad','sad','as'),(38,1,'Raul INC','45f5sd4f5ds','www.www.ww','7741-5114','sad','sad','sad','dsad'),(39,1,'Hola Inc','AS454-ADS54-5ADS','www.hola.com','2458-8540','Calle','Hola','Hola','654'),(40,2,'Huawei','1515as','www.huawei.com','7777-0000','sad','sad','sad','sda'),(41,1,'sad','sad','sad','dasd','ad','dsa','dad','das'),(42,1,'33','33','33','3','sd','sd','sd','sd'),(43,1,'y','y','y','y','sa','as','sa','dsa'),(44,1,'tt','tt','tt','t','sa','t','t','t'),(45,1,'1','1','1','1','s','a','sa','sa'),(46,1,'6','6','6','6','dsfd','sfsd','fdsf','sfs'),(47,1,'nn','nn','nn','nn','dsd','ds','sd','ds'),(48,1,'asd','dsa','sdad','sad','sd','sd','sds','ds');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fabricante` (
  `id_fabricante` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_fabricante` varchar(125) NOT NULL,
  `numero_producto` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  PRIMARY KEY (`id_fabricante`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` VALUES (1,'Asus',11,'A','2019-07-07');
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturacion`
--

DROP TABLE IF EXISTS `facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `facturacion` (
  `id_facturacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_iva` int(11) NOT NULL,
  `num_factura` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `total_neto` decimal(11,2) NOT NULL,
  `total_iva` decimal(11,2) NOT NULL,
  `porcentaje_iva` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_facturacion`),
  KEY `cliente_facturacion` (`id_cliente`),
  KEY `vendedor_facturacion` (`id_vendedor`),
  KEY `iva_facturacion` (`id_iva`),
  CONSTRAINT `cliente_facturacion` FOREIGN KEY (`id_cliente`) REFERENCES `contactos` (`id_contacto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `iva_facturacion` FOREIGN KEY (`id_iva`) REFERENCES `iva` (`id_iva`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendedor_facturacion` FOREIGN KEY (`id_vendedor`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacion`
--

LOCK TABLES `facturacion` WRITE;
/*!40000 ALTER TABLE `facturacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iva`
--

DROP TABLE IF EXISTS `iva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `iva` (
  `id_iva` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `valor` decimal(5,2) NOT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`id_iva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iva`
--

LOCK TABLES `iva` WRITE;
/*!40000 ALTER TABLE `iva` DISABLE KEYS */;
/*!40000 ALTER TABLE `iva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pais` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'El Salvador'),(2,'Alemania');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `id_fabricante` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_unitario` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `ganancia` decimal(11,2) NOT NULL,
  `presentacion` varchar(150) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fabricante_producto` (`id_fabricante`),
  CONSTRAINT `fabricante_producto` FOREIGN KEY (`id_fabricante`) REFERENCES `fabricante` (`id_fabricante`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,1,'1','asus.jpg','MO515','GTX 1060 6 GB','A',50,275.00,0.00,26.00,'C/U'),(2,1,'0001','asus.jpg','MO515','GTX 1060 6 GB','A',50,275.00,0.00,26.00,'C/U'),(3,1,'002','imagekjhn.jpg','MODELO','RX 480','A',15,125.00,175.00,25.00,'C/U'),(4,1,'00003','SDASDAF','12as','GTX 1060 3 GB','A',15,250.00,275.00,25.00,'C/U'),(5,1,'0002435','ASDSADAS','SAD','SDA','',43,125.00,125.00,12.00,'DAS');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_contacto`
--

DROP TABLE IF EXISTS `tipo_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_contacto` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(75) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_contacto`
--

LOCK TABLES `tipo_contacto` WRITE;
/*!40000 ALTER TABLE `tipo_contacto` DISABLE KEYS */;
INSERT INTO `tipo_contacto` VALUES (1,'Proveedor'),(2,'Cliente');
/*!40000 ALTER TABLE `tipo_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `psw` varchar(255) NOT NULL,
  `tipo_usu` varchar(1) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
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

-- Dump completed on 2019-07-08 21:21:50
