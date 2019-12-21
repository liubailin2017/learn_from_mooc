/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : myfood02

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2014-06-06 13:37:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `areacode`
-- ----------------------------
DROP TABLE IF EXISTS `areacode`;
CREATE TABLE `areacode` (
  `ID` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `NAME` varchar(50) DEFAULT NULL,
  `NOTES` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=529 DEFAULT CHARSET=utf8 COMMENT='城市区域编码表AREACODE';

-- ----------------------------
-- Records of areacode
-- ----------------------------
INSERT INTO `areacode` VALUES ('511', '武侯区', '武侯区');
INSERT INTO `areacode` VALUES ('512', '金牛区', '金牛区');
INSERT INTO `areacode` VALUES ('513', '锦江区', '锦江区');
INSERT INTO `areacode` VALUES ('514', '青羊区', '青羊区');
INSERT INTO `areacode` VALUES ('515', '成华区', '成华区');
INSERT INTO `areacode` VALUES ('516', '双流县', '双流县');
INSERT INTO `areacode` VALUES ('517', '近郊', '近郊');
INSERT INTO `areacode` VALUES ('518', '华阳', '华阳');
INSERT INTO `areacode` VALUES ('519', '新都区', '新都区');
INSERT INTO `areacode` VALUES ('520', '龙泉驿区', '龙泉驿区');
INSERT INTO `areacode` VALUES ('521', '都江堰市', '都江堰市');
INSERT INTO `areacode` VALUES ('522', '大邑县', '大邑县');
INSERT INTO `areacode` VALUES ('523', '温江区', '温江区');
INSERT INTO `areacode` VALUES ('524', '郫县', '郫县');
INSERT INTO `areacode` VALUES ('525', '新津县', '新津县');
INSERT INTO `areacode` VALUES ('526', '青白江区', '青白江区');
INSERT INTO `areacode` VALUES ('527', '蒲江县', '蒲江县');
INSERT INTO `areacode` VALUES ('528', '彭州市', '彭州市');

-- ----------------------------
-- Table structure for `coupons`
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `ID` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `DASHID` bigint(30) DEFAULT NULL COMMENT '餐厅主键ID',
  `CODE` varchar(50) DEFAULT NULL COMMENT '优惠券编号',
  `NAME` varchar(200) DEFAULT NULL COMMENT '优惠券名称',
  `STARTTIME` datetime DEFAULT NULL COMMENT '使用开始时间',
  `ENDTIME` datetime DEFAULT NULL COMMENT '使用结束时间',
  `TOTALCOUNT` int(11) DEFAULT NULL,
  `USEDCOUNT` int(11) DEFAULT NULL,
  `AMOUNT` decimal(18,2) DEFAULT NULL COMMENT '金额',
  `NOTES` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`),
  KEY `DASHID` (`DASHID`),
  CONSTRAINT `coupons_ibfk_1` FOREIGN KEY (`DASHID`) REFERENCES `dash` (`DASHID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='优惠券表COUPONS';

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES ('4', '100', '优惠券', '三只耳火锅倪家桥总店优惠券', '2014-04-05 17:15:58', null, '156', '0', '25.00', '三只耳火锅倪家桥总店优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('5', '101', '优惠券', '彼德西餐厅(科华店)优惠券', '2014-04-05 17:18:26', null, '156', '0', '25.00', '彼德西餐厅(科华店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('6', '102', '优惠券', '锅锅香(科华北路店)优惠券', '2014-04-05 17:18:31', null, '156', '0', '25.00', '锅锅香(科华北路店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('7', '134', '优惠券', '唯一唯爱哲学故事酒馆优惠券', '2014-04-05 17:18:36', null, '156', '0', '25.00', '唯一唯爱哲学故事酒馆优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('8', '135', '优惠券', '意厨食铺优惠券', '2014-04-05 17:18:56', null, '156', '-2', '25.00', '意厨食铺优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('9', '136', '优惠券', '比萨小子优惠券', '2014-04-05 17:19:00', null, '156', '0', '25.00', '比萨小子优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('10', '137', '优惠券', '加豪加西餐厅(春熙路店)优惠券', '2014-04-05 17:19:23', null, '156', '0', '25.00', '加豪加西餐厅(春熙路店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('11', '138', '优惠券', '皇家经典休闲会所优惠券', '2014-04-05 17:19:27', null, '156', '0', '25.00', '皇家经典休闲会所优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('12', '139', '优惠券', 'Nova西餐厅优惠券', '2014-04-05 17:19:33', null, '156', '0', '25.00', 'Nova西餐厅优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('13', '140', '优惠券', '加豪加西餐厅(都江堰天和店)优惠券', '2014-04-05 17:19:37', null, '156', '0', '25.00', '加豪加西餐厅(都江堰天和店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('14', '141', '优惠券', '廖记串串香优惠券', '2014-04-05 17:19:40', null, '156', '0', '25.00', '廖记串串香优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('15', '142', '优惠券', '江湖味道火锅优惠券', '2014-04-05 17:19:45', null, '156', '0', '25.00', '江湖味道火锅优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('16', '143', '优惠券', '绿豆养生汤锅优惠券', '2014-04-05 17:19:50', null, '156', '0', '25.00', '绿豆养生汤锅优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('17', '144', '优惠券', '天赐香厨优惠券', '2014-04-05 17:19:54', null, '156', '0', '25.00', '天赐香厨优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('18', '145', '优惠券', '牛魔王优惠券', '2014-04-05 17:19:58', null, '156', '0', '25.00', '牛魔王优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('19', '146', '优惠券', '冒牌火锅菜(黉门店)优惠券', '2014-04-05 17:20:02', null, '156', '0', '25.00', '冒牌火锅菜(黉门店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('20', '147', '优惠券', '凤姐火锅粉优惠券', '2014-04-05 17:20:06', null, '156', '0', '25.00', '凤姐火锅粉优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('21', '148', '优惠券', '宏油庄火锅菜群星路店优惠券', '2014-04-05 17:20:09', null, '156', '0', '25.00', '宏油庄火锅菜群星路店优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('22', '149', '优惠券', '竹篓香冒菜馆优惠券', '2014-04-05 17:20:12', null, '156', '0', '25.00', '竹篓香冒菜馆优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('23', '150', '优惠券', '何姐冒菜优惠券', '2014-04-05 17:20:16', null, '156', '0', '25.00', '何姐冒菜优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('24', '211', '优惠券', '芙蓉谢记火锅(书院店)优惠券', '2014-04-05 17:20:19', null, '156', '0', '25.00', '芙蓉谢记火锅(书院店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('25', '212', '优惠券', '石堂优惠券', '2014-04-05 17:20:23', null, '156', '0', '25.00', '石堂优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('26', '213', '优惠券', '顺水鱼馆十陵店优惠券', '2014-04-05 17:20:28', null, '156', '0', '25.00', '顺水鱼馆十陵店优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('27', '214', '优惠券', '蜀中吴(环球中心店)优惠券', '2014-04-05 17:20:31', null, '156', '0', '25.00', '蜀中吴(环球中心店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('28', '215', '优惠券', '巴国布衣(环球中心店)优惠券', '2014-04-05 17:20:34', null, '156', '0', '25.00', '巴国布衣(环球中心店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('29', '216', '优惠券', '老石人鲜鱼坊优惠券', '2014-04-05 17:20:41', null, '156', '0', '25.00', '老石人鲜鱼坊优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('30', '217', '优惠券', '新湘记优惠券', '2014-04-05 17:20:48', null, '156', '0', '25.00', '新湘记优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('31', '218', '优惠券', '川西元素(犀浦店)优惠券', '2014-04-05 17:20:51', null, '156', '0', '25.00', '川西元素(犀浦店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('32', '219', '优惠券', '郑连锅(置信路店)优惠券', '2014-04-05 17:20:55', null, '156', '0', '25.00', '郑连锅(置信路店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('33', '220', '优惠券', '好渔翁火锅优惠券', '2014-04-05 17:20:59', null, '156', '0', '25.00', '好渔翁火锅优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('34', '221', '优惠券', '千味涮(九方店)优惠券', '2014-04-05 17:21:02', null, '156', '0', '25.00', '千味涮(九方店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('35', '222', '优惠券', '老城南飘香耗儿鱼优惠券', '2014-04-05 17:21:05', null, '156', '0', '25.00', '老城南飘香耗儿鱼优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('36', '223', '优惠券', '青龙食府优惠券', '2014-04-05 17:21:11', null, '156', '0', '25.00', '青龙食府优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('37', '224', '优惠券', '妈妈稼餐厅优惠券', '2014-04-05 17:21:14', null, '156', '0', '25.00', '妈妈稼餐厅优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('38', '225', '优惠券', '山海捞优惠券', '2014-04-05 17:21:18', null, '156', '0', '25.00', '山海捞优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('39', '226', '优惠券', '重庆小天鹅火锅(优品道店)优惠券', '2014-04-05 17:21:21', null, '156', '0', '25.00', '重庆小天鹅火锅(优品道店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('40', '227', '优惠券', '千味涮(万象城店)优惠券', '2014-04-05 17:21:26', null, '156', '0', '25.00', '千味涮(万象城店)优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('41', '228', '优惠券', '普汉斯滋滋干锅烤鱼优惠券', '2014-04-05 17:21:31', null, '156', '0', '25.00', '普汉斯滋滋干锅烤鱼优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('42', '229', '优惠券', '锦蝶壹品粥道优惠券', '2014-04-05 17:21:36', null, '156', '0', '25.00', '锦蝶壹品粥道优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');
INSERT INTO `coupons` VALUES ('43', '230', '优惠券', '重庆龍蜀黍火锅优惠券', '2014-04-05 17:21:41', null, '156', '0', '25.00', '重庆龍蜀黍火锅优惠券数量有限,欢迎大家抢购,保证你满意！！！！！');

-- ----------------------------
-- Table structure for `dash`
-- ----------------------------
DROP TABLE IF EXISTS `dash`;
CREATE TABLE `dash` (
  `DASHID` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '餐厅ID',
  `CATEGORY` varchar(200) DEFAULT NULL COMMENT '餐厅类别',
  `AID` bigint(30) DEFAULT NULL COMMENT '城市区域编码主键ID',
  `POI` varchar(100) DEFAULT NULL COMMENT '餐厅POI的唯一标示',
  `NAME` varchar(100) DEFAULT NULL COMMENT '餐厅名字',
  `LONGITUDE` varchar(50) DEFAULT NULL COMMENT '餐厅经度值',
  `LATITUDE` varchar(50) DEFAULT NULL COMMENT '餐厅纬度值',
  `ADDRESS` varchar(500) DEFAULT NULL COMMENT '餐厅地址信息',
  `TELPHONE` varchar(200) DEFAULT NULL COMMENT '餐厅电话信息',
  `SGROUP` char(1) DEFAULT NULL COMMENT '餐厅是否支持团购(Y:支持团购,N:不支持团购)',
  `GEOHASH` varchar(50) DEFAULT NULL COMMENT 'GeoHash编码',
  PRIMARY KEY (`DASHID`),
  KEY `AID` (`AID`),
  CONSTRAINT `dash_ibfk_1` FOREIGN KEY (`AID`) REFERENCES `areacode` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COMMENT='餐厅表一级数据表DASH';

-- ----------------------------
-- Records of dash
-- ----------------------------
INSERT INTO `dash` VALUES ('100', '美食', '511', '3f9337d61e26e0aaf7231058', '三只耳火锅倪家桥总店', '104.06737', '30.630842', '成都武侯区九眼桥群众路69号附1-2号', '(028)83322332', 'Y', 'wm6n205t96z3');
INSERT INTO `dash` VALUES ('101', '美食', '511', '3c0ea7c524662b85fbf0cb76', '彼德西餐厅(科华店)', '104.083221', '30.633499', '武侯区科华北路117号(四川大学西门旁)', null, 'Y', 'wm6n22xj4f4e');
INSERT INTO `dash` VALUES ('102', '美食', '511', 'fc76752455315d874e776e1d', '锅锅香(科华北路店)', '104.082115', '30.629879', '成都成华区建设北路二段4号电子科技大学一食堂', '(028)85232085', 'Y', 'wm6n0ryrcp61');
INSERT INTO `dash` VALUES ('131', '西餐', '512', '8fde79cc114432a695ca0745', '肯德基(羊西餐厅)', '104.02018', '30.699461', '四川省成都市金牛区蜀汉路347号', '(028)61998091', 'N', 'wm3yxh9jmf7f');
INSERT INTO `dash` VALUES ('132', '西餐', '513', '550fd5f9773b9b60921fc987', '米罗缤纷(顺城大街)', '104.07797', '30.662245', '四川省成都市锦江区盐市口商圈顺城大街2号', null, 'N', 'wm6n2mgk82xr');
INSERT INTO `dash` VALUES ('133', '西餐', '523', '5b6fe452c651e205ab175ab4', '如果家西餐厅', '103.833336', '30.689795', '四川省成都市温江区柳浪湾北二街229', '18653199520', 'N', 'wm3ydfcjh06y');
INSERT INTO `dash` VALUES ('134', '西餐', '520', '405f387783fe83eb3f9a5e2f', '唯一唯爱哲学故事酒馆', '104.33417', '30.643682', '四川省成都市龙泉驿区老街下街178号', '(028)88426477', 'Y', 'wm6nq4tb6k7g');
INSERT INTO `dash` VALUES ('135', '西餐', '513', '8cba4bb0817c109dad045716', '意厨食铺', '104.07275', '30.6623', '四川省成都市锦江区东御街18', '(028)62337019', 'Y', 'wm6n2jzkyg4b');
INSERT INTO `dash` VALUES ('136', '西餐', '511', '96b672aa7a8e3e6cce04ef1f', '比萨小子', '104.059555', '30.624434', '四川省成都市武侯区紫竹北街8号', '18981952058', 'Y', 'wm3ypzjb72k0');
INSERT INTO `dash` VALUES ('137', '西餐', '513', 'c1c09348471da94842d63ea8', '加豪加西餐厅(春熙路店)', '104.085266', '30.662027', '四川省成都市锦江区正科甲巷9号-附4号', '(028)86730835', 'Y', 'wm6n2tbe62pe');
INSERT INTO `dash` VALUES ('138', '西餐', '511', 'cdef4edf05eda55729d7abaa', '皇家经典休闲会所', '104.06313', '30.62183', '四川省成都市武侯区新光路10号', '(028)85122223', 'Y', 'wm6n0n83ndvg');
INSERT INTO `dash` VALUES ('139', '西餐', '514', '341c35de8b11f3a7e7073880', 'Nova西餐厅', '104.08652', '30.674406', '四川省成都市青羊区太升北路10号', '(028)86950016', 'Y', 'wm6n8817rewx');
INSERT INTO `dash` VALUES ('140', '西餐', '521', '4eb3b5335f21736c4302454c', '加豪加西餐厅(都江堰天和店)', '103.630905', '31.004', '四川省成都市都江堰市建设路151号', '(028)87139868', 'Y', 'wm98qhjerh7r');
INSERT INTO `dash` VALUES ('141', '火锅', '515', '6ae6298f3a6d7a22d4851f7c', '廖记串串香', '104.09841', '30.709335', '四川省成都市成华区洪山南路99号-附1', '13882167333', 'Y', 'wm6n8y6nufbq');
INSERT INTO `dash` VALUES ('142', '火锅', '523', '5328728303219b97eb12e45b', '江湖味道火锅', '103.78208', '30.75932', '四川省成都市温江区xn06', '18980505105', 'Y', 'wm3ycxef18zd');
INSERT INTO `dash` VALUES ('143', '火锅', '511', 'cea61b946330c2fc6f47605e', '绿豆养生汤锅', '103.99153', '30.628021', '四川省成都市武侯区武侯大道铁佛段1', '13540806669', 'Y', 'wm3ynrsm4kbv');
INSERT INTO `dash` VALUES ('144', '火锅', '523', '2ac95c1d721c0f27c9fa5f65', '天赐香厨', '103.84306', '30.693375', '四川省成都市温江区文府苑路67', '13881965765', 'Y', 'wm3ye581yev9');
INSERT INTO `dash` VALUES ('145', '火锅', '520', '3c9502df954e1c07c26c14a9', '牛魔王', '104.17489', '30.628456', '四川省成都市龙泉驿区洪河北路268', null, 'Y', 'wm6n4x9zdyh0');
INSERT INTO `dash` VALUES ('146', '火锅', '511', '680fb7039e9115858bb988c2', '冒牌火锅菜(黉门店)', '104.06888', '30.650711', '四川省成都市武侯区黉门街1号-附10号', '(028)85553818', 'Y', 'wm6n25u9kdtk');
INSERT INTO `dash` VALUES ('147', '火锅', '523', '847afe1bae06448935b06cd6', '凤姐火锅粉', '103.8457', '30.70439', '四川省成都市温江区赞元街45-附118', null, 'Y', 'wm3yejd4h1nh');
INSERT INTO `dash` VALUES ('148', '火锅', '512', 'eef2d528a7db5cbe3ae4a69a', '宏油庄火锅菜群星路店', '104.05638', '30.707644', '四川省成都市金牛区群星路7号-附29', '13880849597', 'Y', 'wm3yxy5scrsx');
INSERT INTO `dash` VALUES ('149', '火锅', '511', '504d6113c93e06aa475726b3', '竹篓香冒菜馆', '104.08936', '30.631596', '四川省成都市武侯区郭家桥北街4号-附1', '13739481935', 'Y', 'wm6n2879czk7');
INSERT INTO `dash` VALUES ('150', '火锅', '512', '4fa1973780bb75891ce99973', '何姐冒菜', '104.05004', '30.679483', '四川省成都市金牛区青羊北路88号-附4', null, 'Y', 'wm3yx9nbvwjh');
INSERT INTO `dash` VALUES ('151', '美食', '513', 'd82d6697c3bdb3bfd518b74f', '黄伞肺片东光分店', '104.106544', '30.623516', '四川省成都市锦江区东光街1号-附23', null, 'N', 'wm6n1nb4fm1s');
INSERT INTO `dash` VALUES ('152', '美食', '515', '75d0881a9c973b543a04b148', '永乐（电视塔店）', '104.10877', '30.667147', '四川省成都市成华区一环路东3段-196-、198-、200-、202号', '(028)81760875', 'N', 'wm6n3nc9n4t3');
INSERT INTO `dash` VALUES ('153', '美食', '513', 'bba87388ccb228b9bda822a9', '85℃(新世界百货店)', '104.07806', '30.66188', '四川省成都市锦江区上东大街段1号', '(028)86981392', 'N', 'wm6n2mg66sdq');
INSERT INTO `dash` VALUES ('154', '美食', '511', 'f2f15ffbc43a1691621c678f', '马得利蛋糕(玉林北路店)', '104.06516', '30.637701', '四川省成都市武侯区玉林北路5号-附9', '(028)85596408', 'N', 'wm6n213vtcrm');
INSERT INTO `dash` VALUES ('155', '美食', '513', '69fcd6df9b9b7636cb2915a2', '面包新语王府井店', '104.085594', '30.663969', '四川省成都市锦江区总府路15号', '(028)86619881', 'N', 'wm6n2w0yd4hh');
INSERT INTO `dash` VALUES ('156', '美食', '515', 'fd007c5e69486275a9f729b5', '好利来(SM广场店)', '104.11828', '30.674133', '四川省成都市成华区二环路东二段29号', '(028)84392322', 'N', 'wm6n9209gbbd');
INSERT INTO `dash` VALUES ('157', '美食', '513', 'e93761f647d9b115233bf289', '红星软香酥(双栅子街店)', '104.088905', '30.66702', '四川省成都市锦江区双栅子街60号', '18980003608', 'N', 'wm6n2wg0r6bg');
INSERT INTO `dash` VALUES ('158', '美食', '511', 'b388f9fdbb2fc258b25c6aae', '好利来(川大店)', '104.08745', '30.630592', '四川省成都市武侯区郭家桥北街5号-附47', '(028)85254006', 'N', 'wm6n284hjkhn');
INSERT INTO `dash` VALUES ('159', '美食', '511', 'd0b8923fd2da46fbb5f42f22', '浮力森林(高升桥北街)', '104.044136', '30.643364', '四川省成都市武侯区高升桥南街8-42号', '028-85088656', 'N', 'wm3yrd6ws14f');
INSERT INTO `dash` VALUES ('160', '美食', '513', 'c0460abbee77a15c48cc4abc', '签语谦寻(总府路店)', '104.088066', '30.666199', '四川省成都市锦江区梓潼桥正街45-6号', '15882198557', 'N', 'wm6n2wdee9z6');
INSERT INTO `dash` VALUES ('161', '美食', '515', '373cf757b3ab13774254d7b7', '廖排骨(经华北路)', '104.11318', '30.651262', '四川省成都市成华区经华北路1号', null, 'N', 'wm6n35uuscme');
INSERT INTO `dash` VALUES ('162', '美食', '511', 'cde9e2c7b3c2cfade91e9796', '青滩号子面双楠分店', '104.02664', '30.653337', '四川省成都市武侯区天乐街1号附25', '(028)87011286', 'N', 'wm3yrhmbskhv');
INSERT INTO `dash` VALUES ('163', '美食', '513', '3c0ea7c527682c85fbf0cb70', '闻酥园(大慈寺店)', '104.09154', '30.661158', '四川省成都市锦江区大慈寺路32号', '(028)86663225,(028)69686774', 'N', 'wm6n2ttnhwjg');
INSERT INTO `dash` VALUES ('164', '美食', '513', '6deee308e45ac37328fc48e5', '守屋寿司青石桥总店', '104.07896', '30.659254', '四川省成都市锦江区学道街113号-附7', '(028)86679529,(028)89555679', 'N', 'wm6n2m7gpe1m');
INSERT INTO `dash` VALUES ('165', '美食', '514', 'cc788fde8503ad9388fc0628', '秋叶屋寿司(泡桐树街)', '104.058586', '30.67258', '四川省成都市青羊区泡桐树街24号附8', '13550232181', 'N', 'wm3yrzv0sz3d');
INSERT INTO `dash` VALUES ('166', '美食', '513', '850815e17bb11e8243e192c9', '冒牌火锅菜(双栅子街店)', '104.088394', '30.666742', '四川省成都市锦江区双栅子街13号', '18628133797', 'N', 'wm6n2wdyer5c');
INSERT INTO `dash` VALUES ('167', '美食', '511', 'f9fd6062622d74060f0e6b2b', '巷子肥肠', '104.08202', '30.638376', '四川省成都市武侯区科华巷2号-附5号', '(028)85220956', 'N', 'wm6n23w1qz5p');
INSERT INTO `dash` VALUES ('168', '美食', '511', 'fd13a3f21e24eee3b1077d32', '重庆森林(川大店)', '104.08901', '30.631805', '四川省成都市武侯区郭家桥北街3号-附7', '(028)81255601', 'N', 'wm6n28771wr6');
INSERT INTO `dash` VALUES ('169', '美食', '515', '9ee392b8e442e458bbbd636b', '朱林世家(第五大道店)', '104.10966', '30.67568', '四川省成都市成华区第五大道4215-4216号', '(028)87664913', 'N', 'wm6n9066fcjn');
INSERT INTO `dash` VALUES ('170', '美食', '512', '803708f1027ff1600189726d', '跷脚牛肉', '104.05458', '30.676775', '四川省成都市金牛区西安北路65号', null, 'N', 'wm3yxbd1pmq6');
INSERT INTO `dash` VALUES ('171', '海鲜', '516', '5211d2195c5073417cc876ae', '韩太郎韩国海鲜自助烤肉吧（华阳家乐福店）', '104.078156', '30.509155', '四川省成都市双流县广东路', '(028)85661671', 'N', 'wm6j8652sy9y');
INSERT INTO `dash` VALUES ('172', '海鲜', '512', '49d9593883e1585ac71e519d', '周记耗儿鱼黄花鱼(成都总店)', '104.06207', '30.70967', '四川省成都市金牛区九里堤中路278', '(028)87634538', 'N', 'wm3yxyx8vcrm');
INSERT INTO `dash` VALUES ('173', '海鲜', '513', '61f634f6f8e1e4616a49f3ab', '海福星海鲜烧烤大排档', '104.10525', '30.641228', '四川省成都市锦江区莲花东路69号', '13688123239,13730666642', 'N', 'wm6n2fp4h4us');
INSERT INTO `dash` VALUES ('174', '海鲜', '511', '7524cb4ff1fbba3504026f27', '巴河渔府晋阳总店', '104.004776', '30.652817', '四川省成都市武侯区晋吉北路282号-附22号', '(028)66538829', 'N', 'wm3yqsjvwgjz');
INSERT INTO `dash` VALUES ('175', '海鲜', '512', '1eeed546b2d9e9ebb4147f9a', '豪虾传麻辣小龙虾(抚琴店)', '104.0455', '30.6821', '四川省成都市金牛区抚琴西南路4号-附1', '(028)88820588,15308085787', 'N', 'wm3yx9e85vgz');
INSERT INTO `dash` VALUES ('176', '海鲜', '511', 'bcaebff8ba089f4dc9e33c47', '如轩海鲜粥城成都店', '104.082726', '30.636366', '四川省成都市武侯区美领事馆美食区科华北路30号', '(028)85238798', 'N', 'wm6n23ntz299');
INSERT INTO `dash` VALUES ('177', '海鲜', '513', '6ed3083adbaa67ae2a3a9fa8', '逸活双鱼座海鲜私房料理', '104.0982', '30.62834', '四川省成都市锦江区国信路', '(028)86616911', 'N', 'wm6n0z9zpb7u');
INSERT INTO `dash` VALUES ('178', '海鲜', '514', 'ffae155eb4ca1b8429fc4830', '青石桥海鲜大排档', '104.03068', '30.657873', '四川省成都市青羊区大石西路86号a-102', '13608097283', 'N', 'wm3yrm0g499r');
INSERT INTO `dash` VALUES ('179', '海鲜', '511', '204b6509c25a818fcd04ef6c', '红树林花园餐厅', '104.0816', '30.562998', '四川省成都市武侯区世纪城路198号-附254号', '(028)84247677', 'N', 'wm6jb7vfm5cb');
INSERT INTO `dash` VALUES ('180', '海鲜', '513', '41572e00da2ff7adb45f1eca', '红太阳海鲜烧烤大排档', '104.07856', '30.659365', '四川省成都市锦江区青石桥中街8号-附7号', null, 'N', 'wm6n2m7ewpzh');
INSERT INTO `dash` VALUES ('181', '海鲜', '513', 'e116be5453f4d779c81b9586', '蓝天海鲜酒楼(青年路)', '104.07827', '30.663069', '四川省成都市锦江区青年路69号-附1号', '(028)86674178', 'N', 'wm6n2q53r6qg');
INSERT INTO `dash` VALUES ('182', '海鲜', '511', '519909565d616dd36f476075', '常胜鲍鱼', '104.033516', '30.61395', '四川省成都市武侯区新雅正街', '(028)85112827', 'N', 'wm3ypm4ghtgv');
INSERT INTO `dash` VALUES ('183', '海鲜', '511', '9727622ef75f531cc8213db7', '茶马古道海鲜烧烤吧', '104.0929', '30.64679', '四川省成都市武侯区太平巷13号附5号', null, 'N', 'wm6n2en4krez');
INSERT INTO `dash` VALUES ('184', '海鲜', '513', 'cb0788d5cbda99bf96ca07c1', '广东海鲜烧烤城', '104.10086', '30.646215', '四川省成都市锦江区宏顺街16', '(028)84526156', 'N', 'wm6n2fgzjue3');
INSERT INTO `dash` VALUES ('185', '海鲜', '511', '48441e7778fa4b940f0e6b53', '罗家大院啤酒广场', '103.991394', '30.645283', '四川省成都市武侯区潮音路62', '(028)87485569', 'N', 'wm3yq6u1xng9');
INSERT INTO `dash` VALUES ('186', '海鲜', '515', '09fbd34fe46ace872fe67b7c', '粥祥海鲜粥', '104.15742', '30.63402', '四川省成都市成华区万科北街2号', '(028)83508852', 'N', 'wm6n60v05g1r');
INSERT INTO `dash` VALUES ('187', '海鲜', '512', '0f1e2970ade9751c047ce842', '春业五七油焖大虾(一品天下店)', '104.02943', '30.69752', '四川省成都市金牛区一品天下大街149号', '(028)87645757,18375773914', 'N', 'wm3yxhrfj2mp');
INSERT INTO `dash` VALUES ('188', '海鲜', '514', '76374963461d27e238e4a6b3', '兰朵私房菜咖啡会所', '104.0114', '30.68589', '四川省成都市青羊区金阳路154号', '(028)87327833', 'N', 'wm3ywf4y323p');
INSERT INTO `dash` VALUES ('189', '海鲜', '513', '04a477406b57a886f7231035', '韩太郎韩国海鲜自助烤肉吧(双桥子店)', '104.11213', '30.65103', '四川省成都市锦江区水碾河路10号-附1号', '(028)81453717', 'N', 'wm6n35u5hqng');
INSERT INTO `dash` VALUES ('190', '海鲜', '511', 'f5e3bcaefe8dc6d85e17c347', '如轩海鲜粥城双楠店', '104.039764', '30.652422', '四川省成都市武侯区双元街107号-附5号-～6号', '(028)85067708', 'N', 'wm3yrkp7q1wg');
INSERT INTO `dash` VALUES ('191', '海鲜', '524', '8c19f4921d0ffaa843afe618', '龙记斑鱼庄', '103.94537', '30.781845', '四川省成都市郫县红光路7号', '(028)87903039', 'N', 'wm3zj7dtnxv9');
INSERT INTO `dash` VALUES ('192', '海鲜', '511', '08d7b04229691bd9770269f1', '金广阔自助海鲜烤肉', '104.0833', '30.633608', '四川省成都市武侯区科华北路115号', '(028)85939371', 'N', 'wm6n22xjswmt');
INSERT INTO `dash` VALUES ('193', '海鲜', '514', 'db1f39d49e035576f5c59c7b', '三国烤肉海鲜欢乐自助风(新城市广场店)', '104.06355', '30.679625', '四川省成都市青羊区西大街15', '(028)86277795', 'N', 'wm6n810cb2wg');
INSERT INTO `dash` VALUES ('194', '海鲜', '514', '3e9eb1d79637d84ea21de918', '醉烧刀百烤汇自助海鲜烤肉', '104.083954', '30.677263', '四川省成都市青羊区新开寺街37号', '(028)86532726,(028)86532726', 'N', 'wm6n82xs5bm3');
INSERT INTO `dash` VALUES ('195', '海鲜', '515', '1479c3d8133860a9a4c756b1', '网鱼网家网络会所', '104.11009', '30.674623', '四川省成都市成华区建设路29号-附8-9', null, 'N', 'wm6n904ssujt');
INSERT INTO `dash` VALUES ('196', '海鲜', '511', '643ebb792c6b64d1e115f9f7', '蜀甬阁河鲜海鲜馆', '104.08216', '30.614021', '四川省成都市武侯区科华南路10号-附8', '(028)85353777,(028)85355510', 'N', 'wm6n0mn7d55s');
INSERT INTO `dash` VALUES ('197', '海鲜', '514', '1eeed546b252e9ebb5147f0d', '欧湖岛海鲜酒楼', '104.06323', '30.679144', '四川省成都市青羊区西大街84号-附114', '(028)86259222', 'N', 'wm6n80bwcnbq');
INSERT INTO `dash` VALUES ('198', '海鲜', '513', 'b388f9fd8bedb258b35c6a68', '日韩海鲜烧烤', '104.08395', '30.661112', '四川省成都市锦江区春熙路东段-1号-附7', null, 'N', 'wm6n2mxtgvd3');
INSERT INTO `dash` VALUES ('199', '海鲜', '514', '341c35de82298ca7e70738f8', '卡布罗尔巴西烤肉海鲜自助', '104.015434', '30.678593', '四川省成都市青羊区清江中路52-3号', '(028)87371739', 'N', 'wm3ywbvez21p');
INSERT INTO `dash` VALUES ('200', '海鲜', '513', '3da907f36483f14ab220a886', '广东海鲜粥赛家店', '104.084694', '30.657532', '四川省成都市锦江区红星路4段-277号', '(028)86665579', 'N', 'wm6n2t01j4jj');
INSERT INTO `dash` VALUES ('201', '海鲜', '513', '2ca0e5a82e567c5302897271', '广东海鲜粥(天仙桥南路店)', '104.09037', '30.651985', '四川省成都市锦江区天仙桥南路6号-附2', '(028)86927692', 'N', 'wm6n2sh2c2jk');
INSERT INTO `dash` VALUES ('202', '海鲜', '514', '5990f57a78bd6a9ff4231061', '阿义海鲜砂锅粥', '104.01557', '30.670507', '四川省成都市青羊区光华村街66号-附19', '(028)81705358', 'N', 'wm3yqzmudkyk');
INSERT INTO `dash` VALUES ('203', '海鲜', '511', 'e2c734e402fe5c4415a190c6', '首膳海鲜酒楼', '104.06938', '30.600725', '四川省成都市武侯区天益街38号-4栋-附12号', '(028)85149668', 'N', 'wm6n04tn0kd4');
INSERT INTO `dash` VALUES ('204', '海鲜', '516', 'b1f5b4c2bf6c3bd50869d90f', '爱客得自助海鲜烤肉涮涮锅(航空港店)', '103.9894', '30.5728', '四川省成都市双流县临港路3段-9号', '(028)87703300,(028)87737755', 'N', 'wm3vymdg2wux');
INSERT INTO `dash` VALUES ('205', '海鲜', '515', '669d90646995a2612b11d1a3', '如轩海鲜粥城建设路店', '104.11462', '30.676394', '四川省成都市成华区建设路2号', '(028)84314388', 'N', 'wm6n90myyqr6');
INSERT INTO `dash` VALUES ('206', '海鲜', '511', 'ddc73de408478754912ca37a', '蜀甬阁河鲜海鲜馆', '104.08267', '30.614168', '四川省成都市武侯区科华南路10号-附3', '(028)85353777', 'N', 'wm6n0mnsmyxc');
INSERT INTO `dash` VALUES ('207', '海鲜', '513', '75a769cc5a6bc5e685420e30', '爱客得自助海鲜烤肉涮涮锅', '104.08368', '30.662743', '四川省成都市锦江区新街后巷子7号-附7', '(028)87711199', 'N', 'wm6n2mzrmt8f');
INSERT INTO `dash` VALUES ('208', '海鲜', '511', '108b1cea7d1974b53586f408', '鑫旺角海鲜粥城', '104.07828', '30.622149', '四川省成都市武侯区新希望路7号-附3号', '(028)85232108', 'N', 'wm6n0qe6zwq6');
INSERT INTO `dash` VALUES ('209', '海鲜', '514', '854d3520133ba7c8f5231044', '渔火', '104.047035', '30.663868', '四川省成都市青羊区一环路西1段-166号-附1', '(028)87719138', 'N', 'wm3yrwhtzxk3');
INSERT INTO `dash` VALUES ('210', '海鲜', '514', 'ea4a3dc90fc1e2374f5547bf', '烧刀海鲜烤肉自助', '104.07438', '30.663185', '四川省成都市青羊区东御街31号', '(028)86666671', 'N', 'wm6n2q09uzfr');
INSERT INTO `dash` VALUES ('211', '中餐', '513', 'd9e73b3892f71f351894c68e', '芙蓉谢记火锅(书院店)', '104.091354', '30.664186', '四川省成都市锦江区惜字宫南街3号', '13458606836', 'Y', 'wm6n2wjpb6e4');
INSERT INTO `dash` VALUES ('212', '中餐', '513', '65ddde6dffb7be0421f0179d', '石堂', '104.09864', '30.653158', '四川省成都市锦江区牛王庙巷16号', '(028)84420288', 'Y', 'wm6n2u4rd4gc');
INSERT INTO `dash` VALUES ('213', '中餐', '520', '3f900be3b7d0b7cd6e20b9d0', '顺水鱼馆十陵店', '104.18685', '30.656528', '四川省成都市龙泉驿区创业路1号', '(028)84603399', 'Y', 'wm6n6ufe1x40');
INSERT INTO `dash` VALUES ('214', '中餐', '511', 'a889ba5b4171c726bda2400a', '蜀中吴(环球中心店)', '104.06832', '30.577799', '四川省成都市武侯区锦悦西路', '(028)68730098', 'Y', 'wm6jbns0xdge');
INSERT INTO `dash` VALUES ('215', '中餐', '511', 'bb9622b212c45efffa0cad67', '巴国布衣(环球中心店)', '104.070946', '30.575443', '四川省成都市武侯区锦悦西路', '(028)68730339', 'Y', 'wm6jbnn4ug9v');
INSERT INTO `dash` VALUES ('216', '中餐', '524', 'a49a599cb9ddf924c72ba141', '老石人鲜鱼坊', '103.98434', '30.729136', '四川省成都市郫县绿茵街', '(028)87768865', 'Y', 'wm3yy4p44wps');
INSERT INTO `dash` VALUES ('217', '中餐', '514', '223e5e29ca860fea6ec02ca3', '新湘记', '104.07235', '30.663534', '四川省成都市青羊区蜀都大道', null, 'Y', 'wm6n2nphj909');
INSERT INTO `dash` VALUES ('218', '中餐', '524', '6deee308e5b8c47329fc48cb', '川西元素(犀浦店)', '103.978065', '30.754686', '四川省成都市郫县兴业南街187号', '(028)66870066', 'Y', 'wm3yyndx0908');
INSERT INTO `dash` VALUES ('219', '中餐', '511', 'cafed1db9ecbb4585d0d02f9', '郑连锅(置信路店)', '104.02246', '30.653679', '四川省成都市武侯区置信路57号附40', '(028)87030701', 'Y', 'wm3yrh6fe5bj');
INSERT INTO `dash` VALUES ('220', '中餐', '511', 'ebb6dc9ca42ec675f33cbaff', '好渔翁火锅', '104.09334', '30.64275', '四川省成都市武侯区太平南新街8号', '(028)85235389', 'Y', 'wm6n2dq6yweg');
INSERT INTO `dash` VALUES ('221', '中餐', '511', 'e3f8c4f103ee16ffd618b702', '千味涮(九方店)', '104.07096', '30.596397', '四川省成都市武侯区天晖路', '(028)85171135', 'Y', 'wm6n01yhvju1');
INSERT INTO `dash` VALUES ('222', '中餐', '511', '96d2eb5908bbf6d59122e05d', '老城南飘香耗儿鱼', '104.031494', '30.646542', '四川省成都市武侯区永盛东街1-4号', '(028)85577715', 'Y', 'wm3yr713j92r');
INSERT INTO `dash` VALUES ('223', '中餐', '516', '40ec2b29fc07d74eb75f1e59', '青龙食府', '104.06303', '30.537106', '四川省成都市双流县华府大道', '(028)62151234', 'Y', 'wm6j8p07s35h');
INSERT INTO `dash` VALUES ('224', '中餐', '511', '1e6197f2359b1b46aecb662b', '妈妈稼餐厅', '104.08048', '30.59918', '四川省成都市武侯区天久北巷174', '(028)85324584', 'Y', 'wm6n06mj4uwf');
INSERT INTO `dash` VALUES ('225', '中餐', '511', 'ad626d3b47f2bf8a2a02e1d7', '山海捞', '104.06887', '30.581863', '四川省成都市武侯区锦城大道', '(028)81711766', 'Y', 'wm6jbpk8k2my');
INSERT INTO `dash` VALUES ('226', '中餐', '514', 'b581e7f3fecf981c5fbe8608', '重庆小天鹅火锅(优品道店)', '104.0137', '30.668783', '四川省成都市青羊区青羊大道99号-附12', '(028)86261358', 'Y', 'wm3yqzh6wgs0');
INSERT INTO `dash` VALUES ('227', '中餐', '515', '3be122e1ae383c4b1ff74db8', '千味涮(万象城店)', '104.121666', '30.656124', '四川省成都市成华区双成二路33号', null, 'Y', 'wm6n3kg0fetq');
INSERT INTO `dash` VALUES ('228', '中餐', '524', 'b42edd21370c996c54bfff04', '普汉斯滋滋干锅烤鱼', '103.97904', '30.755556', '四川省成都市郫县兴业南街119号', '(028)80192809', 'Y', 'wm3yynghp5pt');
INSERT INTO `dash` VALUES ('229', '中餐', '513', '7547033af68cfc755cbe86ec', '锦蝶壹品粥道', '104.102325', '30.626678', '四川省成都市锦江区万达广场步行街3楼', '(028)86653078', 'Y', 'wm6n0zkvrfxd');
INSERT INTO `dash` VALUES ('230', '中餐', '513', '560529d7d003fdb36c47601a', '重庆龍蜀黍火锅', '104.103264', '30.629482', '四川省成都市锦江区三官堂街17号', '18190735295,(028)86926610', 'Y', 'wm6n0zvttv7c');

-- ----------------------------
-- Table structure for `dashcomment`
-- ----------------------------
DROP TABLE IF EXISTS `dashcomment`;
CREATE TABLE `dashcomment` (
  `ID` bigint(30) NOT NULL AUTO_INCREMENT,
  `DASHID` bigint(30) DEFAULT NULL COMMENT '餐厅ID',
  `UID` bigint(30) DEFAULT NULL COMMENT '会员ID',
  `LOGINNAME` varchar(100) DEFAULT NULL COMMENT '评论会员',
  `TIME` datetime DEFAULT NULL COMMENT '评论时间',
  `CONTENT` varchar(500) DEFAULT NULL COMMENT '评论内容',
  `TOTAL` float DEFAULT '0' COMMENT '总的评分',
  `TASTE` float DEFAULT '0' COMMENT '口味评分',
  `ENV` float DEFAULT '0' COMMENT '环境评分',
  `SERVICE` float DEFAULT '0' COMMENT '服务评分',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='餐厅评论表DASHCOMMENT';

-- ----------------------------
-- Records of dashcomment
-- ----------------------------
INSERT INTO `dashcomment` VALUES ('1', '100', '3', 'test0', '2014-04-16 13:58:05', '这家店打着绝城芋儿鸡的招牌，我也是因为绝城的这个招牌才去的。\r\n我只想说和之前其他分店的芋儿鸡 为什么差不别这么大？\r\n先不说味道，那个肉我真不晓得到底是不是兔肉，也不晓得是哪的肉，看起真的不像兔肉。\r\n味道嘛 没特色，就是麻。哎。。。无力吐槽，吃过最难吃的芋儿鸡，还没海椒市好吃街随便找一家的好吃，而且价钱也便宜。真的是一次失败的体验。\r\n我只想说和之前其他分店的芋儿鸡 为什么差不别这么大？\r\n先不说味道，那个肉我真不晓得到底是不是兔肉，也不晓得是哪的肉，看起真的不像兔肉。\r\n味道嘛 没特色，就是麻。哎。。。无力吐槽，吃过最难吃的芋儿鸡，还没海椒市好吃街随便找一家的好吃，而且价钱也便宜。真的是一次失败的体验。', '4', '0', '0', '0');
INSERT INTO `dashcomment` VALUES ('2', '100', '3', 'test1', '2014-04-07 13:58:58', '这家店打着绝城芋儿鸡的招牌，我也是因为绝城的这个招牌才去的。\r\n我只想说和之前其他分店的芋儿鸡 为什么差不别这么大？\r\n先不说味道，那个肉我真不晓得到底是不是兔肉，也不晓得是哪的肉，看起真的不像兔肉。\r\n味道嘛 没特色，就是麻。哎。。。无力吐槽，吃过最难吃的芋儿鸡，还没海椒市好吃街随便找一家的好吃，而且价钱也便宜。真的是一次失败的体验。', '4.5', '0', '0', '0');
INSERT INTO `dashcomment` VALUES ('3', '100', '3', 'test2', '2014-04-25 13:59:33', '这家店打着绝城芋儿鸡的招牌，我也是因为绝城的这个招牌才去的。\r\n我只想说和之前其他分店的芋儿鸡 为什么差不别这么大？\r\n先不说味道，那个肉我真不晓得到底是不是兔肉，也不晓得是哪的肉，看起真的不像兔肉。\r\n味道嘛 没特色，就是麻。哎。。。无力吐槽，吃过最难吃的芋儿鸡，还没海椒市好吃街随便找一家的好吃，而且价钱也便宜。真的是一次失败的体验。', '3.5', '0', '0', '0');
INSERT INTO `dashcomment` VALUES ('4', '100', '1', 'admin', '2014-04-19 18:15:46', '反反复复发', '5', '5', '5', '5');
INSERT INTO `dashcomment` VALUES ('5', '100', '1', 'admin', '2014-04-19 18:15:47', '反反复复发', '5', '5', '5', '5');
INSERT INTO `dashcomment` VALUES ('6', '100', '1', 'admin', '2014-04-19 18:37:42', '点点滴滴', '3', '4', '4', '4');
INSERT INTO `dashcomment` VALUES ('7', '100', '1', 'admin', '2014-04-19 18:39:51', '发', '3', '3', '3', '3');
INSERT INTO `dashcomment` VALUES ('8', '100', '1', 'admin', '2014-04-19 18:41:03', '哈哈哈哈', '3', '3', '3', '3');
INSERT INTO `dashcomment` VALUES ('9', '100', '1', 'admin', '2014-04-19 18:46:12', '用来自我也', '2', '2', '2', '2');
INSERT INTO `dashcomment` VALUES ('10', '100', '1', 'admin', '2014-04-19 18:46:57', '仿佛法规', '2', '2', '2', '0');
INSERT INTO `dashcomment` VALUES ('11', '100', '1', 'admin', '2014-04-19 18:47:37', '反反复复', '2', '2', '2', '2');
INSERT INTO `dashcomment` VALUES ('12', '100', '1', 'admin', '2014-04-19 18:49:31', '我去', '2', '2', '2', '2');
INSERT INTO `dashcomment` VALUES ('13', '100', '1', 'admin', '2014-04-19 18:50:19', '由于', '1', '1', '1', '1');
INSERT INTO `dashcomment` VALUES ('14', '100', '1', 'admin', '2014-04-20 19:39:56', '咯ill楼，喜欢吃胡咯工加', '3', '4', '4', '3');
INSERT INTO `dashcomment` VALUES ('15', '100', '1', 'admin', '2014-05-01 21:50:16', '根本离家近', '3', '3', '3', '3');
INSERT INTO `dashcomment` VALUES ('16', '100', '1', 'admin', '2014-05-01 21:52:12', '', '0', '0', '0', '0');
INSERT INTO `dashcomment` VALUES ('17', '100', '1', 'admin', '2014-05-02 11:27:49', '很高兴的哈', '3', '3', '3', '3');
INSERT INTO `dashcomment` VALUES ('18', '100', '1', 'admin', '2014-05-02 11:37:17', '旮旯饿了扣扣', '3', '3', '3', '5');
INSERT INTO `dashcomment` VALUES ('19', '100', '1', 'admin', '2014-05-02 11:44:01', '更垃圾啦', '3', '3', '3', '2');
INSERT INTO `dashcomment` VALUES ('20', '165', '4', '123', '2014-05-02 11:46:32', 'lol花木摩托', '3', '3', '2', '4');
INSERT INTO `dashcomment` VALUES ('21', '165', '4', '123', '2014-05-17 16:13:46', 'good', '3', '5', '5', '5');
INSERT INTO `dashcomment` VALUES ('22', '0', '4', '123', '2014-06-02 17:43:27', 'good food', '3', '3', '3', '3');
INSERT INTO `dashcomment` VALUES ('23', '0', '4', '123', '2014-06-02 17:46:10', '123', '2', '2', '2', '2');
INSERT INTO `dashcomment` VALUES ('24', '0', '4', '123', '2014-06-02 17:48:50', '123', '2', '2', '2', '2');
INSERT INTO `dashcomment` VALUES ('25', '0', '4', '123', '2014-06-02 17:59:17', '123', '2', '2', '2', '2');
INSERT INTO `dashcomment` VALUES ('26', '0', '4', '123', '2014-06-02 18:39:38', 'taste good', '4', '4', '4', '4');
INSERT INTO `dashcomment` VALUES ('27', '0', '4', '123', '2014-06-02 18:43:20', '123456', '3', '3', '3', '3');
INSERT INTO `dashcomment` VALUES ('28', '101', '4', '123', '2014-06-02 18:53:09', '123', '3', '3', '3', '3');
INSERT INTO `dashcomment` VALUES ('29', '101', '4', '123', '2014-06-02 18:53:55', 'good tasted', '5', '5', '5', '5');
INSERT INTO `dashcomment` VALUES ('30', '102', '4', '123', '2014-06-02 20:07:08', 'dfyyhb', '3', '3', '3', '3');

-- ----------------------------
-- Table structure for `dashpicture`
-- ----------------------------
DROP TABLE IF EXISTS `dashpicture`;
CREATE TABLE `dashpicture` (
  `ID` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `POI` varchar(100) DEFAULT NULL COMMENT '餐厅POI',
  `UID` bigint(30) DEFAULT NULL COMMENT '会员主键ID',
  `MEMBER` varchar(50) DEFAULT NULL COMMENT '上传会员',
  `TIME` datetime DEFAULT NULL COMMENT '上传时间',
  `PATH` varchar(200) DEFAULT NULL COMMENT '图片上传的路径',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COMMENT='餐厅图片信息表DASHPICTURE';

-- ----------------------------
-- Records of dashpicture
-- ----------------------------
INSERT INTO `dashpicture` VALUES ('1', '3f9337d61e26e0aaf7231058', null, null, '2014-03-25 13:00:51', '/dashImages/canting01/thumb01.jpg');
INSERT INTO `dashpicture` VALUES ('2', '3c0ea7c524662b85fbf0cb76', null, null, '2014-03-26 13:01:18', '/dashImages/canting02/thumb02.jpg');
INSERT INTO `dashpicture` VALUES ('3', 'fc76752455315d874e776e1d', null, null, '2014-03-26 13:01:29', '/dashImages/canting03/thumb03.jpg');
INSERT INTO `dashpicture` VALUES ('4', '3f9337d61e26e0aaf7231058', null, null, '2014-08-01 10:08:35', '/dashImages/3f9337d61e26e0aaf7231058/thumb6.jpg');
INSERT INTO `dashpicture` VALUES ('5', '3c0ea7c524662b85fbf0cb76', null, null, '2014-08-01 10:08:35', '/dashImages/3c0ea7c524662b85fbf0cb76/thumb5.jpg');
INSERT INTO `dashpicture` VALUES ('6', 'fc76752455315d874e776e1d', null, null, '2014-08-01 10:08:35', '/dashImages/fc76752455315d874e776e1d/thumb7.jpg');
INSERT INTO `dashpicture` VALUES ('7', '8fde79cc114432a695ca0745', null, null, '2014-08-01 10:08:35', '/dashImages/8fde79cc114432a695ca0745/thumb2.jpg');
INSERT INTO `dashpicture` VALUES ('8', '550fd5f9773b9b60921fc987', null, null, '2014-08-01 10:08:35', '/dashImages/550fd5f9773b9b60921fc987/1126111N0-0.jpg');
INSERT INTO `dashpicture` VALUES ('9', '5b6fe452c651e205ab175ab4', null, null, '2014-08-01 10:08:35', '/dashImages/5b6fe452c651e205ab175ab4/3522453192F-1.jpg');
INSERT INTO `dashpicture` VALUES ('10', '405f387783fe83eb3f9a5e2f', null, null, '2014-08-01 10:08:35', '/dashImages/405f387783fe83eb3f9a5e2f/thumb2.jpg');
INSERT INTO `dashpicture` VALUES ('11', '8cba4bb0817c109dad045716', null, null, '2014-08-01 10:08:35', '/dashImages/8cba4bb0817c109dad045716/201110261414512088.jpg');
INSERT INTO `dashpicture` VALUES ('12', '96b672aa7a8e3e6cce04ef1f', null, null, '2014-08-01 10:08:35', '/dashImages/96b672aa7a8e3e6cce04ef1f/thumb2.jpg');
INSERT INTO `dashpicture` VALUES ('13', 'c1c09348471da94842d63ea8', null, null, '2014-08-01 10:08:35', '/dashImages/c1c09348471da94842d63ea8/thumb10.jpg');
INSERT INTO `dashpicture` VALUES ('14', 'cdef4edf05eda55729d7abaa', null, null, '2014-08-01 10:08:35', '/dashImages/cdef4edf05eda55729d7abaa/thumb3.jpg');
INSERT INTO `dashpicture` VALUES ('15', '341c35de8b11f3a7e7073880', null, null, '2014-08-01 10:08:35', '/dashImages/341c35de8b11f3a7e7073880/thumb7.jpg');
INSERT INTO `dashpicture` VALUES ('16', '4eb3b5335f21736c4302454c', null, null, '2014-08-01 10:08:35', '/dashImages/4eb3b5335f21736c4302454c/thumb6.jpg');
INSERT INTO `dashpicture` VALUES ('17', '6ae6298f3a6d7a22d4851f7c', null, null, '2014-08-01 10:08:35', '/dashImages/6ae6298f3a6d7a22d4851f7c/01300000110309122830516266532_950.jpg');
INSERT INTO `dashpicture` VALUES ('18', '5328728303219b97eb12e45b', null, null, '2014-08-01 10:08:35', '/dashImages/5328728303219b97eb12e45b/thumb6.jpg');
INSERT INTO `dashpicture` VALUES ('19', 'cea61b946330c2fc6f47605e', null, null, '2014-08-01 10:08:35', '/dashImages/cea61b946330c2fc6f47605e/thumb2.jpg');
INSERT INTO `dashpicture` VALUES ('20', '2ac95c1d721c0f27c9fa5f65', null, null, '2014-08-01 10:08:35', '/dashImages/2ac95c1d721c0f27c9fa5f65/thumb4.jpg');
INSERT INTO `dashpicture` VALUES ('21', '3c9502df954e1c07c26c14a9', null, null, '2014-08-01 10:08:35', '/dashImages/3c9502df954e1c07c26c14a9/thumb10.jpg');
INSERT INTO `dashpicture` VALUES ('22', '680fb7039e9115858bb988c2', null, null, '2014-08-01 10:08:35', '/dashImages/680fb7039e9115858bb988c2/20081125134751557.jpg');
INSERT INTO `dashpicture` VALUES ('23', '847afe1bae06448935b06cd6', null, null, '2014-08-01 10:08:35', '/dashImages/847afe1bae06448935b06cd6/200911191702438682.jpg');
INSERT INTO `dashpicture` VALUES ('24', 'eef2d528a7db5cbe3ae4a69a', null, null, '2014-08-01 10:08:35', '/dashImages/eef2d528a7db5cbe3ae4a69a/201009071127076217.jpg');
INSERT INTO `dashpicture` VALUES ('25', '504d6113c93e06aa475726b3', null, null, '2014-08-01 10:08:35', '/dashImages/504d6113c93e06aa475726b3/thumb2.jpg');
INSERT INTO `dashpicture` VALUES ('26', '4fa1973780bb75891ce99973', null, null, '2014-08-01 10:08:35', '/dashImages/4fa1973780bb75891ce99973/thumb6.jpg');
INSERT INTO `dashpicture` VALUES ('27', 'd82d6697c3bdb3bfd518b74f', null, null, '2014-08-01 10:08:35', '/dashImages/d82d6697c3bdb3bfd518b74f/201110261414512088.jpg');
INSERT INTO `dashpicture` VALUES ('28', '75d0881a9c973b543a04b148', null, null, '2014-08-01 10:08:35', '/dashImages/75d0881a9c973b543a04b148/200911191702438682.jpg');
INSERT INTO `dashpicture` VALUES ('29', 'bba87388ccb228b9bda822a9', null, null, '2014-08-01 10:08:35', '/dashImages/bba87388ccb228b9bda822a9/thumb10.jpg');
INSERT INTO `dashpicture` VALUES ('30', 'f2f15ffbc43a1691621c678f', null, null, '2014-08-01 10:08:35', '/dashImages/f2f15ffbc43a1691621c678f/201009071127076217.jpg');
INSERT INTO `dashpicture` VALUES ('31', '69fcd6df9b9b7636cb2915a2', null, null, '2014-08-01 10:08:35', '/dashImages/69fcd6df9b9b7636cb2915a2/20081125134751557.jpg');
INSERT INTO `dashpicture` VALUES ('32', 'fd007c5e69486275a9f729b5', null, null, '2014-08-01 10:08:35', '/dashImages/fd007c5e69486275a9f729b5/thumb7.jpg');
INSERT INTO `dashpicture` VALUES ('33', 'e93761f647d9b115233bf289', null, null, '2014-08-01 10:08:35', '/dashImages/e93761f647d9b115233bf289/201110261414512088.jpg');
INSERT INTO `dashpicture` VALUES ('34', 'b388f9fdbb2fc258b25c6aae', null, null, '2014-08-01 10:08:35', '/dashImages/b388f9fdbb2fc258b25c6aae/201009071127076217.jpg');
INSERT INTO `dashpicture` VALUES ('35', 'd0b8923fd2da46fbb5f42f22', null, null, '2014-08-01 10:08:35', '/dashImages/d0b8923fd2da46fbb5f42f22/thumb2.jpg');
INSERT INTO `dashpicture` VALUES ('36', 'c0460abbee77a15c48cc4abc', null, null, '2014-08-01 10:08:35', '/dashImages/c0460abbee77a15c48cc4abc/thumb10.jpg');
INSERT INTO `dashpicture` VALUES ('37', '373cf757b3ab13774254d7b7', null, null, '2014-08-01 10:08:35', '/dashImages/373cf757b3ab13774254d7b7/thumb5.jpg');
INSERT INTO `dashpicture` VALUES ('38', 'cde9e2c7b3c2cfade91e9796', null, null, '2014-08-01 10:08:35', '/dashImages/cde9e2c7b3c2cfade91e9796/thumb3.jpg');
INSERT INTO `dashpicture` VALUES ('39', '3c0ea7c527682c85fbf0cb70', null, null, '2014-08-01 10:08:35', '/dashImages/3c0ea7c527682c85fbf0cb70/thumb6.jpg');
INSERT INTO `dashpicture` VALUES ('40', '6deee308e45ac37328fc48e5', null, null, '2014-08-01 10:08:35', '/dashImages/6deee308e45ac37328fc48e5/01300000110309122830516266532_950.jpg');
INSERT INTO `dashpicture` VALUES ('41', 'cc788fde8503ad9388fc0628', null, null, '2014-08-01 10:08:35', '/dashImages/cc788fde8503ad9388fc0628/thumb9.jpg');
INSERT INTO `dashpicture` VALUES ('42', '850815e17bb11e8243e192c9', null, null, '2014-08-01 10:08:35', '/dashImages/850815e17bb11e8243e192c9/201110261414512088.jpg');
INSERT INTO `dashpicture` VALUES ('43', 'f9fd6062622d74060f0e6b2b', null, null, '2014-08-01 10:08:35', '/dashImages/f9fd6062622d74060f0e6b2b/201009071127076217.jpg');
INSERT INTO `dashpicture` VALUES ('44', 'fd13a3f21e24eee3b1077d32', null, null, '2014-08-01 10:08:35', '/dashImages/fd13a3f21e24eee3b1077d32/201009071127076217.jpg');
INSERT INTO `dashpicture` VALUES ('45', '9ee392b8e442e458bbbd636b', null, null, '2014-08-01 10:08:35', '/dashImages/9ee392b8e442e458bbbd636b/201009071127076217.jpg');
INSERT INTO `dashpicture` VALUES ('46', '803708f1027ff1600189726d', null, null, '2014-08-01 10:08:35', '/dashImages/803708f1027ff1600189726d/01300000110309122830516266532_950.jpg');
INSERT INTO `dashpicture` VALUES ('47', '5211d2195c5073417cc876ae', null, null, '2014-04-26 14:46:46', '/dashImages/5211d2195c5073417cc876ae/thumb (5).jpg');
INSERT INTO `dashpicture` VALUES ('48', '49d9593883e1585ac71e519d', null, null, '2014-04-26 14:46:46', '/dashImages/49d9593883e1585ac71e519d/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('49', '61f634f6f8e1e4616a49f3ab', null, null, '2014-04-26 14:46:46', '/dashImages/61f634f6f8e1e4616a49f3ab/thumb (5).jpg');
INSERT INTO `dashpicture` VALUES ('50', '7524cb4ff1fbba3504026f27', null, null, '2014-04-26 14:46:46', '/dashImages/7524cb4ff1fbba3504026f27/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('51', '1eeed546b2d9e9ebb4147f9a', null, null, '2014-04-26 14:46:46', '/dashImages/1eeed546b2d9e9ebb4147f9a/thumb (1).jpg');
INSERT INTO `dashpicture` VALUES ('52', 'bcaebff8ba089f4dc9e33c47', null, null, '2014-04-26 14:46:46', '/dashImages/bcaebff8ba089f4dc9e33c47/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('53', '6ed3083adbaa67ae2a3a9fa8', null, null, '2014-04-26 14:46:46', '/dashImages/6ed3083adbaa67ae2a3a9fa8/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('54', 'ffae155eb4ca1b8429fc4830', null, null, '2014-04-26 14:46:46', '/dashImages/ffae155eb4ca1b8429fc4830/thumb (5).jpg');
INSERT INTO `dashpicture` VALUES ('55', '204b6509c25a818fcd04ef6c', null, null, '2014-04-26 14:46:46', '/dashImages/204b6509c25a818fcd04ef6c/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('56', '41572e00da2ff7adb45f1eca', null, null, '2014-04-26 14:46:46', '/dashImages/41572e00da2ff7adb45f1eca/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('57', 'e116be5453f4d779c81b9586', null, null, '2014-04-26 14:46:46', '/dashImages/e116be5453f4d779c81b9586/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('58', '519909565d616dd36f476075', null, null, '2014-04-26 14:46:46', '/dashImages/519909565d616dd36f476075/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('59', '9727622ef75f531cc8213db7', null, null, '2014-04-26 14:46:46', '/dashImages/9727622ef75f531cc8213db7/thumb (5).jpg');
INSERT INTO `dashpicture` VALUES ('60', 'cb0788d5cbda99bf96ca07c1', null, null, '2014-04-26 14:46:46', '/dashImages/cb0788d5cbda99bf96ca07c1/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('61', '48441e7778fa4b940f0e6b53', null, null, '2014-04-26 14:46:46', '/dashImages/48441e7778fa4b940f0e6b53/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('62', '09fbd34fe46ace872fe67b7c', null, null, '2014-04-26 14:46:46', '/dashImages/09fbd34fe46ace872fe67b7c/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('63', '0f1e2970ade9751c047ce842', null, null, '2014-04-26 14:46:46', '/dashImages/0f1e2970ade9751c047ce842/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('64', '76374963461d27e238e4a6b3', null, null, '2014-04-26 14:46:46', '/dashImages/76374963461d27e238e4a6b3/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('65', '04a477406b57a886f7231035', null, null, '2014-04-26 14:46:46', '/dashImages/04a477406b57a886f7231035/thumb (1).jpg');
INSERT INTO `dashpicture` VALUES ('66', 'f5e3bcaefe8dc6d85e17c347', null, null, '2014-04-26 14:46:46', '/dashImages/f5e3bcaefe8dc6d85e17c347/thumb (5).jpg');
INSERT INTO `dashpicture` VALUES ('67', '8c19f4921d0ffaa843afe618', null, null, '2014-04-26 14:46:46', '/dashImages/8c19f4921d0ffaa843afe618/201009071127076217.jpg');
INSERT INTO `dashpicture` VALUES ('68', '08d7b04229691bd9770269f1', null, null, '2014-04-26 14:46:46', '/dashImages/08d7b04229691bd9770269f1/thumb (1).jpg');
INSERT INTO `dashpicture` VALUES ('69', 'db1f39d49e035576f5c59c7b', null, null, '2014-04-26 14:46:46', '/dashImages/db1f39d49e035576f5c59c7b/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('70', '3e9eb1d79637d84ea21de918', null, null, '2014-04-26 14:46:46', '/dashImages/3e9eb1d79637d84ea21de918/thumb (2).jpg');
INSERT INTO `dashpicture` VALUES ('71', '1479c3d8133860a9a4c756b1', null, null, '2014-04-26 14:46:46', '/dashImages/1479c3d8133860a9a4c756b1/thumb (2).jpg');
INSERT INTO `dashpicture` VALUES ('72', '643ebb792c6b64d1e115f9f7', null, null, '2014-04-26 14:46:46', '/dashImages/643ebb792c6b64d1e115f9f7/thumb (3).jpg');
INSERT INTO `dashpicture` VALUES ('73', '1eeed546b252e9ebb5147f0d', null, null, '2014-04-26 14:46:46', '/dashImages/1eeed546b252e9ebb5147f0d/thumb (1).jpg');
INSERT INTO `dashpicture` VALUES ('74', 'b388f9fd8bedb258b35c6a68', null, null, '2014-04-26 14:46:46', '/dashImages/b388f9fd8bedb258b35c6a68/thumb05.jpg');
INSERT INTO `dashpicture` VALUES ('75', '341c35de82298ca7e70738f8', null, null, '2014-04-26 14:46:46', '/dashImages/341c35de82298ca7e70738f8/thumb (2).jpg');
INSERT INTO `dashpicture` VALUES ('76', '3da907f36483f14ab220a886', null, null, '2014-04-26 14:46:46', '/dashImages/3da907f36483f14ab220a886/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('77', '2ca0e5a82e567c5302897271', null, null, '2014-04-26 14:46:46', '/dashImages/2ca0e5a82e567c5302897271/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('78', '5990f57a78bd6a9ff4231061', null, null, '2014-04-26 14:46:46', '/dashImages/5990f57a78bd6a9ff4231061/thumb (3).jpg');
INSERT INTO `dashpicture` VALUES ('79', 'e2c734e402fe5c4415a190c6', null, null, '2014-04-26 14:46:46', '/dashImages/e2c734e402fe5c4415a190c6/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('80', 'b1f5b4c2bf6c3bd50869d90f', null, null, '2014-04-26 14:46:46', '/dashImages/b1f5b4c2bf6c3bd50869d90f/thumb05.jpg');
INSERT INTO `dashpicture` VALUES ('81', '669d90646995a2612b11d1a3', null, null, '2014-04-26 14:46:46', '/dashImages/669d90646995a2612b11d1a3/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('82', 'ddc73de408478754912ca37a', null, null, '2014-04-26 14:46:46', '/dashImages/ddc73de408478754912ca37a/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('83', '75a769cc5a6bc5e685420e30', null, null, '2014-04-26 14:46:46', '/dashImages/75a769cc5a6bc5e685420e30/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('84', '108b1cea7d1974b53586f408', null, null, '2014-04-26 14:46:46', '/dashImages/108b1cea7d1974b53586f408/thumb (1).jpg');
INSERT INTO `dashpicture` VALUES ('85', '854d3520133ba7c8f5231044', null, null, '2014-04-26 14:46:46', '/dashImages/854d3520133ba7c8f5231044/201009071127076217.jpg');
INSERT INTO `dashpicture` VALUES ('86', 'ea4a3dc90fc1e2374f5547bf', null, null, '2014-04-26 14:46:46', '/dashImages/ea4a3dc90fc1e2374f5547bf/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('87', 'd9e73b3892f71f351894c68e', null, null, '2014-04-26 14:46:46', '/dashImages/d9e73b3892f71f351894c68e/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('88', '65ddde6dffb7be0421f0179d', null, null, '2014-04-26 14:46:46', '/dashImages/65ddde6dffb7be0421f0179d/thumb (3).jpg');
INSERT INTO `dashpicture` VALUES ('89', '3f900be3b7d0b7cd6e20b9d0', null, null, '2014-04-26 14:46:46', '/dashImages/3f900be3b7d0b7cd6e20b9d0/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('90', 'a889ba5b4171c726bda2400a', null, null, '2014-04-26 14:46:46', '/dashImages/a889ba5b4171c726bda2400a/thumb05.jpg');
INSERT INTO `dashpicture` VALUES ('91', 'bb9622b212c45efffa0cad67', null, null, '2014-04-26 14:46:46', '/dashImages/bb9622b212c45efffa0cad67/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('92', 'a49a599cb9ddf924c72ba141', null, null, '2014-04-26 14:46:46', '/dashImages/a49a599cb9ddf924c72ba141/201009071127076217.jpg');
INSERT INTO `dashpicture` VALUES ('93', '223e5e29ca860fea6ec02ca3', null, null, '2014-04-26 14:46:46', '/dashImages/223e5e29ca860fea6ec02ca3/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('94', '6deee308e5b8c47329fc48cb', null, null, '2014-04-26 14:46:46', '/dashImages/6deee308e5b8c47329fc48cb/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('95', 'cafed1db9ecbb4585d0d02f9', null, null, '2014-04-26 14:46:46', '/dashImages/cafed1db9ecbb4585d0d02f9/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('96', 'ebb6dc9ca42ec675f33cbaff', null, null, '2014-04-26 14:46:46', '/dashImages/ebb6dc9ca42ec675f33cbaff/thumb (5).jpg');
INSERT INTO `dashpicture` VALUES ('97', 'e3f8c4f103ee16ffd618b702', null, null, '2014-04-26 14:46:46', '/dashImages/e3f8c4f103ee16ffd618b702/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('98', '96d2eb5908bbf6d59122e05d', null, null, '2014-04-26 14:46:46', '/dashImages/96d2eb5908bbf6d59122e05d/201009071127076217.jpg');
INSERT INTO `dashpicture` VALUES ('99', '40ec2b29fc07d74eb75f1e59', null, null, '2014-04-26 14:46:46', '/dashImages/40ec2b29fc07d74eb75f1e59/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('100', '1e6197f2359b1b46aecb662b', null, null, '2014-04-26 14:46:46', '/dashImages/1e6197f2359b1b46aecb662b/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('101', 'ad626d3b47f2bf8a2a02e1d7', null, null, '2014-04-26 14:46:47', '/dashImages/ad626d3b47f2bf8a2a02e1d7/thumb05.jpg');
INSERT INTO `dashpicture` VALUES ('102', 'b581e7f3fecf981c5fbe8608', null, null, '2014-04-26 14:46:47', '/dashImages/b581e7f3fecf981c5fbe8608/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('103', '3be122e1ae383c4b1ff74db8', null, null, '2014-04-26 14:46:47', '/dashImages/3be122e1ae383c4b1ff74db8/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('104', 'b42edd21370c996c54bfff04', null, null, '2014-04-26 14:46:47', '/dashImages/b42edd21370c996c54bfff04/thumb.jpg');
INSERT INTO `dashpicture` VALUES ('105', '7547033af68cfc755cbe86ec', null, null, '2014-04-26 14:46:47', '/dashImages/7547033af68cfc755cbe86ec/thumb (4).jpg');
INSERT INTO `dashpicture` VALUES ('106', '560529d7d003fdb36c47601a', null, null, '2014-04-26 14:46:47', '/dashImages/560529d7d003fdb36c47601a/thumb (3).jpg');
INSERT INTO `dashpicture` VALUES ('107', 'cc788fde8503ad9388fc0628', '4', '123', '2014-05-04 15:36:48', '/dashImages/cc788fde8503ad9388fc0628/20140227_570_OT.jpg');
INSERT INTO `dashpicture` VALUES ('108', 'cc788fde8503ad9388fc0628', '4', '123', '2014-05-04 15:50:48', '/dashImages/cc788fde8503ad9388fc0628/ed7b434f6155a873ab6ba476de660eb2.cache.jpg');
INSERT INTO `dashpicture` VALUES ('109', 'cc788fde8503ad9388fc0628', '4', '123', '2014-05-04 15:57:44', '/dashImages/cc788fde8503ad9388fc0628/151eabe58aefc68add6bc1ba03f44226.jpg');
INSERT INTO `dashpicture` VALUES ('110', 'cc788fde8503ad9388fc0628', '4', '123', '2014-05-31 15:16:50', '/dashImages/cc788fde8503ad9388fc0628/pic_glance_back.jpg');
INSERT INTO `dashpicture` VALUES ('111', 'cc788fde8503ad9388fc0628', '4', '123', '2014-05-31 15:19:52', '/dashImages/cc788fde8503ad9388fc0628/pic_glance_back.jpg');
INSERT INTO `dashpicture` VALUES ('112', 'fc76752455315d874e776e1d', '4', '123', '2014-05-31 15:29:34', '/dashImages/fc76752455315d874e776e1d/pic_glance_back.jpg');
INSERT INTO `dashpicture` VALUES ('113', '803708f1027ff1600189726d', '4', '123', '2014-05-31 15:30:16', '/dashImages/803708f1027ff1600189726d/pic_glance_back.jpg');
INSERT INTO `dashpicture` VALUES ('114', 'cc788fde8503ad9388fc0628', '4', '123', '2014-05-31 20:03:47', '/dashImages/cc788fde8503ad9388fc0628/pic_glance_back.jpg');
INSERT INTO `dashpicture` VALUES ('115', '4fa1973780bb75891ce99973', '4', '123', '2014-06-02 17:35:55', '/dashImages/4fa1973780bb75891ce99973/pic_glance_back.jpg');

-- ----------------------------
-- Table structure for `detailinfo`
-- ----------------------------
DROP TABLE IF EXISTS `detailinfo`;
CREATE TABLE `detailinfo` (
  `POI` varchar(100) NOT NULL COMMENT 'POI唯一标示',
  `TYPE` varchar(20) DEFAULT NULL COMMENT '分类',
  `TAG` varchar(20) DEFAULT NULL COMMENT '标签',
  `DETAILURL` varchar(100) DEFAULT NULL COMMENT 'POI的详情页',
  `PRICE` varchar(50) DEFAULT NULL COMMENT '原价',
  `SALE` varchar(50) DEFAULT NULL COMMENT '打折价',
  `OPENTIME` varchar(50) DEFAULT NULL COMMENT '营业时间',
  `OVERALL_RATING` varchar(20) DEFAULT NULL COMMENT '总体评分',
  `TASTE_RATING` varchar(20) DEFAULT NULL COMMENT '口味评分',
  `SERVICE_RATING` varchar(20) DEFAULT NULL COMMENT '服务评分',
  `ENVIRONMENT_RATING` varchar(20) DEFAULT NULL COMMENT '环境评分',
  PRIMARY KEY (`POI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='餐厅详细信息表DETAILINFO';

-- ----------------------------
-- Records of detailinfo
-- ----------------------------
INSERT INTO `detailinfo` VALUES ('04a477406b57a886f7231035', 'cater', null, 'http://api.map.baidu.com/place/detail?uid=04a477406b57a886f7231035&output=html&source=placeapi_v2', '52', null, null, '4', null, null, null);
INSERT INTO `detailinfo` VALUES ('08d7b04229691bd9770269f1', 'cater', '餐饮,烧烤', 'http://api.map.baidu.com/place/detail?uid=08d7b04229691bd9770269f1&output=html&source=placeapi_v2', '54', '50', null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('09fbd34fe46ace872fe67b7c', 'cater', '餐饮', 'http://api.map.baidu.com/place/detail?uid=09fbd34fe46ace872fe67b7c&output=html&source=placeapi_v2', '51', null, null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('0ed20a15a8daeb8e56bfff86', 'cater', '甜品饮料,双楠', 'http://api.map.baidu.com/place/detail?uid=0ed20a15a8daeb8e56bfff86&output=html&source=placeapi_v2', '5', null, null, '3.5', null, '2.8', '2.7');
INSERT INTO `detailinfo` VALUES ('0f1e2970ade9751c047ce842', 'cater', '川菜湘菜,餐饮,海鲜', 'http://api.map.baidu.com/place/detail?uid=0f1e2970ade9751c047ce842&output=html&source=placeapi_v2', '51', null, null, '4', null, null, null);
INSERT INTO `detailinfo` VALUES ('108b1cea7d1974b53586f408', 'cater', '快餐简餐,科华路沿线', 'http://api.map.baidu.com/place/detail?uid=108b1cea7d1974b53586f408&output=html&source=placeapi_v2', '60', '56', null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('1479c3d8133860a9a4c756b1', 'cater', '餐饮,海鲜', 'http://api.map.baidu.com/place/detail?uid=1479c3d8133860a9a4c756b1&output=html&source=placeapi_v2', '55', '51', null, '2', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('1bf85b25cc2135bda1a93451', 'cater', '甜品饮料,草市街', 'http://api.map.baidu.com/place/detail?uid=1bf85b25cc2135bda1a93451&output=html&source=placeapi_v2', '5', null, null, '3.5', null, '2.7', '2.7');
INSERT INTO `detailinfo` VALUES ('1e6197f2359b1b46aecb662b', 'cater', '餐饮,烧烤,玉林', 'http://api.map.baidu.com/place/detail?uid=1e6197f2359b1b46aecb662b&output=html&source=placeapi_v2', '59', '55', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('1eeed546b252e9ebb5147f0d', 'cater', '川菜,草市街', 'http://api.map.baidu.com/place/detail?uid=1eeed546b252e9ebb5147f0d&output=html&source=placeapi_v2', '55', '51', null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('1eeed546b2d9e9ebb4147f9a', 'cater', '其他小吃,抚琴', 'http://api.map.baidu.com/place/detail?uid=1eeed546b2d9e9ebb4147f9a&output=html&source=placeapi_v2', '48', null, null, '3', null, '2', '1');
INSERT INTO `detailinfo` VALUES ('204b6509c25a818fcd04ef6c', 'cater', null, 'http://api.map.baidu.com/place/detail?uid=204b6509c25a818fcd04ef6c&output=html&source=placeapi_v2', '50', null, null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('223e5e29ca860fea6ec02ca3', 'cater', '餐饮,湘菜', 'http://api.map.baidu.com/place/detail?uid=223e5e29ca860fea6ec02ca3&output=html&source=placeapi_v2', '58', '54', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('2ac95c1d721c0f27c9fa5f65', 'cater', '餐饮,其他火锅', 'http://api.map.baidu.com/place/detail?uid=2ac95c1d721c0f27c9fa5f65&output=html&source=placeapi_v2', '8', null, null, null, null, null, null);
INSERT INTO `detailinfo` VALUES ('2ca0e5a82e567c5302897271', 'cater', '餐饮,粤菜,合江亭', 'http://api.map.baidu.com/place/detail?uid=2ca0e5a82e567c5302897271&output=html&source=placeapi_v2', '55', '51', null, '2', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('341c35de82298ca7e70738f8', 'cater', '烧烤,府南新区', 'http://api.map.baidu.com/place/detail?uid=341c35de82298ca7e70738f8&output=html&source=placeapi_v2', '55', '51', null, '3', null, '1', '1');
INSERT INTO `detailinfo` VALUES ('341c35de8b11f3a7e7073880', 'cater', '其他西餐,草市街', 'http://api.map.baidu.com/place/detail?uid=341c35de8b11f3a7e7073880&output=html&source=placeapi_v2', '30', null, null, '1', null, '1', '1');
INSERT INTO `detailinfo` VALUES ('373cf757b3ab13774254d7b7', 'cater', '其他小吃,双林路', 'http://api.map.baidu.com/place/detail?uid=373cf757b3ab13774254d7b7&output=html&source=placeapi_v2', '14', null, null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('37d60a46d84041791f1d11a9', 'cater', '甜品饮料,春熙路/盐市口', 'http://api.map.baidu.com/place/detail?uid=37d60a46d84041791f1d11a9&output=html&source=placeapi_v2', '5', null, null, '3.5', null, '2.4', '1.9');
INSERT INTO `detailinfo` VALUES ('3be122e1ae383c4b1ff74db8', 'cater', '其他火锅,万年场', 'http://api.map.baidu.com/place/detail?uid=3be122e1ae383c4b1ff74db8&output=html&source=placeapi_v2', '60', '56', null, '3', '3', '2', '2');
INSERT INTO `detailinfo` VALUES ('3c0ea7c524662b85fbf0cb76', 'cater', '美食,其他西餐,科华北路', 'http://api.map.baidu.com/place/detail?uid=3c0ea7c524662b85fbf0cb76&output=html&source=placeapi_v2', '72', '33', '9:00-23:00', '4', '5', '5', '4');
INSERT INTO `detailinfo` VALUES ('3c0ea7c527682c85fbf0cb70', 'cater', '面包糕点,牛市口', 'http://api.map.baidu.com/place/detail?uid=3c0ea7c527682c85fbf0cb70&output=html&source=placeapi_v2', '14', null, null, '4', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('3c9502df954e1c07c26c14a9', 'cater', '餐饮,火锅快餐简餐', 'http://api.map.baidu.com/place/detail?uid=3c9502df954e1c07c26c14a9&output=html&source=placeapi_v2', '8', null, null, null, null, '2', '3');
INSERT INTO `detailinfo` VALUES ('3da907f36483f14ab220a886', 'cater', '粤菜,春熙路/盐市口', 'http://api.map.baidu.com/place/detail?uid=3da907f36483f14ab220a886&output=html&source=placeapi_v2', '55', '51', null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('3e9eb1d79637d84ea21de918', 'cater', '餐饮,自助餐,草市街', 'http://api.map.baidu.com/place/detail?uid=3e9eb1d79637d84ea21de918&output=html&source=placeapi_v2', '55', '51', null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('3f900be3b7d0b7cd6e20b9d0', 'cater', '餐饮,鱼火锅,龙泉驿区', 'http://api.map.baidu.com/place/detail?uid=3f900be3b7d0b7cd6e20b9d0&output=html&source=placeapi_v2', '57', '53', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('3f9337d61e26e0aaf7231058', 'cater', '美食,东南亚菜,都江堰市', 'http://api.map.baidu.com/place/detail?uid=047666f7e40172791d1d1158&output=html&source=placeapi_v2', '47', '33', '暂无', '3', '3', '4', '3');
INSERT INTO `detailinfo` VALUES ('405f387783fe83eb3f9a5e2f', 'cater', '法国菜牛排,西餐,龙泉驿区', 'http://api.map.baidu.com/place/detail?uid=405f387783fe83eb3f9a5e2f&output=html&source=placeapi_v2', '30', null, null, '5', null, '0', '0');
INSERT INTO `detailinfo` VALUES ('40ec2b29fc07d74eb75f1e59', 'cater', '餐饮,川菜,双流县', 'http://api.map.baidu.com/place/detail?uid=40ec2b29fc07d74eb75f1e59&output=html&source=placeapi_v2', '59', '55', null, '4', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('41572e00da2ff7adb45f1eca', 'cater', '烧烤,春熙路/盐市口', 'http://api.map.baidu.com/place/detail?uid=41572e00da2ff7adb45f1eca&output=html&source=placeapi_v2', '50', null, null, '2', null, '2', '1');
INSERT INTO `detailinfo` VALUES ('48441e7778fa4b940f0e6b53', 'cater', '其它,川菜', 'http://api.map.baidu.com/place/detail?uid=48441e7778fa4b940f0e6b53&output=html&source=placeapi_v2', '50', null, null, '0', null, '0', '0');
INSERT INTO `detailinfo` VALUES ('49d9593883e1585ac71e519d', 'cater', '川菜,九里堤/西南交大', 'http://api.map.baidu.com/place/detail?uid=49d9593883e1585ac71e519d&output=html&source=placeapi_v2', '46', null, null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('4eb3b5335f21736c4302454c', 'cater', '西餐,都江堰市', 'http://api.map.baidu.com/place/detail?uid=4eb3b5335f21736c4302454c&output=html&source=placeapi_v2', '30', null, null, null, null, '0', '0');
INSERT INTO `detailinfo` VALUES ('4fa1973780bb75891ce99973', 'cater', '快餐简餐,青羊宫', 'http://api.map.baidu.com/place/detail?uid=4fa1973780bb75891ce99973&output=html&source=placeapi_v2', '10', null, null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('504d6113c93e06aa475726b3', 'cater', '其他小吃,科华路沿线', 'http://api.map.baidu.com/place/detail?uid=504d6113c93e06aa475726b3&output=html&source=placeapi_v2', '10', null, null, '4', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('519909565d616dd36f476075', 'cater', '海鲜,高新区', 'http://api.map.baidu.com/place/detail?uid=519909565d616dd36f476075&output=html&source=placeapi_v2', '50', null, null, '2', null, '2', '1');
INSERT INTO `detailinfo` VALUES ('5211d2195c5073417cc876ae', 'cater', '韩国料理,双流县', 'http://api.map.baidu.com/place/detail?uid=5211d2195c5073417cc876ae&output=html&source=placeapi_v2', '45', null, null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('5328728303219b97eb12e45b', 'cater', '餐饮,其他火锅', 'http://api.map.baidu.com/place/detail?uid=5328728303219b97eb12e45b&output=html&source=placeapi_v2', '8', null, null, null, null, '2', '2');
INSERT INTO `detailinfo` VALUES ('5508504d4646d3d2c6f025a7', 'cater', '餐饮,甜品饮料,西南交大', 'http://api.map.baidu.com/place/detail?uid=5508504d4646d3d2c6f025a7&output=html&source=placeapi_v2', '5', null, null, '3.5', null, '2.8', '2.8');
INSERT INTO `detailinfo` VALUES ('550fd5f9773b9b60921fc987', 'cater', '其他西餐,春熙路/盐市口', 'http://api.map.baidu.com/place/detail?uid=550fd5f9773b9b60921fc987&output=html&source=placeapi_v2', '29', null, null, '2', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('560529d7d003fdb36c47601a', 'cater', '餐饮,火锅', 'http://api.map.baidu.com/place/detail?uid=560529d7d003fdb36c47601a&output=html&source=placeapi_v2', '60', '56', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('5990f57a78bd6a9ff4231061', 'cater', '餐饮,快餐简餐,抚琴', 'http://api.map.baidu.com/place/detail?uid=5990f57a78bd6a9ff4231061&output=html&source=placeapi_v2', '55', '51', null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('5b6fe452c651e205ab175ab4', 'cater', '餐饮', 'http://api.map.baidu.com/place/detail?uid=5b6fe452c651e205ab175ab4&output=html&source=placeapi_v2', '29', null, null, '3', null, null, null);
INSERT INTO `detailinfo` VALUES ('61085211252587b8c41b75bf', 'cater', '甜品饮料,双楠', 'http://api.map.baidu.com/place/detail?uid=61085211252587b8c41b75bf&output=html&source=placeapi_v2', '5', null, null, '3', null, '2.6', '2.3');
INSERT INTO `detailinfo` VALUES ('61f634f6f8e1e4616a49f3ab', 'cater', '海鲜,九眼桥/合江亭', 'http://api.map.baidu.com/place/detail?uid=61f634f6f8e1e4616a49f3ab&output=html&source=placeapi_v2', '48', null, null, '2', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('643ebb792c6b64d1e115f9f7', 'cater', '餐饮,川菜,科华北路', 'http://api.map.baidu.com/place/detail?uid=643ebb792c6b64d1e115f9f7&output=html&source=placeapi_v2', '55', '51', null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('65ddde6dffb7be0421f0179d', 'cater', '餐饮,川菜', 'http://api.map.baidu.com/place/detail?uid=65ddde6dffb7be0421f0179d&output=html&source=placeapi_v2', '57', '53', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('669d90646995a2612b11d1a3', 'cater', '餐饮,粤菜,建设路', 'http://api.map.baidu.com/place/detail?uid=669d90646995a2612b11d1a3&output=html&source=placeapi_v2', '57', '53', null, '4', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('680fb7039e9115858bb988c2', 'cater', '快餐简餐,紫荆/桐梓林', 'http://api.map.baidu.com/place/detail?uid=680fb7039e9115858bb988c2&output=html&source=placeapi_v2', '8', null, null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('6835e3a704cee757e31103de', 'cater', '甜品饮料,龙泉驿区', 'http://api.map.baidu.com/place/detail?uid=6835e3a704cee757e31103de&output=html&source=placeapi_v2', '5', null, null, '3', null, '3.4', '3.25');
INSERT INTO `detailinfo` VALUES ('69fcd6df9b9b7636cb2915a2', 'cater', '面包糕点,春熙路/盐市口', 'http://api.map.baidu.com/place/detail?uid=69fcd6df9b9b7636cb2915a2&output=html&source=placeapi_v2', '14', null, null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('6ae6298f3a6d7a22d4851f7c', 'cater', '餐饮,火锅', 'http://api.map.baidu.com/place/detail?uid=6ae6298f3a6d7a22d4851f7c&output=html&source=placeapi_v2', '8', null, null, '2', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('6deee308e45ac37328fc48e5', 'cater', '日本菜,春熙路/盐市口', 'http://api.map.baidu.com/place/detail?uid=6deee308e45ac37328fc48e5&output=html&source=placeapi_v2', '15', null, null, '4', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('6deee308e5b8c47329fc48cb', 'cater', '川菜,郫县', 'http://api.map.baidu.com/place/detail?uid=6deee308e5b8c47329fc48cb&output=html&source=placeapi_v2', '58', '54', null, '2', '3', '2', '2');
INSERT INTO `detailinfo` VALUES ('6ed3083adbaa67ae2a3a9fa8', 'cater', '海鲜,万达', 'http://api.map.baidu.com/place/detail?uid=6ed3083adbaa67ae2a3a9fa8&output=html&source=placeapi_v2', '50', null, null, '3', null, '3', '2');
INSERT INTO `detailinfo` VALUES ('7524cb4ff1fbba3504026f27', 'cater', '火锅,五大花园', 'http://api.map.baidu.com/place/detail?uid=7524cb4ff1fbba3504026f27&output=html&source=placeapi_v2', '48', null, null, '4', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('7547033af68cfc755cbe86ec', 'cater', '餐饮,川菜,东光小区', 'http://api.map.baidu.com/place/detail?uid=7547033af68cfc755cbe86ec&output=html&source=placeapi_v2', '60', '56', null, '3', '3', '2', '2');
INSERT INTO `detailinfo` VALUES ('75a769cc5a6bc5e685420e30', 'cater', '汤锅,春熙路/盐市口', 'http://api.map.baidu.com/place/detail?uid=75a769cc5a6bc5e685420e30&output=html&source=placeapi_v2', '59', '55', null, '4', null, '4', '3');
INSERT INTO `detailinfo` VALUES ('75d0881a9c973b543a04b148', 'cater', '快餐简餐,双林路', 'http://api.map.baidu.com/place/detail?uid=75d0881a9c973b543a04b148&output=html&source=placeapi_v2', '14', null, null, '2', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('76374963461d27e238e4a6b3', 'cater', '餐饮', 'http://api.map.baidu.com/place/detail?uid=76374963461d27e238e4a6b3&output=html&source=placeapi_v2', '52', null, null, '4', null, null, null);
INSERT INTO `detailinfo` VALUES ('803708f1027ff1600189726d', 'cater', '川菜,抚琴', 'http://api.map.baidu.com/place/detail?uid=803708f1027ff1600189726d&output=html&source=placeapi_v2', '15', null, null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('847afe1bae06448935b06cd6', 'cater', '其他小吃,温江区', 'http://api.map.baidu.com/place/detail?uid=847afe1bae06448935b06cd6&output=html&source=placeapi_v2', '8', null, null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('850815e17bb11e8243e192c9', 'cater', '川菜,书院街', 'http://api.map.baidu.com/place/detail?uid=850815e17bb11e8243e192c9&output=html&source=placeapi_v2', '15', null, null, '4', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('854d3520133ba7c8f5231044', 'cater', '餐饮,海鲜', 'http://api.map.baidu.com/place/detail?uid=854d3520133ba7c8f5231044&output=html&source=placeapi_v2', '60', '56', null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('89fd4ea32743115ee5e96505', 'cater', '其他小吃,科华路沿线', 'http://api.map.baidu.com/place/detail?uid=89fd4ea32743115ee5e96505&output=html&source=placeapi_v2', '5', null, null, '3', null, '3.1', '2.8');
INSERT INTO `detailinfo` VALUES ('8c19f4921d0ffaa843afe618', 'cater', '餐饮,海鲜', 'http://api.map.baidu.com/place/detail?uid=8c19f4921d0ffaa843afe618&output=html&source=placeapi_v2', '53', '49', null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('8cba4bb0817c109dad045716', 'cater', '其他西餐,春熙路/盐市口', 'http://api.map.baidu.com/place/detail?uid=8cba4bb0817c109dad045716&output=html&source=placeapi_v2', '30', null, null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('8fde79cc114432a695ca0745', 'cater', '快餐简餐,一品天下', 'http://api.map.baidu.com/place/detail?uid=8fde79cc114432a695ca0745&output=html&source=placeapi_v2', '27', null, null, '2', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('96b672aa7a8e3e6cce04ef1f', 'cater', '比萨,桐梓林', 'http://api.map.baidu.com/place/detail?uid=96b672aa7a8e3e6cce04ef1f&output=html&source=placeapi_v2', '30', null, null, '4', null, '3', '2');
INSERT INTO `detailinfo` VALUES ('96d2eb5908bbf6d59122e05d', 'cater', '餐饮,鱼火锅,双楠', 'http://api.map.baidu.com/place/detail?uid=96d2eb5908bbf6d59122e05d&output=html&source=placeapi_v2', '59', '55', null, '4', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('9727622ef75f531cc8213db7', 'cater', null, 'http://api.map.baidu.com/place/detail?uid=9727622ef75f531cc8213db7&output=html&source=placeapi_v2', '50', null, null, '5', null, null, null);
INSERT INTO `detailinfo` VALUES ('9ee392b8e442e458bbbd636b', 'cater', '其他小吃,建设路', 'http://api.map.baidu.com/place/detail?uid=9ee392b8e442e458bbbd636b&output=html&source=placeapi_v2', '15', null, null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('a27bed975573ce8d2e473372', 'cater', '美食中餐馆火锅餐馆', 'http://api.map.baidu.com/place/detail?uid=a27bed975573ce8d2e473372&output=html&source=placeapi_v2', '63', '55', '暂无', '4', '4', '4', '4');
INSERT INTO `detailinfo` VALUES ('a3e8341c002cfb8c4afd3fca', 'cater', '甜品饮料,磨子桥', 'http://api.map.baidu.com/place/detail?uid=a3e8341c002cfb8c4afd3fca&output=html&source=placeapi_v2', '5', null, null, '3.5', null, '2.5', '2.6');
INSERT INTO `detailinfo` VALUES ('a49a599cb9ddf924c72ba141', 'cater', '餐饮', 'http://api.map.baidu.com/place/detail?uid=a49a599cb9ddf924c72ba141&output=html&source=placeapi_v2', '58', '54', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('a889ba5b4171c726bda2400a', 'cater', '餐饮,其他火锅', 'http://api.map.baidu.com/place/detail?uid=a889ba5b4171c726bda2400a&output=html&source=placeapi_v2', '58', '54', null, '4', '3', '3', '4');
INSERT INTO `detailinfo` VALUES ('ad626d3b47f2bf8a2a02e1d7', 'cater', '海鲜,高新区', 'http://api.map.baidu.com/place/detail?uid=ad626d3b47f2bf8a2a02e1d7&output=html&source=placeapi_v2', '60', '56', null, '4', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('b1f5b4c2bf6c3bd50869d90f', 'cater', null, 'http://api.map.baidu.com/place/detail?uid=b1f5b4c2bf6c3bd50869d90f&output=html&source=placeapi_v2', '56', '52', null, '3', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('b388f9fd8bedb258b35c6a68', 'cater', '餐饮,烧烤,春熙路', 'http://api.map.baidu.com/place/detail?uid=b388f9fd8bedb258b35c6a68&output=html&source=placeapi_v2', '55', '51', null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('b388f9fdbb2fc258b25c6aae', 'cater', '面包甜点,科华路沿线', 'http://api.map.baidu.com/place/detail?uid=b388f9fdbb2fc258b25c6aae&output=html&source=placeapi_v2', '14', null, null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('b42edd21370c996c54bfff04', 'cater', '餐饮,烧烤,郫县', 'http://api.map.baidu.com/place/detail?uid=b42edd21370c996c54bfff04&output=html&source=placeapi_v2', '60', '56', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('b581e7f3fecf981c5fbe8608', 'cater', '川味火锅,光华', 'http://api.map.baidu.com/place/detail?uid=b581e7f3fecf981c5fbe8608&output=html&source=placeapi_v2', '60', '56', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('b7021bf86a65b0e3f5e73bb8', 'cater', '小吃快餐,武侯祠', 'http://api.map.baidu.com/place/detail?uid=b7021bf86a65b0e3f5e73bb8&output=html&source=placeapi_v2', '5', null, null, '3', null, '1.8', '2.3');
INSERT INTO `detailinfo` VALUES ('baeac538ce6586ebc71e51b5', 'cater', '面馆,磨子桥', 'http://api.map.baidu.com/place/detail?uid=baeac538ce6586ebc71e51b5&output=html&source=placeapi_v2', '5', null, null, '2.6', null, '2.2', '2.3');
INSERT INTO `detailinfo` VALUES ('bb9622b212c45efffa0cad67', 'cater', '餐饮,川菜', 'http://api.map.baidu.com/place/detail?uid=bb9622b212c45efffa0cad67&output=html&source=placeapi_v2', '58', '54', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('bba87388ccb228b9bda822a9', 'cater', '甜品饮料,春熙路/盐市口', 'http://api.map.baidu.com/place/detail?uid=bba87388ccb228b9bda822a9&output=html&source=placeapi_v2', '14', null, null, '4', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('bcaebff8ba089f4dc9e33c47', 'cater', '川菜,科华路沿线', 'http://api.map.baidu.com/place/detail?uid=bcaebff8ba089f4dc9e33c47&output=html&source=placeapi_v2', '49', null, null, '4', null, '2', '3');
INSERT INTO `detailinfo` VALUES ('c0460abbee77a15c48cc4abc', 'cater', '餐饮,串串香', 'http://api.map.baidu.com/place/detail?uid=c0460abbee77a15c48cc4abc&output=html&source=placeapi_v2', '14', null, null, null, null, null, null);
INSERT INTO `detailinfo` VALUES ('c1c09348471da94842d63ea8', 'cater', '餐饮,其他西餐,春熙路', 'http://api.map.baidu.com/place/detail?uid=c1c09348471da94842d63ea8&output=html&source=placeapi_v2', '30', null, null, '2', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('c21db9e5ffdfae9a00ff2d51', 'cater', '甜品饮料,光华', 'http://api.map.baidu.com/place/detail?uid=c21db9e5ffdfae9a00ff2d51&output=html&source=placeapi_v2', '5', null, null, '4', null, '2.6', '2.6');
INSERT INTO `detailinfo` VALUES ('cafed1db9ecbb4585d0d02f9', 'cater', '餐饮,其他火锅', 'http://api.map.baidu.com/place/detail?uid=cafed1db9ecbb4585d0d02f9&output=html&source=placeapi_v2', '58', '54', null, '3', '3', '3', '4');
INSERT INTO `detailinfo` VALUES ('cb0788d5cbda99bf96ca07c1', 'cater', '餐饮,烧烤', 'http://api.map.baidu.com/place/detail?uid=cb0788d5cbda99bf96ca07c1&output=html&source=placeapi_v2', '50', null, null, null, null, null, null);
INSERT INTO `detailinfo` VALUES ('cc788fde8503ad9388fc0628', 'cater', '日本菜,宽窄巷子/人民公园', 'http://api.map.baidu.com/place/detail?uid=cc788fde8503ad9388fc0628&output=html&source=placeapi_v2', '15', null, null, '4', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('cde9e2c7b3c2cfade91e9796', 'cater', '面馆,双楠', 'http://api.map.baidu.com/place/detail?uid=cde9e2c7b3c2cfade91e9796&output=html&source=placeapi_v2', '14', null, null, null, null, '0', '0');
INSERT INTO `detailinfo` VALUES ('cdef4edf05eda55729d7abaa', 'cater', '其他西餐,紫荆/桐梓林', 'http://api.map.baidu.com/place/detail?uid=cdef4edf05eda55729d7abaa&output=html&source=placeapi_v2', '30', null, null, '2', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('cea61b946330c2fc6f47605e', 'cater', '餐饮,其他火锅', 'http://api.map.baidu.com/place/detail?uid=cea61b946330c2fc6f47605e&output=html&source=placeapi_v2', '8', null, null, null, null, '3', '2');
INSERT INTO `detailinfo` VALUES ('d0b8923fd2da46fbb5f42f22', 'cater', '面包糕点,高升桥', 'http://api.map.baidu.com/place/detail?uid=d0b8923fd2da46fbb5f42f22&output=html&source=placeapi_v2', '14', null, null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('d0b8923fd96339fbb5f42f55', 'cater', '其他小吃,四川师大', 'http://api.map.baidu.com/place/detail?uid=d0b8923fd96339fbb5f42f55&output=html&source=placeapi_v2', '5', null, null, '2', null, '2.3', '2.1');
INSERT INTO `detailinfo` VALUES ('d52831f9b54afabe2ffaa7ab', 'cater', '川菜,建设路', 'http://api.map.baidu.com/place/detail?uid=d52831f9b54afabe2ffaa7ab&output=html&source=placeapi_v2', '6', '6', null, '4', '4', '4', '5');
INSERT INTO `detailinfo` VALUES ('d82d6697c3bdb3bfd518b74f', 'cater', '其他小吃,万达', 'http://api.map.baidu.com/place/detail?uid=d82d6697c3bdb3bfd518b74f&output=html&source=placeapi_v2', '14', null, null, '4', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('d9e73b3892f71f351894c68e', 'cater', '餐饮,火锅', 'http://api.map.baidu.com/place/detail?uid=d9e73b3892f71f351894c68e&output=html&source=placeapi_v2', '56', '52', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('db1f39d49e035576f5c59c7b', 'cater', '中式烧烤,杜甫草堂', 'http://api.map.baidu.com/place/detail?uid=db1f39d49e035576f5c59c7b&output=html&source=placeapi_v2', '54', '50', null, '4', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('ddc73de408478754912ca37a', 'cater', '餐饮,川菜', 'http://api.map.baidu.com/place/detail?uid=ddc73de408478754912ca37a&output=html&source=placeapi_v2', '57', '53', null, '4', null, '3', '3');
INSERT INTO `detailinfo` VALUES ('e116be5453f4d779c81b9586', 'cater', '粤菜,春熙路/盐市口', 'http://api.map.baidu.com/place/detail?uid=e116be5453f4d779c81b9586&output=html&source=placeapi_v2', '50', null, null, '3', null, '0', '0');
INSERT INTO `detailinfo` VALUES ('e2c734e402fe5c4415a190c6', 'cater', '粤菜,桐梓林', 'http://api.map.baidu.com/place/detail?uid=e2c734e402fe5c4415a190c6&output=html&source=placeapi_v2', '56', '52', null, '4', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('e3f8c4f103ee16ffd618b702', 'cater', '餐饮,其他火锅,桐梓林', 'http://api.map.baidu.com/place/detail?uid=e3f8c4f103ee16ffd618b702&output=html&source=placeapi_v2', '59', '55', null, '4', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('e93761f647d9b115233bf289', 'cater', '面包糕点,书院街', 'http://api.map.baidu.com/place/detail?uid=e93761f647d9b115233bf289&output=html&source=placeapi_v2', '14', null, null, '3', null, '2', '1');
INSERT INTO `detailinfo` VALUES ('e96b44200aed384082288a0d', 'cater', '其他小吃,沙湾', 'http://api.map.baidu.com/place/detail?uid=e96b44200aed384082288a0d&output=html&source=placeapi_v2', '3', '3', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('ea4a3dc90fc1e2374f5547bf', 'cater', '烧烤,春熙路/盐市口', 'http://api.map.baidu.com/place/detail?uid=ea4a3dc90fc1e2374f5547bf&output=html&source=placeapi_v2', '60', '56', null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('ebb6dc9ca42ec675f33cbaff', 'cater', '餐饮,火锅', 'http://api.map.baidu.com/place/detail?uid=ebb6dc9ca42ec675f33cbaff&output=html&source=placeapi_v2', '58', '54', null, '3', '3', '3', '3');
INSERT INTO `detailinfo` VALUES ('eef2d528a7db5cbe3ae4a69a', 'cater', '其他小吃,九里堤/西南交大', 'http://api.map.baidu.com/place/detail?uid=eef2d528a7db5cbe3ae4a69a&output=html&source=placeapi_v2', '8', null, null, '2', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('f2f15ffbc43a1691621c678f', 'cater', '面包糕点,玉林', 'http://api.map.baidu.com/place/detail?uid=f2f15ffbc43a1691621c678f&output=html&source=placeapi_v2', '14', null, null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('f5e3bcaefe8dc6d85e17c347', 'cater', '粤菜,双楠', 'http://api.map.baidu.com/place/detail?uid=f5e3bcaefe8dc6d85e17c347&output=html&source=placeapi_v2', '53', null, null, '4', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('f9fd6062622d74060f0e6b2b', 'cater', '川菜,磨子桥', 'http://api.map.baidu.com/place/detail?uid=f9fd6062622d74060f0e6b2b&output=html&source=placeapi_v2', '15', null, null, '4', null, '2', '1');
INSERT INTO `detailinfo` VALUES ('fc76752455315d874e776e1d', 'cater', '美食,鱼火锅,玉林', 'http://api.map.baidu.com/place/detail?uid=3f9337d61e26e0aaf7231058&output=html&source=placeapi_v2', '76', '55.9', '10:00-22:30', '5', '3', '4', '5');
INSERT INTO `detailinfo` VALUES ('fd007c5e69486275a9f729b5', 'cater', '面包糕点,建设路', 'http://api.map.baidu.com/place/detail?uid=fd007c5e69486275a9f729b5&output=html&source=placeapi_v2', '14', null, null, '3', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('fd13a3f21e24eee3b1077d32', 'cater', '其他小吃,磨子桥', 'http://api.map.baidu.com/place/detail?uid=fd13a3f21e24eee3b1077d32&output=html&source=placeapi_v2', '15', null, null, '4', null, '2', '2');
INSERT INTO `detailinfo` VALUES ('ffae155eb4ca1b8429fc4830', 'cater', '烧烤,双楠', 'http://api.map.baidu.com/place/detail?uid=ffae155eb4ca1b8429fc4830&output=html&source=placeapi_v2', '50', null, null, '2', null, '3', '2');

-- ----------------------------
-- Table structure for `foodcategory`
-- ----------------------------
DROP TABLE IF EXISTS `foodcategory`;
CREATE TABLE `foodcategory` (
  `ID` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `NAME` varchar(200) DEFAULT NULL COMMENT '名字',
  `COUNT` bigint(20) DEFAULT NULL COMMENT '数量(默认为0)',
  `NOTES` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='美食分类表FOODCATEGORY';

-- ----------------------------
-- Records of foodcategory
-- ----------------------------

-- ----------------------------
-- Table structure for `mycoupons`
-- ----------------------------
DROP TABLE IF EXISTS `mycoupons`;
CREATE TABLE `mycoupons` (
  `ID` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `CID` bigint(30) DEFAULT NULL COMMENT '优惠券主键ID',
  `UID` bigint(30) DEFAULT NULL COMMENT '会员主键ID',
  `COUNT` int(11) DEFAULT NULL COMMENT '数量',
  `PRICE` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `NOTES` varchar(200) DEFAULT NULL COMMENT '备注',
  `STATUS` varchar(20) DEFAULT NULL COMMENT '状态(已经使用,还未使用,已经过期)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='我的优惠券MYCOUPONS';

-- ----------------------------
-- Records of mycoupons
-- ----------------------------
INSERT INTO `mycoupons` VALUES ('1', '23', '4', '18', '450.00', null, '0');
INSERT INTO `mycoupons` VALUES ('2', '30', '4', '3', '75.00', null, '1');
INSERT INTO `mycoupons` VALUES ('3', '5', '4', '2', '50.00', null, '0');
INSERT INTO `mycoupons` VALUES ('4', '5', '4', '3', '75.00', null, '0');

-- ----------------------------
-- Table structure for `myfavorite`
-- ----------------------------
DROP TABLE IF EXISTS `myfavorite`;
CREATE TABLE `myfavorite` (
  `ID` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UID` bigint(30) DEFAULT NULL COMMENT '会员主键ID',
  `LOGINNAME` varchar(50) DEFAULT NULL COMMENT '会员账号',
  `DASHID` bigint(30) DEFAULT NULL COMMENT '餐厅主键ID',
  `DASHNAME` varchar(200) DEFAULT NULL COMMENT '餐厅名字',
  `TIME` datetime DEFAULT NULL COMMENT '收藏时间',
  `NOTES` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='我的收藏MYFAVORITE';

-- ----------------------------
-- Records of myfavorite
-- ----------------------------
INSERT INTO `myfavorite` VALUES ('35', '4', '123', '170', '跷脚牛肉', '2014-06-02 20:30:59', null);
INSERT INTO `myfavorite` VALUES ('36', '4', '123', '197', '欧湖岛海鲜酒楼', '2014-06-02 20:31:05', null);
INSERT INTO `myfavorite` VALUES ('37', '4', '123', '150', '何姐冒菜', '2014-06-02 20:31:11', null);

-- ----------------------------
-- Table structure for `torder`
-- ----------------------------
DROP TABLE IF EXISTS `torder`;
CREATE TABLE `torder` (
  `ID` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `DASHID` bigint(30) DEFAULT NULL COMMENT '餐厅主键ID',
  `UID` bigint(30) DEFAULT NULL COMMENT '会员主键ID',
  `LOGINNAME` varchar(50) DEFAULT NULL COMMENT '会员账号',
  `TELPHONE` varchar(50) DEFAULT NULL COMMENT '会员电话',
  `TIME` datetime DEFAULT NULL COMMENT '产生时间',
  `CONTENT` varchar(500) DEFAULT NULL COMMENT '订单详情',
  `STATUS` varchar(20) DEFAULT NULL COMMENT '订单状态(已付款,待付款)',
  `COUNT` int(11) DEFAULT NULL COMMENT '数量',
  `PRICE` decimal(18,2) DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='我的订单TORDER';

-- ----------------------------
-- Records of torder
-- ----------------------------
INSERT INTO `torder` VALUES ('1', '100', '4', '123', '123456789', '2014-04-20 15:18:38', '我要预订', '1', '1', '55.50');
INSERT INTO `torder` VALUES ('2', '100', '4', '123', '123456789', '2014-04-20 15:20:03', '我要预订', '1', '1', '55.50');
INSERT INTO `torder` VALUES ('3', '131', '4', '123', '123456789', '2014-04-20 15:20:58', '我要预订餐厅', '1', '2', '75.50');
INSERT INTO `torder` VALUES ('4', '132', '4', '123', '123456789', '2014-04-20 15:21:07', '我要预订餐厅', '1', '2', '75.50');
INSERT INTO `torder` VALUES ('5', '133', '4', '123', '123456789', '2014-04-20 15:21:21', '我要预订餐厅', '1', '2', '75.50');
INSERT INTO `torder` VALUES ('72', '209', '4', '123', '01012345678', '2014-05-14 17:03:46', '', '0', '3', '180.00');
INSERT INTO `torder` VALUES ('73', '210', '4', '123', '01012345678', '2014-06-02 20:25:26', '', '0', '2', '120.00');

-- ----------------------------
-- Table structure for `tuser`
-- ----------------------------
DROP TABLE IF EXISTS `tuser`;
CREATE TABLE `tuser` (
  `UID` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `LOGINNAME` varchar(50) DEFAULT NULL COMMENT '登录名',
  `LOGINPSW` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `TELPHONE` varchar(50) DEFAULT NULL COMMENT '用户手机号码',
  `USTATUS` int(11) DEFAULT NULL COMMENT '用户状态( 1 正常使用 , 2 注销 ,3 停用)',
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员表一级资源表TUSER';

-- ----------------------------
-- Records of tuser
-- ----------------------------
INSERT INTO `tuser` VALUES ('1', 'yimeng', '1234', null, null, '1');
INSERT INTO `tuser` VALUES ('2', 'whf502', 'whf502', null, null, '1');
INSERT INTO `tuser` VALUES ('3', 'demo2', 'demo2', null, null, '1');
INSERT INTO `tuser` VALUES ('4', '123', '123', null, null, '1');

-- ----------------------------
-- Table structure for `tusersubdata`
-- ----------------------------
DROP TABLE IF EXISTS `tusersubdata`;
CREATE TABLE `tusersubdata` (
  `UID` bigint(30) NOT NULL COMMENT '用户ID',
  `SEX` char(1) DEFAULT NULL COMMENT '用户性别(F:表示女性,M表示男性)',
  `CREDITS` int(11) DEFAULT '10' COMMENT '用户积分',
  `LOGINTIME` datetime DEFAULT NULL COMMENT '登录时间',
  `PLOGINTIME` datetime DEFAULT NULL COMMENT '上次登录时间',
  `PADDRESS` varchar(200) DEFAULT NULL COMMENT '上次登录地址',
  `NADDRESS` varchar(200) DEFAULT NULL COMMENT '现在所在位置',
  `TIME` datetime DEFAULT NULL COMMENT '用户头像上传时间',
  `PATH` varchar(200) DEFAULT NULL COMMENT '用户头像上传路径',
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员表二级资源表TUSERSUBDATA';

-- ----------------------------
-- Records of tusersubdata
-- ----------------------------
INSERT INTO `tusersubdata` VALUES ('1', null, '10', '2014-03-23 17:39:43', '2014-03-23 17:39:43', null, null, null, null);
INSERT INTO `tusersubdata` VALUES ('2', null, '10', '2014-03-23 17:43:02', '2014-03-23 17:43:02', null, null, null, null);
INSERT INTO `tusersubdata` VALUES ('3', null, '10', '2014-03-23 17:44:04', '2014-03-23 17:44:04', null, null, null, null);
