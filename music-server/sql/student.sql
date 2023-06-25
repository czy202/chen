/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.23 : Database - student
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`student` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `student`;

/*Table structure for table `admin_login_k` */

DROP TABLE IF EXISTS `admin_login_k`;

CREATE TABLE `admin_login_k` (
  `admin_id` char(20) NOT NULL,
  `admin_pass` char(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin_login_k` */

insert  into `admin_login_k`(`admin_id`,`admin_pass`) values ('admin','admin');

/*Table structure for table `stu_login_k` */

DROP TABLE IF EXISTS `stu_login_k`;

CREATE TABLE `stu_login_k` (
  `stu_id` char(20) NOT NULL,
  `stu_pass` char(20) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_login_k` */

insert  into `stu_login_k`(`stu_id`,`stu_pass`) values ('182011011','123456'),('182085211','123456'),('182085212','123456'),('182085215','123456'),('206546845','123456'),('209045599','123456'),('209055599','123456'),('209084163','123456'),('209114122','123456');

/*Table structure for table `student_k` */

DROP TABLE IF EXISTS `student_k`;

CREATE TABLE `student_k` (
  `id` char(20) NOT NULL,
  `name` char(20) DEFAULT NULL,
  `gender` char(5) DEFAULT NULL,
  `age` char(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student_k` */

insert  into `student_k`(`id`,`name`,`gender`,`age`) values ('182011011','派大星','男','23'),('182085211','杰瑞','男','21'),('182085212','鲍勃','男','24'),('182085215','汤姆','男','23'),('206546845','张浩','男','21'),('209045599','章鱼哥','男','38'),('209055599','蟹阿金','男','42'),('209084163','珊迪','女','29'),('209114122','徐志强','男','21');

/*Table structure for table `t_course` */

DROP TABLE IF EXISTS `t_course`;

CREATE TABLE `t_course` (
  `SNO` char(255) NOT NULL,
  `COURSE` char(255) DEFAULT NULL,
  `CREDIT` char(255) DEFAULT NULL,
  `GRADE` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_course` */

insert  into `t_course`(`SNO`,`COURSE`,`CREDIT`,`GRADE`) values ('08300205','程序设计','4','88'),('08300205','数据库','2.5','90'),('08300205','python','5','92'),('08080929','数据库','2.5','85'),('09350124','数据库','2.5','92'),('09620233','数据库','2.5','80'),('09300218','数据库','2.5','78'),('09010122','数据库','2.5','87'),('08080929','程序设计','4','86'),('09010122','程序设计','4','80'),('08300516','程序设计','4','76');

/*Table structure for table `t_st` */

DROP TABLE IF EXISTS `t_st`;

CREATE TABLE `t_st` (
  `SNO` char(11) NOT NULL,
  `SNAME` char(255) DEFAULT NULL,
  `SSEX` char(255) DEFAULT NULL,
  `AGE` char(255) DEFAULT NULL,
  `DEPT` char(255) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_st` */

insert  into `t_st`(`SNO`,`SNAME`,`SSEX`,`AGE`,`DEPT`) values ('209044483','王晨阳','男','20','计204');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
