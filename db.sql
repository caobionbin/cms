/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.15 : Database - orcl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`orcl` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `orcl`;

/*Table structure for table `menutbl` */

DROP TABLE IF EXISTS `menutbl`;

CREATE TABLE `menutbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeid` (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `menutbl` */

insert  into `menutbl`(`id`,`name`,`pic`,`price`,`remark`,`typeid`) values (1,'鱼香肉丝','6c64970c-c163-47ad-8fcb-d0055e480bccaaa.PNG',20,'鱼香肉丝是一道人人喜欢的家常菜，有些厨房新手做出的味道总是没有饭店的好吃，不过不要紧，现在超市有卖鱼香肉丝的调料包了。只用一包调料就可以做出一道美味经典的川菜，厨房新手们不妨试试哟',1),(6,'可乐鸡翅','c7db3c1d-36e4-4646-a674-cdf4aa05cedeEducational_04.png',25,'可乐鸡翅是一道人人喜欢的家常菜，有些厨房新手做出的味道总是没有饭店的好吃，不过不要紧，现在超市有卖鱼香肉丝的调料包了。只用一包调料就可以做出一道美味经典的川菜，厨房新手们不妨试试哟',1),(7,'北京烤鸭','bjky.jpg',40,'北京烤鸭是一道人人喜欢的家常菜，有些厨房新手做出的味道总是没有饭店的好吃，不过不要紧，现在超市有卖鱼香肉丝的调料包了。只用一包调料就可以做出一道美味经典的川菜，厨房新手们不妨试试哟',1),(8,'耗油虾球','hyxq.jpg',35,'耗油虾球是一道人人喜欢的家常菜，有些厨房新手做出的味道总是没有饭店的好吃，不过不要紧，现在超市有卖鱼香肉丝的调料包了。只用一包调料就可以做出一道美味经典的川菜，厨房新手们不妨试试哟',1),(9,'1','dda82505-e966-4a8b-8a19-e0abe2d96363.jpg',1,'1',1),(10,'新菜名','5faa7237-d425-4b0d-b12b-ab2dc148740faaa.PNG',1,'1',1),(11,'红米','ff5f8860-9a3c-4453-aabe-64c2e05e980f.jpg',799,'玲丽小弟抢红米啊！',3),(30,'wr','d2bd4465-50d5-49dc-bc3c-f08522228a8daa.PNG',324,'dfdsf',3),(34,'老头才','6ba06152-fd1b-48e8-9540-ecbc2043e159曹彬彬.jpg',35,'353543',1),(35,'热特绿色的','a54bd646-81d7-48d8-9e50-a827fbc1e503eee.jpg',2,'34342',1),(36,'666','7755b12d-5208-4c30-bc5d-5bdcd6940f60blank.jpg',25,'p[p[ppp',3);

/*Table structure for table `menutypetbl` */

DROP TABLE IF EXISTS `menutypetbl`;

CREATE TABLE `menutypetbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `menutypetbl` */

insert  into `menutypetbl`(`id`,`name`) values (1,'热菜'),(2,'凉菜'),(3,'主食'),(4,'甜品'),(5,'汤'),(6,'开胃');

/*Table structure for table `orderdetailtbl` */

DROP TABLE IF EXISTS `orderdetailtbl`;

CREATE TABLE `orderdetailtbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menuId` (`menuId`),
  KEY `orderId` (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

/*Data for the table `orderdetailtbl` */

insert  into `orderdetailtbl`(`id`,`num`,`remark`,`menuId`,`orderId`) values (7,2,NULL,3,15),(8,1,NULL,3,15),(12,1,NULL,2,13),(13,1,NULL,3,13),(14,1,NULL,4,13),(15,2,NULL,3,15),(16,1,NULL,3,15),(20,1,NULL,2,13),(21,1,NULL,3,13),(22,1,NULL,4,13),(36,1,NULL,6,84),(37,1,NULL,8,84),(38,1,NULL,1,85),(39,1,NULL,7,85),(40,1,NULL,7,86),(41,1,NULL,1,81),(43,1,NULL,6,87),(44,1,NULL,6,88);

/*Table structure for table `ordertbl` */

DROP TABLE IF EXISTS `ordertbl`;

CREATE TABLE `ordertbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpay` int(11) DEFAULT NULL,
  `ordertime` varchar(50) DEFAULT NULL,
  `personnum` int(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `tableid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

/*Data for the table `ordertbl` */

insert  into `ordertbl`(`id`,`idpay`,`ordertime`,`personnum`,`remark`,`userid`,`tableid`) values (13,0,'2016-08-19 10:08:50',10,'dsgesgfgs',1,7),(15,0,'2013-9-24 10:33:56',10,'无',1,NULL),(17,0,'2013-9-24 10:33:56',10,'无',1,NULL),(20,1,'2013-9-24 10:33:56',10,'无',1,NULL),(21,0,'2013-9-24 10:33:56',10,'无',1,NULL),(22,1,'2013-9-24 10:33:56',10,'无',1,NULL),(23,0,'2013-9-24 10:33:56',10,'无',1,NULL),(24,1,'2013-9-24 10:33:56',10,'无',1,NULL),(25,0,'2013-9-24 10:33:56',10,'无',1,NULL),(26,1,'2013-9-24 10:33:56',10,'无',1,NULL),(27,0,'2013-9-24 10:33:56',10,'无',1,NULL),(28,1,'2013-9-24 10:33:56',10,'无',1,NULL),(29,0,'2013-9-24 10:33:56',10,'无',1,NULL),(30,1,'2013-9-24 10:33:56',10,'无',1,NULL),(31,0,'2013-9-24 10:33:56',10,'无',1,NULL),(32,1,'2013-9-24 10:33:56',10,'无',1,NULL),(33,0,'2013-9-24 10:33:56',10,'无',1,NULL),(34,1,'2013-9-24 10:33:56',10,'无',1,NULL),(35,0,'2013-9-24 10:33:56',10,'无',1,NULL),(36,1,'2013-9-24 10:33:56',10,'无',1,NULL),(37,0,'2013-9-24 10:33:56',10,'无',1,NULL),(38,1,'2013-9-24 10:33:56',10,'无',1,NULL),(39,0,'2013-9-24 10:33:56',10,'无',1,NULL),(41,0,'2013-9-24 10:33:56',10,'无',1,NULL),(42,1,'2013-9-24 10:33:56',10,'无',1,NULL),(43,0,'2013-9-24 10:33:56',10,'无',1,NULL),(44,1,'2013-9-24 10:33:56',10,'无',1,NULL),(45,0,'2013-9-24 10:33:56',10,'无',1,NULL),(46,1,'2013-9-24 10:33:56',10,'无',1,NULL),(47,0,'2013-9-24 10:33:56',10,'无',1,NULL),(48,1,'2013-9-24 10:33:56',10,'无',1,NULL),(49,0,'2013-9-24 10:33:56',10,'无',1,NULL),(50,1,'2013-9-24 10:33:56',10,'无',1,NULL),(51,0,'2013-9-24 10:33:56',10,'无',1,NULL),(52,1,'2013-9-24 10:33:56',10,'无',1,NULL),(53,0,'2013-9-24 10:33:56',10,'无',1,NULL),(54,1,'2013-9-24 10:33:56',10,'无',1,NULL),(55,0,'2013-9-24 10:33:56',10,'无',1,NULL),(56,1,'2013-9-24 10:33:56',10,'无',1,NULL),(57,0,'2013-9-24 10:33:56',10,'无',1,NULL),(58,1,'2013-9-24 10:33:56',10,'无',1,NULL),(59,0,'2013-9-24 10:33:56',10,'无',1,NULL),(60,1,'2013-9-24 10:33:56',10,'无',1,NULL),(61,0,'2013-9-24 10:33:56',10,'无',1,NULL),(62,1,'2013-9-24 10:33:56',10,'无',1,NULL),(63,0,'2013-9-24 10:33:56',10,'无',1,NULL),(64,1,'2013-9-24 10:33:56',10,'无',1,NULL),(65,0,'2013-9-24 10:33:56',10,'无',1,NULL),(66,1,'2013-9-24 10:33:56',10,'无',1,NULL),(67,0,'2013-9-24 10:33:56',10,'无',1,NULL),(68,1,'2013-9-24 10:33:56',10,'无',1,NULL),(69,0,'2013-9-24 10:33:56',10,'无',1,NULL),(70,1,'2013-9-24 10:33:56',10,'无',1,NULL),(71,0,'2013-9-24 10:33:56',10,'无',1,NULL),(72,1,'2013-9-24 10:33:56',10,'无',1,NULL),(73,0,'2013-9-24 10:33:56',10,'无',1,NULL),(74,1,'2013-9-24 10:33:56',10,'无',1,NULL),(75,0,'2013-9-24 10:33:56',10,'无',1,NULL),(76,1,'2013-9-24 10:33:56',10,'无',1,NULL),(77,0,'2013-9-24 10:33:56',10,'无',1,NULL),(78,1,'2013-9-24 10:33:56',10,'无',1,NULL),(79,0,'2013-9-24 10:33:56',10,'无',1,NULL),(80,1,'2013-9-24 10:33:56',10,'无',1,NULL),(81,0,'2013-9-24 10:33:56',10,'无',1,1),(82,1,'2013-9-24 10:33:56',10,'无',1,NULL),(83,0,'2013-9-24 10:33:56',10,'无',1,NULL),(84,0,'2016-11-30 03:11:47',2,'呃呃呃俄武器',NULL,1),(85,0,'2016-11-30 03:11:11',4,'33333',NULL,1),(86,0,'2016-11-30 03:11:31',6,'444',NULL,1),(87,0,'',8,'999',NULL,1),(88,0,'2016-11-30 04:11:37',5,'哦哦哦',NULL,1);

/*Table structure for table `reportdetail` */

DROP TABLE IF EXISTS `reportdetail`;

CREATE TABLE `reportdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reportname` varchar(50) DEFAULT NULL,
  `reportinfo` varchar(50) DEFAULT NULL,
  `reportType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `reportdetail` */

insert  into `reportdetail`(`id`,`reportname`,`reportinfo`,`reportType`) values (1,'测试','测试','tt'),(2,'测试','测试','tt'),(3,'测试','测试','tt'),(4,'测试','测试','tt'),(5,'测试','测试','yt'),(6,'测试','测试','yt'),(7,'测试','测试','yt'),(8,'测试','测试','yt'),(9,'测试','测试','mt'),(10,'测试','测试','mt'),(11,'测试','测试','mt'),(12,'测试','测试','mt'),(13,'测试','测试','tc'),(14,'测试','测试','tc'),(15,'测试','测试','tc'),(16,'测试','测试','tc');

/*Table structure for table `resourcetbl` */

DROP TABLE IF EXISTS `resourcetbl`;

CREATE TABLE `resourcetbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `idname` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `resourcetbl` */

insert  into `resourcetbl`(`id`,`name`,`url`,`idname`,`parentId`) values (1,'个人中心','/webtest/userBean/getOneUser','userin',NULL),(2,'菜单管理','/webtest/menus/getMenus','menuin',NULL),(3,'餐桌管理','/webtest/tables/getTables','tablein',NULL),(4,'订单管理','/webtest/orders/getOrders','orderin',NULL),(5,'测试',NULL,NULL,1),(6,'测试',NULL,NULL,1),(7,'测试',NULL,NULL,2),(8,'测试',NULL,NULL,3),(9,'测试',NULL,NULL,4),(10,'测试',NULL,NULL,1),(11,'测试',NULL,NULL,2),(12,'测试',NULL,NULL,3);

/*Table structure for table `tabletbl` */

DROP TABLE IF EXISTS `tabletbl`;

CREATE TABLE `tabletbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ord_id` int(11) DEFAULT NULL,
  `Num` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

/*Data for the table `tabletbl` */

insert  into `tabletbl`(`id`,`ord_id`,`Num`,`flag`,`DESCRIPTION`) values (1,0,10,0,'-'),(2,0,10,1,'无'),(3,0,10,0,'无'),(4,0,15,0,'无'),(5,0,15,0,'无'),(6,0,15,1,'无'),(7,0,7,1,'无'),(20,0,7,1,'无'),(21,0,7,1,'无'),(22,0,7,1,'无'),(23,0,7,1,'无'),(24,0,7,1,'无'),(25,0,7,1,'无'),(26,0,7,1,'无'),(27,0,7,1,'无'),(28,0,7,1,'无'),(29,0,7,1,'无'),(30,0,7,1,'无'),(31,0,7,1,'无'),(32,0,7,1,'无'),(33,0,7,1,'无'),(34,0,7,1,'无'),(35,0,7,1,'无'),(36,0,7,1,'无'),(37,0,7,1,'无'),(38,0,7,1,'无'),(39,0,7,1,'无'),(40,0,7,1,'无'),(41,0,7,1,'无'),(42,0,7,1,'无'),(43,0,7,1,'无'),(44,0,7,1,'无'),(45,0,7,1,'无'),(46,0,7,1,'无'),(47,0,7,1,'无'),(48,0,7,1,'无'),(49,0,7,1,'无'),(50,0,7,1,'无'),(51,0,7,1,'无'),(52,0,7,1,'无'),(53,0,7,1,'无测试时测试'),(54,0,7,1,'无'),(55,0,7,1,'无'),(56,0,7,1,'无'),(57,0,7,1,'无'),(58,0,7,1,'无'),(59,0,7,1,'无'),(60,0,7,1,'无'),(61,0,7,1,'无'),(62,0,7,1,'无'),(63,0,7,1,'无'),(64,0,7,1,'无'),(65,0,7,1,'无'),(66,0,7,1,'无'),(67,0,7,1,'无'),(68,0,7,1,'无'),(69,0,7,1,'无'),(70,0,7,1,'无'),(71,0,7,1,'无'),(72,0,7,1,'无'),(73,0,7,1,'无'),(74,0,7,1,'无'),(75,0,7,1,'无'),(76,0,7,1,'无'),(77,0,7,1,'无'),(78,0,7,1,'无'),(79,0,7,1,'无'),(80,0,7,1,'无'),(81,0,7,1,'无'),(82,0,7,1,'无'),(83,0,7,1,'无'),(84,0,7,1,'无'),(85,0,7,1,'无'),(86,0,7,1,'无'),(87,0,7,1,'无'),(88,0,7,1,'无'),(89,0,7,1,'无'),(90,0,7,1,'无'),(91,0,7,1,'无'),(92,0,7,1,'无'),(93,0,7,1,'无'),(94,0,7,1,'无'),(95,0,7,1,'无'),(96,0,7,1,'无'),(97,0,7,1,'无'),(98,0,7,1,'无'),(99,0,7,1,'无'),(100,0,7,1,'无'),(101,0,7,1,'无'),(102,0,7,1,'无'),(110,NULL,NULL,0,NULL),(111,888,4,1,'2333232');

/*Table structure for table `user_res` */

DROP TABLE IF EXISTS `user_res`;

CREATE TABLE `user_res` (
  `resid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`resid`,`userid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_res` */

insert  into `user_res`(`resid`,`userid`) values (1,1),(2,1),(3,1),(4,1);

/*Table structure for table `usertbl` */

DROP TABLE IF EXISTS `usertbl`;

CREATE TABLE `usertbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `permission` int(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `usertbl` */

insert  into `usertbl`(`id`,`username`,`password`,`name`,`gender`,`permission`,`remark`) values (1,'caobinbin','110120','曹彬彬','女',0,'http://www.52itstyle.com'),(2,'小明','123','xiaoming','男',0,'http://www.52itstyle.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
