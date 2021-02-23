-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bisp
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `attach`
--

DROP TABLE IF EXISTS `attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attach` (
  `num` int(11) NOT NULL AUTO_INCREMENT COMMENT 'attach 테이블의 고유번호',
  `uuid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT 'attach 테이블의 uuid',
  `filename` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT 'attach 테이블의 파일이름',
  `uploadpath` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT 'attach 테이블의 업로드 경로',
  `image` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT 'attach 테이블의 이미지',
  `no_num` int(11) DEFAULT NULL COMMENT 'attach 테이블의 부모테이블 notice의 num 번호',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='notice의 attachc테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attach`
--

LOCK TABLES `attach` WRITE;
/*!40000 ALTER TABLE `attach` DISABLE KEYS */;
INSERT INTO `attach` VALUES (1,'8bf2a95a-40ff-4c54-8b10-c583a90c0b0a','eve.jpg','2021/02/21','I',40);
/*!40000 ALTER TABLE `attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmovie`
--

DROP TABLE IF EXISTS `bookmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmovie` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `theater` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmovie`
--

LOCK TABLES `bookmovie` WRITE;
/*!40000 ALTER TABLE `bookmovie` DISABLE KEYS */;
INSERT INTO `bookmovie` VALUES (12,'admin','서울',' A관','2021-02-04 17:47:00','코딩의 습격',32000),(13,'admin','서울',' C관','2021-02-24 17:48:00','짱구는 못말려',65000),(14,'admin','서울',' C관','2021-02-10 17:48:00','트루먼쇼',40000),(15,'admin','서울',' C관','2021-03-08 17:51:00','미녀와 야수',40000),(16,'admin','서울',' B관','2021-03-03 17:49:00','알라딘',90000),(17,'admin','부산',' E관','2021-03-06 17:49:00','트루먼쇼',18000),(18,'qwer','대구',' D관','2021-02-13 17:48:00','짱구는 못말려',18000),(19,'qwer','대구',' D관','2021-02-13 17:48:00','짱구는 못말려',24000),(20,'vvv','대구',' D관','2021-02-13 17:48:00','짱구는 못말려',18000),(21,'ccc','대구',' D관','2021-02-13 17:48:00','짱구는 못말려',18000),(22,'aaa','대구',' D관','2021-02-13 17:48:00','짱구는 못말려',16000),(23,'aaa','부산',' A관','2021-03-08 17:50:00','미녀와 야수',16000);
/*!40000 ALTER TABLE `bookmovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `c_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '카드고유번호 AI',
  `c_name` varchar(90) DEFAULT NULL COMMENT '카드이름',
  `c_sale` varchar(45) DEFAULT NULL COMMENT '청구/현장할인',
  `c_onoff` varchar(45) DEFAULT NULL COMMENT '온/오프라인 유무',
  `c_discount` varchar(45) DEFAULT NULL COMMENT '할인 금액',
  `c_kinds` varchar(45) DEFAULT NULL COMMENT '카드분류용(신용/포인트/기타)',
  PRIMARY KEY (`c_num`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (70,'뉴롯데시네마포인트플러스신용카드','청구할인','온라인 할인','3,5,9천원 할인','롯데카드'),(72,'뉴롯데시네마포인트플러스체크카드','청구할인','온/오프라인','3천원 할인','롯데카드'),(73,'369체크카드','현장할인','','3천원 할인','IBK카드'),(74,'경남은행 356il save카드','현장할인','','2천원 할인','롯데카드'),(75,'대구은행 356il save카드','현장할인','','1,500원 할인','롯데카드'),(76,'대구은행 틱톡카드','현장할인','오프라인','3천원 할인','롯데카드'),(77,'대구은행 APT카드','현장할인','','1,500원 할인','롯데카드'),(78,'대구은행 공무원카드','현장할인','','3천원 할인','롯데카드'),(79,'독서 릴레이 카드','현장할인','','1,500원 할인','--카드종류--'),(80,'레포츠카드','현장할인','','1,500원 할인','롯데카드'),(81,'L.POINT','','온/오프라인','','포인트'),(82,'하나머니','청구할인','온/오프라인','','포인트'),(83,'마이신한포인트','청구할인','온/오프라인','','포인트'),(84,'현대카드 M','현장할인','온/오프라인','','포인트'),(85,'KB포인트리','청구할인','온/오프라인','','포인트'),(86,'씨티포인트','청구할인','온/오프라인','','포인트'),(87,'삼성보너스클럽','청구할인','온/오프라인','','포인트'),(88,'블루멤버스 포인트','현장할인','온라인 할인','','포인트'),(89,'GS&POINT','현장할인','온라인 할인','','포인트'),(90,'S-OIL 포인트','','온/오프라인','','포인트'),(91,'T멤버십','','온라인 할인','VIP 연6회 무료관람','통신사'),(92,'KT멤버십','','온라인 할인','VIP 연6회 무료관람','통신사'),(93,'롯데상품권','','오프라인','','기타결제수단'),(94,'문화상품권','','오프라인','','기타결제수단'),(95,'도서문화상품권','','오프라인','','기타결제수단'),(96,'해피머니 상품권','','온/오프라인','','기타결제수단'),(97,'모바일팝','','오프라인','','기타결제수단');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardinfo`
--

DROP TABLE IF EXISTS `cardinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardinfo` (
  `num` int(11) NOT NULL AUTO_INCREMENT COMMENT '카드인포 고유번호 AI',
  `uuid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '중복방지태그',
  `filename` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '파일이름',
  `uploadpath` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '업로드경로',
  `no_num` int(11) DEFAULT NULL COMMENT '카드테이블 매칭용 넘버',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardinfo`
--

LOCK TABLES `cardinfo` WRITE;
/*!40000 ALTER TABLE `cardinfo` DISABLE KEYS */;
INSERT INTO `cardinfo` VALUES (99,'e785e83e-fa72-4747-a824-48eb4dce43ee','37d3662be10842099ec113e57dd6c1d5.png','2021/02/20',70),(101,'c768e66b-157c-4550-8902-1b8546a24aa7','이미지_2021-02-20_143837.png','2021/02/20',72),(102,'78237fbb-7a7f-40b0-82f1-5eaa3875dfc7','29eb9d8b3257480186229687fa879487 (1).png','2021/02/20',73),(103,'cc0f3f5c-b4d1-47af-96e2-6362a10896c1','64eaa57a31f54106a332758d458c24c6 (1).png','2021/02/20',74),(104,'0447912c-fd09-47e6-bc1d-a060b3c6e717','f7ac41c07afe49178a358168e703e51e.png','2021/02/20',75),(105,'4eb3374c-8909-47bb-919d-240c5bfe452e','55f814b3fcd945f089f833b290b71ba2 (1).png','2021/02/20',76),(106,'5e6c669d-52bd-42fa-9676-26ca0021bcb4','a668ee666c074211bec664415484c665.png','2021/02/20',77),(107,'a503db1e-105f-4269-93c4-299fc79e1f76','c2a93d5168af44a2a28780b68df33c66.png','2021/02/20',78),(108,'f6cb670c-239b-4e67-9d16-85f74f7116fb','b109b6887dae4a9baecb1085e4034d19.png','2021/02/20',79),(109,'7cd5f63f-4b6a-45b2-b0f4-37d565b5e4e4','이미지_2021-02-20_144435.png','2021/02/20',80),(110,'fdca681c-17e9-44c8-94c2-5de24d0a58d3','b93290c7e59541a1adc33ff22d0188ad.png','2021/02/20',81),(111,'b9d2c39d-08ad-4707-8e2a-afacdd189ef5','0c7eb289c55e40fb8fa441b619ad4ab1.jpg','2021/02/20',82),(112,'5ffa6836-0fc9-4566-8b59-e64017ea6097','5f15a001c5de4ab9a9e96338ea4f4f2d (1).png','2021/02/20',83),(113,'b9a346c9-2395-4d21-b771-9a231000ae3a','eac4a11dee154e5bb3672b372834a229 (1).jpg','2021/02/20',84),(114,'0736d9a9-558f-4644-a9a5-bfd362120655','2f07904876c849b1a3cb4b3c3a550602.jpg','2021/02/20',85),(115,'bf567a40-b741-4378-a6e4-851bd157c97d','e59efc219378425b864959b272c676e9 (1).jpg','2021/02/20',86),(116,'3dc09f75-71f1-4c65-a882-d49d41361236','f6e3441435dd4e4298150b980de5cf22 (1).png','2021/02/20',87),(117,'c0148723-32a9-40f3-9c23-cbdd7b89c596','e61af1fd166741b39eb7bbd1ea8c4aec.png','2021/02/20',88),(118,'63e455de-189e-4c62-8a8a-048ae1f11654','09c5087ba62f4340b5d7ad41353cd32d.png','2021/02/20',89),(119,'bbd0fea1-fcf3-4354-8099-ddeeae4543b0','이미지_2021-02-20_150500.png','2021/02/20',90),(120,'208511bd-0f7f-4021-b774-0d1a9014073a','59610575f6d54f02931717878400c394.png','2021/02/20',91),(121,'09591e21-4d09-4946-85c4-66ca85439515','e432f8da1440486aa65513d4dab8f3f3.png','2021/02/20',92),(122,'31002173-21b4-4fba-8001-66d846b938c1','이미지_2021-02-20_151036.png','2021/02/20',93),(123,'7716d4b7-9769-4efe-9319-bd0d4f62ce03','이미지_2021-02-20_151103.png','2021/02/20',94),(125,'3cf427eb-2411-4e5a-bb73-20cf055dad14','a9e078bfbdca4bf1873431a603e5df18 (1).png','2021/02/20',96),(126,'9c61c764-e869-4ccc-8192-72bf55758a6f','5d34e046a28543adaa1a459d5f715617 (1).jpg','2021/02/20',97),(127,'835c17b2-b7cf-469b-bc0a-502bf5b1e74c','이미지_2021-02-20_171957.png','2021/02/20',95);
/*!40000 ALTER TABLE `cardinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `cno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'comment의 고유 num',
  `nno` int(11) NOT NULL COMMENT 'notice의 num번호',
  `id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '작성자 id',
  `content` varchar(3000) COLLATE utf8_bin NOT NULL COMMENT '댓글의 내용',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작성일자',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '업데이트/수정 시 시간정보',
  `re_ref` int(11) NOT NULL COMMENT '그룹번호, 주글번호는 그룹번혹가 됨',
  `re_lev` int(11) NOT NULL COMMENT '들여쓰기 레벨 1이면 들여쓰기 1번',
  `re_seq` int(11) NOT NULL COMMENT '그룹 내에서의 순번 0이 제로순위',
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='게시판 댓글관리 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csmtm`
--

DROP TABLE IF EXISTS `csmtm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `csmtm` (
  `mnum` int(11) NOT NULL AUTO_INCREMENT,
  `mid` varchar(45) DEFAULT NULL,
  `mquestion` int(11) DEFAULT NULL,
  `mkinds` int(11) DEFAULT NULL,
  `msubject` varchar(100) DEFAULT NULL,
  `mcontents` varchar(5000) DEFAULT NULL,
  `regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reref` int(11) DEFAULT NULL,
  `relev` int(11) DEFAULT NULL,
  `reseq` int(11) DEFAULT NULL,
  `questioner` varchar(45) DEFAULT NULL COMMENT '질문자(답변 확인을 위함)',
  PRIMARY KEY (`mnum`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csmtm`
--

LOCK TABLES `csmtm` WRITE;
/*!40000 ALTER TABLE `csmtm` DISABLE KEYS */;
INSERT INTO `csmtm` VALUES (1,'qwer',1,1,'센텀시티점에 대한 문의','센텀시티점은 총 몇관으로 이루어져 있나요?','2021-02-20 11:28:51',1,0,0,'qwer'),(2,'qwer',2,5,'페르소나 진짜 별로다','퉤','2021-02-20 11:29:18',2,0,0,'qwer'),(3,'asdf',3,3,'포인트가 안쌓여요','환불할게요~','2021-02-20 11:30:00',3,0,0,'asdf'),(4,'asdf',2,2,'짱구는 못말려 넘나 재미져요~~~~!!!^~^','힝 속았지? 이거 보여줄려고 어그로 끌었다. 해리포터랑 볼드모트가 싸우는걸 보고있자니 가슴이 웅장해진다.','2021-02-20 11:30:56',4,0,0,'asdf'),(5,'admin',2,2,'RE : 짱구는 못말려 넘나 재미져요~~~~!!!^~^에 대한 안내','감사합니다 고객님 즐거운 영화 시청하시기 바랍니다.','2021-02-21 04:47:07',4,1,2,'asdf'),(6,'admin',3,3,'RE : 포인트가 안쌓여요에 대한 안내','감사합니다 고객님 즐거운 영화 시청하시기 바랍니다.','2021-02-20 11:31:44',3,1,1,'asdf'),(7,'admin',2,5,'RE : 페르소나 진짜 별로다에 대한 안내','감사합니다 고객님 즐거운 영화 시청하시기 바랍니다.','2021-02-20 11:31:48',2,1,1,'qwer'),(8,'admin',1,1,'RE : 센텀시티점에 대한 문의에 대한 안내','감사합니다 고객님 즐거운 영화 시청하시기 바랍니다.','2021-02-20 11:31:53',1,1,1,'qwer'),(9,'admin',2,2,'RE : 짱구는 못말려 넘나 재미져요~~~~!!!^~^에 대한 안내','감사합니다!','2021-02-21 04:47:08',4,1,1,'asdf'),(10,'aaa',1,1,'결제가 너무 느려요','결제가 너무 느려요ㅠ','2021-02-21 08:11:21',10,0,0,'aaa'),(11,'admin',1,1,'RE : 결제가 너무 느려요에 대한 안내','죄송합니다\r\n빠른시일내에 수정하겠습니다','2021-02-21 08:16:28',10,1,1,'aaa');
/*!40000 ALTER TABLE `csmtm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csnotice`
--

DROP TABLE IF EXISTS `csnotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `csnotice` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(45) DEFAULT NULL,
  `cssubject` varchar(45) DEFAULT NULL,
  `cscontents` varchar(5000) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csnotice`
--

LOCK TABLES `csnotice` WRITE;
/*!40000 ALTER TABLE `csnotice` DISABLE KEYS */;
INSERT INTO `csnotice` VALUES (21,'admin','영화관 내 음식섭취에 관한 안내문','그냥 먹지 마세요','2021-02-15 23:56:04',1),(22,'admin','코로나 관련 좌석안내','떨어져 앉으세요','2021-02-19 18:20:51',1),(23,'admin','한파 대비 영화관 개점일','밖에 추워요 따시게 입고오세요','2021-02-19 18:21:35',1),(24,'admin','한파대비 난방 안내문','평균 50도로 맞췄습니다.','2021-02-19 18:22:00',1),(25,'admin','페르소나 중앙아프리카점 잠정 폐쇄','중앙아프리카점이 코로나 여파로 인한 경영악화로 잠정 폐쇄를 결정하게 되었습니다.','2021-02-20 19:09:06',2),(26,'admin','해리포터와 불사조기사단 개봉 연기','코로나 여파로 관람객이 없어서 개봉을 연기하게 되었습니다. DVD로 보세요~','2021-02-20 19:10:24',3),(27,'admin','테스트용','공지사항테스트용','2021-02-21 17:15:41',1);
/*!40000 ALTER TABLE `csnotice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `e_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '이벤트 페이지 관리 테이블의 고유번호',
  `e_section` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '이벤트 종류',
  `e_title` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '이벤트의 제목',
  `start_date` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '이벤트 시작시간',
  `end_date` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '이벤트 종료시간',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '작성일자',
  PRIMARY KEY (`e_num`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='이벤트 관리 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (35,'영화','개봉기념 현장 증정 이벤트','2021-02-24','2021-03-02','2021-02-20 07:13:28'),(36,'영화','현장 경품 이벤트','2021-02-17','2021-02-27','2021-02-20 07:15:15'),(37,'영화','현장 경품 이벤트','2021-02-23','2021-02-27','2021-02-20 07:16:36'),(38,'영화','현장 경품 증정 이벤트','2021-02-20','2021-02-24','2021-02-20 07:17:19'),(39,'영화','스페셜 엽서 증정 이벤트','2021-02-20','2021-02-26','2021-02-20 07:17:50'),(40,'영화','시네마케슬 GRAND OPEN','2021-02-19','2021-02-28','2021-02-20 07:18:22'),(41,'시사회/무대인사','패키지 증정 굿즈 상영회','2021-02-27','2021-02-28','2021-02-20 07:19:56'),(42,'시사회/무대인사','스페셜GV','2021-02-24','2021-02-24','2021-02-20 07:20:22'),(43,'시사회/무대인사','스페셜 굿즈 패키지 상영회','2021-02-27','2021-02-27','2021-02-20 07:22:00'),(44,'시사회/무대인사','감독&배우 스페셜GV','2021-02-25','2021-02-25','2021-02-20 07:22:32'),(45,'시사회/무대인사','정성일 평론가 앵콜 GV 시사회','2021-02-21','2021-02-21','2021-02-20 07:23:18'),(46,'HOT','메모리즈 어버웃 시네마 2월 오스카','2021-02-09','2021-03-03','2021-02-20 07:32:50'),(47,'HOT','롯데ON MVG 고객님꼐 드리는 신규가입 혜택!','2021-02-09','2021-03-31','2021-02-20 07:33:49'),(48,'HOT','설프라이즈! 패키지','2021-02-08','2021-02-21','2021-02-20 07:35:07'),(49,'HOT','쿠팡이츠 딜리버리 서비스 OPEN!','2021-01-29','2021-02-28','2021-02-20 07:35:45'),(50,'HOT','나만의 영화 티켓 롯시 포티','2021-01-27','2021-12-31','2021-02-20 07:36:29'),(51,'제휴할인','카카오뱅크 할인','2021-02-01','2021-07-31','2021-02-20 07:37:07'),(52,'제휴할인','T멤버십 제휴 할인','2021-02-01','2022-01-31','2021-02-20 07:37:52'),(53,'제휴할인','5000M포인트 사용','2020-03-01','2021-02-28','2021-02-20 07:38:48'),(54,'제휴할인','기아 레드 멤버스 포인트','2019-12-27','2023-12-31','2021-02-20 07:39:38'),(55,'제휴할인','티켓,매점 할인 혜택','2019-12-27','2023-12-31','2021-02-20 07:43:49');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventposter`
--

DROP TABLE IF EXISTS `eventposter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventposter` (
  `num` int(11) NOT NULL AUTO_INCREMENT COMMENT '이벤트 이미지 관리 테이블의 고유 num',
  `uuid` varchar(36) DEFAULT NULL COMMENT '이벤트 이미지 관리 테이블의 uuid',
  `filename` varchar(1000) DEFAULT NULL COMMENT '이벤트 이미지 관리 테이블의 파일이름',
  `uploadpath` varchar(1000) DEFAULT NULL COMMENT '이벤트 이미지 관리 테이블의 파일경로',
  `no_num` int(11) DEFAULT NULL COMMENT '이벤트 이미지의 부모 테이블인 이벤트의 num',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='이벤트의 이미지 관리 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventposter`
--

LOCK TABLES `eventposter` WRITE;
/*!40000 ALTER TABLE `eventposter` DISABLE KEYS */;
INSERT INTO `eventposter` VALUES (32,'50460d11-6082-4f28-8c67-041008ee780b','이미지_2021-02-20_161316.png','2021/02/20',35),(33,'7b97fecc-8f55-42f2-b106-04703e03db4b','이미지_2021-02-20_161503.png','2021/02/20',36),(34,'e1e8188d-1e8f-4bf0-a378-be6403ddff3e','이미지_2021-02-20_161530.png','2021/02/20',37),(35,'8cca92fa-629c-4a75-8fca-74f85166c494','이미지_2021-02-20_161708.png','2021/02/20',38),(36,'b4a75f8d-38b7-46dc-9252-412b96dc366e','이미지_2021-02-20_161743.png','2021/02/20',39),(37,'4a13fafa-ba7c-454c-bd2a-a59c87885d0e','이미지_2021-02-20_161817.png','2021/02/20',40),(38,'a98433c6-1b5e-483c-8932-71d4930947f0','이미지_2021-02-20_161947.png','2021/02/20',41),(39,'a254f41b-e47b-4318-982e-070b5c3b8b11','이미지_2021-02-20_162016.png','2021/02/20',42),(40,'df49efd2-a9b8-44bb-be57-62e25663072a','이미지_2021-02-20_162153.png','2021/02/20',43),(41,'d6f05028-7d41-4acb-86e5-563eada32de2','이미지_2021-02-20_162226.png','2021/02/20',44),(42,'c68496db-8ff2-45eb-85b1-d611505655dc','이미지_2021-02-20_162308.png','2021/02/20',45),(43,'ee8b5489-edc2-44cc-93e3-5aacdd71de80','이미지_2021-02-20_163240.png','2021/02/20',46),(44,'264a61aa-5350-4b40-954a-3b6c4680ecba','이미지_2021-02-20_163337.png','2021/02/20',47),(45,'8f0dd5c3-9e4d-4537-bc52-a41718b86dc8','이미지_2021-02-20_163459.png','2021/02/20',48),(46,'9ca1edb3-5d15-4dec-9479-8ac0740282ad','이미지_2021-02-20_163537.png','2021/02/20',49),(47,'159dc67a-dd56-411f-8ff3-05972cb4aff3','이미지_2021-02-20_163614.png','2021/02/20',50),(48,'51665020-8228-46f9-a6ca-03f8d448789f','이미지_2021-02-20_163700.png','2021/02/20',51),(49,'5f9be493-af76-4894-8e92-7205a59a5e58','이미지_2021-02-20_163733.png','2021/02/20',52),(50,'f319e548-841f-4dfd-9eae-d858a2a9daf4','이미지_2021-02-20_163827.png','2021/02/20',53),(51,'bfb37ce9-1fd7-44ba-b56e-5269e3c434bf','이미지_2021-02-20_163920.png','2021/02/20',54),(52,'39db4a98-a0ea-463c-a022-7442d2a5d3ca','이미지_2021-02-20_164331.png','2021/02/20',55);
/*!40000 ALTER TABLE `eventposter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcomment`
--

DROP TABLE IF EXISTS `mcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcomment` (
  `cno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글 번호',
  `mno` int(11) NOT NULL COMMENT '댓글을 달려고 하는 영화 번호',
  `score` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '평점',
  `id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '댓글을 다는 사용자의 아이디',
  `content` varchar(3000) COLLATE utf8_bin NOT NULL COMMENT '댓글 내용',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '댓글 등록일자',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '댓글 수정한 날짜',
  `re_ref` int(11) NOT NULL COMMENT '그룹번호, 주글번호는 그룹번호가 됨',
  `re_lev` int(11) NOT NULL COMMENT '들여쓰기 레벨 1이면 들여쓰기',
  `re_seq` int(11) NOT NULL COMMENT '그룹내에서 우선순위',
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='영화 상세보기 댓글 관리하는 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcomment`
--

LOCK TABLES `mcomment` WRITE;
/*!40000 ALTER TABLE `mcomment` DISABLE KEYS */;
INSERT INTO `mcomment` VALUES (38,6,'7','qwer','꿀잼\n','2021-02-19 15:54:12','2021-02-19 15:54:12',38,0,0),(39,6,'1','qwer','이건 뭐야\n','2021-02-19 15:54:21','2021-02-19 15:54:21',39,0,0),(40,6,'10','qwer','ㅁㅁㅁ','2021-02-19 15:54:41','2021-02-19 15:54:41',40,0,0),(41,6,'10','qwer','ㅁㅁㅁㅁㅁㅁ','2021-02-19 15:54:42','2021-02-19 15:54:42',41,0,0),(42,6,'10','qwer','ㅁㅁㅁㅁㅁㅁㅁㅁㅁ','2021-02-19 15:54:45','2021-02-19 15:54:45',42,0,0),(43,3,'5','admin','강동원 너무 잘 생겼어요!!!','2021-02-19 17:57:47','2021-02-19 17:57:47',43,0,0),(44,7,'6','admin','노래가 너무 좋아요!','2021-02-19 17:59:10','2021-02-19 17:59:10',44,0,0),(45,7,'6','admin','노래가 너무 신나요!','2021-02-19 17:59:16','2021-02-19 17:59:16',45,0,0),(46,7,'4','admin','노래가 너무 슬퍼요!','2021-02-19 17:59:23','2021-02-19 17:59:23',46,0,0),(47,7,'10','admin','목소리가 너무 좋아요!','2021-02-19 17:59:31','2021-02-19 17:59:31',47,0,0),(48,3,'10','admin','너무 재밌어요!','2021-02-21 14:02:22','2021-02-21 14:02:22',48,0,0),(49,11,'5','qwer','테스트','2021-02-21 14:17:42','2021-02-21 14:17:42',49,0,0),(50,11,'10','qwer','굿','2021-02-21 14:22:17','2021-02-21 14:22:17',50,0,0),(51,11,'1','qwer','배드','2021-02-21 14:22:30','2021-02-21 14:22:30',51,0,0),(52,11,'3','vvv','테스트용','2021-02-21 16:26:53','2021-02-21 16:26:53',52,0,0),(53,11,'6','ccc','그럭저럭이에요','2021-02-21 16:42:23','2021-02-21 16:42:23',53,0,0),(54,11,'8','aaa','재밌어요!','2021-02-21 16:59:02','2021-02-21 16:59:02',54,0,0),(55,11,'10','aaa','완전 재밌어요!!','2021-02-21 17:07:08','2021-02-21 17:07:08',55,0,0);
/*!40000 ALTER TABLE `mcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(45) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `passwd` varchar(45) COLLATE utf8_bin NOT NULL COMMENT '회원 비밀번호',
  `name` varchar(45) COLLATE utf8_bin NOT NULL COMMENT '회원의 이름',
  `yy` int(11) DEFAULT NULL COMMENT '회원의 연도',
  `mm` int(11) DEFAULT NULL COMMENT '회원의 월',
  `dd` int(11) DEFAULT NULL COMMENT '회원의 일',
  `gender` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '회원의 성별',
  `email` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '회원의 이메일',
  `postcode` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '회원의 우편번호',
  `address` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '회원의 넓은의미의 주소',
  `address2` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '회원의 좁은의미의 주소',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '회원가입일자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='회원관리 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('aaa','aaa','aaa1',1995,8,12,'남자','zktk08@gmail.com','51471',NULL,'123','2021-02-21 08:12:19'),('admin','asd','이대규',1995,5,7,'남자','dleorb08@gmail.com','50904',NULL,'215-585','2021-02-20 17:54:26'),('asdf','asdf','정의식',1992,5,7,'남자','krsmjeong@naver.com','V3B 0A4','2846 Glen Drive','aa','2021-02-16 15:00:13'),('qwer','qwer','정의선',1995,1,7,'여자','krsmjeong@hanmail.net','13536',NULL,'11-23','2021-02-21 05:46:20');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mimgtrailer`
--

DROP TABLE IF EXISTS `mimgtrailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mimgtrailer` (
  `num` int(11) NOT NULL AUTO_INCREMENT COMMENT '영화등록의 이미지 트레일러 관리 테이블의 고유 num',
  `uuid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '영화등록의 이미지 트레일러 관리 테이블 uuid',
  `filename` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '영화등록의 이미지 트레일러 관리 테이블 파일이름',
  `uploadpath` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '영화등록의 이미지 트레일러 관리 테이블 업로드 경로',
  `image` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '이미지인지 트레일러인지 구분, 이미지이면 ''P'' 트레일러면 ''T''',
  `no_num` int(11) DEFAULT NULL COMMENT '영화등록의 이미지 트레일러 관리 테이블의 부모테이블 movie의 고유 num',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='영화등록의 이미지 트레일러 관리 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mimgtrailer`
--

LOCK TABLES `mimgtrailer` WRITE;
/*!40000 ALTER TABLE `mimgtrailer` DISABLE KEYS */;
INSERT INTO `mimgtrailer` VALUES (1,'044b8187-4faf-4c33-aa48-37e042167755','짱구는 못말려 동영상.mp4','2021/02/19','N',1),(2,'3c5b83cd-7e65-4b95-8ac0-cd5b122cc6ac','말레피센트.jpg','2021/02/19','P',1),(3,'a6f9c8ab-6839-49b4-ab21-21c04a710583','짱구는 못말려 동영상.mp4','2021/02/19','N',2),(4,'647da1b1-7a09-4195-913c-aada20e92c7b','겨울왕국2.png','2021/02/19','P',2),(5,'4e670d1b-7e01-4d9a-878d-abb7fe4b96e8','짱구는 못말려 동영상.mp4','2021/02/19','N',3),(6,'a6e0beb8-89da-45c0-95ee-8a58c0a05ff0','골든슬럼버.jpg','2021/02/19','P',3),(7,'71f5d22c-c067-4613-b4d5-5572b25c5bd4','짱구는 못말려 동영상.mp4','2021/02/19','N',4),(8,'cff1e7ee-aa1c-4438-be94-6905dd1ee3a3','남산의 부장들.jpg','2021/02/19','P',4),(9,'aac27bc9-964f-4256-957e-45039c8f261c','짱구는 못말려 동영상.mp4','2021/02/19','N',5),(10,'ff9ca2d5-440f-4cfb-9e15-79aab4107089','램페이지.jpg','2021/02/19','P',5),(11,'13173a17-34e5-41b5-8a47-0d847ce9116c','짱구는 못말려 동영상.mp4','2021/02/19','N',6),(12,'1e117460-3aad-4b74-a5a4-57be9fec0550','미녀와야수.jpg','2021/02/19','P',6),(13,'335e3f1c-52f9-45b8-95cd-84e4c83067da','짱구는 못말려 동영상.mp4','2021/02/19','N',7),(14,'8571708c-fbbc-459c-a5b0-c67bc7b29979','알라딘.jpg','2021/02/19','P',7),(15,'378978f1-ceec-403e-ab5e-1ed9c49bf767','짱구는 못말려 동영상.mp4','2021/02/19','N',8),(16,'e35d6f87-f5da-4279-a160-aee9764caeb0','엑시트.jpg','2021/02/19','P',8),(17,'61e43a8d-2355-4d62-9bf6-c692bfa5fd34','짱구는 못말려 동영상.mp4','2021/02/19','N',9),(18,'d69f13a7-d820-4207-9025-9d2e579b5117','인터스텔라.jpg','2021/02/19','P',9),(19,'50ae64f4-0a62-47c0-bda3-e282eb4ca5ca','짱구는 못말려 동영상.mp4','2021/02/19','N',10),(20,'0ebf35ec-e778-4b7f-bcac-36ded59717c7','트루먼쇼.jpg','2021/02/19','P',10),(21,'e0f91ed6-7bba-418e-b1ea-36f34d95b3ed','짱구는 못말려 동영상.mp4','2021/02/19','N',11),(22,'9b80c066-7c0f-4b18-a4e7-a64df8e56936','짱구는 못말려.jpg','2021/02/19','P',11),(23,'aea7b136-76e4-4da7-b675-9405d8a9641b','짱구는 못말려 동영상.mp4','2021/02/19','N',12),(25,'2e059efd-0139-4749-b8f5-b5bb11b6c497','witch.jpg','2021/02/21','P',12),(26,'1f917c66-ffd5-452d-b233-3d879b4f32de','KakaoTalk_20201209_173343820.mp4','2021/02/21','N',13),(27,'1a593c21-37d7-4ce9-bdee-b03f4b0ef81e','jamea.JPG','2021/02/21','P',13);
/*!40000 ALTER TABLE `mimgtrailer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `m_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '영화 번호',
  `m_rank` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '관람등급',
  `m_name` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '영화 이름',
  `m_score` double DEFAULT NULL COMMENT '영화 평점',
  `m_rate` double DEFAULT NULL COMMENT '영화 예매율',
  `m_genre` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '영화 장르',
  `m_runtime` int(11) DEFAULT NULL COMMENT '영화 상영시간',
  `m_director` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '영화 감독',
  `m_actor` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '출연 배우',
  `m_like` int(11) DEFAULT NULL COMMENT '좋아요 갯수',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '영화 등록일자',
  `m_story` varchar(10000) COLLATE utf8_bin DEFAULT NULL COMMENT '영화 줄거리',
  PRIMARY KEY (`m_num`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='영화 목록 가지고 있는 테이블임';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'07','말레피센트',0,0,'SF,판타지',123,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',0,'2021-02-19 08:31:18','말레피센트의 대서사시가 시작된다. 즐겁게 감상하라, 즐거움의 시작은 곧 즐거움의 끝이니. 그렇다 지금은 아무 생각없이 막 쓰는 중이다.'),(2,'12','겨울왕국Ⅱ',0,0,'애니메이션',112,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',0,'2021-02-19 08:33:10','엘사의 얼음과 안나의 따뜻한 마음이 만나 또다른 한편의 드라마를 만들었다! 애니메이션을 보고 눈물을 흘릴자 지금 당장 들어오라우.'),(3,'12','골든슬럼버',7.5,20,'액션',231,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',0,'2021-02-21 08:06:38','강동원 얼굴은 언제나 옳다! 올해 40이 됐지만, 이 글의 작성자보다 훨씬 젊어보이고 잘생겼다!! 당장 들어와서 강동원 얼굴을 구경하라!'),(4,'15','남산의 부장들',0,0,'사극,시대극',200,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',0,'2021-02-19 08:35:49','이병헌의 소름돋는 연기를 볼 준비가 되었는가!! 최선을 다해서 몰입하지 않아도 된다! 그의 연기가 당신을 몰입하게 만들테니!'),(5,'12','램페이지',0,0,'SF,판타지',221,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',0,'2021-02-19 08:37:56','왕년엔 더락, 현재는 드웨인 존슨! 장르는 액션, 그의 몸은 SF! 이게 말이 되는 몸인가! 왕년에 가장 잘 나가던 프로레슬링 선수가 영화계를 주름잡고 있다! 당장 달려와서 영화를 보라!'),(6,'15','미녀와 야수',7.6,10,'애니메이션',123,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',-1,'2021-02-21 08:06:21','미녀와 야수를 동화로만 읽었다면 당장 와서 보라! 엠마왓슨이 정말 이쁘게 나오니까'),(7,'12','알라딘',6.5,19,'SF,판타지',112,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',0,'2021-02-21 08:06:38','영화를 보기전에 speechless 노래를 들었봤다면 당장와서 영화랑 같이 보세요. 노래도 좋고 영화도 재밌고 알라딘이 나와서 소원을 들어줄지도 몰라요. 신명나게 영화 한편 즐기고 소원이루러 갑시다.'),(8,'15','엑시트',0,0,'코미디',130,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',0,'2021-02-19 08:41:27','조정석이랑 윤아가 나와요. 조정석은 너무 잘생기고 연기를 재밌게 찰떡처럼 하구요, 윤아는 너무 이쁘게 그리고 또 열심히 찍었대요. 물론 저는 안봤어요.'),(9,'12','인터스텔라',0,0,'SF,판타지',180,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',0,'2021-02-19 08:42:42','어마어마하게 길다고 소문이 난 영화죠. 영화 보기전에 반드시 화장실을 다녀와야해요. 안그럼 중간에 화장실을 다섯번을 가야 할테니까요'),(10,'19','트루먼쇼',0,10,'공포',120,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',0,'2021-02-21 07:58:17','참을수 없는 공포가 다가온다! 당신은 누군가가 당신을 지켜보는 삶을 살고 있다고 상상해본적은 없는가. 불쌍한 트루먼은 30년 가까이 남들의 시선 속에서 살아왔다. 극한의 공포! 여름이었다...'),(11,'19','짱구는 못말려',6.14,32,'코미디',123,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',2,'2021-02-21 08:07:42','귀엽고 깜찍한 짱구와 도쿄에 전원주택을 살수 있는 능력을 가진 짱구아빠의 좌충우돌 티켓따내기! 짱구와 짱구아빠가 봉미선씨를 위해 여행티켓을 따려고 좌충우돌 모험기를 펼친다. 우리도 영화보고 좌충우돌 여행기를 찍어보자.'),(12,'--등급--','코딩의 습격',0,5,'--장르--',500,'정의수','윤진형, 이대규, 주현정, 정의수, 구성준',0,'2021-02-21 07:26:19','500분간 숨 쉴틈없이 몰아치는 코딩의 습격이 시작된다! 그 놈에게 잡히지 마라! 잡히면 먹고 자고 코딩만 하게 될테니! '),(13,'15','세자매',0,0,'드라마',120,'aaa','aaa,aaa',0,'2021-02-21 08:14:50','aaaaaaa\r\n테스트용');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_like`
--

DROP TABLE IF EXISTS `movie_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_like` (
  `num` int(11) NOT NULL AUTO_INCREMENT COMMENT '좋아요번호',
  `user_id` varchar(45) COLLATE utf8_bin NOT NULL COMMENT '좋아요누른유저',
  `movie_num` int(11) NOT NULL COMMENT '좋아요누른게시글번호',
  `is_like` int(11) NOT NULL COMMENT '좋아요상태',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_like`
--

LOCK TABLES `movie_like` WRITE;
/*!40000 ALTER TABLE `movie_like` DISABLE KEYS */;
INSERT INTO `movie_like` VALUES (2,'qwer',6,0),(3,'admin',7,0),(4,'qwer',11,1),(5,'admin',11,1),(6,'vvv',11,0),(7,'ccc',11,0),(8,'aaa',11,0);
/*!40000 ALTER TABLE `movie_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movieseat`
--

DROP TABLE IF EXISTS `movieseat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movieseat` (
  `id` varchar(45) DEFAULT NULL COMMENT '예매한 사람 ID',
  `name` varchar(45) DEFAULT NULL COMMENT '예매된 영화의 이름',
  `seat` varchar(45) NOT NULL COMMENT '좌석번호',
  `no_num` int(11) NOT NULL COMMENT 'watchmovie의 고유num',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '예매된 일자',
  `gender` varchar(45) DEFAULT NULL COMMENT '예매한 사람 성별',
  `area` varchar(45) DEFAULT NULL COMMENT '예매영화 지역',
  `date` varchar(45) DEFAULT NULL COMMENT '예매된 영화 시간',
  PRIMARY KEY (`seat`,`no_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='예매 좌석';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movieseat`
--

LOCK TABLES `movieseat` WRITE;
/*!40000 ALTER TABLE `movieseat` DISABLE KEYS */;
INSERT INTO `movieseat` VALUES ('qwer','짱구는 못말려','0',4,'2021-02-21 05:09:13','여자','대구',' 2021-02-13 17:48:00 '),('admin','트루먼쇼','0',6,'2021-02-21 05:05:03','남자','부산',' 2021-03-06 17:49:00 '),('admin','알라딘','0',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('aaa','미녀와 야수','0',10,'2021-02-21 08:06:21','남자','부산',' 2021-03-08 17:50:00 '),('asdf','골든슬럼버','0',29,'2021-02-16 15:15:06','남자','서울',' 2021-02-25T00:13'),('qwer','짱구는 못말려','1',4,'2021-02-21 05:09:13','여자','대구',' 2021-02-13 17:48:00 '),('admin','트루먼쇼','1',6,'2021-02-21 05:05:03','남자','부산',' 2021-03-06 17:49:00 '),('admin','알라딘','1',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('aaa','미녀와 야수','1',10,'2021-02-21 08:06:21','남자','부산',' 2021-03-08 17:50:00 '),('asdf','골든슬럼버','1',29,'2021-02-16 15:15:06','남자','서울',' 2021-02-25T00:13'),('qwer','골든슬럼버','10',29,'2021-02-16 15:15:58','여자','서울',' 2021-02-25T00:13'),('qwer','골든슬럼버','11',29,'2021-02-16 15:15:58','여자','서울',' 2021-02-25T00:13'),('qwer','골든슬럼버','12',29,'2021-02-16 15:15:58','여자','서울',' 2021-02-25T00:13'),('vvv','짱구는 못말려','13',4,'2021-02-21 07:26:04','남자','대구',' 2021-02-13 17:48:00 '),('admin','알라딘','13',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('admin','미녀와 야수','13',11,'2021-02-19 08:55:10','남자','서울',' 2021-03-08 17:51:00 '),('qwer','골든슬럼버','13',29,'2021-02-16 15:15:58','여자','서울',' 2021-02-25T00:13'),('admin','짱구는 못말려','14',3,'2021-02-19 08:54:01','남자','서울',' 2021-02-24 17:48:00 '),('vvv','짱구는 못말려','14',4,'2021-02-21 07:26:04','남자','대구',' 2021-02-13 17:48:00 '),('admin','알라딘','14',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('admin','미녀와 야수','14',11,'2021-02-19 08:55:10','남자','서울',' 2021-03-08 17:51:00 '),('qwer','골든슬럼버','14',29,'2021-02-16 15:15:58','여자','서울',' 2021-02-25T00:13'),('admin','짱구는 못말려','15',3,'2021-02-19 08:54:01','남자','서울',' 2021-02-24 17:48:00 '),('vvv','짱구는 못말려','15',4,'2021-02-21 07:26:04','남자','대구',' 2021-02-13 17:48:00 '),('admin','알라딘','15',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('admin','미녀와 야수','15',11,'2021-02-19 08:55:10','남자','서울',' 2021-03-08 17:51:00 '),('qwer','골든슬럼버','15',29,'2021-02-16 15:15:58','여자','서울',' 2021-02-25T00:13'),('admin','짱구는 못말려','16',3,'2021-02-19 08:54:01','남자','서울',' 2021-02-24 17:48:00 '),('admin','알라딘','16',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('admin','미녀와 야수','16',11,'2021-02-19 08:55:10','남자','서울',' 2021-03-08 17:51:00 '),('qwer','골든슬럼버','16',29,'2021-02-16 15:15:58','여자','서울',' 2021-02-25T00:13'),('admin','짱구는 못말려','17',3,'2021-02-19 08:54:01','남자','서울',' 2021-02-24 17:48:00 '),('admin','알라딘','17',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('admin','미녀와 야수','17',11,'2021-02-19 08:55:10','남자','서울',' 2021-03-08 17:51:00 '),('qwer','골든슬럼버','17',29,'2021-02-16 15:15:58','여자','서울',' 2021-02-25T00:13'),('admin','짱구는 못말려','18',3,'2021-02-19 08:54:01','남자','서울',' 2021-02-24 17:48:00 '),('qwer','골든슬럼버','18',29,'2021-02-16 15:15:58','여자','서울',' 2021-02-25T00:13'),('qwer','골든슬럼버','19',29,'2021-02-16 15:15:58','여자','서울',' 2021-02-25T00:13'),('admin','코딩의 습격','2',1,'2021-02-19 08:53:22','남자','서울',' 2021-02-04 17:47:00 '),('qwer','짱구는 못말려','2',4,'2021-02-21 05:09:13','여자','대구',' 2021-02-13 17:48:00 '),('admin','트루먼쇼','2',6,'2021-02-21 05:05:03','남자','부산',' 2021-03-06 17:49:00 '),('admin','알라딘','2',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('aaa','미녀와 야수','2',10,'2021-02-21 08:06:21','남자','부산',' 2021-03-08 17:50:00 '),('asdf','골든슬럼버','2',29,'2021-02-16 15:15:06','남자','서울',' 2021-02-25T00:13'),('ccc','짱구는 못말려','25',4,'2021-02-21 07:40:48','남자','대구',' 2021-02-13 17:48:00 '),('ccc','짱구는 못말려','26',4,'2021-02-21 07:40:48','남자','대구',' 2021-02-13 17:48:00 '),('ccc','짱구는 못말려','27',4,'2021-02-21 07:40:48','남자','대구',' 2021-02-13 17:48:00 '),('admin','코딩의 습격','3',1,'2021-02-19 08:53:22','남자','서울',' 2021-02-04 17:47:00 '),('qwer','짱구는 못말려','3',4,'2021-02-21 05:13:41','여자','대구',' 2021-02-13 17:48:00 '),('admin','트루먼쇼','3',5,'2021-02-19 08:54:29','남자','서울',' 2021-02-10 17:48:00 '),('admin','알라딘','3',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('asdf','골든슬럼버','3',29,'2021-02-16 15:15:06','남자','서울',' 2021-02-25T00:13'),('admin','코딩의 습격','4',1,'2021-02-19 08:53:22','남자','서울',' 2021-02-04 17:47:00 '),('admin','짱구는 못말려','4',3,'2021-02-19 08:54:01','남자','서울',' 2021-02-24 17:48:00 '),('qwer','짱구는 못말려','4',4,'2021-02-21 05:13:41','여자','대구',' 2021-02-13 17:48:00 '),('admin','트루먼쇼','4',5,'2021-02-19 08:54:29','남자','서울',' 2021-02-10 17:48:00 '),('admin','알라딘','4',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('asdf','골든슬럼버','4',29,'2021-02-16 15:15:06','남자','서울',' 2021-02-25T00:13'),('qwer','a','4',30,'2021-02-18 18:49:01',NULL,NULL,NULL),('aaa','짱구는 못말려','40',4,'2021-02-21 07:57:55','남자','대구',' 2021-02-13 17:48:00 '),('aaa','짱구는 못말려','41',4,'2021-02-21 07:57:55','남자','대구',' 2021-02-13 17:48:00 '),('aaa','짱구는 못말려','42',4,'2021-02-21 07:57:55','남자','대구',' 2021-02-13 17:48:00 '),('admin','코딩의 습격','5',1,'2021-02-19 08:53:22','남자','서울',' 2021-02-04 17:47:00 '),('admin','짱구는 못말려','5',3,'2021-02-19 08:54:01','남자','서울',' 2021-02-24 17:48:00 '),('qwer','짱구는 못말려','5',4,'2021-02-21 05:13:41','여자','대구',' 2021-02-13 17:48:00 '),('admin','트루먼쇼','5',5,'2021-02-19 08:54:29','남자','서울',' 2021-02-10 17:48:00 '),('admin','알라딘','5',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('asdf','골든슬럼버','5',29,'2021-02-16 15:15:06','남자','서울',' 2021-02-25T00:13'),('qwer','a','5',30,'2021-02-18 18:49:01',NULL,NULL,NULL),('admin','짱구는 못말려','6',3,'2021-02-19 08:54:01','남자','서울',' 2021-02-24 17:48:00 '),('admin','트루먼쇼','6',5,'2021-02-19 08:54:29','남자','서울',' 2021-02-10 17:48:00 '),('admin','알라딘','6',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('admin','짱구는 못말려','7',3,'2021-02-19 08:54:01','남자','서울',' 2021-02-24 17:48:00 '),('admin','트루먼쇼','7',5,'2021-02-19 08:54:29','남자','서울',' 2021-02-10 17:48:00 '),('admin','알라딘','7',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('admin','짱구는 못말려','8',3,'2021-02-19 08:54:01','남자','서울',' 2021-02-24 17:48:00 '),('admin','알라딘','8',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 '),('admin','알라딘','9',9,'2021-02-19 08:56:14','남자','서울',' 2021-03-03 17:49:00 ');
/*!40000 ALTER TABLE `movieseat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `num` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시판 테이블의 고유 num',
  `id` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '작성자 ID',
  `subject` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '게시글 제목',
  `content` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '게시글 내용',
  `readcount` int(11) DEFAULT NULL COMMENT '게시글 조회수',
  `reg_date` datetime DEFAULT NULL COMMENT '게시글 작성된 일자',
  `ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '작성자의 IP주소',
  `re_ref` int(11) DEFAULT NULL COMMENT '그룹번호, 주글번호는 그룹번혹가 됨',
  `re_lev` int(11) DEFAULT NULL COMMENT '들여쓰기 레벨 1이면 들여쓰기 1번',
  `re_seq` int(11) DEFAULT NULL COMMENT '그룹 내에서의 순번 0이 제로순위',
  `likes` int(11) NOT NULL DEFAULT '0' COMMENT '게시글 좋아요 수',
  `total_count` int(11) DEFAULT NULL COMMENT '게시글 답글 수',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='게시판 관리 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (31,'admin','배고파','속쓰려',4,'2021-02-17 01:09:12','0:0:0:0:0:0:0:1',31,0,0,0,0),(32,'admin','모야이거','테스트',3,'2021-02-17 01:09:22','0:0:0:0:0:0:0:1',31,1,3,0,0),(33,'qwer','asdasd','asdasd',2,'2021-02-19 01:49:52','0:0:0:0:0:0:0:1',31,1,2,0,0),(34,'qwer','asdasd','asdasd',1,'2021-02-19 01:50:03','0:0:0:0:0:0:0:1',31,2,6,0,0),(35,'qwer','asdasdddd','dddddd',1,'2021-02-19 01:50:14','0:0:0:0:0:0:0:1',31,1,1,0,0),(36,'qwer','ddd','ddd',2,'2021-02-19 01:50:39','0:0:0:0:0:0:0:1',31,2,4,0,0),(37,'qwer','aaa','aaa',1,'2021-02-19 01:50:46','0:0:0:0:0:0:0:1',31,3,5,0,0),(38,'qwer','오징어랑 맥주 꿀맛','꼭 드셔보세요',3,'2021-02-20 19:42:41','0:0:0:0:0:0:0:1',38,0,0,1,0),(39,'qwer','진짜 맛나더라구요!!','쵝오!!',2,'2021-02-20 19:42:59','0:0:0:0:0:0:0:1',38,1,2,1,0),(40,'aaa','테스트용','테스트',3,'2021-02-21 17:18:49','0:0:0:0:0:0:0:1',40,0,0,0,0),(41,'aaa','테스트!','123',1,'2021-02-21 17:19:54','0:0:0:0:0:0:0:1',38,1,1,0,0);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_like`
--

DROP TABLE IF EXISTS `notice_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_like` (
  `num` int(11) NOT NULL AUTO_INCREMENT COMMENT '좋아요번호',
  `user_id` varchar(45) COLLATE utf8_bin NOT NULL COMMENT '좋아요누른유저',
  `notice_num` int(11) NOT NULL COMMENT '좋아요누른게시글번호',
  `is_like` int(11) NOT NULL COMMENT '좋아요상태',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_like`
--

LOCK TABLES `notice_like` WRITE;
/*!40000 ALTER TABLE `notice_like` DISABLE KEYS */;
INSERT INTO `notice_like` VALUES (1,'qwer',38,1),(2,'qwer',39,1),(3,'aaa',40,0);
/*!40000 ALTER TABLE `notice_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstore`
--

DROP TABLE IF EXISTS `orderstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderstore` (
  `num` int(11) NOT NULL AUTO_INCREMENT COMMENT '스토어 주문된 상품 고유 num',
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '스토어 주문된 상품 이름',
  `price` int(11) DEFAULT NULL COMMENT '스토어 주문된 상품 가격',
  `content` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '스토어 주문된 상품내용',
  `count` int(11) DEFAULT NULL COMMENT '스토어 주문된 상품 갯수',
  `total` int(11) DEFAULT NULL COMMENT '스토어 주문된 상품 총 가격',
  `id` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '스토어 주문된 상품 주문한 사람 id',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '주문일자',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='스토어 주문 관리 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstore`
--

LOCK TABLES `orderstore` WRITE;
/*!40000 ALTER TABLE `orderstore` DISABLE KEYS */;
INSERT INTO `orderstore` VALUES (1,'카라멜팝콘 L',6000,'카라멜팝콘 L',5,30000,'qwer','2021-02-21 14:21:07'),(2,'카라멜팝콘 L',6000,'카라멜팝콘 L',5,30000,'aaa','2021-02-21 17:09:23');
/*!40000 ALTER TABLE `orderstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pattach`
--

DROP TABLE IF EXISTS `pattach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pattach` (
  `num` int(11) NOT NULL AUTO_INCREMENT COMMENT '사진 번호',
  `uuid` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `filename` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '업로드된 파일 이름',
  `uploadpath` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '업로드된 파일의 경로를 저장',
  `image` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '이미지 인지 아닌지 여부 판단',
  `id` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '프로필사진 등록할 아이디',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='업로드된 프로필 사진 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pattach`
--

LOCK TABLES `pattach` WRITE;
/*!40000 ALTER TABLE `pattach` DISABLE KEYS */;
INSERT INTO `pattach` VALUES (12,'6a750077-c2ec-491c-9959-485196a9f975','halfPL.jpg','2021/02/21','I','admin'),(13,'0e75cd06-156c-443e-bc66-dfbb9586f0b9','eve.jpg','2021/02/21','I','qwer'),(14,'5e8f252a-07ae-414f-a471-89ba61d2053b','eve.jpg','2021/02/21','I','aaa');
/*!40000 ALTER TABLE `pattach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `num` int(11) NOT NULL AUTO_INCREMENT COMMENT '상품 번호',
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '상품 이름',
  `content` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '상품 구성내용',
  `id` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '상품등록한 사용자 아이디',
  `price` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '상품 가격',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='스토어에 등록할 상품들을 관리하는 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'스위트 콤보','오리지널L+탄산음료M2','admin','9000'),(2,'반반콤보','반반팝콘L + 탄산음료M2','admin','9500'),(3,'더블콤보','카라멜팝콘M+오리지널팝콘M+탄산음료M2','admin','13000'),(5,'즉석구이콤보','카라멜팝콘M+즉석구이(몸통or다리)+탄산음료M2\r\n','admin','13500'),(6,'자몽에이드','자몽에이드R\r\n','admin','5000'),(7,'레몬에이드','레몬에이드R\r\n','admin','5000'),(8,'콜라 M','콜라M\r\n','admin','2500'),(9,'콜라 L','콜라L\r\n','admin','3000'),(10,'사이다 M','사이다 M\r\n','admin','2500'),(11,'사이다 L','사이다 L\r\n','admin','3000'),(12,'오리지널팝콘 M','오리지널팝콘 M\r\n','admin','4500'),(13,'오리지널팝콘 L','오리지널팝콘 L\r\n','admin','5000'),(14,'카라멜팝콘 M','카라멜팝콘 M\r\n','admin','5500'),(15,'카라멜팝콘 L','카라멜팝콘 L\r\n','admin','6000');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sattach`
--

DROP TABLE IF EXISTS `sattach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sattach` (
  `nnum` int(11) NOT NULL AUTO_INCREMENT COMMENT '상품 번호',
  `uuid` varchar(36) DEFAULT NULL,
  `filename` varchar(1000) DEFAULT NULL COMMENT '이미지 파일 이름',
  `uploadpath` varchar(1000) DEFAULT NULL COMMENT '이미지가 업로드된 경로',
  `image` varchar(5) DEFAULT NULL COMMENT '이미지 여부 판단 I면 이미지 O면 아님',
  `pname` varchar(45) DEFAULT NULL COMMENT '상품이름',
  PRIMARY KEY (`nnum`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='등록 된 상품 이미지 관리하는 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sattach`
--

LOCK TABLES `sattach` WRITE;
/*!40000 ALTER TABLE `sattach` DISABLE KEYS */;
INSERT INTO `sattach` VALUES (1,'e1172622-2fd9-41b8-bed2-6624fbc0601a','sweetcombo.jpg','2021/02/20','I','스위트 콤보'),(2,'89a63453-6e5c-4882-bfe7-dce78e8ff90c','sweetcombo.jpg','2021/02/20','I','반반콤보'),(3,'2d792fd6-3a26-45a2-88db-d7d9d8fed9d8','doublecombo.jpg','2021/02/20','I','더블콤보'),(4,'6dacf5e2-a9c3-42be-be4f-e6d715672312','guicombo.jpg','2021/02/20','I','즉석구이콤보'),(5,'f167e3cd-0cd0-4bec-a8bd-2bfa13a18b06','jamongade.jpg','2021/02/20','I','자몽에이드'),(6,'6db52a01-8e19-4d92-b1d5-3efd125fa4c3','lemonade.jpg','2021/02/20','I','레몬에이드'),(7,'a46e9da8-d4e4-495f-91a0-d61f8c967674','cokeM.jpg','2021/02/20','I','콜라 M'),(8,'69af22fe-4cce-4f4c-9a03-e6f2664afb44','cokeL.jpg','2021/02/20','I','콜라 L'),(11,'a0b33174-826a-4af8-9dcb-f71bab6a559f','orginalM.jpg','2021/02/20','I','오리지널팝콘 M'),(12,'082fc960-1344-4dc0-bda6-45e249f2cf33','originalL.jpg','2021/02/20','I','오리지널팝콘 L'),(13,'6936ecfa-886f-4f39-bb88-f4e530825166','caramel pM.jpg','2021/02/20','I','카라멜팝콘 M'),(14,'56c0be21-fcae-4787-b649-94bd7d9f9e6d','caramelL.jpg','2021/02/20','I','카라멜팝콘 L'),(22,'781204ce-0b4c-4374-a2d7-5407168cf3d4','cidarL.jpg','2021/02/21','I','사이다 L'),(23,'5f75cf63-5866-4988-9d88-1288720be1c3','cidarM.jpg','2021/02/21','I','사이다 M');
/*!40000 ALTER TABLE `sattach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchmovie`
--

DROP TABLE IF EXISTS `watchmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watchmovie` (
  `num` int(11) NOT NULL AUTO_INCREMENT COMMENT '상영영화 관리 테이블의 고유 num',
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '상영영화의 제목',
  `area` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '상영영화의 지역',
  `date` datetime DEFAULT NULL COMMENT '상영영화의 상영일자',
  `theater` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '상영영화의 관(A, B, C...)',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '상영영화의 등록일자',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='상영영화 관리 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchmovie`
--

LOCK TABLES `watchmovie` WRITE;
/*!40000 ALTER TABLE `watchmovie` DISABLE KEYS */;
INSERT INTO `watchmovie` VALUES (1,'코딩의 습격','서울','2021-02-04 17:47:00','A관','2021-02-19 08:48:03'),(2,'짱구는 못말려','부산','2021-02-25 17:48:00','B관','2021-02-19 08:48:18'),(3,'짱구는 못말려','서울','2021-02-24 17:48:00','C관','2021-02-19 08:48:32'),(4,'짱구는 못말려','대구','2021-02-13 17:48:00','D관','2021-02-19 08:48:47'),(5,'트루먼쇼','서울','2021-02-10 17:48:00','C관','2021-02-19 08:49:04'),(6,'트루먼쇼','부산','2021-03-06 17:49:00','E관','2021-02-19 08:49:19'),(7,'인터스텔라','서울','2021-02-17 17:49:00','C관','2021-02-19 08:49:35'),(8,'엑시트','서울','2021-02-27 17:49:00','D관','2021-02-19 08:49:47'),(9,'알라딘','서울','2021-03-03 17:49:00','B관','2021-02-19 08:50:03'),(10,'미녀와 야수','부산','2021-03-08 17:50:00','A관','2021-02-19 08:50:31'),(11,'미녀와 야수','서울','2021-03-08 17:51:00','C관','2021-02-19 08:51:33'),(12,'램페이지','서울','2021-02-27 17:51:00','A관','2021-02-19 08:51:49'),(13,'남산의 부장들','서울','2021-04-15 17:52:00','B관','2021-02-19 08:52:05'),(14,'골든슬럼버','서울','2021-02-24 17:52:00','D관','2021-02-19 08:52:22');
/*!40000 ALTER TABLE `watchmovie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-22  0:45:02
