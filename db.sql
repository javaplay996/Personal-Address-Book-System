/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gerentongxunlu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gerentongxunlu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gerentongxunlu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-20 13:46:10'),(2,'sex_types','性别',2,'女',NULL,'2021-04-20 13:46:10'),(3,'lianxirensex_types','性别',1,'男',NULL,'2021-04-20 13:46:10'),(4,'lianxirensex_types','性别',2,'女',NULL,'2021-04-20 13:46:10'),(5,'lianxiren_types','分类名称',1,'家人',NULL,'2021-04-20 13:46:10'),(6,'lianxiren_types','分类名称',2,'朋友',NULL,'2021-04-20 13:46:10'),(7,'lianxiren_types','分类名称',3,'其他',NULL,'2021-04-20 13:46:10'),(8,'news_types','公告类型名称',1,'日常公告',NULL,'2021-04-20 13:46:10'),(9,'news_types','公告类型名称',2,'紧急公告',NULL,'2021-04-20 13:46:10'),(10,'lianxiren_types','分类名称',4,'123',NULL,'2021-04-20 15:40:50');

/*Table structure for table `lianxiren` */

DROP TABLE IF EXISTS `lianxiren`;

CREATE TABLE `lianxiren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111',
  `lianxirensex_types` int(200) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '用户',
  `lianxiren_types` int(200) DEFAULT NULL COMMENT '分类 Search111',
  `lianxiren_age` int(200) DEFAULT NULL COMMENT '年龄 ',
  `lianxiren_phone` varchar(200) DEFAULT NULL COMMENT '联系方式 ',
  `lianxiren_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱 ',
  `lianxiren_qq` varchar(200) DEFAULT NULL COMMENT 'QQ',
  `lianxiren_zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `lianxiren_danwei` varchar(200) DEFAULT NULL COMMENT '工作单位',
  `lianxiren_content` text COMMENT '备注信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='联系人';

/*Data for the table `lianxiren` */

insert  into `lianxiren`(`id`,`lianxiren_name`,`lianxirensex_types`,`yonghu_id`,`lianxiren_types`,`lianxiren_age`,`lianxiren_phone`,`lianxiren_email`,`lianxiren_qq`,`lianxiren_zhuzhi`,`lianxiren_danwei`,`lianxiren_content`,`create_time`) values (22,'姓名1',2,2,2,11,'17789944522','123@qq.com','22121212121','住址1','工作单位1','备注信息1\r\n','2021-04-20 14:57:57'),(23,'姓名2',1,1,1,22,'17789944511','321@qq.com','11212121212','住址2','工作单位2','备注信息2\r\n','2021-04-20 14:58:33'),(24,'姓名3',1,4,3,33,'17789944533','333@qq.com','3333333333','住址3','工作单位3','备注信息3\r\n','2021-04-20 15:39:59'),(25,'姓名4',1,5,4,222,'17789944544','444@qq.com','44444444444444','住址4','工作单位4','备注信息4\r\n','2021-04-20 15:42:50');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (4,'1231111','admin','2021-02-03 17:15:28','只有管理员可以回复','admin','2021-02-03 17:15:29'),(8,'123','admin','2021-04-20 14:32:11','123','admin','2021-04-20 14:32:15'),(9,'33333333333333','admin','2021-04-20 15:41:10','33333333333333333333333333333333333333','admin','2021-04-20 15:41:16'),(10,'123123','111','2021-04-20 15:43:14',NULL,NULL,NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1',1,'http://localhost:8080/gerentongxunlu/file/download?fileName=1618901941929.jpg','2021-04-20 14:59:05','公告详情1\r\n','2021-04-20 14:59:05'),(2,'公告名称2',2,'http://localhost:8080/gerentongxunlu/file/download?fileName=1618901952634.jpg','2021-04-20 14:59:14','公告详情2\r\n','2021-04-20 14:59:14');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ngylm8xk9i9jz6uz1xprzvkxaiopg9ht','2021-04-20 14:06:54','2021-04-20 16:44:19'),(2,1,'111','yonghu','用户','edff94aknfo1123mv2kunlbuqp4yl3oi','2021-04-20 14:59:25','2021-04-20 16:43:00'),(3,5,'123','yonghu','用户','jnblpvc7tw2fvg3jm27zuunb2cb1c953','2021-04-20 15:41:43','2021-04-20 16:41:43');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882200011064871','17789944561','http://localhost:8080/gerentongxunlu/file/download?fileName=1618901315772.jpg','2021-04-20 14:48:37'),(2,'222','123456','用户2',1,'410882200011064872','17789944562','http://localhost:8080/gerentongxunlu/file/download?fileName=1618901331350.jpg','2021-04-20 14:48:52'),(4,'333','123456','用户3',2,'410882200011064873','17789944563','http://localhost:8080/gerentongxunlu/file/download?fileName=1618904305655.jpg','2021-04-20 15:38:28'),(5,'123','123','123',2,'410882200011064874','17789944564','http://localhost:8080/gerentongxunlu/file/download?fileName=1618904519876.jpg','2021-04-20 15:41:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
