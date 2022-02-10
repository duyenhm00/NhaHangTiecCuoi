-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dtb_nhtc
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `dich_vu`
--

DROP TABLE IF EXISTS `dich_vu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dich_vu` (
  `idDichVu` int NOT NULL,
  `tenDichVu` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idDichVu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dich_vu`
--

LOCK TABLES `dich_vu` WRITE;
/*!40000 ALTER TABLE `dich_vu` DISABLE KEYS */;
INSERT INTO `dich_vu` VALUES (1,'Thuê MC'),(2,'Thuê dàn nhạc'),(3,'Dịch vụ hoa cưới'),(4,'Dịch vụ trang trí');
/*!40000 ALTER TABLE `dich_vu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khach_hang` (
  `idKhachHang` int NOT NULL AUTO_INCREMENT,
  `hoTenKH` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `emailKH` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sdtKH` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `diaChiKH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gioiTinhKH` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idTKKH` int DEFAULT NULL,
  PRIMARY KEY (`idKhachHang`),
  KEY `fk_khachhang_taikhoan_idx` (`idTKKH`),
  CONSTRAINT `fk_khachhang_taikhoan` FOREIGN KEY (`idTKKH`) REFERENCES `tai_khoan` (`idTaiKhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khach_hang`
--

LOCK TABLES `khach_hang` WRITE;
/*!40000 ALTER TABLE `khach_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `khach_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_mon`
--

DROP TABLE IF EXISTS `loai_mon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_mon` (
  `idLoaiMon` int NOT NULL,
  `tenLoaiMon` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idLoaiMon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_mon`
--

LOCK TABLES `loai_mon` WRITE;
/*!40000 ALTER TABLE `loai_mon` DISABLE KEYS */;
INSERT INTO `loai_mon` VALUES (1,'Món khai vị'),(2,'Món chính'),(3,'Món tráng miệng'),(4,'Đồ uống');
/*!40000 ALTER TABLE `loai_mon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_sanh`
--

DROP TABLE IF EXISTS `loai_sanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_sanh` (
  `idLoaiSanh` int NOT NULL,
  `tenLoaiSanh` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idLoaiSanh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_sanh`
--

LOCK TABLES `loai_sanh` WRITE;
/*!40000 ALTER TABLE `loai_sanh` DISABLE KEYS */;
INSERT INTO `loai_sanh` VALUES (1,'Sảnh họp'),(2,'Sảnh tiệc');
/*!40000 ALTER TABLE `loai_sanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mon_an`
--

DROP TABLE IF EXISTS `mon_an`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mon_an` (
  `idMonAn` int NOT NULL AUTO_INCREMENT,
  `tenMonAn` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `giaMonAn` decimal(10,0) NOT NULL DEFAULT '0',
  `maLoaiMon` int NOT NULL,
  `anhMonAn` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idMonAn`),
  KEY `fk_monan_loaimon_idx` (`maLoaiMon`),
  CONSTRAINT `fk_monan_loaimon` FOREIGN KEY (`maLoaiMon`) REFERENCES `loai_mon` (`idLoaiMon`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mon_an`
--

LOCK TABLES `mon_an` WRITE;
/*!40000 ALTER TABLE `mon_an` DISABLE KEYS */;
INSERT INTO `mon_an` VALUES (1,'Chả mực bao hạnh nhân',245000,1,NULL),(2,'Chả tôm hạt điều',230000,1,NULL),(3,'Gỏi ngó sen',220000,1,NULL),(4,'Gỏi mực kiểu Thái',285000,1,NULL),(5,'Gỏi tai heo',240000,1,'https://res.cloudinary.com/dguzlcoru/image/upload/v1640354582/md6ydubd7rvkuaqanbgd.jpg'),(6,'Gỏi tôm thịt',270000,1,NULL),(7,'Súp cua',270000,1,NULL),(8,'Súp gà xé',210000,1,NULL),(9,'Súp hải sản',230000,1,NULL),(10,'Salad rau củ',170000,1,'https://res.cloudinary.com/dguzlcoru/image/upload/v1640354582/md6ydubd7rvkuaqanbgd.jpg'),(11,'Salad hải sản',200000,1,NULL),(12,'Salad táo tôm',180000,1,'https://res.cloudinary.com/dguzlcoru/image/upload/v1640354582/md6ydubd7rvkuaqanbgd.jpg'),(13,'Khoai tây chiên',150000,1,NULL),(14,'Khoai lang chiên',130000,1,NULL),(15,'Gà hấp lá chanh',365000,2,NULL),(16,'Gà ta rang muối',365000,2,NULL),(17,'Gà cuộn đút lò phô mai',390000,2,NULL),(18,'Gà bó xôi',350000,2,NULL),(19,'Gà ta quay mật ong',370000,2,NULL),(20,'Bò lúc lắc khoai tây',430000,2,NULL),(21,'Bò sốt tiêu đen - Bánh bao',470000,2,NULL),(22,'Bò xào thiên lý',415000,2,NULL),(23,'Bò hầm quế chi',300000,2,NULL),(24,'Bò hầm vang đỏ - Bánh mì',390000,2,NULL),(25,'Vịt quay',300000,2,NULL),(26,'Heo quay',270000,2,NULL),(27,'Cá tầm nướng riềng mẻ',370000,2,NULL),(28,'Cá điêu hồng chiên xù Tứ Xuyên',340000,2,NULL),(29,'Cá song hấp xì dầu',315000,2,NULL),(30,'Cá hồi bỏ lò sốt kem tươi',390000,2,NULL),(31,'Cá lăng hấp nấm',350000,2,NULL),(32,'Cơm tám Thái',240000,2,NULL),(33,'Cơm chiên dương châu',220000,2,NULL),(34,'Cơm chiên hải sản',250000,2,NULL),(35,'Tôm sú sốt me',335000,2,NULL),(36,'Tôm sú hấp trái dừa',335000,2,NULL),(37,'Xôi xéo mỡ hành',230000,2,NULL),(38,'Xôi cúc',230000,2,NULL),(39,'Lấu nấm hải sản',650000,2,NULL),(40,'Lẩu thái - Bún',530000,2,NULL),(41,'Lẩu uyên ương - Bún',550000,2,NULL),(42,'Lẩu cá bóp - Bún',615000,2,NULL),(43,'Lẩu Hokkaido - Mì Udon',700000,2,NULL),(44,'Lẩu gà - Bún',500000,2,NULL),(45,'Lẩu cua hai miền - Bún',630000,2,NULL),(46,'Trái cây theo mùa',200000,3,NULL),(47,'Rau cau uyên ương',110000,3,NULL),(48,'Chè củ năng tuyết nhĩ',125000,3,NULL),(49,'Chè sen long nhãn',150000,3,NULL),(50,'Chè Hồng Kông',170000,3,NULL),(51,'Kem Panna Cotta',250000,3,NULL),(52,'Bánh mousse dâu',245000,3,NULL),(53,'Bánh phô mai nướng sốt dâu rừng',270000,3,NULL),(54,'Bánh Passion Cheese',230000,3,NULL),(55,'Nước ngọt CocaCola',180000,4,NULL),(56,'Nước ngọt Pepsi',180000,4,NULL),(57,'Nước khoáng',75000,4,NULL),(58,'Sting',190000,4,NULL),(59,'Bò húc',230000,4,NULL),(60,'Bia Tiger xanh',380000,4,NULL),(61,'Bia Sài Gòn Lager',240000,4,NULL),(62,'Bia Heineken',440000,4,NULL),(63,'Bia Budweiser',410000,4,NULL),(64,'Bia Sapporo Blue Cap',310000,4,NULL),(65,'Xôi xéo NHTC',150000,2,'https://res.cloudinary.com/dguzlcoru/image/upload/v1640356527/d9nkyilfdxbe6aeioh37.jpg');
/*!40000 ALTER TABLE `mon_an` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhan_vien` (
  `idNhanVien` int NOT NULL AUTO_INCREMENT,
  `hoTenNV` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdtNV` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailNV` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiNV` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gioiTinhNV` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idTKNV` int DEFAULT NULL,
  PRIMARY KEY (`idNhanVien`),
  KEY `fk_nhanvien_taikhoan_idx` (`idTKNV`),
  CONSTRAINT `fk_nhanvien_taikhoan` FOREIGN KEY (`idTKNV`) REFERENCES `tai_khoan` (`idTaiKhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_vien`
--

LOCK TABLES `nhan_vien` WRITE;
/*!40000 ALTER TABLE `nhan_vien` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanh_tiec`
--

DROP TABLE IF EXISTS `sanh_tiec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanh_tiec` (
  `idSanhTiec` int NOT NULL AUTO_INCREMENT,
  `tenSanhTiec` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `loaiSanh` int NOT NULL,
  `ngayDatSanh` date DEFAULT NULL,
  PRIMARY KEY (`idSanhTiec`),
  KEY `fk_sanhtiec_loaisanh_idx` (`loaiSanh`),
  CONSTRAINT `fk_sanhtiec_loaisanh` FOREIGN KEY (`loaiSanh`) REFERENCES `loai_sanh` (`idLoaiSanh`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanh_tiec`
--

LOCK TABLES `sanh_tiec` WRITE;
/*!40000 ALTER TABLE `sanh_tiec` DISABLE KEYS */;
INSERT INTO `sanh_tiec` VALUES (1,'Sảnh họp số 1',1,NULL);
/*!40000 ALTER TABLE `sanh_tiec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `su_kien`
--

DROP TABLE IF EXISTS `su_kien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `su_kien` (
  `idSuKien` int NOT NULL,
  `tenSuKien` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `loaiSanhSK` int NOT NULL,
  `loaiMonAnSK` int DEFAULT NULL,
  `dichVuKhac` int DEFAULT NULL,
  PRIMARY KEY (`idSuKien`),
  KEY `fk_sukien_sanhtiec_idx` (`loaiSanhSK`),
  KEY `fk_sukien_dichvu_idx` (`dichVuKhac`),
  KEY `fk_sukien_monan_idx` (`loaiMonAnSK`),
  CONSTRAINT `fk_sukien_dichvu` FOREIGN KEY (`dichVuKhac`) REFERENCES `dich_vu` (`idDichVu`),
  CONSTRAINT `fk_sukien_monan` FOREIGN KEY (`loaiMonAnSK`) REFERENCES `mon_an` (`idMonAn`),
  CONSTRAINT `fk_sukien_sanhtiec` FOREIGN KEY (`loaiSanhSK`) REFERENCES `sanh_tiec` (`idSanhTiec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `su_kien`
--

LOCK TABLES `su_kien` WRITE;
/*!40000 ALTER TABLE `su_kien` DISABLE KEYS */;
/*!40000 ALTER TABLE `su_kien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_khoan`
--

DROP TABLE IF EXISTS `tai_khoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tai_khoan` (
  `idTaiKhoan` int NOT NULL AUTO_INCREMENT,
  `tenDangNhap` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matKhau` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loaiTaiKhoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idTaiKhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_khoan`
--

LOCK TABLES `tai_khoan` WRITE;
/*!40000 ALTER TABLE `tai_khoan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tai_khoan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-25 16:30:42
