-- MySQL dump 10.13  Distrib 5.5.37, for Linux (x86_64)
--
-- Host: localhost    Database: shanyi
-- ------------------------------------------------------
-- Server version	5.5.37

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
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `oneword` text NOT NULL,
  `condition` text NOT NULL,
  `condition_finer` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：特殊条件成就 1：每日任务成就',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`acid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (1,'上善若水','你若盛开，清风自来。让这个世界变得美好，就从我们每个人开始吧~','累计300分没有换取任何的奖品','累计700分没有换取任何的奖品',0,'2016-05-27 02:20:53'),(2,'成人之美','但行好事，莫问前程。念念不忘，终有回响。','完成“成人之美”善行','完成“成人之美”善行50次',0,'2016-05-28 02:28:05'),(3,'劝人为善','最小的善行胜过最大的善念，你的话语会随着是身体力行而掷地有声','完成“劝人为善”善行','完成“劝人为善”善行50次',0,'2016-05-28 02:31:09'),(4,'救人危急','恻隐之心，人皆有之。”将心底的善心付诸行动,就会感到快乐~','完成“救人危急”善行','完成“救人危急”善行50次',0,'2016-05-28 02:31:44'),(5,'善心启航','小意悄悄告诉你，坚持行善不仅身心愉悦，也会让人变幸运哦','完成十次行善目标','坚持3个月均完成十次行善目标',0,'2016-05-28 02:32:26'),(6,'进善黜恶','善的源泉是在内心,如果你挖掘,它将汩汩地涌出~','连续十日完成行善目标','连续百日完成行善目标',0,'2016-05-28 02:32:51'),(7,'枕善而居','想要心顺安定，除了坚持行善，力行改过也非常重要哦~','亥时行善三次','亥时行善五十次',0,'2016-05-28 02:33:16'),(8,'从善如流','道人善，即是善。人知之，愈思勉。','点赞百次','点赞五百次',0,'2016-05-28 02:34:19'),(9,'积善成德','善者善之，不善者亦善之，德善也。','行五十善','行三百善',0,'2016-05-28 02:34:56'),(10,'乐善好施','想要心顺安定，除了坚持行善，力行改过也非常重要哦~','捐助百元','捐助千元',0,'2016-05-28 02:35:20'),(11,'作善降祥','真正点亮生命的不是明天的景色，而是美好的希望~','累计50日完成行善目标','累计百日完成行善目标',0,'2016-05-28 02:35:40'),(12,'为善最乐','小意悄悄告诉你，坚持行善不仅身心愉悦，也会让人变幸运哦~','善言获廿赞','善言获二百赞',0,'2016-05-28 02:36:37'),(13,'善有善报','吉人语善，视善，行善。一日有三善，三年天必降之福。','使用积分兑换奖品','使用积分兑换10次奖品',0,'2016-05-28 02:37:11'),(14,'改过从善','能亲仁，无限好。德日进，过日少。不亲仁，无限害。小人进，百事坏。','连续三十日完成行善目标','连续一百五十日完成行善目标',0,'2016-05-28 02:37:34'),(15,'兼善天下','善者善之，不善者亦善之，德善也。','完成所有类型善行','完成所有类型善行各五次以上',0,'2016-05-28 02:37:59'),(16,'止于至善','大学之道,在明明德,在亲民,在止于至善。','连续七日，日行十善','连续一月，日行十善',0,'2016-05-28 02:39:09'),(17,'循循善诱','《弟子规》说：“善相劝，德皆建”，做了好事别忘了鼓励更多的人哦~','写行善心语三次','心语获得官方推荐',0,'2016-05-28 02:39:44'),(18,'推贤进善','见贤思齐焉，见不贤而内自省也。','分享用户心语三次','分享用户心语二十次',0,'2016-05-28 02:40:20'),(19,'善始善终','但行好事，莫问前程。念念不忘，终有回响。','月初和月末两日均完成行善目标','连续三月月初和月末两日均完成行善目标',0,'2016-05-28 02:40:42'),(20,'多多益善','日行一善,善福增长。每日常行,福泽德被。','完成行善目标后额外行善两件','共三十日，完成行善目标后额外行善两件',0,'2016-05-28 02:41:05'),(21,'首善之地','居善地，心善渊，与善仁，言善信','所在地区行善数量最多','所在地区行善数量最多',0,'2016-05-28 02:41:31'),(22,'独善其身','《弟子规》说：“善相劝，德皆建”，做了好事别忘了鼓励更多的人哦~','完成善事后权限选择仅自己超过三次','完成善事后权限选择仅自己超过十五次',0,'2016-05-28 02:41:57'),(23,'厚德载物','凡欲积善，决不可徇耳目，惟从心源隐微处，默默洗涤，纯是济世之心。','完成365次日常任务','完成365次日常任务',0,'2016-05-28 02:42:24');
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar_records`
--

DROP TABLE IF EXISTS `calendar_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar_records` (
  `crid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `good_count` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`crid`),
  UNIQUE KEY `calender_uid_date_unique` (`uid`,`date`) USING BTREE,
  CONSTRAINT `calendar_records_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar_records`
--

LOCK TABLES `calendar_records` WRITE;
/*!40000 ALTER TABLE `calendar_records` DISABLE KEYS */;
INSERT INTO `calendar_records` VALUES (1,1,'2016-05-11',11),(2,1,'2016-05-13',1),(3,1,'2016-05-15',1),(4,2,'2016-05-15',1),(5,1,'2016-05-16',1),(6,4,'2016-05-16',1),(7,1,'2016-05-20',3),(8,2,'2016-05-20',1),(9,6,'2016-05-20',1),(10,10,'2016-05-20',4),(11,8,'2016-05-21',5),(12,11,'2016-05-21',5),(13,1,'2016-05-22',4),(14,13,'2016-05-22',5),(15,12,'2016-05-23',2),(17,1,'2016-05-25',6),(18,8,'2016-05-25',3),(19,6,'2016-05-25',3),(20,12,'2016-05-26',9),(21,13,'2016-05-27',5),(22,10,'2016-05-27',5),(23,6,'2016-05-28',1),(24,11,'2016-05-28',2),(25,1,'2016-05-29',3),(26,1,'2016-05-30',6),(27,8,'2016-05-30',1),(28,10,'2016-05-31',4),(29,17,'2016-05-31',1),(30,18,'2016-05-31',1),(31,19,'2016-05-31',1),(32,10,'2016-06-01',2),(33,1,'2016-06-01',5),(34,22,'2016-06-01',1),(35,23,'2016-06-01',1),(36,24,'2016-06-01',1),(37,6,'2016-06-01',1),(38,26,'2016-06-01',1),(39,29,'2016-06-01',1),(40,7,'2016-06-01',1),(41,25,'2016-06-01',1),(42,27,'2016-06-01',1),(43,28,'2016-06-01',1),(44,30,'2016-06-01',1),(45,9,'2016-06-01',1),(46,13,'2016-06-01',1),(47,31,'2016-06-01',1),(48,32,'2016-06-01',1),(49,33,'2016-06-01',1),(50,34,'2016-06-01',1),(51,1,'2016-06-02',6),(52,8,'2016-06-02',1),(53,14,'2016-06-02',3),(54,35,'2016-06-02',1),(55,11,'2016-06-02',1),(56,36,'2016-06-02',2),(57,37,'2016-06-02',1),(58,39,'2016-06-02',2),(59,38,'2016-06-02',1),(60,40,'2016-06-02',1),(61,41,'2016-06-02',1),(62,42,'2016-06-02',1),(63,20,'2016-06-02',1),(64,6,'2016-06-02',3),(65,36,'2016-06-03',1),(66,6,'2016-06-03',1),(67,10,'2016-06-03',1),(68,14,'2016-06-03',1),(69,12,'2016-06-04',1),(70,1,'2016-06-06',3),(71,43,'2016-06-07',1),(72,4,'2016-06-07',6),(73,10,'2016-06-09',1),(74,4,'2016-06-09',2),(75,5,'2016-06-10',2),(76,14,'2016-06-22',1),(77,14,'2016-06-25',1),(78,8,'2016-06-25',1),(79,8,'2016-06-26',1),(80,13,'2016-06-27',1),(81,4,'2016-06-27',1);
/*!40000 ALTER TABLE `calendar_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `letter` varchar(255) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`cid`,`name`),
  KEY `cities_pid` (`pid`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `provinces` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (0,'未知','W',0),(1,'七台河','Q',10),(2,'万宁','W',24),(3,'三亚','S',24),(4,'三明','S',14),(5,'三门峡','S',17),(6,'上海','S',3),(7,'上饶','S',15),(8,'东方','D',24),(9,'东莞','D',20),(10,'东营','D',16),(11,'中卫','Z',30),(12,'中山','Z',20),(13,'临夏','L',21),(15,'临汾','L',6),(16,'临沂','L',16),(17,'临沧','L',25),(18,'临高','L',24),(19,'丹东','D',8),(20,'丽水','L',12),(21,'丽江','L',25),(22,'乌兰察布','W',32),(23,'乌海','W',32),(24,'乌苏','W',31),(25,'乌鲁木齐','W',31),(26,'乐东','L',24),(28,'乐山','L',22),(29,'九江','J',15),(30,'云林','Y',7),(31,'云浮','Y',20),(32,'五家渠','W',31),(33,'五指山','W',24),(34,'亳州','B',13),(35,'仙桃','X',18),(36,'伊宁','Y',31),(37,'伊春 ','Y',10),(38,'佛山','F',20),(39,'佳木斯','J',10),(40,'保亭','B',24),(42,'保定','B',5),(43,'保山','B',25),(44,'信阳','X',17),(45,'儋州','D',24),(46,'克拉玛依','K',31),(47,'六安','L',13),(48,'六盘水','L',23),(49,'兰州','L',21),(50,'兴安盟','X',32),(51,'内江','N',22),(52,'凉山','L',22),(54,'包头','B',32),(55,'北京','B',1),(56,'北海','B',28),(57,'十堰','S',18),(58,'南京','N',11),(59,'南充','N',22),(60,'南宁','N',28),(61,'南平','N',14),(62,'南投','N',7),(63,'南昌','N',15),(64,'南通','N',11),(65,'南阳','N',17),(66,'博乐','B',31),(67,'厦门','X',14),(68,'双鸭山','S',10),(69,'台东','T',7),(70,'台中','T',7),(71,'台北','T',7),(72,'台南','T',7),(73,'台州','T',12),(74,'合肥','H',13),(75,'吉安','J',15),(76,'吉林','J',9),(77,'吐鲁番','T',31),(78,'吕梁','L',6),(79,'吴忠','W',30),(80,'周口','Z',17),(81,'呼伦贝尔','H',32),(82,'呼和浩特','H',32),(83,'和田','HHH',31),(84,'咸宁','X',18),(85,'咸阳','X',27),(86,'哈密','H',31),(87,'哈尔滨','H',10),(88,'唐山','T',5),(89,'商丘','S',17),(90,'商洛','S',27),(91,'喀什','K',31),(92,'嘉义','J',7),(93,'嘉兴','J',12),(94,'嘉峪关','J',21),(95,'四平','S',9),(96,'固原','G',30),(97,'图木舒克','T',31),(98,'基隆','J',7),(99,'塔城','T',31),(100,'大兴安岭','D',10),(101,'大兴安岭地区','D',10),(102,'大同','D',6),(103,'大庆 ','D',10),(104,'大理','D',25),(106,'大连','D',8),(107,'天水','T',21),(108,'天津','T',2),(109,'天门','T',18),(110,'太原','T',6),(111,'奎屯','K',31),(112,'威海','W',16),(113,'娄底','L',19),(114,'孝感','X',18),(115,'宁德','N',14),(116,'宁波','N',12),(117,'安庆','A',13),(118,'安康','A',27),(119,'安阳','A',17),(120,'安顺','A',23),(121,'定安','D',24),(122,'定西','D',21),(123,'宜兰','Y',7),(124,'宜宾','Y',22),(125,'宜昌','Y',18),(126,'宜春','Y',15),(127,'宝鸡','B',27),(128,'宣城','X',13),(129,'宿州','S',13),(130,'宿迁','S',11),(131,'屏东','P',7),(132,'屯昌','T',24),(133,'山南','S',29),(134,'山南地区','S',29),(135,'岳阳','Y',19),(136,'崇左','C',28),(137,'巢湖','C',13),(138,'巴中','B',22),(139,'巴彦淖尔','B',32),(140,'常州','C',11),(141,'常德','C',19),(142,'平凉','P',21),(143,'平顶山','P',17),(144,'广元','G',22),(145,'广安','G',22),(146,'广州','G',20),(147,'庆阳','Q',21),(148,'库尔勒','K',31),(149,'廊坊','L',5),(150,'延安','Y',27),(151,'延边','Y',9),(153,'开封','K',17),(154,'张家口','Z',5),(155,'张家界','Z',19),(156,'张掖','Z',21),(157,'彰化','Z',7),(158,'徐州','X',11),(159,'德宏','D',25),(161,'德州','D',16),(162,'德阳','D',22),(163,'忻州','X',6),(164,'怀化','H',19),(165,'怒江','N',25),(167,'思茅','S',25),(168,'恩施','E',18),(170,'惠州','H',20),(171,'成都','C',22),(172,'扬州','Y',11),(173,'承德','C',5),(174,'抚州','F',15),(175,'抚顺','F',8),(176,'拉萨','L',29),(177,'揭阳','J',20),(178,'攀枝花','P',22),(179,'文山','W',25),(181,'文昌','W',24),(182,'新乡','X',17),(183,'新余','X',15),(184,'新竹','X',7),(185,'无锡','W',11),(186,'日喀则','R',29),(187,'日喀则地区','R',29),(188,'日照','R',16),(189,'昆明','K',25),(190,'昌吉　','C',31),(191,'昌江','C',24),(193,'昌都','C',29),(194,'昌都地区','C',29),(195,'昭通','Z',25),(196,'晋中','J',6),(197,'晋城','J',6),(198,'景德镇','J',15),(199,'曲靖','Q',25),(200,'朔州','S',6),(201,'朝阳','C',8),(202,'本溪','B',8),(203,'来宾','L',28),(204,'杭州','H',12),(205,'松原','S',9),(206,'林芝','L',29),(207,'林芝地区','L',29),(208,'果洛','G',26),(210,'枣庄','Z',16),(211,'柳州','L',28),(212,'株洲','Z',19),(213,'桂林','G',28),(214,'桃园','T',7),(215,'梅州','M',20),(216,'梧州','W',28),(217,'楚雄','C',25),(219,'榆林','Y',27),(220,'武威','W',21),(221,'武汉','W',18),(222,'毕节','B',23),(223,'毕节地区','B',23),(224,'永州','Y',19),(225,'汉中','H',27),(226,'汕头','S',20),(227,'汕尾','S',20),(228,'江门','J',20),(229,'池州','C',13),(230,'沈阳','S',8),(231,'沧州','C',5),(232,'河池','H',28),(233,'河源','H',20),(234,'泉州','Q',14),(235,'泰安','T',16),(236,'泰州','T',11),(237,'泸州','L',22),(238,'洛阳','L',17),(239,'济南','J',16),(240,'济宁','J',16),(241,'济源','J',17),(242,'海东','H',26),(243,'海东地区','H',26),(244,'海北','H',26),(246,'海南','H',26),(248,'海口','H',24),(249,'海西','H',26),(251,'淄博','Z',16),(252,'淮北','H',13),(253,'淮南','H',13),(254,'淮安','H',11),(255,'深圳','S',20),(256,'清远','Q',20),(257,'温州','W',12),(258,'渭南','W',27),(259,'湖州','H',12),(260,'湘潭','X',19),(261,'湘西','X',19),(263,'湛江','Z',20),(264,'滁州','C',13),(265,'滨州','B',16),(266,'漯河','L',17),(267,'漳州','Z',14),(268,'潍坊','W',16),(269,'潜江','Q',18),(270,'潮州','C',20),(271,'澄迈','C',24),(272,'澎湖','P',7),(273,'澳门','A',33),(275,'濮阳','P',17),(276,'烟台','Y',16),(277,'焦作','J',17),(278,'牡丹江','M',10),(279,'玉林','Y',28),(280,'玉树','Y',26),(282,'玉溪','Y',25),(283,'珠海','Z',20),(284,'琼中','Q',24),(286,'琼海','Q',24),(287,'甘南','G',21),(289,'甘孜','G',22),(291,'白城','B',9),(292,'白山','B',9),(293,'白沙','B',24),(295,'白银','B',21),(296,'百色','B',28),(297,'益阳','Y',19),(298,'盐城','Y',11),(299,'盘锦','P',8),(300,'眉山','M',22),(301,'石嘴山','S',30),(302,'石家庄','S',5),(303,'石河子','S',31),(304,'神农架','S',18),(305,'神农架林区','S',18),(306,'福州','F',14),(307,'秦皇岛','Q',5),(308,'米泉','M',31),(309,'红河','H',25),(311,'绍兴','S',12),(312,'绥化','S',10),(313,'绵阳','M',22),(314,'聊城','L',16),(315,'肇庆','Z',20),(316,'自贡','Z',22),(317,'舟山','Z',12),(318,'芜湖','W',13),(319,'花莲','H',7),(320,'苏州','S',11),(321,'苗栗','M',7),(322,'茂名','M',20),(323,'荆州','J',18),(324,'荆门','J',18),(325,'莆田','P',14),(326,'莱芜','L',16),(327,'菏泽','H',16),(328,'萍乡','P',15),(329,'营口','Y',8),(330,'葫芦岛','H',8),(331,'蚌埠','B',13),(332,'衡水','H',5),(333,'衡阳','H',19),(334,'衢州','Q',12),(335,'襄樊','X',18),(336,'西双版纳','X',25),(338,'西宁','X',26),(339,'西安','X',27),(340,'许昌','X',17),(341,'贵港','G',28),(342,'贵阳','G',23),(343,'贺州','H',28),(344,'资阳','Z',22),(345,'赣州','G',15),(346,'赤峰','C',32),(347,'辽源','L',9),(348,'辽阳','L',8),(349,'达州','D',22),(350,'运城','Y',6),(351,'连云港','L',11),(352,'迪庆','D',25),(354,'通化','T',9),(355,'通辽','T',32),(356,'遂宁','S',22),(357,'遵义','Z',23),(358,'邢台','X',5),(359,'那曲','N',29),(360,'那曲地区','N',29),(361,'邯郸','H',5),(362,'邵阳','S',19),(363,'郑州','Z',17),(364,'郴州','C',19),(365,'鄂尔多斯','E',32),(366,'鄂州','E',18),(367,'酒泉','J',21),(368,'重庆','C',4),(369,'金华','J',12),(370,'金昌','J',21),(371,'钦州','Q',28),(372,'铁岭','T',8),(373,'铜仁','T',23),(374,'铜仁地区','T',23),(375,'铜川','T',27),(376,'铜陵','T',13),(377,'银川','Y',30),(378,'锡林郭勒盟','X',32),(379,'锦州','J',8),(380,'镇江','Z',11),(381,'长春','C',9),(382,'长沙','C',19),(383,'长治','C',6),(384,'阜康','F',31),(385,'阜新','F',8),(386,'阜阳','F',13),(387,'防城港','F',28),(388,'阳江','Y',20),(389,'阳泉','Y',6),(390,'阿克苏','A',31),(391,'阿勒泰','A',31),(392,'阿图什','A',31),(393,'阿坝','A',22),(395,'阿拉善盟','A',32),(396,'阿拉尔','A',31),(397,'阿里地区','A',29),(398,'陇南','L',21),(399,'陵水','L',24),(401,'随州','S',18),(402,'雅安','Y',22),(403,'青岛','Q',16),(404,'鞍山','A',8),(405,'韶关','S',20),(406,'香港','X',34),(408,'马鞍山','M',13),(409,'驻马店','Z',17),(410,'高雄','G',7),(411,'鸡西','J',10),(412,'鹤壁','H',17),(413,'鹤岗','H',10),(414,'鹰潭','Y',15),(415,'黄冈','H',18),(416,'黄南','H',26),(418,'黄山','H',13),(419,'黄石','H',18),(420,'黑河','H',10),(421,'黔东南','Q',23),(423,'黔南','Q',23),(425,'黔西','Q',23),(427,'齐齐哈尔','Q',10),(428,'龙岩','L',14);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_task_comments`
--

DROP TABLE IF EXISTS `daily_task_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_task_comments` (
  `cmid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`cmid`),
  KEY `news_comments_uid` (`uid`) USING BTREE,
  KEY `daily_task_comments_dtid` (`dtid`),
  CONSTRAINT `daily_task_comments_dtid` FOREIGN KEY (`dtid`) REFERENCES `daily_tasks` (`dtid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `daily_task_comments_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_task_comments`
--

LOCK TABLES `daily_task_comments` WRITE;
/*!40000 ALTER TABLE `daily_task_comments` DISABLE KEYS */;
INSERT INTO `daily_task_comments` VALUES (2,1,1,'测试发个评论看看',0,'2016-05-22 19:11:24'),(3,1,1,'继续发',0,'2016-05-22 19:11:35'),(4,1,1,'回复PureDark：评论应不应该倒序呢',0,'2016-05-22 19:12:07'),(5,1,1,'回复PureDark：还是倒序吧，不然几百个条评论的话，后面的人一直都只能看到前几个评论了',0,'2016-05-22 19:13:04'),(6,1,1,'回复PureDark：再发一条就超过高度开始滚动了',1,'2016-05-22 19:13:43'),(7,1,1,'回复PureDark：看看滚动效果',0,'2016-05-22 19:20:55'),(8,1,12,'加油',0,'2016-05-24 15:10:29'),(9,1,13,'支持',1,'2016-05-25 10:28:24'),(10,1,8,'加油',11,'2016-05-25 12:44:13'),(11,1,12,'下面的测试好萌',9,'2016-05-26 13:16:43'),(12,1,35,'今天虽然外面很大的雨，路上的水很深，但是还是没有走绿化道',0,'2016-06-02 12:45:46'),(13,1,4,'没事',0,'2016-06-06 21:01:55'),(14,1,4,'这是一个测试',0,'2016-06-06 21:03:49');
/*!40000 ALTER TABLE `daily_task_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_task_likes`
--

DROP TABLE IF EXISTS `daily_task_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_task_likes` (
  `dtid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`dtid`,`uid`),
  KEY `daily_task_likes_uid` (`uid`) USING BTREE,
  CONSTRAINT `daily_task_likes_dtid` FOREIGN KEY (`dtid`) REFERENCES `daily_tasks` (`dtid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `daily_task_likes_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_task_likes`
--

LOCK TABLES `daily_task_likes` WRITE;
/*!40000 ALTER TABLE `daily_task_likes` DISABLE KEYS */;
INSERT INTO `daily_task_likes` VALUES (1,1,'2016-05-22 19:06:55'),(1,4,'2016-06-06 20:25:11'),(1,10,'2016-05-27 23:37:50'),(1,12,'2016-05-24 15:10:06'),(1,13,'2016-05-25 10:27:43'),(1,14,'2016-06-02 12:49:25'),(1,17,'2016-05-30 23:27:44'),(1,35,'2016-06-02 12:46:28');
/*!40000 ALTER TABLE `daily_task_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_tasks`
--

DROP TABLE IF EXISTS `daily_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_tasks` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `target` int(11) NOT NULL,
  `actual` int(11) NOT NULL DEFAULT '0',
  `label` int(10) unsigned NOT NULL DEFAULT '1',
  `likes` int(11) unsigned NOT NULL DEFAULT '0',
  `comments` int(11) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  PRIMARY KEY (`dtid`),
  KEY `daily_tasks_label` (`label`),
  CONSTRAINT `daily_tasks_label` FOREIGN KEY (`label`) REFERENCES `labels` (`label_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_tasks`
--

LOCK TABLES `daily_tasks` WRITE;
/*!40000 ALTER TABLE `daily_tasks` DISABLE KEYS */;
INSERT INTO `daily_tasks` VALUES (1,'不踏草坪','达到目标人数，平台将向阿里巴巴公益“捐种梭梭树 防治荒漠化”项目捐赠100元','','【一句话说明活动】\r\n　　不踩草坪，阻止他人践踏草坪及扶起倒下的草坪上的牌子。\r\n\r\n【项目简介】\r\n　　草坪能给人以清新、凉爽和愉悦的感受，为人们提供了一个愉快干净安全的工作和生活环境。草坪可以净化空气、过滤灰尘。减少尘埃也就减少了空气种的细菌含量。草坪还能调节温度和湿度，减弱噪声。但是在城市或校园中，草坪被践踏的现象却无处不在。不踏草坪或阻止他人践踏草坪应从今天做起，共同维护美好的生活环境。\r\n\r\n【我们该怎么做】\r\n　　活动当天，做到自己不踩草坪；若见到他人践踏草坪则要善意劝阻；若见到草坪上有倒下的提示牌，则主动扶起。完成后在主页中“行善”中记录，选择标签“不踏草坪”并上传文字和至少一张相关照片。\r\n\r\n【善意承诺】\r\n　　完成并发表“不踏草坪”标签的行善人数达到200人，善意将捐赠阿里巴巴公益“捐种梭梭树 防治荒漠化”项目100元。能力有限，感谢大家的参与支持！\r\n\r\n【更多后续】\r\n　　欲知项目参与详情、捐助进展后续等情况，请关注官方微信号shananchuanmei。',200,58,8,8,13,'2016-05-12');
/*!40000 ALTER TABLE `daily_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites_heart_word`
--

DROP TABLE IF EXISTS `favourites_heart_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourites_heart_word` (
  `uid` int(10) unsigned NOT NULL,
  `hwid` int(10) unsigned NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`uid`,`hwid`),
  KEY `favourites_hwid` (`hwid`) USING BTREE,
  CONSTRAINT `favourites_heart_word_ibfk_1` FOREIGN KEY (`hwid`) REFERENCES `heart_words` (`hwid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `favourites_heart_word_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites_heart_word`
--

LOCK TABLES `favourites_heart_word` WRITE;
/*!40000 ALTER TABLE `favourites_heart_word` DISABLE KEYS */;
INSERT INTO `favourites_heart_word` VALUES (1,4,'2016-05-17 20:14:00'),(1,5,'2016-05-14 17:59:52'),(1,105,'2016-06-02 03:14:47'),(1,106,'2016-06-02 03:15:07'),(4,92,'2016-06-10 23:51:45'),(4,136,'2016-06-05 19:28:19'),(12,41,'2016-05-26 13:13:14'),(14,114,'2016-06-02 12:57:22'),(43,137,'2016-06-05 21:38:09');
/*!40000 ALTER TABLE `favourites_heart_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites_news`
--

DROP TABLE IF EXISTS `favourites_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourites_news` (
  `uid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`uid`,`nid`),
  KEY `favourites_news_nid` (`nid`) USING BTREE,
  CONSTRAINT `favourites_news_ibfk_1` FOREIGN KEY (`nid`) REFERENCES `news` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `favourites_news_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites_news`
--

LOCK TABLES `favourites_news` WRITE;
/*!40000 ALTER TABLE `favourites_news` DISABLE KEYS */;
INSERT INTO `favourites_news` VALUES (1,2,'2016-05-20 07:28:21'),(1,5,'2016-05-20 15:32:06'),(4,3,'2016-06-10 17:14:44'),(4,5,'2016-06-10 17:14:10'),(7,3,'2016-05-20 16:44:46'),(10,5,'2016-05-27 23:28:33'),(12,3,'2016-05-26 13:20:01'),(13,2,'2016-05-29 12:19:08'),(13,3,'2016-05-22 23:08:08'),(13,4,'2016-05-27 16:08:57');
/*!40000 ALTER TABLE `favourites_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follows` (
  `fan_uid` int(10) unsigned NOT NULL,
  `follow_uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fan_uid`,`follow_uid`),
  KEY `follows_follow_uid` (`follow_uid`) USING BTREE,
  CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`fan_uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`follow_uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (4,1),(8,1),(10,1),(14,1),(5,4),(4,5),(1,6),(4,6),(10,6),(14,6),(1,8),(1,10),(5,10),(8,10),(14,10),(44,10),(7,11),(8,11),(14,11),(1,12),(4,12),(10,12),(11,12),(14,12),(43,12),(4,14),(35,14),(4,26),(14,35),(4,36);
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heart_word_comments`
--

DROP TABLE IF EXISTS `heart_word_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heart_word_comments` (
  `cmid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hwid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`cmid`),
  KEY `comments_hwid` (`hwid`) USING BTREE,
  KEY `comments_uid` (`uid`) USING BTREE,
  CONSTRAINT `heart_word_comments_ibfk_1` FOREIGN KEY (`hwid`) REFERENCES `heart_words` (`hwid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `heart_word_comments_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heart_word_comments`
--

LOCK TABLES `heart_word_comments` WRITE;
/*!40000 ALTER TABLE `heart_word_comments` DISABLE KEYS */;
INSERT INTO `heart_word_comments` VALUES (1,7,1,'这个电热水器是什么鬼2333',1,'2016-05-20 08:03:12'),(2,17,1,'目前用着没啥问题吧',3,'2016-05-20 20:37:45'),(3,15,10,'嘿嘿嘿',2,'2016-05-20 23:33:23'),(4,17,1,'回复PureDark：顺便测试下回复用户自动加前缀',3,'2016-05-21 04:50:25'),(5,39,8,'谁是肥猪',4,'2016-05-25 12:48:00'),(6,16,8,'666666，我花了60万',0,'2016-05-25 12:50:32'),(7,38,8,'食屎啦你',0,'2016-05-25 18:53:53'),(8,38,8,'回复LK_Begin：好的',1,'2016-05-25 18:54:01'),(9,39,1,'哈哈哈',0,'2016-05-26 09:45:47'),(10,41,12,'自己抢',0,'2016-05-26 13:08:47'),(11,41,12,'回复holmev：再抢',0,'2016-05-26 13:09:27'),(12,42,12,'一楼',0,'2016-05-26 13:12:32'),(13,47,13,'写个评论看看',0,'2016-05-27 20:17:05'),(14,47,13,'再写一个',0,'2016-05-27 20:18:31'),(15,47,13,'第三个',0,'2016-05-27 20:18:52'),(16,46,12,'试试评论',0,'2016-05-27 21:32:30'),(17,47,1,'发表评论数字应该是会自动增加的',0,'2016-05-28 14:08:15'),(18,63,1,'居然没人回复',0,'2016-05-30 02:34:52'),(19,68,1,'在下面有提示，不做成弹出框',7,'2016-05-31 17:17:22'),(20,95,29,'666',0,'2016-06-01 13:49:13'),(21,114,14,'Hhhhhhhhh撒比',0,'2016-06-02 12:50:14'),(22,113,35,'哇好棒哦',1,'2016-06-02 12:57:39'),(23,122,42,'花式撩',0,'2016-06-02 15:53:38'),(24,113,42,'忍不住点赞',2,'2016-06-02 15:54:11'),(25,5,43,'llama',0,'2016-06-05 22:11:01'),(26,138,1,'如果回复中带有emoji会怎样???',0,'2016-06-06 00:22:13'),(27,140,4,'测试一个',0,'2016-06-06 21:23:18'),(28,139,4,'测试',0,'2016-06-06 21:23:42'),(29,137,4,'嗯',0,'2016-06-06 21:26:04'),(30,139,4,'test',0,'2016-06-06 21:30:06'),(31,138,4,'test',0,'2016-06-06 21:30:43'),(32,140,4,'test',0,'2016-06-06 21:31:05'),(33,140,4,'test002',0,'2016-06-06 21:33:26'),(34,134,44,'我也捐了的，这个app有多少人在用啊，居然一下就看到了你这么久之前的评论',0,'2016-06-07 18:40:20'),(35,137,4,'活着挺累，至少还活着～',0,'2016-06-09 19:49:40'),(36,151,4,'nice done !',0,'2016-06-10 02:36:20'),(37,150,5,'嗯～白驹过隙～',0,'2016-06-10 14:22:00'),(38,146,1,'这个压缩得太多了，至少字要能保证可以阅读，1m以内就行了',0,'2016-06-14 07:24:46'),(39,146,1,'而且这个压缩算法没有做模糊，马赛克都压出来了',0,'2016-06-14 07:25:42'),(40,154,4,'boom！',0,'2016-06-18 22:17:22');
/*!40000 ALTER TABLE `heart_word_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heart_word_images`
--

DROP TABLE IF EXISTS `heart_word_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heart_word_images` (
  `imid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hwid` int(10) unsigned NOT NULL,
  `md5` varchar(255) NOT NULL,
  PRIMARY KEY (`imid`),
  KEY `pictures_hwid` (`hwid`) USING BTREE,
  CONSTRAINT `heart_word_images_ibfk_1` FOREIGN KEY (`hwid`) REFERENCES `heart_words` (`hwid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heart_word_images`
--

LOCK TABLES `heart_word_images` WRITE;
/*!40000 ALTER TABLE `heart_word_images` DISABLE KEYS */;
INSERT INTO `heart_word_images` VALUES (3,4,'cfc28354f88974b740649b85dfaab985'),(4,4,'4e999bc025273e656874f9fc8ef17e38'),(5,4,'2a8b222a502092ac3327c054107f373e'),(6,7,'b80d3f428852e15952cb777ae51ca2b8'),(7,14,'815b550766775940d2110b59461a44e7'),(8,14,'b9631482f4f5ec33a81ff7bf10034da9'),(9,14,'54e1e6ad0c5c0a2825e99ea3e9867989'),(10,14,'66354cad99bd52e73adc7a5efe9b0deb'),(11,14,'ef8b9dce2bcf1282780b39a830225bf0'),(12,14,'2eea56e7fd7bf147e0a9c63e4cdc445d'),(13,14,'63c9440db274e02f4ebdc5c80079705e'),(14,17,'cc2e97bc034aed482b52caef531f9add'),(15,41,'26e0c06560bea153b6d018574cd629cb'),(16,41,'a5229f0c7d349fe9d2f4fdbf78885017'),(17,41,'e6fb3a718e5a2c873d765e3757d818f4'),(18,53,'138d814fe3ad7caa283351279a570d88'),(19,55,'e52fd2395e2dcd37479f73347d3a1afe'),(20,27,'64147d3f5e8fd0537ff8933446ea06f8'),(21,27,'a94238cac6c21499eb4300c7da9be6f4'),(22,27,'6e4f1958e65768e665243d2a31f598b6'),(23,29,'e1c7776fcbe5cd539e757484b61bc1ba'),(24,30,'d3c0a9ecd757665332e0d29fd82663a9'),(25,31,'2e4a95eab509ab0ed44be1a0d6d5bb7b'),(26,32,'ff36fca302a1b620252edb12c939ffac'),(27,33,'7f351ea5f8c62dcd250a30ae337dc6e'),(28,80,'63c9440db274e02f4ebdc5c80079705e'),(29,81,'e287e2591bfcfa53f35fa8951e647ae5'),(30,82,'66354cad99bd52e73adc7a5efe9b0deb'),(31,83,'7f351ea5f8c62dcd250a30ae337dc6e'),(32,34,'cfbb86c44ce5f4b24a14f8962d4d853'),(33,35,'beba2684cb2d8d6f612010e841be1067'),(34,86,'4af766f08a335096bfb113c6b60239dc'),(35,36,'a12964d29c0413b647c43a37cb9d98f0'),(36,37,'4af766f08a335096bfb113c6b60239dc'),(37,37,'74b62819617113e33ce7f63cfbdb21ba'),(38,39,'2277e207e0510498a93145c28d693cbe'),(39,40,'af9cb9e3e6946a54dc823a36946c375d'),(40,41,'c1ff6a54459100adea49ca92f64a28f0'),(41,42,'57fbec6345b6b7a19aba5c301680e3e7'),(42,43,'e48ae9aec7c9e408bae92d7a9a6c78c5'),(43,44,'325a3e2e1fc96bb3189012c4fa3232c5'),(44,45,'e62e3e7fe9857f6e1690329fca9c19f'),(45,46,'90f0ca2158ad580e0fbf17734cfe5c71'),(46,47,'c56b3792e302fe7a4b3ac6ccd4ebc988'),(47,48,'b2a2c13b7f7df25eac5d9cb6fc52bfe0'),(48,49,'bc46ed7bb71de51bace531e4edf0916d'),(49,50,'bd03d03623d53daf80047321f176b8e4'),(50,52,'a04b9063f08a6889e721e610a0c79b12'),(51,52,'7bf47964468f75a2b1de2d7315fbcc91'),(52,113,'8c2ad9e0b54022becb71edee6123d2ed'),(53,113,'b72a873464491503aa922debbc52aef8'),(54,113,'581a2fb4a40e670bc3ef978b1e9bf5f8'),(55,54,'cf043bf4ccfb524400f95741589bdaa'),(56,55,'4e34803bafd599013c043378ac19e75a'),(57,56,'9c7cd97c2d11e7e057ac851c24fb0287'),(58,57,'4e34803bafd599013c043378ac19e75a'),(59,58,'b9c44a2c8400726e2d56841af5453312'),(60,59,'cc7dea7c0b00de082d300086029a50f0'),(61,60,'18c659f678e14a90f053479422b76392'),(62,62,'3ac7ad5797f7c1c8a9108364503cf5b8'),(63,64,'70b510975d3e9c05adaca7f5fb4e750c'),(64,126,'2243b5eaff269afd0f5f797ab5900575'),(65,127,'70b510975d3e9c05adaca7f5fb4e750c'),(66,128,'67b11e3b6f871bcf67213d1bfda0d0cf'),(67,129,'815b550766775940d2110b59461a44e7'),(68,130,'67d657a8725314f0099229ed66c283cf'),(69,131,'ff36fca302a1b620252edb12c939ffac'),(70,65,'f0fc24e3027d39a80c623b6b5bdd3b2c'),(71,66,'f3a4d1c9dc12aeedd6198774680381cb'),(72,67,'764b5bffb3f9788fbe0d3b5c9ab85e7d'),(73,68,'6f09bbc16a48ebaab7db2a8f35c7710c'),(74,69,'d07ada6b23754879f81c14e05172d2b5'),(75,139,'efc144192a47d38a284b5a006e6cd938'),(76,71,'ec8ac1eb6de414a143463552f095d45a'),(77,71,'ec8ac1eb6de414a143463552f095d45a'),(78,71,'ec8ac1eb6de414a143463552f095d45a'),(79,71,'ec8ac1eb6de414a143463552f095d45a'),(80,71,'ec8ac1eb6de414a143463552f095d45a'),(81,72,'7db0fd2c27f2767da6ea0f7254cb0279'),(82,72,'48582274d1dca2ed658ba7116680844d'),(83,72,'8bebb1ad5d563a25d08b2f6eb38c80b7'),(84,143,'7db0fd2c27f2767da6ea0f7254cb0279'),(85,144,'7db0fd2c27f2767da6ea0f7254cb0279'),(86,145,'a217e96dd31c1019c20b4c05e5442f31'),(87,145,'3338359f616cfad0494e71c1a93196bb'),(88,145,'1678f9b827858276b7455d2d9a5556f9'),(89,146,'fc192bc7baa7175d88fc512e0a1fe6ff'),(90,146,'ca52b0df2881db2b2ca9a3d3f2a27d67'),(91,147,'a3e7d948ffa32a8aa440d6144335131e'),(92,147,'a3e7d948ffa32a8aa440d6144335131e'),(93,147,'4d1f9d5575e0a5a3cfc413942352f2ed'),(94,74,'2e87809c400c8042a8234a3954fe335a'),(95,74,'ce55dcf99d86715e16c835eac6e77488'),(96,150,'5525cafc0944176d3f0042207f23b90'),(97,150,'e448b0bf89bdb342c6a2e852175cbfbc'),(98,75,'6b6bf3bd1aacdcb851b26206ab9170f'),(99,75,'a01f1fcbe1fca0bd51e05e48c651d7ea'),(100,152,'dbf3e1db243180a9362256f6a3395ae9'),(101,152,'2e87809c400c8042a8234a3954fe335a'),(102,152,'42baa295e3f9806de4953b5719c6db4c'),(103,76,'6e4f1958e65768e665243d2a31f598b6'),(104,81,'536f9ac2979e4cb7b4b57b76d76e36d4');
/*!40000 ALTER TABLE `heart_word_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heart_word_likes`
--

DROP TABLE IF EXISTS `heart_word_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heart_word_likes` (
  `hwid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`hwid`,`uid`),
  KEY `heart_word_likes_uid` (`uid`) USING BTREE,
  CONSTRAINT `heart_word_likes_ibfk_1` FOREIGN KEY (`hwid`) REFERENCES `heart_words` (`hwid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `heart_word_likes_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heart_word_likes`
--

LOCK TABLES `heart_word_likes` WRITE;
/*!40000 ALTER TABLE `heart_word_likes` DISABLE KEYS */;
INSERT INTO `heart_word_likes` VALUES (5,43,'2016-06-05 22:11:46'),(7,1,'2016-05-20 08:01:44'),(10,1,'2016-05-19 03:46:06'),(11,1,'2016-05-29 19:09:47'),(11,8,'2016-05-21 21:09:55'),(16,8,'2016-05-25 12:50:16'),(17,1,'2016-05-20 20:37:33'),(17,6,'2016-05-20 15:29:09'),(23,13,'2016-05-27 21:51:48'),(31,12,'2016-05-26 13:13:21'),(39,1,'2016-05-26 09:45:33'),(39,8,'2016-05-25 12:47:49'),(40,8,'2016-05-29 13:36:31'),(41,8,'2016-05-28 11:46:04'),(41,12,'2016-05-26 13:08:28'),(42,1,'2016-05-30 15:55:03'),(42,12,'2016-05-26 13:12:22'),(42,43,'2016-06-05 22:16:25'),(46,10,'2016-05-27 23:41:02'),(46,12,'2016-05-27 21:32:15'),(47,13,'2016-05-27 15:55:24'),(51,13,'2016-05-29 11:58:47'),(53,10,'2016-05-27 23:39:15'),(53,13,'2016-05-27 22:17:16'),(54,10,'2016-05-27 23:26:00'),(55,1,'2016-05-28 14:07:05'),(55,8,'2016-05-28 11:45:53'),(56,12,'2016-06-04 02:47:58'),(58,30,'2016-06-01 16:18:11'),(59,30,'2016-06-01 16:18:09'),(64,30,'2016-06-01 16:18:08'),(65,30,'2016-06-01 16:18:07'),(66,30,'2016-06-01 16:18:05'),(67,30,'2016-06-01 16:18:04'),(69,30,'2016-06-01 16:18:02'),(70,30,'2016-06-01 16:18:01'),(71,30,'2016-06-01 16:18:00'),(72,30,'2016-06-01 16:17:58'),(73,30,'2016-06-01 16:17:56'),(73,42,'2016-06-02 15:57:30'),(74,18,'2016-05-31 23:35:36'),(74,30,'2016-06-01 16:17:54'),(74,42,'2016-06-02 15:57:29'),(75,30,'2016-06-01 16:17:51'),(78,30,'2016-06-01 16:17:50'),(79,30,'2016-06-01 16:17:49'),(80,30,'2016-06-01 16:17:48'),(81,30,'2016-06-01 16:17:46'),(82,30,'2016-06-01 16:17:44'),(83,30,'2016-06-01 16:17:43'),(84,30,'2016-06-01 16:17:41'),(84,42,'2016-06-02 15:57:23'),(85,30,'2016-06-01 16:17:40'),(85,42,'2016-06-02 15:57:22'),(86,30,'2016-06-01 16:17:38'),(87,14,'2016-06-02 11:05:36'),(87,30,'2016-06-01 16:17:37'),(87,42,'2016-06-02 15:57:19'),(88,30,'2016-06-01 16:17:35'),(94,30,'2016-06-01 16:17:34'),(94,42,'2016-06-02 15:57:16'),(95,29,'2016-06-01 13:49:07'),(95,30,'2016-06-01 16:17:33'),(96,30,'2016-06-01 16:17:31'),(96,42,'2016-06-02 15:57:14'),(97,8,'2016-06-01 15:26:05'),(97,30,'2016-06-01 16:17:29'),(98,30,'2016-06-01 16:17:28'),(98,42,'2016-06-02 15:57:13'),(99,30,'2016-06-01 16:17:27'),(99,42,'2016-06-02 15:57:11'),(100,42,'2016-06-02 15:57:11'),(102,42,'2016-06-02 15:56:34'),(103,42,'2016-06-02 15:56:32'),(104,42,'2016-06-02 15:56:30'),(105,42,'2016-06-02 15:56:29'),(106,1,'2016-06-02 03:15:17'),(106,42,'2016-06-02 15:56:25'),(110,42,'2016-06-02 15:54:19'),(111,42,'2016-06-02 15:54:18'),(113,14,'2016-06-03 15:26:15'),(113,42,'2016-06-02 15:53:58'),(114,14,'2016-06-02 12:56:17'),(115,42,'2016-06-02 15:53:50'),(116,4,'2016-06-06 02:20:12'),(117,42,'2016-06-02 15:53:47'),(118,4,'2016-06-06 02:42:34'),(119,42,'2016-06-02 15:53:44'),(120,42,'2016-06-02 15:57:39'),(121,4,'2016-06-06 01:45:45'),(121,6,'2016-06-02 23:55:22'),(121,12,'2016-06-04 02:49:04'),(121,41,'2016-06-02 15:47:16'),(121,42,'2016-06-02 15:57:38'),(123,42,'2016-06-02 15:53:11'),(128,4,'2016-06-05 22:38:14'),(130,4,'2016-06-05 22:36:04'),(131,4,'2016-06-05 22:35:59'),(132,4,'2016-06-05 22:35:45'),(133,4,'2016-06-05 22:40:15'),(134,4,'2016-06-05 22:40:09'),(135,4,'2016-06-05 18:30:25'),(136,4,'2016-06-05 18:30:12'),(137,4,'2016-06-05 22:07:08'),(138,4,'2016-06-06 11:17:44'),(139,4,'2016-06-06 11:17:38'),(140,4,'2016-06-06 11:17:36'),(145,4,'2016-06-09 19:55:29'),(146,4,'2016-06-09 19:52:35'),(147,4,'2016-06-09 19:55:25'),(148,4,'2016-06-09 19:55:44'),(148,5,'2016-06-09 19:26:28'),(150,5,'2016-06-10 02:13:58'),(151,4,'2016-06-10 02:35:53');
/*!40000 ALTER TABLE `heart_word_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heart_words`
--

DROP TABLE IF EXISTS `heart_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heart_words` (
  `hwid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL COMMENT '内容为富文本HTML',
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：心语（日志）\r\n1：行善（说说）',
  `label` int(10) unsigned NOT NULL DEFAULT '0',
  `access` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：仅自己\r\n1：所有人',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`hwid`),
  KEY `heart_words_uid` (`uid`),
  KEY `heart_words_label` (`label`) USING BTREE,
  CONSTRAINT `heart_words_label` FOREIGN KEY (`label`) REFERENCES `labels` (`label_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `heart_words_uid` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heart_words`
--

LOCK TABLES `heart_words` WRITE;
/*!40000 ALTER TABLE `heart_words` DISABLE KEYS */;
INSERT INTO `heart_words` VALUES (4,1,'','图片测试',0,0,1,8,1,'2016-05-11 18:59:12'),(5,1,'看看文字混排','<style>img{max-width:100%}</style><h1>看一<span style=\"color: rgb(255, 0, 0);\">看</span><b style=\"color: rgb(255, 0, 0); background-color: rgb(0, 0, 0);\">富文本</b>混排效果</h1>',1,1,0,1,1,'2016-05-13 00:35:37'),(6,1,'','今天救了一只小猫呢',0,0,1,7,1,'2016-05-13 05:18:31'),(7,2,'','今天我又帮捡了100个瓶子呢',1,1,1,8,1,'2016-05-15 22:47:04'),(8,2,'不知道有什么用','<style>img{max-width:100%}</style><h3>今天很<strike>蛋疼</strike>有趣啊，不知道<b>怎么说</b>，哈哈不知道能不能放大部分 文字</h3><div><br></div><h2><u>什么鬼</u></h2>',0,0,0,1,1,'2016-05-15 22:49:34'),(10,1,'','今天又是新的一天！',2,0,1,8,1,'2016-05-16 09:28:50'),(11,1,'这是一个测试图文混排的心语','<style>img{max-width:100%}</style><h1>试试这一段作为标题</h1><div><br></div><div>没有守望先锋玩我要死啦！</div><div><img src=\"http://139.196.187.155/images/static/54e1e6ad0c5c0a2825e99ea3e9867989.png\" alt=\"\"><br></div>',2,0,0,1,1,'2016-05-17 16:54:12'),(12,1,'再试一试心语标题','<h6>你看看<i><b>好不好玩 哈哈</b>&nbsp;黑魂</i></h6><h4 style=\"text-align: center;\"><i>哈哈哈</i></h4><style>img{max-width:100%}</style>',0,0,0,1,1,'2016-05-17 17:47:47'),(13,1,'没有守望先锋玩我要死啦','<style>img{max-width:100%}</style>啊啊啊啊啊啊啊啊啊啊啊啊啊<br><br><img src=\"http://xin.tgbus.com/uploads/allimg/150923/109-1509230126293B.jpg\" alt=\"\"><br>',0,0,0,1,1,'2016-05-17 17:53:25'),(14,1,'','多图测试',0,0,1,6,1,'2016-05-20 07:05:09'),(15,1,'','测试完成每日任务',0,1,1,8,1,'2016-05-20 08:21:18'),(16,2,'','今天扶了一位老人，只花了30万',1,1,1,8,1,'2016-05-20 14:51:56'),(17,6,'','哈哈，总算有个可以运行的版本了',2,2,1,7,1,'2016-05-20 15:25:10'),(18,10,'','红红火火恍恍惚惚',0,0,1,8,1,'2016-05-20 23:32:08'),(19,8,'Euwhwhhwjjju','<style>img{max-width:100%}</style>Sususjej hhhh',0,0,0,1,1,'2016-05-21 21:12:41'),(20,11,'','和新成员见面嘻嘻',0,0,1,2,1,'2016-05-21 21:47:00'),(21,1,'','ssssssssssssssssssss',0,0,1,8,1,'2016-05-22 14:57:17'),(22,1,'','测试发行善以后任务的计数会不会增加',0,0,1,8,1,'2016-05-22 16:47:37'),(23,13,'','睡了一整天',1,0,1,6,1,'2016-05-22 23:06:15'),(24,12,'','昨天的状态会消失么',0,0,1,8,1,'2016-05-23 12:36:12'),(25,12,'','达成目标没有提醒',0,0,1,8,1,'2016-05-23 12:36:36'),(26,12,'','绕路走',0,0,1,8,1,'2016-05-24 15:11:11'),(27,12,'','绕路走',0,0,1,8,1,'2016-05-24 15:11:14'),(28,12,'','绕路走',0,0,1,8,1,'2016-05-24 15:11:15'),(29,12,'','绕路走',0,0,1,8,1,'2016-05-24 15:11:15'),(30,12,'','绕路走',0,0,1,8,1,'2016-05-24 15:11:16'),(31,12,'','绕路走',1,0,1,7,1,'2016-05-24 15:11:21'),(32,10,'','啊啊啊',0,0,1,5,1,'2016-05-24 15:12:59'),(33,10,'','啊啊啊',0,0,1,5,1,'2016-05-24 15:13:00'),(34,10,'','啊啊啊啊啊',0,0,1,5,1,'2016-05-24 15:13:14'),(35,10,'','啊啊啊啊啊',0,0,1,5,1,'2016-05-24 15:13:15'),(36,1,'测试发表心语统计数会不会增加','<style>img{max-width:100%}</style>测试测试',0,0,0,1,1,'2016-05-25 02:30:04'),(37,1,'','测试发表行善会不会增加统计数据',0,0,1,8,1,'2016-05-25 02:38:11'),(38,8,'皮皮大肥猪','<style>img{max-width:100%}</style>这是一只大肥猪。',0,2,0,1,1,'2016-05-25 12:42:39'),(39,8,'','今天帮助了一只肥猪',2,2,1,8,1,'2016-05-25 12:45:06'),(40,1,'','连续行善两天',1,0,1,3,1,'2016-05-25 13:21:18'),(41,12,'','我打扮漂亮让大家开心做了好事！！',2,2,1,6,1,'2016-05-26 12:54:35'),(42,12,'阿里','<style>img{max-width:100%}</style><h3 style=\"text-align: right;\">给排水回去看看，回去看看哈？睡睡睡土炕，黄河给排水回去看看，回去看看哈？睡睡睡土<u>昂立</u>领<u>比较<strike>理解<i>理解<span style=\"font-weight: normal;\">人了</span></i></strike></u>炕，黄河路<img src=\"http://139.196.187.155/images/static/f24843be3b1ab8d65c48dcd7fc0ae521.png\" alt=\"\">我还</h3>',3,1,0,1,1,'2016-05-26 13:01:33'),(43,12,'','把踩草坪的孩子制止了',0,0,1,8,1,'2016-05-26 13:18:34'),(44,12,'','不踩',0,0,1,8,0,'2016-05-26 13:18:56'),(45,12,'','试试积分',0,0,1,2,1,'2016-05-26 13:24:03'),(46,12,'','再试积分',2,1,1,8,1,'2016-05-26 13:24:16'),(47,13,'今天挺开心的','<style>img{max-width:100%}</style>嗯，就是开心',1,4,0,1,1,'2016-05-27 15:54:46'),(48,13,'im','<style>img{max-width:100%}</style><h1><b><strike>fgh</strike></b>誩</h1><div><br></div>',0,0,0,1,0,'2016-05-27 20:10:05'),(49,13,'再来一个','<style>img{max-width:100%}</style>哈哈哈哈啥',0,0,0,1,0,'2016-05-27 20:13:08'),(50,13,'测试','<style>img{max-width:100%}</style>鼎昌',0,0,0,1,1,'2016-05-27 20:13:45'),(51,13,'','试一下',1,0,1,8,1,'2016-05-27 20:28:02'),(52,13,'私有','<style>img{max-width:100%}</style>测试',0,0,0,1,0,'2016-05-27 21:47:26'),(53,13,'','测试照片',2,0,1,8,0,'2016-05-27 22:06:43'),(54,10,'',' 9',1,0,1,8,1,'2016-05-27 23:21:51'),(55,6,'','测试善意平台的bug，坚持',2,0,1,8,1,'2016-05-28 10:06:32'),(56,11,'','跟北航招生负责人聊了好久给了他老师的联系方式～',1,0,1,7,1,'2016-05-28 18:03:40'),(57,1,'','测试一下',0,0,1,8,1,'2016-05-29 19:58:11'),(58,1,'','再测试一下',1,0,1,8,1,'2016-05-29 21:21:48'),(59,1,'','这次应该能拿个成就了',1,0,1,8,1,'2016-05-29 21:22:15'),(60,1,'','试试仅自己1',0,0,1,5,0,'2016-05-30 01:13:06'),(61,1,'','试试仅自己1',0,0,1,5,0,'2016-05-30 01:18:39'),(62,1,'','测试仅自己2',0,0,1,4,0,'2016-05-30 01:22:17'),(63,1,'发心语','<style>img{max-width:100%}</style>应该有积分奖励的啊',0,1,0,1,1,'2016-05-30 02:16:36'),(64,1,'','可以的，还不错',1,0,1,8,1,'2016-05-30 02:16:46'),(65,1,'','发行善攒积分',1,0,1,8,1,'2016-05-30 02:17:13'),(66,1,'','发行善攒积分',1,0,1,8,1,'2016-05-30 02:20:52'),(67,8,'','今天帮梦梦画图，真开心',1,0,1,8,1,'2016-05-30 10:40:43'),(68,8,'新成就没有弹出框','<style>img{max-width:100%}</style>是这样的',0,1,0,1,1,'2016-05-30 10:42:14'),(69,10,'','今天咨询了老师关于公益与市场的东西，感觉受益良多嘻嘻',1,0,1,7,1,'2016-05-31 19:19:33'),(70,10,'','善意内部bug测试',1,0,1,7,1,'2016-05-31 19:29:02'),(71,10,'','他天天',1,0,1,8,1,'2016-05-31 19:37:21'),(72,10,'','今天帮室友带饭啦',1,0,1,7,1,'2016-05-31 19:51:50'),(73,17,'','今天去教室路上看到一个妹子书包开了掉了东西出来，我给她送了过去。嘻嘻嘻~成就感max',2,0,1,7,1,'2016-05-31 23:30:23'),(74,18,'','随手打卡~双面打印，节约用纸(≧∇≦)',3,0,1,3,1,'2016-05-31 23:34:51'),(75,19,'','打卡打卡！今天是第五天坚持清理课桌里的垃圾啦！～',1,0,1,6,1,'2016-05-31 23:41:10'),(76,20,'(´இ皿இ`)','<style>img{max-width:100%}</style>自习室桌子好脏，我直接去给擦了一波，可以的吧233',0,0,0,1,1,'2016-05-31 23:47:43'),(77,21,'温暖的我','<style>img{max-width:100%}</style><div><br></div><div>&nbsp; 走了狗屎运捡到啦一个钱包=￣ω￣=，但是我没有花了里面的钱呢，直接根据里面的校园卡信息还给张同学了呢嘿嘿嘿</div>',0,0,0,1,1,'2016-06-01 00:08:44'),(78,10,'','一步一步来，善意改变世界',1,0,1,8,1,'2016-06-01 00:20:16'),(79,1,'','发一个有图的测试一下',1,0,1,8,1,'2016-06-01 00:29:09'),(80,1,'','测试一下',1,0,1,8,1,'2016-06-01 01:05:55'),(81,1,'','测试发图',1,0,1,8,1,'2016-06-01 01:15:00'),(82,1,'','测试',1,0,1,8,1,'2016-06-01 01:15:45'),(83,1,'','再测试',1,0,1,8,1,'2016-06-01 01:19:07'),(84,22,'','感觉用了几天这个软件，似乎生活有了那么点可爱的变化，很喜欢这种感觉啊~',2,0,1,6,1,'2016-06-01 09:30:01'),(85,23,'','今天在球场丢了包，以为再也找不到了，结果一个同学竟然来还给我了，好开心啊，我也要向他一样多做好事啊阿弥陀佛！(╭☞•́ω•̀)╭☞',2,0,1,8,1,'2016-06-01 10:37:04'),(86,10,'','发图片测试',1,0,1,7,1,'2016-06-01 10:59:41'),(87,24,'','学姐我已经毕业啦，但看见大家这么热心的参与微公益，真的好棒！大家坚持下去哦！',3,0,1,2,1,'2016-06-01 11:15:46'),(88,6,'','测试',1,0,1,8,1,'2016-06-01 12:20:31'),(89,7,'第一次的心语','<style>img{max-width:100%}</style><div>进厕所的时候差点被弹回来的门打到，还好前面的同学帮我把住了门，虽然不是我的事情，但是分享一下，以后我也一定会这样做啦！</div><div><img src=\"http://139.196.187.155/images/static/af9cb9e3e6946a54dc823a36946c375d.png\" alt=\"\"><br></div>',0,0,0,1,1,'2016-06-01 12:44:06'),(90,25,'助人为乐(｡･ω･｡)ﾉ♡','<style>img{max-width:100%}</style>自习室有个同学被蚊子咬得好惨，我立马回去拿了花露水给他，算是这个app对我的改变吧。。。<img src=\"http://139.196.187.155/images/static/c1ff6a54459100adea49ca92f64a28f0.png\" alt=\"\">',0,0,0,1,1,'2016-06-01 13:03:03'),(91,27,'每日行善','<style>img{max-width:100%}</style>今天是第3天啦，每天行善一点点好像都有惊喜呢、<img src=\"http://139.196.187.155/images/static/57fbec6345b6b7a19aba5c301680e3e7.png\" alt=\"\">',0,0,0,1,1,'2016-06-01 13:10:15'),(92,28,'心语之路','<style>img{max-width:100%}</style><img src=\"http://139.196.187.155/images/static/e48ae9aec7c9e408bae92d7a9a6c78c5.png\" alt=\"\">打了一辆车，但是后面来了一个好像受伤了男生要去医院，我就直接把车让给他啦，虽然又等了好久才有下一辆车，但是蛮开心的耶！',0,0,0,1,1,'2016-06-01 13:23:27'),(93,26,'行善(ง •̀_•́)ง','<style>img{max-width:100%}</style>下课去打水的时候顺路帮二笔同桌也打了一杯~~',0,0,0,1,1,'2016-06-01 13:28:48'),(94,26,'','下课去打水的时候顺路帮二笔同桌也打了一杯~~',2,0,1,8,1,'2016-06-01 13:37:38'),(95,29,'','寝室好久没有清洁了，今天我一个人做了一下午的清洁，虽然好累但是感觉好棒',2,1,1,7,1,'2016-06-01 13:46:13'),(96,7,'','进厕所的时候差点被弹回来的门打到，还好前面的同学帮我把住了门，虽然不是我的事情，但是分享一下，以后我也一定会这样做啦！\n',2,0,1,7,1,'2016-06-01 13:57:35'),(97,25,'','自习室有个同学被蚊子咬得好惨，我立马回去拿了花露水给他，算是这个app对我的改变吧。。。',2,0,1,8,1,'2016-06-01 14:00:57'),(98,27,'','今天是第3天啦，每天行善一点点好像都有惊喜呢、',2,0,1,7,1,'2016-06-01 14:05:41'),(99,28,'','打了一辆车，但是后面来了一个好像受伤了男生要去医院，我就直接把车让给他啦，虽然又等了好久才有下一辆车，但是蛮开心的耶！',2,0,1,4,1,'2016-06-01 14:09:05'),(100,30,'','如果今天没有行善怎么办，在线等，挺急的【认真脸】',1,0,1,5,1,'2016-06-01 16:20:53'),(101,9,'','随手打卡：顺手拣了个烟头扔垃圾箱～',0,0,1,3,1,'2016-06-01 16:24:33'),(102,13,'','今天在寝室准备走的时候，室友打电话来说没带书去教室，这傻室友，还是我带过去的，咋这么大了还让人操心呢\n(｢･ω･)｢嘿',1,0,1,4,1,'2016-06-01 16:29:06'),(103,31,'','随手打卡：上完课我把喝完的水瓶带走了哦～',1,0,1,3,1,'2016-06-01 17:04:32'),(104,32,'','去万科面试的公交车上看到上来好几个老人家，我和几个同学都一起起来让座，虽然不是啥大事，但是感觉胸前的红领巾更鲜艳了呢！',1,0,1,6,1,'2016-06-01 17:42:45'),(105,33,'','赶紧发一个还热乎的，刚刚在图书馆看见一个戴着眼镜的图管会的学姐很辛苦地在搬书，我赶紧过去帮忙，虽然整理了好久，可是感觉超开心超值得有木有！',1,0,1,6,1,'2016-06-01 17:46:59'),(106,34,'','文字是：  去图书馆上自习的路上看见一群老外想照相又不会说的样子，我去帮她们拍了好几张合照！\n',2,0,1,6,1,'2016-06-01 19:27:31'),(107,1,'','今天的',0,0,1,8,1,'2016-06-02 00:52:27'),(108,1,'','第二件',0,0,1,8,1,'2016-06-02 00:58:00'),(109,1,'','达成目标',0,0,1,8,1,'2016-06-02 00:58:07'),(110,8,'','在研究生楼，一个看起来很急的女生站进来都超重了，我主动站了出去，让她先上去啦L(^o^)」',1,0,1,4,1,'2016-06-02 10:09:51'),(111,14,'','突然下那么大雨。。。在二宗看到一个女生没带伞就和她一起回来了！漂亮妹子！',1,0,1,8,1,'2016-06-02 10:15:29'),(112,14,'','今天下雨，提醒室友赶紧把衣服收了。。。。……ヽ(`Д´)ﾉ',0,0,1,6,1,'2016-06-02 11:04:43'),(113,14,'','免费送了别人一张X战警首映票！！！买错了地方哈哈哈哈，希望她会成为下一个james迷妹\n',2,2,1,6,1,'2016-06-02 11:16:12'),(114,35,'','帮同学答到算不算哈啊哈哈哈\n \n',1,1,1,8,1,'2016-06-02 12:48:47'),(115,11,'','今天去参加了精进爱心社的活动，还获得了两只牙膏的奖品呢！',1,0,1,7,1,'2016-06-02 15:07:38'),(116,36,'','松四楼下看见一只好可怜的小猫，我去商业街买了包猫粮给她(ﾉ≧ڡ≦)',1,0,1,8,1,'2016-06-02 15:18:05'),(117,37,'','看过来！城环青协在这里！【微公益•盲人体验】带着好奇和期待，在欢声笑语中，参与的同学通过蒙眼走这样的小游戏，真切地体会到了作为盲人的不易和艰辛，并承诺在生活中帮助盲人同胞，积极伸出援助之手。',1,0,1,8,1,'2016-06-02 15:24:14'),(118,39,'','五彩石协会刷一次存在感！',1,0,1,8,1,'2016-06-02 15:29:49'),(119,38,'','最近要考运筹学了，好多同学都来问我问题，我都一一解答了么呢',1,0,1,8,1,'2016-06-02 15:31:02'),(120,39,'','爱心社也来刷一次存在感',1,0,1,8,1,'2016-06-02 15:33:10'),(121,40,'','好久没有跟爸妈打电话了，刚刚跟妈妈打了一通长电话，静静的听着妈妈说着家乡话，怎么感觉有点想哭',5,0,1,8,1,'2016-06-02 15:40:15'),(122,41,'','今天早上坐小绿的时候，一个法学院的妹子没有带钱，正好我有零钱就帮她付啦，后来我们一路聊得好开心',0,1,1,8,1,'2016-06-02 15:47:06'),(123,42,'','早上都8:25了我刚骑上车就看见一个哥们儿也从松五冲出来，于是我就顺路一起带到一教啦哈哈哈',1,0,1,8,1,'2016-06-02 15:52:22'),(124,20,'','自习室桌子好脏，我直接去给擦了一波，可以的吧233',0,0,1,8,1,'2016-06-02 16:39:30'),(125,6,'','帮同学录视频，一起进步',0,0,1,6,1,'2016-06-02 16:48:50'),(126,1,'','发图片没问题啊',0,0,1,8,1,'2016-06-02 16:53:14'),(127,6,'','帮同学录视频，一起进步',0,0,1,7,1,'2016-06-02 17:05:18'),(128,36,'','爱心社打卡～',1,0,1,7,1,'2016-06-02 17:08:24'),(129,1,'','再测试一下',0,0,1,8,1,'2016-06-02 17:10:03'),(130,1,'','测试上传图片',1,0,1,8,1,'2016-06-02 17:10:40'),(131,6,'','操作复现',1,0,1,8,1,'2016-06-02 17:14:06'),(132,36,'','早起学习！坚持的第一天！打卡！',1,0,1,8,1,'2016-06-03 07:06:20'),(133,6,'','救人危急?',1,0,1,4,1,'2016-06-03 07:06:41'),(134,10,'','今天给佳锅的朋友捐了钱嘻嘻',1,1,1,4,1,'2016-06-03 07:08:58'),(135,14,'','在创青春现场。捡起来了一个空瓶子！',1,0,1,7,1,'2016-06-03 15:25:42'),(136,12,'','今天发生遗憾事，希望珍惜生命',1,0,1,8,1,'2016-06-04 02:47:29'),(137,10,'善意感慨','<style>img{max-width:100%}</style>有时候活的好累，看新闻烦躁，这可嫩就是我想要有一个这样净土的原因吧',1,2,0,1,1,'2016-06-04 19:29:31'),(138,1,'','测试一下',1,2,1,2,1,'2016-06-06 00:16:51'),(139,1,'','再发下图',1,2,1,8,1,'2016-06-06 00:21:32'),(140,1,'','测试发表带emoji的行善?????????????',1,3,1,8,1,'2016-06-06 00:23:36'),(141,43,'','Kevin\n',0,0,1,8,1,'2016-06-07 02:34:40'),(142,4,'','kevinkkkk',0,0,1,1,1,'2016-06-07 03:07:30'),(143,4,'','image～～～',0,0,1,1,0,'2016-06-07 03:24:32'),(144,4,'','label test',0,0,1,4,1,'2016-06-07 03:26:47'),(145,4,'','images...',1,0,1,2,1,'2016-06-07 03:32:36'),(146,4,'','压缩图片...节约流量～',1,2,1,6,1,'2016-06-07 03:39:18'),(147,4,'','...测完睡觉～',1,0,1,6,1,'2016-06-07 03:42:42'),(148,10,'','呵呵',2,0,1,8,1,'2016-06-09 16:32:49'),(149,4,'','我又来了～',0,0,1,7,1,'2016-06-09 20:45:36'),(150,4,'','高考结束三年了...真快～',1,1,1,7,1,'2016-06-09 20:49:50'),(151,5,'','深夜动态～',1,1,1,5,1,'2016-06-10 02:15:16'),(152,5,'','啦啦啦～',0,0,1,7,0,'2016-06-10 14:17:18'),(153,4,'我的第一条心语','<style>img{max-width:100%}</style>啦啦啦啦～\n<div>\n    <img src=\"http://139.196.187.155/images/static/3f19d557dad27ee2402e7c3524d87dad.png\" alt=\"\">\n    <br />\n</div>',0,0,0,1,1,'2016-06-16 02:32:26'),(154,4,'全面测试～','<style>img{max-width:100%}</style><h1>不错的控件哦</h1>富<font color=\"#ffe927\"><strike>介绍可能是</strike></font>文本？你觉得呢？\n<div>\n    <img src=\"http://139.196.187.155/images/static/dee39087bbff34194c6ac325804ca813.png\" alt=\"\">\n    <br />\n</div>\n<div>图也不错～</div>',0,1,0,1,1,'2016-06-16 02:35:01'),(155,14,'','今天天气很热，路上看见一只肥猪一直冒汗，她实在太可怜啦，就在罗森买了一个冰棍送给了她~',0,0,1,8,1,'2016-06-22 17:28:15'),(156,14,'','今天下雨，看见一个同学没有带伞，主动上去同他一起打伞回宿舍~',0,0,1,8,1,'2016-06-25 17:17:59'),(157,14,'雨下得好大','<style>img{max-width:100%}</style>今天的重庆雨下得很大~陪皮皮猪走在路上，即使撑着伞，大雨也会打湿衣襟，连皮皮的包也打湿啦。',0,0,0,1,0,'2016-06-25 17:54:20'),(158,8,'','今天下雨在路上看见一只小鸟不幸打湿了翅膀，于是帮它找了一个干燥的地方让它的翅膀好起来，顺便留了一点食物，希望它翅膀干了后，能找到自己的伙伴',0,0,1,8,1,'2016-06-25 20:36:39'),(159,8,'可以发图片吗？','<style>img{max-width:100%}</style><img src=\"http://139.196.187.155/images/static/4763b81779486f9a8bc31eae427f691c.png\" alt=\"\">',0,0,0,1,1,'2016-06-26 16:21:14'),(160,8,'','打卡一天~今天生产实习完，把同学们产生的垃圾都收集起来放进了垃圾桶。',0,0,1,8,1,'2016-06-26 16:36:29'),(161,13,'','我行善了',0,0,1,8,1,'2016-06-27 20:47:52'),(162,4,'','回家啦～',0,0,1,7,1,'2016-06-27 23:51:29');
/*!40000 ALTER TABLE `heart_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labels` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_valid` tinyint(4) NOT NULL DEFAULT '1',
  `achievement` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES (1,'无',1,0),(2,'明德致远',1,0),(3,'保护环境',1,0),(4,'救人危急',1,0),(5,'劝人为善',1,0),(6,'成人之美',1,0),(7,'上善若水',1,0),(8,'不踏草坪',1,0);
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `fan_uid` int(10) unsigned NOT NULL,
  `hwid` int(10) unsigned DEFAULT NULL,
  `nid` int(10) unsigned DEFAULT NULL,
  `content` text,
  `type` tinyint(4) NOT NULL COMMENT '0：所有评论\r\n1：收到的赞\r\n2：新的粉丝',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `messages_uid` (`uid`) USING BTREE,
  KEY `messages_fan_uid` (`fan_uid`) USING BTREE,
  KEY `messages_hwid` (`hwid`) USING BTREE,
  KEY `messages_nid` (`nid`) USING BTREE,
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`fan_uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`hwid`) REFERENCES `heart_words` (`hwid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`nid`) REFERENCES `news` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_4` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,2,1,NULL,NULL,NULL,2,0,'2016-05-15 23:01:37'),(2,1,1,NULL,NULL,NULL,2,1,'2016-05-17 01:05:01'),(3,1,1,NULL,NULL,NULL,2,1,'2016-05-18 01:44:26'),(4,1,1,10,NULL,NULL,1,1,'2016-05-19 03:46:06'),(5,2,1,7,NULL,NULL,1,0,'2016-05-20 08:01:44'),(6,2,1,7,NULL,'这个电热水器是什么鬼2333',0,0,'2016-05-20 08:03:12'),(7,6,6,17,NULL,NULL,1,1,'2016-05-20 15:29:09'),(8,6,1,17,NULL,NULL,1,1,'2016-05-20 20:37:33'),(9,6,1,17,NULL,'目前用着没啥问题吧',0,1,'2016-05-20 20:37:45'),(10,6,1,NULL,NULL,NULL,2,1,'2016-05-20 20:38:21'),(11,1,8,NULL,NULL,NULL,2,1,'2016-05-20 22:10:22'),(12,1,10,15,NULL,'嘿嘿嘿',0,1,'2016-05-20 23:33:23'),(13,6,10,NULL,NULL,NULL,2,1,'2016-05-20 23:33:46'),(14,10,1,NULL,NULL,NULL,2,0,'2016-05-21 01:08:06'),(15,6,1,17,NULL,'回复PureDark：顺便测试下回复用户自动加前缀',0,1,'2016-05-21 04:50:25'),(16,1,8,11,NULL,NULL,1,1,'2016-05-21 21:09:55'),(17,1,10,NULL,NULL,NULL,2,1,'2016-05-24 15:14:09'),(18,2,8,16,NULL,NULL,1,0,'2016-05-25 12:50:16'),(19,2,8,16,NULL,'666666，我花了60万',0,0,'2016-05-25 12:50:32'),(20,8,1,39,NULL,NULL,1,0,'2016-05-26 09:45:33'),(21,8,1,39,NULL,'哈哈哈',0,1,'2016-05-26 09:45:47'),(22,12,10,NULL,5,NULL,0,0,'2016-05-27 23:28:47'),(23,12,10,NULL,NULL,NULL,2,0,'2016-05-27 23:29:14'),(24,13,10,53,NULL,NULL,1,0,'2016-05-27 23:39:15'),(25,12,10,46,NULL,NULL,1,0,'2016-05-27 23:41:03'),(26,6,8,55,NULL,NULL,1,1,'2016-05-28 11:45:53'),(27,12,8,41,NULL,NULL,1,0,'2016-05-28 11:46:04'),(28,6,1,55,NULL,NULL,1,1,'2016-05-28 14:07:05'),(29,13,1,47,NULL,'发表评论数字应该是会自动增加的',0,0,'2016-05-28 14:08:15'),(30,12,11,NULL,NULL,NULL,2,0,'2016-05-28 18:00:41'),(31,12,13,NULL,NULL,NULL,2,0,'2016-05-29 11:55:47'),(32,11,7,NULL,NULL,NULL,2,0,'2016-05-29 12:06:52'),(33,1,8,40,NULL,NULL,1,1,'2016-05-29 13:36:31'),(34,11,8,NULL,NULL,NULL,2,0,'2016-05-29 13:40:29'),(35,12,1,42,NULL,NULL,1,0,'2016-05-30 02:30:09'),(36,12,1,NULL,NULL,NULL,2,0,'2016-05-30 08:32:42'),(37,12,1,42,NULL,NULL,1,0,'2016-05-30 15:55:03'),(38,8,1,NULL,NULL,NULL,2,0,'2016-05-30 16:00:34'),(39,8,1,68,NULL,'在下面有提示，不做成弹出框',0,1,'2016-05-31 17:17:22'),(40,25,8,97,NULL,NULL,1,0,'2016-06-01 15:26:05'),(41,28,30,99,NULL,NULL,1,0,'2016-06-01 16:17:27'),(42,27,30,98,NULL,NULL,1,0,'2016-06-01 16:17:28'),(43,25,30,97,NULL,NULL,1,0,'2016-06-01 16:17:29'),(44,7,30,96,NULL,NULL,1,0,'2016-06-01 16:17:31'),(45,29,30,95,NULL,NULL,1,0,'2016-06-01 16:17:33'),(46,26,30,94,NULL,NULL,1,0,'2016-06-01 16:17:34'),(47,6,30,88,NULL,NULL,1,0,'2016-06-01 16:17:35'),(48,24,30,87,NULL,NULL,1,0,'2016-06-01 16:17:37'),(49,10,30,86,NULL,NULL,1,0,'2016-06-01 16:17:38'),(50,23,30,85,NULL,NULL,1,0,'2016-06-01 16:17:40'),(51,22,30,84,NULL,NULL,1,0,'2016-06-01 16:17:41'),(52,1,30,83,NULL,NULL,1,0,'2016-06-01 16:17:43'),(53,1,30,82,NULL,NULL,1,0,'2016-06-01 16:17:44'),(54,1,30,81,NULL,NULL,1,0,'2016-06-01 16:17:46'),(55,1,30,80,NULL,NULL,1,0,'2016-06-01 16:17:48'),(56,1,30,79,NULL,NULL,1,0,'2016-06-01 16:17:49'),(57,10,30,78,NULL,NULL,1,0,'2016-06-01 16:17:50'),(58,19,30,75,NULL,NULL,1,0,'2016-06-01 16:17:51'),(59,18,30,74,NULL,NULL,1,0,'2016-06-01 16:17:54'),(60,17,30,73,NULL,NULL,1,0,'2016-06-01 16:17:56'),(61,10,30,72,NULL,NULL,1,0,'2016-06-01 16:17:58'),(62,10,30,71,NULL,NULL,1,0,'2016-06-01 16:18:00'),(63,10,30,70,NULL,NULL,1,0,'2016-06-01 16:18:01'),(64,10,30,69,NULL,NULL,1,0,'2016-06-01 16:18:02'),(65,8,30,67,NULL,NULL,1,0,'2016-06-01 16:18:04'),(66,1,30,66,NULL,NULL,1,0,'2016-06-01 16:18:05'),(67,1,30,65,NULL,NULL,1,0,'2016-06-01 16:18:07'),(68,1,30,64,NULL,NULL,1,0,'2016-06-01 16:18:08'),(69,1,30,59,NULL,NULL,1,0,'2016-06-01 16:18:09'),(70,1,30,58,NULL,NULL,1,0,'2016-06-01 16:18:11'),(71,34,1,106,NULL,NULL,1,0,'2016-06-02 03:15:17'),(72,24,14,87,NULL,NULL,1,0,'2016-06-02 11:05:36'),(73,11,14,NULL,NULL,NULL,2,0,'2016-06-02 11:05:57'),(74,6,14,NULL,NULL,NULL,2,0,'2016-06-02 11:06:03'),(75,10,14,NULL,NULL,NULL,2,0,'2016-06-02 11:06:11'),(76,12,14,NULL,NULL,NULL,2,0,'2016-06-02 11:06:27'),(77,1,14,NULL,NULL,NULL,2,0,'2016-06-02 11:06:35'),(78,14,35,NULL,NULL,NULL,2,0,'2016-06-02 11:48:07'),(79,35,14,NULL,NULL,NULL,2,0,'2016-06-02 12:49:46'),(80,35,14,114,NULL,'Hhhhhhhhh撒比',0,0,'2016-06-02 12:50:14'),(81,35,14,114,NULL,NULL,1,0,'2016-06-02 12:56:17'),(82,14,35,113,NULL,'哇好棒哦',0,1,'2016-06-02 12:57:39'),(83,40,41,121,NULL,NULL,1,0,'2016-06-02 15:47:16'),(84,41,42,122,NULL,'花式撩',0,0,'2016-06-02 15:53:38'),(85,38,42,119,NULL,NULL,1,0,'2016-06-02 15:53:44'),(86,37,42,117,NULL,NULL,1,0,'2016-06-02 15:53:47'),(87,11,42,115,NULL,NULL,1,0,'2016-06-02 15:53:50'),(88,14,42,113,NULL,NULL,1,0,'2016-06-02 15:53:58'),(89,14,42,113,NULL,'忍不住点赞',0,0,'2016-06-02 15:54:11'),(90,14,42,111,NULL,NULL,1,0,'2016-06-02 15:54:18'),(91,8,42,110,NULL,NULL,1,0,'2016-06-02 15:54:19'),(92,34,42,106,NULL,NULL,1,0,'2016-06-02 15:56:25'),(93,33,42,105,NULL,NULL,1,0,'2016-06-02 15:56:29'),(94,32,42,104,NULL,NULL,1,0,'2016-06-02 15:56:30'),(95,31,42,103,NULL,NULL,1,0,'2016-06-02 15:56:32'),(96,13,42,102,NULL,NULL,1,0,'2016-06-02 15:56:34'),(97,30,42,100,NULL,NULL,1,0,'2016-06-02 15:57:11'),(98,28,42,99,NULL,NULL,1,0,'2016-06-02 15:57:11'),(99,27,42,98,NULL,NULL,1,0,'2016-06-02 15:57:13'),(100,7,42,96,NULL,NULL,1,0,'2016-06-02 15:57:14'),(101,26,42,94,NULL,NULL,1,0,'2016-06-02 15:57:16'),(102,24,42,87,NULL,NULL,1,0,'2016-06-02 15:57:19'),(103,23,42,85,NULL,NULL,1,0,'2016-06-02 15:57:22'),(104,22,42,84,NULL,NULL,1,0,'2016-06-02 15:57:23'),(105,18,42,74,NULL,NULL,1,0,'2016-06-02 15:57:29'),(106,17,42,73,NULL,NULL,1,0,'2016-06-02 15:57:30'),(107,40,42,121,NULL,NULL,1,0,'2016-06-02 15:57:38'),(108,39,42,120,NULL,NULL,1,0,'2016-06-02 15:57:39'),(109,40,6,121,NULL,NULL,1,0,'2016-06-02 23:55:22'),(110,11,12,56,NULL,NULL,1,0,'2016-06-04 02:47:58'),(111,40,12,121,NULL,NULL,1,0,'2016-06-04 02:49:04'),(112,12,4,136,NULL,NULL,1,0,'2016-06-05 18:30:12'),(113,14,4,135,NULL,NULL,1,0,'2016-06-05 18:30:25'),(114,10,4,137,NULL,NULL,1,0,'2016-06-05 22:07:08'),(115,1,43,5,NULL,'llama',0,0,'2016-06-05 22:11:01'),(116,1,43,5,NULL,NULL,1,0,'2016-06-05 22:11:46'),(117,12,43,42,NULL,NULL,1,0,'2016-06-05 22:16:07'),(118,12,43,42,NULL,NULL,1,0,'2016-06-05 22:16:17'),(119,12,43,42,NULL,NULL,1,0,'2016-06-05 22:16:25'),(120,12,43,NULL,NULL,NULL,2,0,'2016-06-05 22:19:39'),(121,36,4,132,NULL,NULL,1,0,'2016-06-05 22:35:45'),(122,6,4,131,NULL,NULL,1,0,'2016-06-05 22:35:59'),(123,1,4,130,NULL,NULL,1,0,'2016-06-05 22:36:05'),(124,36,4,128,NULL,NULL,1,0,'2016-06-05 22:38:14'),(125,10,4,134,NULL,NULL,1,0,'2016-06-05 22:40:09'),(126,6,4,133,NULL,NULL,1,0,'2016-06-05 22:40:15'),(127,40,4,121,NULL,NULL,1,0,'2016-06-06 01:45:45'),(128,36,4,116,NULL,NULL,1,0,'2016-06-06 02:20:12'),(129,1,4,NULL,NULL,NULL,2,0,'2016-06-06 02:36:55'),(130,12,4,NULL,NULL,NULL,2,0,'2016-06-06 02:39:18'),(131,14,4,NULL,NULL,NULL,2,0,'2016-06-06 02:40:15'),(132,6,4,NULL,NULL,NULL,2,0,'2016-06-06 02:40:23'),(133,12,4,NULL,NULL,NULL,2,0,'2016-06-06 02:41:05'),(134,39,4,118,NULL,NULL,1,0,'2016-06-06 02:42:34'),(135,36,4,NULL,NULL,NULL,2,0,'2016-06-06 02:56:11'),(136,1,4,140,NULL,NULL,1,0,'2016-06-06 11:17:36'),(137,1,4,139,NULL,NULL,1,0,'2016-06-06 11:17:38'),(138,1,4,138,NULL,NULL,1,0,'2016-06-06 11:17:44'),(139,6,4,NULL,NULL,NULL,2,0,'2016-06-06 11:18:59'),(140,1,4,140,NULL,'测试一个',0,0,'2016-06-06 21:23:18'),(141,1,4,139,NULL,'测试',0,0,'2016-06-06 21:23:42'),(142,10,4,137,NULL,'嗯',0,0,'2016-06-06 21:26:04'),(143,1,4,139,NULL,'test',0,0,'2016-06-06 21:30:06'),(144,1,4,138,NULL,'test',0,0,'2016-06-06 21:30:43'),(145,1,4,140,NULL,'test',0,0,'2016-06-06 21:31:05'),(146,1,4,140,NULL,'test002',0,0,'2016-06-06 21:33:26'),(147,10,44,134,NULL,'我也捐了的，这个app有多少人在用啊，居然一下就看到了你这么久之前的评论',0,0,'2016-06-07 18:40:20'),(148,10,44,NULL,NULL,NULL,2,0,'2016-06-07 18:43:50'),(149,10,5,148,NULL,NULL,1,0,'2016-06-09 19:26:28'),(150,26,4,NULL,NULL,NULL,2,0,'2016-06-09 19:47:40'),(151,10,4,137,NULL,'活着挺累，至少还活着～',0,0,'2016-06-09 19:49:40'),(152,10,4,148,NULL,NULL,1,0,'2016-06-09 19:55:44'),(153,4,5,150,NULL,NULL,1,1,'2016-06-10 02:13:58'),(154,5,4,NULL,NULL,NULL,2,1,'2016-06-10 02:35:15'),(155,5,4,151,NULL,NULL,1,1,'2016-06-10 02:35:53'),(156,5,4,151,NULL,'nice done !',0,1,'2016-06-10 02:36:20'),(157,4,5,150,NULL,'嗯～白驹过隙～',0,1,'2016-06-10 14:22:00'),(158,4,5,NULL,NULL,NULL,2,1,'2016-06-10 14:22:22'),(159,4,5,NULL,NULL,NULL,2,1,'2016-06-10 16:38:03'),(160,10,5,NULL,NULL,NULL,2,0,'2016-06-10 17:06:29'),(161,4,1,146,NULL,'这个压缩得太多了，至少字要能保证可以阅读，1m以内就行了',0,1,'2016-06-14 07:24:46'),(162,4,1,146,NULL,'而且这个压缩算法没有做模糊，马赛克都压出来了',0,1,'2016-06-14 07:25:42'),(163,10,8,NULL,NULL,NULL,2,0,'2016-06-26 16:37:25');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `com` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'user','com.shanyi.shanyiapp.modules.UserModule'),(2,'system','com.shanyi.shanyiapp.modules.SystemModule'),(3,'heartword','com.shanyi.shanyiapp.modules.HeartWordModule'),(4,'image','com.shanyi.shanyiapp.modules.ImageModule'),(5,'news','com.shanyi.shanyiapp.modules.NewsModule'),(6,'prize','com.shanyi.shanyiapp.modules.PrizeModule'),(7,'social','com.shanyi.shanyiapp.modules.SocialModule'),(8,'dailytask','com.shanyi.shanyiapp.modules.DailyTaskModule');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `nid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：善意能量\r\n1：公益行',
  `city` int(10) unsigned NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`nid`),
  KEY `news_city` (`city`) USING BTREE,
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`city`) REFERENCES `cities` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (2,'一位农民的呐喊：农村社会亟待铸造良知','','http://mmbiz.qpic.cn/mmbiz/McqCtF41Ph1jIzgyBteSqs6haG9utGh9VR868BJ8XibqWVBTHTzM8YRIUHDX7ZAswWl1SSiaEoXfL857gF1A4e3A/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1','微信 2015/04/24 益先生（微信号yi_xian_sheng）','尊敬的于教授：\r\n\r\n我是安徽亳州涡阳的一名农民，一直以来，通过微博和微信公众号得知您长期致力于农村方面矛盾问题的研究，在此谨致于您崇高的敬意。作为底层群众，入林闻鸟声吧，我一直在观察农村社会的世事百态，同时也在思考这些问题的成因和解决办法。\r\n\r\n作为高层，不可能尽知农村的真实问题；作为基层官吏，为数不少的官员不可能具有良知与正义的责任感去真心的解决农村问题。所以，请您将来能够按地理区域、经济发展类型等指标就农村问题在全国范围内进行典型抽样调查，以“时不我出，苍生何如”的使命感，形成一个既具有代表性又能反映农村存在的真实问题的调查报告，通过某种渠道转呈高层或有关部门，以期高层能够就农村问题对症下药。\r\n\r\n出于对您学术与正义的信仰，也出于“天听自我民听、天视自我民视”的朴素观念，在此就农村几个方面的问题致信于您，谈谈我对农村问题的看法和意见，恭请垂鉴。\r\n\r\n一、 农村选举：一场貌似自由恋爱的婚礼\r\n\r\n自上世纪90年代以来，村干部的选举，真实的说就是走过场、搞形式，其实质是上级任命，对于农民来说这是常识。村里连召开选举大会的号召力都没有了，召开选举会的日子连一半的村民都不能去村部现场，只有镇村干部抱着票箱挨家挨户的找村民投票。有的村民说，随便划，谁当都一样；有的村民说，还不都是镇上任命好的，找我们不过是形式……村民选举的漠视对于镇村干部都是绝妙的机会，因为，他们可以在村民的随意下随意勾划意定的村干部。所以说，村干的选举会不过是一场粉饰上级意定村干的婚礼，为此虚伪正名而已！\r\n\r\n二、 农村教育：义务教育学校公办的不如民办的\r\n\r\n近十年来，农村私立学校雨后春笋办的应运而起，这其中有农民工外出需要小孩寄宿的原因，更有公办学校教育质量急速下降的原因。有的农民外出，出于省事的原因，把小孩送进镇上或者县城的寄宿学校，当然也有出于能学好的原因。也有一部分能看透时局的农民，为了小孩能够成才，不得已把小孩送到私立学校，因为他的意识里，私立学校才能教的更好。当然这无形之中，加重了农民的教育负担：一个小学生私立学校的学期费用是2500元左右，一个初中生私立学校连同生活费的学期费用是10000元左右，好端端的公立学校零学费却没有高收费的私立学校有号召力，这究竟是悲愤还是嘲讽？究其原因，公立学校老师见面聊天的话题是：工资啥时候该涨，管他学的好坏，我们工资又不少一分，只要不出事；私立学校老师见面聊天的话题：这次班级平均分名列多少名，奖金可以多拿多少。农民相信私立学校的原因简单的不能再简单：私立学校老师好好教。\r\n\r\n曾打算就此问题致信来自社科院的崔市长，在全市开展校长选拨改革建议：以乡镇学区为单位，每学期开展学业质量测评，后三位的校长实行末位淘汰制。而不是现行的中小学校长为好中心校长，中心校长为好教育局长就能当选的畸形怪圈。考虑到人微言轻，崔市长也不一定当回事也就罢了。自古权责对等才是合理的，而我们的公立老师的责任就是在校期间不出事。农村的公办校长只是求和，只是保位子，哪来的公立教育质量？\r\n\r\n三、农村低保：究竟都保了谁\r\n\r\n农村低保作为一项德政惠民工程，居然也成了基层干部舞弄权力优亲厚友厚自己的利己工程。近二三年中央三令五申要求查处基层攸关民生问题的贪腐行为，县级民政部门才下决心多渠道多方位查处农村低保问题，估计纠错率目前能达到80%，这已经是很庆幸的事了。前十几年来，农村低保80%的比例保了镇村干部的亲戚朋友，如果政府有决心，通过往年银行转账记录核查一下这些年来低保都转入了谁的账户，结果自会揭晓。这些年来农村低保大都保了不该保的人。\r\n\r\n四、 农村涉法涉诉：首要想到的是找关系\r\n\r\n随着社会的发展，农村涉法涉诉案件与日俱增，按照唯物史观，这也是无可非议的事情。近年来，婚姻、交通、经济案件已经发生到每个村落，而在涉及法律层面上，农民首先想到的是找关系，很显然，这是因为关系在法律面前还是起作用的，人治还是大于法治的。有时双方当事人找关系时居然找到同一个法官，可想而知，鹬蚌相争，渔翁得利。我曾亲历一次作为受害者的交通事故，我找了两次受理交警，交警都说对方不得闲。一万个想不通，处理案件居然还要等肇事方有空才能处理，真实的天大的笑话！鉴于农村涉法问题上大家都在找关系，说明基层执法部门依然我行我素，但往往最需要治理的是他们执法部门。\r\n\r\n五、农村官员：述而不作\r\n\r\n毋庸讳言，农村为数不少的官员并无根本的开创性工作。常年下来，就是不停应付检查，学习上级文件，他们的工作就是传达，几乎不曾真正落实过。依然是求保乌纱帽的心态，任期内只要不出大事足矣。在相对安全的情况下，捞取一些经济利益还是必须的。诸多的村官，目光停留在农村集体资源的处置，从中谋利是其热心的根源。我所知悉的一个村官，把村上的鱼塘、自留地以10年的期限承包出去，林木能卖的也都卖了，从而取得50余万的村收入，再进行村改造建设。一个村官能干几年都不知道，居然把村里的集体资产出租10年，实在有些自不量力。有时候，述而不作还算幸运，就怕他述而乱作。\r\n\r\n基层反腐停留在“强弩之末不能穿鲁缟”的状态，去找镇长反映存村庄的问题，去找县长反映镇长的问题，得到处理的可能性是不大的，因为，他们上下级关系存在功过关联、甚至是利益关联。至于，有没有贪腐，根本不需要纪检调查，明眼人都知道，因为基层官吏的合法收入与其相对高端的衣食住行明显不符。有时候，村民去反映一个有问题的村干部，不仅没得到处理，反而得到了上级部门的肯定。去反映问题，主管部门一定要个人拿出证据，作为个人调查取证是很困难的。网载，王岐山书记同福山学者的一次谈话，涉及过这个问题，王岐山书记说，社会科学不同于自然科学，不是所有的社会问题都像自然科学那样能够即时的找到实证。\r\n\r\n……\r\n\r\n涡阳的农村如此，我想，这是无独有偶的现象，在全国范围内应该具有一定代表性，很多基层官员对上只是报喜不报忧，谈成绩不谈问题。农村作为广阔的空间和人口存在，施政的方向应该着力于农村。但如果长此以往，农村和农民将如何，延而申之，国家将如何，尤值深思。\r\n\r\n长期以来，我们在意识形态方面一直抵触欧美的社会思想，日本作为托亚入欧者，对他们思想的抵触概莫能外。明治维新时期的思想家福泽谕吉提出这样一个观点：一个民族要崛起，有三个方面，第一是人心灵的改变，第二是政治制度的改变，第三是器物层面、经济层面的改变，这三个层面的顺序应该是先是心灵的改变，然后是政治体制的改变，最后才是经济的改变。我觉得解决我们农村问题和一切社会问题的根本是挽救以个体存在的社会心灵。诚如王阳明所说的致良知的问题。晚清重臣曾国藩说，一夫不获，引为余辜。一个作为社会属性的无论官员还是民众，在进行社会行为的时候不要以一个演员的心态行事，而是内化于心的带有一定使命感和责任感的心态去行事。这样，农村才能不会向下，国家才会向上。\r\n\r\n作为执政者和国家，解决农村乃至一切社会问题的根本在于铸造人民的良知。不沉湎于过去的是非，不畅想于未来的美丑，只有立足于当下铸造我们的良知。\r\n\r\n一位农民\r\n2016年5月15日',5,1,0,0,'2016-05-14 18:00:42'),(3,'守望先锋！！！','竜が我が敌を喰らう！','http://xin.tgbus.com/uploads/allimg/150923/109-1509230126293B.jpg','暴雪日报 2016/04/01 暴雪爸爸','竜が我が敌を喰らう！',6,5,0,0,'2016-05-19 03:12:31'),(4,'关注雷洋之死，你是出于正义和良知，还是是出于恐惧和愤怒？','','http://mmbiz.qpic.cn/mmbiz/Ec9H8zgUewd6f4qYBqAHRiaTH32kI3tCibqmajQClLoBx0MgribdH6K6nfYA9ic8Sw0ZUXY5C1Frh2Kf0TD99m6Mow/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1','微信 2016/05/16 益先生（微信号yi_xian_sheng）','大众关注雷洋之死不仅是出于正义和良知，也是出于对公权力的恐惧和愤怒！﻿﻿\r\n\r\n29岁的雷洋在天子脚下的北京，在出门接机不到一个小时的时间里被抓嫖致死，成为一个星期来中国社会谈论的焦点，多日以来有关部门一直成为朋友圈的刷屏内容。除了少数人仍热衷于谈论雷洋到底有没有嫖娼这个下三路问题之外，中国社会的主流舆论终于回到了正常的大脑上！不论是人民日报、新华社两大传媒机构，不论是法学泰斗、著名律师、网上自媒体，人们都在追问：雷洋怎么死的？当地警方是怎么执法的？人们都在强调：当事警方已是嫌疑人，无权以任何形式单方发布信息！﻿\r\n\r\n程序正义高于实质正义的理念，规则重于道德的理念，生命高于一切的理念，悄悄在国人心中落地，生根。﻿\r\n\r\n这次舆论走在正常的常识与基调上，有几个非常重要的关键节点功不可没：﻿\r\n\r\n首先，是雷洋妻子的理性堪称伟大。她在第一时间明确表示：不考虑雷洋是否嫖娼，只在意执法是否有问题。正式委托律师后，她还通过律师转达了她的态度：雷妻此前说不在意丈夫是否嫖娼，并非认为丈夫真有嫖娼事实，而是指明此案关注重点不容掩盖，著重追究雷洋死因。﻿\r\n\r\n雷洋妻子深明大道、深明大义之凛然之姿，皎然出尘于各种只会讨论下三路的“妇人之见”。我认为，它对舆论对准靶心、聚焦重点、防止注意力转移，起到了至关重要的作用。因为，她也是风暴中心的当事人。不要以为普通人不能改变历史，只要坚守理性，普通人也能改变风向，甚至改变历史。﻿\r\n\r\n在此，我要对雷洋妻子这个普通的女性，致以深深的敬意。﻿\r\n\r\n第二个关键节点，是校友声援。这在当代中国舆论史上，是相当罕见的。网络上甚至有人喊出了“全世界校友们，联合起来”的心声。这意味著什么？意味著“出身”相同，阶层、地位、财富、国界、地域不同的人们，开始感受到了共同的恐惧、共同的责任，需要为这个世界的美好，共同凝聚起别样的力量。﻿\r\n\r\n2016年5月11日，已处社会中坚阶层的中国人民大学1988级部分校友发出第一份声明：“雷洋的死绝非意外，而是一场系统性的悲剧。我们呼吁最高权力机关展开对雷洋死因的独立、公正调查，我们要求严惩肇事凶手、彻底整顿约束公安纪律，我们要得到最基本可靠的人身安全、公民权利和城市秩序。舍此，在我们未老的未来，我们不会无所谓的。对恶，我们不会忍太久。”﻿\r\n\r\n随后，人大各级校友陆续发声，尤其，正处社会领导阶层的77级/78级校友更是以实名联署的方式就雷洋事件提出了明确诉求。﻿\r\n\r\n1992级部分校友的声明，则道出了雷洋事件持续热度不减的原因：﻿\r\n\r\n“我们不希望这一事件成为某些人茶馀酒后无聊的谈资，不希望这一事件被媒体过度消费，不希望给死者家属带来舆论的二次伤害。但是，到目前为止我们从昌平警方发布的两次声明及相关警员接受媒体采访的陈述中，没有看到对生命的尊重，没有看到对执法程序的反思，更没有看到面对死者的哪怕一丝内疚。两份矛盾重重漏洞百出的声明透露了对生命的忽视，视个人尊严如草芥，以及一次又一次的伤害。﻿\r\n\r\n“我们今天的呼吁不仅是为了逝者雷洋，为了千千万万的普通人，也是为了执法者本身和各级公务人员，今天光环加身，明天会不会沦为阶下囚？在生命的天平上，未经正当程序，每个人的生命安全都不容强权践踏。如果我们的执法机关不能尊重生命，不能程序正义，谁能保证下一个不轮到自己。\r\n\r\n如果公权力存在滥用现象而得不到制止，当程序正义被漠视甚至践踏而得不到纠正，每一位公民的权利都将无法保证，人人生活在恐惧之中，人人成为受害者。不谈及社会身份，回归本身，我们都是普通公民，每一条生命都值得尊重，每一个公民的基本权利都应得到保护。”﻿\r\n\r\n蔡慎坤的《雷洋之死真相早已大白于天下》为这份声明添了一把火：﻿\r\n\r\n“雷洋之死，带给我们的恐惧和愤怒是前所未有的，谁也不知道谁是下一个雷洋，或者说，每一个人都可能是下一个雷洋！这就是我们恐惧和愤怒的原因。如果说我们关注雷洋之死是出于正义和良知，倒不如说是出于恐惧和愤怒！对公权力的恐惧和愤怒！在一个没有尊严、没有人权生命如同草芥的社会，谁也无法预知自己在嫖娼或没有嫖娼的情况下，会不会被警察塞进通往死亡的面包车。﻿\r\n\r\n“这些年，无论是社会精英还是底层平民，在恐惧和愤怒之中，纷纷选择逃离这块土地，并非人们不热爱这个国家不眷恋这块土地，而是在恐惧和愤怒之际的无奈之举！当今中国，已是一个现代化的世界强国，为什么不能让每一个公民享有文明社会最基本的权利？为什么不能凝聚人心彰显公义？为什么拦不住国人逃离远走异国他乡的脚步？”﻿\r\n\r\n第三个关键节点，是互联网改变了传播。虽然网络上各种删帖依旧，但是你想发出的声音总能发出，此起彼伏，生生不息。在此过程中，大浪淘沙，民智在生长，权利和自由也在生长。﻿\r\n\r\n雷洋事件，可以视为中国人群体追求“免于恐惧的自由”的开端。温饱之后的中国人，终于开始警觉，开始追求免于恐惧的自由了！没有基本的生命安全保障，世间一切财富地位，荣华富贵，都是浮云，都是浮云！雷洋用生命的代价去唤醒，太昂贵，更要珍惜，永不放弃。﻿\r\n\r\n有人问我：雷洋事件发生，你还对中国有信心吗？﻿\r\n\r\n我说：中国的警察从来就是这样的啊，从来没有太好到哪里去过。大量事件被淹没了，或者因严重程度不如雷洋之死，或者因没有像雷洋这样清醒理智的妻子，或者因没有雷洋这样的名校出身背景，大量的恶性侵权事件，被淹没在冰山之下。这个事件，应该是好转的契机而不是相反啊！当然，到目前为止，这还只是好转的契机，还没有成为转折点。﻿\r\n\r\n是否成为转折点，要看我们接下来是不是大幅度约束警察权，是不是重新审视和更正确对待卖淫嫖娼行为，是不是全社会重视讲规则远甚于重视讲道德。我们不妨听听胡适先生在几十年前说过的一句话：“一个肮脏的国家，如果人人都开始讲规则而不是谈道德，最终会变成一个有人味儿的正常国家，道德自然会逐渐回归。一个乾净的国家，如果人人都不讲规则却大谈道德，人人都争当高尚，天天没事儿就谈道德规范，人人都大公无私，最终，这个国家会堕落成为一个伪君子遍布的肮脏国家！”﻿\r\n\r\n苏小和先生说：“我们正在努力开启现代化的大门，而如果不改变这种‘道德先行’的观念，现代化，永远是遥不可及的一场春梦！”“上帝都会宽恕妓女。没有任何人有资格攻击一名妓女，同理，没有任何人有资格攻击一名嫖客。因为制度之恶远超这些私德之丑。当一个社会动用公共资源攻击妓女或者嫖客，证明这个社会不仅烂透了，而且已经失去基本的反思能力和纠错能力，不得不借助私德之丑遮蔽制度之恶。\r\n\r\n”“卖淫嫖娼是人类社会最古老的原罪之一，这是一个道德的命题，轮不到法律和公权力在这个领域口诛笔伐。这是一个应该提倡合法化、管理规范化的领域，如果某些人一定要借用法律的名义，那只能说明，第一，这个制度伪善，第二，有人在寻租，第三，还有比卖淫嫖娼更大的恶隐藏在后面，他们无脸见人，只能撒谎，只能寻找一块遮羞布。”﻿\r\n\r\n我也一直想对那些辛苦冲在一线的执法者说：如果你改变不了法律，请一定，把你的枪口抬高一寸！假如您是警察，您不可能全家老小都是警察；您是管辖一方的警察，但不可能走到哪里都是管到哪里的警察。换句话说，脱下警服，您也是被执法对象；离开您管辖的区域，您也可能成为像雷洋一样的警方眼里的嫌疑人！我们都在同样的空气中生活，不要问丧钟为谁而鸣，它，就为你而鸣！',3,1,0,0,'2016-05-20 15:24:34'),(5,'全国首家公益广播授牌仪式在津举行','市慈善协会会长曹秀荣和市文明办、天津广播电视台负责同志为公益广播授牌','http://upload.shanda960.com/ueditor/jsp/upload/20160519/92681463648859355.jpg','来源：每日新报，作者：郭晓莹，编辑：张泽键','昨日，天津市委宣传部、市文明办及天津广播电视台共同举办“全国首家公益广播授牌仪式暨天津交通广播全民公益1068帮帮团开播一周年主题活动”，市慈善协会会长曹秀荣和市文明办、天津广播电视台负责同志为公益广播授牌。\r\n\r\n公益广播是由市文明办和天津广播电视台交通广播共同打造，自今年4月亮相以来，坚持将公益行为“身边化、常态化、系列化、品牌化”，在原有公益节目的基础上，精心策划，进一步丰富内容，突出和强化“公益”理念，倡导开展互助友爱、慈善捐助、支教助学、义务献血、器官捐献等公益活动。授牌后，公益广播将策划举办一系列公益主题活动，主要包括“礼迎全运——文明出行好市民、文明服务好交警”推选活动；“美丽天津扮靓家园——关注我们身边的未来”公益行动；关注并改善贫困家庭孩子的学习生活环境主题活动等。同时，公益广播还将与天津志愿服务网紧密合作，实现“求助信息及时发布，援助信息实时对接”。\r\n\r\n去年以来，交通广播紧密围绕“人、车、路”这一主题，在津城上空搭建起“大家帮大家”的公益互助平台，为广大听众及时发布大量交通出行、寻人寻物、热心救助等服务信息，体现出媒体应有的社会责任感。活动现场，作为公益践行者的交通广播主持人以情景剧、诗朗诵等形式，生动再现一个个公益救助事例，我市部分热心公益的画家、歌唱家及体育界人士现场为公益事业进行了捐赠。',2,2,1,0,'2016-05-20 15:31:23');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_comments`
--

DROP TABLE IF EXISTS `news_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_comments` (
  `cmid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`cmid`),
  KEY `news_comments_nid` (`nid`) USING BTREE,
  KEY `news_comments_uid` (`uid`) USING BTREE,
  CONSTRAINT `news_comments_ibfk_1` FOREIGN KEY (`nid`) REFERENCES `news` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `news_comments_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_comments`
--

LOCK TABLES `news_comments` WRITE;
/*!40000 ALTER TABLE `news_comments` DISABLE KEYS */;
INSERT INTO `news_comments` VALUES (1,3,1,'测试一下对新闻进行评论',0,'2016-05-20 04:42:56'),(2,3,13,'挺好的',0,'2016-05-22 23:08:00'),(3,3,8,'评论测试',0,'2016-05-25 12:58:16'),(4,5,12,'挺好的！',0,'2016-05-26 13:02:19'),(5,3,12,'不错',0,'2016-05-26 13:20:16'),(6,2,12,'不错',0,'2016-05-26 13:22:27'),(7,5,10,'回复holmev：嘻嘻',0,'2016-05-27 23:28:47'),(8,3,7,'11',0,'2016-05-29 12:02:10'),(9,4,8,'???????',0,'2016-06-26 16:20:16');
/*!40000 ALTER TABLE `news_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_likes`
--

DROP TABLE IF EXISTS `news_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_likes` (
  `nid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`nid`,`uid`),
  KEY `news_likes_uid` (`uid`) USING BTREE,
  CONSTRAINT `news_likes_ibfk_1` FOREIGN KEY (`nid`) REFERENCES `news` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `news_likes_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_likes`
--

LOCK TABLES `news_likes` WRITE;
/*!40000 ALTER TABLE `news_likes` DISABLE KEYS */;
INSERT INTO `news_likes` VALUES (2,1,'2016-05-20 07:56:24'),(2,8,'2016-05-28 14:21:14'),(2,11,'2016-05-21 21:41:29'),(2,12,'2016-05-24 15:12:47'),(2,13,'2016-05-22 23:06:51'),(3,1,'2016-05-30 09:57:23'),(3,7,'2016-05-29 11:23:19'),(3,10,'2016-05-27 23:42:28'),(3,11,'2016-05-28 12:26:07'),(3,12,'2016-05-26 13:05:05'),(3,13,'2016-05-22 23:06:40'),(4,10,'2016-05-24 15:28:06'),(4,12,'2016-05-26 13:22:44'),(4,13,'2016-05-27 16:08:13'),(5,1,'2016-05-20 15:32:01'),(5,12,'2016-05-26 13:02:09');
/*!40000 ALTER TABLE `news_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prizes`
--

DROP TABLE IF EXISTS `prizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prizes` (
  `pzid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `provider` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `round_img` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `cost` int(10) unsigned NOT NULL,
  `datetime` datetime NOT NULL,
  `is_valid` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '0：无效\r\n1：有效',
  PRIMARY KEY (`pzid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prizes`
--

LOCK TABLES `prizes` WRITE;
/*!40000 ALTER TABLE `prizes` DISABLE KEYS */;
INSERT INTO `prizes` VALUES (1,'一只猎空','（前）守望先锋成员“猎空”是一位可以进行时间跳跃的冒险家，为了正义而不懈努力着。\r\n莉娜·奥克斯顿（代号：“猎空”）是守望先锋原型机试飞计划的最年轻成员。由于其大胆的飞行技术，她被选为一架可进行传送的原型战机，“跃空者”的试飞员。但在第一次试飞过程中，原型机的传送阵列出现故障，包括飞行员在内完全失踪。莉娜也因此被认定为已阵亡。\r\n然而莉娜却在几个月后再次出现，不过这次她并不是原来的她了：她身上的分子无法和时间流同步。这种被称为“时间解离”的症状使她彻底变成了一个“活生生”的幽灵，时不时地会突然消失数小时甚至几天。即使她短暂出现在正常时间，也无法维持自己的实体形态。\r\n守望先锋的医生和研究人员对此束手无策，“猎空”似乎不得不永远保持这一形态，直到一位名叫温斯顿的科学家设计出了“时间加速器”，一台可以让“猎空”维持在当前时间的装置。不仅如此，这一装置还让“猎空”有能力控制她自己的时间流，使她可以任意加速或减慢时间。有了这一全新的能力，她成了守望先锋最强大的特工之一。\r\n守望先锋解散后，“猎空”依旧选择为了正义而战，守护无辜。','暴雪公司','http://xin.tgbus.com/uploads/allimg/150810/109-150Q0113936-50.jpg','http://overwatch.nos.netease.com/1/images/heroes/tracer/icon-portrait.png','http://i3.17173cdn.com/2fhnvk/YWxqaGBf/cms3/YnNFCkbjFFjdgfv.jpg',30,'2016-05-20 03:22:56',1);
/*!40000 ALTER TABLE `prizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provinces` (
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (0,'未知'),(1,'北京'),(2,'天津'),(3,'上海'),(4,'重庆'),(5,'河北'),(6,'山西'),(7,'台湾'),(8,'辽宁'),(9,'吉林'),(10,'黑龙江'),(11,'江苏'),(12,'浙江'),(13,'安徽'),(14,'福建'),(15,'江西'),(16,'山东'),(17,'河南'),(18,'湖北'),(19,'湖南'),(20,'广东'),(21,'甘肃'),(22,'四川'),(23,'贵州'),(24,'海南'),(25,'云南'),(26,'青海'),(27,'陕西'),(28,'广西'),(29,'西藏'),(30,'宁夏'),(31,'新疆'),(32,'内蒙古'),(33,'澳门'),(34,'香港');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `religions`
--

DROP TABLE IF EXISTS `religions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `religions` (
  `rlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`rlid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religions`
--

LOCK TABLES `religions` WRITE;
/*!40000 ALTER TABLE `religions` DISABLE KEYS */;
INSERT INTO `religions` VALUES (1,'爱心人士'),(2,'佛教'),(3,'道教'),(4,'伊斯兰教'),(5,'天主教'),(6,'基督教'),(7,'其他宗教');
/*!40000 ALTER TABLE `religions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `rpid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `hwid` int(10) unsigned NOT NULL,
  `reason` tinyint(4) NOT NULL COMMENT '0：广告\r\n1：色情\r\n2：反动\r\n3：无关',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`rpid`),
  KEY `reports_uid` (`uid`) USING BTREE,
  KEY `reports_hwid` (`hwid`) USING BTREE,
  CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`hwid`) REFERENCES `heart_words` (`hwid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,1,15,2,'2016-05-20 08:26:30'),(2,1,15,2,'2016-05-20 08:26:30'),(3,12,41,3,'2016-05-26 13:15:47'),(4,13,23,3,'2016-05-27 20:21:02'),(5,6,46,0,'2016-05-28 10:06:51'),(6,10,147,1,'2016-06-09 16:33:09');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `splashes`
--

DROP TABLE IF EXISTS `splashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `splashes` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0：无效\r\n1：有效',
  PRIMARY KEY (`spid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `splashes`
--

LOCK TABLES `splashes` WRITE;
/*!40000 ALTER TABLE `splashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `splashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `star_signs`
--

DROP TABLE IF EXISTS `star_signs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `star_signs` (
  `ssid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`ssid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star_signs`
--

LOCK TABLES `star_signs` WRITE;
/*!40000 ALTER TABLE `star_signs` DISABLE KEYS */;
INSERT INTO `star_signs` VALUES (1,'白羊座'),(2,'金牛座'),(3,'双子座'),(4,'巨蟹座'),(5,'狮子座'),(6,'处女座'),(7,'天秤座'),(8,'天蝎座'),(9,'射手座'),(10,'摩羯座'),(11,'水瓶座'),(12,'双鱼座');
/*!40000 ALTER TABLE `star_signs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_messages`
--

DROP TABLE IF EXISTS `system_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_messages` (
  `smid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0：通知\r\n1：警告',
  `read` tinyint(4) NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`smid`),
  KEY `system_messages_uid` (`uid`) USING BTREE,
  CONSTRAINT `system_messages_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_messages`
--

LOCK TABLES `system_messages` WRITE;
/*!40000 ALTER TABLE `system_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_achievement_conditions`
--

DROP TABLE IF EXISTS `user_achievement_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_achievement_conditions` (
  `uid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`uid`,`acid`),
  KEY `conditions_acid` (`acid`),
  CONSTRAINT `conditions_acid` FOREIGN KEY (`acid`) REFERENCES `achievements` (`acid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `conditions_uid` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_achievement_conditions`
--

LOCK TABLES `user_achievement_conditions` WRITE;
/*!40000 ALTER TABLE `user_achievement_conditions` DISABLE KEYS */;
INSERT INTO `user_achievement_conditions` VALUES (1,5,5,'2016-06-06 00:23:36'),(1,7,2,'2016-05-29 21:21:48'),(1,8,3,'2016-05-30 02:30:09'),(1,9,21,'2016-05-29 19:58:11'),(1,20,3,'2016-06-02 17:10:03'),(4,5,1,'2016-06-27 23:51:29'),(4,8,17,'2016-06-05 18:30:12'),(4,9,9,'2016-06-07 03:07:30'),(4,20,2,'2016-06-09 20:49:50'),(5,8,2,'2016-06-09 19:26:28'),(5,9,2,'2016-06-10 02:15:16'),(5,20,1,'2016-06-10 14:17:18'),(6,5,3,'2016-06-03 07:06:41'),(6,8,1,'2016-06-02 23:55:22'),(6,9,5,'2016-06-01 12:20:31'),(6,20,1,'2016-06-02 17:14:06'),(7,9,1,'2016-06-01 13:57:35'),(8,8,1,'2016-06-01 15:26:05'),(8,9,4,'2016-05-30 10:40:43'),(9,5,1,'2016-06-01 16:24:33'),(9,9,1,'2016-06-01 16:24:33'),(10,5,4,'2016-06-09 16:32:49'),(10,9,8,'2016-05-31 19:19:33'),(11,5,1,'2016-06-02 15:07:38'),(11,9,1,'2016-06-02 15:07:38'),(12,8,2,'2016-06-04 02:47:58'),(12,9,1,'2016-06-04 02:47:29'),(13,5,2,'2016-06-27 20:47:52'),(13,9,2,'2016-06-01 16:29:06'),(14,5,4,'2016-06-25 17:17:59'),(14,8,2,'2016-06-02 11:05:36'),(14,9,6,'2016-06-02 10:15:29'),(14,20,1,'2016-06-02 11:16:12'),(17,9,1,'2016-05-31 23:30:23'),(18,5,1,'2016-05-31 23:34:51'),(18,9,1,'2016-05-31 23:34:51'),(19,9,1,'2016-05-31 23:41:10'),(20,5,1,'2016-06-02 16:39:30'),(20,9,1,'2016-06-02 16:39:30'),(22,5,1,'2016-06-01 09:30:01'),(22,9,1,'2016-06-01 09:30:01'),(23,9,1,'2016-06-01 10:37:04'),(24,5,1,'2016-06-01 11:15:46'),(24,9,1,'2016-06-01 11:15:46'),(25,9,1,'2016-06-01 14:00:57'),(26,5,1,'2016-06-01 13:37:38'),(26,9,1,'2016-06-01 13:37:38'),(27,9,1,'2016-06-01 14:05:41'),(28,5,1,'2016-06-01 14:09:05'),(28,9,1,'2016-06-01 14:09:05'),(29,5,1,'2016-06-01 13:46:13'),(29,9,1,'2016-06-01 13:46:13'),(30,8,30,'2016-06-01 16:17:27'),(30,9,1,'2016-06-01 16:20:53'),(31,9,1,'2016-06-01 17:04:32'),(32,5,1,'2016-06-01 17:42:45'),(32,9,1,'2016-06-01 17:42:45'),(33,9,1,'2016-06-01 17:46:59'),(34,9,1,'2016-06-01 19:27:31'),(35,5,1,'2016-06-02 12:48:47'),(35,9,1,'2016-06-02 12:48:47'),(36,5,2,'2016-06-03 07:06:20'),(36,9,3,'2016-06-02 15:18:05'),(37,5,1,'2016-06-02 15:24:14'),(37,9,1,'2016-06-02 15:24:14'),(38,5,1,'2016-06-02 15:31:02'),(38,9,1,'2016-06-02 15:31:02'),(39,5,1,'2016-06-02 15:29:49'),(39,9,2,'2016-06-02 15:29:49'),(40,5,1,'2016-06-02 15:40:15'),(40,9,1,'2016-06-02 15:40:15'),(41,5,1,'2016-06-02 15:47:06'),(41,8,1,'2016-06-02 15:47:16'),(41,9,1,'2016-06-02 15:47:06'),(42,5,1,'2016-06-02 15:52:22'),(42,8,23,'2016-06-02 15:53:44'),(42,9,1,'2016-06-02 15:52:22'),(43,5,1,'2016-06-07 02:34:40'),(43,8,4,'2016-06-05 22:11:46'),(43,9,1,'2016-06-07 02:34:40');
/*!40000 ALTER TABLE `user_achievement_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_achievements`
--

DROP TABLE IF EXISTS `user_achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_achievements` (
  `uid` int(10) unsigned NOT NULL,
  `acid` int(11) NOT NULL,
  `is_finer` tinyint(1) NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`uid`,`acid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_achievements`
--

LOCK TABLES `user_achievements` WRITE;
/*!40000 ALTER TABLE `user_achievements` DISABLE KEYS */;
INSERT INTO `user_achievements` VALUES (1,2,0,'2016-05-29 19:58:11'),(1,3,0,'2016-05-30 01:18:39'),(1,4,0,'2016-05-30 01:22:17'),(1,13,0,'2016-05-30 02:27:38'),(1,17,0,'2016-05-29 21:21:48'),(1,20,0,'2016-05-29 21:22:15'),(1,22,0,'2016-05-30 01:22:17'),(4,2,0,'2016-06-07 03:39:18'),(4,4,0,'2016-06-07 03:26:47'),(4,17,0,'2016-06-07 03:26:47'),(4,20,0,'2016-06-07 03:24:32'),(5,3,0,'2016-06-10 02:15:16'),(5,20,0,'2016-06-10 14:17:18'),(6,2,0,'2016-06-02 16:48:50'),(6,4,0,'2016-06-03 07:06:42'),(6,17,0,'2016-06-01 12:20:31'),(6,20,0,'2016-06-02 17:14:06'),(8,4,0,'2016-06-02 10:09:51'),(8,17,0,'2016-05-30 10:40:43'),(10,3,0,'2016-05-31 19:19:33'),(10,4,0,'2016-06-03 07:08:58'),(10,17,0,'2016-05-31 19:19:33'),(11,17,0,'2016-06-02 15:07:38'),(12,2,0,'2016-06-04 02:47:29'),(12,17,0,'2016-06-04 02:47:29'),(13,2,0,'2016-06-01 16:29:06'),(13,4,0,'2016-06-01 16:29:06'),(13,17,0,'2016-06-01 16:29:06'),(14,2,0,'2016-06-02 11:04:43'),(14,17,0,'2016-06-02 11:16:12'),(14,20,0,'2016-06-02 11:16:12'),(19,2,0,'2016-05-31 23:41:10'),(22,2,0,'2016-06-01 09:30:01'),(28,4,0,'2016-06-01 14:09:05'),(30,3,0,'2016-06-01 16:20:53'),(32,2,0,'2016-06-01 17:42:45'),(33,2,0,'2016-06-01 17:46:59'),(34,2,0,'2016-06-01 19:27:31'),(36,17,0,'2016-06-03 07:06:20');
/*!40000 ALTER TABLE `user_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_prize_claims`
--

DROP TABLE IF EXISTS `user_prize_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_prize_claims` (
  `clid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `pzid` int(10) unsigned NOT NULL,
  `real_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `cellphone` varchar(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：未完成\r\n1：已完成',
  PRIMARY KEY (`clid`),
  KEY `user_prize_claims_uid` (`uid`) USING BTREE,
  KEY `user_prize_claims_pzid` (`pzid`) USING BTREE,
  CONSTRAINT `user_prize_claims_ibfk_1` FOREIGN KEY (`pzid`) REFERENCES `prizes` (`pzid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_prize_claims_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_prize_claims`
--

LOCK TABLES `user_prize_claims` WRITE;
/*!40000 ALTER TABLE `user_prize_claims` DISABLE KEYS */;
INSERT INTO `user_prize_claims` VALUES (1,1,1,'梁雨聪','陕西省 西安市 西安交通大学 仲英书院 东21 624','13279347875','2016-05-20 04:26:47',0),(2,1,1,'梁雨聪','地址','13279347875','2016-05-30 02:27:38',0);
/*!40000 ALTER TABLE `user_prize_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_stats`
--

DROP TABLE IF EXISTS `user_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_stats` (
  `uid` int(10) unsigned NOT NULL,
  `check_in_days` int(10) unsigned NOT NULL DEFAULT '0',
  `max_consecutive_days` int(10) unsigned NOT NULL DEFAULT '0',
  `goal_achieved_days` int(10) unsigned NOT NULL DEFAULT '0',
  `good_deed_count` int(10) unsigned NOT NULL DEFAULT '0',
  `heart_word_count` int(10) unsigned NOT NULL DEFAULT '0',
  `moved_user_count` int(10) unsigned NOT NULL DEFAULT '0',
  `liked_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  CONSTRAINT `user_stats_uid` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_stats`
--

LOCK TABLES `user_stats` WRITE;
/*!40000 ALTER TABLE `user_stats` DISABLE KEYS */;
INSERT INTO `user_stats` VALUES (1,13,3,8,34,6,29,32),(4,3,0,1,9,2,4,1),(5,1,0,0,2,0,2,1),(6,5,2,5,6,0,5,5),(7,1,0,0,1,1,2,2),(8,5,1,1,5,3,5,19),(9,1,0,1,1,0,0,0),(10,5,1,5,9,1,13,12),(11,2,0,2,2,0,2,2),(12,2,0,1,6,1,5,14),(13,3,0,3,4,5,3,3),(14,4,1,4,6,1,5,3),(15,0,0,0,0,0,0,0),(16,0,0,0,0,0,0,0),(17,1,0,0,1,0,2,2),(18,1,0,1,1,0,2,2),(19,1,0,0,1,0,1,1),(20,1,0,1,1,1,0,0),(21,0,0,0,0,1,0,0),(22,1,0,1,1,0,2,2),(23,1,0,0,1,0,2,2),(24,1,0,1,1,0,3,3),(25,1,0,0,1,1,2,2),(26,1,0,1,1,1,2,2),(27,1,0,0,1,1,2,2),(28,1,0,1,1,1,2,2),(29,1,0,1,1,0,1,1),(30,1,0,0,1,0,1,1),(31,1,0,0,1,0,1,1),(32,1,0,1,1,0,1,1),(33,1,0,0,1,0,1,1),(34,1,0,0,1,0,2,2),(35,1,0,1,1,0,2,2),(36,2,1,2,3,0,3,3),(37,1,0,1,1,0,1,1),(38,1,0,1,1,0,1,1),(39,1,0,1,2,0,2,2),(40,1,0,1,1,0,5,5),(41,1,0,1,1,0,1,0),(42,1,0,1,1,0,0,2),(43,1,0,1,1,0,0,0),(44,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `user_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cellphone` varchar(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：保密 \r\n1：男 \r\n2：女',
  `area` varchar(10) DEFAULT NULL,
  `religion` int(10) unsigned DEFAULT NULL,
  `star_sign` int(10) unsigned DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `signature` varchar(400) DEFAULT NULL,
  `daily_good_deed` tinyint(2) NOT NULL DEFAULT '0',
  `consecutive_days` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `gd_points` int(11) NOT NULL DEFAULT '30' COMMENT '行善可加积分余额',
  `hw_points` int(11) NOT NULL DEFAULT '20' COMMENT '心语可加积分余额',
  `salt` varchar(255) NOT NULL,
  `reg_date` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `users_religion` (`religion`) USING BTREE,
  KEY `user_star_sign` (`star_sign`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`religion`) REFERENCES `religions` (`rlid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`star_sign`) REFERENCES `star_signs` (`ssid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'13279347875','PureDark','5a241c139d013c161607029511a3afab8e8e157a','2c34a3eda71f0ae8fdb40b2709900956','PureDark',1,'西安交通大学',7,2,'liangzhonghua@163.com','没有守望先锋玩我要死啦！',3,0,4,31,30,20,'oouz','2016-05-02 21:12:54','2016-06-22 09:17:05'),(2,'13279347876','TestUser','65c9c76d370ab1c78e4bc4f645357f6a1989f6dd',NULL,'测试用户1',1,NULL,NULL,NULL,NULL,NULL,0,1,1,11,28,15,'gaup','2016-05-14 02:47:07',NULL),(3,'18392886374','test','557c05496423bb486aa002ac232c6dc39f2ba25a',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,1,0,30,20,'rbuc','2016-05-16 09:01:18',NULL),(4,'18392886373','test001','38f1e8510c6bc265704c54dd521d45340a962317','16c3a4794c673e705574c87bee698a52','美好生活',0,'陕西西安',1,4,'kkk@zzz.com','美好生活，自己创造！',1,1,1,25,29,20,'mcui','2016-05-16 10:41:47','2016-06-27 23:57:08'),(5,'18607409721','kevin','88883e53e24b81737c411f5a90da5b2ded54c2dc','d45cd305146a73e93f7bca200786abc6','华丽丽的～',0,'中国',1,4,'Kevin@qq.com','可爱的世界，可爱的你我',0,1,1,4,28,20,'kjlm','2016-05-17 19:09:43','2016-06-10 23:13:59'),(6,'18623011217','goodday','cd5ce26bd47b869da5518ba68f29e7382919ce76','259540bb39ccbf7504984db761e7beea','心上阳光',1,NULL,NULL,NULL,NULL,NULL,1,3,1,17,29,20,'zkir','2016-05-20 15:23:08','2016-06-03 07:04:40'),(7,'18983944359','liu772992382','1681ba4d54164782cd4f011c89de8834563bff62','2d40064ac38a869f937cdd6182defb4f','I\'mgru',1,'',1,NULL,'772992382@qq.com','',3,1,1,8,29,15,'ycdj','2016-05-20 16:32:01','2016-06-01 13:54:43'),(8,'18875240418','LK(0_0)','478b1efc665cd309ba6642097bf2063613c62ab8','f9cfffa07902c2cab21250cd0c182dc4','LK_Begin',0,'',1,NULL,'','',3,2,1,16,29,15,'vxdh','2016-05-20 19:43:59','2016-06-26 16:35:46'),(9,'18716482312','shangyi11','9af4efe6ecb7039f2b65b1ec44de7a8a4031ff2a','6c0e616171ae7db17d959e6a6ebd88e8','3333',0,'',2,NULL,'465184318@qq.com','',1,1,1,3,29,20,'evwh','2016-05-20 22:50:37','2016-06-01 16:22:25'),(10,'13167959540','dayunnn','47d757efd68ef39ca8a504608e8af8f623495a34','ea54305bf09b17bd517fafd0b2e5de18','dayunnn',2,'',1,NULL,'zkxiaoyun@live.com','就是小美女嘻嘻\n',1,1,3,17,29,20,'gsdi','2016-05-20 23:31:25','2016-06-09 16:32:21'),(11,'18628349752','leiqinqin','ce740946a3eb6938b84a21e996d898df22db1166','7ae8a10967a0dea59650314f26f6ae1a','做好事 爱胡歌',0,'',1,NULL,'','',1,1,1,3,29,20,'wlxx','2016-05-21 21:38:18','2016-06-02 15:09:24'),(12,'18523116027','123456789','4906b6d0106d393db3ff6e648409c3fd9349cab4','b5194d5db6b6af9e9ee90db5a95bc3d0','holmev',2,'湘北高中',1,1,'15998968659gsv','美旅老师',3,1,1,3,29,20,'gluv','2016-05-22 00:00:44','2016-06-04 02:46:17'),(13,'13148423446','zhe3333','923feaf8b4c88d1cc7c67d33b2ada63113252e29','9d3298b42840edb074429ab5e4ee1e01','zhey',0,'重庆市',7,8,'1312139804@qq.com','zhe的个性签名',1,1,1,6,29,20,'cjyg','2016-05-22 23:01:34','2016-06-27 21:36:51'),(14,'13167911961','顶天立地小混蛋001','2b0967cf8cbb6a3354e386c63c7476e8132cb0b6','77d2ee2ba45a7fe5b2f093adf8cebefd','顶天立地小混蛋',0,'',1,2,'','一个美丽的人间卧底',1,1,1,21,29,15,'eggk','2016-05-25 12:52:56','2016-06-25 17:51:20'),(15,'15998968659','15998968659','59c23ca580fd3ce2dbcc6c0bf817dda9d0ecbf4b',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,1,0,30,20,'sxjy','2016-05-25 18:22:58','2016-05-25 18:22:58'),(16,'15334526929','15334526929','4f9e1e6b162b84058284bb9498cf1bc2419c3449',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,1,0,30,20,'khyj','2016-05-27 10:46:14','2016-05-27 10:46:14'),(17,'15812705302','咕噜咕噜小魔仙','a21d73fef1dd6c6a3e36fc6bd8e4fb74491f5406','f5201c1a06841f6ce3af8616e4fcc28e','咕噜咕噜小魔仙',2,NULL,NULL,NULL,NULL,NULL,0,0,1,0,30,20,'vzzb','2016-05-30 23:13:02','2016-06-15 21:49:32'),(18,'13290036032','512236062','392eef66ace997fc9b357bcbc312b25846403516','f664a31670634f0b1c9329418e6d75ee','走走走走走',0,'重庆',1,3,'','\n',1,0,1,0,30,20,'gcfw','2016-05-31 23:21:32','2016-06-02 16:37:06'),(19,'18983234516','巴啦啦魔仙大变身','329596dbc31bc16a11fa74a3d4efc983f832efb2','649681420ad935b7947890f0e6edd5f7','巴啦啦魔仙全身变',2,NULL,NULL,NULL,NULL,NULL,0,1,1,0,30,20,'fhkf','2016-05-31 23:35:08','2016-06-02 15:51:28'),(20,'15523901869','375337851','125ebd47e63ae7ffa6016f07f9020009d1b2f1a4','53362ac0237fe7d97a87e000473f8f1f','rockaito',1,NULL,NULL,NULL,NULL,NULL,1,0,1,3,30,20,'rxpb','2016-05-31 23:43:04','2016-06-27 13:10:47'),(21,'18871811103','1834066750','1a0d317c825cf219819fd13f9087ec332a868567','8a841de39203a120ad1387cbf531cd6e','觅路',0,NULL,NULL,NULL,NULL,NULL,1,0,1,5,30,15,'zsub','2016-06-01 00:02:28','2016-06-01 00:06:15'),(22,'15347055567','Victam555','7346170a7b7877522dc80678f41329571bd6c133','4a397b7a89e8b3ff45f615afe19608dc','Victam',1,NULL,NULL,NULL,NULL,NULL,1,1,1,3,29,20,'ttne','2016-06-01 09:01:58','2016-06-01 09:47:44'),(23,'17708336473','17708336473','20cce5d11d552a4fbd60573c9c526697bf9d965b','24f7c58768c305af4dde62206c607bcd','刘刘123',1,'重庆',1,NULL,'','',5,1,1,3,29,20,'ddrw','2016-06-01 10:02:57','2016-06-01 10:02:58'),(24,'18983425073','大脸不爱吃鱼','7cf20e9d6636fb3af7e09bb9172591f6836f417a',NULL,'大脸',1,NULL,NULL,NULL,NULL,NULL,1,1,1,3,29,20,'njka','2016-06-01 11:08:00','2016-06-01 11:08:00'),(25,'13550069889','KevinChu','fa2285ece9cfb297a6177104d54df1b553299729',NULL,'Kevin',1,NULL,NULL,NULL,NULL,NULL,3,1,1,8,29,15,'lnyr','2016-06-01 12:57:57','2016-06-01 13:59:13'),(26,'13340210412','rrr木易、未安','598e1afedb64cf690794c457dc97d5649464b33a','3747b5d0abaef4b397f42a2e8b5eb1ec','L.lawliet',1,NULL,NULL,NULL,NULL,NULL,1,1,1,8,29,15,'bsga','2016-06-01 13:04:48','2016-06-01 14:07:49'),(27,'15310094749','快乐齐天n1','f2fb468dad189bcbd50179ff302d375af0d9b165',NULL,'齐天n1',1,NULL,NULL,NULL,NULL,NULL,3,1,1,8,29,15,'judi','2016-06-01 13:06:56','2016-06-01 14:01:58'),(28,'18603838727','Despicable_L','1675ed99ddde9794eceb50d5a6d904df3fd03fef','a2d58539dce3ae674f8ee36286cbc914','Despicable_L',1,NULL,NULL,NULL,NULL,NULL,1,1,1,8,29,15,'fjcb','2016-06-01 13:15:18','2016-06-01 14:09:13'),(29,'15215293401','丰宇宸123','4b18a2e8415349644293dc889fe7568818d2b8b9','b8f512957c329e4719adad497ce83b78','我也不知道',1,'',1,NULL,'2274573525@qq.com','你们就说我帅不帅',1,0,1,3,30,20,'lzli','2016-06-01 13:38:58','2016-06-23 20:52:28'),(30,'13148438415','niannian','1174c0dda601852ad248a07ae504d34680970dce','bbcb5988d986c8b7214c6aac88011b28','念念不忘',2,'',2,NULL,'18716482312@163.com','',5,1,1,3,29,20,'vonr','2016-06-01 16:14:27','2016-06-01 16:47:56'),(31,'18523541724','yueyue','8991bb07054ff6134023b55218401cea8e46e317','eaf23a2bf39fca4f8e14743f12b30fee','yueyue',2,'',3,4,'46488@qq.com','',5,1,1,3,29,20,'huun','2016-06-01 16:54:17','2016-06-01 17:00:25'),(32,'18515259995','木隶之这个名字不够长啊','2578f14f387a8ef73de6e59a3e40b9f073a002',NULL,'木隶之',1,NULL,NULL,NULL,NULL,NULL,1,1,1,3,29,20,'ucbu','2016-06-01 17:39:29','2016-06-01 17:41:42'),(33,'13538126705','韦韦韦秋秋球','a8d6e54e5a2975b7ec588b2adab1ae9a1710e1eb','f7589f92935b19c170b1801138eace44','weiweiwei',2,NULL,NULL,NULL,NULL,NULL,0,1,1,3,30,20,'tgpg','2016-06-01 17:44:22','2016-06-02 15:52:48'),(34,'13622111201','猫伯爵养的兔子','295940fc671eeede145ac6629a6a8797a5ca46db',NULL,'安安',2,NULL,NULL,NULL,NULL,NULL,0,1,1,3,29,20,'ncvr','2016-06-01 19:25:40','2016-06-01 19:26:57'),(35,'18223257044','小耳朵1012','58e397cfa6c3b084fc19c2d7fb392c2aa483c484','e8a286f8f82cd9a32472341498137eff','小耳朵',1,'重庆',1,NULL,'515236931@qq.com','旭旭',1,0,1,3,30,20,'dixw','2016-06-02 11:46:08','2016-06-15 23:21:13'),(36,'18981825016','绕绕绕绕晕晕晕','7c593a52dd46e994d8d70e87bc90b22bc64aaf50',NULL,'雷芹芹的好闺蜜',0,NULL,NULL,NULL,NULL,NULL,1,0,1,9,30,20,'bqpj','2016-06-02 15:16:38','2016-06-25 09:41:56'),(37,'18323833429','我要做好事！','3a12861f068e36ae21b5ecb947e8000eb17a8d8','b2ac8427fe303c49a1ce67d0adc446bf','我要做好事！',0,NULL,NULL,NULL,NULL,NULL,1,1,1,3,29,20,'asqa','2016-06-02 15:20:05','2016-06-02 15:20:06'),(38,'13637865080','cqdx2014','20a619270a964f96f143e797919487697d8fe5b8',NULL,'我最帅',1,NULL,NULL,NULL,NULL,NULL,1,1,1,3,29,20,'fkmy','2016-06-02 15:23:22','2016-06-02 15:25:54'),(39,'13594215210','我是宝宝23333','b3156b8e215ba757015daacf4032b8bc68b5aefe',NULL,'我是宝宝',0,NULL,NULL,NULL,NULL,NULL,1,1,1,4,28,20,'ikcx','2016-06-02 15:28:20','2016-06-02 15:28:22'),(40,'18108390406','250520qaz','db11b596f8b4fe9c0d89bf1a777b93d970de4885',NULL,'善心善意',2,NULL,NULL,NULL,NULL,NULL,1,1,1,3,29,20,'qxgl','2016-06-02 15:35:26','2016-06-02 15:39:05'),(41,'18983096791','cqcq123','2d7a32ff9db7f9563f551a2ee817c8535cd68bb8',NULL,'汤药粥最帅',1,NULL,NULL,NULL,NULL,NULL,1,1,1,3,29,20,'gyye','2016-06-02 15:43:24','2016-06-02 15:43:24'),(42,'18990361672','hlz123','269ce5a4b38f99da40842dc9881c0c09d7fddd5',NULL,'黄灵芝233',0,NULL,NULL,NULL,NULL,NULL,1,1,1,3,29,20,'wxha','2016-06-02 15:49:52','2016-06-02 15:52:52'),(43,'15291692291','kevin001','b4dab4358d1164b2c5863e67362db11eba89b122',NULL,'kevin',0,NULL,NULL,NULL,NULL,NULL,1,0,1,3,30,20,'tdnl','2016-06-05 21:27:58','2016-06-09 22:52:33'),(44,'18428368109','超级大帆大大','1d9ed5efa9a427b8af065df1ac1f91c59e7a7f87',NULL,'大帆',1,NULL,NULL,NULL,NULL,NULL,1,0,1,0,30,20,'ugzt','2016-06-07 18:37:13','2016-06-07 18:37:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `detail` text,
  `type` tinyint(4) NOT NULL COMMENT '0:Android 1:IOS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (1,'1.0.0','http://test','Android初版',0),(2,'1.0.0',NULL,'IOS初版',1);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-28 14:24:02
