-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: boke
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `tp_admin`
--

DROP TABLE IF EXISTS `tp_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_admin` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '管理员名称',
  `password` char(32) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_admin`
--

LOCK TABLES `tp_admin` WRITE;
/*!40000 ALTER TABLE `tp_admin` DISABLE KEYS */;
INSERT INTO `tp_admin` VALUES (2,'admin','21232f297a57a5a743894a0e4a801fc3'),(20,'admin111','e10adc3949ba59abbe56e057f20f883e'),(19,'admin124','123456'),(18,'admin123','123456');
/*!40000 ALTER TABLE `tp_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_article`
--

DROP TABLE IF EXISTS `tp_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_article` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(60) NOT NULL COMMENT '文章标题',
  `author` varchar(30) NOT NULL COMMENT '文章作者',
  `desc` varchar(255) NOT NULL COMMENT '文章简介',
  `keywords` varchar(255) NOT NULL COMMENT '文章关键词',
  `content` text NOT NULL COMMENT '文章内容',
  `pic` varchar(100) NOT NULL COMMENT '缩略图',
  `click` int(10) NOT NULL DEFAULT '0' COMMENT '点击数',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不推荐 1：推荐',
  `time` int(10) NOT NULL COMMENT '发布时间',
  `cateid` mediumint(9) NOT NULL COMMENT '所属栏目',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_article`
--

LOCK TABLES `tp_article` WRITE;
/*!40000 ALTER TABLE `tp_article` DISABLE KEYS */;
INSERT INTO `tp_article` VALUES (1,'测试1','2','4','测试,文章','<p>5<br/></p>','',12,0,1475145866,1),(5,'测试文章3','what','烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。 ','测试,文章','<p>烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。</p>','/uploads/20161002\\753fd85d16974754dcf271d37d072d1e.png',92,1,1475417556,1),(4,'测试文章2','la','描述','童年,测试','<p>222<br/></p>','/uploads/20160930\\fd338f8a40bc432d5febf54b0be24049.jpg',6,1,1475147467,3),(6,'测试文章4','la','公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！ ','la,Tp5','<p>公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！</p>','/uploads/20161002\\9fc03900ff44f8c7679ae0edfd673d67.png',10,0,1475417603,1),(7,'老爸过生日','Tp5','父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ ','老爸,生日','<p>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ <br/>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ <br/>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ <br/>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ <br/>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ <br/></p>','/uploads/20161002\\83c90d060801999ca5b497348f7771a9.png',16,0,1475417731,1);
/*!40000 ALTER TABLE `tp_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_cate`
--

DROP TABLE IF EXISTS `tp_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_cate` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `catename` varchar(30) NOT NULL COMMENT '栏目名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_cate`
--

LOCK TABLES `tp_cate` WRITE;
/*!40000 ALTER TABLE `tp_cate` DISABLE KEYS */;
INSERT INTO `tp_cate` VALUES (1,'美食'),(2,'健身'),(3,'养生'),(4,'服装'),(6,'生活'),(7,'娱乐'),(8,'婚嫁'),(9,'美容');
/*!40000 ALTER TABLE `tp_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_links`
--

DROP TABLE IF EXISTS `tp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_links` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `title` varchar(30) NOT NULL COMMENT '链接标题',
  `url` varchar(60) NOT NULL COMMENT '链接地址',
  `desc` varchar(255) NOT NULL COMMENT '链接说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_links`
--

LOCK TABLES `tp_links` WRITE;
/*!40000 ALTER TABLE `tp_links` DISABLE KEYS */;
INSERT INTO `tp_links` VALUES (1,'百度','http://www.baidu.com','');
/*!40000 ALTER TABLE `tp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_tags`
--

DROP TABLE IF EXISTS `tp_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_tags` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT 'tag标签id',
  `tagname` varchar(30) NOT NULL COMMENT 'tag标签名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_tags`
--

LOCK TABLES `tp_tags` WRITE;
/*!40000 ALTER TABLE `tp_tags` DISABLE KEYS */;
INSERT INTO `tp_tags` VALUES (1,'趣事'),(2,'奇闻2'),(4,'测试');
/*!40000 ALTER TABLE `tp_tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-19 20:18:36
