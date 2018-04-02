/*
Navicat MariaDB Data Transfer

Source Server         : mysql-翦不惊
Source Server Version : 50556
Source Host           : mysql.moontell.cn:3306
Source Database       : jianbujing

Target Server Type    : MariaDB
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-04-02 14:32:27
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `imageinfo` VALUES ('FhbVU_I_lkxTboSeAhJqkpSg7PFJ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FhbVU_I_lkxTboSeAhJqkpSg7PFJ', '', '1522650558841', '2018-04-02 14:29:18', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FhtFDp-blUwXurJwExYvl4geH_Cw', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FhtFDp-blUwXurJwExYvl4geH_Cw', '', '1522650549007', '2018-04-02 14:29:09', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FkV24IC8OQk7DonL9_S2paA0zfgK', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FkV24IC8OQk7DonL9_S2paA0zfgK', '', '1522650543069', '2018-04-02 14:29:03', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fl3coyjHMicRL_0mM47SW8x0OPCB', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Fl3coyjHMicRL_0mM47SW8x0OPCB', '', '1522650546433', '2018-04-02 14:29:06', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fmsozl8ns-z51QRCQfsL8nXpYPXV', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Fmsozl8ns-z51QRCQfsL8nXpYPXV', '', '1522650570956', '2018-04-02 14:29:30', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FniI6lZXGO82-mTpbv30QMyySJNO', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FniI6lZXGO82-mTpbv30QMyySJNO', '', '1522650576373', '2018-04-02 14:29:36', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FodVtNE8uKMs7OJvdLRc9hIpTFGY', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FodVtNE8uKMs7OJvdLRc9hIpTFGY', '', '1522650581680', '2018-04-02 14:29:41', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FoIQm1qpKMRMKb-zMBCRc90V0xes', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FoIQm1qpKMRMKb-zMBCRc90V0xes', '', '1522650553678', '2018-04-02 14:29:13', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fss8jyIWkaDb4XxxYrh1WvQXeISl', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Fss8jyIWkaDb4XxxYrh1WvQXeISl', '', '1522650551546', '2018-04-02 14:29:11', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Ftec5zwjkPPPVe1lJ0eKsjwy1heZ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Ftec5zwjkPPPVe1lJ0eKsjwy1heZ', '', '1522650561158', '2018-04-02 14:29:21', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fu-ae2S782V6bfDOFdMxN2Ovxa4F', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/Fu-ae2S782V6bfDOFdMxN2Ovxa4F', '', '1522650574152', '2018-04-02 14:29:34', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FvwwE4QCbub2IHWFikAKxyKfKiOv', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://om319jsda.bkt.clouddn.com/FvwwE4QCbub2IHWFikAKxyKfKiOv', '', '1522650556058', '2018-04-02 14:29:16', 'true', 'true');
SET FOREIGN_KEY_CHECKS=1;
