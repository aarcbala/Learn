/*
MySQL Backup
Source Server Version: 5.6.24
Source Database: sun
Date: 2015/6/30 00:09:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `cmdb`
-- ----------------------------
DROP TABLE IF EXISTS `cmdb`;
CREATE TABLE `cmdb` (
  `id` bigint(20) DEFAULT NULL,
  `server` longtext,
  `memory` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tupian`
-- ----------------------------
DROP TABLE IF EXISTS `tupian`;
CREATE TABLE `tupian` (
  `id` bigint(20) DEFAULT NULL,
  `pather` longtext,
  `namery` longtext,
  `node_id` bigint(20) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `cname` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `cmdb` VALUES ('2','b','1'), ('3','c','3'), ('4','d','4'), ('5','e','6'), ('6','g','1'), ('6','g','1'), ('6','g','1'), ('6','g','1'), ('6','g','1');
INSERT INTO `tupian` VALUES ('1','http://www.gdbeileshu.com/img/aHR0cDovL2ltZy53YWxsYmEuY29tL2RhdGEvSW1hZ2UvMjAxMi82eXVlLzYtMTkveXNiei95czA2MTkvMTQvMjAxMjYxOTEwNTgyNjY1Ni5qcGc=.jpg','Angelababy','3','6000','逗比王者'), ('2','http://p0.qhimg.com/t0152fe70535efe85bb.jpg','DengChao','4','5000','逗比骑士'), ('3','http://i2.hunantv.com/p1/20131217/1504313798.jpg','ZhengKai','1','3000','逗比孩子'), ('4','http://www.pp3.cn/uploads/201501/2015012508.jpg','ChenHe','2','4000','逗比队友'), ('5','http://www.tianzhilou.com/kxl/jdms/img/attachement/jpg/site22/20130125/00241dbb2e6f126c9af004.jpg','WangZhulan','0','3000',NULL), ('6','http://d.3987.com/baobeie_150525/002.jpg','BaoBeier','6','2000',NULL), ('7','http://pic.4j4j.cn/upload/pic/20130913/068c90813a.jpg','LiChen','7','2000',NULL), ('8','http://img1c.xgo-img.com.cn/pics/1545/1544698.jpg','LiuYan','8',NULL,NULL), ('9','http://d.hiphotos.baidu.com/zhidao/pic/item/8601a18b87d6277f75312e952a381f30e924fc78.jpg','FanBingbing','9',NULL,NULL);
