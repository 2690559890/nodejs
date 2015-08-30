/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : jztedu

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2014-11-17 13:26:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for s_db
-- ----------------------------
DROP TABLE IF EXISTS `s_db`;
CREATE TABLE `s_db` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tflag` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `tnamec` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ttype` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for s_dbcell
-- ----------------------------
DROP TABLE IF EXISTS `s_dbcell`;
CREATE TABLE `s_dbcell` (
  `tid` int(11) NOT NULL,
  `fname` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `fnamec` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `cpk` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `flx` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `fcd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tofield` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cnotnull` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `todic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cflag` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `indexorder` decimal(6,0) NOT NULL,
  `caddflag` decimal(3,0) DEFAULT NULL,
  `ctname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sharecell` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `toquery` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `toassign` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`indexorder`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for s_dbform
-- ----------------------------
DROP TABLE IF EXISTS `s_dbform`;
CREATE TABLE `s_dbform` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` decimal(8,0) DEFAULT NULL,
  `vtype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `vname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `form_flag` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `form_css` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `form_createtime` datetime DEFAULT NULL,
  `form_version` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `form_table` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `form_content` longtext CHARACTER SET utf8,
  `form_blank` longtext CHARACTER SET utf8,
  `form_modify` longtext CHARACTER SET utf8,
  `form_print` longtext CHARACTER SET utf8,
  `dealname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `beginname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `initname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `processname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `assignform` text CHARACTER SET utf8,
  `assignscript` text CHARACTER SET utf8,
  `detailvid` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `vmemo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `modelId` int(11) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_dbcell
-- ----------------------------
DROP TABLE IF EXISTS `v_dbcell`;
CREATE TABLE `v_dbcell` (
  `vid` int(11) NOT NULL,
  `vtype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `vname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tid` decimal(8,0) NOT NULL,
  `fname` varchar(40) CHARACTER SET utf8 NOT NULL,
  `fnamec` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `indexorder` decimal(5,0) DEFAULT NULL,
  `areaname` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `isquery` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ispk` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `showcontrol` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `isreadonly` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `isnotnull` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `jumpto` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `controltype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `inpname` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `shareview` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `splittitle` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `colspan` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `vdic` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------
-- Table structure for `u_user`
-- -----------------------------
DROP TABLE IF EXISTS `u_user`;
CREATE TABLE `u_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `user_pwd` varchar(50) CHARACTER SET utf8 NOT NULL,
  `user_creattime` datetime DEFAULT NULL,
  `user_email` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `user_phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `user_desc` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `user_status` int(11) DEFAULT '1',
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for u_menu
-- ----------------------------
DROP TABLE IF EXISTS `u_menu`;
CREATE TABLE `u_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `menuUrl` text CHARACTER SET utf8,
  `parentId` int(11) DEFAULT NULL,
  `menuType` int(11) DEFAULT NULL,
  `menuIndex` int(11) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of u_menu
-- ----------------------------
INSERT INTO `u_menu` VALUES ('1', '首页', 'Index/index', '0', '0', '1', '2014-11-26 10:00:16', '1');
INSERT INTO `u_menu` VALUES ('2', '系统管理', 'Config/index', '0', '0', '2', '2014-11-26 10:00:20', '1');
INSERT INTO `u_menu` VALUES ('3', '表管理', 'Config/index', '2', '1', '1', '2014-11-26 10:00:23', '1');
