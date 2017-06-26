/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50636
Source Host           : 120.77.223.41:3306
Source Database       : nyxt

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2017-06-23 17:26:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for nyxt_active
-- ----------------------------
DROP TABLE IF EXISTS `nyxt_active`;
CREATE TABLE `nyxt_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_id` int(11) NOT NULL,
  `crop_grow_time` int(64) NOT NULL,
  `consider` varchar(255) DEFAULT NULL COMMENT '气象关注点',
  `advice` varchar(255) DEFAULT NULL COMMENT '气象建议',
  `del_flag` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nyxt_active
-- ----------------------------
INSERT INTO `nyxt_active` VALUES ('1', '3', '1', '注意温度', '合理管水，追肥拔草，防治病虫', '1');
INSERT INTO `nyxt_active` VALUES ('2', '4', '1', '大苏打2312', '大苏打31232', '1');
INSERT INTO `nyxt_active` VALUES ('3', '58', '1', '苹果的产后护理', '精心呵护', '1');
INSERT INTO `nyxt_active` VALUES ('4', '62', '1', '草鱼的产后护理', '精心呵护', '1');
INSERT INTO `nyxt_active` VALUES ('5', '123', '1', '是否有雷阵雨', '远离空旷地区', '1');

-- ----------------------------
-- Table structure for nyxt_area
-- ----------------------------
DROP TABLE IF EXISTS `nyxt_area`;
CREATE TABLE `nyxt_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) NOT NULL COMMENT '区域名称',
  `code` int(11) DEFAULT NULL COMMENT '区域代码',
  `type` int(3) DEFAULT NULL COMMENT '1:省 2:市 3:县',
  `p_id` int(11) DEFAULT NULL COMMENT '关联上级区域id',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nyxt_area
-- ----------------------------
INSERT INTO `nyxt_area` VALUES ('0', '中国', null, '0', '0', '123', null, null, null, null, '1');
INSERT INTO `nyxt_area` VALUES ('1', '四川省', null, '1', '0', 'booksun4', '2017-06-10 15:12:54', 'booksun4', '2017-06-10 15:12:54', '', '1');
INSERT INTO `nyxt_area` VALUES ('2', '成都市', null, '2', '1', 'booksun4', '2017-06-14 12:07:55', 'booksun4', '2017-06-14 12:07:55', null, '1');
INSERT INTO `nyxt_area` VALUES ('3', '双流区', '3', '3', '2', '李伟', '2017-05-10 21:18:53', '李伟', '2017-05-10 21:18:57', null, '1');
INSERT INTO `nyxt_area` VALUES ('4', '云南省', '4', '1', '0', '李伟', '2017-05-17 19:47:09', '李伟', '2017-05-16 19:47:15', null, '1');
INSERT INTO `nyxt_area` VALUES ('5', '昆明市', '5', '2', '4', '李伟', null, null, null, null, '1');
INSERT INTO `nyxt_area` VALUES ('6', '丽江纳西族自治县', '6', '3', '5', '李伟', null, null, null, null, '1');
INSERT INTO `nyxt_area` VALUES ('11', '锦江区', null, '3', '2', '猛男', '2017-05-15 21:35:56', '猛男', '2017-05-15 21:35:56', null, '1');
INSERT INTO `nyxt_area` VALUES ('12', '河南省', null, '1', '0', '猛男', '2017-05-15 21:42:34', '猛男', '2017-05-15 21:42:34', null, '1');
INSERT INTO `nyxt_area` VALUES ('13', '开封市', null, '2', '12', '猛男', '2017-05-17 19:02:36', '猛男', '2017-05-17 19:02:36', null, '1');
INSERT INTO `nyxt_area` VALUES ('14', '攀枝花', null, '2', '1', '猛男', '2017-05-15 21:46:05', '猛男', '2017-05-15 21:46:05', null, '1');
INSERT INTO `nyxt_area` VALUES ('15', '宜宾市', null, '2', '1', '猛男', '2017-05-15 21:47:31', '猛男', '2017-05-15 21:47:31', null, '1');
INSERT INTO `nyxt_area` VALUES ('47', '河北省', null, '1', '0', 'booksun4', '2017-06-10 14:57:19', 'booksun4', '2017-06-10 14:57:19', null, '1');
INSERT INTO `nyxt_area` VALUES ('48', '北京市', null, '1', '0', 'booksun4', '2017-06-10 19:09:51', 'booksun4', '2017-06-10 19:09:51', null, '1');
INSERT INTO `nyxt_area` VALUES ('55', '贵州省', null, '1', '0', 'booksun4', '2017-06-14 10:00:12', 'booksun4', '2017-06-14 10:00:12', null, '1');
INSERT INTO `nyxt_area` VALUES ('58', '新疆省', null, '1', '0', 'booksun4', '2017-06-14 10:11:21', 'booksun4', '2017-06-14 10:11:21', null, '1');
INSERT INTO `nyxt_area` VALUES ('59', '广安市', null, '2', '1', 'booksun4', '2017-06-14 10:15:08', 'booksun4', '2017-06-14 10:15:08', null, '1');
INSERT INTO `nyxt_area` VALUES ('60', '广安区', null, '3', '59', 'booksun4', '2017-06-14 10:20:25', 'booksun4', '2017-06-14 10:20:25', null, '1');
INSERT INTO `nyxt_area` VALUES ('61', '武侯区', null, '3', '2', 'booksun4', '2017-06-14 10:27:50', 'booksun4', '2017-06-14 10:27:50', null, '1');
INSERT INTO `nyxt_area` VALUES ('62', '西藏省', null, '1', '0', 'booksun4', '2017-06-14 10:28:31', 'booksun4', '2017-06-14 10:28:31', null, '1');
INSERT INTO `nyxt_area` VALUES ('63', '金牛区', null, '3', '2', 'booksun4', '2017-06-14 10:41:22', 'booksun4', '2017-06-14 10:41:22', null, '1');
INSERT INTO `nyxt_area` VALUES ('72', '江西省', null, '1', '0', 'booksun4', '2017-06-16 10:04:52', 'booksun4', '2017-06-16 10:04:52', null, '1');
INSERT INTO `nyxt_area` VALUES ('73', '大理市', null, '2', '4', 'booksun', '2017-06-16 15:13:03', 'booksun', '2017-06-16 15:13:03', null, '1');
INSERT INTO `nyxt_area` VALUES ('75', '天津市', null, '1', '0', '123', '2017-06-17 21:03:24', '123', '2017-06-17 21:03:24', null, '1');
INSERT INTO `nyxt_area` VALUES ('76', '山西省', null, '1', '0', '123', '2017-06-17 21:03:37', '123', '2017-06-17 21:03:37', null, '1');
INSERT INTO `nyxt_area` VALUES ('77', '内蒙古', null, '1', '0', '123', '2017-06-17 21:04:17', '123', '2017-06-17 21:04:17', null, '1');
INSERT INTO `nyxt_area` VALUES ('78', '辽宁省', null, '1', '0', '123', '2017-06-17 21:04:52', '123', '2017-06-17 21:04:52', null, '1');
INSERT INTO `nyxt_area` VALUES ('79', '吉林省', null, '1', '0', '123', '2017-06-17 21:05:13', '123', '2017-06-17 21:05:13', null, '1');
INSERT INTO `nyxt_area` VALUES ('80', '黑龙江省', null, '1', '0', '123', '2017-06-17 21:05:22', '123', '2017-06-17 21:05:22', null, '1');
INSERT INTO `nyxt_area` VALUES ('81', '浙江省', null, '1', '0', '123', '2017-06-17 21:05:28', '123', '2017-06-17 21:05:28', null, '1');
INSERT INTO `nyxt_area` VALUES ('82', '安徽省', null, '1', '0', '123', '2017-06-17 21:05:34', '123', '2017-06-17 21:05:34', null, '1');
INSERT INTO `nyxt_area` VALUES ('83', '山东省', null, '1', '0', '123', '2017-06-17 21:05:41', '123', '2017-06-17 21:05:41', null, '1');
INSERT INTO `nyxt_area` VALUES ('84', '湖北省', null, '1', '0', '123', '2017-06-17 21:06:02', '123', '2017-06-17 21:06:02', null, '1');
INSERT INTO `nyxt_area` VALUES ('85', '广东省', null, '1', '0', '123', '2017-06-17 21:06:16', '123', '2017-06-17 21:06:16', null, '1');
INSERT INTO `nyxt_area` VALUES ('86', '广西省', null, '1', '0', '123', '2017-06-17 21:06:25', '123', '2017-06-17 21:06:25', null, '1');
INSERT INTO `nyxt_area` VALUES ('87', '陕西省', null, '1', '0', '123', '2017-06-17 21:07:01', '123', '2017-06-17 21:07:01', null, '1');
INSERT INTO `nyxt_area` VALUES ('88', '甘肃省', null, '1', '0', '123', '2017-06-17 21:07:08', '123', '2017-06-17 21:07:08', null, '1');
INSERT INTO `nyxt_area` VALUES ('89', '青海省', null, '1', '0', '123', '2017-06-17 21:07:14', '123', '2017-06-17 21:07:14', null, '1');
INSERT INTO `nyxt_area` VALUES ('90', '宁夏省', null, '1', '0', '123', '2017-06-17 21:07:21', '123', '2017-06-17 21:07:21', null, '1');
INSERT INTO `nyxt_area` VALUES ('91', '上海市', null, '1', '0', '123', '2017-06-17 21:08:22', '123', '2017-06-17 21:08:22', null, '1');
INSERT INTO `nyxt_area` VALUES ('92', '江苏省', null, '1', '0', '123', '2017-06-17 21:08:29', '123', '2017-06-17 21:08:29', null, '1');
INSERT INTO `nyxt_area` VALUES ('93', '福建省', null, '1', '0', '123', '2017-06-17 21:08:58', '123', '2017-06-17 21:08:58', null, '1');
INSERT INTO `nyxt_area` VALUES ('100', '湖南省', null, '1', '0', 'booksun', '2017-06-19 11:50:58', 'booksun', '2017-06-19 11:50:58', null, '1');
INSERT INTO `nyxt_area` VALUES ('101', '长沙市', null, '2', '100', 'booksun', '2017-06-20 09:55:46', 'booksun', '2017-06-20 09:55:46', null, '1');

-- ----------------------------
-- Table structure for nyxt_condition
-- ----------------------------
DROP TABLE IF EXISTS `nyxt_condition`;
CREATE TABLE `nyxt_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_id` int(11) NOT NULL,
  `crop_grow_time` int(11) NOT NULL,
  `resuit` text COMMENT '较适宜的气象条件',
  `suit` text COMMENT '适宜气象条件',
  `notsuit` text COMMENT '不适宜条件',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nyxt_condition
-- ----------------------------
INSERT INTO `nyxt_condition` VALUES ('1', '3', '1', '日平均气温在20～30℃，日照充足，雨量适中。', '25-34', '1.连阴雨，光照不足，穗型变小； 2.高温、干旱缺水或雨涝导致穗粒数减少； 3.暴雨或大风造成倒伏。', '1', '2017-06-07 21:27:12', null, null, '1');
INSERT INTO `nyxt_condition` VALUES ('2', '4', '1', '', '', '', 'booksun4', '2017-06-11 22:12:17', null, null, '1');
INSERT INTO `nyxt_condition` VALUES ('3', '58', '1', '下一点雨', '不下雨', '世界末日', 'booksun4', '2017-06-11 22:24:02', null, null, '1');
INSERT INTO `nyxt_condition` VALUES ('4', '62', '1', '有一点水', '有水', '没有水', 'booksun', '2017-06-20 11:56:30', 'booksun', '2017-06-20 11:56:30', '1');
INSERT INTO `nyxt_condition` VALUES ('5', '123', '1', '高温、多雨', '干旱少雨', '瓢泼大雨', 'booksun', '2017-06-21 16:23:28', null, null, '1');

-- ----------------------------
-- Table structure for nyxt_crop
-- ----------------------------
DROP TABLE IF EXISTS `nyxt_crop`;
CREATE TABLE `nyxt_crop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_name` varchar(64) NOT NULL COMMENT '作物名称',
  `croptype` int(11) NOT NULL COMMENT '关联作物种类id',
  `area_id` int(11) DEFAULT NULL COMMENT '关联区域id',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL DEFAULT '1',
  `help` char(255) DEFAULT '' COMMENT '帮助字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nyxt_crop
-- ----------------------------
INSERT INTO `nyxt_crop` VALUES ('1', '苹果', '1', '1', null, null, 'booksun', '2017-06-21 16:27:48', '蔷薇科苹果亚科苹果属植物，其树为落叶乔木。苹果的果实富含矿物质和维生素，是人们经常食用的水果之一。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('2', '鲢鱼', '3', '3', null, null, 'booksun', '2017-06-21 16:30:22', '体形侧扁、稍高，呈纺锤形，背部青灰色，两侧及腹部白色。胸鳍不超过腹鳍基部。各鳍色灰白。头较大。眼睛位置很低。鳞片细小。腹部正中角质棱自胸鳍下方直延达肛门。形态和鳙鱼相似，鲢鱼性急躁，善跳跃。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('3', '黄瓜', '2', '2', null, null, 'booksun', '2017-06-21 16:29:40', '葫芦科一年生蔓生或攀援草本植物', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('4', '香蕉', '1', '2', null, null, 'booksun', '2017-06-21 16:28:37', '芭蕉科芭蕉属植物，又指其果实。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('5', '草鱼', '3', '1', null, null, 'booksun', '2017-06-21 16:30:41', '草鱼属鲤形目鲤科雅罗鱼亚科草鱼属。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('37', '鲫鱼', '3', '1', null, null, 'booksun', '2017-06-21 16:31:06', '属于辐鳍鱼亚纲鲤形目鲤科鲫属。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('38', '草莓', '1', '1', null, null, 'booksun', '2017-06-21 16:34:39', '草莓（学名：Fragaria × ananassa Duch.），多年生草本，高10-40厘米。茎低于叶或近相等，密被开.展黄色柔毛。叶三出，小叶具短柄，质地较厚，倒卵形或菱形，上面深绿色，几无毛，下面淡白绿色，疏生毛，沿脉较密；叶柄密被开展黄色柔毛。聚伞花序，花序下面具一短柄的小叶；花两性；萼片卵形，比副萼片稍长；花瓣白色，近圆形或倒卵椭圆形。聚合果大，宿存萼片直立，紧贴于果实；瘦果尖卵形，光滑。花期4-5月，果期6-7月。[1] ', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('42', '玉米', '2', '1', null, null, 'booksun', '2017-06-21 16:28:56', '本科玉蜀黍属一年生草本植物', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('47', '小麦', '80', '1', '猛男', '2017-05-23 11:21:12', 'booksun', '2017-06-21 16:31:45', '小麦是小麦系植物的统称，是单子叶植物，是一种在世界各地广泛种植的禾本科植物', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('48', '西红柿', '2', '1', '猛男', '2017-05-23 11:28:37', 'booksun', '2017-06-23 13:51:11', '是茄科番茄属一年生或多年生草本植物。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('49', '黄瓜', '2', '1', '猛男', '2017-05-23 20:07:56', 'booksun', '2017-06-21 16:29:40', '葫芦科一年生蔓生或攀援草本植物', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('51', '香蕉', '1', '1', '猛男', '2017-05-23 20:07:56', 'booksun', '2017-06-21 16:28:37', '芭蕉科芭蕉属植物，又指其果实。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('58', '苹果', '1', '2', '猛男', '2017-06-02 00:34:33', 'booksun', '2017-06-21 16:27:48', '蔷薇科苹果亚科苹果属植物，其树为落叶乔木。苹果的果实富含矿物质和维生素，是人们经常食用的水果之一。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('59', '草莓', '1', '2', '猛男', '2017-06-02 00:34:33', 'booksun', '2017-06-21 16:34:39', '草莓（学名：Fragaria × ananassa Duch.），多年生草本，高10-40厘米。茎低于叶或近相等，密被开.展黄色柔毛。叶三出，小叶具短柄，质地较厚，倒卵形或菱形，上面深绿色，几无毛，下面淡白绿色，疏生毛，沿脉较密；叶柄密被开展黄色柔毛。聚伞花序，花序下面具一短柄的小叶；花两性；萼片卵形，比副萼片稍长；花瓣白色，近圆形或倒卵椭圆形。聚合果大，宿存萼片直立，紧贴于果实；瘦果尖卵形，光滑。花期4-5月，果期6-7月。[1] ', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('60', '苹果', '1', '3', '猛男', '2017-06-02 00:39:31', 'booksun', '2017-06-21 16:27:48', '蔷薇科苹果亚科苹果属植物，其树为落叶乔木。苹果的果实富含矿物质和维生素，是人们经常食用的水果之一。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('61', '草莓', '1', '3', '猛男', '2017-06-02 00:39:31', 'booksun', '2017-06-21 16:34:39', '草莓（学名：Fragaria × ananassa Duch.），多年生草本，高10-40厘米。茎低于叶或近相等，密被开.展黄色柔毛。叶三出，小叶具短柄，质地较厚，倒卵形或菱形，上面深绿色，几无毛，下面淡白绿色，疏生毛，沿脉较密；叶柄密被开展黄色柔毛。聚伞花序，花序下面具一短柄的小叶；花两性；萼片卵形，比副萼片稍长；花瓣白色，近圆形或倒卵椭圆形。聚合果大，宿存萼片直立，紧贴于果实；瘦果尖卵形，光滑。花期4-5月，果期6-7月。[1] ', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('62', '草鱼', '3', '2', '猛男', '2017-06-02 00:44:40', 'booksun', '2017-06-21 16:30:41', '草鱼属鲤形目鲤科雅罗鱼亚科草鱼属。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('63', '苹果', '1', '14', '猛男', '2017-06-02 09:57:33', 'booksun', '2017-06-21 16:27:48', '蔷薇科苹果亚科苹果属植物，其树为落叶乔木。苹果的果实富含矿物质和维生素，是人们经常食用的水果之一。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('64', '草莓', '1', '14', '猛男', '2017-06-02 09:57:34', 'booksun', '2017-06-21 16:34:39', '草莓（学名：Fragaria × ananassa Duch.），多年生草本，高10-40厘米。茎低于叶或近相等，密被开.展黄色柔毛。叶三出，小叶具短柄，质地较厚，倒卵形或菱形，上面深绿色，几无毛，下面淡白绿色，疏生毛，沿脉较密；叶柄密被开展黄色柔毛。聚伞花序，花序下面具一短柄的小叶；花两性；萼片卵形，比副萼片稍长；花瓣白色，近圆形或倒卵椭圆形。聚合果大，宿存萼片直立，紧贴于果实；瘦果尖卵形，光滑。花期4-5月，果期6-7月。[1] ', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('65', '苹果', '1', '12', '猛男', '2017-06-02 09:58:29', 'booksun', '2017-06-21 16:27:48', '蔷薇科苹果亚科苹果属植物，其树为落叶乔木。苹果的果实富含矿物质和维生素，是人们经常食用的水果之一。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('66', '草莓', '1', '12', '猛男', '2017-06-02 09:58:30', 'booksun', '2017-06-21 16:34:39', '草莓（学名：Fragaria × ananassa Duch.），多年生草本，高10-40厘米。茎低于叶或近相等，密被开.展黄色柔毛。叶三出，小叶具短柄，质地较厚，倒卵形或菱形，上面深绿色，几无毛，下面淡白绿色，疏生毛，沿脉较密；叶柄密被开展黄色柔毛。聚伞花序，花序下面具一短柄的小叶；花两性；萼片卵形，比副萼片稍长；花瓣白色，近圆形或倒卵椭圆形。聚合果大，宿存萼片直立，紧贴于果实；瘦果尖卵形，光滑。花期4-5月，果期6-7月。[1] ', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('67', '香蕉', '1', '12', '猛男', '2017-06-02 09:58:30', 'booksun', '2017-06-21 16:28:37', '芭蕉科芭蕉属植物，又指其果实。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('68', '草鱼', '3', '15', '猛男', '2017-06-02 09:59:55', 'booksun', '2017-06-21 16:30:41', '草鱼属鲤形目鲤科雅罗鱼亚科草鱼属。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('69', '西红柿', '2', '15', '猛男', '2017-06-02 09:59:56', 'booksun', '2017-06-23 13:51:11', '是茄科番茄属一年生或多年生草本植物。', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('70', '玉米', '2', '2', '猛男', '2017-06-02 10:12:43', 'booksun', '2017-06-21 16:28:56', '本科玉蜀黍属一年生草本植物', '1', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('71', '小麦', '80', '2', '猛男', '2017-06-03 10:24:37', 'booksun', '2017-06-21 16:31:45', '小麦是小麦系植物的统称，是单子叶植物，是一种在世界各地广泛种植的禾本科植物', '0', '帮助字段');
INSERT INTO `nyxt_crop` VALUES ('72', '香蕉', '1', '11', '仙林安娜', '2017-06-05 12:51:17', 'booksun', '2017-06-21 16:28:37', '芭蕉科芭蕉属植物，又指其果实。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('73', '苹果', '1', '11', '仙林安娜', '2017-06-05 12:51:18', 'booksun', '2017-06-21 16:27:48', '蔷薇科苹果亚科苹果属植物，其树为落叶乔木。苹果的果实富含矿物质和维生素，是人们经常食用的水果之一。', '0', '');
INSERT INTO `nyxt_crop` VALUES ('74', '草莓', '1', '11', '仙林安娜', '2017-06-05 12:51:18', 'booksun', '2017-06-21 16:34:39', '草莓（学名：Fragaria × ananassa Duch.），多年生草本，高10-40厘米。茎低于叶或近相等，密被开.展黄色柔毛。叶三出，小叶具短柄，质地较厚，倒卵形或菱形，上面深绿色，几无毛，下面淡白绿色，疏生毛，沿脉较密；叶柄密被开展黄色柔毛。聚伞花序，花序下面具一短柄的小叶；花两性；萼片卵形，比副萼片稍长；花瓣白色，近圆形或倒卵椭圆形。聚合果大，宿存萼片直立，紧贴于果实；瘦果尖卵形，光滑。花期4-5月，果期6-7月。[1] ', '0', '');
INSERT INTO `nyxt_crop` VALUES ('75', '玉米', '2', '3', '仙林安娜', '2017-06-05 12:51:33', 'booksun', '2017-06-21 16:28:56', '本科玉蜀黍属一年生草本植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('76', '小麦', '80', '3', '仙林安娜', '2017-06-05 12:51:34', 'booksun', '2017-06-21 16:31:45', '小麦是小麦系植物的统称，是单子叶植物，是一种在世界各地广泛种植的禾本科植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('79', '玉米', '2', '11', '仙林安娜', '2017-06-05 12:57:56', 'booksun', '2017-06-21 16:28:56', '本科玉蜀黍属一年生草本植物', '0', '');
INSERT INTO `nyxt_crop` VALUES ('80', '草鱼', '3', '3', '仙林安娜', '2017-06-05 12:58:40', 'booksun', '2017-06-21 16:30:41', '草鱼属鲤形目鲤科雅罗鱼亚科草鱼属。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('81', '苹果', '1', '0', '仙林安娜', '2017-06-06 10:42:41', 'booksun', '2017-06-21 16:27:48', '蔷薇科苹果亚科苹果属植物，其树为落叶乔木。苹果的果实富含矿物质和维生素，是人们经常食用的水果之一。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('82', '鲢鱼', '3', '0', '仙林安娜', '2017-06-06 10:43:23', 'booksun', '2017-06-21 16:30:22', '体形侧扁、稍高，呈纺锤形，背部青灰色，两侧及腹部白色。胸鳍不超过腹鳍基部。各鳍色灰白。头较大。眼睛位置很低。鳞片细小。腹部正中角质棱自胸鳍下方直延达肛门。形态和鳙鱼相似，鲢鱼性急躁，善跳跃。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('83', '黄瓜', '2', '0', '仙林安娜', '2017-06-06 10:43:58', 'booksun', '2017-06-21 16:29:40', '葫芦科一年生蔓生或攀援草本植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('84', '香蕉', '1', '0', '仙林安娜', '2017-06-06 10:44:24', 'booksun', '2017-06-21 16:28:37', '芭蕉科芭蕉属植物，又指其果实。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('85', '草鱼', '3', '0', '仙林安娜', '2017-06-06 10:44:57', 'booksun', '2017-06-21 16:30:41', '草鱼属鲤形目鲤科雅罗鱼亚科草鱼属。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('86', '鲫鱼', '3', '0', '仙林安娜', '2017-06-06 10:45:26', 'booksun', '2017-06-21 16:31:06', '属于辐鳍鱼亚纲鲤形目鲤科鲫属。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('87', '草莓', '1', '0', '仙林安娜', '2017-06-06 10:46:15', 'booksun', '2017-06-21 16:34:39', '草莓（学名：Fragaria × ananassa Duch.），多年生草本，高10-40厘米。茎低于叶或近相等，密被开.展黄色柔毛。叶三出，小叶具短柄，质地较厚，倒卵形或菱形，上面深绿色，几无毛，下面淡白绿色，疏生毛，沿脉较密；叶柄密被开展黄色柔毛。聚伞花序，花序下面具一短柄的小叶；花两性；萼片卵形，比副萼片稍长；花瓣白色，近圆形或倒卵椭圆形。聚合果大，宿存萼片直立，紧贴于果实；瘦果尖卵形，光滑。花期4-5月，果期6-7月。[1] ', '1', '');
INSERT INTO `nyxt_crop` VALUES ('88', '玉米', '2', '0', '仙林安娜', '2017-06-06 10:46:40', 'booksun', '2017-06-21 16:28:56', '本科玉蜀黍属一年生草本植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('89', '小麦', '80', '0', '仙林安娜', '2017-06-06 10:47:48', 'booksun', '2017-06-21 16:31:45', '小麦是小麦系植物的统称，是单子叶植物，是一种在世界各地广泛种植的禾本科植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('90', '西红柿', '2', '0', '仙林安娜', '2017-06-06 10:48:14', 'booksun', '2017-06-23 13:51:11', '是茄科番茄属一年生或多年生草本植物。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('91', '苹果', '1', '4', '????', '2017-06-06 11:07:00', 'booksun', '2017-06-21 16:27:48', '蔷薇科苹果亚科苹果属植物，其树为落叶乔木。苹果的果实富含矿物质和维生素，是人们经常食用的水果之一。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('92', '草鱼', '3', '4', '????', '2017-06-06 11:07:01', 'booksun', '2017-06-21 16:30:41', '草鱼属鲤形目鲤科雅罗鱼亚科草鱼属。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('93', '鲫鱼', '3', '4', '????', '2017-06-06 11:07:01', 'booksun', '2017-06-21 16:31:06', '属于辐鳍鱼亚纲鲤形目鲤科鲫属。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('94', '西红柿', '2', '4', '????', '2017-06-06 11:07:02', 'booksun', '2017-06-23 13:51:11', '是茄科番茄属一年生或多年生草本植物。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('95', '玉米', '2', '4', '????', '2017-06-06 11:07:03', 'booksun', '2017-06-21 16:28:56', '本科玉蜀黍属一年生草本植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('96', '草鱼', '3', '5', '????', '2017-06-06 11:07:14', 'booksun', '2017-06-21 16:30:41', '草鱼属鲤形目鲤科雅罗鱼亚科草鱼属。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('97', '鲫鱼', '3', '5', '????', '2017-06-06 11:07:15', 'booksun', '2017-06-21 16:31:06', '属于辐鳍鱼亚纲鲤形目鲤科鲫属。', '0', '');
INSERT INTO `nyxt_crop` VALUES ('99', '鲫鱼', '3', '6', 'booksun4', '2017-06-16 09:23:07', 'booksun', '2017-06-21 16:31:06', '属于辐鳍鱼亚纲鲤形目鲤科鲫属。', '0', '');
INSERT INTO `nyxt_crop` VALUES ('100', '苹果', '1', '62', '123', '2017-06-17 21:26:16', 'booksun', '2017-06-21 16:27:48', '蔷薇科苹果亚科苹果属植物，其树为落叶乔木。苹果的果实富含矿物质和维生素，是人们经常食用的水果之一。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('101', '香蕉', '1', '62', '123', '2017-06-17 21:26:17', 'booksun', '2017-06-21 16:28:37', '芭蕉科芭蕉属植物，又指其果实。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('102', '草莓', '1', '62', '123', '2017-06-17 21:26:17', 'booksun', '2017-06-21 16:34:39', '草莓（学名：Fragaria × ananassa Duch.），多年生草本，高10-40厘米。茎低于叶或近相等，密被开.展黄色柔毛。叶三出，小叶具短柄，质地较厚，倒卵形或菱形，上面深绿色，几无毛，下面淡白绿色，疏生毛，沿脉较密；叶柄密被开展黄色柔毛。聚伞花序，花序下面具一短柄的小叶；花两性；萼片卵形，比副萼片稍长；花瓣白色，近圆形或倒卵椭圆形。聚合果大，宿存萼片直立，紧贴于果实；瘦果尖卵形，光滑。花期4-5月，果期6-7月。[1] ', '1', '');
INSERT INTO `nyxt_crop` VALUES ('103', '黄瓜', '2', '47', '123', '2017-06-17 21:26:35', 'booksun', '2017-06-21 16:29:40', '葫芦科一年生蔓生或攀援草本植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('104', '玉米', '2', '47', '123', '2017-06-17 21:26:36', 'booksun', '2017-06-21 16:28:56', '本科玉蜀黍属一年生草本植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('105', '西红柿', '2', '47', '123', '2017-06-17 21:26:37', 'booksun', '2017-06-23 13:51:11', '是茄科番茄属一年生或多年生草本植物。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('106', '小麦', '80', '47', '123', '2017-06-17 21:26:37', 'booksun', '2017-06-21 16:31:45', '小麦是小麦系植物的统称，是单子叶植物，是一种在世界各地广泛种植的禾本科植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('107', '黄瓜', '2', '63', '猛男', '2017-06-18 01:21:15', 'booksun', '2017-06-21 16:29:40', '葫芦科一年生蔓生或攀援草本植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('108', '苹果', '1', '63', '猛男', '2017-06-18 01:21:16', 'booksun', '2017-06-21 16:27:48', '蔷薇科苹果亚科苹果属植物，其树为落叶乔木。苹果的果实富含矿物质和维生素，是人们经常食用的水果之一。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('110', '西瓜', '1', '0', 'booksun', '2017-06-18 18:14:02', 'booksun', '2017-06-21 16:28:13', '一年生蔓生藤本；茎、枝粗壮，具明显的棱。卷须较粗壮，具短柔毛，叶柄粗，密被柔毛；叶片纸质，轮廓三角状卵形，带白绿色，两面具短硬毛，叶片基部心形。雌雄同株。雌、雄花均单生于叶腋。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('112', '哈密瓜', '1', '0', 'booksun', '2017-06-18 18:34:41', 'booksun', '2017-06-21 16:34:20', '哈密瓜（Cucumis melo var. saccharinus），是甜瓜的一个转变。又名雪瓜、贡瓜，是一类优良甜瓜品种，果型圆形或卵圆形，出产于新疆。味甜，果实大，以哈密所产最为著名，故称为哈密瓜。因为味道甜美。据史料记载，清朝康熙年间，哈密王把甜瓜作为礼品向朝廷进贡，“哈密瓜”便由此得名，并成为新疆甜瓜的总称。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('113', '橘子', '1', '0', 'booksun', '2017-06-18 22:53:16', 'booksun', '2017-06-21 16:33:52', '橘（英语：Mandarin orange；学名：Citrus reticulata）是芸香科柑桔属的一种水果。“橘”（jú）和“桔”（jié）都是现代汉语规范字，然“桔”作橘子一义时，为“橘”的俗写[1]。在广东的一些方言中二字同音，“桔”也曾做过“橘”的二简字。闽南语称橘为柑仔。西南官话区的各方言中呼为“柑子”或“柑儿”。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('114', '黄瓜', '2', '3', 'booksun', '2017-06-18 22:55:28', 'booksun', '2017-06-21 16:29:40', '葫芦科一年生蔓生或攀援草本植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('115', '香蕉', '1', '3', 'booksun', '2017-06-18 22:55:29', 'booksun', '2017-06-21 16:28:37', '芭蕉科芭蕉属植物，又指其果实。', '0', '');
INSERT INTO `nyxt_crop` VALUES ('116', '鲫鱼', '3', '2', 'booksun', '2017-06-18 22:55:39', 'booksun', '2017-06-21 16:31:06', '属于辐鳍鱼亚纲鲤形目鲤科鲫属。', '0', '');
INSERT INTO `nyxt_crop` VALUES ('118', '冬瓜', '2', '0', 'booksun', '2017-06-18 23:31:30', 'booksun', '2017-06-21 16:30:00', '葫芦科冬瓜属一年生蔓生或架生草本植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('119', '茄子', '2', '0', 'booksun', '2017-06-20 09:53:03', 'booksun', '2017-06-20 09:53:09', '好吃的茄子', '0', '');
INSERT INTO `nyxt_crop` VALUES ('120', '草莓', '1', '59', 'booksun', '2017-06-20 09:53:46', 'booksun', '2017-06-21 16:34:39', '草莓（学名：Fragaria × ananassa Duch.），多年生草本，高10-40厘米。茎低于叶或近相等，密被开.展黄色柔毛。叶三出，小叶具短柄，质地较厚，倒卵形或菱形，上面深绿色，几无毛，下面淡白绿色，疏生毛，沿脉较密；叶柄密被开展黄色柔毛。聚伞花序，花序下面具一短柄的小叶；花两性；萼片卵形，比副萼片稍长；花瓣白色，近圆形或倒卵椭圆形。聚合果大，宿存萼片直立，紧贴于果实；瘦果尖卵形，光滑。花期4-5月，果期6-7月。[1] ', '1', '');
INSERT INTO `nyxt_crop` VALUES ('121', '鲫鱼', '3', '59', 'booksun', '2017-06-20 09:53:47', 'booksun', '2017-06-21 16:31:06', '属于辐鳍鱼亚纲鲤形目鲤科鲫属。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('122', '西红柿', '2', '59', 'booksun', '2017-06-20 09:53:47', 'booksun', '2017-06-23 13:51:11', '是茄科番茄属一年生或多年生草本植物。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('123', '哈密瓜', '1', '47', 'booksun', '2017-06-21 16:21:55', 'booksun', '2017-06-21 16:34:20', '哈密瓜（Cucumis melo var. saccharinus），是甜瓜的一个转变。又名雪瓜、贡瓜，是一类优良甜瓜品种，果型圆形或卵圆形，出产于新疆。味甜，果实大，以哈密所产最为著名，故称为哈密瓜。因为味道甜美。据史料记载，清朝康熙年间，哈密王把甜瓜作为礼品向朝廷进贡，“哈密瓜”便由此得名，并成为新疆甜瓜的总称。', '1', '');
INSERT INTO `nyxt_crop` VALUES ('124', '冬瓜', '2', '47', 'booksun', '2017-06-21 16:21:55', 'booksun', '2017-06-21 16:30:00', '葫芦科冬瓜属一年生蔓生或架生草本植物', '1', '');
INSERT INTO `nyxt_crop` VALUES ('125', '茄子', '2', '47', 'booksun', '2017-06-21 16:21:56', null, null, null, '1', '');
INSERT INTO `nyxt_crop` VALUES ('126', '祖国的花朵', '107', '0', 'booksun', '2017-06-21 16:32:30', 'booksun', '2017-06-21 16:33:22', '千千万万祖国的花朵，千万不要学计算机。', '1', '');

-- ----------------------------
-- Table structure for nyxt_croptype
-- ----------------------------
DROP TABLE IF EXISTS `nyxt_croptype`;
CREATE TABLE `nyxt_croptype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `croptype_name` varchar(64) NOT NULL COMMENT '作物类型名称',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nyxt_croptype
-- ----------------------------
INSERT INTO `nyxt_croptype` VALUES ('1', '水果', null, null, 'booksun', '2017-06-23 13:50:13', '多汁且主要味觉为甜味和酸味可食用的植物果实，不但含有丰富的营养且能够帮助消化，带有正能量', '1');
INSERT INTO `nyxt_croptype` VALUES ('2', '蔬菜', null, null, null, null, '是指可以做菜、烹饪成为食品的一类植物或菌类，蔬菜是人们日常饮食中必不可少的食物之一，是一种绿色食品。', '1');
INSERT INTO `nyxt_croptype` VALUES ('3', '鱼类', null, null, null, null, '是最古老的脊椎动物。部分不同染色体数目的杂交的后代依然有生育能力。它们几乎栖居于地球上所有的水生环境', '1');
INSERT INTO `nyxt_croptype` VALUES ('77', '鸟类', null, null, null, null, '脊椎动物亚门的一纲。体均被羽，恒温，卵生，胚胎外有羊膜。前肢成翼，有时退化。', '1');
INSERT INTO `nyxt_croptype` VALUES ('80', '粮食', null, null, '猛男222', '2017-05-23 11:33:28', '粮食是指烹饪食品中各种植物种子总称，也可概括称为“谷物”。', '1');
INSERT INTO `nyxt_croptype` VALUES ('81', '竹类', null, null, '猛男222', '2017-05-22 23:47:51', '竹类植物属禾本科竹亚科。竹亚科是一类再生性很强的植物，是重要的造园材料，是构成中国园林的重要元素。', '1');
INSERT INTO `nyxt_croptype` VALUES ('97', '小吃', '猛男222', '2017-05-22 23:24:49', '猛男222', '2017-05-22 23:39:55', '1235', '0');
INSERT INTO `nyxt_croptype` VALUES ('98', '菌类', 'booksun4', '2017-06-14 17:49:44', 'booksun4', '2017-06-14 17:50:19', '长在阴暗潮湿的地方', '1');
INSERT INTO `nyxt_croptype` VALUES ('99', '4151', '123', '2017-06-16 15:36:20', '123', '2017-06-16 16:45:17', '6326', '0');
INSERT INTO `nyxt_croptype` VALUES ('100', 'é¿æ¯è¾¾', '123', '2017-06-16 15:38:15', '123', '2017-06-16 16:45:19', 'åè¨', '0');
INSERT INTO `nyxt_croptype` VALUES ('102', '虾类', 'booksun', '2017-06-19 10:26:09', 'booksun', '2017-06-19 10:26:13', '好吃 真的好吃', '0');
INSERT INTO `nyxt_croptype` VALUES ('104', '工程实践', '猛男', '2017-06-20 08:50:40', '猛男', '2017-06-20 08:50:49', '老师很漂亮', '0');
INSERT INTO `nyxt_croptype` VALUES ('105', '工程实践', '猛男', '2017-06-20 08:51:19', '猛男', '2017-06-20 08:51:24', '老师很负责', '0');
INSERT INTO `nyxt_croptype` VALUES ('106', '工程实践', 'booksun', '2017-06-20 11:50:33', 'booksun', '2017-06-20 11:50:39', '老师很优秀', '0');
INSERT INTO `nyxt_croptype` VALUES ('107', '花朵', 'booksun', '2017-06-21 16:33:09', null, null, '花朵，Flower [\'flauə] ，inflorescence，指的是已经开放的花。主要指花瓣部分，鲜艳美丽；多用于儿童，象征美丽纯洁，充满希望', '1');

-- ----------------------------
-- Table structure for nyxt_disaster
-- ----------------------------
DROP TABLE IF EXISTS `nyxt_disaster`;
CREATE TABLE `nyxt_disaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_id` int(11) NOT NULL,
  `crop_grow_time` int(11) NOT NULL,
  `disaster_name` varchar(30) DEFAULT NULL COMMENT '气象灾害名称',
  `type` varchar(30) DEFAULT NULL COMMENT '气象灾害类型',
  `conif` varchar(64) DEFAULT NULL COMMENT '发生条件',
  `measure` varchar(64) DEFAULT NULL COMMENT '措施',
  `product` varchar(64) DEFAULT NULL COMMENT '检测产品',
  `del_flag` char(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nyxt_disaster
-- ----------------------------
INSERT INTO `nyxt_disaster` VALUES ('1', '3', '1', '低温', '低温冷害', '自然条件', '保温增温', null, '1');
INSERT INTO `nyxt_disaster` VALUES ('2', '3', '1', '岩浆', '低温冷害', '自然条件', '就地避难', null, '1');
INSERT INTO `nyxt_disaster` VALUES ('3', '3', '1', '暴雨', '12', '3123', '312312', null, '0');
INSERT INTO `nyxt_disaster` VALUES ('4', '4', '1', '大风暴', '自然灾害', '自然条件', '跑', null, '1');
INSERT INTO `nyxt_disaster` VALUES ('5', '3', '1', '1', '1', '1', '1', null, '0');
INSERT INTO `nyxt_disaster` VALUES ('6', '3', '1', '2', '2', '2', '2', null, '0');
INSERT INTO `nyxt_disaster` VALUES ('7', '3', '1', '地震', '自然灾害', '自然条件', '就地避难', null, '1');
INSERT INTO `nyxt_disaster` VALUES ('8', '3', '1', '暴风', '自然灾害', '自然条件', '建筑物内避难', null, '1');
INSERT INTO `nyxt_disaster` VALUES ('9', '3', '1', '雷暴', '自然灾害', '自然条件', '就地躲避', null, '1');
INSERT INTO `nyxt_disaster` VALUES ('10', '3', '1', '大声道1', '231', '3123', '213123', null, '0');
INSERT INTO `nyxt_disaster` VALUES ('11', '3', '1', '123', '123', '123', '123', null, '0');
INSERT INTO `nyxt_disaster` VALUES ('12', '3', '1', '大洪水', '自然灾害', '自然条件', '跑路', null, '1');
INSERT INTO `nyxt_disaster` VALUES ('13', '3', '1', '1234', '3', '534123', '5345', null, '0');
INSERT INTO `nyxt_disaster` VALUES ('14', '3', '1', '123', '123', '123', '123', null, '0');
INSERT INTO `nyxt_disaster` VALUES ('15', '3', '1', '1234', '123', '1231', '2312', null, '0');
INSERT INTO `nyxt_disaster` VALUES ('16', '123', '1', '超大暴雨', '自然条件', '自然条件', '室内避雨', null, '1');

-- ----------------------------
-- Table structure for nyxt_factor
-- ----------------------------
DROP TABLE IF EXISTS `nyxt_factor`;
CREATE TABLE `nyxt_factor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factor_name` varchar(60) NOT NULL COMMENT '气象要素名称',
  `crop_id` int(11) NOT NULL COMMENT '作物id关联crop表中的id',
  `crop_time_id` varchar(64) NOT NULL COMMENT '关联作物生育期中的id',
  `resuitlow` varchar(64) DEFAULT NULL COMMENT '较适宜下限',
  `suitlow` varchar(64) DEFAULT NULL COMMENT '适宜下限',
  `suitmid` varchar(64) DEFAULT NULL COMMENT '适宜',
  `resuithigh` varchar(64) DEFAULT NULL COMMENT '较适宜上限',
  `suithigh` varchar(64) DEFAULT NULL COMMENT '适宜上限',
  `create_by` varchar(64) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nyxt_factor
-- ----------------------------
INSERT INTO `nyxt_factor` VALUES ('1', '降雨', '3', '1', '9', '5', '12', '13', '15', '1', '2017-06-06 10:39:03', 'booksun', '2017-06-20 10:12:04', '1');
INSERT INTO `nyxt_factor` VALUES ('2', '日照', '3', '1', '2', '1', '1', '1', '2', '1', '2017-06-06 10:38:53', '1', '2017-06-06 10:38:57', '0');
INSERT INTO `nyxt_factor` VALUES ('3', '暴雨', '3', '1', '10', '20', '30', '40', '60', '1', '2017-06-06 10:38:47', '1', '2017-06-06 10:38:50', '0');
INSERT INTO `nyxt_factor` VALUES ('4', '??', '1', '1', '10', '20', '45', '40', '50', '1', '2017-06-07 11:26:29', '????', '2017-06-18 20:20:24', '1');
INSERT INTO `nyxt_factor` VALUES ('6', '大火', '3', '1', null, '2', '2', '2,2', '2', 'booksun4', '2017-06-10 17:34:18', 'booksun4', null, '0');
INSERT INTO `nyxt_factor` VALUES ('7', '大雪', '3', '1', '-1', '14', '18', '19', '20', 'booksun4', '2017-06-10 17:35:20', 'booksun', '2017-06-20 10:12:56', '1');
INSERT INTO `nyxt_factor` VALUES ('8', '', '3', '1', '', '', '', '', '', 'booksun4', '2017-06-10 19:33:43', 'booksun4', null, '0');
INSERT INTO `nyxt_factor` VALUES ('9', '降雨', '3', '1', '20', '20', '20', '20', '20', 'booksun4', '2017-06-11 11:58:14', 'booksun4', null, '1');
INSERT INTO `nyxt_factor` VALUES ('10', '大太阳', '4', '1', '12', '12', '12', '12', '12', 'booksun4', '2017-06-11 21:05:42', 'booksun4', null, '1');
INSERT INTO `nyxt_factor` VALUES ('11', '霜降', '3', '1', '1', '1', '11', '1', '1', 'booksun4', '2017-06-13 20:59:45', 'booksun', '2017-06-20 10:15:30', '1');
INSERT INTO `nyxt_factor` VALUES ('12', '1', '3', '1', '1', '1', '1', '1', '2', 'booksun4', '2017-06-13 21:01:05', 'booksun4', '2017-06-13 21:10:09', '1');
INSERT INTO `nyxt_factor` VALUES ('13', '2', '3', '1', '1', '1', '1', '1', '1', 'booksun4', '2017-06-13 21:09:44', 'booksun4', null, '1');
INSERT INTO `nyxt_factor` VALUES ('14', '气压', '3', '1', '12', '26', '21', '22', '32', 'booksun4', '2017-06-14 10:07:32', 'booksun', '2017-06-20 11:40:53', '1');
INSERT INTO `nyxt_factor` VALUES ('15', '湿度', '3', '1', '8', '5', '10', '11', '12', 'booksun', '2017-06-20 10:35:04', 'booksun', null, '1');
INSERT INTO `nyxt_factor` VALUES ('16', '123', '3', '1', '3123', '31', '123123', '3213123', '231', 'booksun', '2017-06-20 11:39:52', 'booksun', null, '0');
INSERT INTO `nyxt_factor` VALUES ('17', '下雨', '62', '1', '7', '8', '10', '19', '11', 'booksun', '2017-06-20 11:57:48', 'booksun', null, '1');
INSERT INTO `nyxt_factor` VALUES ('18', '湿度', '123', '1', '11', '13', '12', '19', '18', 'booksun', '2017-06-21 16:22:28', 'booksun', '2017-06-21 16:22:41', '1');
INSERT INTO `nyxt_factor` VALUES ('19', '气温', '123', '1', '11', '12', '13', '19', '15', 'booksun', '2017-06-21 16:22:59', 'booksun', null, '1');
INSERT INTO `nyxt_factor` VALUES ('20', '湿度', '2', '1', '10', '11', '14', '12', '13', 'booksun', '2017-06-23 17:04:16', 'booksun', null, '1');

-- ----------------------------
-- Table structure for nyxt_growtime
-- ----------------------------
DROP TABLE IF EXISTS `nyxt_growtime`;
CREATE TABLE `nyxt_growtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grow_name` varchar(64) NOT NULL COMMENT '生育期名字',
  `startmonth` varchar(64) DEFAULT NULL COMMENT '开始月份',
  `startxun` varchar(64) DEFAULT NULL COMMENT '开始旬',
  `endmonth` varchar(64) DEFAULT NULL COMMENT '结束月份',
  `endxun` varchar(64) DEFAULT NULL COMMENT '结束旬',
  `crop_id` int(11) NOT NULL COMMENT '所属作物，关联crop表中的id',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建使其',
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nyxt_growtime
-- ----------------------------
INSERT INTO `nyxt_growtime` VALUES ('1', '播种', '一月', '上旬', '三月', '下旬', '3', null, null, null, null, '1');
INSERT INTO `nyxt_growtime` VALUES ('2', '出芽', '一月', '上旬', '一月', '上旬', '3', null, null, null, null, '1');
INSERT INTO `nyxt_growtime` VALUES ('5', '开花', '七月', '中旬', '二月', '下旬', '4', 'booksun4', '2017-06-13 16:53:52', 'booksun4', '2017-06-13 16:53:52', '0');
INSERT INTO `nyxt_growtime` VALUES ('6', '生长', '二月', '上旬', '一月', '上旬', '3', 'booksun4', '2017-06-14 11:25:30', 'booksun4', '2017-06-14 11:25:30', '1');
INSERT INTO `nyxt_growtime` VALUES ('7', '开花', '一月', '上旬', '一月', '上旬', '3', 'booksun4', '2017-06-14 11:25:55', 'booksun4', '2017-06-14 11:25:55', '1');
INSERT INTO `nyxt_growtime` VALUES ('8', '播种2', '四月', '上旬', '七月', '上旬', '3', 'booksun', '2017-06-20 09:19:17', 'booksun', '2017-06-20 09:19:17', '0');
INSERT INTO `nyxt_growtime` VALUES ('9', '死亡', '一月', '上旬', '一月', '上旬', '3', 'booksun', '2017-06-20 11:52:04', 'booksun', '2017-06-20 11:52:04', '1');
INSERT INTO `nyxt_growtime` VALUES ('10', '开花', '六月', '上旬', '三月', '上旬', '123', 'booksun', '2017-06-21 16:27:12', 'booksun', '2017-06-21 16:27:12', '1');

-- ----------------------------
-- Table structure for nyxt_menu
-- ----------------------------
DROP TABLE IF EXISTS `nyxt_menu`;
CREATE TABLE `nyxt_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '菜单名字',
  `url` varchar(100) NOT NULL COMMENT '菜单地址',
  `level` int(1) NOT NULL COMMENT '层级1为最高',
  `parent_id` int(10) NOT NULL COMMENT '父结点id',
  `sort` int(10) NOT NULL COMMENT '排序',
  `icon` varchar(30) NOT NULL COMMENT '图标',
  `del_flag` char(1) NOT NULL DEFAULT '1' COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nyxt_menu
-- ----------------------------
INSERT INTO `nyxt_menu` VALUES ('1', '个人中心', '', '1', '1', '1', '&#xe612;', '1');
INSERT INTO `nyxt_menu` VALUES ('2', '资料修改', 'getPersonInfoMenu.action', '2', '1', '1', '&#xe642;', '1');
INSERT INTO `nyxt_menu` VALUES ('3', '区域管理', '', '1', '3', '2', '&#xe604;', '1');
INSERT INTO `nyxt_menu` VALUES ('4', '省级管理(直辖市)', 'getAreaMenu/1.action', '2', '3', '1', '&#xe604;', '1');
INSERT INTO `nyxt_menu` VALUES ('5', '作物管理', '', '1', '5', '3', '&#xe62e;', '1');
INSERT INTO `nyxt_menu` VALUES ('6', '作物类别', 'getCropMenu_type.action', '2', '5', '1', '&#xe603;', '1');
INSERT INTO `nyxt_menu` VALUES ('7', '作物管理', 'getCropMenu_controll.action', '2', '5', '2', '&#xe609;', '1');
INSERT INTO `nyxt_menu` VALUES ('8', '作物分配', 'getCropMenu_distribution.action', '2', '5', '3', '&#xe641;', '1');
INSERT INTO `nyxt_menu` VALUES ('9', '气象三农', 'getServe.action', '1', '9', '1', ' &#xe609;', '1');
INSERT INTO `nyxt_menu` VALUES ('10', '三农服务', 'getWeather_Agricluture.action', '2', '9', '1', '&#xe609;', '1');
INSERT INTO `nyxt_menu` VALUES ('11', '市级管理', 'getAreaMenu/2.action', '2', '3', '2', '&#xe615;', '1');
INSERT INTO `nyxt_menu` VALUES ('12', '县级管理(区级)', 'getAreaMenu/3.action', '2', '3', '3', '&#xe619;', '1');
INSERT INTO `nyxt_menu` VALUES ('13', '添加用户', 'getPersonAddMenu.action', '2', '1', '2', '&#xe609;', '1');
INSERT INTO `nyxt_menu` VALUES ('14', '用户列表', 'getPersonListMenu.action', '2', '1', '3', '&#xe615;', '1');

-- ----------------------------
-- Table structure for nyxt_product
-- ----------------------------
DROP TABLE IF EXISTS `nyxt_product`;
CREATE TABLE `nyxt_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_id` int(11) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `product_name` varchar(60) DEFAULT NULL,
  `important` varchar(255) DEFAULT NULL,
  `del_flag` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nyxt_product
-- ----------------------------
INSERT INTO `nyxt_product` VALUES ('1', '3', '气象服务趋势产品', '神奇的中央一台', '提前看天气预报', '1');
INSERT INTO `nyxt_product` VALUES ('2', '3', '监测灾害产品', '雷电探测器', '探测雷电', '1');
INSERT INTO `nyxt_product` VALUES ('3', '3', '精细化服务产品', '害虫杀伤剂', '扫除一切害人虫', '1');
INSERT INTO `nyxt_product` VALUES ('4', '3', '气象服务趋势产品', '神奇的雨伞', '躲雨神器', '1');
INSERT INTO `nyxt_product` VALUES ('7', '3', '气象服务趋势产品', '温度', '别太高', '0');
INSERT INTO `nyxt_product` VALUES ('8', '3', '监测灾害产品', '洪水检测器', '防洪', '1');
INSERT INTO `nyxt_product` VALUES ('10', '3', '精细化服务产品', '除草神奇剪刀', '除草剂', '1');
INSERT INTO `nyxt_product` VALUES ('11', '4', '气象服务趋势产品', '服务12', '硕大的', '1');
INSERT INTO `nyxt_product` VALUES ('12', '4', '监测灾害产品', '是大大大是', '撒大声地', '1');
INSERT INTO `nyxt_product` VALUES ('13', '3', '气象服务趋势产品', '雷暴探测器', '探测雷暴', '1');
INSERT INTO `nyxt_product` VALUES ('14', '3', '监测灾害产品', '薛定谔的地震', '预报地震', '1');
INSERT INTO `nyxt_product` VALUES ('15', '3', '监测灾害产品', '雷神', '漫威不知名的人物', '1');
INSERT INTO `nyxt_product` VALUES ('16', '3', '精细化服务产品', '自动除虫器', '人形工具', '1');
INSERT INTO `nyxt_product` VALUES ('17', '3', '精细化服务产品', '蜘蛛侠', '漫威不值一提的人物', '1');
INSERT INTO `nyxt_product` VALUES ('18', '3', '气象服务趋势产品', '自动天气预报器', '天气预报', '1');
INSERT INTO `nyxt_product` VALUES ('19', '3', '监测灾害产品', '智障检测器', 'ruaruarua', '0');
INSERT INTO `nyxt_product` VALUES ('20', '62', '监测灾害产品', '捕鱼器', '自动抓鱼', '1');
INSERT INTO `nyxt_product` VALUES ('21', '123', '气象服务趋势产品', '雷暴预报机', '精准预报雷暴', '1');
INSERT INTO `nyxt_product` VALUES ('22', '123', '监测灾害产品', '地震监测器', '预报地震时间', '1');
INSERT INTO `nyxt_product` VALUES ('23', '123', '精细化服务产品', '史丹利复合肥', '施肥', '1');

-- ----------------------------
-- Table structure for nyxt_sysuser
-- ----------------------------
DROP TABLE IF EXISTS `nyxt_sysuser`;
CREATE TABLE `nyxt_sysuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(16) NOT NULL COMMENT '账号',
  `password` varchar(16) NOT NULL COMMENT '密码',
  `name` varchar(30) NOT NULL COMMENT '名字',
  `role_id` varchar(30) DEFAULT '1' COMMENT '角色id',
  `post` varchar(50) DEFAULT NULL COMMENT '职务',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门id',
  `phone` varchar(16) DEFAULT NULL COMMENT '电话号码',
  `photo` varchar(128) DEFAULT NULL COMMENT '头像',
  `sex` int(1) DEFAULT NULL COMMENT '性别 1 男 0女',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(128) DEFAULT NULL COMMENT 'qq号码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '1' COMMENT '删除标志',
  `pic` text COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nyxt_sysuser
-- ----------------------------
INSERT INTO `nyxt_sysuser` VALUES ('1', '123', '123', 'booksun', '0', '61004', null, '18382328910', null, '1', '453151@qq.com', '11145444', '123', '2017-06-16 12:51:25', 'booksun', '2017-06-23 17:04:49', '1', '4afe5093-6f46-4d73-9bc8-0495ae426976123.jpg');
INSERT INTO `nyxt_sysuser` VALUES ('3', '456', '123', '太阳骑士', '1', '610041', null, '18382328910', null, '0', '598437682@qq.com', '123123', '123', '2017-06-16 12:51:27', '太阳骑士', '2017-06-21 16:48:37', '1', '485f5452-9c64-4c32-98a8-28ef317c3757332.jpg');
INSERT INTO `nyxt_sysuser` VALUES ('4', '789', '123', '雪莉杨', '2', '610041', null, '123', null, '0', '598437682@qq.com', '123', '123', '2017-06-16 12:51:31', 'booksun', '2017-06-21 16:49:11', '1', '7df99658-b000-43d0-bb50-ac2d1e24824e123.jpg');
INSERT INTO `nyxt_sysuser` VALUES ('8', '234', '123', '猛男', '3', '61004', null, '123', null, '1', '3123@qq.com', '123', '123', '2017-06-16 12:51:25', 'booksun', '2017-06-21 16:49:33', '1', '94026139-3513-4a3f-9230-7118c1e30be8123.jpg');
INSERT INTO `nyxt_sysuser` VALUES ('9', '345', '123', '猛男2', '2', null, null, '123123', null, '1', '123312@qq.com', '123123', '123', '2017-06-16 12:51:25', 'booksun', '2017-06-16 13:36:09', '0', 'c74ab0cb-556e-419a-afa8-7362a692b403123.jpg');
INSERT INTO `nyxt_sysuser` VALUES ('11', '567', '123', '123', '1', null, null, '123', null, '1', '598437682@qq.com', '123', '123', '2017-06-16 12:51:25', 'booksun', '2017-06-21 10:58:34', '0', '57a8ca61-2480-429b-b1b4-6e08bfd7873e123.jpg');
INSERT INTO `nyxt_sysuser` VALUES ('12', '956', '123', '石榴姐', '3', '5400', null, '123456789', null, '0', '598437682@qq.com', '598437682', '123', '2017-06-16 12:51:25', 'booksun', '2017-06-21 16:43:37', '1', 'e39ff195-cd24-4249-98aa-eaefe1e56c5324e66da98226cffc5121608ebe014a90f603ea23.jpg');
INSERT INTO `nyxt_sysuser` VALUES ('13', '4141', '123', '驱蚊器', '2', '312312', null, '1234556789', null, '1', '598437682@qq.com', '598123123', '123', '2017-06-16 12:51:25', 'booksun', '2017-06-23 17:04:55', '1', 'ec332e70-de8c-4f44-a448-fd6ee7461d2a123.jpg');
