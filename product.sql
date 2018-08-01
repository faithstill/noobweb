/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.18 : Database - noobweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`noobweb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `noobweb`;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(45) NOT NULL,
  `price` float NOT NULL,
  `productdetail` varchar(10000) DEFAULT NULL,
  `remain` int(11) DEFAULT '0',
  `before_p` float DEFAULT NULL,
  `main_picture` varchar(100) DEFAULT NULL,
  `side_picture_1` varchar(100) DEFAULT NULL,
  `side_picture_2` varchar(100) DEFAULT NULL,
  `side_picture_3` varchar(100) DEFAULT NULL,
  `side_picture_4` varchar(100) DEFAULT NULL,
  `side_picture_5` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `sales` int(11) DEFAULT '0',
  `likenum` float DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`productid`,`productname`,`price`,`productdetail`,`remain`,`before_p`,`main_picture`,`side_picture_1`,`side_picture_2`,`side_picture_3`,`side_picture_4`,`side_picture_5`,`type`,`brand`,`sales`,`likenum`) values (1,'六神花露水',28.5,'牛逼，凉爽得雅痞',999,45,'1.jpg',NULL,NULL,NULL,NULL,NULL,'点心',NULL,0,NULL),(2,'农夫山泉',2.8,'天然矿泉水',789,4,'1.jpg',NULL,NULL,NULL,NULL,NULL,'饮料','三只松鼠',0,NULL),(3,'耳机',78,'好用',45,88,'2.jpg',NULL,NULL,NULL,NULL,NULL,'电子产品',NULL,0,NULL),(4,'零食大礼包',99,'打折大促销',99,199,'3.jpg',NULL,NULL,NULL,NULL,NULL,'降价',NULL,0,NULL),(5,'超级无敌蒸蛋糕',23,'超级无敌蒸蛋糕',999,299,'1.jpg',NULL,NULL,NULL,NULL,NULL,'点心','蒸蛋糕',0,NULL),(6,'1土豆',9.9,'1土豆',999,13,'1.jpg',NULL,NULL,NULL,NULL,NULL,'薯片','原味',0,NULL),(7,'2土豆',9.9,'2土豆',111,13,'1.jpg',NULL,NULL,NULL,NULL,NULL,'薯片','番茄味',0,NULL),(8,'土豆1',9.7,'土豆1',789,13,'1.jpg',NULL,NULL,NULL,NULL,NULL,'薯片','香辣味',0,NULL),(9,'土豆3',7.9,'土豆3',789,78,'1.jpg',NULL,NULL,NULL,NULL,NULL,'薯片','麻辣味',0,NULL),(11,'网红水果夹心蛋糕1斤整箱 营养早餐面包三明治茶点心休闲零食小吃',19.8,'生产许可证编号：SC12441112200063厂名：河南豪峰食品有限公司厂址：临颍县产业集聚区经三路北段西侧厂家联系方式：0395-8889598配料表：鸡蛋，小麦粉，植物油，白砂糖，等储藏方法：请置于阴凉干燥处保质期：180 天食品添加剂：见包装口味: 香蕉牛奶蛋糕500g1箱（送芝士蛋糕500g1箱）发2箱 香蕉牛奶蛋糕500g1箱（送榴莲蛋糕500g1箱）发2箱 香蕉牛奶蛋糕500g1箱（送芒果蛋糕500g1箱）发2箱 香蕉牛奶蛋糕500g1箱（送抹茶蛋糕500g1箱）发2箱 香蕉牛奶蛋糕500g1箱（送同款一箱）发2箱包装方式: 包装糕点种类: 夹心蛋糕净含量: 1000g品牌: 香当当系列: 香蕉牛奶蛋糕产地: 中国大陆省份: 河南省',38679,NULL,'d3c046ab-2b98-4180-bb7d-46027bdb7d93.png',NULL,NULL,NULL,NULL,NULL,'蛋糕','丸京',0,NULL),(31,'日本进口食品丸京铜锣烧鸡蛋糕318g早餐面包点心零食糕点',49,'规格：318g/袋  产地：日本  口感：软  香  甜  食用方法：开袋即食  贮存方法：常温保存  适用人群：成人儿童均可',11,212,'befafcfe-0df7-4407-a35d-7a7c0e3de9ba.png','81bc9e50-2716-4f8c-a149-67212c1ae082.png','3c4c9780-dc3a-4d35-9f71-a7c5f0aaa6a1.png',NULL,NULL,NULL,'蛋糕','丸京',0,NULL),(32,'日本进口零食品 丸京 人形烧鸡蛋糕 办公室小吃铜锣烧特产和果子',46,'品牌名称：Marukyo/丸京\r\n产品参数：\r\n\r\n厂名：丸京制果株式会社厂址：日本鸟取县米子市旗崎2002-2厂家联系方式：0081-120-475063配料表：请查看中文标签储藏方法：低温保存，避免阳光直射，高温多湿保质期：180 天口味: 单包装商品条形码: 4902752372007包装方式: 包装糕点种类: 夹心蛋糕净含量: 270g品牌: Marukyo/丸京系列: 人形是否含糖: 含糖产地: 日本',106,58,'7f9e161f-6d24-4b83-bf9e-b2fbdd8e676d.png',NULL,NULL,NULL,NULL,NULL,'蛋糕','丸京',0,NULL),(33,'新品【三只松鼠_蒸蛋糕1kg/整箱】早餐营养零食小面包点心美食',38.9,'生产许可证编号：SC12435058204320产品标准号：GB/T 20977厂名：泉州市新金佰益食品有限公司厂址：福建泉州市晋江市经济开发区（五里园）中源路17号A栋厂家联系方式：400-800-4900配料表：鲜鸡蛋、小麦粉、白砂糖、植物油、全脂乳粉、食用盐。储藏方法：常温常湿下请置于阴凉通风干燥处，避免阳光直射！保质期：60 天食品添加剂：食品添加剂（山梨糖醇液、甘油、复配膨松剂（焦磷酸二氢二钠、碳酸氢钠、碳酸钙、磷酸氢钙、食用玉米淀粉）口味: 柠檬味 原味包装方式: 包装糕点种类: 蒸蛋糕类净含量: 1000g品牌: Three Squirrels/三只松鼠系列: 蒸蛋糕1000g产地: 中国大陆省份: 福建省',6029,90,'6f5549df-fee8-435f-afd7-80f74f532e46.jpg',NULL,NULL,NULL,NULL,NULL,'蛋糕','三只松鼠',0,NULL),(34,'【松鼠6周年】三只松鼠 手撕面包1kg/箱早餐糕点蛋糕休闲零食',29.9,'很喜欢手撕面包，趁打折赶紧下单，性价比很高，物流也好快赞一下买东西隔一天就到了！差不多个个星期都要在上面买东西！日用品什么的零食什么的都很齐全真心太划算了！而且天猫超市速度也特别快！最近买了一二十单！简直疯狂买。昨晚拍的，今早一早就到了。这速度扛扛的。东西质量都很好，面包很好吃，日期也很新鲜。同事今早见了让我帮忙买了好几箱产品质量也非常好，要比超市方便很多免去了',3458,35,'755ffd01-33cf-4e2a-80b1-483be3e85297.jpg',NULL,NULL,NULL,NULL,NULL,'蛋糕','三只松鼠',0,NULL),(35,'【三只松鼠_乳酸菌小伴侣面包520gx2箱】营养早餐口袋蛋糕零食',49.9,'生产许可证编号：SC12432058301865产品标准号：GB/T 20981厂名：多鲜食品（昆山）有限公司厂址：江苏省苏州市昆山市淀山湖淀兴路108号 4-9号房厂家联系方式：400-800-4900配料表：小麦粉、水、酸奶味馅料（食用植物油、水、白砂糖、黄油、麦芽糊精、食用盐、食品添加剂（山梨糖醇、甘油、乙酰化双淀粉己二酸酯、羟丙基二淀粉磷酸酯、辛烯基琥珀酸淀粉钠、黄原胶、单，双甘油脂肪酸酯、食用香精、保质期：60 天食品添加剂：复配甜味剂（山梨糖醇液、水、麦芽糖醇）、乙酰化二淀粉磷酸酯、磷酸酯双淀粉、复配乳化剂等口味: 520gx2箱包装方式: 包装糕点种类: 西式糕点净含量: 1040g品牌: Three Squirrels/三只松鼠系列: 乳酸菌面包产地: 中国大陆省份: 江苏省',142797,65,'38bc34ed-296c-4bbe-a5e6-8a43cc959c02.jpg',NULL,NULL,NULL,NULL,NULL,'蛋糕','三只松鼠',0,NULL),(36,'【松鼠6周年】三只松鼠云石蛋糕700g/箱早餐营养蛋糕点心批发',32.9,'在网上超市买了很多东西了，比实体超市里的东西便宜，生产日期新鲜，品种也多，不用排队付款，更加不用自己拎着重物爬楼梯，开发票方便，快递员服务态度很好，每次送货前都会提前打电话通知，还会送到5楼。简直越来越离不开网上购物了，已经很久没进过超市了。',789,40,'b9954680-fbfe-4bb8-9653-bc89741310c7.jpg',NULL,NULL,NULL,NULL,NULL,'蛋糕','三只松鼠',0,NULL),(37,'【百草味-长崎蛋糕800g】网红零食早餐食品手撕小面包整箱蒸糕',39.9,'生产许可证编号：SC12444190006836产品标准号：GB/T 20977厂名：东莞市欣欣食品有限公司东坑分公司厂址：东莞市东坑镇角社村维智产业园第9栋4楼、5楼厂家联系方式：400-8810-118配料表：见包装储藏方法：置于阴凉干燥处保存，避免日晒保质期：90 天食品添加剂：见包装口味: 800g包装方式: 包装糕点种类: 长崎蛋糕净含量: 800g品牌: BE＆CHEERY/百草味系列: 长崎蛋糕800g产地: 中国大陆省份: 广东省',13325,45,'b2702e2f-2c49-4713-8086-d530bfb48ee0.jpg',NULL,NULL,NULL,NULL,NULL,'蛋糕','百草味',0,NULL),(38,'满减【百草味-华夫饼168g】早餐食品糕点心办公室甜点休闲零食',15.8,'产品参数：\r\n\r\n生产许可证编号：SC10844190001709产品标准号：GB/T 20977厂名：东莞市华美食品有限公司厂址：东莞市茶山镇南社管理区厂家联系方式：400-8810-118配料表：见包装储藏方法：置于阴凉干燥处保存保质期：180 天食品添加剂：见包装口味: 原味包装方式: 包装糕点种类: 华夫饼系列: 华夫饼168g净含量: 168g品牌: BE＆CHEERY/百草味系列: 华夫饼168g产地: 中国大陆省份: 广东省',132082,20,'3bed5167-6b7d-4e97-86d6-a9afba0e1561.jpg',NULL,NULL,NULL,NULL,NULL,'蛋糕','百草味',0,NULL),(39,'百草味元气吐司面包850g网红营养早餐切片夹心手撕蛋糕零食整箱',27.9,'生产许可证编号: SC12444190004599厂名: 东莞市乐盟食品有限公司厂址: 东莞市茶山镇伟建三路厂家联系方式: 400-881-0118配料表: 详见包装储藏方法: 贮存于低温干燥处，避免阳光保质期: 60食品添加剂: 详见包装口味: 吐司手撕面包850g/1箱 吐司手撕面包850g/2箱（已减9元包装方式: 包装净含量: 850g品牌: BE＆CHEERY/百草味系列: 吐司面包800g产地: 中国大陆省份: 广东省',1790,35,'038b83a4-00e4-4dcc-93f7-f35d8623e3c5.png',NULL,NULL,NULL,NULL,NULL,'蛋糕','百草味',0,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
