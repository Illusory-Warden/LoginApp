-- MySQL dump 10.13  Distrib 8.4.5, for Linux (x86_64)
--
-- Host: localhost    Database: CSBS_DATA
-- ------------------------------------------------------
-- Server version	8.4.5

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
-- Table structure for table `MINI_PROJECT_GROUPS`
--

DROP TABLE IF EXISTS `MINI_PROJECT_GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MINI_PROJECT_GROUPS` (
  `Group_ID` int NOT NULL AUTO_INCREMENT,
  `Student1_UID` varchar(10) DEFAULT NULL,
  `Student2_UID` varchar(10) DEFAULT NULL,
  `Student3_UID` varchar(10) DEFAULT NULL,
  `Student4_UID` varchar(10) DEFAULT NULL,
  `Domain_Area` varchar(255) DEFAULT NULL,
  `Project_Title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Group_ID`),
  KEY `Student1_UID` (`Student1_UID`),
  KEY `Student2_UID` (`Student2_UID`),
  KEY `Student3_UID` (`Student3_UID`),
  KEY `Student4_UID` (`Student4_UID`),
  CONSTRAINT `MINI_PROJECT_GROUPS_ibfk_1` FOREIGN KEY (`Student1_UID`) REFERENCES `students` (`Student_UID`),
  CONSTRAINT `MINI_PROJECT_GROUPS_ibfk_2` FOREIGN KEY (`Student2_UID`) REFERENCES `students` (`Student_UID`),
  CONSTRAINT `MINI_PROJECT_GROUPS_ibfk_3` FOREIGN KEY (`Student3_UID`) REFERENCES `students` (`Student_UID`),
  CONSTRAINT `MINI_PROJECT_GROUPS_ibfk_4` FOREIGN KEY (`Student4_UID`) REFERENCES `students` (`Student_UID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MINI_PROJECT_GROUPS`
--

LOCK TABLES `MINI_PROJECT_GROUPS` WRITE;
/*!40000 ALTER TABLE `MINI_PROJECT_GROUPS` DISABLE KEYS */;
INSERT INTO `MINI_PROJECT_GROUPS` VALUES (1,'24105003','23016065','24105001','23016041','Android Development','Smart Settlement(Splitwise)'),(2,'23016010','23016034','23016055','23016031','Website Development','Job Portal'),(3,'23016005','23016001','23016039','23016002','Web Extension','Extention to automate applications'),(4,'23016035','23016022','23016051','23016019','Web Development + AI','Virtual Event & Networking Platform'),(5,'23016046','23016037','23016040','23016032','Web Development + Cloud','Cloud-Based Digital Voting System for Indian Elections'),(6,'23016061','23016065','23016003','23016029','AI & ML','Smart Bin'),(7,'23016060','23016050','23016056','23016025','Computer Networking + Kubernetes + Web Development + Open Source Tools + IOT(Raspberry Pi)','Personal Cloud Technology and Tools'),(8,'23016033','23016011','23016015','23016013','Android Development + AI','Digital newspaper and Text to speech'),(9,'23016036','24105004','23016024','23016006','Web Development + Cloud','Cloud Travel / Trip Planner for Personalized and Collaborative Trips'),(10,'23016018','23016009','23016030','23016008','Web Development + AI','CineVibes: Match movie to your frequency'),(11,'23016007','23016062','23016026','23016045','Web Dev','JOBVERSE');
/*!40000 ALTER TABLE `MINI_PROJECT_GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `Student_UID` varchar(10) NOT NULL,
  `Student_Name` varchar(100) NOT NULL,
  `DOB` date DEFAULT NULL,
  `SSC_Grade` char(1) DEFAULT NULL,
  `HSC_Grade` char(1) DEFAULT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Branch` varchar(10) DEFAULT 'CSBS',
  `DSY` tinyint(1) DEFAULT '0',
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Student_UID`),
  CONSTRAINT `students_chk_1` CHECK ((`SSC_Grade` in (_utf8mb4'A',_utf8mb4'B',_utf8mb4'C',_utf8mb4'D'))),
  CONSTRAINT `students_chk_2` CHECK ((`HSC_Grade` in (_utf8mb4'A',_utf8mb4'B',_utf8mb4'C',_utf8mb4'D')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('23016001','RASHMIN CHAUDHARI','2005-03-15','A','B','Male','CSBS',0,'$2y$10$L35nq0REDPjcZFvYyigVGuL9lEj.VuzZ89nYwB5Ey5Z7mB6OtHSoi'),('23016002','KRITIKA MANDALE','2005-07-22','A','A','Female','CSBS',0,'$2y$10$9aLI7mFkB5U9gPM01ZngYOeCeYcQAexbGs8flihGKh02aeUIFtfSS'),('23016003','KAJAL BUTLE','2005-01-10','B','B','Female','CSBS',0,'$2y$10$eV2VlgEgHcULfp6maBiDauvBNcyMARoZYVT7uN5j4FvWKDhRUgIO2'),('23016004','MEET TAGALPALLEWAR','2004-11-30','A','A','Male','CSBS',0,'$2y$10$wAVjHMG1urakDS76gTORM.3bC4OKI0o8Lt96m61kO9LkB/PltxmgW'),('23016005','MEENAL SHARMA','2005-05-18','B','B','Female','CSBS',0,'$2y$10$O8ORQVt4fHUyV.j0cSMwj.VF1QKvTLX//0u7G8fTSbci6HOtYt/GW'),('23016006','KHUSHI PATANKAR','2005-09-08','A','B','Female','CSBS',0,'$2y$10$JaxbHXFNPG7XrcoUYIAgBOI.cKvKfFMWLv36pQlnlB4UF7sVn7Dei'),('23016007','DSV PHANI','2004-12-25','A','A','Male','CSBS',0,'$2y$10$c7h.mIxD3HK2Q8VJpr007eOYbotppn.nO2IiR.xcaNHnmhCwWDQYS'),('23016008','RUDRA DALAL','2005-02-14','B','B','Male','CSBS',0,'$2y$10$2KL.mBcqCzKq6CnSdCAr8ugo.7NpMUtI93bVGVDC5ny/MgMncL0eG'),('23016009','SHLOK TALHAR','2005-06-03','A','B','Male','CSBS',0,'$2y$10$dp1RCI43SqRLvQpNOxoX5uanCsVj.vxstv.jwXr5pqx0.aXI/r8y6'),('23016010','SONAL KULKARNI','2005-04-20','A','A','Female','CSBS',0,'$2y$10$wcVmGuCJC9puEbrMObYK.OJQLltiVxU7JteIngDLYBRH9rbxpUQJS'),('23016011','NIRAJ FATUNG','2004-10-12','B','C','Male','CSBS',0,'$2y$10$xitVGXXMcz1.VSzUslJK7.ESMDsB4FH9czvtWUBwVM5wOvgmmiQSa'),('23016012','AYUSH SHAHANE','2005-08-07','A','A','Male','CSBS',0,'$2y$10$NfyjwqCzsHDjz/9vbAiCu.3kPIcK2IyeWiWs0HzxeEk88RjuL5jMW'),('23016013','HARSHIT CHOUDHARY','2005-01-28','B','B','Male','CSBS',0,'$2y$10$vTlIjtd4I2IYtAbb0q0uve6ABrMq/y/U74QsOXKOLy7Qx006F1M9i'),('23016014','TANMAY THAOKAR','2004-09-16','A','B','Male','CSBS',0,'$2y$10$sV2Q7HSXBeHStV.frX3VRuJAc4XLoUIcm7R0/Igk8YJ9kCnL.ylwu'),('23016015','PIYUSH KALAMBE','2005-03-05','B','A','Male','CSBS',0,'$2y$10$HMvIyMp//AjZTx2/mDgEpO8JS9d3vR3Wl6la0a/CnSrkuKVtrj7Bi'),('23016017','AAYUSH DUBEY','2005-07-11','A','A','Male','CSBS',0,'$2y$10$JeMFay9ooPc16CfbSW3/reX3AgxaTuPQ/X9XBYz/3J5o1AepW.suO'),('23016018','SARVESH SHARMA','2004-12-19','A','B','Male','CSBS',0,'$2y$10$gG8luXEeH/r9THrNlN4Jbu8p2/r/4q.Q3y89iY6rrPTY8jV10Wgae'),('23016019','ARYAN BIGHANE','2005-05-24','B','B','Male','CSBS',0,'$2y$10$cx3vtelASX5SzoCLbxwneOvx87GSGnIxGhSCwW5SgRyqAtaj0yUJW'),('23016020','PIYUSH RAGHORTE','2005-02-09','A','A','Male','CSBS',0,'$2y$10$qDbwuVXDPobv3MnHf91G1OYXh.KJJkKn5Mrt9gPEAgk1Chu0vJpJe'),('23016021','KANAK RAMTEKE','2005-06-17','B','C','Male','CSBS',0,'$2y$10$uEig6zNZKDSxIGPktFoe5u3dN8kVeHydrMgHQABBGW0ZZ3so6JC.e'),('23016022','YASH DHARME','2004-11-02','A','B','Male','CSBS',0,'$2y$10$Hdl2X11NJVFxlRMOnOjzgO46IvzY/SWHyPV0llBg.SvB9aESMNgOK'),('23016023','PRERAK KHAIRE','2005-04-13','A','A','Male','CSBS',0,'$2y$10$J7O4CIG4N35ROAyOa4rmiOd2.Y8IR63h003AJ5ZdwoIYEhz2ZmJzm'),('23016024','NANDINI CHANDURKAR','2005-08-26','A','B','Female','CSBS',0,'$2y$10$ZccplV8vggp0hcSlAdRNHebotnIGCFx2qs69tuG1wpmt6na63geq.'),('23016025','HARSH YADAV','2004-10-08','B','B','Male','CSBS',0,'$2y$10$.5a2fHCqPphCUHUCvyE4veWH85VSF8OcjpT6kbyit4qeca1DCGKqu'),('23016026','PALAK BATRA','2005-01-21','A','A','Female','CSBS',0,'$2y$10$f8irKFfHinJLepGpBZ5nrOVDuHTXVz9tVkx/R4hNQegPawVIm95iG'),('23016027','SHRAVAN SAPATE','2005-07-04','B','C','Male','CSBS',0,'$2y$10$2uJJIlYtSQUEAN86BjmKB.j96p4OL8.sy5FFzepu0LGhYTlyxKhKe'),('23016028','HANSRAJ','2004-12-31','A','B','Male','CSBS',0,'$2y$10$RGLxIa9hzAIIa3oQkct1s.LgcB1EOCzse1a6xMhT8RDpW6I8xqL0m'),('23016029','HRUTUJA WANKHEDE','2005-03-18','A','A','Female','CSBS',0,'$2y$10$g7AW4yrFngGFUheRbUNwyupou8ovgWw.SZXOguiV0x.ZQ8.t.97TK'),('23016030','CHAITANYA PAWAR','2005-09-12','B','B','Male','CSBS',0,'$2y$10$Id9MIVSzv2mToP/F/qOJ7Oqo2pzdluxVvyzJGKctg7/gPbueW5qfm'),('23016031','PARTH PASHINE','2005-05-27','A','A','Male','CSBS',0,'$2y$10$7wvnWUxKM6sOO8AguuwgLeIFkneAHCgekbBcdmJy7sjUWPpyxAaTy'),('23016032','TUSHAR NIMBURKAR','2004-11-15','A','B','Male','CSBS',0,'$2y$10$YQXi5/MPVu.Qg3JtKR5H.emNIo5dWNhjtDk1b8tStEDbEd7XjgP1.'),('23016033','LEVIN RAUT','2005-02-23','B','B','Male','CSBS',0,'$2y$10$0wsuanOU2E2zXBnLrY3Ly.aiVGUsrMt9FLFkxE8L0Wc6Sl5rLiipO'),('23016034','ANUSHKA MOON','2005-06-06','A','A','Female','CSBS',0,'$2y$10$b0T.ani9HFNq1OUTVDE.wu4GByk6BilyVeipFLXOFBHVvZAV7vUDG'),('23016035','SWAYAM TARKAMORE','2005-04-01','B','C','Male','CSBS',0,'$2y$10$CPvsdVv9mATq.rXGlMeBju/0a7m3bjGm.92nK9bjGqttw8hYfldWy'),('23016036','AMAR KALBANDE','2004-08-29','A','B','Male','CSBS',0,'$2y$10$YxOWM3o6M6MWcvDDciawhuknWh1LcIKXyK0SHwfDkXymHe0NpL/UC'),('23016037','SHREYASH BADHIYE','2005-01-14','A','A','Male','CSBS',0,'$2y$10$OCnQsD7uIWu9vWKbBK4lpuhBeGpCeRENnyjmpuaR2iHoYhc8zz85m'),('23016038','SAMRUDDHI BARBATKAR','2005-03-08','A','B','Female','CSBS',0,'$2y$10$XXTQwsWEd9JcPjHAIGWoxerYijwXjwfoduo6nei0eSoyG2tl5b2su'),('23016039','DEVANSH PALSAPURE','2005-07-19','A','A','Male','CSBS',0,'$2y$10$GzZCXWtHv2x0hYYU0zQQkebgYYckFphxkkNhhJ9pH7/cHX5T1GlVC'),('23016040','PRASANNAJEET MHAISKAR','2004-11-22','B','B','Male','CSBS',0,'$2y$10$5yJ.aKrdSUqF.8xjNkpMFOq24PE2pwVPcqdHNc9qKc.OA7XTiNOZG'),('23016041','SHREYASI JUMDE','2005-05-15','A','A','Female','CSBS',0,'$2y$10$S.QYtHpHdBoTRmDAYEEgm.ybQr3iTDhtiw2g3IbmKqUG2gwgfOyeu'),('23016042','KHUSHI WASNIR','2005-09-03','A','B','Female','CSBS',0,'$2y$10$RX3KFCCdFDfIH5fBWhu/RuhYRCwl9VbEL8A5qNhl52Yq9lzVJe6Dy'),('23016043','VEDANT RAGWALE','2004-12-28','B','B','Male','CSBS',0,'$2y$10$yVpawdPQc1qMjKIedx1spukcFo/4QSiJSu6I3m2BbLF8rpFOlHsba'),('23016044','SAEE APTURE','2005-02-11','A','A','Female','CSBS',0,'$2y$10$6Ud8yHVQCkOpYGNsMNhuH.Gsf6ja/8icUaQprmZWgOXK4B4UwvXse'),('23016045','AISHWARYA LALA','2005-06-25','A','B','Female','CSBS',0,'$2y$10$cxgoP.pDrYB588KA5wzx/OKrYpUn3EanbxEav9v34./ytE0XFHDhu'),('23016046','AMAN MESHRAM','2004-10-17','B','C','Male','CSBS',0,'$2y$10$CH1R4L4I9olNBnYaeQr0POG7n3QJcthWYzMkn88Y07ktwQgA69LD2'),('23016047','UNNATI SUPLE','2005-04-09','A','A','Female','CSBS',0,'$2y$10$lpbhblSdWvD2PRZykvDTMekR69zfL34BQU3HI3IVo4OBRNZFNSz4i'),('23016048','SHAMBHAVI TONGAONKAR','2005-08-14','A','B','Female','CSBS',0,'$2y$10$6Kk9Ao45crG6tLXqwO8RhOX.TgBy657rp4AgHQYyKtICUpseLRMUe'),('23016049','ARYAN SETH','2004-12-06','B','B','Male','CSBS',0,'$2y$10$6b4e7onEvMxjzhzSKKiSzOyMgzHKWj.kOeRbLyjd6W3TbJWqaSnMK'),('23016050','ATHARVA DHOTE','2005-01-31','A','A','Male','CSBS',0,'$2y$10$g9ISJZm0iqaVv3k8fddDPeYVFyXsI.4rPErJTinfNkLYkaehO2pO.'),('23016051','MAITHILI DORKHANDE','2005-07-26','A','B','Female','CSBS',0,'$2y$10$9hkFPOortN9pFYib5ah0cuOVUfmRceiNmpCeWufMVPbxjsQq58wGi'),('23016052','AKSHAT MOURYA','2005-03-12','B','B','Male','CSBS',0,'$2y$10$VDqZKYssXpsHmj6gXzqiCOLlrzf10yX7L5vsEvs6BSj4ztWwRX0Sm'),('23016053','SUMIT HELONDE','2004-09-24','A','A','Male','CSBS',0,'$2y$10$ltQNc/Tk6wnWNd0U9CU/9.OZkxsv.UxyMuqxTJIGfYV.s9cLp.u5C'),('23016054','HARSHAD PATHEKAR','2005-05-07','A','B','Male','CSBS',0,'$2y$10$RSZs/cNhojDXXv.1WZDIV.q1DfuOj/8d6AZlLwzEKZwlNotDymRBC'),('23016055','VANSHIKA SATAV','2005-02-18','B','A','Female','CSBS',0,'$2y$10$bOxxZUHx.b7H./YMCBdgF.HQrZf46mFEuS3uZTiNZBlWnaekE4SdS'),('23016056','ABHIJEET PATHODE','2005-06-30','A','B','Male','CSBS',0,'$2y$10$Gs0G6eJFdIKSUwoY5QEp3eM7XB4QPJqLSV4Bm/90MIM.uCAY/T1sm'),('23016058','SIDDHI AMBATKAR','2004-11-13','A','A','Female','CSBS',0,'$2y$10$oYOJMXHE8fqutIKa.wvJseAphpcB0ooOyFeHR45IXl4I6Qbu5AMrW'),('23016060','RUSHI DAULATKAR','2005-04-21','B','B','Male','CSBS',0,'$2y$10$Ye2MEzDQ/b1gExMynNPdh.canpHp8/ay.6DaiiVI5.Yib0HwMZEkG'),('23016061','PROMITI BANERJEE','2005-08-05','A','A','Female','CSBS',0,'$2y$10$HtkhYDB5TDgOBQZiIKrTdOqDErpik9h3cbeb2y7biIh1D0QrGA/gC'),('23016062','JOE JOISON','2004-12-18','A','B','Male','CSBS',0,'$2y$10$RTRcgUFDs9FIGF27ld/j8up2ld6f4pXn0BppVlHqnVrJA9.x5uqjG'),('23016065','REET GOENKA','2005-01-27','A','A','Female','CSBS',0,'$2y$10$ImsT4ki5dzFaFxvXRaGXFOXTJ15ypyqBFHGk8aRqgkI76bsd9Ao9G'),('24105001','NEHA SATAO','2003-09-08','A','A','Female','CSBS',1,'$2y$10$7SYIkf9sfahFJbBy6X0qIO6Bhu2niGfujMaHVAnnIjX73Ue5lw3im'),('24105002','SHUBHAM RAMTEKE','2003-03-22','B','C','Male','CSBS',1,'$2y$10$.ECjXrBLLmXbQ2kgVcu4tOM.ect0C3GU/mo6eZGbgdC8oYWjHuEiq'),('24105003','AVANTEE SARVE','2003-07-14','A','B','Female','CSBS',1,'$2y$10$0ZFeBBDw6zfAhl/reP5MN.MDZS/yMp8hvjEKkePLhgF1n6VgpcTry'),('24105004','OM CONDE','2003-11-29','A','A','Male','CSBS',1,'$2y$10$q.XlKp0AJLpRBO77gsqnTOokNNFg6.Emua4iV6yiAhVCkPav19V9G'),('24105005','LAVANYA NIKOSE','2003-02-10','B','B','Female','CSBS',1,'$2y$10$N4ZLJclNPARq.rMc2y2Cp.B3HDYMVYYlxb.vm1KubzSQYhUMP5an2'),('24105006','PRITI PETLE','2003-06-03','A','A','Female','CSBS',1,'$2y$10$0p9J12nZ9Du9BU/gOQgUreLDTk.iYUOlIuXD0rD.TGnk5idqS7./m'),('24105007','SHREYANSH NICHKALA','2003-10-25','A','B','Male','CSBS',1,'$2y$10$MEjGEDTmVKD6dczvYBwbp.iKyMu/icQZCcKV9MDYilp6XrdDqgRrW');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-25 19:56:08
