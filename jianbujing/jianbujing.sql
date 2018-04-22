/*
Navicat MariaDB Data Transfer

Source Server         : mysql-翦不惊
Source Server Version : 50556
Source Host           : mysql.moontell.cn:3306
Source Database       : jianbujing

Target Server Type    : MariaDB
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-04-22 11:29:52
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
INSERT INTO `comments` VALUES ('Fg7ZrTdmwJxvsYDov7ZiP22t_CJA', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '给家里', '姑姑具体', '2018-04-08 16:10:10', '2018-04-07 12:19:21');
INSERT INTO `comments` VALUES ('Fg7ZrTdmwJxvsYDov7ZiP22t_CJA', 'oaRji5MPcU9JQLaDS4rEqkLzrpOE', '', null, null, null);
INSERT INTO `comments` VALUES ('FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'oaRji5Coc7X0BHTmysy8osXMWfNk', '', '额，是机器人吗', '2018-04-04 10:15:13', '2018-04-04 10:15:13');
INSERT INTO `comments` VALUES ('FgSljStfkYZtWptGbM9y66eDU8lh', 'oaRji5FlLN-8UPJyxw-9GJt56ovs', '好看啊dsbcvn,m./', null, '2018-04-05 19:43:20', null);
INSERT INTO `comments` VALUES ('FgSljStfkYZtWptGbM9y66eDU8lh', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '我是谁。。。。我为什么不能回复！', '自己评论自己！！！', '2018-04-07 19:48:21', '2018-04-07 19:48:21');
INSERT INTO `comments` VALUES ('FhwefD3yB-AN18QB1AZLO90Ercov', 'oaRji5FlLN-8UPJyxw-9GJt56ovs', 'quitting', null, null, null);
INSERT INTO `comments` VALUES ('FimXO91z1xNnVmIxZFSIKMb7Eshe', 'oaRji5ADn28uHTrMFTP7EWMuWaig', '枯萎的很好看', '谔谔谔谔', '2018-04-03 01:55:08', '2018-04-02 17:54:41');
INSERT INTO `comments` VALUES ('FimXO91z1xNnVmIxZFSIKMb7Eshe', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '哈哈哈哈哈哈哈', '拒绝回复', '2018-04-04 09:57:19', '2018-04-02 17:28:58');
INSERT INTO `comments` VALUES ('FiSPI9-n-H46P6Bvzw3MPr-4y8qE', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '评论哦哦哦', '哈哈还差', '2018-04-07 10:36:36', '2018-04-07 10:36:36');
INSERT INTO `comments` VALUES ('Fj8TZYw8AattePcEyYXwiPUfU0-v', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '现在排版问题解决了', '2333333', '2018-04-03 16:53:31', '2018-04-03 10:56:30');
INSERT INTO `comments` VALUES ('FkKXmVpEclcSyoeleW5ebtawRb1f', 'oaRji5Coc7X0BHTmysy8osXMWfNk', '', null, null, null);
INSERT INTO `comments` VALUES ('Fl0RrV4RgTmNMU1bWP0Me7BLPY-g', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '不知道！', null, null, null);
INSERT INTO `comments` VALUES ('FmA83uBHvnT4G9-EDKQcAPJ2afsl', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '丑丑', '哈哈哈哈哈哈哈', '2018-04-05 13:24:53', '2018-04-05 13:24:53');
INSERT INTO `comments` VALUES ('Fmkz6rg_ZAMvHGeT_EKkZUv1E74Y', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '消除bug啦', null, '2018-04-03 16:38:02', null);
INSERT INTO `comments` VALUES ('FmT-0jDJ8sT6qoGAqgsizA7Utt2c', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '哈哈哈，美', null, null, null);
INSERT INTO `comments` VALUES ('FnJUSdRbtG3T6gfBXYIgJYG8gDzp', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '黑暗', null, '2018-04-09 15:39:16', null);
INSERT INTO `comments` VALUES ('FnoI2GALYj_CYB1sfbtbW2RdOwJ1', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '呃呃呃呃呃呃呃', null, null, null);
INSERT INTO `comments` VALUES ('Fo0KHhHRiywDhuxcGADKYYfixtmi', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '牛逼啊宋成', null, null, null);
INSERT INTO `comments` VALUES ('Fo5woSeKyTD1Qlv4pDTmjSyzPFr6', 'oaRji5FlLN-8UPJyxw-9GJt56ovs', '我怎么不是我。。。。？？。。。', 'nullsdas', '2018-04-05 18:46:33', '2018-04-05 18:46:33');
INSERT INTO `comments` VALUES ('Fo5woSeKyTD1Qlv4pDTmjSyzPFr6', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '无聊', '过敏破换位子', '2018-04-06 18:30:17', '2018-04-06 18:30:17');
INSERT INTO `comments` VALUES ('Fo8JAq1Zl3BNWMbKYrztBxWvBmQE', 'null', '明后', null, '2018-04-05 15:23:19', null);
INSERT INTO `comments` VALUES ('Fo8JAq1Zl3BNWMbKYrztBxWvBmQE', 'oaRji5FlLN-8UPJyxw-9GJt56ovs', '骚扰悦悦！！', null, '2018-04-05 22:26:51', null);
INSERT INTO `comments` VALUES ('Fo8JAq1Zl3BNWMbKYrztBxWvBmQE', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '我爱你！', '小宝贝(๑˙❥˙๑)', '2018-04-05 23:55:18', '2018-04-05 15:04:16');
INSERT INTO `comments` VALUES ('FoQEPyQb210pwgEyJaJ-eWFT4ND3', 'null', 'fyu', '你才呢？？？', '2018-04-05 04:54:39', '2018-04-05 04:54:39');
INSERT INTO `comments` VALUES ('FoQEPyQb210pwgEyJaJ-eWFT4ND3', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '骚扰悦悦', '。。。', '2018-04-05 22:48:33', '2018-04-05 04:54:50');
INSERT INTO `comments` VALUES ('Fpin9Oi5CR0UVg-kC1OQLOFH5E1k', 'oaRji5Coc7X0BHTmysy8osXMWfNk', '', null, null, null);
INSERT INTO `comments` VALUES ('Fpin9Oi5CR0UVg-kC1OQLOFH5E1k', 'oaRji5FlLN-8UPJyxw-9GJt56ovs', '厉害厉害', null, null, null);
INSERT INTO `comments` VALUES ('FpqdVAyfUcu5SXMxGYidkOQVofi2', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'asdasd', '干干净净，', '2018-04-05 14:40:16', '2018-04-05 12:37:38');
INSERT INTO `comments` VALUES ('FpVAW_6xeKS7DgX1OKRJmFX-ocL9', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '牛逼啊', null, '2018-04-04 22:31:56', null);
INSERT INTO `comments` VALUES ('FrdDxx6A7fLZvTCZxUPFQBnAZmIo', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '嘿嘿嘿黑帝黑帝黑帝', '骚扰一波悦悦，嗨嗨嗨哈', '2018-04-05 22:17:08', '2018-04-05 22:17:08');
INSERT INTO `comments` VALUES ('FrHuDZh17JNNG7StT2etaAVPoE34', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '。。。。', null, '2018-04-05 12:21:33', null);
INSERT INTO `comments` VALUES ('FrHuDZh17JNNG7StT2etaAVPoE34', 'oaRji5LJYo9EMgyl3fvpAdn4MTSM', '好看考虑考虑', null, '2018-04-05 12:42:04', null);
INSERT INTO `comments` VALUES ('Fu6nV2mWk_C4L_psEnQWGOjQEwI0', 'oaRji5Coc7X0BHTmysy8osXMWfNk', '', null, null, null);
INSERT INTO `comments` VALUES ('FvkInTmRIA_GgZC7SqqF3ORkwcdV', 'oaRji5MPcU9JQLaDS4rEqkLzrpOE', '', 'mmmm', '2018-04-10 22:03:32', '2018-04-10 22:03:32');
INSERT INTO `comments` VALUES ('FvSH4_2hAJxAtVXyo3e6aqnNbrxQ', 'oaRji5ADn28uHTrMFTP7EWMuWaig', '你他妈就是海绵宝宝', '我就要抓我自己！！！！！', '2018-04-03 17:41:51', '2018-04-03 17:41:51');
INSERT INTO `comments` VALUES ('FvSH4_2hAJxAtVXyo3e6aqnNbrxQ', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', 'ojbk', '素质啊小姐姐', '2018-04-03 17:41:47', '2018-04-03 17:41:47');
INSERT INTO `comments` VALUES ('null', 'null', '', null, null, null);
INSERT INTO `comments` VALUES ('null', 'oaRji5FlLN-8UPJyxw-9GJt56ovs', '', null, null, null);

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
INSERT INTO `imageinfo` VALUES ('Fo0KHhHRiywDhuxcGADKYYfixtmi', 'oaRji5ADn28uHTrMFTP7EWMuWaig', '宋成', 'http://jianbujingimages.moontell.cn/Fo0KHhHRiywDhuxcGADKYYfixtmi', '', '1522661084206', '2018-04-02 17:24:44', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fj8TZYw8AattePcEyYXwiPUfU0-v', 'oaRji5DFGhqMHGXTZEYYqZGQKh7w', 'Molloh', 'http://jianbujingimages.moontell.cn/Fj8TZYw8AattePcEyYXwiPUfU0-v', '', '1522721197933', '2018-04-03 10:06:37', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fl0RrV4RgTmNMU1bWP0Me7BLPY-g', 'oaRji5DFGhqMHGXTZEYYqZGQKh7w', 'Molloh', 'http://jianbujingimages.moontell.cn/Fl0RrV4RgTmNMU1bWP0Me7BLPY-g', '是不是英文名就会出问题。。\n应该是作者名称长度导致的问题吧？', '1522724248583', '2018-04-03 10:57:28', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fmkz6rg_ZAMvHGeT_EKkZUv1E74Y', 'oaRji5DFGhqMHGXTZEYYqZGQKh7w', 'Molloh', 'http://jianbujingimages.moontell.cn/Fmkz6rg_ZAMvHGeT_EKkZUv1E74Y', '', '1522724763332', '2018-04-03 11:06:03', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FimXO91z1xNnVmIxZFSIKMb7Eshe', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', 'http://jianbujingimages.moontell.cn/FimXO91z1xNnVmIxZFSIKMb7Eshe', '一个寒假没有浇过水的蝴蝶之舞锦。残忍的悦悦啊！', '1522674899649', '2018-04-02 21:14:59', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FlO8O5Dbdog-tgtoYpVuB2pVZ4G_', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', 'http://jianbujingimages.moontell.cn/FlO8O5Dbdog-tgtoYpVuB2pVZ4G_', '', '1522674780944', '2018-04-02 21:13:00', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FmT-0jDJ8sT6qoGAqgsizA7Utt2c', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', 'http://jianbujingimages.moontell.cn/FmT-0jDJ8sT6qoGAqgsizA7Utt2c', '', '1522666740710', '2018-04-02 18:59:00', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FnoI2GALYj_CYB1sfbtbW2RdOwJ1', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', 'http://jianbujingimages.moontell.cn/FnoI2GALYj_CYB1sfbtbW2RdOwJ1', '', '1522674690078', '2018-04-02 21:11:30', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fo8JAq1Zl3BNWMbKYrztBxWvBmQE', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', 'http://jianbujingimages.moontell.cn/Fo8JAq1Zl3BNWMbKYrztBxWvBmQE', '', '1522910735518', '2018-04-05 14:45:35', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FoQEPyQb210pwgEyJaJ-eWFT4ND3', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', 'http://jianbujingimages.moontell.cn/FoQEPyQb210pwgEyJaJ-eWFT4ND3', '', '1522852550293', '2018-04-04 22:35:50', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fq_UbLm2ROTleJ7hT2uWR7FYWQi_', 'oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', 'http://jianbujingimages.moontell.cn/Fq_UbLm2ROTleJ7hT2uWR7FYWQi_', '', '1522852454670', '2018-04-04 22:34:14', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FiSPI9-n-H46P6Bvzw3MPr-4y8qE', 'oaRji5FlLN-8UPJyxw-9GJt56ovs', 'ing', 'http://jianbujingimages.moontell.cn/FiSPI9-n-H46P6Bvzw3MPr-4y8qE', '', '1523021311985', '2018-04-06 21:28:31', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FkPKRneV1GCbWkxf1RK8z5Ti-6Rp', 'oaRji5FlLN-8UPJyxw-9GJt56ovs', 'ing', 'http://jianbujingimages.moontell.cn/FkPKRneV1GCbWkxf1RK8z5Ti-6Rp', '', '1522916523521', '2018-04-05 16:22:03', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FnJUSdRbtG3T6gfBXYIgJYG8gDzp', 'oaRji5FlLN-8UPJyxw-9GJt56ovs', 'ing', 'http://jianbujingimages.moontell.cn/FnJUSdRbtG3T6gfBXYIgJYG8gDzp', '', '1523010561915', '2018-04-06 18:29:21', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fo5woSeKyTD1Qlv4pDTmjSyzPFr6', 'oaRji5FlLN-8UPJyxw-9GJt56ovs', 'ing', 'http://jianbujingimages.moontell.cn/Fo5woSeKyTD1Qlv4pDTmjSyzPFr6', '干干净净', '1522916529062', '2018-04-05 16:22:09', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FrHuDZh17JNNG7StT2etaAVPoE34', 'oaRji5FlLN-8UPJyxw-9GJt56ovs', 'ing', 'http://jianbujingimages.moontell.cn/FrHuDZh17JNNG7StT2etaAVPoE34', '', '1522877565736', '2018-04-05 05:32:45', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FgiEV3aSIa3LeYWZAISgHCSxo7yD', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FgiEV3aSIa3LeYWZAISgHCSxo7yD', '我的头像', '1522745786628', '2018-04-03 16:56:26', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FgSljStfkYZtWptGbM9y66eDU8lh', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FgSljStfkYZtWptGbM9y66eDU8lh', 'HK你很亏你摸', '1522905520908', '2018-04-05 13:18:40', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/Fh-shKnrkLFvBpyjbaiYN46Y3JKJ', '学弟', '1522698223702', '2018-04-03 03:43:43', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FhbVU_I_lkxTboSeAhJqkpSg7PFJ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/FhbVU_I_lkxTboSeAhJqkpSg7PFJ', '', '1522650558841', '2018-04-02 14:29:18', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FhtFDp-blUwXurJwExYvl4geH_Cw', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/FhtFDp-blUwXurJwExYvl4geH_Cw', '', '1522650549007', '2018-04-02 14:29:09', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FhwefD3yB-AN18QB1AZLO90Ercov', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FhwefD3yB-AN18QB1AZLO90Ercov', '', '1522991284146', '2018-04-06 13:08:04', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fid115P_pU_S6yO_FN4aPkB_B_3_', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/Fid115P_pU_S6yO_FN4aPkB_B_3_', '', '1522940463140', '2018-04-05 23:01:03', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FjROhHHiFf9CPIjKIS-w3Xzme6jq', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FjROhHHiFf9CPIjKIS-w3Xzme6jq', '', '1522820503877', '2018-04-04 13:41:43', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FkKXmVpEclcSyoeleW5ebtawRb1f', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FkKXmVpEclcSyoeleW5ebtawRb1f', '', '1522945950363', '2018-04-06 00:32:30', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FkV24IC8OQk7DonL9_S2paA0zfgK', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/FkV24IC8OQk7DonL9_S2paA0zfgK', '32667745884', '1522650543069', '2018-04-02 14:29:03', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fl3coyjHMicRL_0mM47SW8x0OPCB', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/Fl3coyjHMicRL_0mM47SW8x0OPCB', '开加速器会这样', '1522650546433', '2018-04-02 14:29:06', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FmA83uBHvnT4G9-EDKQcAPJ2afsl', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/FmA83uBHvnT4G9-EDKQcAPJ2afsl', '绝地求生！好丑的图啊', '1522698373785', '2018-04-03 03:46:13', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FmJ3FiMXE29f9JN7LntxgkOzdmWi', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FmJ3FiMXE29f9JN7LntxgkOzdmWi', '', '1522905646968', '2018-04-05 13:20:46', 'false', 'true');
INSERT INTO `imageinfo` VALUES ('Fmsozl8ns-z51QRCQfsL8nXpYPXV', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/Fmsozl8ns-z51QRCQfsL8nXpYPXV', '', '1522650570956', '2018-04-02 14:29:30', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FniI6lZXGO82-mTpbv30QMyySJNO', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/FniI6lZXGO82-mTpbv30QMyySJNO', '', '1522650576373', '2018-04-02 14:29:36', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Foc84EStQCCz-YXfitimJcIWXnQu', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/Foc84EStQCCz-YXfitimJcIWXnQu', '', '1522820443233', '2018-04-04 13:40:43', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FodVtNE8uKMs7OJvdLRc9hIpTFGY', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/FodVtNE8uKMs7OJvdLRc9hIpTFGY', '翦不惊的小本本 微信小程序的二维码\n\n', '1522650581680', '2018-04-02 14:29:41', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FoIQm1qpKMRMKb-zMBCRc90V0xes', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/FoIQm1qpKMRMKb-zMBCRc90V0xes', '', '1522650553678', '2018-04-02 14:29:13', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fpin9Oi5CR0UVg-kC1OQLOFH5E1k', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/Fpin9Oi5CR0UVg-kC1OQLOFH5E1k', '没显卡，没固态的家里的电脑。\n显卡不玩游戏无所谓。\n没固态真的难受', '1522932977003', '2018-04-05 20:56:17', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FpVAW_6xeKS7DgX1OKRJmFX-ocL9', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FpVAW_6xeKS7DgX1OKRJmFX-ocL9', '', '1522820493197', '2018-04-04 13:41:33', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FpYQPz8YYzfcCj4XMuTm45I9zcOQ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FpYQPz8YYzfcCj4XMuTm45I9zcOQ', '', '1522820514688', '2018-04-04 13:41:54', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fq5ZSczAEJLbZuOfTgypHcmZJ93C', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/Fq5ZSczAEJLbZuOfTgypHcmZJ93C', '这是老同学', '1522722246023', '2018-04-03 10:24:06', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FqeCXsWEh9_d5Dh6iGybxCWlp0Ry', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FqeCXsWEh9_d5Dh6iGybxCWlp0Ry', '', '1522937910280', '2018-04-05 22:18:30', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fqfwh0uBAD8fIKIP8AIN_vY8v51f', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/Fqfwh0uBAD8fIKIP8AIN_vY8v51f', '哈哈哈哈哈', '1522738327173', '2018-04-03 14:52:07', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FrCu9D3JhInvmlNhv--q_PhdFeMy', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FrCu9D3JhInvmlNhv--q_PhdFeMy', '键盘', '1522937867696', '2018-04-05 22:17:47', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FrdDxx6A7fLZvTCZxUPFQBnAZmIo', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FrdDxx6A7fLZvTCZxUPFQBnAZmIo', '', '1522862693865', '2018-04-05 01:24:53', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FrPbyYs7PrJbeNjRn-Qi6dQyZwyp', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/FrPbyYs7PrJbeNjRn-Qi6dQyZwyp', '这是我的qq头像', '1522651183633', '2018-04-02 14:39:43', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FsrW9e2nV7EhrgQKHSaw2ZZmj8by', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FsrW9e2nV7EhrgQKHSaw2ZZmj8by', '900的dell屏幕也是挺好的。', '1522932915157', '2018-04-05 20:55:15', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fss8jyIWkaDb4XxxYrh1WvQXeISl', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/Fss8jyIWkaDb4XxxYrh1WvQXeISl', '', '1522650551546', '2018-04-02 14:29:11', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Ftec5zwjkPPPVe1lJ0eKsjwy1heZ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/Ftec5zwjkPPPVe1lJ0eKsjwy1heZ', '', '1522650561158', '2018-04-02 14:29:21', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fu-ae2S782V6bfDOFdMxN2Ovxa4F', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/Fu-ae2S782V6bfDOFdMxN2Ovxa4F', '', '1522650574152', '2018-04-02 14:29:34', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fu6nV2mWk_C4L_psEnQWGOjQEwI0', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/Fu6nV2mWk_C4L_psEnQWGOjQEwI0', '', '1522987484759', '2018-04-06 12:04:44', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FuvoolknMm89dR6YWp9QmXHhwDfg', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FuvoolknMm89dR6YWp9QmXHhwDfg', '呱呱呱', '1522820510112', '2018-04-04 13:41:50', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FvkInTmRIA_GgZC7SqqF3ORkwcdV', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FvkInTmRIA_GgZC7SqqF3ORkwcdV', '', '1523167931884', '2018-04-08 14:12:11', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FvO3z4MwZ3jek8Q9cnFb77z8AiuD', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', 'http://jianbujingimages.moontell.cn/FvO3z4MwZ3jek8Q9cnFb77z8AiuD', '', '1522996976451', '2018-04-06 14:42:56', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FvSH4_2hAJxAtVXyo3e6aqnNbrxQ', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/FvSH4_2hAJxAtVXyo3e6aqnNbrxQ', '派大星！我们一起去抓海绵宝宝吧！\n', '1522670381509', '2018-04-02 19:59:41', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FvwwE4QCbub2IHWFikAKxyKfKiOv', 'oaRji5KZE-WSmM4_m2dfsUrtouVM', '小木子学长', 'http://jianbujingimages.moontell.cn/FvwwE4QCbub2IHWFikAKxyKfKiOv', '', '1522650556058', '2018-04-02 14:29:16', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('Fg7ZrTdmwJxvsYDov7ZiP22t_CJA', 'oaRji5LJYo9EMgyl3fvpAdn4MTSM', '刘保卫', 'http://jianbujingimages.moontell.cn/Fg7ZrTdmwJxvsYDov7ZiP22t_CJA', '', '1523074571154', '2018-04-07 12:16:11', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FpqdVAyfUcu5SXMxGYidkOQVofi2', 'oaRji5LJYo9EMgyl3fvpAdn4MTSM', '刘保卫', 'http://jianbujingimages.moontell.cn/FpqdVAyfUcu5SXMxGYidkOQVofi2', '', '1522902435204', '2018-04-05 12:27:15', 'true', 'true');
INSERT INTO `imageinfo` VALUES ('FiIKrDYce0LNjMODunb_dxcJEb-h', 'oaRji5MPcU9JQLaDS4rEqkLzrpOE', '小咪咪', 'http://om319jsda.bkt.clouddn.com/FiIKrDYce0LNjMODunb_dxcJEb-h', '', '1523261191784', '2018-04-09 16:06:31', 'true', 'true');

-- ----------------------------
-- Table structure for openidformid
-- ----------------------------
DROP TABLE IF EXISTS `openidformid`;
CREATE TABLE `openidformid` (
  `openId` varchar(255) NOT NULL DEFAULT '',
  `formId` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`openId`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of openidformid
-- ----------------------------
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523544737304', '2018-04-12 22:52:17');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523700586288', '2018-04-14 18:09:48');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523700587648', '2018-04-14 18:09:49');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523709811399', '2018-04-14 20:43:31');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523875735141', '2018-04-16 18:48:55');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523875741290', '2018-04-16 18:49:01');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523881163599', '2018-04-16 20:19:27');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523882068418', '2018-04-16 20:34:36');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523882510349', '2018-04-16 20:41:51');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523926532524', '2018-04-17 08:55:32');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523951071247', '2018-04-17 15:44:32');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523951075444', '2018-04-17 15:44:36');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523951080600', '2018-04-17 15:44:41');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1523951084966', '2018-04-17 15:44:45');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524011724641', '2018-04-18 08:35:38');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524011728861', '2018-04-18 08:35:42');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524011731451', '2018-04-18 08:35:45');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524011734159', '2018-04-18 08:35:47');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524011735795', '2018-04-18 08:35:49');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524011737398', '2018-04-18 08:35:51');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524011738672', '2018-04-18 08:35:52');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524011739784', '2018-04-18 08:35:53');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524011740453', '2018-04-18 08:35:54');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524011745818', '2018-04-18 08:35:59');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524020416269', '2018-04-18 11:00:22');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524057069121', '2018-04-18 21:11:17');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524102562769', '2018-04-19 09:49:28');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524156760062', '2018-04-20 00:52:40');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524157511728', '2018-04-20 01:05:12');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524218879922', '2018-04-20 18:08:11');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524218880876', '2018-04-20 18:08:12');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524218882173', '2018-04-20 18:08:13');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524218883406', '2018-04-20 18:08:14');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524218886333', '2018-04-20 18:08:17');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524218887367', '2018-04-20 18:08:18');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524218909059', '2018-04-20 18:08:40');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524218913643', '2018-04-20 18:08:44');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524218924445', '2018-04-20 18:08:55');
INSERT INTO `openidformid` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', '1524276070978', '2018-04-21 10:01:19');

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
INSERT INTO `userInfo` VALUES ('null', 'moontell', '2018-04-20 18:08:07');
INSERT INTO `userInfo` VALUES ('oaRji5ADn28uHTrMFTP7EWMuWaig', '宋成', '2018-04-04 16:43:15');
INSERT INTO `userInfo` VALUES ('oaRji5Coc7X0BHTmysy8osXMWfNk', 'rdgztest_DWOMTK', '2018-04-06 12:54:04');
INSERT INTO `userInfo` VALUES ('oaRji5DFGhqMHGXTZEYYqZGQKh7w', 'Molloh', '2018-04-18 15:57:42');
INSERT INTO `userInfo` VALUES ('oaRji5EHo9S_lTaqYt8olOOqFgCo', '小木子姑娘', '2018-04-05 15:02:49');
INSERT INTO `userInfo` VALUES ('oaRji5EvAdD6-tXuzt9_26mBo1EY', 'rdgztest_JSWHLJ', '2018-04-06 10:54:13');
INSERT INTO `userInfo` VALUES ('oaRji5FlLN-8UPJyxw-9GJt56ovs', '翦不惊', '2018-04-07 00:44:41');
INSERT INTO `userInfo` VALUES ('oaRji5GaAD_yDRkMYyGpOuyPICbc', 'Yurui', '2018-04-03 17:29:21');
INSERT INTO `userInfo` VALUES ('oaRji5JFDSjiKFrXxCVco_TwGO-8', 'rdgztest_SVJIBZ', '2018-04-03 17:50:56');
INSERT INTO `userInfo` VALUES ('oaRji5KZE-WSmM4_m2dfsUrtouVM', 'moontell', '2018-04-21 10:01:18');
INSERT INTO `userInfo` VALUES ('oaRji5LJYo9EMgyl3fvpAdn4MTSM', '刘保卫', '2018-04-12 07:57:56');
INSERT INTO `userInfo` VALUES ('oaRji5MPcU9JQLaDS4rEqkLzrpOE', '小咪咪', '2018-04-09 16:06:12');
INSERT INTO `userInfo` VALUES ('oaRji5P2BV4ApEPqWQluWifSWpLg', 'rdgztest_COATUR', '2018-04-06 10:40:54');
SET FOREIGN_KEY_CHECKS=1;
