/*
Navicat MySQL Data Transfer

Source Server         : demo
Source Server Version : 50517
Source Host           : 192.168.31.190:3306
Source Database       : pro

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2018-05-30 10:12:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jiaose
-- ----------------------------
DROP TABLE IF EXISTS `jiaose`;
CREATE TABLE `jiaose` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `jsname` varchar(50) DEFAULT NULL,
  `jsbeizhu` varchar(50) DEFAULT NULL,
  `jsquanxian` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaose
-- ----------------------------
INSERT INTO `jiaose` VALUES ('11', '管理员11', '特殊权限', '1');
INSERT INTO `jiaose` VALUES ('12', '管理员12', '一般权限', '2');
INSERT INTO `jiaose` VALUES ('20', 'admin', '最高权限', '0');
INSERT INTO `jiaose` VALUES ('22', '采购经理', '负责管理所有采购员', '4');

-- ----------------------------
-- Table structure for quanxiansheding
-- ----------------------------
DROP TABLE IF EXISTS `quanxiansheding`;
CREATE TABLE `quanxiansheding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jsid` int(11) NOT NULL,
  `jsname` varchar(50) DEFAULT NULL,
  `qxid` int(11) NOT NULL,
  `qxname` varchar(50) DEFAULT NULL,
  `liulan` int(11) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quaniansheding_ibfk_1` (`jsid`),
  KEY `qxid` (`qxid`),
  CONSTRAINT `quanxiansheding_ibfk_1` FOREIGN KEY (`jsid`) REFERENCES `jiaose` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `quanxiansheding_ibfk_2` FOREIGN KEY (`qxid`) REFERENCES `xitongquanxian` (`xid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quanxiansheding
-- ----------------------------
INSERT INTO `quanxiansheding` VALUES ('1', '11', '管理员11', '1', '采购管理', '0', null);
INSERT INTO `quanxiansheding` VALUES ('2', '11', '管理员11', '2', '采购报价', '1', null);
INSERT INTO `quanxiansheding` VALUES ('3', '11', '管理员11', '3', '采购订单', '1', 'cgdingdan');
INSERT INTO `quanxiansheding` VALUES ('4', '11', '管理员11', '4', '仓库管理', '0', null);
INSERT INTO `quanxiansheding` VALUES ('5', '11', '管理员11', '5', '入库单', '0', null);
INSERT INTO `quanxiansheding` VALUES ('6', '11', '管理员11', '6', '采购退货', '0', null);
INSERT INTO `quanxiansheding` VALUES ('7', '11', '管理员11', '7', '出库单', '0', null);
INSERT INTO `quanxiansheding` VALUES ('8', '11', '管理员11', '8', '销售退货', '0', null);
INSERT INTO `quanxiansheding` VALUES ('12', '11', '管理员11', '12', '库存统计', '0', null);
INSERT INTO `quanxiansheding` VALUES ('13', '11', '管理员11', '13', '销售管理', '0', null);
INSERT INTO `quanxiansheding` VALUES ('14', '11', '管理员11', '14', '销售报价', '0', null);
INSERT INTO `quanxiansheding` VALUES ('15', '11', '管理员11', '15', '销售订单', '0', null);
INSERT INTO `quanxiansheding` VALUES ('16', '11', '管理员11', '16', '销售明细', '0', null);
INSERT INTO `quanxiansheding` VALUES ('17', '11', '管理员11', '17', '销售统计', '0', null);
INSERT INTO `quanxiansheding` VALUES ('18', '11', '管理员11', '18', '财务管理', '0', null);
INSERT INTO `quanxiansheding` VALUES ('20', '11', '管理员11', '20', '应付统计', '0', null);
INSERT INTO `quanxiansheding` VALUES ('21', '11', '管理员11', '21', '应收统计', '0', null);
INSERT INTO `quanxiansheding` VALUES ('22', '11', '管理员11', '22', '基础信息', '0', null);
INSERT INTO `quanxiansheding` VALUES ('37', '11', '管理员11', '23', '供应商信息', '1', null);
INSERT INTO `quanxiansheding` VALUES ('38', '11', '管理员11', '24', '客户信息', '1', null);
INSERT INTO `quanxiansheding` VALUES ('39', '11', '管理员11', '25', '员工信息', '1', null);
INSERT INTO `quanxiansheding` VALUES ('40', '11', '管理员11', '26', '商品信息', '1', 'spxinxi');
INSERT INTO `quanxiansheding` VALUES ('41', '11', '管理员11', '27', '系统设置', '0', null);
INSERT INTO `quanxiansheding` VALUES ('42', '11', '管理员11', '28', '用户管理', '1', 'yonghuaction');
INSERT INTO `quanxiansheding` VALUES ('43', '11', '管理员11', '29', '角色管理', '1', 'jiaose.jsp');
INSERT INTO `quanxiansheding` VALUES ('44', '11', '管理员11', '30', '系统权限管理', '0', 'quanxianshedingaction');
INSERT INTO `quanxiansheding` VALUES ('45', '12', '管理员12', '1', '采购管理', '1', null);
INSERT INTO `quanxiansheding` VALUES ('46', '12', '管理员12', '2', '采购报价', '0', null);
INSERT INTO `quanxiansheding` VALUES ('47', '12', '管理员12', '3', '采购订单', '1', 'cgdingdan');
INSERT INTO `quanxiansheding` VALUES ('48', '12', '管理员12', '4', '仓库管理', '0', null);
INSERT INTO `quanxiansheding` VALUES ('49', '12', '管理员12', '5', '入库单', '1', null);
INSERT INTO `quanxiansheding` VALUES ('50', '12', '管理员12', '6', '采购退货', '0', null);
INSERT INTO `quanxiansheding` VALUES ('51', '12', '管理员12', '7', '出库单', '0', null);
INSERT INTO `quanxiansheding` VALUES ('52', '12', '管理员12', '8', '销售退货', '1', null);
INSERT INTO `quanxiansheding` VALUES ('56', '12', '管理员12', '12', '库存统计', '1', null);
INSERT INTO `quanxiansheding` VALUES ('57', '12', '管理员12', '13', '销售管理', '1', null);
INSERT INTO `quanxiansheding` VALUES ('58', '12', '管理员12', '14', '销售报价', '0', null);
INSERT INTO `quanxiansheding` VALUES ('59', '12', '管理员12', '15', '销售订单', '1', null);
INSERT INTO `quanxiansheding` VALUES ('60', '12', '管理员12', '16', '销售明细', '0', null);
INSERT INTO `quanxiansheding` VALUES ('61', '12', '管理员12', '17', '销售统计', '1', null);
INSERT INTO `quanxiansheding` VALUES ('62', '12', '管理员12', '18', '财务管理', '0', null);
INSERT INTO `quanxiansheding` VALUES ('64', '12', '管理员12', '20', '应付统计', '0', null);
INSERT INTO `quanxiansheding` VALUES ('65', '12', '管理员12', '21', '应收统计', '1', null);
INSERT INTO `quanxiansheding` VALUES ('66', '12', '管理员12', '22', '基础信息', '1', null);
INSERT INTO `quanxiansheding` VALUES ('67', '12', '管理员12', '23', '供应商信息', '0', null);
INSERT INTO `quanxiansheding` VALUES ('68', '12', '管理员12', '24', '客户信息', '1', null);
INSERT INTO `quanxiansheding` VALUES ('69', '12', '管理员12', '25', '员工信息', '0', null);
INSERT INTO `quanxiansheding` VALUES ('70', '12', '管理员12', '26', '商品信息', '0', 'spxinxi');
INSERT INTO `quanxiansheding` VALUES ('71', '12', '管理员12', '27', '系统设置', '1', null);
INSERT INTO `quanxiansheding` VALUES ('72', '12', '管理员12', '28', '用户管理', '1', 'yonghuaction');
INSERT INTO `quanxiansheding` VALUES ('73', '12', '管理员12', '29', '角色管理', '0', 'jiaose.jsp');
INSERT INTO `quanxiansheding` VALUES ('74', '12', '管理员12', '30', '系统管理权限', '0', 'quanxianshedingaction');
INSERT INTO `quanxiansheding` VALUES ('231', '20', 'admin', '1', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('232', '20', 'admin', '2', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('233', '20', 'admin', '3', null, '1', 'cgdingdan');
INSERT INTO `quanxiansheding` VALUES ('234', '20', 'admin', '4', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('235', '20', 'admin', '5', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('236', '20', 'admin', '6', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('237', '20', 'admin', '7', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('238', '20', 'admin', '8', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('239', '20', 'admin', '12', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('240', '20', 'admin', '13', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('241', '20', 'admin', '14', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('242', '20', 'admin', '15', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('243', '20', 'admin', '16', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('244', '20', 'admin', '17', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('245', '20', 'admin', '18', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('246', '20', 'admin', '20', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('247', '20', 'admin', '21', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('248', '20', 'admin', '22', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('249', '20', 'admin', '23', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('250', '20', 'admin', '24', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('251', '20', 'admin', '25', null, '1', null);
INSERT INTO `quanxiansheding` VALUES ('252', '20', 'admin', '26', null, '1', 'spxinxi');
INSERT INTO `quanxiansheding` VALUES ('253', '20', 'admin', '27', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('254', '20', 'admin', '28', null, '1', 'yonghuaction');
INSERT INTO `quanxiansheding` VALUES ('255', '20', 'admin', '29', null, '1', 'jiaose.jsp');
INSERT INTO `quanxiansheding` VALUES ('256', '20', 'admin', '30', null, '1', 'quanxianshedingaction');
INSERT INTO `quanxiansheding` VALUES ('288', '22', '采购经理', '1', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('289', '22', '采购经理', '2', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('290', '22', '采购经理', '3', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('291', '22', '采购经理', '4', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('292', '22', '采购经理', '5', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('293', '22', '采购经理', '6', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('294', '22', '采购经理', '7', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('295', '22', '采购经理', '8', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('296', '22', '采购经理', '12', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('297', '22', '采购经理', '13', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('298', '22', '采购经理', '14', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('299', '22', '采购经理', '15', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('300', '22', '采购经理', '16', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('301', '22', '采购经理', '17', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('302', '22', '采购经理', '18', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('303', '22', '采购经理', '20', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('304', '22', '采购经理', '21', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('305', '22', '采购经理', '22', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('306', '22', '采购经理', '23', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('307', '22', '采购经理', '24', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('308', '22', '采购经理', '25', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('309', '22', '采购经理', '26', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('310', '22', '采购经理', '27', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('311', '22', '采购经理', '28', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('312', '22', '采购经理', '29', null, '0', null);
INSERT INTO `quanxiansheding` VALUES ('313', '22', '采购经理', '30', null, '0', null);

-- ----------------------------
-- Table structure for shangpinleibie
-- ----------------------------
DROP TABLE IF EXISTS `shangpinleibie`;
CREATE TABLE `shangpinleibie` (
  `splbid` int(11) NOT NULL AUTO_INCREMENT,
  `splbmc` varchar(50) DEFAULT NULL,
  `splbshangjiid` int(11) DEFAULT NULL,
  PRIMARY KEY (`splbid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shangpinleibie
-- ----------------------------
INSERT INTO `shangpinleibie` VALUES ('1', '大类别1', '0');
INSERT INTO `shangpinleibie` VALUES ('2', '大类别2', '0');
INSERT INTO `shangpinleibie` VALUES ('3', '大类别3', '0');
INSERT INTO `shangpinleibie` VALUES ('4', '大1-小1', '1');
INSERT INTO `shangpinleibie` VALUES ('5', '大1-小2', '1');
INSERT INTO `shangpinleibie` VALUES ('6', '大2-小1', '2');
INSERT INTO `shangpinleibie` VALUES ('7', '大2-小2', '2');
INSERT INTO `shangpinleibie` VALUES ('8', '大2-小3', '2');
INSERT INTO `shangpinleibie` VALUES ('9', '大3-小1', '3');
INSERT INTO `shangpinleibie` VALUES ('10', '大3-小2', '3');

-- ----------------------------
-- Table structure for shangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi` (
  `spid` int(11) NOT NULL AUTO_INCREMENT,
  `sptiaoma` int(11) DEFAULT NULL,
  `spmingcheng` varchar(50) DEFAULT NULL,
  `suoshuleibie` varchar(50) DEFAULT NULL,
  `suoshuleibieid` int(11) DEFAULT NULL,
  `yanse` varchar(50) DEFAULT NULL,
  `cankaochengbenjia` decimal(11,2) DEFAULT NULL,
  `cankaoshoujia` decimal(11,2) DEFAULT NULL,
  `dangqiankucun` int(11) DEFAULT NULL,
  `kucunzonge` int(11) DEFAULT NULL,
  PRIMARY KEY (`spid`),
  KEY `suoshuleibieid` (`suoshuleibieid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES ('1', '123123', '大1-小1-商品1', '大类1-小类1', '4', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('2', '12123213', '大1-小1-商品2', '大类1-小类1', '4', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('3', '213123123', '大1-小1-商品3', '小类1-小类1', '4', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('4', '123213', '大1-小2-商品1', '大类1-小类2', '5', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('5', '123213', '大1-小2-商品2', '大类1-小类2', '5', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('6', '123123', '大1-小2-商品2', '大类1-小类2', '5', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('7', '23123', '大2-小1-商品1', '大类2-小类1', '6', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('8', '3123', '大2-小1-商品2', '大类2-小类1', '6', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('9', '3123', '大2-小2-商品1', '大类2-小类2', '7', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('10', '23213', '大2-小2-商品2', '大类2-小类2', '7', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('11', '321321312', '大2-小3-商品1', '大类2-小类3', '8', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('12', '312321312', '大3-小1-商品1', '大类3-小类1', '9', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('13', '1232132132', '大3-小1-商品2', '大类3-小类1', '9', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('14', '312321321', '大3-小2-商品1', '大类3-小类2', '10', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('15', '3213213', '大3-小2-商品2', '大类3-小类2', '10', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('16', '6516531', '大3-小2-商品3', '大类3-小类2', '10', '绿色', '20.00', '40.00', '25', '95');
INSERT INTO `shangpinxinxi` VALUES ('17', '951321', '大3-小2-商品3', '大类3-小类2', '10', '绿色', '20.00', '40.00', '25', '95');

-- ----------------------------
-- Table structure for testh
-- ----------------------------
DROP TABLE IF EXISTS `testh`;
CREATE TABLE `testh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testh
-- ----------------------------
INSERT INTO `testh` VALUES ('1', 'zhangsan', '18');

-- ----------------------------
-- Table structure for xitongquanxian
-- ----------------------------
DROP TABLE IF EXISTS `xitongquanxian`;
CREATE TABLE `xitongquanxian` (
  `xid` int(11) NOT NULL AUTO_INCREMENT,
  `qxname` varchar(50) DEFAULT NULL,
  `sjid` int(11) DEFAULT NULL,
  PRIMARY KEY (`xid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xitongquanxian
-- ----------------------------
INSERT INTO `xitongquanxian` VALUES ('1', '采购管理', '0');
INSERT INTO `xitongquanxian` VALUES ('2', '采购报价', '1');
INSERT INTO `xitongquanxian` VALUES ('3', '采购订单', '1');
INSERT INTO `xitongquanxian` VALUES ('4', '仓库管理', '0');
INSERT INTO `xitongquanxian` VALUES ('5', '入库单', '4');
INSERT INTO `xitongquanxian` VALUES ('6', '采购退货', '4');
INSERT INTO `xitongquanxian` VALUES ('7', '出库单', '4');
INSERT INTO `xitongquanxian` VALUES ('8', '销售退货', '4');
INSERT INTO `xitongquanxian` VALUES ('12', '库存统计', '4');
INSERT INTO `xitongquanxian` VALUES ('13', '销售管理', '0');
INSERT INTO `xitongquanxian` VALUES ('14', '销售报价', '13');
INSERT INTO `xitongquanxian` VALUES ('15', '销售订单 ', '13');
INSERT INTO `xitongquanxian` VALUES ('16', '销售明细', '13');
INSERT INTO `xitongquanxian` VALUES ('17', '销售统计', '13');
INSERT INTO `xitongquanxian` VALUES ('18', '财务管理', '0');
INSERT INTO `xitongquanxian` VALUES ('20', '应付统计', '18');
INSERT INTO `xitongquanxian` VALUES ('21', '应收统计', '18');
INSERT INTO `xitongquanxian` VALUES ('22', '基础信息', '0');
INSERT INTO `xitongquanxian` VALUES ('23', '供应商信息', '22');
INSERT INTO `xitongquanxian` VALUES ('24', '客户信息', '22');
INSERT INTO `xitongquanxian` VALUES ('25', '员工信息', '22');
INSERT INTO `xitongquanxian` VALUES ('26', '商品信息', '22');
INSERT INTO `xitongquanxian` VALUES ('27', '系统设置', '0');
INSERT INTO `xitongquanxian` VALUES ('28', '用户管理', '27');
INSERT INTO `xitongquanxian` VALUES ('29', '角色管理', '27');
INSERT INTO `xitongquanxian` VALUES ('30', '系统管理权限', '27');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `yid` int(11) NOT NULL AUTO_INCREMENT,
  `yname` varchar(50) DEFAULT NULL,
  `ypwd` varchar(50) DEFAULT NULL,
  `ybeizhu` varchar(500) DEFAULT NULL,
  `yjsid` int(11) NOT NULL,
  PRIMARY KEY (`yid`),
  KEY `yonghu_ibfk_1` (`yjsid`),
  CONSTRAINT `yonghu_ibfk_1` FOREIGN KEY (`yjsid`) REFERENCES `jiaose` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('14', '小王', '666', '采购经理', '22');
INSERT INTO `yonghu` VALUES ('17', 'admin', '888888', '最高管理员', '20');
INSERT INTO `yonghu` VALUES ('21', '小李', '123456', '管理员', '11');
INSERT INTO `yonghu` VALUES ('22', '张经理', '888888', '最高管理员', '11');

-- ----------------------------
-- View structure for quanxianliebiao
-- ----------------------------
DROP VIEW IF EXISTS `quanxianliebiao`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER  VIEW `quanxianliebiao` AS select
  `quanxiansheding`.`id`     AS `jsqxid`,
  `quanxiansheding`.`qxid`   AS `xiongtongquanxianid`,
  `quanxiansheding`.`jsid`   AS `jsid`,
  `quanxiansheding`.`jsname` AS `jsname`,
  `xitongquanxian`.`qxname`  AS `xtmingcheng`,
  `xitongquanxian`.`sjid`    AS `shangjiid`,
  `quanxiansheding`.`liulan` AS `liulan`,
  quanxiansheding.`url`      as  url
from ((`quanxiansheding`
    join `jiaose`
      on ((`jiaose`.`id` = `quanxiansheding`.`jsid`)))
   join `xitongquanxian`
     on ((`xitongquanxian`.`xid` = `quanxiansheding`.`qxid`))) ;

-- ----------------------------
-- View structure for v_shangpinxinxi
-- ----------------------------
DROP VIEW IF EXISTS `v_shangpinxinxi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER  VIEW `v_shangpinxinxi` AS select
  `shangpinxinxi`.`spid`              AS `spid`,
  `shangpinxinxi`.`sptiaoma`          AS `sptiaoma`,
  `shangpinxinxi`.`yanse`             AS `yanse`,
  `shangpinxinxi`.`cankaochengbenjia` AS `chengbenjia`,
  `shangpinxinxi`.`cankaoshoujia`     AS `cankaoshoujia`,
  `shangpinxinxi`.`dangqiankucun`     AS `dangqiankucun`,
  `shangpinxinxi`.`kucunzonge`        AS `kucunzonge`,
  `shangpinxinxi`.`spmingcheng`       AS `spname`,
   shangpinleibie.`splbmc`            as  leibiemingcheng,
  `shangpinxinxi`.`suoshuleibieid`    AS `xiaoleiid`,
  `shangpinleibie`.`splbshangjiid`    AS `daleiid`
from (`shangpinxinxi`
   join `shangpinleibie`
     on ((`shangpinxinxi`.`suoshuleibieid` = `shangpinleibie`.`splbid`))) ;

-- ----------------------------
-- View structure for v_yonghuliebiao
-- ----------------------------
DROP VIEW IF EXISTS `v_yonghuliebiao`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%`  VIEW `v_yonghuliebiao` AS select 
yonghu.yid as yid,
yonghu.yname as yname,
yonghu.ypwd as ypwd,
yonghu.ybeizhu as ybeizhu,
yonghu.yjsid as yjsid,
jiaose.jsname as jsname
from yonghu 
	join  jiaose
			on yonghu.yjsid=jiaose.id ;
