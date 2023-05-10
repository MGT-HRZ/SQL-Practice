-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: kiosk
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jabatan`
--

DROP TABLE IF EXISTS `jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(100) DEFAULT NULL,
  `id_ketuajabatan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatan`
--

LOCK TABLES `jabatan` WRITE;
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` VALUES (1,'Perniagaan',5),(2,'Teknologi Maklumat',1);
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelab_persatuan`
--

DROP TABLE IF EXISTS `kelab_persatuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelab_persatuan` (
  `id_kelab_persatuan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelab_persatuan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_kelab_persatuan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelab_persatuan`
--

LOCK TABLES `kelab_persatuan` WRITE;
/*!40000 ALTER TABLE `kelab_persatuan` DISABLE KEYS */;
INSERT INTO `kelab_persatuan` VALUES (1,'rekacipta'),(2,'anti dadah'),(3,'kenegaraan');
/*!40000 ALTER TABLE `kelab_persatuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_students`
--

DROP TABLE IF EXISTS `my_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_students` (
  `id_student` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) DEFAULT NULL,
  `student_class` varchar(100) DEFAULT NULL,
  `student_donation` float(6,2) DEFAULT NULL,
  PRIMARY KEY (`id_student`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_students`
--

LOCK TABLES `my_students` WRITE;
/*!40000 ALTER TABLE `my_students` DISABLE KEYS */;
INSERT INTO `my_students` VALUES (1,'Izhar','Anggerik',720.50),(2,'Hakimi','Bakawali',362.20),(3,'Adelia','Cempaka',612.10),(4,'Najwa','Dahlia',900.00),(5,'Fitri','Anggerik',764.90),(6,'Syed','Bakawali',78.90),(7,'Farahin','Cempaka',89.90),(8,'Helena','Dahlia',891.50),(9,'Yusri','Anggerik',72.90),(10,'Danish','Cempaka',142.60),(11,'Farrah','Dahlia',1092.30);
/*!40000 ALTER TABLE `my_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pensyarah`
--

DROP TABLE IF EXISTS `pensyarah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pensyarah` (
  `id_pensyarah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pensyarah` varchar(100) DEFAULT NULL,
  `id_program` int(11) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `id_kelab_persatuan` int(11) DEFAULT NULL,
  `id_unit_uniform` int(11) DEFAULT NULL,
  `id_sukan_permainan` int(11) DEFAULT NULL,
  `id_rumah_sukan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pensyarah`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pensyarah`
--

LOCK TABLES `pensyarah` WRITE;
/*!40000 ALTER TABLE `pensyarah` DISABLE KEYS */;
INSERT INTO `pensyarah` VALUES (1,'Suriyah',4,2,NULL,1,1,1),(2,'Mastura',4,2,1,2,NULL,2),(3,'Yussalina',4,2,1,3,NULL,3),(4,'Yuswadi',4,2,NULL,4,3,4),(5,'Farhah',3,1,NULL,1,2,1),(6,'Liew',3,1,2,2,NULL,2),(7,'Anizah',3,1,3,3,NULL,3),(8,'Huda',2,1,NULL,4,4,4),(9,'Faaizun',2,1,NULL,1,5,1),(10,'Nadrah',1,1,NULL,2,2,2),(11,'Suhaida',1,1,3,3,NULL,3);
/*!40000 ALTER TABLE `pensyarah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program` (
  `id_program` int(11) NOT NULL AUTO_INCREMENT,
  `nama_program` varchar(100) DEFAULT NULL,
  `id_ketuaprogram` int(11) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_program`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES (1,'Pengurusan Perniagaan',6,1),(2,'Perakaunan',8,1),(3,'Kesetiausahaan Pentadbiran',10,1),(4,'Teknologi Pangkalan Data Dan Aplikasi Web',2,2);
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rumah_sukan`
--

DROP TABLE IF EXISTS `rumah_sukan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rumah_sukan` (
  `id_rumah_sukan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_rumah_sukan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_rumah_sukan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rumah_sukan`
--

LOCK TABLES `rumah_sukan` WRITE;
/*!40000 ALTER TABLE `rumah_sukan` DISABLE KEYS */;
INSERT INTO `rumah_sukan` VALUES (1,'alfa'),(2,'beta'),(3,'gamma'),(4,'sigma');
/*!40000 ALTER TABLE `rumah_sukan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rumah_sukan2`
--

DROP TABLE IF EXISTS `rumah_sukan2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rumah_sukan2` (
  `id_rumah_sukan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_rumah_sukan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_rumah_sukan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rumah_sukan2`
--

LOCK TABLES `rumah_sukan2` WRITE;
/*!40000 ALTER TABLE `rumah_sukan2` DISABLE KEYS */;
/*!40000 ALTER TABLE `rumah_sukan2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sukan_permainan`
--

DROP TABLE IF EXISTS `sukan_permainan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sukan_permainan` (
  `id_sukan_permainan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sukan_permainan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_sukan_permainan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sukan_permainan`
--

LOCK TABLES `sukan_permainan` WRITE;
/*!40000 ALTER TABLE `sukan_permainan` DISABLE KEYS */;
INSERT INTO `sukan_permainan` VALUES (1,'bola jaring'),(2,'bola baling'),(3,'bola sepak'),(4,'badminton'),(5,'softball');
/*!40000 ALTER TABLE `sukan_permainan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_uniform`
--

DROP TABLE IF EXISTS `unit_uniform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit_uniform` (
  `id_unit_uniform` int(11) NOT NULL AUTO_INCREMENT,
  `nama_unit_uniform` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_unit_uniform`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_uniform`
--

LOCK TABLES `unit_uniform` WRITE;
/*!40000 ALTER TABLE `unit_uniform` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit_uniform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuran`
--

DROP TABLE IF EXISTS `yuran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuran` (
  `id_yuran` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_yuran` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_yuran`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuran`
--

LOCK TABLES `yuran` WRITE;
/*!40000 ALTER TABLE `yuran` DISABLE KEYS */;
INSERT INTO `yuran` VALUES (1,'Kelab Warga'),(2,'Wifi');
/*!40000 ALTER TABLE `yuran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuran_bayar`
--

DROP TABLE IF EXISTS `yuran_bayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuran_bayar` (
  `id_ybayar` int(11) NOT NULL AUTO_INCREMENT,
  `id_pensyarah` int(11) DEFAULT NULL,
  `id_yuran` int(11) DEFAULT NULL,
  `tarikh_bayar` date DEFAULT NULL,
  `jumlah` float(6,2) DEFAULT NULL,
  PRIMARY KEY (`id_ybayar`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuran_bayar`
--

LOCK TABLES `yuran_bayar` WRITE;
/*!40000 ALTER TABLE `yuran_bayar` DISABLE KEYS */;
INSERT INTO `yuran_bayar` VALUES (1,1,1,'2021-01-01',150.00),(2,1,2,'2021-01-01',50.00),(3,2,1,'2021-01-01',100.00),(4,2,2,'2021-01-01',50.00),(5,3,1,'2021-01-12',150.00),(6,3,2,'2021-01-12',50.00),(7,5,1,'2021-01-14',150.00),(8,5,2,'2021-01-14',50.00);
/*!40000 ALTER TABLE `yuran_bayar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-29 16:02:08
