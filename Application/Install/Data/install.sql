/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : morplee

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2014-12-27 17:30:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for s_db
-- ----------------------------
DROP TABLE IF EXISTS `s_db`;
CREATE TABLE `s_db` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) DEFAULT NULL,
  `tflag` varchar(2) DEFAULT NULL,
  `tnamec` varchar(50) DEFAULT NULL,
  `ttype` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_db
-- ----------------------------
INSERT INTO `s_db` VALUES ('1', 'u_menu', '0', '导航菜单', '0');

-- ----------------------------
-- Table structure for s_dbcell
-- ----------------------------
DROP TABLE IF EXISTS `s_dbcell`;
CREATE TABLE `s_dbcell` (
  `tid` int(11) NOT NULL,
  `fname` varchar(40) DEFAULT NULL,
  `fnamec` varchar(40) DEFAULT NULL,
  `cpk` varchar(1) DEFAULT NULL,
  `flx` varchar(20) DEFAULT NULL,
  `fcd` varchar(10) DEFAULT NULL,
  `tofield` varchar(20) DEFAULT NULL,
  `cnotnull` varchar(1) DEFAULT NULL,
  `todic` varchar(50) DEFAULT NULL,
  `cflag` varchar(1) DEFAULT NULL,
  `indexorder` decimal(6,0) NOT NULL,
  `caddflag` decimal(3,0) DEFAULT NULL,
  `ctname` varchar(50) DEFAULT NULL,
  `sharecell` varchar(50) DEFAULT NULL,
  `toquery` varchar(1) DEFAULT NULL,
  `toassign` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`indexorder`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_dbcell
-- ----------------------------
INSERT INTO `s_dbcell` VALUES ('1', 'menuName', '菜单名称', '1', 'varchar', '200', '1', '1', '1', '1', '1', '1', 'menuName', '1', '1', '1');
INSERT INTO `s_dbcell` VALUES ('1', 'menuUrl', '菜单地址', '1', 'varchar', '200', '1', '1', '1', '1', '2', '1', 'menuUrl', '1', '1', '1');
INSERT INTO `s_dbcell` VALUES ('1', 'parentId', '上级编号', '1', 'varchar', '200', '1', '1', '1', '1', '3', '1', 'parentId', '1', '1', '1');
INSERT INTO `s_dbcell` VALUES ('1', 'menuType', '菜单类型', '1', 'varchar', '200', '1', '1', '1', '1', '4', '1', 'menuType', '1', '1', '1');
INSERT INTO `s_dbcell` VALUES ('1', 'menuIndex', '排序', '1', 'varchar', '200', '1', '1', '1', '1', '5', '1', 'menuIndex', '1', '1', '1');
INSERT INTO `s_dbcell` VALUES ('1', 'addTime', '添加时间', '1', 'datetime', '200', '1', '1', '1', '1', '6', '1', 'addTime', '1', '1', '1');

-- ----------------------------
-- Table structure for s_dbform
-- ----------------------------
DROP TABLE IF EXISTS `s_dbform`;
CREATE TABLE `s_dbform` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` decimal(8,0) DEFAULT NULL,
  `vtype` varchar(50) DEFAULT NULL,
  `vname` varchar(50) DEFAULT NULL,
  `form_flag` varchar(1) DEFAULT NULL,
  `form_css` varchar(50) DEFAULT NULL,
  `form_createtime` datetime DEFAULT NULL,
  `form_version` varchar(10) DEFAULT NULL,
  `form_table` varchar(50) DEFAULT NULL,
  `form_content` longtext,
  `form_blank` longtext,
  `form_modify` longtext,
  `form_print` longtext,
  `dealname` varchar(50) DEFAULT NULL,
  `beginname` varchar(50) DEFAULT NULL,
  `initname` varchar(50) DEFAULT NULL,
  `processname` varchar(50) DEFAULT NULL,
  `assignform` text,
  `assignscript` text,
  `detailvid` varchar(50) DEFAULT NULL,
  `vmemo` varchar(100) DEFAULT NULL,
  `modelId` int(11) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_dbform
-- ----------------------------
INSERT INTO `s_dbform` VALUES ('1', '1', 'list', '菜单试图-默认视图', '1', '1', '2014-10-13 16:31:19', '1', 'u_menu', '', '', '', '', '', '', '', '', '', '', '', '', '0');

-- ----------------------------
-- Table structure for u_menu
-- ----------------------------
DROP TABLE IF EXISTS `u_menu`;
CREATE TABLE `u_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(50) DEFAULT NULL,
  `menuUrl` text,
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

-- ----------------------------
-- Table structure for u_user
-- ----------------------------
DROP TABLE IF EXISTS `u_user`;
CREATE TABLE `u_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `user_pwd` varchar(50) NOT NULL,
  `user_creattime` datetime DEFAULT NULL,
  `user_email` varchar(200) DEFAULT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `user_desc` varchar(200) DEFAULT NULL,
  `user_status` int(11) DEFAULT '1',
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_dbcell
-- ----------------------------
DROP TABLE IF EXISTS `v_dbcell`;
CREATE TABLE `v_dbcell` (
  `vid` int(11) NOT NULL,
  `vtype` varchar(50) DEFAULT NULL,
  `vname` varchar(50) DEFAULT NULL,
  `tid` decimal(8,0) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `fnamec` varchar(40) DEFAULT NULL,
  `indexorder` decimal(5,0) DEFAULT NULL,
  `areaname` varchar(30) DEFAULT NULL,
  `isquery` varchar(1) DEFAULT NULL,
  `ispk` varchar(1) DEFAULT NULL,
  `showcontrol` varchar(10) DEFAULT NULL,
  `isreadonly` varchar(1) DEFAULT NULL,
  `isnotnull` varchar(1) DEFAULT NULL,
  `jumpto` varchar(100) DEFAULT NULL,
  `controltype` varchar(50) DEFAULT NULL,
  `inpname` varchar(40) DEFAULT NULL,
  `shareview` varchar(50) DEFAULT NULL,
  `splittitle` varchar(200) DEFAULT NULL,
  `colspan` varchar(1) DEFAULT NULL,
  `vdic` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_dbcell
-- ----------------------------
INSERT INTO `v_dbcell` VALUES ('1', 'list', 'menuName', '1', 'menuName', '菜单名称', '1', '', '1', '1', '', '0', '0', '', '', '', '0', '', '', '');
INSERT INTO `v_dbcell` VALUES ('1', 'list', 'menuUrl', '1', 'menuName', '菜单地址', '2', '', '1', '1', '', '0', '0', '', '', '', '0', '', '', '');
INSERT INTO `v_dbcell` VALUES ('1', 'list', 'parentId', '1', 'parentId', '上级编号', '3', '', '1', '1', '', '0', '0', '', '', '', '0', '', '', '');
INSERT INTO `v_dbcell` VALUES ('1', 'list', 'menuType', '1', 'menuType', '菜单类型', '4', '', '1', '1', '', '0', '0', '', '', '', '0', '', '', '');
INSERT INTO `v_dbcell` VALUES ('1', 'list', 'menuIndex', '1', 'menuIndex', '排序', '5', '', '1', '1', '', '0', '0', '', '', '', '0', '', '', '');
INSERT INTO `v_dbcell` VALUES ('1', 'list', 'addTime', '1', 'addTime', '添加时间', '6', '', '1', '1', '', '0', '0', '', '', '', '0', '', '', '');
