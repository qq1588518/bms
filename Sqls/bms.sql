/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : bms

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-10-03 19:58:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `b_id` int(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '图书id号',
  `t_id` int(3) unsigned NOT NULL COMMENT '分类id号',
  `b_name` varchar(30) NOT NULL COMMENT '图书名称',
  `b_no` int(11) unsigned NOT NULL COMMENT '图书编号',
  `b_total` int(3) unsigned NOT NULL COMMENT '图书总数',
  `b_newnumber` int(3) unsigned NOT NULL COMMENT '图书实时数量',
  `b_buildtime` int(10) unsigned NOT NULL COMMENT '图书入库时间',
  PRIMARY KEY (`b_id`),
  KEY `fk_b_t` (`t_id`),
  CONSTRAINT `fk_b_t` FOREIGN KEY (`t_id`) REFERENCES `booktype` (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for booktype
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype` (
  `t_id` int(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '图书分类id号',
  `t_subid` int(3) unsigned NOT NULL COMMENT '图书父分类id号',
  `t_name` varchar(20) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for b_r
-- ----------------------------
DROP TABLE IF EXISTS `b_r`;
CREATE TABLE `b_r` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT COMMENT '图书和读者关联表id号',
  `r_id` int(4) unsigned NOT NULL COMMENT '读者id',
  `b_id` int(6) unsigned NOT NULL COMMENT '图书id',
  `isback` int(1) NOT NULL DEFAULT '0' COMMENT '是否归还书籍',
  `numberfirst` int(3) unsigned NOT NULL COMMENT '第一次借书天数',
  `numberagain` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '续借天数',
  `b_booktime` int(10) unsigned NOT NULL COMMENT '借书时间',
  `r_booktime` int(10) unsigned NOT NULL COMMENT '还书时间',
  PRIMARY KEY (`id`),
  KEY `fk_b_r_r` (`r_id`),
  KEY `fk_b_r_b` (`b_id`),
  CONSTRAINT `fk_b_r_b` FOREIGN KEY (`b_id`) REFERENCES `book` (`b_id`),
  CONSTRAINT `fk_b_r_r` FOREIGN KEY (`r_id`) REFERENCES `reader` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `u_id` int(2) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员id号',
  `u_name` char(20) NOT NULL COMMENT '管理员用户名',
  `u_password` varchar(16) NOT NULL COMMENT '管理员密码',
  `u_pno` char(11) NOT NULL COMMENT '管理员联系方式',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', 'a0b923820dcc509a', '13227031580');

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader` (
  `r_id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '读者id号',
  `r_name` char(10) NOT NULL COMMENT '读者姓名',
  `r_sex` char(1) NOT NULL COMMENT '读者性别',
  `r_no` varchar(11) NOT NULL COMMENT '读者图书证号',
  `r_pno` varchar(11) NOT NULL COMMENT '读者联系方式',
  `r_pic` varchar(40) NOT NULL COMMENT '读者照片',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;