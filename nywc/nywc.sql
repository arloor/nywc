/*
Navicat MariaDB Data Transfer

Source Server         : nywc@mysql.moontell.cn
Source Server Version : 50556
Source Host           : mysql.moontell.cn:3306
Source Database       : nywc

Target Server Type    : MariaDB
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-04-24 21:38:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bonusHistory
-- ----------------------------
DROP TABLE IF EXISTS `bonusHistory`;
CREATE TABLE `bonusHistory` (
  `openId` varchar(30) NOT NULL,
  `changeTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operatiron` varchar(30) DEFAULT NULL,
  `numChange` int(10) DEFAULT NULL,
  PRIMARY KEY (`openId`,`changeTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bonusHistory
-- ----------------------------

-- ----------------------------
-- Table structure for dcomment
-- ----------------------------
DROP TABLE IF EXISTS `dcomment`;
CREATE TABLE `dcomment` (
  `dcid` int(10) NOT NULL AUTO_INCREMENT,
  `dkey` varchar(30) DEFAULT NULL,
  `openIdComm` varchar(30) DEFAULT NULL,
  `dcomment` varchar(100) DEFAULT NULL,
  `reply` varchar(100) DEFAULT NULL,
  `commentStatus` tinyint(1) DEFAULT NULL,
  `comTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `replyTime` timestamp NULL DEFAULT NULL,
  `numLike` int(10) DEFAULT NULL,
  PRIMARY KEY (`dcid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dcomment
-- ----------------------------
INSERT INTO `dcomment` VALUES ('1', 'Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '愁死了', '你是说丑吗', '1', '2018-04-24 13:13:54', '2018-04-24 13:13:57', '24');
INSERT INTO `dcomment` VALUES ('2', 'FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '愁死了', '你是说丑吗', '1', '2018-04-24 13:13:54', '2018-04-24 13:13:57', '24');

-- ----------------------------
-- Table structure for design
-- ----------------------------
DROP TABLE IF EXISTS `design`;
CREATE TABLE `design` (
  `dkey` varchar(30) NOT NULL,
  `openId` varchar(30) DEFAULT NULL,
  `dname` varchar(30) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `dstatus` varchar(20) DEFAULT '刚发布' COMMENT '刚发布、待审核、无效、审核通过',
  `dinfo` varchar(255) DEFAULT NULL,
  `dTempInfo` varchar(255) DEFAULT NULL,
  `seconds` varchar(30) DEFAULT NULL,
  `uploadTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `theme` varchar(20) DEFAULT NULL,
  `numLike` int(10) DEFAULT NULL,
  `numDislike` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of design
-- ----------------------------
INSERT INTO `design` VALUES ('FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '无题啊，测试用的', 'http://jianbujingimages.moontell.cn/FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'pass', '测试测试测试测试', '', '15461564764', '2018-04-25 17:06:10', '默认', '100', '20');
INSERT INTO `design` VALUES ('Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '无题啊，测试用的', 'http://jianbujingimages.moontell.cn/Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'pass', '测试测试测试测试', '', '15461564764', '2018-04-24 21:10:13', '默认', '100', '20');

-- ----------------------------
-- Table structure for iwant
-- ----------------------------
DROP TABLE IF EXISTS `iwant`;
CREATE TABLE `iwant` (
  `dkey` varchar(30) NOT NULL,
  `wantOpenId` varchar(30) NOT NULL,
  `what` varchar(20) NOT NULL,
  `wantTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dkey`,`wantOpenId`,`what`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iwant
-- ----------------------------
INSERT INTO `iwant` VALUES ('FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', 'T恤', '2018-04-24 21:15:18');
INSERT INTO `iwant` VALUES ('Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '杯子', '2018-04-24 21:15:18');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `openId` varchar(30) NOT NULL,
  `nickName` varchar(30) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `bonus` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`openId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'user', '0');

-- ----------------------------
-- Table structure for myTicket
-- ----------------------------
DROP TABLE IF EXISTS `myTicket`;
CREATE TABLE `myTicket` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `openId` varchar(30) DEFAULT NULL,
  `tname` varchar(30) DEFAULT NULL,
  `ticketStatus` varchar(30) DEFAULT NULL,
  `getTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myTicket
-- ----------------------------

-- ----------------------------
-- Table structure for pcomment
-- ----------------------------
DROP TABLE IF EXISTS `pcomment`;
CREATE TABLE `pcomment` (
  `pcid` int(10) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) DEFAULT NULL,
  `openIdComm` varchar(30) DEFAULT NULL,
  `pcomment` varchar(100) DEFAULT NULL,
  `reply` varchar(100) DEFAULT NULL,
  `comTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `replyTime` timestamp NULL DEFAULT NULL,
  `numLike` int(10) DEFAULT NULL,
  PRIMARY KEY (`pcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pcomment
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pname` varchar(50) NOT NULL,
  `dkey` varchar(50) DEFAULT NULL,
  `pImageURL` varchar(255) DEFAULT NULL,
  `pInfo` varchar(255) DEFAULT NULL,
  `seconds` varchar(30) DEFAULT NULL,
  `releaseTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isNew` tinyint(1) DEFAULT NULL,
  `numLike` decimal(10,0) DEFAULT NULL,
  `numDislike` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`pname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for starProduct
-- ----------------------------
DROP TABLE IF EXISTS `starProduct`;
CREATE TABLE `starProduct` (
  `openId` varchar(30) NOT NULL,
  `pname` varchar(50) NOT NULL,
  PRIMARY KEY (`openId`,`pname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of starProduct
-- ----------------------------

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `tname` varchar(30) NOT NULL,
  `available` tinyint(1) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `param0` int(10) DEFAULT NULL,
  `param1` double(10,2) DEFAULT NULL,
  `param2` int(10) DEFAULT NULL,
  PRIMARY KEY (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticket
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
