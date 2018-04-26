/*
Navicat MariaDB Data Transfer

Source Server         : nywc@mysql.moontell.cn
Source Server Version : 50556
Source Host           : mysql.moontell.cn:3306
Source Database       : nywc

Target Server Type    : MariaDB
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-04-27 01:36:00
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
INSERT INTO `dcomment` VALUES ('1', 'Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '愁死了', '你是说丑吗', '1', '2018-04-24 13:13:54', '2018-04-24 13:13:57', '24');
INSERT INTO `dcomment` VALUES ('2', 'FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '愁死了', '你是说丑吗', '1', '2018-04-24 13:13:54', '2018-04-24 13:13:57', '24');

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
INSERT INTO `design` VALUES ('FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '无题啊，测试用的', 'http://jianbujingimages.moontell.cn/FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'pass', '测试测试测试测试', '', '15461564764', '2018-04-25 17:06:10', '默认', '100', '20');
INSERT INTO `design` VALUES ('Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '无题啊，测试用的', 'http://jianbujingimages.moontell.cn/Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'pass', '测试测试测试测试', '', '15461564764', '2018-04-24 21:10:13', '默认', '100', '20');

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
INSERT INTO `iwant` VALUES ('FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', 'T恤', '2018-04-24 21:15:18');
INSERT INTO `iwant` VALUES ('Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '杯子', '2018-04-24 21:15:18');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `openId` varchar(30) NOT NULL,
  `nickName` varchar(30) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'user',
  `bonus` decimal(10,0) DEFAULT '0',
  `avatarURL` varchar(255) DEFAULT 'https://wx.qlogo.cn/mmopen/vi_32/mb1BYYNugkz6icqUndwg1nVX5cTBuDBY4qhSVTx4HRIGicbaElcKCXkfwB3sNEj9Sk6Q39E0ZVvNuoQBkibFePH9g/0',
  PRIMARY KEY (`openId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('oPL165cCi274DQKc-J5OGJiu-PQg', 'Molloh', 'user', '0', 'https://wx.qlogo.cn/mmopen/vi_32/tibyEIKrKib7yZVdnRH4BiaaCbzRmWm0HwDQrDfN8bgLQMEeKic3CibAWI0Qym7v2WUySiak0VqPe1FZBEib5WO3SMlcQ/0');
INSERT INTO `member` VALUES ('oPL165f72as52n8d3l9xsulWvKtY', '翦不惊', 'user', '0', 'https://wx.qlogo.cn/mmopen/vi_32/JtMsgJYoRCXqWb3ia2XmplBYGjcoUMAuPzLoRZ08sjG8G8Wlicbq1yr9qvTibkecDUfKQU6XRIy3KhofWViaLlCOibg/0');
INSERT INTO `member` VALUES ('oPL165XH7WzJiFHWBwQAiMmT5fh0', 'moontell', 'user', '0', 'https://wx.qlogo.cn/mmopen/vi_32/mb1BYYNugkz6icqUndwg1nVX5cTBuDBY4qhSVTx4HRIGicbaElcKCXkfwB3sNEj9Sk6Q39E0ZVvNuoQBkibFePH9g/0');

-- ----------------------------
-- Table structure for miaosha_activity
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_activity`;
CREATE TABLE `miaosha_activity` (
  `pname` varchar(50) NOT NULL,
  `startTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `num` int(5) DEFAULT NULL,
  `isEnd` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pname`,`startTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_activity
-- ----------------------------
INSERT INTO `miaosha_activity` VALUES ('港欢的打火机', '2018-05-01 10:00:00', '20', '0');

-- ----------------------------
-- Table structure for miaosha_record
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_record`;
CREATE TABLE `miaosha_record` (
  `recordId` int(10) NOT NULL AUTO_INCREMENT,
  `openId` varchar(30) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `startTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_record
-- ----------------------------

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
INSERT INTO `product` VALUES ('港欢的打火机', 'FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'http://jianbujingimages.moontell.cn/FgiEV3aSIa3LeYWZAISgHCSxo7yD', '破打火机拿出来卖', null, '2018-04-26 17:12:08', '1', '100', '200');

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
