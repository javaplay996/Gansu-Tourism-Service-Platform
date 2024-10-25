/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lvyoufuwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lvyoufuwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lvyoufuwu`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,2,'收货人2','17703786902','地址2',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,1,'收货人3','17703786903','地址3',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,3,'收货人4','17703786904','地址4',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,3,'收货人5','17703786905','地址5',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,3,'收货人6','17703786906','地址6',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,2,'收货人7','17703786907','地址7',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,3,'收货人8','17703786908','地址8',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,1,'收货人9','17703786909','地址9',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,1,'收货人10','17703786910','地址10',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,1,'收货人11','17703786911','地址11',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,2,'收货人12','17703786912','地址12',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,3,'收货人13','17703786913','地址13',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,3,'收货人14','17703786914','地址14',1,'2023-04-26 09:50:42','2023-04-26 09:50:42','2023-04-26 09:50:42'),(15,4,'张三','17788889999','地址12111',1,'2023-04-26 11:09:40','2023-04-26 11:09:40','2023-04-26 11:09:40'),(16,5,'张三','17788889999','地址111',2,'2023-04-26 11:14:20','2023-04-26 11:14:20','2023-04-26 11:14:20');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1和单双杠事故','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (17,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-26 09:49:24'),(18,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-26 09:49:24'),(19,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-26 09:49:25'),(20,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-26 09:49:25'),(21,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-26 09:49:25'),(22,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-26 09:49:25'),(23,'shangjia_xingji_types','商家信用类型',1,'一级',NULL,NULL,'2023-04-26 09:49:25'),(24,'shangjia_xingji_types','商家信用类型',2,'二级',NULL,NULL,'2023-04-26 09:49:25'),(25,'shangjia_xingji_types','商家信用类型',3,'三级',NULL,NULL,'2023-04-26 09:49:25'),(26,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-26 09:49:25'),(27,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-26 09:49:25'),(28,'jingdian_types','景点类型',1,'景点类型1',NULL,NULL,'2023-04-26 09:49:25'),(29,'jingdian_types','景点类型',2,'景点类型2',NULL,NULL,'2023-04-26 09:49:25'),(30,'jingdian_types','景点类型',3,'景点类型3',NULL,NULL,'2023-04-26 09:49:25'),(31,'jingdian_types','景点类型',4,'景点类型4',NULL,NULL,'2023-04-26 09:49:25'),(32,'jingdian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-26 09:49:25'),(33,'jingdian_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-26 09:49:25'),(34,'jingdian_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-26 09:49:25'),(35,'jingdian_order_types','订单类型',101,'已购买门票',NULL,NULL,'2023-04-26 09:49:25'),(36,'jingdian_order_types','订单类型',102,'已取消购买',NULL,NULL,'2023-04-26 09:49:25'),(37,'jingdian_order_types','订单类型',103,'已检票',NULL,NULL,'2023-04-26 09:49:25'),(38,'jingdian_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-26 09:49:25'),(39,'jingdian_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-26 09:49:25'),(40,'jiudian_types','房型',1,'单人房',NULL,NULL,'2023-04-26 09:49:25'),(41,'jiudian_types','房型',2,'双人房',NULL,NULL,'2023-04-26 09:49:25'),(42,'jiudian_types','房型',3,'豪华间',NULL,NULL,'2023-04-26 09:49:25'),(43,'jiudian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-26 09:49:25'),(44,'jiudian_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-26 09:49:25'),(45,'jiudian_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-26 09:49:25'),(46,'jiudian_order_types','订单类型',101,'已预定房间',NULL,NULL,'2023-04-26 09:49:25'),(47,'jiudian_order_types','订单类型',102,'已取消预定',NULL,NULL,'2023-04-26 09:49:25'),(48,'jiudian_order_types','订单类型',103,'用户已入住',NULL,NULL,'2023-04-26 09:49:25'),(49,'jiudian_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-26 09:49:25'),(50,'jiudian_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-26 09:49:25'),(51,'meishi_types','美食类型',1,'美食类型1',NULL,NULL,'2023-04-26 09:49:25'),(52,'meishi_types','美食类型',2,'美食类型2',NULL,NULL,'2023-04-26 09:49:25'),(53,'meishi_types','美食类型',3,'美食类型3',NULL,NULL,'2023-04-26 09:49:25'),(54,'meishi_types','美食类型',4,'美食类型4',NULL,NULL,'2023-04-26 09:49:25'),(55,'meishi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-26 09:49:25'),(56,'meishi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-26 09:49:25'),(57,'meishi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-26 09:49:25'),(58,'meishi_order_types','订单类型',101,'已下单',NULL,NULL,'2023-04-26 09:49:25'),(59,'meishi_order_types','订单类型',102,'已取消支付',NULL,NULL,'2023-04-26 09:49:25'),(60,'meishi_order_types','订单类型',103,'已派送订单',NULL,NULL,'2023-04-26 09:49:25'),(61,'meishi_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-26 09:49:25'),(62,'meishi_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-26 09:49:25'),(63,'meishi_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-26 09:49:25'),(64,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-26 09:49:25'),(65,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-26 09:49:25'),(66,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-04-26 09:49:25'),(67,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-04-26 09:49:25'),(68,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-04-26 09:49:25'),(69,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-04-26 09:49:25'),(70,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-26 09:49:25'),(71,'shangpin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-26 09:49:25'),(72,'shangpin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-26 09:49:25'),(73,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-26 09:49:25'),(74,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-26 09:49:25'),(75,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-26 09:49:25'),(76,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-26 09:49:25'),(77,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-26 09:49:25'),(78,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-26 09:49:25'),(79,'shangpin_types','商品类型',5,'商品类型5',NULL,'','2023-04-26 11:20:50');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-26 09:50:42','公告详情1','2023-04-26 09:50:42'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-26 09:50:42','公告详情2','2023-04-26 09:50:42'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-26 09:50:42','公告详情3','2023-04-26 09:50:42'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-26 09:50:42','公告详情4','2023-04-26 09:50:42'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-26 09:50:42','公告详情5','2023-04-26 09:50:42'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-26 09:50:42','公告详情6','2023-04-26 09:50:42'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-26 09:50:42','公告详情7','2023-04-26 09:50:42'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-26 09:50:42','公告详情8','2023-04-26 09:50:42'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-26 09:50:42','公告详情9','2023-04-26 09:50:42'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-26 09:50:42','公告详情10','2023-04-26 09:50:42'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-26 09:50:42','公告详情11','2023-04-26 09:50:42'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-26 09:50:42','公告详情12','2023-04-26 09:50:42'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-26 09:50:42','公告详情13','2023-04-26 09:50:42'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-26 09:50:42','<p>公告详情14还得收拾</p>','2023-04-26 09:50:42');

/*Table structure for table `jingdian` */

DROP TABLE IF EXISTS `jingdian`;

CREATE TABLE `jingdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名称  Search111 ',
  `jingdian_uuid_number` varchar(200) DEFAULT NULL COMMENT '景点编号',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点照片',
  `jingdian_video` varchar(200) DEFAULT NULL COMMENT '视频介绍',
  `jingdian_address` varchar(200) DEFAULT NULL COMMENT '景点位置',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `jingdian_types` int(11) DEFAULT NULL COMMENT '景点类型 Search111',
  `jingdian_kucun_number` int(11) DEFAULT NULL COMMENT '剩余门票数',
  `jingdian_old_money` decimal(10,2) DEFAULT NULL COMMENT '景点原价 ',
  `jingdian_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/张',
  `jingdian_clicknum` int(11) DEFAULT NULL COMMENT '景点热度',
  `jingdian_content` longtext COMMENT '景点介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `jingdian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='景点';

/*Data for the table `jingdian` */

insert  into `jingdian`(`id`,`shangjia_id`,`jingdian_name`,`jingdian_uuid_number`,`jingdian_photo`,`jingdian_video`,`jingdian_address`,`zan_number`,`cai_number`,`jingdian_types`,`jingdian_kucun_number`,`jingdian_old_money`,`jingdian_new_money`,`jingdian_clicknum`,`jingdian_content`,`shangxia_types`,`jingdian_delete`,`insert_time`,`create_time`) values (1,3,'景点名称1','1682473842274','upload/jingdian1.jpg','upload/video.mp4','景点位置1',386,206,4,101,'536.98','54.08',33,'景点介绍1',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,1,'景点名称2','1682473842230','upload/jingdian2.jpg','upload/video.mp4','景点位置2',35,498,3,96,'831.25','36.37',432,'景点介绍2',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,3,'景点名称3','1682473842284','upload/jingdian3.jpg','upload/video.mp4','景点位置3',73,395,4,103,'841.01','163.64',413,'景点介绍3',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,2,'景点名称4','1682473842258','upload/jingdian4.jpg','upload/video.mp4','景点位置4',41,263,4,104,'835.74','81.55',70,'景点介绍4',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,1,'景点名称5','1682473842305','upload/jingdian5.jpg','upload/video.mp4','景点位置5',8,113,1,105,'760.24','255.06',111,'景点介绍5',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,2,'景点名称6','1682473842269','upload/jingdian6.jpg','upload/video.mp4','景点位置6',158,374,2,106,'933.93','356.83',437,'景点介绍6',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,3,'景点名称7','1682473842286','upload/jingdian7.jpg','upload/video.mp4','景点位置7',447,344,2,107,'983.66','184.35',84,'景点介绍7',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,3,'景点名称8','1682473842261','upload/jingdian8.jpg','upload/video.mp4','景点位置8',244,380,4,108,'565.76','330.99',193,'景点介绍8',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,3,'景点名称9','1682473842279','upload/jingdian9.jpg','upload/video.mp4','景点位置9',452,285,4,104,'584.62','118.53',480,'景点介绍9',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,3,'景点名称10','1682473842261','upload/jingdian10.jpg','upload/video.mp4','景点位置10',184,441,1,1010,'700.90','421.16',160,'景点介绍10',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,3,'景点名称11','1682473842259','upload/jingdian11.jpg','upload/video.mp4','景点位置11',225,401,1,1011,'756.84','51.14',209,'景点介绍11',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,3,'景点名称12','1682473842212','upload/jingdian12.jpg','upload/video.mp4','景点位置12',84,495,2,1012,'559.58','29.19',198,'景点介绍12',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,3,'景点名称13','1682473842300','upload/jingdian13.jpg','upload/video.mp4','景点位置13',152,9,3,1013,'562.09','455.59',49,'景点介绍13',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,3,'景点名称14','1682473842220','upload/jingdian14.jpg','upload/video.mp4','景点位置14',71,71,2,1014,'865.59','273.89',466,'景点介绍14',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42');

/*Table structure for table `jingdian_collection` */

DROP TABLE IF EXISTS `jingdian_collection`;

CREATE TABLE `jingdian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jingdian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='景点收藏';

/*Data for the table `jingdian_collection` */

insert  into `jingdian_collection`(`id`,`jingdian_id`,`yonghu_id`,`jingdian_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,2,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,3,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,4,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,5,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,6,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,7,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,8,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,9,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,10,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,11,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,12,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,13,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,14,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(15,2,4,1,'2023-04-26 11:08:22','2023-04-26 11:08:22'),(16,14,5,1,'2023-04-26 11:15:49','2023-04-26 11:15:49');

/*Table structure for table `jingdian_commentback` */

DROP TABLE IF EXISTS `jingdian_commentback`;

CREATE TABLE `jingdian_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jingdian_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='景点评价';

/*Data for the table `jingdian_commentback` */

insert  into `jingdian_commentback`(`id`,`jingdian_id`,`yonghu_id`,`jingdian_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-04-26 09:50:42','回复信息1','2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,2,1,'评价内容2','2023-04-26 09:50:42','回复信息2','2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,3,1,'评价内容3','2023-04-26 09:50:42','回复信息3','2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,4,1,'评价内容4','2023-04-26 09:50:42','回复信息4','2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,5,1,'评价内容5','2023-04-26 09:50:42','回复信息5','2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,6,3,'评价内容6','2023-04-26 09:50:42','回复信息6','2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,7,1,'评价内容7','2023-04-26 09:50:42','回复信息7','2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,8,2,'评价内容8','2023-04-26 09:50:42','回复信息8','2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,9,2,'评价内容9','2023-04-26 09:50:42','回复信息9','2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,10,1,'评价内容10','2023-04-26 09:50:42','回复信息10','2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,11,2,'评价内容11','2023-04-26 09:50:42','回复信息11','2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,12,2,'评价内容12','2023-04-26 09:50:42','回复信息12','2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,13,2,'评价内容13','2023-04-26 09:50:42','回复信息13','2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,14,3,'评价内容14','2023-04-26 09:50:42','回复信息14','2023-04-26 09:50:42','2023-04-26 09:50:42'),(15,2,4,'感到孤独时感受到','2023-04-26 11:11:13','和发的回访电话','2023-04-26 11:11:46','2023-04-26 11:11:13');

/*Table structure for table `jingdian_order` */

DROP TABLE IF EXISTS `jingdian_order`;

CREATE TABLE `jingdian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买张数',
  `jingdian_order_time` date DEFAULT NULL COMMENT '预定日期',
  `jingdian_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `jingdian_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `jingdian_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='景点门票订单';

/*Data for the table `jingdian_order` */

insert  into `jingdian_order`(`id`,`jingdian_order_uuid_number`,`jingdian_id`,`yonghu_id`,`buy_number`,`jingdian_order_time`,`jingdian_order_true_price`,`jingdian_order_types`,`jingdian_order_payment_types`,`insert_time`,`create_time`) values (1,'1682476054479',9,1,2,'2023-04-26','237.06',101,1,'2023-04-26 10:27:34','2023-04-26 10:27:34'),(2,'1682478508461',2,4,2,'2023-04-27','72.74',105,1,'2023-04-26 11:08:28','2023-04-26 11:08:28'),(3,'1682478520227',9,4,3,'2023-04-28','355.59',101,1,'2023-04-26 11:08:40','2023-04-26 11:08:40'),(4,'1682478899917',2,5,2,'2023-04-26','72.74',101,1,'2023-04-26 11:15:00','2023-04-26 11:15:00'),(5,'1682478953267',2,5,2,'2023-04-26','72.74',103,1,'2023-04-26 11:15:53','2023-04-26 11:15:53');

/*Table structure for table `jiudian` */

DROP TABLE IF EXISTS `jiudian`;

CREATE TABLE `jiudian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `jiudian_name` varchar(200) DEFAULT NULL COMMENT '房间名称  Search111 ',
  `jiudian_uuid_number` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `jiudian_photo` varchar(200) DEFAULT NULL COMMENT '房间照片',
  `jiudian_address` varchar(200) DEFAULT NULL COMMENT '酒店位置',
  `jiudian_tese` varchar(200) DEFAULT NULL COMMENT '特色',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `jiudian_types` int(11) DEFAULT NULL COMMENT '房型 Search111',
  `jiudian_kucun_number` int(11) DEFAULT NULL COMMENT '剩余房间数',
  `jiudian_old_money` decimal(10,2) DEFAULT NULL COMMENT '房间原价 ',
  `jiudian_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/天',
  `jiudian_clicknum` int(11) DEFAULT NULL COMMENT '房间热度',
  `jiudian_content` longtext COMMENT '房间介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `jiudian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='酒店';

/*Data for the table `jiudian` */

insert  into `jiudian`(`id`,`shangjia_id`,`jiudian_name`,`jiudian_uuid_number`,`jiudian_photo`,`jiudian_address`,`jiudian_tese`,`zan_number`,`cai_number`,`jiudian_types`,`jiudian_kucun_number`,`jiudian_old_money`,`jiudian_new_money`,`jiudian_clicknum`,`jiudian_content`,`shangxia_types`,`jiudian_delete`,`insert_time`,`create_time`) values (1,2,'房间名称1','1682473842215','upload/jiudian1.jpg','酒店位置1','特色1',173,444,1,101,'871.24','183.42',188,'房间介绍1',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,2,'房间名称2','1682473842310','upload/jiudian2.jpg','酒店位置2','特色2',421,353,2,102,'705.93','238.17',338,'房间介绍2',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,2,'房间名称3','1682473842236','upload/jiudian3.jpg','酒店位置3','特色3',417,421,3,101,'879.00','353.28',436,'房间介绍3',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,1,'房间名称4','1682473842215','upload/jiudian4.jpg','酒店位置4','特色4',303,25,2,104,'899.36','487.77',66,'房间介绍4',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,1,'房间名称5','1682473842236','upload/jiudian5.jpg','酒店位置5','特色5',306,378,1,105,'781.65','264.11',241,'房间介绍5',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,3,'房间名称6','1682473842221','upload/jiudian6.jpg','酒店位置6','特色6',369,352,1,106,'626.88','141.02',11,'房间介绍6',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,3,'房间名称7','1682473842274','upload/jiudian7.jpg','酒店位置7','特色7',95,320,3,107,'509.69','78.05',180,'房间介绍7',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,3,'房间名称8','1682473842238','upload/jiudian8.jpg','酒店位置8','特色8',424,282,2,108,'574.31','191.50',319,'房间介绍8',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,3,'房间名称9','1682473842216','upload/jiudian9.jpg','酒店位置9','特色9',373,456,2,109,'752.99','151.65',270,'房间介绍9',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,1,'房间名称10','1682473842217','upload/jiudian10.jpg','酒店位置10','特色10',130,497,1,1007,'957.37','349.74',380,'房间介绍10',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,1,'房间名称11','1682473842287','upload/jiudian11.jpg','酒店位置11','特色11',161,173,3,1011,'649.90','334.51',95,'房间介绍11',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,1,'房间名称12','1682473842239','upload/jiudian12.jpg','酒店位置12','特色12',30,102,2,1009,'741.61','264.74',297,'房间介绍12',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,2,'房间名称13','1682473842310','upload/jiudian13.jpg','酒店位置13','特色13',46,89,2,1013,'919.13','490.91',471,'房间介绍13',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,3,'房间名称14','1682473842310','upload/jiudian14.jpg','酒店位置14','特色14',368,179,1,1014,'755.13','290.72',247,'房间介绍14',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42');

/*Table structure for table `jiudian_collection` */

DROP TABLE IF EXISTS `jiudian_collection`;

CREATE TABLE `jiudian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '房间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiudian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='房间收藏';

/*Data for the table `jiudian_collection` */

insert  into `jiudian_collection`(`id`,`jiudian_id`,`yonghu_id`,`jiudian_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,2,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,3,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,4,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,5,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,6,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,7,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,8,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,9,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,10,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,11,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,12,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,13,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,14,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(15,3,4,1,'2023-04-26 11:05:20','2023-04-26 11:05:20'),(16,10,5,1,'2023-04-26 11:16:44','2023-04-26 11:16:44');

/*Table structure for table `jiudian_commentback` */

DROP TABLE IF EXISTS `jiudian_commentback`;

CREATE TABLE `jiudian_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '房间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiudian_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='酒店评价';

/*Data for the table `jiudian_commentback` */

insert  into `jiudian_commentback`(`id`,`jiudian_id`,`yonghu_id`,`jiudian_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-04-26 09:50:42','回复信息1','2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,2,3,'评价内容2','2023-04-26 09:50:42','回复信息2','2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,3,3,'评价内容3','2023-04-26 09:50:42','回复信息3','2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,4,2,'评价内容4','2023-04-26 09:50:42','回复信息4','2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,5,1,'评价内容5','2023-04-26 09:50:42','回复信息5','2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,6,2,'评价内容6','2023-04-26 09:50:42','回复信息6','2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,7,3,'评价内容7','2023-04-26 09:50:42','回复信息7','2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,8,1,'评价内容8','2023-04-26 09:50:42','回复信息8','2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,9,3,'评价内容9','2023-04-26 09:50:42','回复信息9','2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,10,1,'评价内容10','2023-04-26 09:50:42','回复信息10','2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,11,2,'评价内容11','2023-04-26 09:50:42','回复信息11','2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,12,1,'评价内容12','2023-04-26 09:50:42','回复信息12哈哈哈哈','2023-04-26 11:17:38','2023-04-26 09:50:42'),(13,13,1,'评价内容13','2023-04-26 09:50:42','回复信息13','2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,14,1,'评价内容14','2023-04-26 09:50:42','回复信息14','2023-04-26 09:50:42','2023-04-26 09:50:42');

/*Table structure for table `jiudian_order` */

DROP TABLE IF EXISTS `jiudian_order`;

CREATE TABLE `jiudian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '房间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '预定天数',
  `jiudian_order_time` date DEFAULT NULL COMMENT '预定入住日期',
  `jiudian_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `jiudian_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `jiudian_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='酒店订单';

/*Data for the table `jiudian_order` */

insert  into `jiudian_order`(`id`,`jiudian_order_uuid_number`,`jiudian_id`,`yonghu_id`,`buy_number`,`jiudian_order_time`,`jiudian_order_true_price`,`jiudian_order_types`,`jiudian_order_payment_types`,`insert_time`,`create_time`) values (1,'1682475956586',10,1,2,'2023-04-26','699.48',101,1,'2023-04-26 10:25:57','2023-04-26 10:25:57'),(2,'1682478534314',12,4,1,'2023-04-28','264.74',101,1,'2023-04-26 11:08:54','2023-04-26 11:08:54'),(3,'1682478541927',10,4,1,'2023-04-26','349.74',101,1,'2023-04-26 11:09:02','2023-04-26 11:09:02'),(4,'1682478915212',12,5,2,'2023-04-27','529.48',103,1,'2023-04-26 11:15:15','2023-04-26 11:15:15'),(5,'1682478964365',3,5,2,'2023-04-29','706.56',101,1,'2023-04-26 11:16:04','2023-04-26 11:16:04');

/*Table structure for table `meishi` */

DROP TABLE IF EXISTS `meishi`;

CREATE TABLE `meishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '美食名称  Search111 ',
  `meishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '美食编号',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '美食照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `meishi_types` int(11) DEFAULT NULL COMMENT '美食类型 Search111',
  `meishi_kucun_number` int(11) DEFAULT NULL COMMENT '美食库存',
  `meishi_old_money` decimal(10,2) DEFAULT NULL COMMENT '美食原价 ',
  `meishi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/份 ',
  `meishi_clicknum` int(11) DEFAULT NULL COMMENT '美食热度',
  `meishi_content` longtext COMMENT '美食介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `meishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='美食';

/*Data for the table `meishi` */

insert  into `meishi`(`id`,`shangjia_id`,`meishi_name`,`meishi_uuid_number`,`meishi_photo`,`zan_number`,`cai_number`,`meishi_types`,`meishi_kucun_number`,`meishi_old_money`,`meishi_new_money`,`meishi_clicknum`,`meishi_content`,`shangxia_types`,`meishi_delete`,`insert_time`,`create_time`) values (1,3,'美食名称1','1682473842283','upload/meishi1.jpg',210,20,3,101,'741.20','33.79',296,'美食介绍1',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,1,'美食名称2','1682473842231','upload/meishi2.jpg',251,388,4,102,'986.66','218.30',136,'美食介绍2',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,1,'美食名称3','1682473842320','upload/meishi3.jpg',305,228,3,103,'811.37','333.74',49,'美食介绍3',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,1,'美食名称4','1682473842271','upload/meishi4.jpg',501,91,2,104,'839.34','310.30',33,'美食介绍4',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,3,'美食名称5','1682473842244','upload/meishi5.jpg',447,492,3,105,'801.48','213.91',98,'美食介绍5',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,2,'美食名称6','1682473842311','upload/meishi6.jpg',300,19,4,106,'544.12','391.47',351,'美食介绍6',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,3,'美食名称7','1682473842256','upload/meishi7.jpg',106,408,3,107,'931.27','474.17',149,'美食介绍7',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,2,'美食名称8','1682473842287','upload/meishi8.jpg',215,102,3,107,'998.35','370.73',365,'美食介绍8',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,1,'美食名称9','1682473842289','upload/meishi9.jpg',345,202,4,104,'997.60','132.49',185,'美食介绍9',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,2,'美食名称10','1682473842239','upload/meishi10.jpg',131,108,2,1010,'930.46','359.97',212,'美食介绍10',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,2,'美食名称11','1682473842310','upload/meishi11.jpg',237,301,1,1007,'668.87','286.36',417,'美食介绍11',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,2,'美食名称12','1682473842314','upload/meishi12.jpg',403,437,3,1012,'686.93','99.74',333,'美食介绍12',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,1,'美食名称13','1682473842291','upload/meishi13.jpg',135,302,1,1013,'877.76','311.65',453,'美食介绍13',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,1,'美食名称14','1682473842267','upload/meishi14.jpg',11,234,4,1014,'803.21','358.09',288,'<p>美食介绍14会打人收复失地回复是</p>',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42');

/*Table structure for table `meishi_collection` */

DROP TABLE IF EXISTS `meishi_collection`;

CREATE TABLE `meishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '美食',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `meishi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='美食收藏';

/*Data for the table `meishi_collection` */

insert  into `meishi_collection`(`id`,`meishi_id`,`yonghu_id`,`meishi_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,2,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,3,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,4,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,5,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,6,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,7,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,8,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,9,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,10,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,11,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,12,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,13,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,14,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(15,3,4,2,'2023-04-26 11:09:13','2023-04-26 11:09:13'),(16,3,4,1,'2023-04-26 11:09:16','2023-04-26 11:09:16'),(17,9,4,2,'2023-04-26 11:09:59','2023-04-26 11:09:59'),(18,9,5,1,'2023-04-26 11:15:26','2023-04-26 11:15:26'),(19,8,5,1,'2023-04-26 11:16:15','2023-04-26 11:16:15'),(20,8,5,2,'2023-04-26 11:16:17','2023-04-26 11:16:17');

/*Table structure for table `meishi_commentback` */

DROP TABLE IF EXISTS `meishi_commentback`;

CREATE TABLE `meishi_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '美食',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `meishi_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='美食评价';

/*Data for the table `meishi_commentback` */

insert  into `meishi_commentback`(`id`,`meishi_id`,`yonghu_id`,`meishi_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-04-26 09:50:42','回复信息1','2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,2,1,'评价内容2','2023-04-26 09:50:42','回复信息2','2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,3,3,'评价内容3','2023-04-26 09:50:42','回复信息3','2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,4,1,'评价内容4','2023-04-26 09:50:42','回复信息4','2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,5,3,'评价内容5','2023-04-26 09:50:42','回复信息5','2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,6,1,'评价内容6','2023-04-26 09:50:42','回复信息6','2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,7,1,'评价内容7','2023-04-26 09:50:42','回复信息7','2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,8,1,'评价内容8','2023-04-26 09:50:42','回复信息8','2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,9,2,'评价内容9','2023-04-26 09:50:42','回复信息9','2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,10,3,'评价内容10','2023-04-26 09:50:42','回复信息10','2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,11,1,'评价内容11','2023-04-26 09:50:42','回复信息11','2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,12,3,'评价内容12','2023-04-26 09:50:42','回复信息12','2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,13,3,'评价内容13','2023-04-26 09:50:42','回复信息13','2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,14,1,'评价内容14','2023-04-26 09:50:42','回复信息14斤斤计较','2023-04-26 11:18:04','2023-04-26 09:50:42');

/*Table structure for table `meishi_order` */

DROP TABLE IF EXISTS `meishi_order`;

CREATE TABLE `meishi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `meishi_id` int(11) DEFAULT NULL COMMENT '美食',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `meishi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `meishi_order_courier_name` varchar(200) DEFAULT NULL COMMENT '派送人',
  `meishi_order_courier_number` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `meishi_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `meishi_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='美食订单';

/*Data for the table `meishi_order` */

insert  into `meishi_order`(`id`,`meishi_order_uuid_number`,`address_id`,`meishi_id`,`yonghu_id`,`buy_number`,`meishi_order_true_price`,`meishi_order_courier_name`,`meishi_order_courier_number`,`meishi_order_types`,`meishi_order_payment_types`,`insert_time`,`create_time`) values (1,'1682474519093',3,11,1,2,'572.72',NULL,NULL,101,1,'2023-04-26 10:01:59','2023-04-26 10:01:59'),(2,'1682478588490',15,11,4,2,'572.72',NULL,NULL,101,1,'2023-04-26 11:09:48','2023-04-26 11:09:48'),(3,'1682478602593',15,9,4,3,'397.47',NULL,NULL,101,1,'2023-04-26 11:10:03','2023-04-26 11:10:03'),(4,'1682478930753',16,9,5,2,'264.98','张三','17788889999',103,1,'2023-04-26 11:15:31','2023-04-26 11:15:31'),(5,'1682478971633',16,8,5,1,'370.73',NULL,NULL,101,1,'2023-04-26 11:16:12','2023-04-26 11:16:12');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` longtext COMMENT '商家介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_xingji_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`jinyong_types`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','upload/shangjia1.jpg',1,'5619.13','<p>商家介绍1广东省归属感的</p>',1,1,'2023-04-26 09:50:42'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',1,'2698.29','商家介绍2',1,1,'2023-04-26 09:50:42'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',3,'1650.02','商家介绍3',1,2,'2023-04-26 09:50:42');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangjia_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`zan_number`,`cai_number`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`insert_time`,`create_time`) values (1,3,'商品名称1','1682473842273','upload/shangpin1.jpg',311,94,3,101,'925.79','190.69',84,'商品介绍1',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,2,'商品名称2','1682473842315','upload/shangpin2.jpg',224,2,2,99,'889.01','148.81',394,'商品介绍2',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,3,'商品名称3','1682473842285','upload/shangpin3.jpg',206,206,1,103,'906.45','344.11',371,'商品介绍3',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,3,'商品名称4','1682473842243','upload/shangpin4.jpg',96,461,4,96,'936.78','24.66',384,'商品介绍4',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,3,'商品名称5','1682473842254','upload/shangpin5.jpg',228,163,4,105,'562.36','35.83',34,'商品介绍5',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,2,'商品名称6','1682473842314','upload/shangpin6.jpg',188,457,2,106,'681.20','203.73',226,'商品介绍6',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,3,'商品名称7','1682473842269','upload/shangpin7.jpg',149,211,2,107,'943.07','129.23',497,'商品介绍7',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,3,'商品名称8','1682473842233','upload/shangpin8.jpg',447,178,1,108,'815.64','384.19',190,'商品介绍8',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,3,'商品名称9','1682473842310','upload/shangpin9.jpg',73,429,2,109,'763.88','161.61',356,'商品介绍9',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,1,'商品名称10','1682473842247','upload/shangpin10.jpg',371,65,1,1001,'951.41','313.33',137,'商品介绍10',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,2,'商品名称11','1682473842299','upload/shangpin11.jpg',280,271,2,1011,'996.83','245.15',368,'商品介绍11',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,2,'商品名称12','1682473842312','upload/shangpin12.jpg',154,461,3,1012,'793.42','264.48',62,'商品介绍12',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,3,'商品名称13','1682473842270','upload/shangpin13.jpg',243,109,3,1013,'791.45','438.75',310,'商品介绍13',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,3,'商品名称14','1682473842260','upload/shangpin14.jpg',97,347,3,1014,'646.08','372.83',193,'商品介绍14',1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,2,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,3,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,4,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,5,2,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,6,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,7,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,8,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,9,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,10,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,11,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,12,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,13,1,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,14,3,1,'2023-04-26 09:50:42','2023-04-26 09:50:42'),(15,10,4,1,'2023-04-26 11:08:11','2023-04-26 11:08:11'),(16,3,4,1,'2023-04-26 11:10:32','2023-04-26 11:10:32'),(17,8,4,1,'2023-04-26 11:10:33','2023-04-26 11:10:33'),(18,2,5,1,'2023-04-26 11:14:06','2023-04-26 11:14:06'),(19,4,5,2,'2023-04-26 11:16:23','2023-04-26 11:16:23');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-04-26 09:50:42','回复信息1','2023-04-26 09:50:42','2023-04-26 09:50:42'),(2,2,3,'评价内容2','2023-04-26 09:50:42','回复信息2','2023-04-26 09:50:42','2023-04-26 09:50:42'),(3,3,3,'评价内容3','2023-04-26 09:50:42','回复信息3','2023-04-26 09:50:42','2023-04-26 09:50:42'),(4,4,2,'评价内容4','2023-04-26 09:50:42','回复信息4','2023-04-26 09:50:42','2023-04-26 09:50:42'),(5,5,1,'评价内容5','2023-04-26 09:50:42','回复信息5','2023-04-26 09:50:42','2023-04-26 09:50:42'),(6,6,2,'评价内容6','2023-04-26 09:50:42','回复信息6','2023-04-26 09:50:42','2023-04-26 09:50:42'),(7,7,3,'评价内容7','2023-04-26 09:50:42','回复信息7','2023-04-26 09:50:42','2023-04-26 09:50:42'),(8,8,3,'评价内容8','2023-04-26 09:50:42','回复信息8','2023-04-26 09:50:42','2023-04-26 09:50:42'),(9,9,2,'评价内容9','2023-04-26 09:50:42','回复信息9','2023-04-26 09:50:42','2023-04-26 09:50:42'),(10,10,3,'评价内容10','2023-04-26 09:50:42','回复信息10','2023-04-26 09:50:42','2023-04-26 09:50:42'),(11,11,1,'评价内容11','2023-04-26 09:50:42','回复信息11','2023-04-26 09:50:42','2023-04-26 09:50:42'),(12,12,1,'评价内容12','2023-04-26 09:50:42','回复信息12','2023-04-26 09:50:42','2023-04-26 09:50:42'),(13,13,3,'评价内容13','2023-04-26 09:50:42','回复信息13','2023-04-26 09:50:42','2023-04-26 09:50:42'),(14,14,1,'评价内容14','2023-04-26 09:50:42','回复信息14','2023-04-26 09:50:42','2023-04-26 09:50:42');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1682476072211',10,4,1,1,'24.66',NULL,NULL,101,1,'2023-04-26 10:27:52','2023-04-26 10:27:52'),(2,'1682476072211',10,2,1,3,'446.43',NULL,NULL,101,1,'2023-04-26 10:27:52','2023-04-26 10:27:52'),(3,'1682478619875',15,10,4,1,'313.33',NULL,NULL,101,1,'2023-04-26 11:10:20','2023-04-26 11:10:20'),(4,'1682478627706',15,4,4,2,'49.32',NULL,NULL,101,1,'2023-04-26 11:10:28','2023-04-26 11:10:28'),(5,'1682478639258',15,4,4,4,'98.64',NULL,NULL,101,1,'2023-04-26 11:10:39','2023-04-26 11:10:39'),(6,'1682478639258',15,10,4,1,'313.33',NULL,NULL,101,1,'2023-04-26 11:10:39','2023-04-26 11:10:39'),(7,'1682478943164',16,10,5,2,'626.66',NULL,NULL,101,1,'2023-04-26 11:15:43','2023-04-26 11:15:43'),(8,'1682478985559',16,4,5,1,'24.66',NULL,NULL,101,1,'2023-04-26 11:16:26','2023-04-26 11:16:26'),(9,'1682479016624',16,10,5,5,'1566.65','顺丰','36556355',103,1,'2023-04-26 11:16:57','2023-04-26 11:16:57');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','kw1z75xo8ix9y5bpcpq7jly5x0mnp5u4','2023-04-26 09:57:50','2023-04-26 12:24:43'),(2,1,'a1','yonghu','用户','zx3sl20ub32a0p2vx1qqiu052ddtd6rv','2023-04-26 09:59:31','2023-04-26 10:59:31'),(3,1,'a1','shangjia','商家','hanqoamajiyzngq7ypf5w3va0f8f43ap','2023-04-26 10:30:26','2023-04-26 12:17:05'),(4,2,'a2','shangjia','商家','9v00feket51ppfu76agf9bud4uc8po63','2023-04-26 10:31:31','2023-04-26 11:31:31'),(5,3,'a3','shangjia','商家','i3omud5ot2hndmi6m7k8zmerv8mkf5u9','2023-04-26 10:31:39','2023-04-26 11:31:40'),(6,4,'a5','yonghu','用户','a11awa3mzxsiz0wdz1glzi8ofanouuo3','2023-04-26 11:04:59','2023-04-26 12:21:45'),(7,5,'a8','yonghu','用户','ni8iguqnrx98ydpvdpf1boe3k25masoa','2023-04-26 11:13:48','2023-04-26 12:13:49'),(8,3,'a3','yonghu','用户','lrnl7bbd1unquuvfbx7mgmhbg3n3ncjg','2023-04-26 11:21:52','2023-04-26 12:21:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-26 09:49:24');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`jinyong_types`,`create_time`) values (1,'a1','123456','1682473842284','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','98382.40',1,'2023-04-26 09:50:42'),(2,'a2','123456','1682473842282','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','210.67',1,'2023-04-26 09:50:42'),(3,'a3','123456','1682473842254','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','453.33',1,'2023-04-26 09:50:42'),(4,'a5','123456','1682478293842','张5','17788889999','444222333666669999','upload/1682478306698.jpg',2,'5@qq.com','97211.38',1,'2023-04-26 11:04:54'),(5,'a8','123456','1682478823682','张8','17788889991','444222111133336666','upload/1682478834663.jpg',2,'5@qq.com','884644.80',2,'2023-04-26 11:13:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
