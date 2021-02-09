/*
Navicat MySQL Data Transfer

Source Server         : blog209
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2021-02-08 23:26:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sfk_content
-- ----------------------------
DROP TABLE IF EXISTS `sfk_content`;
CREATE TABLE `sfk_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `time` datetime NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `times` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sfk_content
-- ----------------------------
INSERT INTO `sfk_content` VALUES ('1', '1', '试水', '现在是2021年1月16日晚上19:28', '2021-01-16 19:28:57', '8', '1');
INSERT INTO `sfk_content` VALUES ('2', '6', '我爱前端', '前端使我快乐', '2021-01-18 00:01:32', '9', '3');
INSERT INTO `sfk_content` VALUES ('3', '2', '亚索前期对线技巧', '打法师，一级学e，趁其补刀的时候e小兵上去a。', '2021-01-18 14:05:42', '9', '2');
INSERT INTO `sfk_content` VALUES ('4', '2', '打团思路', '1. 看对面阵容。有坦克则q坦克攒风，击飞起c位接大击杀。', '2021-01-18 14:08:15', '9', '2');
INSERT INTO `sfk_content` VALUES ('5', '6', '进分公司', '分为粉我', '2021-01-18 16:03:33', '12', '0');

-- ----------------------------
-- Table structure for sfk_father_module
-- ----------------------------
DROP TABLE IF EXISTS `sfk_father_module`;
CREATE TABLE `sfk_father_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(66) NOT NULL,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='父版块信息表';

-- ----------------------------
-- Records of sfk_father_module
-- ----------------------------
INSERT INTO `sfk_father_module` VALUES ('1', '209天下第一', '0');
INSERT INTO `sfk_father_module` VALUES ('3', '英雄联盟', '0');

-- ----------------------------
-- Table structure for sfk_info
-- ----------------------------
DROP TABLE IF EXISTS `sfk_info`;
CREATE TABLE `sfk_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sfk_info
-- ----------------------------
INSERT INTO `sfk_info` VALUES ('1', 'blog209', 'blog209', '一个简单的个人博客。');

-- ----------------------------
-- Table structure for sfk_manage
-- ----------------------------
DROP TABLE IF EXISTS `sfk_manage`;
CREATE TABLE `sfk_manage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL,
  `create_time` datetime NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sfk_manage
-- ----------------------------
INSERT INTO `sfk_manage` VALUES ('1', 'admin', 'f1cf3e36753081de676611e34731088f', '2020-10-22 17:29:00', '0');
INSERT INTO `sfk_manage` VALUES ('2', '209', 'e10adc3949ba59abbe56e057f20f883e', '2020-11-01 12:52:46', '1');
INSERT INTO `sfk_manage` VALUES ('3', '999999', '52c69e3a57331081823331c4e69d3f2e', '2021-01-18 16:01:56', '1');

-- ----------------------------
-- Table structure for sfk_member
-- ----------------------------
DROP TABLE IF EXISTS `sfk_member`;
CREATE TABLE `sfk_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `register_time` datetime NOT NULL,
  `last_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sfk_member
-- ----------------------------
INSERT INTO `sfk_member` VALUES ('8', 'admin', 'f1cf3e36753081de676611e34731088f', '', '2020-10-22 18:29:36', '2020-10-22 18:29:36');
INSERT INTO `sfk_member` VALUES ('9', 'tcy', 'f1cf3e36753081de676611e34731088f', '', '2021-01-10 21:47:01', '2021-01-10 21:47:01');
INSERT INTO `sfk_member` VALUES ('11', '666666', 'f379eaf3c831b04de153469d1bec345e', '', '2021-01-18 15:42:57', '2021-01-18 15:42:57');
INSERT INTO `sfk_member` VALUES ('12', '111111', '96e79218965eb72c92a549dd5a330112', '', '2021-01-18 16:00:54', '2021-01-18 16:00:54');

-- ----------------------------
-- Table structure for sfk_reply
-- ----------------------------
DROP TABLE IF EXISTS `sfk_reply`;
CREATE TABLE `sfk_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int(10) unsigned NOT NULL,
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `time` datetime NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sfk_reply
-- ----------------------------
INSERT INTO `sfk_reply` VALUES ('1', '3', '0', '2. 打技能型英雄主e，打平a型英雄主q。', '2021-01-18 14:06:26', '9');
INSERT INTO `sfk_reply` VALUES ('2', '2', '0', '6666', '2021-01-18 16:03:08', '12');

-- ----------------------------
-- Table structure for sfk_son_module
-- ----------------------------
DROP TABLE IF EXISTS `sfk_son_module`;
CREATE TABLE `sfk_son_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `father_module_id` int(10) unsigned NOT NULL,
  `module_name` varchar(66) NOT NULL,
  `info` varchar(255) NOT NULL,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sfk_son_module
-- ----------------------------
INSERT INTO `sfk_son_module` VALUES ('1', '1', '209天下第一嗷嗷嗷', '牛逼', '0', '0');
INSERT INTO `sfk_son_module` VALUES ('2', '3', '疾风剑豪', '我的剑，比什么都重要', '9', '0');
INSERT INTO `sfk_son_module` VALUES ('3', '3', '放逐之刃', '我已经觉醒了', '9', '0');
INSERT INTO `sfk_son_module` VALUES ('4', '1', '周星星', 'rush b', '9', '0');
INSERT INTO `sfk_son_module` VALUES ('5', '1', '黄某人', '今天又是悲伤的一天', '9', '0');
INSERT INTO `sfk_son_module` VALUES ('6', '1', '杜月光', '你是我的白月光', '9', '0');
