/*
Navicat MariaDB Data Transfer

Source Server         : nywc
Source Server Version : 50556
Source Host           : mysql.moontell.cn:3306
Source Database       : nywc

Target Server Type    : MariaDB
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-06-09 19:32:39
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
INSERT INTO `dcomment` VALUES ('1', 'Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'oPL165f72as52n8d3l9xsulWvKtY', '好看', '你是说丑吗', '1', '2018-04-24 13:13:54', '2018-04-24 13:13:57', '24');
INSERT INTO `dcomment` VALUES ('2', 'FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'oPL165cCi274DQKc-J5OGJiu-PQg', '不好看', '你是说丑吗', '1', '2018-04-24 13:13:54', '2018-04-24 13:13:57', '24');

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
  `theme` varchar(20) DEFAULT '默认',
  `numLike` int(10) DEFAULT '0',
  `numDislike` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of design
-- ----------------------------
INSERT INTO `design` VALUES ('FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '我的头像', 'http://jianbujingimages.moontell.cn/FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'pass', '头像info', '', '15461564764', '2018-04-25 17:06:10', '默认', '100', '20');
INSERT INTO `design` VALUES ('Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '截图', 'http://jianbujingimages.moontell.cn/Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'pass', '截图info', '', '15461564000', '2018-04-24 21:10:13', '默认', '100', '20');
INSERT INTO `design` VALUES ('Fh31vr0WgaNVqV2D9fs471s9h7ZH', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '智仁勇', 'http://nywcstatic.moontell.cn/Fh31vr0WgaNVqV2D9fs471s9h7ZH', '刚发布', '', null, '1528522790386', '2018-06-09 13:39:50', '默认', '0', '0');
INSERT INTO `design` VALUES ('FhlyHSbQhFxqkgf2llvl-1-Cpd-W', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '雍物集', 'http://nywcstatic.moontell.cn/FhlyHSbQhFxqkgf2llvl-1-Cpd-W', '刚发布', '', null, '1528523004748', '2018-06-09 13:43:24', '默认', '0', '0');
INSERT INTO `design` VALUES ('FiS1vv_2up4hq93vu1LEcRlUJl_c', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '甜品 图书馆', 'http://nywcstatic.moontell.cn/FiS1vv_2up4hq93vu1LEcRlUJl_c', '刚发布', '', null, '1528522987220', '2018-06-09 13:43:07', '默认', '0', '0');
INSERT INTO `design` VALUES ('FjM8vm_yGD49bZMzeiSqsoqzJZVt', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '雍物集', 'http://nywcstatic.moontell.cn/FjM8vm_yGD49bZMzeiSqsoqzJZVt', '刚发布', '', null, '1528523078838', '2018-06-09 13:44:38', '默认', '0', '0');
INSERT INTO `design` VALUES ('Fk6pPKRyB4-KcyRJM9O2W0yXbJJw', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '雍物集', 'http://nywcstatic.moontell.cn/Fk6pPKRyB4-KcyRJM9O2W0yXbJJw', '刚发布', '', null, '1528522968746', '2018-06-09 13:42:48', '默认', '0', '0');
INSERT INTO `design` VALUES ('FmJwGnDeiaGRQUwUyJHIY17A5iL4', 'oPL165cCi274DQKc-J5OGJiu-PQg', '菜根菜根', 'http://nywcstatic.moontell.cn/FmJwGnDeiaGRQUwUyJHIY17A5iL4', '刚发布', '', null, '1528522915405', '2018-06-09 13:41:55', '默认', '0', '0');
INSERT INTO `design` VALUES ('Fn7Z4z59F6wELhYQrmOuraMQsLqD', 'oPL165cCi274DQKc-J5OGJiu-PQg', '多读点书哦～', 'http://nywcstatic.moontell.cn/Fn7Z4z59F6wELhYQrmOuraMQsLqD', '刚发布', '', null, '1528522897925', '2018-06-09 13:41:37', '默认', '0', '0');
INSERT INTO `design` VALUES ('FnUiYYHuukVSoEMw0dqAHULIOxCO', 'oPL165cCi274DQKc-J5OGJiu-PQg', '火立方', 'http://nywcstatic.moontell.cn/FnUiYYHuukVSoEMw0dqAHULIOxCO', '刚发布', '', null, '1528522551562', '2018-06-09 13:35:51', '默认', '0', '0');
INSERT INTO `design` VALUES ('FnvjZbcWkUW70_Eeb6HEIgg_eW-p', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '孔子', 'http://nywcstatic.moontell.cn/FnvjZbcWkUW70_Eeb6HEIgg_eW-p', '刚发布', '', null, '1528522935983', '2018-06-09 13:42:15', '默认', '0', '0');
INSERT INTO `design` VALUES ('FoENOimfd3qTKjIapv2hNFY196vl', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '大活', 'http://nywcstatic.moontell.cn/FoENOimfd3qTKjIapv2hNFY196vl', '刚发布', '', null, '1528522575012', '2018-06-09 13:36:15', '默认', '0', '0');
INSERT INTO `design` VALUES ('FpNkmzz7syLDWfi2fJ0nIVZhe7O0', 'oPL165cCi274DQKc-J5OGJiu-PQg', '猫与鼎', 'http://nywcstatic.moontell.cn/FpNkmzz7syLDWfi2fJ0nIVZhe7O0', '刚发布', '', null, '1528522840800', '2018-06-09 13:40:40', '默认', '0', '0');
INSERT INTO `design` VALUES ('FpO-Q3dsNhW10RNrXPImSzhPA5Au', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '猫辟邪', 'http://nywcstatic.moontell.cn/FpO-Q3dsNhW10RNrXPImSzhPA5Au', '刚发布', '', null, '1528522867965', '2018-06-09 13:41:07', '默认', '0', '0');
INSERT INTO `design` VALUES ('Fr53hcGiajnIv0quni8jB0ESm6_s', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '做得大事', 'http://nywcstatic.moontell.cn/Fr53hcGiajnIv0quni8jB0ESm6_s', '刚发布', '', null, '1528522807613', '2018-06-09 13:40:07', '默认', '0', '0');
INSERT INTO `design` VALUES ('FrbPHAf8rEMSFaKd0d17qzsPehiL', 'oPL165cCi274DQKc-J5OGJiu-PQg', '雍物集', 'http://nywcstatic.moontell.cn/FrbPHAf8rEMSFaKd0d17qzsPehiL', '刚发布', '', null, '1528523085509', '2018-06-09 13:44:45', '默认', '0', '0');
INSERT INTO `design` VALUES ('FrjQE7aRsY52FESLoCu3g0_VXxz2', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '笔记本  北大楼', 'http://nywcstatic.moontell.cn/FrjQE7aRsY52FESLoCu3g0_VXxz2', '刚发布', '', null, '1528522822879', '2018-06-09 13:40:22', '默认', '0', '0');
INSERT INTO `design` VALUES ('Ft34Rwfiz7tw7xT5d1OYFXf4cQaT', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '智仁勇', 'http://nywcstatic.moontell.cn/Ft34Rwfiz7tw7xT5d1OYFXf4cQaT', '刚发布', '', null, '1528522946987', '2018-06-09 13:42:26', '默认', '0', '0');
INSERT INTO `design` VALUES ('Ft3L9YjArsKejp8gUsSRKmqLJn_4', 'oPL165cCi274DQKc-J5OGJiu-PQg', '雍物集', 'http://nywcstatic.moontell.cn/Ft3L9YjArsKejp8gUsSRKmqLJn_4', '刚发布', '', null, '1528523098542', '2018-06-09 13:44:58', '默认', '0', '0');
INSERT INTO `design` VALUES ('FuWbvhuuab6VuL_Jd86-urX7ghCP', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '甜品北大楼', 'http://nywcstatic.moontell.cn/FuWbvhuuab6VuL_Jd86-urX7ghCP', '刚发布', '', null, '1528522749694', '2018-06-09 13:39:09', '默认', '0', '0');
INSERT INTO `design` VALUES ('Fv8Ag6yb6Dn2nwwdjkMjixP4Epbe', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '雍物集', 'http://nywcstatic.moontell.cn/Fv8Ag6yb6Dn2nwwdjkMjixP4Epbe', '刚发布', '', null, '1528523000329', '2018-06-09 13:43:20', '默认', '0', '0');
INSERT INTO `design` VALUES ('FvKc9xFaIxK1taFqUBc3mSRMia9A', 'oPL165f72as52n8d3l9xsulWvKtY', '甜品大活', 'http://nywcstatic.moontell.cn/FvKc9xFaIxK1taFqUBc3mSRMia9A', '刚发布', '', null, '1528522628590', '2018-06-09 13:37:08', '默认', '0', '0');

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
INSERT INTO `member` VALUES ('oPL165cCi274DQKc-J5OGJiu-PQg', 'Molloh', 'user', '0', 'https://wx.qlogo.cn/mmopen/vi_32/tibyEIKrKib7yZVdnRH4BiaaCbzRmWm0HwDQrDfN8bgLQMEeKic3CibAWI0Qym7v2WUySiak0VqPe1FZBEib5WO3SMlcQ/132');
INSERT INTO `member` VALUES ('oPL165f72as52n8d3l9xsulWvKtY', '翦不惊', 'user', '0', 'https://wx.qlogo.cn/mmopen/vi_32/JtMsgJYoRCXqWb3ia2XmplBYGjcoUMAuPzLoRZ08sjG8G8Wlicbq1yr9qvTibkecDUfKQU6XRIy3KhofWViaLlCOibg/0');
INSERT INTO `member` VALUES ('oPL165XH7WzJiFHWBwQAiMmT5fh0', 'moontell', 'user', '0', 'https://wx.qlogo.cn/mmopen/vi_32/mb1BYYNugkz6icqUndwg1nVX5cTBuDBY4qhSVTx4HRIGicbaElcKCXkfwB3sNEj9Sk6Q39E0ZVvNuoQBkibFePH9g/132');

-- ----------------------------
-- Table structure for miaosha_activity
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_activity`;
CREATE TABLE `miaosha_activity` (
  `pname` varchar(50) NOT NULL,
  `startTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `num` int(5) DEFAULT NULL,
  `status` varchar(20) DEFAULT '尚未开始',
  PRIMARY KEY (`pname`,`startTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_activity
-- ----------------------------
INSERT INTO `miaosha_activity` VALUES ('港欢的打火机', '2018-05-01 10:00:00', '20', '已经结束');

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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_record
-- ----------------------------
INSERT INTO `miaosha_record` VALUES ('171', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '港欢的打火机', '2018-05-01 10:00:00');
INSERT INTO `miaosha_record` VALUES ('172', 'oPL165XH7WzJiFHWBwQAiMmT5fh0', '港欢的打火机', '2018-05-01 10:00:00');

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
INSERT INTO `product` VALUES ('港欢的打火机', 'FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'http://jianbujingimages.moontell.cn/FgiEV3aSIa3LeYWZAISgHCSxo7yD', '破打火机拿出来卖', '15461564780', '2018-05-31 21:17:54', '1', '100', '200');

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
INSERT INTO `starProduct` VALUES ('oPL165XH7WzJiFHWBwQAiMmT5fh0', '港欢的打火机');

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
