/*
Navicat MariaDB Data Transfer

Source Server         : mysql-翦不惊
Source Server Version : 50556
Source Host           : mysql.moontell.cn:3306
Source Database       : jianbujing

Target Server Type    : MariaDB
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-04-03 17:01:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `key` varchar(255) NOT NULL,
  `commentopenid` varchar(40) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `commenttime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `replytime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`key`,`commentopenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('FimXO91z1xNnVmIxZFSIKMb7Eshe', 'oaRji5ADn28uHTrMFTP7EWMuWaig', '枯萎的很好看', '谔谔谔谔', '2018-04-03 01:55:08', '2018-04-02 17:54:41');
INSERT INTO `comments` VALUES ('FimXO91z1xNnVmIxZFSIKMb7Eshe', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '哈哈哈哈哈哈哈阿斯达啊实打实', '拒绝回复', '2018-04-03 03:38:58', '2018-04-02 17:28:58');
INSERT INTO `comments` VALUES ('Fj8TZYw8AattePcEyYXwiPUfU0-v', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '现在排版问题解决了', '2333333', '2018-04-03 16:53:31', '2018-04-03 10:56:30');
INSERT INTO `comments` VALUES ('Fl0RrV4RgTmNMU1bWP0Me7BLPY-g', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '不知道！', null, null, null);
INSERT INTO `comments` VALUES ('FmA83uBHvnT4G9-EDKQcAPJ2afsl', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '丑丑', null, '2018-04-03 09:48:51', null);
INSERT INTO `comments` VALUES ('Fmkz6rg_ZAMvHGeT_EKkZUv1E74Y', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '消除bug啦', null, '2018-04-03 16:38:02', null);
INSERT INTO `comments` VALUES ('FmT-0jDJ8sT6qoGAqgsizA7Utt2c', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '哈哈哈，美', null, null, null);
INSERT INTO `comments` VALUES ('FnoI2GALYj_CYB1sfbtbW2RdOwJ1', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '呃呃呃呃呃呃呃', null, null, null);
INSERT INTO `comments` VALUES ('Fo0KHhHRiywDhuxcGADKYYfixtmi', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '牛逼啊宋成', null, null, null);
INSERT INTO `comments` VALUES ('FvSH4_2hAJxAtVXyo3e6aqnNbrxQ', 'oaRji5ADn28uHTrMFTP7EWMuWaig', '你他妈就是海绵宝宝', '老子就要抓自己！！！！', '2018-04-03 16:29:20', '2018-04-03 16:29:20');
INSERT INTO `comments` VALUES ('FvSH4_2hAJxAtVXyo3e6aqnNbrxQ', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', 'ojbk', '素质啊小姐姐哈哈哈哈哈哈', '2018-04-03 16:48:53', '2018-04-03 16:48:53');

-- ----------------------------
-- Table structure for imageinfo
-- ----------------------------
DROP TABLE IF EXISTS `imageinfo`;
CREATE TABLE `imageinfo` (
  `key` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '"图片在云存储中的名称"',
  `openid` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '"微信用户的openid"',
  `nickName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `imageURL` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '"图片的网址"',
  `info` longtext CHARACTER SET utf8 COMMENT '"作者对这个设计的描述"',
  `seconds` varchar(30) DEFAULT NULL,
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ispublic` varchar(5) DEFAULT 'true' COMMENT '"是否公开"',
  `valid` varchar(5) DEFAULT 'true' COMMENT '有没有被标记为违规',
  PRIMARY KEY (`openid`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='图片信息表';

-- ----------------------------
-- Records of imageinfo
-- ----------------------------
INSERT INTO `imageinfo` VALUES ('Fo0KHhHRiywDhuxcGADKYYfixtmi', 'oaRji5ADn28uHTrMFTP7EWMuWaig', '宋成', 'http://om319jsda.bkt.clouddn.com/Fo0KHhHRiywDhuxcGADKYYfixtmi', '', '1522661084206', '2018-04-02 17:24:44', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fj8TZYw8AattePcEyYXwiPUfU0-v', 'oaRji5DFGhqMHGXTZEYYqZGQKh7w', 'Molloh', 'http://om319jsda.bkt.clouddn.com/Fj8TZYw8AattePcEyYXwiPUfU0-v', '', '1522721197933', '2018-04-03 10:06:37', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fl0RrV4RgTmNMU1bWP0Me7BLPY-g', 'oaRji5DFGhqMHGXTZEYYqZGQKh7w', 'Molloh', 'http://om319jsda.bkt.clouddn.com/Fl0RrV4RgTmNMU1bWP0Me7BLPY-g', '是不是英文名就会出问题。。\n应该是作者名称长度导致的问题吧？', '1522724248583', '2018-04-03 10:57:28', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fmkz6rg_ZAMvHGeT_EKkZUv1E74Y', 'oaRji5DFGhqMHGXTZEYYqZGQKh7w', 'Molloh', 'http://om319jsda.bkt.clouddn.com/Fmkz6rg_ZAMvHGeT_EKkZUv1E74Y', '', '1522724763332', '2018-04-03 11:06:03', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FimXO91z1xNnVmIxZFSIKMb7Eshe', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', 'http://om319jsda.bkt.clouddn.com/FimXO91z1xNnVmIxZFSIKMb7Eshe', '一个寒假没有浇过水的蝴蝶之舞锦。残忍的悦悦啊！', '1522674899649', '2018-04-02 21:14:59', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FlO8O5Dbdog-tgtoYpVuB2pVZ4G_', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', 'http://om319jsda.bkt.clouddn.com/FlO8O5Dbdog-tgtoYpVuB2pVZ4G_', '', '1522674780944', '2018-04-02 21:13:00', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FmT-0jDJ8sT6qoGAqgsizA7Utt2c', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', 'http://om319jsda.bkt.clouddn.com/FmT-0jDJ8sT6qoGAqgsizA7Utt2c', '', '1522666740710', '2018-04-02 18:59:00', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FnoI2GALYj_CYB1sfbtbW2RdOwJ1', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', 'http://om319jsda.bkt.clouddn.com/FnoI2GALYj_CYB1sfbtbW2RdOwJ1', '', '1522674690078', '2018-04-02 21:11:30', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://om319jsda.bkt.clouddn.com/FgiEV3aSIa3LeYWZAISgHCSxo7yD', '我的头像', '1522745786628', '2018-04-03 16:56:26', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', '学弟', '1522698223702', '2018-04-03 03:43:43', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FhbVU_I_lkxTboSeAhJqkpSg7PFJ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FhbVU_I_lkxTboSeAhJqkpSg7PFJ', '', '1522650558841', '2018-04-02 14:29:18', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FhtFDp-blUwXurJwExYvl4geH_Cw', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FhtFDp-blUwXurJwExYvl4geH_Cw', '', '1522650549007', '2018-04-02 14:29:09', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FkV24IC8OQk7DonL9_S2paA0zfgK', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FkV24IC8OQk7DonL9_S2paA0zfgK', '好烦', '1522650543069', '2018-04-02 14:29:03', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fl3coyjHMicRL_0mM47SW8x0OPCB', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Fl3coyjHMicRL_0mM47SW8x0OPCB', '', '1522650546433', '2018-04-02 14:29:06', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FmA83uBHvnT4G9-EDKQcAPJ2afsl', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FmA83uBHvnT4G9-EDKQcAPJ2afsl', '绝地求生！好丑的图啊', '1522698373785', '2018-04-03 03:46:13', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fmsozl8ns-z51QRCQfsL8nXpYPXV', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Fmsozl8ns-z51QRCQfsL8nXpYPXV', '', '1522650570956', '2018-04-02 14:29:30', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FniI6lZXGO82-mTpbv30QMyySJNO', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FniI6lZXGO82-mTpbv30QMyySJNO', '', '1522650576373', '2018-04-02 14:29:36', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FodVtNE8uKMs7OJvdLRc9hIpTFGY', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FodVtNE8uKMs7OJvdLRc9hIpTFGY', '翦不惊的小本本 微信小程序的二维码\n\n', '1522650581680', '2018-04-02 14:29:41', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FoIQm1qpKMRMKb-zMBCRc90V0xes', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FoIQm1qpKMRMKb-zMBCRc90V0xes', '', '1522650553678', '2018-04-02 14:29:13', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fq5ZSczAEJLbZuOfTgypHcmZJ93C', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Fq5ZSczAEJLbZuOfTgypHcmZJ93C', '这是老同学', '1522722246023', '2018-04-03 10:24:06', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fqfwh0uBAD8fIKIP8AIN_vY8v51f', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Fqfwh0uBAD8fIKIP8AIN_vY8v51f', '哈哈哈哈哈', '1522738327173', '2018-04-03 14:52:07', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FrPbyYs7PrJbeNjRn-Qi6dQyZwyp', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FrPbyYs7PrJbeNjRn-Qi6dQyZwyp', '这是我的qq头像', '1522651183633', '2018-04-02 14:39:43', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fss8jyIWkaDb4XxxYrh1WvQXeISl', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Fss8jyIWkaDb4XxxYrh1WvQXeISl', '', '1522650551546', '2018-04-02 14:29:11', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Ftec5zwjkPPPVe1lJ0eKsjwy1heZ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Ftec5zwjkPPPVe1lJ0eKsjwy1heZ', '', '1522650561158', '2018-04-02 14:29:21', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fu-ae2S782V6bfDOFdMxN2Ovxa4F', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Fu-ae2S782V6bfDOFdMxN2Ovxa4F', '', '1522650574152', '2018-04-02 14:29:34', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FvSH4_2hAJxAtVXyo3e6aqnNbrxQ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FvSH4_2hAJxAtVXyo3e6aqnNbrxQ', '派大星！我们一起去抓海绵宝宝吧！\n\n哈哈哈', '1522670381509', '2018-04-02 19:59:41', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FvwwE4QCbub2IHWFikAKxyKfKiOv', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FvwwE4QCbub2IHWFikAKxyKfKiOv', '', '1522650556058', '2018-04-02 14:29:16', 'true', 'true');

-- ----------------------------
-- Table structure for starimage
-- ----------------------------
DROP TABLE IF EXISTS `starimage`;
CREATE TABLE `starimage` (
  `openid` varchar(40) NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`openid`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of starimage
-- ----------------------------

-- ----------------------------
-- Table structure for userInfo
-- ----------------------------
DROP TABLE IF EXISTS `userInfo`;
CREATE TABLE `userInfo` (
  `openid` varchar(40) NOT NULL COMMENT '"微信公众平台用户的唯一id"',
  `nickname` varchar(255) DEFAULT NULL,
  `lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='"用户信息表"';

-- ----------------------------
-- Records of userInfo
-- ----------------------------
INSERT INTO `userInfo` VALUES ('oaRji5ADn28uHTrMFTP7EWMuWaig', '宋成', '2018-04-03 16:41:15');
INSERT INTO `userInfo` VALUES ('oaRji5DFGhqMHGXTZEYYqZGQKh7w', 'Molloh', '2018-04-03 16:41:15');
INSERT INTO `userInfo` VALUES ('oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', '2018-04-03 16:41:15');
INSERT INTO `userInfo` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', '2018-04-03 16:55:52');
SET FOREIGN_KEY_CHECKS=1;
