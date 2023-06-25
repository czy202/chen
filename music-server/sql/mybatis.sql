/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.23 : Database - mybatis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mybatis` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mybatis`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int NOT NULL,
  `position` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`id`,`name`,`age`,`position`) values (1,'张三',20,'员工  '),(2,'小四',23,'经理'),(3,'王五',35,'经理'),(4,'赵六',55,'总裁');

/*Table structure for table `t_customer` */

DROP TABLE IF EXISTS `t_customer`;

CREATE TABLE `t_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `jobs` varchar(50) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_customer` */

insert  into `t_customer`(`id`,`username`,`jobs`,`phone`) values (1,'joy','teacher','13733333333'),(2,'jack','teacher','13522222222'),(3,'tom','worker','15111111111');

/*Table structure for table `tb_book` */

DROP TABLE IF EXISTS `tb_book`;

CREATE TABLE `tb_book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bookName` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_book` */

insert  into `tb_book`(`id`,`bookName`,`price`,`author`) values (1,'Java基础入门',45,'传智播客高教产品研发部'),(2,'Java基础案例教程',48,'黑马程序员'),(3,'JavaWeb程序设计任务教\n程',50,'黑马程序员');

/*Table structure for table `tb_idcard` */

DROP TABLE IF EXISTS `tb_idcard`;

CREATE TABLE `tb_idcard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CODE` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_idcard` */

insert  into `tb_idcard`(`id`,`CODE`) values (1,'152221198711020624'),(2,'152201199008150317');

/*Table structure for table `tb_orders` */

DROP TABLE IF EXISTS `tb_orders`;

CREATE TABLE `tb_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(32) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tb_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_orders` */

insert  into `tb_orders`(`id`,`number`,`user_id`) values (1,'1000011',1),(2,'1000012',1),(3,'1000013',2);

/*Table structure for table `tb_ordersitem` */

DROP TABLE IF EXISTS `tb_ordersitem`;

CREATE TABLE `tb_ordersitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orders_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_id` (`orders_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `tb_ordersitem_ibfk_1` FOREIGN KEY (`orders_id`) REFERENCES `tb_orders` (`id`),
  CONSTRAINT `tb_ordersitem_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_ordersitem` */

insert  into `tb_ordersitem`(`id`,`orders_id`,`product_id`) values (1,1,1),(2,1,3),(3,3,3);

/*Table structure for table `tb_person` */

DROP TABLE IF EXISTS `tb_person`;

CREATE TABLE `tb_person` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `card_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_id` (`card_id`),
  CONSTRAINT `tb_person_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `tb_idcard` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_person` */

insert  into `tb_person`(`id`,`name`,`age`,`sex`,`card_id`) values (1,'Rose',22,'女',1),(2,'jack',23,'男',2);

/*Table structure for table `tb_product` */

DROP TABLE IF EXISTS `tb_product`;

CREATE TABLE `tb_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(32) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_product` */

insert  into `tb_product`(`id`,`NAME`,`price`) values (1,'Java基础入门',44.5),(2,'Java Web程序开发入门',38.5),(3,'SSM框架整合实战',50);

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`username`,`address`) values (1,'小明','北京'),(2,'李华','上海'),(3,'李刚','上海');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `uage` int NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`uid`,`uname`,`uage`) values (1,'张三',20),(2,'李四',18);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
