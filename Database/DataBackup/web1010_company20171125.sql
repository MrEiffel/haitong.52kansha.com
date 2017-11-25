/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : web1010

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-11-25 18:07:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ecshecom_admin
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_admin`;
CREATE TABLE `ecshecom_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `username` char(16) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `moble` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `last_login_time` int(11) unsigned NOT NULL,
  `last_login_ip` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

-- ----------------------------
-- Records of ecshecom_admin
-- ----------------------------
INSERT INTO `ecshecom_admin` VALUES ('1', '', 'admin', 'J8EX.com', '', '4f932163614ec20c6a25e1decb5a6189', '0', '0', '0', '0', '0', '1');
INSERT INTO `ecshecom_admin` VALUES ('2', '', '财务主管', 'adadad0', '', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_adver
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_adver`;
CREATE TABLE `ecshecom_adver` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(250) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表';

-- ----------------------------
-- Records of ecshecom_adver
-- ----------------------------
INSERT INTO `ecshecom_adver` VALUES ('2', '', '', '5955a69a2949d.png', '', '1', '1475466565', '1475466565', '0');
INSERT INTO `ecshecom_adver` VALUES ('3', '', '', '594098c919bfc.png', '', '2', '1497369600', '1497369600', '1');
INSERT INTO `ecshecom_adver` VALUES ('5', '', '', '5955ae8a6f9f3.jpg', '', '4', '1497456000', '1497456000', '0');
INSERT INTO `ecshecom_adver` VALUES ('6', '', '/Article/detail/id/46.html', '595601d338120.png', '', '6', '1497507691', '1497456000', '0');
INSERT INTO `ecshecom_adver` VALUES ('7', '', '', '5956004670194.png', '', '3', '1497456000', '1497456000', '0');

-- ----------------------------
-- Table structure for ecshecom_appads
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_appads`;
CREATE TABLE `ecshecom_appads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` varchar(256) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `block_id` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表';

-- ----------------------------
-- Records of ecshecom_appads
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_appadsblock
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_appadsblock`;
CREATE TABLE `ecshecom_appadsblock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` varchar(256) NOT NULL,
  `rank` varchar(256) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `remain` varchar(255) DEFAULT '3',
  `type` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表';

-- ----------------------------
-- Records of ecshecom_appadsblock
-- ----------------------------
INSERT INTO `ecshecom_appadsblock` VALUES ('1', 'wap广告', 'wap广告', '1', '/Upload/app/58eb489aa0fe6.jpg', '', '', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_appc
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_appc`;
CREATE TABLE `ecshecom_appc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_name` varchar(64) DEFAULT NULL,
  `web_title` varchar(64) DEFAULT NULL,
  `web_icp` varchar(64) DEFAULT NULL,
  `index_img` varchar(256) DEFAULT NULL,
  `pay` varchar(256) DEFAULT NULL,
  `withdraw_notice` varchar(256) DEFAULT NULL,
  `charge_notice` varchar(256) DEFAULT NULL,
  `show_coin` varchar(255) DEFAULT NULL,
  `show_market` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_appc
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_app_log
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_app_log`;
CREATE TABLE `ecshecom_app_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_app_log
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_app_vip
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_app_vip`;
CREATE TABLE `ecshecom_app_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `rule` text,
  `times` int(11) DEFAULT NULL,
  `price_num` varchar(255) DEFAULT NULL,
  `price_coin` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_app_vip
-- ----------------------------
INSERT INTO `ecshecom_app_vip` VALUES ('1', '1', 'VIP会员卡', '[{\"id\":\"1\",\"num\":1000}]', '100', '100', '3', '1', '1476004810');

-- ----------------------------
-- Table structure for ecshecom_app_vipuser
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_app_vipuser`;
CREATE TABLE `ecshecom_app_vipuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `vip_id` int(11) NOT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_app_vipuser
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_article
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_article`;
CREATE TABLE `ecshecom_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `adminid` int(10) unsigned NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hits` int(11) unsigned NOT NULL,
  `footer` int(11) unsigned NOT NULL,
  `index` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `adminid` (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ecshecom_article
-- ----------------------------
INSERT INTO `ecshecom_article` VALUES ('39', '比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因', '<p>\r\n	<img title=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图1\" alt=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图1\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497498976378289.png\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	金色财经讯——Jimmy Song是比特币研发者和区块链技术初创公司Paxos的主要设计师。 在这篇评论文章中，Song先生讨论了关于比特币扩容争论的话题。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图2\" alt=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图2\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497498985987566.png\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	（区块链技术初创公司Paxos主要设计师Jimmy Song &nbsp;图片来源：金色财经）\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	政治笼罩着比特币，这是过去几年人们唯一想谈论的话题。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	Song先生之前写过，比特币行业就像政府的三个分支，研发者是立法部门，比特币矿工是行政部门，用户是司法部门。Song先生还写过关于比特币是如何通过共识来改变的，以及达成共识是存在较大困难的。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	在本文中，Song先生研究了解决当前比特币政治僵局的另一条途径，以及如何帮助开发人员、矿工和用户。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>当前矿工的状况</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	在比特币挖矿机的制造商中，很明显Bitmain是最大且最成功的。他们通过芯片制造出大约50 - 75%的比特币网络哈希算力，而其他制造商在价格上也很难与他们竞争。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	随着比特币经历了为期3年的熊市，许多比特币挖矿公司宣告破产，因为经济从疯狂的盈利转变为难以生存。许多比特币挖矿机往往有缺陷，以及无法及时交付。然而Bitmain不仅存活了下来，还获得了蓬勃发展，并成功地夺取了巨大的市场份额。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	不管你对这家公司有什么看法，Bitmain就是最具影响力的比特币挖矿机制造商。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图3\" alt=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图3\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497499013777942.png\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>当前研发者状况</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	众所周知，中本聪(Satoshi Nakamoto)在2009年创造了第一个比特币客户，并将其发布给世界。许多人对所谓的“参考客户端”和比特币核心做出贡献，当时有数百个开发者为开源软件贡献了力量。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	而较少人知道的是，有许多不同的尝试去创建不同的比特币客户端，例如Obelisk,btc - d,Toshi和bcoin，他们只是一些试图从零开始创造新客户的尝试。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	比特币无限，比特币XT和最新的Segwit2x，虽然每种方案都取得了不同程度的成功，但大多数网络仍然运行比特币核心(大多数估计都超过90%)。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	为什么比特币核心（Bitcoin Core）是最受欢迎的?因为有些历史因素在里边。另外，人们担心应用其他团队的扩容方案会最终导致资金分裂，以此为了避免风险需要继续采用比特币核心团队的产品。同时，比特币核心拥有最大的开发人员社区和最严格的开发流程。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	不管你对比特币核心的看法是什么，该团队仍继续在网络上主导客户。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图4\" alt=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图4\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497499033292714.png\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>力量对比</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	在2014年之前，矿商和研发者通常都相处得很好，但随着规模的扩大，情况开始发生了变化。现在已经达到了这样一个情况：扩容冲突通常被视为来自Bitmain和Bitcoin Core。不管怎样，我们有两个处于冲突中的主导者。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	比特币矿工们很沮丧，因为他们多年来一直在要求更大的区块容量。从Bitmain的角度来看，没有一个开发人员对任何类型的硬分叉感兴趣。而当他们询问进展时，通常得到的回答是“遵循比特币改进方案过程”以进行“硬分叉”。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	开发人员感到沮丧是因为他们多年来一直在要求激活隔离见证Segwit。从比特币核心的角度来看，这些矿商似乎没有充分的理由阻碍良好技术的实施。当他们要求矿工说出一个拒绝的原因时，通常得到的回答是“我们想要更大的区块”到“你在阻塞比特币网络”。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图5\" alt=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图5\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497499048574144.png\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>共识和控制</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	当你想到需要改变比特币的实际共识过程时，很明显，双方都希望得到比目前更多的控制权。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	随着比特币变得越来越有价值，这两个集团都希望在长期内有更多的发言权。现在，一个小小的让步或先例将会引发一些后果。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	比特币核心可能正在考虑实施一个强硬的硬分叉，这将为更多的人树立一个先例，也可能更危险。Bitmain可能会认为，在不做出让步的情况下，在一个软分叉上合作，将会为被控制的行为树立一个先例，并在以后被忽视。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	在这种情况下，比特币可以被视为一种绕过开发者的方式。与此类似，BIP148和其他UASF提案也是解决矿工问题的一种方式。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图6\" alt=\"比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图6\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497499071561591.png\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	这使扩容陷入目前的僵局。双方都想要控制，但考虑到比特币是一种基于共识的系统，没有任何方法可以让每一方都拥有它想要的东西，并将比特币保持在一个单一的链上。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	解决这个问题的方法不是试图解决技术问题，而是通过解决更深层次的控制问题。问题不在于“我们怎么能衡量比特币?”而是“我们怎样才能让每一个人都有更多的控制权呢?”\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>天真的解决方案</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	最明显的方式是将比特币一分为二，或者称之为“所罗门解决方案”。用户仍然可以使用比特币，每一方都可以随心所欲地做任何事情。但一边必须找到新的矿工(甚至是一个新的工作岗位)，另一边则需要寻找新的开发人员。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	虽然这有一定的吸引力，但将比特币一分为二，有可能造成重大的连带损害。实际上，大多数有争议的硬分叉都有这样一个可能的终点，因为双方都有能力使用硬分叉。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	但如果仍然僵持下去，比特币很可能就要走向终结。\r\n</p>', '1', '币友说币', '0', '1', '1', '0', '1497524753', '1497456000', '1', '594269f1754d4.png');
INSERT INTO `ecshecom_article` VALUES ('49', '纽约州金融部年度报告重申管理比特币业务的重要性', '<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	纽约州金融服务部的年度报告重申了管理数字货币业务的重要性。该报告发布于6月15日，它总结了关于其调控比特币公司的Bitlicense各部门的活动。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170626/1498444705960010.png\" title=\"1498444705960010.png\" alt=\"头条1_看图王.png\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	报告表示，由于交易速度和匿名资金的流动，比特币为监管机构提供了新的挑战。该报告说，“区块链技术为行业和监管机构提供了机遇和挑战。建立商业创新平台有助于提高金融交易，记录保存和清算的效率。”\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	该报告继续说，这项技术存在太多的风险，因为监管可以简单地被人或组织所绕过。交易速度和相对匿名性往往会阻碍监督和控制。纽约金融服务部表示，他们希望保护客户和投资者免受欺诈和其他非法行为的侵害。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	“如果不遵守旨在保障消费者的法规和监督，以及防止洗钱和资助非法活动，那么使用更便捷的支付方式，以及匿名进行资金流动是危险的。”\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	该监管机构已经向几家公司提出申请许可证的管理规定，这在报告中提到。现在已确定Gemini Trust Company LLC可以交易以太坊。最近，它又批准了Ripple Labs公司的分公司XRP II LLC。总共有5家公司在Bitlicense注册，目前正在通过该机构的直接监督定期进行检查和考核。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	监管机构最初在本·劳斯基的帮助下于2015年启动了Bitlicense。该文件是44页，它概述了所有需要进行比特币交易的企业的必要条件。到目前为止，企业必须提交管理和使用比特币的申请。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170626/1498444691118415.png\" title=\"1498444691118415.png\" alt=\"头条2_看图王.png\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<span style=\"font-family:楷体, 楷体_GB2312, SimKai;\">本·劳斯基</span> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	他提到有多少企业批评许可要求。他说：“高管和投资者一直非常担心Bitlicense会伤害纽约的创新和创业业务。法案通过KYC和AML规则，以及给予国家私人信息的相当广泛的指导方针，令许多公司对此不满意。”\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	比特币企业高管的警告响了起来。当Bitlicense成立时，它引起了几家受欢迎的比特币公司停止在该州的服务。他们中的许多人对Bitlicense表示怀疑，认为法案对其服务客户群的能力产生了不利影响。这些撤出纽约州的比特币公司包括Xapo，Shapeshift，Poloniex，Bitfinex和Kraken等。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	Kraken对Bitlicense的回应最为尖锐。该公司表示：“今天Kraken停止服务纽约居民。令人遗憾的是，可恶的Bitlicense已经醒了。这是一个如此恶劣的生物，如此残酷，甚至连海妖克拉肯都没有勇气或力量去面对它那又大又尖的牙齿。它至少有40人，兄弟。”\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170626/1498444672812002.png\" title=\"1498444672812002.png\" alt=\"头条3_看图王.png\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	来源： 金色财经&nbsp;\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	作者： 艾利克斯在币圈儿\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	原文链接：http://www.jinse.com/news/bitcoin/35599.html\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	免责声明：本文为转载，与J8交易所无关，仅为传播消息之用，不代表<span style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;\">J8交易所</span>观点，不构成<span style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;\">J8交易所</span>投资建议，炒币有风险，投资需谨慎！！\r\n</p>', '1', 'bbb', '0', '0', '1', '0', '1497596108', '1497542400', '1', '');
INSERT INTO `ecshecom_article` VALUES ('50', '[XZC]伊朗数字交易平台将零币纳入3大交易币种之一', '<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	当2017年06月17日伊朗政府将就通过数字资产的拟议管条例展开探讨时，仅仅过了10天，06月27日伊朗第一个数字资产交易平台（WWW.COINEX.IR）就上线交易数字资产了；当零币（XZC）的国际国内价格还只有80多元时，该交易平台就100元高溢价收购小零币（XZC）。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	我们不得不佩服他们善于抓住世界潮流的决策力与执行力；该交易平台在选择比特币、以太坊以及零币（XZC）作为其平台可交易虚拟数字资产，我们对此感到十分喜悦，当然，这与零币（XZC）的独特技术优势是密不可分的。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	零币（XZC）通过零币协议(zerocoin protocol)来保障账务隐私，使用零知识证明确保了交易双方的相关地址信息免遭泄露。它的参数和比特币一样，总货币供应量2100万枚，截至2017年06月，零币（XZC）已经挖出才大约240万个，并已在Bittrex、Bitsquare、Cryptopia、Nova Exchange等交易平台上线交易。相比于早期实现匿名功能的混币技术和环签技术，零知识证明的零币协议解决了前二者的不足，完全切断了铸造所得的币和赎回的币之间的联系。当你铸造出一个零币的时候，同时你也销毁了一个零币，也会生成一份证明证实了你烧毁了一个零币。这份证明只是证实了你烧毁了一个零币，却不用证明你烧毁了具体哪一个。然后通过使用这个证明，你就可以赎回一个完全没有任何交易历史记录的崭新的零币。同样的，也没有交易图表供以分析，相比于其它匿名方法你的隐私匿名性将得到数倍的提升。且零币协议自从由来自John Hopkins大学的Miers，Christina Garman，Matthew Green，Aviel D. Rubin在2013年一同起草发表后，在过去几年里面，这篇论文成为了学术引用最多的一篇文章，共计多达200余次的学术引用，Zcoin从理论基础上牢牢地扎实了根底。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	当下，一些国家在经济层面因为一些原因陷入困局小零币（XZC）独特的技术优势为其摆脱相关困境提供了探索。同时，友们也愿意相信将来会有越来越多的国家、机构、个人等留意到小零币（XZC）独特的技术优势。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">免责声明：本文为转载，与J8交易所无关，仅为传播消息之用，不代表</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">观点，不构成</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">投资建议，炒币有风险，投资需谨慎！！</span>\r\n</p>\r\n<br />\r\n<br />\r\n<div style=\"margin:0px;padding:0px;border:0px;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;color:#990000;font-size:13px;background-color:#F9F9F9;\">\r\n	声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n</div>', '1', 'bbb', '0', '0', '1', '0', '1497669354', '1497628800', '1', '');
INSERT INTO `ecshecom_article` VALUES ('51', '[XRP]Ripple结算系统已被瑞士银行等知名机构使用', '<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	目前，国际银行传统转帐结算业务需要花费大量的资金和时间来完成付款。因此Ripple实验室将自身的定位设定为帮助银行和大型金融机构节省数十亿美元的费用，并大幅度的减少结算所需要的时长。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170623/1498188021843142.png\" title=\"1498188021843142.png\" alt=\"xrp1_看图王.png\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	Ripple结算系统已被诸如桑坦德，瑞士银行和联合信贷等知名机构使用。该公司声称提供“安全、即时和几乎免费的任何规模的全球金融交易，无需退款”。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170623/1498188032518892.png\" title=\"1498188032518892.png\" alt=\"xrp2_看图王.png\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<span style=\"font-family:楷体, 楷体_GB2312, SimKai;\">Ripple实验室CTO史蒂凡·托马斯</span> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	Ripple实验室CTO史蒂凡·托马斯（Stefan Thomas）认为，由于监管障碍，全球有26万亿美元被抑制，银行合作伙伴之间的透明度不够，导致缺乏信任。Ripple结算协议旨在改善现有的金融基础设施。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	托马斯在播客中解释说：“与银行合作，改善银行用于跨境支付的金融基础设施。”\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	“我们帮助银行改善用户体验，并降低成本。”\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	Ripple认为他们的结算系统可以为Swift和ACH转移等国际银行业务协议提供更有效的替代方案。在过去一年里，人们对Ripple的银行间交易一直很感兴趣，且协议的代币价格在过去五个月里大幅增长。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	托马斯认为他公司的瑞波币XRP和IOU基础架构可以在全球释放数十亿美元，并最终改变传统的结算系统。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	来源： 金色财经&nbsp;\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	作者： 洛比特奇霍\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	原文链接：http://www.jinse.com/news/bitcoin/35860.html\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">免责声明：本文为转载，与J8交易所无关，仅为传播消息之用，不代表</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">观点，不构成</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">投资建议，炒币有风险，投资需谨慎！！</span>\r\n</p>\r\n<br />\r\n<br />\r\n<div style=\"margin:0px;padding:0px;border:0px;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;color:#990000;font-size:13px;background-color:#F9F9F9;\">\r\n	声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n</div>', '1', 'bbb', '0', '0', '1', '0', '1497755855', '1497715200', '1', '');
INSERT INTO `ecshecom_article` VALUES ('48', '评论：segwit2X箭在弦上，是问题的终结还是昙花一现', '<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	比特币扩容一直是币圈人关注的重点，近期关于扩容的争端似乎朝着一个有趣的方向发展，SegWit2x支持为84.9％，SegWit超过42％。显而易见的共识在现阶段已经不再相关了。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	鉴于对Segwit2x压倒性的支持，很明显矿工对Bitcoin Core开发团队提出用隔离见证（Segwit）来解决交易延展性（transaction malleability）的想法并不反对。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170629/1498729786825078.png\" title=\"1498729786825078.png\" alt=\"1.png\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	Segwit2x称为纽约共识是由Barry Silbert领导旗下的数字货币集团（DCG）和包括大型矿池运营商比特大陆（Bitmian）在内的其它57家公司共同签署的一项扩容共识方案，但就目前情况来看，依旧有不少投资人和矿工表示担忧，技术团队似乎一直在闭门造车，这种工作方式其根本上违背了比特币去中心化的特性——没有个人、团体或企业能够控制比特币的价值。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	因此Segwit2x与其他扩容解决方案一样受到了很多质疑和批评，但不论如何，如今SegWit2x目前获得的算力支持已经足以保证Segwit2x能够在比特币网络实施，而其是否能够彻底解决比特币扩容问题，比特币开发者Jimmy Song指出：这场扩容战争仍未结束。更大的和更具争议的2MB硬分叉问题仍旧没有解决。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170629/1498729721159319.png\" title=\"1498729721159319.png\" alt=\"2.png\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<span style=\"font-size:18px;color:#366092;\"><strong>1、Segwit2x将有遗留问题？</strong></span> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	对于矿工来说，一部分人反对Segwit2x并不是技术层面上的问题，而是在于bitcoin core的发展路线。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	迄今为止，Bitcoin Core、整个行业以及社区对扩容路线的态度都很直接：通过激活隔离见证来减少交易延展性，从而加强安全措施，另外还要为硬件钱包提供更好的基础设施，并且为第二层解决方案搭建应用平台，旨在实现长期的扩容能力。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	矿工们反对Bitcoin Core将隔离见证作为扩容方案的计划原因是，大部分矿工认为，即使隔离见证激活之后能够用新的交易格式稍稍提升区块容量，那还是远远无法满足比特币网络发展的需求。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	对于投资人而言，这会造成利益冲突，因为开发人员受到激励会阻碍在增加区块容量方面上所做尝试，从而人为地扩大对闪电网络等侧链解决方案的需求，最重要的是这违背了比特币去中心化的特性——没有个人、团体或企业能够控制比特币的价值。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	因此，虽然矿工让步，使Segwit2x得到超过80%的激活支持率，但SegWit2x留下的问题，似乎比解决的问题还要多。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170629/1498729675762823.png\" title=\"1498729675762823.png\" alt=\"3.png\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<span style=\"font-size:18px;color:#366092;\"><strong>2、Segwit2x的支持者</strong></span> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	不论一小部分的矿工和投资人如何担忧，Segwit2x已经达到激活的支持率，并且确定在7月底激活\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	对于SegWit2x达到激活门槛，比特币社区就像获得了巨大的宽慰。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	比特币先行者，比特币基金会创始人Charlie Shrem表示：“我们将获得隔离见证（SegWit）#Bitcoin。”\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170629/1498729641136432.png\" title=\"1498729641136432.png\" alt=\"4.png\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	因此不管支持与反对的阵营如何拉锯战，无数比特币爱好者期待着8月1日那天，通过用户激活的软叉来看到分离见证的激活，包括中国采矿池也大力支持SegWit2x，并计划在7月31日前激活，大部分中国采矿池认为，SegWit2x可能与8月1日激活的UASF兼容，即使在SegWit2x被激活之后，没有人知道这些池是否会拥抱UASF，但这不妨碍比特币爱好者对SegWit2x的信心。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	同样对SegWit2x有信心的包括一些大型比特币矿池都已经信号支持SegWit2x，包括蚂蚁矿池，BitFury和鱼池，Bitcoin.com和ViaBTC也加入了支持队伍。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170629/1498729610190639.png\" title=\"1498729610190639.png\" alt=\"5.png\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<span style=\"font-size:18px;color:#366092;\"><strong>3、SegWit2x激活将发生什么？</strong></span> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	SegWit2x解决方案最初由Rootstock首席科学家Sergio Demian Lerner提出，由比特币开发者Jeff Garzik领导的SegWit2x研究团队来进行开发，目前SegWit2x的alpha代码已经发布。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	最近的一份Reddit公开服务公告（PSA）详细介绍了SegWit2x的实际运行原理，本质上讲，区块目前实际大小只有1MB，但如果更多的算力继续支持SegWit2x并在336个区块期间有80%的区块支持SegWit2x，区块实际大小可能达到4MB，到时预计每个区块能够处理8000到10000笔交易，这大大解决了比特币交易积压问题。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	因此不管SegWit2x遭到多少质疑，又将留下多少遗留问题，就目前而言SegWit2x似乎是解决现今问题的最好途径。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	正如比特币开发者Jimmy Song说过：“如果你希望避免比特币出现永久性分裂，80%算力支持是一个积极的进展。因为这似乎看起来比特币区块链将不会分裂。”\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	原文链接：https://www.51szzc.com/service/article.html?id=276\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	作者：51数字资产\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	免责声明：本文为转载，与J8交易所无关，仅为传播消息之用，不代表<span style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;\"><span style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;\">J8交易所</span></span>观点，不构成<span style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;\">J8交易所</span>投资建议，炒币有风险，投资需谨慎！！\r\n</p>\r\n<br />', '1', 'bbb', '0', '0', '1', '0', '1497496231', '1497456000', '1', '5955f5b97ea46.png');
INSERT INTO `ecshecom_article` VALUES ('52', '乌克兰政府将于十月开始就区块链土地登记展开试验', '<div class=\"bk30 hr\" style=\"margin:0px;padding:0px;border:0px;color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;background:url(http://www.btc38.com/statics/images/uline.gif) 50% 50% repeat-x #F9F9F9;\">\r\n</div>\r\n<div style=\"margin:0px;padding:0px;border:0px;color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<p>\r\n		<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170627/1498545073730662.jpg\" title=\"1498545073730662.jpg\" alt=\"乌克兰.jpg\" /> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		乌克兰政府透露计划进行一个区块链土地登记系统的试验。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		在上周三的政府会议上，乌克兰农业政策与粮食部第一副部长Maksym Martyniuk宣布了这一试点项目，计划于十月份开始。据当地媒体报道，该计划将为乌克兰国家土地登记局引入区块链技术，并将国家土地租赁拍卖数字化。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		不久前，该国总理Volodymyr Groysman就承诺为所有国有土地租赁进行拍卖——旨在增加竞争，推动当地经济，减少非法活动。他当时提出警告，可能会对不遵守政策的行为进行“刑事处罚”，强调：\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		“所有土地租赁必须通过拍卖进行。”\r\n	</p>\r\n	<p>\r\n		约有71％的乌克兰领土（4270万公顷）属于农用地。其中超过一千万公顷归国家所有，占农用地总面积的25％左右。\r\n	</p>\r\n	<p>\r\n		根据由世界银行资助，与乌克兰农业政策部，国家土地登记局和多个国家当局合作推出的2015年的一个研究项目，乌克兰目前的土地管理状况令人担忧：\r\n	</p>\r\n	<p>\r\n		公共土地注册远低于私人土地（24％ vs 71％），降低了透明度，引发非法活动。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		农用地租金水平是欧洲最低的国家之一（2015年约37美元），影响农村土地所有者的收入，导致土地资源利用率低下。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		土地市场非常萧条，主要由于缺乏金融工具和使用土地作为抵押品的复杂性。将产权转让给农用地的主要途径是租赁，存在很大的“灰色市场”。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		土地纳税人（约730万）远远少于私人土地所有者和土地使用者。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		乌克兰并不是第一个考虑在土地登记处理中使用区块链的国家。今年三月，瑞典土地登记机构开展了一项记录产权交易的试验。而在五月份，英国土地登记局则详细说明了所谓的“Digital Street”计划，该计划把区块链技术列为基础技术之一。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		作者：Chuan Tian\r\n	</p>\r\n	<p>\r\n		翻译：Ina\r\n	</p>\r\n	<p>\r\n		来源：CoinDesk（铅笔）\r\n	</p>\r\n	<p>\r\n		原文链接：http://chainb.com/?P=Cont&amp;id=4933\r\n	</p>\r\n	<p>\r\n		<span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">免责声明：本文为转载，与J8交易所无关，仅为传播消息之用，不代表</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">观点，不构成</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">投资建议，炒币有风险，投资需谨慎！！</span>\r\n	</p>\r\n<br />\r\n	<div style=\"margin:0px;padding:0px;border:0px;color:#990000;font-size:13px;\">\r\n		声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n	</div>\r\n</div>', '1', 'bbb', '0', '0', '1', '0', '1497928770', '1497888000', '1', '');
INSERT INTO `ecshecom_article` VALUES ('53', '食品工业企业区块链联盟成立 区块链应用再次取得突破', '<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	2017年6月23日，济南迎来中国食品工业协会盛事——第三届中国食品流通安全暨冷链物流发展峰会在济南喜来登酒店盛大开幕，由紫云股份、双汇物流、思念食品、中国食品集团、正大(中国)投资有限公司、郑州千味央厨等二十家企业发起的中国食品工业区块链联盟正式成立，这是行业的一小步，食品安全的一大步，这标志着区块链应用再现行业突破，中国食品安全保障再升级!\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170627/1498549036623241.jpg\" title=\"1498549036623241.jpg\" alt=\"食品1.jpg\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	自2017年3月28日国家食药总局发布《关于食品生产经营这建立食品追溯体系的若干规定》，明确规定了食品生产企业、食品经营企业、餐饮企业建立食品追溯体系必须追溯的各种数据，尤其是明确规定食品运输信息必续进行追溯，同时明确要求食品追溯信息需要在技术上、规范上必须保证信息不得修改。新的政策严把了食品从农田到餐桌的每一道关，使中国食品安全进入“四个最严”的时代。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170627/1498549050665293.jpg\" title=\"1498549050665293.jpg\" alt=\"食品2.jpg\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	作为对食品安全负有主体责任的中国食品工业企业，在新政策要求下如何应对政府监管趋严，一直是行业的痛点。中国食品工业协会深悉企业需求，特邀行业专家在会上对食品工业企业、食品冷链物流企业进行深入解读，破解企业困惑。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170627/1498549060667059.jpg\" title=\"1498549060667059.jpg\" alt=\"食品3.jpg\" /> \r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	作为中国食品工业协会食品物流分会副会长、紫云股份董事长的罗建辉基于国家食药总局新的监管要求率先推出了基于区块链的食品追溯云服务平台，在尽可能不增加企业成本的前提下，通过云服务模式，结合紫云股份的无车承运人业务，采用区块链技术为食品工业企业提供新一代食品安全追溯服务，在业内率先实现了食品运输与贮藏过程信息的可追溯，企业的食品安全各种追溯信息实时写入区块链中，在技术上完美解决了追溯数据不可修改的问题，从而使食品工业企业的食品追溯体系能够满足政府监管部门的监管要求。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	“追溯，不能是为监管而追溯。”罗建辉进一步强调到，追溯一定要有公共服务，让消费者有便捷的途径来追溯所购买的食品，让食品追溯从原来的事后监督转变成为消费者日常消费的事前预防，这样就可以避免不符合质量要求的食品被食用，从而避免更多的食品安全事件发生，最大程度上保障公众的食品安全。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	紫云股份推出的基于区块链的微信小程序使消费者简单关注即可进行追溯，是消费者食品安全保障的不可或缺的小助手。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	“新政策落地，一定要考虑企业的利益。”罗建辉针对食品生产经营企业如何落实国家食药总局新的监管政策提出新思路，“国内很多食品工业企业一提到追溯就想着要增加投入，要增加成本，对食品追溯体系没有正确的认识。要知道现在食品生产乱象严重，大量的不合格食品在市场上通过低价驱逐良品，追溯体系建设实际上是彰显企业产品品质和食品安全的主体责任的重要手段，是能够更好保障自身市场的重要举措。”\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	在食品追溯的实践上，罗建辉率领紫云股份的团队创新地把食品追溯与企业的营销紧密结合起来，帮助企业通过食品追溯体系实现产品交付的服务化，使消费者在追溯产品同时能获取到关于该食品的食用或烹饪方法使消费者更好的享用高品质食品，增加消费者对企业产品的粘性，增加消费者对产品的复购率。此外紫云股份的食安宝追溯服务可以帮助企业获取大量的个人消费数据，使企业可以进行精准营销，提高经济效益。在与会企业看来，紫云股份的食品追溯服务完美地与企业产品营销服务结合在一起，在帮助企业解决食品安全问题同时，又解决了互联网时代的大数据精准营销问题，这样的平台才有生命力，才能把国家的监管政策落地。\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	“在国家食药总局新政策发布后，食品追溯服务这个市场就成为了刚需市场，市场规模达到千亿”。罗建辉很乐观地表示。面对千亿的市场蛋糕，紫云股份选择的是与行业共同分享，紫云股份计划在全国每个省找一家营业规模在5000万左右的第三方冷链物流公司合作，共同拓展食品追溯服务市场，为消费者严把农田到餐桌的每一道关，让消费者尽享安全美食!\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	文章来源：网易新闻\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	原文链接：http://news.163.com/17/0627/13/CNULCMFI00014AEE.html\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">免责声明：本文为转载，与J8交易所无关，仅为传播消息之用，不代表</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">观点，不构成</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">投资建议，炒币有风险，投资需谨慎！！</span>\r\n</p>\r\n<br />\r\n<br />\r\n<div style=\"margin:0px;padding:0px;border:0px;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;color:#990000;font-size:13px;background-color:#F9F9F9;\">\r\n	声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n</div>', '1', 'bbb', '0', '1', '1', '0', '1498188169', '1498147200', '1', '');
INSERT INTO `ecshecom_article` VALUES ('54', '国际货币基金组织（IMF）总裁拉加德：分布式账本可凭借一些特有优势防范恐怖融资', '<div class=\"bk30 hr\" style=\"margin:0px;padding:0px;border:0px;color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;background:url(http://www.btc38.com/statics/images/uline.gif) 50% 50% repeat-x #F9F9F9;\">\r\n</div>\r\n<div style=\"margin:0px;padding:0px;border:0px;color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<p>\r\n		<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170626/1498445381700120.png\" title=\"1498445381700120.png\" alt=\"人物_看图王.png\" /> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		国际货币基金组织（IMF）总裁针对数字货币和分布式账本技术（DLT）发表了新的评论。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		在6月22日的反洗钱金融行动特别工作组（FATF）全体会议上，克里斯蒂娜·拉加德广泛地谈到了IMF在打击洗钱和恐怖融资方面作出的努力，并指出，区块链创新虽然可以引发这些非法活动，但也能够防范这些问题。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		拉加德说道：“当然，金融科技是一把双刃剑，它可以用来促进和资助恐怖主义，比如通过虚拟货币的匿名特点，但也可以成为我们进一步防范恐怖融资的有力手段。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		虽然DLT是支撑数字货币的技术，但它也被形容为使金融体系能够更好地抵御攻击的技术，特别是应对使用电脑通过网络恐怖主义传播恐惧的行为。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		拉加德告诉与会者：\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		“这种技术不太容易受到单一故障的影响，并且被证明可以应对网络攻击，因为这种账本（交易记录）拥有多个副本。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		拉加德还强调了IMF本周发布的一项新的研究报告，其研究人员讨论了中央银行发行的数字货币等议题。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		来源： 铅笔&nbsp;\r\n	</p>\r\n	<p>\r\n		作者： 陆通\r\n	</p>\r\n	<p>\r\n		原文链接：http://www.jinse.com/news/blockchain/36650.html\r\n	</p>\r\n	<p>\r\n		<span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">免责声明：本文为转载，与J8交易所无关，仅为传播消息之用，不代表</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">观点，不构成</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">投资建议，炒币有风险，投资需谨慎！！</span>\r\n	</p>\r\n<br />\r\n	<div style=\"margin:0px;padding:0px;border:0px;color:#990000;font-size:13px;\">\r\n		声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n	</div>\r\n</div>', '1', 'bbb', '0', '0', '1', '0', '1498361419', '1498320000', '1', '');
INSERT INTO `ecshecom_article` VALUES ('55', '世界经济论坛发表了详细的白皮书《了解区块链的潜力', '<div class=\"bk30 hr\" style=\"margin:0px;padding:0px;border:0px;color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;background:url(http://www.btc38.com/statics/images/uline.gif) 50% 50% repeat-x #F9F9F9;\">\r\n</div>\r\n<div style=\"margin:0px;padding:0px;border:0px;color:#333333;font-family:\'Microsoft YaHei\', Arial, Verdana, sans-serif, \'Segoe UI\', Tahoma;font-size:16px;background-color:#F9F9F9;\">\r\n	<p>\r\n		<img src=\"http://www.btc38.com/ueditor/php/upload/image/20170630/1498790865176214.png\" title=\"1498790865176214.png\" alt=\"经济论坛_看图王.png\" /> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		世界经济论坛发表了一份详细的白皮书，论证了区块链利益相关者应该组织起来，在某种程度上可能会阻碍最大联盟的发展。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		《了解区块链的潜力》于今日发布，其提出应该出现生态系统的一种新分布式网络，以最大限度地发挥分布式分类帐技术在三个方面的影响：区块链平台层，应用层和整体生态系统层，参与者可以从科学和商业的角度分析法律结构和法规。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		已经公开表达对这一概念兴趣的人包括：区块链联盟Enterprise Ethereum Alliance创始人Jeremy Millar、Linux基金会Hyperledger执行董事Brian Behlendorf、数字商会（Digital Commerce）的创始人Perianne Boring以及Bitfury集团首席通讯馆Jamie Smith。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		白皮书于世界经济论坛在中国大连召开的年度首脑会议开幕式上发布，该书提出建立一个包括创新者、风险投资家、金融机构、学者、政府机构及个人在内的网络。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		因担心此前反对大规模区块链工作的怀疑论者，作者Don和Alex Tapscott致力于为系统运作创建一种分类法，同时认为一旦建立一个结构，这种结构就会有机出现。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		在白皮书的序言中，世界经济论坛全球议程中心主席Richard Samans介绍了大规模协调可能对区块链产生的影响。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		Samans在接受CoinDesk采访时表示：\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		“这项新技术实现其潜力的程度将取决于利益相关者如何管理其发展。关于技术的功能及其当前和潜在应用程序，仍然存在重要的公开治理问题。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		该报告由Don和Alex Tapscott创立的非营利性区块链研究所提交，且得到世界经济论坛全球区块链未来理事会的反馈意见。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		46页报告的核心是作者所说的区块链技术“管理工作”的概念，或者是利益相关者有责任确保技术不仅仅使个别项目获益，而是世界“公民”。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		创始人Jeremy Millar没有将多利益相关方基础设施视为联盟的竞争对手，而是认为这样的大规模协调与他自己组织的精神一致。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		他说：\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		“治理对加速主流采用区块链技术至关重要，世界经济论坛以及Don 和Alex的工作是最受欢迎的。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:18px;color:#366092;\"><strong>预期挑战</strong></span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		该报告从对互联网初期的几点分析和几个突出的区块链创新者采访进行了分析。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		以下是引言中提出的三个生态系统分解：平台生态系统（包括比特币，以太坊，Hyperledger等）；在这些平台上构建的应用生态系统；以及从全局考虑的“整体”区块链生态系统。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		然后将平台的生态系统分为包含每个系统的实际技术，以及Hyperledger和Cosmos提供的技术，以促进每个区块链解决方案的互操作性。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		白皮书作者警告说，在详细分析平台面临的扩容问题和维持“大众协作”激励措施的困难时，治理不善可能导致“隐形权力”出现，造成潜在安全威胁的影响，违反整体网络参与者的利益。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		作者写道：“这种不成熟的技术将容易受到容量问题，系统故障，以外漏洞的影响，这可能是最具破坏性的，造成不懂技术用户的失望，任何一个都是目前不希望看到的。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		WEF白皮书中提出的平行应用网络涉及到各方如何与区块链相互作用。表面上，应用程序网络似乎是关于这些工具如何与其各自的区块链平台进行交互。但实际上，这部分是关于监管者和用户如何与应用程序交互的。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		引用实例，如基于以太坊的分布式计算机处理创业公司Iconomi、基于Omni的分布式互联网应用程序MaidSafe、基于NXT的区块链即服务创业公司Ardor，该报告认为，对技术工作方式的不熟悉限制了每种技术的潜在增长。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		从监管的角度来看，协调可以克服的最大挑战是监督ICO人员的不确定性。从客户的角度来看，非编码社区缺乏用户友好界面，从而导致已创建的系统无法实现区块链一些潜在应用。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		作者写道：“我们的研究表明，在基本用户界面和经验方面需要做很多工作。许多应用程序对普通人来说是无法访问的。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:18px;color:#366092;\"><strong>大局观</strong></span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		本文提出的第三个生态系统将以不同的方式与平台生态系统和应用生态系统进行交互。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		主要基于国家科学研究中心研究员Primavera De Filippi以及哈佛大学出版社即将出版的区块链书籍的合著者卡多佐法学院（Cardozo Law School）教授Aaron Wright的评论，白皮书得出结论，需要采用新的方法来代替软件进行集中决策。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		本文重点关注如何在监管和科学研究方面达成共识，认为利益相关者的网络设计应防止“强大的在职者”对益相关者的前进方向施加打破平衡的影响。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		为了指导这三个网络区块链的交互，报告作者主张在在Tapscotts全球解决方案网络基础上实施七个“框架”。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		具体来说，他们要求建立标准网络，机构网络，宣传网络，看门狗网络，策略网络，知识网络和传送网络。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		报告总结道：\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		“我们认为世界各地的人员，机构和行业都需要区块链技术，我们必须竭尽全力提供这些技术。本文中有一系列推动该技术发展的活动，我们希望这些将促进讨论，并提供可采取的积极步骤。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		来源： 比特币中文网&nbsp;\r\n	</p>\r\n	<p>\r\n		作者： 陆通\r\n	</p>\r\n	<p>\r\n		原文链接：http://www.jinse.com/news/blockchain/38864.html\r\n	</p>\r\n	<p>\r\n		<span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">免责声明：本文为转载，与J8交易所无关，仅为传播消息之用，不代表</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">观点，不构成</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;line-height:24px;\">J8交易所</span><span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#F9F9F9;\">投资建议，炒币有风险，投资需谨慎！！</span>\r\n	</p>\r\n<br />\r\n	<div style=\"margin:0px;padding:0px;border:0px;color:#990000;font-size:13px;\">\r\n		声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n	</div>\r\n</div>', '1', 'bbb', '0', '1', '1', '0', '1498793545', '1498752000', '1', '');
INSERT INTO `ecshecom_article` VALUES ('40', '留得青山在不怕没柴烧，6月15日狂人分析', '<p>\r\n	<img title=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图1\" alt=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图1\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497521417839842.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	狂人说\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	昨天在新闻一栏中发布的四大利空全部实现，美元加息、逢会必跌、外盘领跌、央行的指导性文件。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	其实指导性文件并没有出来，但是有一张图却被网友疯传，狂人只能说：贵圈太乱，只怕有心人。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图2\" alt=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图2\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497520683697943.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	这么傻X的造谣也能造出来，关键是，谣言一出，大幅下跌就来了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	狂人也只是个普通人，这次在ETH上的判断有些过激，导致较多人亏损。回顾一下昨日的文章：狂人认为出现破位下跌是极小概率事件，并且说明2500-2700一带越跌越买，照这个策略操作的投资者全部套牢，按目前2450元的价格算，多数人套牢了5%左右。如果你的亏损超过5%，应该找下原因。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>这种小概率事件难以避免，是诸多原因造成的，但事实已经发生，狂人不会逃避，责任在我，向大家说声对不起。</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	币圈很难找到第二个人敢如此直言涨跌，判断24小时内每个币的走势，可能是因为太容易出错，也太容易得罪追随者。但是狂人坚信，你们都是懂我的人。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	就说这么多，开始今天的分析\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>比特币</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	连续一周提示风险，连续从21000跌到17000，4天调整4000，20%的跌幅，相信多数看狂人文章的人都躲过去了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图3\" alt=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图3\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497521246121389.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	日线看，风险短期基本释放完毕，该位置企稳后将有一波小幅反弹，很多投资者是涨的时候敢买，跌下来不敢了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	20000的时候上车心里毫无压力，跌倒17000了反而不敢买了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	真是想问问，到底为什么？\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图4\" alt=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图4\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497521263526728.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	一路跌下来基本都是带着量往下杀，主力出货意图比较明显，但短期承接盘显示已经较多，抄底资金聚集，恰逢前期平台的位置，<strong>故该位置出现震荡式反弹可能性较大，但整体行情已经走出空头走势，趋势难以反转，中长线投资者继续休息就好。上方压力位压力位18200-18500。</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>莱特币</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图5\" alt=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图5\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497521298282360.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	比特、以太坊大跌，莱特反而纹丝不动，抗跌性表现的非常明显，主要源自于近期涨幅不大，散户看涨预期，同时主力也没有现身，大家都在修养生息。产生了窄幅的震荡，和昨日分析的基本一致，币价在区间震荡，虽然午后一度跌破200元，但很快便被收回，场内资金博弈明显，无增量资金。日线缩量明显，近几次缩量后的变盘均为向上。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>综上，日线通道内看震荡向上，压力依然时220元228元。</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>以太坊</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图6\" alt=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图6\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497521321335132.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	日线回踩10日线企稳\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图7\" alt=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图7\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497521340536335.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	15分钟被MA30完全压制，什么时候有效突破，可能才能有像样的反弹。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图8\" alt=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图8\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497521349663496.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	此处跌幅成交量还是太大了，如果再次有效破掉，下方支撑位距离就比较远了，大概在1800-2000左右，距离现在的位置还有20%的跌幅，所以建议方向不明的情况下，该止损要止损，毕竟涨了70倍一次像样的调整都没有，一旦调整起来，怕是有些恐怖。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>综上：短期该位置或有反弹，反弹高点大概在2700附近，逢高减仓为主。</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图9\" alt=\"留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图9\" src=\"https://pic.sosobtc.com/attachment/article/20170615/1497521375703628.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	狂人自己也亏了10%，交易本身就是这样，有高潮就有低谷，一起努力吧。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	今天状态不是很好，从后台留言能真实的感受到大家赔钱时的急切，心中有些不是滋味。无法打起十二分精神写文章。简单说了说对近期的看法，仅供参考吧！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	今天就说这么多，希望对大家有所帮助，明天见。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	有任何问题，欢迎留言。\r\n</p>\r\n<div>\r\n	<br />\r\n</div>\r\n<p>\r\n	关注数字资产咨询请访问：J8交易所（www.J8EX.com）\r\n</p>', '1', 'aaa', '0', '1', '1', '0', '1497524889', '1497456000', '1', '59426a65d0dac.png');
INSERT INTO `ecshecom_article` VALUES ('41', '防范通过数字货币进行的非法行为的相关措施', '<p>\r\n	<span style=\"font-family:Calibri;font-size:12pt;\"><span>尊敬的</span></span><span style=\"font-family:宋体;font-size:12pt;\"><span></span></span><span style=\"font-family:宋体;font-size:12pt;\">J8交易所</span><span style=\"font-family:Calibri;font-size:12pt;\"><span>用户：</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Calibri;font-size:12pt;\">&nbsp;</span> \r\n</p>\r\n<p style=\"text-indent:36pt;\">\r\n	<span style=\"font-family:Calibri;font-size:12pt;\"><span>为进一步抑制</span></span><span style=\"font-family:宋体;font-size:12pt;\"><span>数字货币</span></span><span style=\"font-family:Calibri;font-size:12pt;\"><span>市场的投机行为，防范通过</span></span><span style=\"font-family:宋体;font-size:12pt;\"><span>数字货币</span></span><span style=\"font-family:Calibri;font-size:12pt;\"><span>进行的非法传销、洗钱和换汇的可能性。</span></span><span style=\"font-family:宋体;font-size:12pt;\">J8交易所</span><span style=\"font-family:Calibri;font-size:12pt;\"><span>将加强客户身份识别、加强资金来源和提币用户审核监督。发现可疑用户行为，</span></span><span style=\"font-family:宋体;font-size:12pt;\">J8交易所</span><span style=\"font-family:Calibri;font-size:12pt;\"><span>可能采取限制提币、交易、冻结可疑资产的相关措施，并向有关部门进行上报。感谢您的理解与支持。</span></span> \r\n</p>\r\n<p style=\"text-indent:36pt;\">\r\n	<span style=\"font-family:宋体;font-size:12pt;\"><span>数字货币</span></span><span style=\"font-family:Calibri;font-size:12pt;\"><span>不由货币当局发行，不具有法偿性与强制性，具有极高的价格波动风险，请在风险自担的前提下谨慎投资。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:宋体;font-size:10.5pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> \r\n</p>\r\n<p style=\"text-indent:367.5pt;\">\r\n	<span style=\"font-family:宋体;font-size:10.5pt;\">2017.6.15</span> \r\n</p>\r\n<p style=\"text-indent:388.5pt;\">\r\n	<span style=\"font-family:宋体;font-size:10.5pt;\"><span></span>J8交易所</span> \r\n</p>\r\n<p style=\"text-indent:346.5pt;\">\r\n	<span style=\"font-family:宋体;font-size:10.5pt;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<b><span style=\"background:#F8F8F8;color:#2B2B2B;font-family:Arial;font-size:13.5pt;font-style:normal;font-weight:bold;\">Respected </span><span style=\"background:#F8F8F8;color:#2B2B2B;font-size:13.5pt;font-style:normal;font-weight:bold;\"><span>J8EX.com</span></span></b><b><span style=\"background:#F8F8F8;color:#2B2B2B;font-family:Arial;font-size:13.5pt;font-style:normal;font-weight:bold;\">&nbsp;users</span></b><b><span style=\"background:#F8F8F8;color:#2B2B2B;font-family:宋体;font-size:13.5pt;font-style:normal;font-weight:bold;\"><span>：</span></span></b> \r\n</p>\r\n<p style=\"text-indent:42pt;\">\r\n	<span style=\"background:#F8F8F8;color:#2B2B2B;font-family:Arial;font-size:10.5pt;font-style:normal;font-weight:normal;\">In order to further curb the speculation in digital money market, it is possible to prevent illegal pyramid selling, money laundering and exchange transfer through digital currency. The J8EX.com<span id=\"__kindeditor_bookmark_end_22__\"></span> will strengthen customer identification, strengthen funding sources and review and supervise the users of the currency. Finding suspicious user behavior, the J8EX.com may take measures to limit the use of money, trade, freeze suspicious assets, and report to the relevant authorities. Thank you for your understanding and support.</span> \r\n</p>\r\n<p style=\"text-indent:42pt;\">\r\n	<span style=\"background:#F8F8F8;color:#2B2B2B;font-family:Arial;font-size:10.5pt;font-style:normal;font-weight:normal;\">The digital currency is not issued by the monetary authorities. It has no legal compensation and compulsory, and it has extremely high price fluctuation risk. Please invest carefully under the premise of risk.</span> \r\n</p>\r\n<p>\r\n	<b><span style=\"background:#F8F8F8;color:#2B2B2B;font-family:宋体;font-size:13.5pt;font-style:normal;font-weight:bold;\">&nbsp;</span></b> \r\n</p>\r\n<p style=\"text-indent:367.5pt;\">\r\n	<span style=\"font-family:宋体;font-size:10.5pt;\">2017.6.15</span> \r\n</p>\r\n<p style=\"text-indent:388.5pt;\">\r\n	<span style=\"font-family:宋体;font-size:10.5pt;\">J8EX.com</span> \r\n</p>\r\n<p>\r\n	<b><span style=\"background:#F8F8F8;color:#2B2B2B;font-family:宋体;font-size:13.5pt;font-style:normal;font-weight:bold;\">&nbsp;</span></b> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '1', 'aaa', '0', '1', '1', '0', '1497525005', '1497456000', '1', '59426b2338444.png');
INSERT INTO `ecshecom_article` VALUES ('42', '产品优化意见“征集令”', 'J8交易所<span>自上线以来，</span>通过优秀的产品体验和热忱的用户服务，得到了业界的广泛认可，在行业建立了良好口碑。本着精益求精做产品，一丝不苟为用户的服务原则，届时我们将面向全网“征集”产品优化意见，所有朋友均可给我们的产品提出建议，诚邀您来“吐槽”。活动详情如下：\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>活动时间：6</strong>月15日-6月30日\r\n</p>\r\n<p>\r\n	<strong>活动介绍：</strong>在J8交易所APP、WEB端使用过程中，您觉得有什么模块是可以优化的？有什么功能是让您使用起来觉得“非常不爽”的？直接发送您对J8交易所提出的建议或意见；欢迎大家来“吐槽”，活动结束后，J8交易所将会优选好的建议，并根据您的建议，对产品做优化。\r\n</p>', '1', 'aaa', '0', '0', '1', '3', '1497525169', '1497456000', '1', '59426b5715ef3.png');
INSERT INTO `ecshecom_article` VALUES ('43', 'J8交易所优质资产登记说明', '<p>\r\n	尊敬的J8交易所用户：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	至J8交易所上线资产登记功能，将各类资产面向市场评定和投票以来，得到了广大用户的认可，同时也有个别误解，在此进一步明确：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	1. 初审标准\r\n</p>\r\n<p>\r\n	团队，有专业团队在运营。\r\n</p>\r\n<p>\r\n	产品，已经实现或成型。\r\n</p>\r\n<p>\r\n	市场及定位，具有存在的意义和市场发展前景。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>2. 公示阶段</strong> \r\n</p>\r\n<p>\r\n	面向市场公示，接受评定投票。\r\n</p>\r\n<p>\r\n	<strong><br />\r\n</strong> \r\n</p>\r\n<p>\r\n	<strong>3. 上线</strong> \r\n</p>\r\n<p>\r\n	对人气高的优质资产，J8交易所会主动接洽，进行客观中立的尽职调查，达到最终审核标准后可在J8交易所上线交易。\r\n</p>\r\n<p>\r\n	J8交易所是创新资产交易平台，主营资产证券化方向，诚招各类优质落地团队及项目，不接受炒作及传销类的任何币种！\r\n</p>\r\n<p>\r\n	初审相对宽松，会给更多项目展现的机会，但登记通过并不代表上线交易，登记后需要市场的评定和严格的尽调，J8交易所会严格审核每一个上线的资产，请大家放心！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	感谢各位用户和资产官方对J8交易所的认可和支持！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:right;\">\r\n	海通网络网\r\n</p>\r\n<p style=\"text-align:right;\">\r\n	2017年5月15日\r\n</p>', '1', 'aaa', '0', '0', '1', '4', '1497525376', '1497456000', '1', '59426c26a6e49.png');
INSERT INTO `ecshecom_article` VALUES ('46', 'J8交易所（www.J8EX.com）正式上线', '<p class=\"MsoNormal\">\r\n	<span></span>J8交易所<span>（</span><span>www.J8EX.com</span><span>）正式上线</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span></span>J8交易所<span>数字</span><span>货</span><span>币交易平台专业的的加密数字货币网络交易平台。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<span>我们希望通过多年积累的全球化的资源与符合全球化趋势的数字货币融合，以技术为基础，把协助打造全球化互联网金融中心为终极目标，从而使平台成为</span><span>国际</span><span>数字资产及数字货币交易平台的行标机构</span><span>。</span> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<b><span>平台优势：</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n1、最前沿的区块链系统技术。我们拥有完整的交易体系和数字加密功能，<span>J8交易所</span><span>的区块链系统不依赖第三方，通过自身分布式节点进行网络数据的存储、验证与传递的技术，区块链技术具有去中心化存储、信息高度透明、不可篡改等安全特点，并且可实现线上线下全覆盖的金融交易对接，区块链技术将颠覆整个互联网架构，进而对整个行业产生深远的影响，区块链被誉为</span><span>“第四次工业革命”。</span>\r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n2、<span></span>J8交易所<span>交易平台已发展为以加密数字货币为核心业务的多元化投资平台，综合性数字资产交易平台，服务全球的领先加密数字货币投资交易品牌。</span> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n3、<span></span>J8交易所<span>交易平台支持比特币、</span><span>以太坊</span><span>等多种加密数字货币的交易。</span><span></span>J8交易所<span>交易平台以</span>“<span>区块连应用</span>”为核心，构建会员系统和“<span></span>J8交易所<span>交易平台钱包</span>”及实体商家整合流通的全产业链式金融投资模式。“<span></span>J8交易所”支持双向交易，<span>低</span><span>手续费，全球任意账户实时到账。</span>“<span></span>J8交易所<span>交易平台</span>”凭借强大的区块链系统提供交易透明、安全可靠、收益倍增的高效服务。\r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\nJ8交易所<span>正将加密数字货币、消费商家、网络支付逐渐整合流通，它正改变资金的存储、使用和支付方式，构建一个更加安全、高效的加密数字货币网络，未来，</span><span></span>J8交易所<span>将为全球投资者提供更多高价值的数字资产服务。</span> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<span><br />\r\n</span> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	J8交易所<span>平台采用：</span> \r\n</p>\r\n<img src=\"/Upload/article/5955b6e6d5302.png\" alt=\"\" /><br />\r\n<p>\r\n	<br />\r\n</p>', '1', 'aaa', '0', '0', '1', '5', '1497457629', '1497456000', '1', '59a513b98a6af.gif');

-- ----------------------------
-- Table structure for ecshecom_article_type
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_article_type`;
CREATE TABLE `ecshecom_article_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `remark` varchar(50) CHARACTER SET utf8 NOT NULL,
  `index` varchar(50) CHARACTER SET utf8 NOT NULL,
  `footer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `shang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ecshecom_article_type
-- ----------------------------
INSERT INTO `ecshecom_article_type` VALUES ('1', '平台简介', '平台简介', '行业资讯', '0', '1', 'aboutus', '<p class=\"MsoNormal\">\r\n	<span></span>J8交易所<span>（</span><span>www.J8EX.com</span><span>）正式上线</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<img src=\"/Upload/article/59a515109bf05.png\" alt=\"\" />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span></span><span>J8交易所</span><span>（</span><span>www.J8EX.com</span><span>）</span><span>专业的的区块链数字货币网络交易平台。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<span>我们希望通过多年积累的全球化的资源与符合全球化趋势的数字货币融合，以技术为基础，把协助打造全球化互联网金融中心为终极目标，从而使平台成为</span><span>国际</span><span>数字资产及数字货币交易平台的行标机构</span><span>。</span> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<b><span>平台优势：</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n1、最前沿的区块链系统技术。我们拥有完整的交易体系和数字加密功能，<span></span><span>J8交易所</span><span>的区块链系统不依赖第三方，通过自身分布式节点进行网络数据的存储、验证与传递的技术，区块链技术具有去中心化存储、信息高度透明、不可篡改等安全特点，并且可实现线上线下全覆盖的金融交易对接，区块链技术将颠覆整个互联网架构，进而对整个行业产生深远的影响，区块链被誉为</span>“第四次工业革命”。\r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n2、<span></span><span>J8交易所</span><span>已发展为以加密数字货币为核心业务的多元化投资平台，综合性数字资产交易平台，服务全球的领先加密数字货币投资交易品牌。</span> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n3、<span></span><span>J8交易所</span><span>支持比特币、</span><span>以太坊</span><span>等多种加密数字货币的交易。</span><span></span><span>J8交易所</span><span>交易平台以</span>“<span>区块连应用</span>”为核心，构建会员系统和“<span></span><span>J8交易所</span><span>平台钱包</span>”及实体商家整合流通的全产业链式金融投资模式。“<span></span><span>J8交易所</span>”支持双向交易，<span>低</span><span>手续费，全球任意账户实时到账。</span>“<span></span><span>J8交易所</span>”凭借强大的区块链系统提供交易透明、安全可靠、收益倍增的高效服务。\r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n<span>J8交易所</span><span>正将加密数字货币、消费商家、网络支付逐渐整合流通，它正改变资金的存储、使用和支付方式，构建一个更加安全、高效的加密数字货币网络，未来，</span><span></span><span>J8交易所</span><span>将为全球投资者提供更多高价值的数字资产服务。</span> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<span><br />\r\n</span> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n</p>', '1', '1497495044', '1497495048', '0');
INSERT INTO `ecshecom_article_type` VALUES ('2', 'xiazai', '下载中心', '最新公告', '0', '1', '', '', '3', '0', '0', '0');
INSERT INTO `ecshecom_article_type` VALUES ('3', 'help', '帮助中心', '帮助中心', '0', '1', '', '', '2', '0', '0', '0');
INSERT INTO `ecshecom_article_type` VALUES ('4', 'aboutus', '关于我们', '关于我们', '0', '1', '', '', '1', '1498792179', '1498792179', '0');
INSERT INTO `ecshecom_article_type` VALUES ('5', '联系我们', '联系我们', '', '0', '1', 'aboutus', '<span style=\"color:#CC33E5;font-size:14px;line-height:21px;\">请联系QQ客服 或者 发送邮件至客服邮箱</span>', '2', '1497496071', '1497496074', '0');
INSERT INTO `ecshecom_article_type` VALUES ('6', '加入我们', '加入我们', '', '0', '1', 'aboutus', '<p>\r\n	<span><span style=\"font-size:14px;line-height:21px;\">请联系官方客服</span></span>\r\n</p>\r\n<p>\r\n	<span><span style=\"font-size:14px;line-height:21px;\"><br />\r\n</span></span>\r\n</p>\r\n<p>\r\n	<span><span style=\"font-size:14px;line-height:21px;\"><span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">前端工程师</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">岗位职责：</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">能与设计师产品经理默契合作，确保产品前端UI和交互方面开发需求，并确保产品在不同平台和设备上兼容。</span></span></span><span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">职位要求：</span>\r\n</p>\r\n<p>\r\n	<span><span style=\"font-size:14px;line-height:21px;\"><span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">1.掌握专业的html/css/js方面的知识；</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">2.良好的服务意识、耐心和责任心，工作积极主动</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">3.能够写出高性能、高可维护性的“优美”的代码</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">4.具备html5/css3及手机浏览器上的开发经验和对区块链虚拟资产，股票交易有了解者优先</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\"><br />\r\n</span></span></span>\r\n</p>\r\n<p>\r\n	<span><span style=\"font-size:14px;line-height:21px;\"><span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">PHP高级开发工程师</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">岗位职责：</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">主要负责后端的技术工作，开发和维护J8EX交易所，主要编程语言是PHP</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">职位要求：</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">1.精通PHP，熟悉常用开发框架；</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">2.熟悉Mysql数据库，对数据库优化等有一定了解；</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">3.有一年以上大型网站开发经验；</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">4.对前端html/CSS/JS有所了解，有前端经验更佳；</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">5.至少三年以上工作经验。</span><br />\r\n<br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">客服专员</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">岗位职责：</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">负责接听客户来电，及时跟进反馈以及解决客户的问题。</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">职位要求：</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">1.大专以上学历，年龄要求：20岁-28岁；</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">2.熟练使用办公室操作软件；</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">3.普通话标准；</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">4.细心，耐心，吃苦耐劳、具有较强的团队精神，沟通能力强；；</span><br />\r\n<span style=\"font-family:tahoma, &quot;font-size:14px;background-color:#FFFFFF;\">5.有客服相关工作经验者优先。</span><br />\r\n<br />\r\n<br />\r\n</span></span>\r\n</p>', '4', '1497495984', '1497495990', '0');
INSERT INTO `ecshecom_article_type` VALUES ('7', '法律声明', '法律声明', '', '0', '1', 'aboutus', '<p class=\"MsoNormal\">\r\n	《数字货币交易平台J8交易所用户服务协议》<br />\r\n一、总则<br />\r\n1.1、 用户在使用虚拟币交易平台服务前，应当仔细阅读《J8交易所用户服务协议》（以下<br />\r\n简称“本协议”）的全部内容，对于本协议中的加重字体、斜体、下划线、颜色标记等条款<br />\r\n需重点阅读、理解。<br />\r\n1.2、J8交易所（http://www.J8EX.com）所提供的各项服务的所有权和运作权均归J8-EXCHANG团队（以下简称“J8交易所”）所有。<br />\r\n1.3、 用户应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。用户在进<br />\r\n行注册程序过程中点击\"注册\"按钮即表示用户与J8交易所达成以下协议，完全接受本协议项下<br />\r\n的全部条款，本协议即在用户与J8交易所之间产生法律效力，对双方均具有法律约束力。<br />\r\n1.4、 用户注册成功后，J8交易所将给予每个用户一个用户帐号及相应的密码，该用户帐号和<br />\r\n密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。<br />\r\n1.5、 《J8交易所用户服务协议》、单项服务条款、全部活动条款及公告可由J8交易所随时更<br />\r\n新，且无需另行通知。J8交易所有权对上述条款进行修改，修改后的协议一旦公布即有效替代<br />\r\n原有协议。用户可随时查询最新协议。用户在使用J8交易所提供的各项服务之前，应仔细阅读<br />\r\n本协议及本协议不可分割的各项服务协议。用户在使用相关服务时,应关注并遵守其所适用<br />\r\n的相关条款。用户如不同意本服务协议及/或随时对其的修改，不得访问或使用本网站相关<br />\r\n服务；用户一旦使用J8交易所服务，即视为用户已了解并完全同意本协议及其他服务条款中的<br />\r\n各项内容，包括J8交易所对本协议及其他服务条款随时所做的任何修改，并成为J8交易所用户。<br />\r\n二、用户资格及注册<br />\r\n2.1、 用户应为具有完全民事权利能力和民事行为能力的自然人、法人，或是能够独立承担<br />\r\n民事责任能力的其他组织。用户若不具有前述规定的法律能力资格，须经法定代理人同意或<br />\r\n由法定代理人代理，或是得到有权主体授权后进行注册、交易。或虽不具有完全民事权利能<br />\r\n力和行为能力,但点击同意注册按钮，J8交易所即视为经其法定代理人同意并由其法定代理人<br />\r\n代理注册及完成交易等服务内容的操作。<br />\r\n2.2、 用户使用J8交易所提供的网络平台服务前，应自行准备如下设备并承担如下开支：<br />\r\n2.2.1、 自行配备上网的所需设备，包括个人电脑、调制解调器或其他必备上网装置；<br />\r\n2.2.2、 自行负担个人上网所支付的与此服务有关的电话费用、网络费用等。<br />\r\n2.3、 用户点击“同意以下协议并注册”按钮，则视为用户同意本协议的所有条款，且具有<br />\r\n浏览J8交易所平台相关信息、提交买单、合理交易等使用J8交易所提供的全部服务的权利能力和<br />\r\n行为能力，同意承担由此带来的全部法律责任。<br />\r\n2.4、 用户注册、使用J8交易所不得出于非法或破坏J8交易所交易秩序的目的，用户保证向J8交易所提交的全部信息真实、准确和完整，不存在盗用、借用、买入非本人手机号码、电子邮箱<br />\r\n等进行注册、虚假交易和作弊交易的行为，用户若存在上述违规行为，J8交易所有权取消其交<br />\r\n易资格及因参加交易活动所获权益，并停止服务、封停帐号。如该违规行为给J8交易所造成损<br />\r\n失的，J8交易所保留追究赔偿及诉至法律解决的权利。<br />\r\n2.5、 用户注册成功后，应妥善保管其J8交易所平台帐户及密码，定期或不定期修改密码，在<br />\r\n每次使用J8交易所服务完毕后及时退出帐户，以确保帐户安全。用户不得将J8交易所平台帐户出<br />\r\n借、转让或用作其他非法用途，否则因帐户未妥善保管而造成损失的，用户应承担相应法律<br />\r\n责任。<br />\r\n三、用户个人信息保护<br />\r\n3.1、本协议所称之J8交易所用户信息是指符合法律、法规及相关规定，并符合下述范围的信<br />\r\n息：<br />\r\n3.1.1、用户注册J8交易所或申请J8交易所会员卡时，向J8交易所提供的个人信息；<br />\r\n3.1.2、用户在使用J8交易所服务、参加网站活动或访问网站网页时，J8交易所自动接收并记录的<br />\r\n用户浏览器端或手机客户端数据，包括但不限于 IP 地址、网站 Cookie 中的资料及用户要求<br />\r\n取用的网页记录；<br />\r\n3.1.3、J8交易所从商业伙伴处合法获取的用户个人信息；<br />\r\n3.1.4、其它J8交易所通过合法途径获取的用户个人信息。<br />\r\n3.2、J8交易所承诺：非经法定原因或用户事先许可，J8交易所不会向任何第三方透露用户的密<br />\r\n码、姓名、身份证，手机号码等非公开信息。并对用户信息中涉及识别用户个人身份和用户个人隐私<br />\r\n的信息进行保护，承诺在未获得用户许可的情况下，不会将用户的上述信息对外公开或提供<br />\r\n给任何第三方，但以下情况除外：<br />\r\n3.2.1、经用户同意向用户本人或其他第三方披露；<br />\r\n3.2.2、经用户同意公开其个人资料，享受为其提供的产品和服务；<br />\r\n3.2.3、根据法律、法规等相关规定，或行政机构要求，向行政、司法机构或其他法律规定的<br />\r\n第三方披露；<br />\r\n3.2.4、其它J8交易所根据法律、法规等相关规定进行的披露。<br />\r\n四、服务的提供、修改及终止<br />\r\n4.1、用户可根据本协议及J8交易所公布的相关使用规则，查阅在J8交易所平台上发布的交易及<br />\r\n相关资料，通过J8交易所平台交易具体的金融服务产品等有关活动，及J8交易所现有及将来可能<br />\r\n提供的其他服务。<br />\r\n4.2、用户在使用J8交易所提供的上述服务时，应遵守本协议及J8交易所的相关使用规则，遵守<br />\r\n自愿、平等、公平及诚实信用原则，不利用J8交易所平台侵犯他人合法权益及谋取不正当利益，<br />\r\n不扰乱网上交易的正常秩序。<br />\r\n4.3、用户在接受J8交易所各项服务的同时，同意接受J8交易所网提供的各类信息服务。用户在<br />\r\n此授权J8交易所可以向其电子邮件、手机、通信地址等发送商业信息。用户有权选择不接受比<br />\r\n特儿提供的各类信息服务，并进入J8交易所相关页面进行更改。<br />\r\n4.4、J8交易所J8交易所尽全力维护平台的正常运行，以向用户提供持续、稳定、安全、顺畅的服务。<br />\r\n但用户理解并同意：J8交易所对服务页面进行改版、升级网站系统、增加服务功能等须中断服<br />\r\n务的操作时，有权暂时中断服务。<br />\r\n4.5、J8交易所保留随时修改或中断服务而不需通知用户的权利。J8交易所有权行使修改或中断<br />\r\n服务的权利，不需对用户或任何无直接关系的第三方负责。<br />\r\n4.6、用户对本协议的修改有异议，或对J8交易所的服务不满，可以行使如下权利：<br />\r\n4.6.1、停止使用J8交易所的网络服务；<br />\r\n4.6.2、通过客服等渠道告知J8交易所停止对其服务。结束服务后，用户使用J8交易所网络服务的<br />\r\n权利立即终止。在此情况下，J8交易所没有义务传送任何未处理的信息或未完成的服务给用户<br />\r\n或任何无直接关系的第三方。<br />\r\n五、用户权利<br />\r\n5.1、用户的用户名、密码和安全性<br />\r\n5.1.1、用户有权选择是否成为J8交易所会员，用户选择成为J8交易所注册用户的，可自行创建、<br />\r\n修改昵称。用户名和昵称的命名及使用应遵守相关法律法规并符合网络道德。用户名和昵称<br />\r\n中不能含有任何侮辱、威胁、淫秽、谩骂等侵害他人合法权益的文字。<br />\r\n5.1.2、用户一旦注册成功，成为J8交易所的会员，将得到用户名（用户邮箱）和密码，并对以<br />\r\n此组用户名和密码登入系统后所发生的所有活动和事件负责，自行承担一切使用该用户名的<br />\r\n言语、行为等而直接或者间接导致的法律责任。<br />\r\n5.1.3、用户有义务妥善保管J8交易所网账号、用户名和密码、短信验证码、交易密码，用户<br />\r\n将对用户名和密码、和交易密码安全负全部责任。因用户原因导致用户名或密码、交易密码<br />\r\n泄露而造成的任何法律后果由用户本人负责，由于用户自身原因泄露这些信息导致的财产损<br />\r\n失，本站不负相关责任。由于本站是交易网站，登录密码、提现密码、短信密码、交易密码<br />\r\n等不得使用相同密码，否则会有安全隐患，相关责任由用户自身承担。<br />\r\n5.1.4、用户密码遗失的，可以通过注册电子邮箱发送的链接重置密码，以手机号码注册的用<br />\r\n户可以凭借手机号码找回原密码。用户若发现任何非法使用用户名或存在其他安全漏洞的情<br />\r\n况，应立即告知J8交易所。<br />\r\n5.1.5、J8交易所不会向任何用户索取密码，不会让用户往任何非本站交易中心里提供的帐户、<br />\r\n 充值地址打款，请大家不要相信任何J8交易所打折、优惠等诈骗信息，往非法交易<br />\r\n账户、地址里打款或币造成的损失本站不负责任。<br />\r\n5.2、用户有权根据网站相关规定，在发布信息等贡献后，取得J8交易所给予的奖励；<br />\r\n5.3、用户有权修改其个人账户中各项可修改信息，自行选择昵称和录入介绍性文字，自行<br />\r\n决定是否提供非必填项的内容；<br />\r\n5.4、用户有权参加J8交易所社区，并发表符合国家法律规定，并符合J8交易所社区规则的文章<br />\r\n及观点；<br />\r\n5.5、用户有权根据网站相关规定，获得J8交易所给与的奖励（如社区学分、徽章等）；<br />\r\n5.6、用户有权参加J8交易所组织提供的各项线上、线下活动；<br />\r\n5.7、用户有权根据J8交易所网站规定，享受J8交易所提供的其它各类服务。<br />\r\n六、用户义务<br />\r\n6.1 用户可以在J8交易所平台发布对商品或交易服务的评价信息，并可对其进行适当的修<br />\r\n改、删除，但不得不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和<br />\r\n公民的合法权益，不得利用本站制作、复制和传播下列信息：<br />\r\n6.1.1、 反对宪法所确定的基本原则，煽动、抗拒、破坏宪法和法律、行政法规实施的；<br />\r\n6.1.2、 煽动颠覆国家政权，推翻社会主义制度，煽动、分裂国家，破坏国家统一的；<br />\r\n6.1.3、 损害国家荣誉和利益的；<br />\r\n6.1.4、 煽动民族仇恨、民族歧视，破坏民族团结的；<br />\r\n6.1.5、 任何包含对种族、性别、宗教、地域内容等歧视的；<br />\r\n6.1.6、 捏造或者歪曲事实，散布谣言，扰乱社会秩序的；<br />\r\n6.1.7、 宣扬封建迷信、邪教、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；<br />\r\n6.1.8、 公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；<br />\r\n6.1.9、 损害国家机关信誉的；<br />\r\n6.1.10、其他违反宪法和法律行政法规的。<br />\r\n6.1.11、进行商业广告行为的<br />\r\n6.2、用户不得通过任何手段恶意注册J8交易所网站帐号，包括但不限于以牟利、炒作、套现、<br />\r\n获奖等为目的多个账号注册。用户亦不得盗用其他用户帐号。如用户违反上述规定，则J8交易所<br />\r\n有权直接采取一切必要的措施，包括但不限于删除用户发布的内容、取消用户在网站获<br />\r\n得的星级、荣誉以及虚拟财富，暂停或查封用户帐号，取消因违规所获利益，乃至通过诉讼<br />\r\n形式追究用户法律责任等。<br />\r\n6.3、禁止用户将J8交易所任何形式作为从事各种非法活动的场所、平台或媒介。未经J8交易所<br />\r\n的授权或许可，用户不得借用本站的名义从事任何商业活动，也不得以任何形式将J8交易所<br />\r\n作为从事商业活动的场所、平台或媒介。如用户违反上述规定，则J8交易所有权直接采取一切<br />\r\n必要的措施，包括但不限于删除用户发布的内容、取消用户在网站获得的星级、荣誉以及虚<br />\r\n拟财富，暂停或查封用户帐号，取消因违规所获利益，乃至通过诉讼形式追究用户法律责任<br />\r\n等。<br />\r\n6.4、用户在J8交易所以各种形式发布的一切信息，均应符合国家法律法规等相关规定及网站<br />\r\n相关规定，符合社会公序良俗，并不侵犯任何第三方主体的合法权益，否则用户自行承担因<br />\r\n此产生的一切法律后果，且J8交易所因此受到的损失，有权向用户追偿。<br />\r\n七、责任限制与免责<br />\r\n7.1、不论在任何情况下，J8交易所对由于互联网正常的设备维护，互联网络连接故障，电脑、<br />\r\n通讯或其他系统的故障，网络攻击，电力故障，罢工，暴乱，骚乱，灾难性天气（如火灾、<br />\r\n洪水、风暴等），爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的<br />\r\n不能履行或延迟履行服务不承担责任。<br />\r\n7.2、J8交易所作为“网络服务提供者”的第三方平台，不担保网站平台上的信息及服务能充<br />\r\n分满足用户的需求。对于用户在接受J8交易所服务过程中可能遇到的错误、侮辱、诽谤、不<br />\r\n作为、淫秽、色情或亵渎事件，J8交易所不承担法律责任。<br />\r\n7.3、基于互联网的特殊性，J8交易所也不担保服务不会受中断，对服务的及时性、安全性都<br />\r\n不作担保，不承担非因J8交易所导致的责任。<br />\r\n7.4、J8交易所力图使用户能对本网站进行安全访问和使用，但J8交易所不声明也不保证本网站<br />\r\n或其服务器是不含病毒或其它潜在有害因素的；因此用户应使用业界公认的软件查杀任何自<br />\r\nJ8交易所下载文件中的病毒。用户须自行辨别真伪，谨慎预防风险。<br />\r\n7.5、J8交易所不对用户所发布信息的保存、修改、删除或储存失败负责。对网站上的非因J8交易所<br />\r\n故意所导致的排字错误、疏忽等不承担责任。用户须自行辨别真伪，谨慎预防风险。<br />\r\n7.6、J8交易所有权但无义务，改善或更正本网站任何部分之疏漏、错误。<br />\r\n7.7、除非J8交易所以书面形式明确约定，J8交易所对于用户以任何方式（包括但不限于包含、<br />\r\n经由、连接或下载）从本网站所获得的任何内容信息，包括但不限于广告等，不保证其准确<br />\r\n性、完整性、可靠性；对于用户因本网站上的内容信息而购买、获取的任何产品、服务、信<br />\r\n息或资料，J8交易所不承担责任。用户自行承担使用本网站信息内容所导致的风险。<br />\r\n7.8、J8交易所内所有用户所发表的用户评论，仅代表用户个人观点，并不表示本网站赞同其<br />\r\n观点或证实其描述，本网站不承担用户评论引发的任何法律责任。<br />\r\n7.9、J8交易所有权删除J8交易所内各类不符合法律或协议规定的信息，而保留不通知用户的<br />\r\n权利。<br />\r\n7.10、所有发给用户的通告，J8交易所都将通过正式的页面公告、站内信、电子邮件、客服电<br />\r\n话、手机短信或常规的信件送达。任何非经J8交易所正规渠道获得的中奖、优惠等活动或信息，<br />\r\nJ8交易所不承担法律责任。<br />\r\n7.11、J8交易所有权根据市场情况调整充值、提现、交易等手续费费率，有权决定免费推广期<br />\r\n的终止。<br />\r\n八、法律管辖和适用<br />\r\n8.1、 本协议的订立、执行和解释及争议的解决均应适用中华人民共和国大陆地区的法律管<br />\r\n辖。<br />\r\n8.2、如发生本协议条款与上述法律相抵触时，则这些条款将完全按上述法律规定重新解释，<br />\r\n但不影响其它合法条款对用户产生的法律效力和影响。<br />\r\n8.3、 本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，则该规定可<br />\r\n被删除，不影响其余条款的继续执行。<br />\r\n8.4、 如双方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，<br />\r\n任何一方均可向J8交易所所在地人民法院提起诉讼。<br />\r\n8.5、本协议是J8交易所与用户注册成为J8交易所用户，使用J8交易所服务之间的重要法律文件，<br />\r\n J8交易所或者用户的任何其他书面或者口头意思表示与本协议不一致的，均应当以本协议为<br />\r\n准。<br />\r\nJ8交易所(www.J8EX.com)交易平台保留最终解释权。<br />\r\n九、附则<br />\r\n本协议除以上正文部分外，还包括J8交易所平台发布的各项服务规则、产品使用规则、页面提<br />\r\n示提醒等，各项服务规则与本协议具有同等法律效力，为本协议不可分割的重要组成部分。<br />\r\n服务规则包括但不限 《J8交易所用户协议》、 《网络交易服务规则》、 《J8交易所平台使用规<br />\r\n则》、 《隐私声明》、 《反作弊声明》、 《用户交易体验承诺》、 《网购服务》等。其他<br />\r\n交易服务规则。<br />\r\n<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '4', '1497495216', '1497495219', '0');
INSERT INTO `ecshecom_article_type` VALUES ('22', '平台简介', '平台简介', '', '0', '0', 'aboutus', '<p class=\"MsoNormal\">\r\n	<span></span>J8交易所<span>（</span><span>www.J8EX.com</span><span>）正式上线</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<img src=\"/Upload/article/59a515109bf05.png\" alt=\"\" />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span></span><span>J8交易所</span><span>（</span><span>www.J8EX.com</span><span>）</span><span>专业的的区块链数字货币网络交易平台。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<span>我们希望通过多年积累的全球化的资源与符合全球化趋势的数字货币融合，以技术为基础，把协助打造全球化互联网金融中心为终极目标，从而使平台成为</span><span>国际</span><span>数字资产及数字货币交易平台的行标机构</span><span>。</span> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<b><span>平台优势：</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n1、最前沿的区块链系统技术。我们拥有完整的交易体系和数字加密功能，<span></span><span>J8交易所</span><span>的区块链系统不依赖第三方，通过自身分布式节点进行网络数据的存储、验证与传递的技术，区块链技术具有去中心化存储、信息高度透明、不可篡改等安全特点，并且可实现线上线下全覆盖的金融交易对接，区块链技术将颠覆整个互联网架构，进而对整个行业产生深远的影响，区块链被誉为</span>“第四次工业革命”。\r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n2、<span></span><span>J8交易所</span><span>已发展为以加密数字货币为核心业务的多元化投资平台，综合性数字资产交易平台，服务全球的领先加密数字货币投资交易品牌。</span> \r\n</p>\r\n<p class=\"p\" style=\"text-indent:0pt;background:#FFFFFF;\">\r\n	<br />\r\n3、<span></span><span>J8交易所</span><span>支持比特币、</span><span>以太坊</span><span>等多种加密数字货币的交易。</span><span></span><span>J8交易所</span><span>交易平台以</span>“<span>区块连应用</span>”为核心，构建会员系统和“<span></span><span>J8交易所</span><span>平台??', '0', '1503991379', '1503991379', '0');
INSERT INTO `ecshecom_article_type` VALUES ('8', '免责声明', '免责声明', '', '0', '1', '', '<p class=\"MsoNormal\">\r\n	根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。J8交易所仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在J8交易所平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。\r\n</p>', '5', '1497495947', '1497495955', '0');
INSERT INTO `ecshecom_article_type` VALUES ('9', '注册协议', '注册协议', '', '0', '1', 'aboutus', '根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。J8交易所网仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在J8交易所网平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。<br />\r\n<br />\r\n<br />\r\n<br />\r\n请您务必注意以下几点：<br />\r\n<br />\r\n<br />\r\n<br />\r\n1.警惕虚假宣传，不要听信任何币值会永远上涨的宣传，数字货币作为一种虚拟商品，具有极高的风险，很可能出现价值归零的情况。<br />\r\n<br />\r\n2.对于推广和运营方的市场承诺，需要谨慎判别，目前并没有相关法律能保证其兑现承诺，J8交易所不会对任何数字货币进行背书和承诺。<br />\r\n<br />\r\n3.坚决拒绝多层次传销组织，在我国参与该类组织是违法行为，造成的一切后果自负，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n4.根据《中华人民共和国反洗钱法》等有关法律规定，严格禁止利用平台进行洗钱等违法犯罪活动，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n5.数字货币和数字积分等虚拟商品所对应的实物财产和持有者享有的权利存在因发行方等义务相关方破产，关闭或违法犯罪等其他经营风险导致无法兑现的风险。<br />\r\n<br />\r\n6.在J8交易所注册参与交换的用户，应保证注册身份信息的真实、准确，保证拟交换的数字货币等虚拟商品的来源合法。因信息不真实造成的任何问题，平台概不负责。<br />\r\n<br />\r\n7.因国家法律，法规及政策性文件的制定和修改，导致数字货币等虚拟商品的交易被暂停或者禁止的，由此导致的全部损失由用户自行承担。<br />\r\n<br />\r\n8.请控制风险，不要投入超过您风险承受能力的资金，不要购买您所不了解的数字货币，数字积分等虚拟商品。<br />\r\n<br />', '6', '1497495918', '1497495922', '0');
INSERT INTO `ecshecom_article_type` VALUES ('10', '注册指南', '注册指南', '', '0', '1', 'help', '<img src=\"/Upload/article/583a700024ba4.png\" alt=\"\" />', '1', '1497495861', '1497495865', '0');
INSERT INTO `ecshecom_article_type` VALUES ('11', '交易指南', '交易指南', '', '0', '1', 'help', '', '2', '1497495802', '1497495805', '0');
INSERT INTO `ecshecom_article_type` VALUES ('12', '充值指南', '充值指南', '', '0', '1', 'help', '', '3', '1497495770', '1497495773', '0');
INSERT INTO `ecshecom_article_type` VALUES ('13', '充值限额', '充值限额', '', '0', '1', 'help', '<span style=\"color:#CC33E5;font-size:14px;\"><span style=\"font-size:14px;line-height:normal;color:#CC33E5;\">最小充值100最大充值10</span></span><span><span style=\"font-size:14px;line-height:normal;\"><span style=\"color:#CC33E5;font-size:14px;\"></span><span style=\"color:#CC33E5;font-size:14px;\">0000 请通过本人支付宝充值</span></span></span><span style=\"color:#CC33E5;font-size:14px;\"></span>', '4', '1497495698', '1497495701', '0');
INSERT INTO `ecshecom_article_type` VALUES ('14', '提现指南', '提现指南', '', '0', '1', 'help', '<h3 style=\"font-family:\'Microsoft YaHei\';font-weight:500;font-size:24px;background-color:#FFFFFF;\">\r\n	提现须知\r\n</h3>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	1. 提现手续费率1％，每笔提现最低收费2元 。\r\n</p>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	2. 单笔提现限额100元——50000元。\r\n</p>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	3. 银行卡提现24小时内到帐，在已汇出24小时后 仍未收到款项，请联系客服。\r\n</p>', '5', '1497495645', '1497495649', '0');
INSERT INTO `ecshecom_article_type` VALUES ('15', 'aa', '虚拟币钱包下载', '', '0', '1', 'xiazai', '<!--StartFragment -->\r\n<p>\r\n	<a href=\"http://www.coin78.com/bxbcoin.exe\" target=\"_blank\"><span style=\"color:#337FE5;font-size:32px;\">http://www.coin78.com/bxbcoin.exe</span></a>\r\n</p>\r\n<p>\r\n	<span><strong><span style=\"font-size:24px;\">点击连接下载币兴股</span><span style=\"font-size:24px;\">钱包下载。</span></strong></span> \r\n</p>', '1', '1497542400', '1497542400', '0');
INSERT INTO `ecshecom_article_type` VALUES ('16', '浏览器下载', '浏览器下载', '', '0', '1', 'xiazai', '<img src=\"/Upload/article/583a7016bd67f.png\" alt=\"\" />', '2', '1480224804', '1480224805', '0');
INSERT INTO `ecshecom_article_type` VALUES ('17', '新币上线申请', '新币上线申请', '', '0', '1', 'xiazai', '<img src=\"/Upload/article/583a70a9d79ff.png\" alt=\"\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color:#CC33E5;\">请发邮件联系工作人员，合作愉快！！！</span>', '3', '1480224952', '1480224955', '0');
INSERT INTO `ecshecom_article_type` VALUES ('18', 'dd', '工具下载', '', '0', '1', 'xiazai', '测试数据', '4', '0', '0', '0');
INSERT INTO `ecshecom_article_type` VALUES ('19', 'aaa', '官方公告', '', '1', '0', '', '<p>\r\n	<img src=\"/Upload/article/59a51679f18c0.png\" alt=\"\" />\r\n</p>', '2', '1497456000', '1497456000', '1');
INSERT INTO `ecshecom_article_type` VALUES ('20', 'bbb', '行业资讯', '', '1', '0', '', '', '3', '1497456000', '1497456000', '1');
INSERT INTO `ecshecom_article_type` VALUES ('21', '币友说币', '币友说币', '', '1', '0', '', '', '4', '1497493937', '1497493942', '1');

-- ----------------------------
-- Table structure for ecshecom_auth_extend
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_auth_extend`;
CREATE TABLE `ecshecom_auth_extend` (
  `group_id` mediumint(10) unsigned NOT NULL COMMENT '用户id',
  `extend_id` mediumint(8) unsigned NOT NULL COMMENT '扩展表中数据的id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '扩展类型标识 1:栏目分类权限;2:模型权限',
  UNIQUE KEY `group_extend_type` (`group_id`,`extend_id`,`type`),
  KEY `uid` (`group_id`),
  KEY `group_id` (`extend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_auth_extend
-- ----------------------------
INSERT INTO `ecshecom_auth_extend` VALUES ('1', '1', '1');
INSERT INTO `ecshecom_auth_extend` VALUES ('1', '1', '2');
INSERT INTO `ecshecom_auth_extend` VALUES ('1', '2', '1');
INSERT INTO `ecshecom_auth_extend` VALUES ('1', '2', '2');
INSERT INTO `ecshecom_auth_extend` VALUES ('1', '3', '1');
INSERT INTO `ecshecom_auth_extend` VALUES ('1', '3', '2');
INSERT INTO `ecshecom_auth_extend` VALUES ('1', '4', '1');
INSERT INTO `ecshecom_auth_extend` VALUES ('1', '37', '1');

-- ----------------------------
-- Table structure for ecshecom_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_auth_group`;
CREATE TABLE `ecshecom_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_auth_group
-- ----------------------------
INSERT INTO `ecshecom_auth_group` VALUES ('3', 'admin', '1', '超级管理员', '超级管理员组,拥有系统所有权限', '1', '424,426,431,433,434,435,436,437,438,439,440,441,443,444,445,446,447,448,449,450,451,452,453,454,455,456,458,459,460,461,462,463,465,466,467,469,470,471,473,474,475,476,477,479,480,481,482,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549');
INSERT INTO `ecshecom_auth_group` VALUES ('5', 'admin', '1', '资讯管理员', '拥有网站文章资讯相关权限', '1', '');
INSERT INTO `ecshecom_auth_group` VALUES ('10', 'admin', '1', '财务管理组', '拥有网站资金相关的权限333', '1', '');

-- ----------------------------
-- Table structure for ecshecom_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_auth_group_access`;
CREATE TABLE `ecshecom_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_auth_group_access
-- ----------------------------
INSERT INTO `ecshecom_auth_group_access` VALUES ('1', '11');
INSERT INTO `ecshecom_auth_group_access` VALUES ('2', '3');
INSERT INTO `ecshecom_auth_group_access` VALUES ('3', '2');

-- ----------------------------
-- Table structure for ecshecom_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_auth_rule`;
CREATE TABLE `ecshecom_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2045 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_auth_rule
-- ----------------------------
INSERT INTO `ecshecom_auth_rule` VALUES ('425', 'admin', '1', 'Admin/article/add', '新增', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('427', 'admin', '1', 'Admin/article/setStatus', '改变状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('428', 'admin', '1', 'Admin/article/update', '保存', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('429', 'admin', '1', 'Admin/article/autoSave', '保存草稿', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('430', 'admin', '1', 'Admin/article/move', '移动', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('432', 'admin', '2', 'Admin/Article/mydocument', '内容', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('437', 'admin', '1', 'Admin/Trade/config', '交易配置', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('449', 'admin', '1', 'Admin/Index/operate', '市场统计', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('455', 'admin', '1', 'Admin/Issue/config', '认购配置', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('457', 'admin', '1', 'Admin/Index/database/type/export', '数据备份', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('461', 'admin', '1', 'Admin/Article/chat', '聊天列表', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('464', 'admin', '1', 'Admin/Index/database/type/import', '数据还原', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('471', 'admin', '1', 'Admin/Mytx/config', '提现配置', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('472', 'admin', '2', 'Admin/Mytx/index', '提现', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('473', 'admin', '1', 'Admin/Config/market', '市场配置', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('477', 'admin', '1', 'Admin/User/myzr', '转入虚拟币', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('479', 'admin', '1', 'Admin/User/myzc', '转出虚拟币', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('482', 'admin', '2', 'Admin/ExtA/index', '扩展', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('488', 'admin', '1', 'Admin/Auth_manager/createGroup', '新增用户组', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('499', 'admin', '1', 'Admin/ExtA/index', '扩展管理', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('509', 'admin', '1', 'Admin/Article/adver_edit', '编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('510', 'admin', '1', 'Admin/Article/adver_status', '修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('513', 'admin', '1', 'Admin/Issue/index_edit', '认购编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('514', 'admin', '1', 'Admin/Issue/index_status', '认购修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('515', 'admin', '1', 'Admin/Article/chat_edit', '编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('516', 'admin', '1', 'Admin/Article/chat_status', '修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('517', 'admin', '1', 'Admin/User/coin_edit', 'coin修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('519', 'admin', '1', 'Admin/Mycz/type_status', '状态修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('520', 'admin', '1', 'Admin/Issue/log_status', '认购状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('521', 'admin', '1', 'Admin/Issue/log_jiedong', '认购解冻', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('522', 'admin', '1', 'Admin/Tools/database/type/export', '数据备份', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('525', 'admin', '1', 'Admin/Config/coin_edit', '编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('526', 'admin', '1', 'Admin/Config/coin_add', '编辑币种', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('527', 'admin', '1', 'Admin/Config/coin_status', '状态修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('528', 'admin', '1', 'Admin/Config/market_edit', '编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('530', 'admin', '1', 'Admin/Tools/database/type/import', '数据还原', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('541', 'admin', '2', 'Admin/Trade/config', '交易', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('569', 'admin', '1', 'Admin/ADVERstatus', '修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('570', 'admin', '1', 'Admin/Tradelog/index', '交易记录', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('585', 'admin', '1', 'Admin/Config/mycz', '充值配置', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('590', 'admin', '1', 'Admin/Mycztype/index', '充值类型', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('600', 'admin', '1', 'Admin/Usergoods/index', '用户联系地址', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1379', 'admin', '1', 'Admin/Bazaar/index', '集市管理', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1405', 'admin', '1', 'Admin/Bazaar/config', '集市配置', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1425', 'admin', '1', 'Admin/Bazaar/log', '集市记录', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1451', 'admin', '1', 'Admin/Bazaar/invit', '集市推广', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1846', 'admin', '1', 'Admin/AuthManager/createGroup', '新增用户组', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1847', 'admin', '1', 'Admin/AuthManager/editgroup', '编辑用户组', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1848', 'admin', '1', 'Admin/AuthManager/writeGroup', '更新用户组', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1849', 'admin', '1', 'Admin/AuthManager/changeStatus', '改变状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1850', 'admin', '1', 'Admin/AuthManager/access', '访问授权', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1851', 'admin', '1', 'Admin/AuthManager/category', '分类授权', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1852', 'admin', '1', 'Admin/AuthManager/user', '成员授权', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1853', 'admin', '1', 'Admin/AuthManager/tree', '成员列表授权', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1854', 'admin', '1', 'Admin/AuthManager/group', '用户组', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1855', 'admin', '1', 'Admin/AuthManager/addToGroup', '添加到用户组', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1856', 'admin', '1', 'Admin/AuthManager/removeFromGroup', '用户组移除', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1857', 'admin', '1', 'Admin/AuthManager/addToCategory', '分类添加到用户组', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1858', 'admin', '1', 'Admin/AuthManager/addToModel', '模型添加到用户组', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1859', 'admin', '1', 'Admin/Trade/status', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1860', 'admin', '1', 'Admin/Trade/chexiao', '撤销挂单', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1861', 'admin', '1', 'Admin/Shop/images', '图片', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1862', 'admin', '1', 'Admin/Login/index', '用户登录', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1863', 'admin', '1', 'Admin/Login/loginout', '用户退出', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1864', 'admin', '1', 'Admin/User/setpwd', '修改管理员密码', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1865', 'admin', '2', 'Admin/Index/index', '系统', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1866', 'admin', '2', 'Admin/Article/index', '内容', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1867', 'admin', '2', 'Admin/User/index', '用户', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1868', 'admin', '2', 'Admin/Finance/index', '财务', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1869', 'admin', '2', 'Admin/Trade/index', '交易', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1870', 'admin', '2', 'Admin/Game/index', '应用', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1871', 'admin', '2', 'Admin/Config/index', '设置', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1872', 'admin', '2', 'Admin/Operate/index', '运营', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1873', 'admin', '2', 'Admin/Tools/index', '工具', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1874', 'admin', '2', 'Admin/Cloud/index', '扩展', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1875', 'admin', '1', 'Admin/Index/index', '系统概览', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1876', 'admin', '1', 'Admin/Article/index', '文章管理', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1877', 'admin', '1', 'Admin/Article/edit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1878', 'admin', '1', 'Admin/Text/index', '提示文字', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1879', 'admin', '1', 'Admin/Text/edit', '编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1880', 'admin', '1', 'Admin/Text/status', '修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1881', 'admin', '1', 'Admin/User/index', '用户管理', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1882', 'admin', '1', 'Admin/User/config', '用户配置', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1883', 'admin', '1', 'Admin/Finance/index', '财务明细', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1884', 'admin', '1', 'Admin/Finance/myczTypeEdit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1885', 'admin', '1', 'Admin/Finance/config', '配置', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1886', 'admin', '1', 'Admin/Tools/index', '清理缓存', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1887', 'admin', '1', 'Admin/Finance/type', '类型', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1888', 'admin', '1', 'Admin/Finance/type_status', '状态修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1889', 'admin', '1', 'Admin/User/edit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1890', 'admin', '1', 'Admin/User/status', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1891', 'admin', '1', 'Admin/User/adminEdit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1892', 'admin', '1', 'Admin/User/adminStatus', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1893', 'admin', '1', 'Admin/User/authEdit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1894', 'admin', '1', 'Admin/User/authStatus', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1895', 'admin', '1', 'Admin/User/authStart', '重新初始化权限', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1896', 'admin', '1', 'Admin/User/logEdit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1897', 'admin', '1', 'Admin/User/logStatus', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1898', 'admin', '1', 'Admin/User/qianbaoEdit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1899', 'admin', '1', 'Admin/Trade/index', '委托管理', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1900', 'admin', '1', 'Admin/User/qianbaoStatus', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1901', 'admin', '1', 'Admin/User/bankEdit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1902', 'admin', '1', 'Admin/User/bankStatus', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1903', 'admin', '1', 'Admin/User/coinEdit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1904', 'admin', '1', 'Admin/User/coinLog', '财产统计', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1905', 'admin', '1', 'Admin/User/goodsEdit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1906', 'admin', '1', 'Admin/User/goodsStatus', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1907', 'admin', '1', 'Admin/Article/typeEdit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1908', 'admin', '1', 'Admin/Article/linkEdit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1909', 'admin', '1', 'Admin/Config/index', '基本配置', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1910', 'admin', '1', 'Admin/Article/adverEdit', '编辑添加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1911', 'admin', '1', 'Admin/User/authAccess', '访问授权', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1912', 'admin', '1', 'Admin/User/authAccessUp', '访问授权修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1913', 'admin', '1', 'Admin/User/authUser', '成员授权', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1914', 'admin', '1', 'Admin/User/authUserAdd', '成员授权增加', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1915', 'admin', '1', 'Admin/User/authUserRemove', '成员授权解除', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1916', 'admin', '1', 'Admin/Operate/index', '推广奖励', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1917', 'admin', '1', 'Admin/App/config', 'APP配置', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1918', 'admin', '1', 'AdminUser/detail', '后台用户详情', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1919', 'admin', '1', 'AdminUser/status', '后台用户状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1920', 'admin', '1', 'AdminUser/add', '后台用户新增', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1921', 'admin', '1', 'AdminUser/edit', '后台用户编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1922', 'admin', '1', 'Admin/Articletype/edit', '编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1923', 'admin', '1', 'Admin/Shop/index', '商品管理', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1924', 'admin', '1', 'Admin/Huafei/index', '充值记录', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1925', 'admin', '1', 'Admin/Huafei/config', '充值配置', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1926', 'admin', '1', 'Admin/Vote/index', '投票记录', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1927', 'admin', '1', 'Admin/Vote/type', '投票类型', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1928', 'admin', '1', 'Admin/Money/index', '理财管理', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1929', 'admin', '1', 'Admin/Issue/index', '认购管理', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1930', 'admin', '1', 'Admin/Issue/log', '认购记录', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1931', 'admin', '1', 'Admin/Article/images', '上传图片', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1932', 'admin', '1', 'Admin/Adver/edit', '编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1933', 'admin', '1', 'Admin/Adver/status', '修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1934', 'admin', '1', 'Admin/Article/type', '文章类型', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1935', 'admin', '1', 'Admin/User/index_edit', '编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1936', 'admin', '1', 'Admin/User/index_status', '修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1937', 'admin', '1', 'Admin/Finance/mycz', '人民币充值', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1938', 'admin', '1', 'Admin/Finance/myczTypeStatus', '状态修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1939', 'admin', '1', 'Admin/Finance/myczTypeImage', '上传图片', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1940', 'admin', '1', 'Admin/Finance/mytxStatus', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1941', 'admin', '1', 'Admin/Tools/dataExport', '备份数据库', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1942', 'admin', '1', 'Admin/Tools/dataImport', '还原数据库', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1943', 'admin', '1', 'Admin/User/admin', '管理员管理', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1944', 'admin', '1', 'Admin/Trade/log', '成交记录', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1945', 'admin', '1', 'Admin/Issue/edit', '认购编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1946', 'admin', '1', 'Admin/Issue/status', '认购修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1947', 'admin', '1', 'Admin/Config/moble', '短信配置', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1948', 'admin', '1', 'Admin/Invit/config', '推广配置', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1949', 'admin', '1', 'Admin/App/vip_config_list', 'APP等级', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1950', 'admin', '1', 'Admin/Link/edit', '编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1951', 'admin', '1', 'Admin/Link/status', '修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1952', 'admin', '1', 'Admin/Index/coin', '币种统计', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1953', 'admin', '1', 'Admin/Shop/config', '商城配置', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1954', 'admin', '1', 'Admin/Money/log', '理财日志', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1955', 'admin', '1', 'Admin/Index/market', '市场统计', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1956', 'admin', '1', 'Admin/Chat/edit', '编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1957', 'admin', '1', 'Admin/Chat/status', '修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1958', 'admin', '1', 'Admin/Article/adver', '广告管理', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1959', 'admin', '1', 'Admin/Trade/chat', '交易聊天', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1960', 'admin', '1', 'Admin/Finance/myczType', '人民币充值方式', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1961', 'admin', '1', 'Admin/Usercoin/edit', '财产修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1962', 'admin', '1', 'Admin/Finance/mytxExcel', '导出选中', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1963', 'admin', '1', 'Admin/User/auth', '权限列表', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1964', 'admin', '1', 'Admin/Mycz/status', '修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1965', 'admin', '1', 'Admin/Mycztype/status', '状态修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1966', 'admin', '1', 'Admin/Config/contact', '客服配置', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1967', 'admin', '1', 'Admin/App/adsblock_list', 'APP广告板块', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1968', 'admin', '1', 'Admin/Tools/queue', '服务器队列', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1969', 'admin', '1', 'Admin/Tools/qianbao', '钱包检查', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1970', 'admin', '1', 'Admin/Shop/type', '商品类型', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1971', 'admin', '1', 'Admin/Fenhong/index', '分红管理', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1972', 'admin', '1', 'Admin/Huafei/type', '充值金额', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1973', 'admin', '1', 'Admin/Money/fee', '理财明细', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1974', 'admin', '1', 'Admin/Article/link', '友情链接', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1975', 'admin', '1', 'Admin/User/log', '登陆日志', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1976', 'admin', '1', 'Admin/Finance/mytx', '人民币提现', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1977', 'admin', '1', 'Admin/Finance/mytxChuli', '正在处理', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1978', 'admin', '1', 'Admin/Config/bank', '银行配置', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1979', 'admin', '1', 'Admin/Config/bank_edit', '编辑', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1980', 'admin', '1', 'Admin/Coin/edit', '编辑', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1981', 'admin', '1', 'Admin/Coin/status', '状态修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1982', 'admin', '1', 'Admin/Market/edit', '编辑市场', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1983', 'admin', '1', 'Admin/Config/market_add', '状态修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1984', 'admin', '1', 'Admin/Tools/invoke', '其他模块调用', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1985', 'admin', '1', 'Admin/Tools/optimize', '优化表', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1986', 'admin', '1', 'Admin/Tools/repair', '修复表', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1987', 'admin', '1', 'Admin/Tools/del', '删除备份文件', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1988', 'admin', '1', 'Admin/Tools/export', '备份数据库', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1989', 'admin', '1', 'Admin/Tools/import', '还原数据库', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1990', 'admin', '1', 'Admin/Tools/excel', '导出数据库', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1991', 'admin', '1', 'Admin/Tools/exportExcel', '导出Excel', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1992', 'admin', '1', 'Admin/Tools/importExecl', '导入Excel', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1993', 'admin', '1', 'Admin/Config/coin', '币种配置', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1994', 'admin', '1', 'Admin/User/detail', '用户详情', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1995', 'admin', '1', 'Admin/App/ads_user', 'APP广告用户', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1996', 'admin', '1', 'Admin/Cloud/theme', '主题模板', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1997', 'admin', '1', 'Admin/Shop/coin', '付款方式', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1998', 'admin', '1', 'Admin/Huafei/coin', '付款方式', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('1999', 'admin', '1', 'Admin/Trade/comment', '币种评论', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2000', 'admin', '1', 'Admin/User/qianbao', '用户钱包', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2001', 'admin', '1', 'Admin/Trade/market', '交易市场', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2002', 'admin', '1', 'Admin/Finance/mytxConfig', '人民币提现配置', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2003', 'admin', '1', 'Admin/Finance/mytxChexiao', '撤销提现', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2004', 'admin', '1', 'Admin/Mytx/status', '状态修改', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2005', 'admin', '1', 'Admin/Mytx/excel', '取消', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2006', 'admin', '1', 'Admin/Mytx/exportExcel', '导入excel', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2007', 'admin', '1', 'Admin/Menu/index', '菜单管理', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2008', 'admin', '1', 'Admin/Menu/sort', '排序', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2009', 'admin', '1', 'Admin/Menu/add', '添加', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2010', 'admin', '1', 'Admin/Menu/edit', '编辑', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2011', 'admin', '1', 'Admin/Cloud/kefu', '客服代码', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2012', 'admin', '1', 'Admin/Menu/del', '删除', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2013', 'admin', '1', 'Admin/Cloud/kefuUp', '使用', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2014', 'admin', '1', 'Admin/Menu/toogleHide', '是否隐藏', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2015', 'admin', '1', 'Admin/Menu/toogleDev', '是否开发', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2016', 'admin', '1', 'Admin/Menu/importFile', '导入文件', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2017', 'admin', '1', 'Admin/Menu/import', '导入', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2018', 'admin', '1', 'Admin/Config/text', '提示文字', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2019', 'admin', '1', 'Admin/Shop/log', '购物记录', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2020', 'admin', '1', 'Admin/Fenhong/log', '分红记录', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2021', 'admin', '1', 'Admin/User/bank', '提现地址', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2022', 'admin', '1', 'Admin/Trade/invit', '交易推荐', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2023', 'admin', '1', 'Admin/Finance/myzr', '虚拟币转入', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2024', 'admin', '1', 'Admin/Finance/mytxQueren', '确认提现', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2025', 'admin', '1', 'Admin/Finance/myzcQueren', '确认转出', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2026', 'admin', '1', 'Admin/Config/qita', '其他配置', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2027', 'admin', '1', 'Admin/Shop/goods', '收货地址', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2028', 'admin', '1', 'Admin/User/coin', '用户财产', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2029', 'admin', '1', 'Admin/Finance/myzc', '虚拟币转出', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2030', 'admin', '1', 'Admin/Verify/code', '图形验证码', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2031', 'admin', '1', 'Admin/Verify/mobile', '手机验证码', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2032', 'admin', '1', 'Admin/Verify/email', '邮件验证码', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2033', 'admin', '1', 'Admin/Config/daohang', '导航配置', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2034', 'admin', '1', 'Admin/User/goods', '联系地址', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2035', 'admin', '1', 'Admin/User/myzc_qr', '确认转出', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2036', 'admin', '1', 'Admin/Article/status', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2037', 'admin', '1', 'Admin/Finance/myczStatus', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2038', 'admin', '1', 'Admin/Finance/myczQueren', '确认到账', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2039', 'admin', '1', 'Admin/Article/typeStatus', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2040', 'admin', '1', 'Admin/Article/linkStatus', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2041', 'admin', '1', 'Admin/Article/adverStatus', '修改状态', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2042', 'admin', '1', 'Admin/Article/adverImage', '上传图片', '-1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2043', 'admin', '1', 'Admin/User/award', '中奖管理', '1', '');
INSERT INTO `ecshecom_auth_rule` VALUES ('2044', 'admin', '1', 'Admin/App/ads_list/block_id/1', 'WAP广告板块', '1', '');

-- ----------------------------
-- Table structure for ecshecom_bazaar
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_bazaar`;
CREATE TABLE `ecshecom_bazaar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `deal` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='集市交易表';

-- ----------------------------
-- Records of ecshecom_bazaar
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_bazaar_config
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_bazaar_config`;
CREATE TABLE `ecshecom_bazaar_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `market` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '市场名称',
  `price_min` decimal(20,8) unsigned NOT NULL COMMENT '最小交易价格',
  `price_max` decimal(20,8) unsigned NOT NULL COMMENT '最大交易价格',
  `num_mix` decimal(20,8) unsigned NOT NULL COMMENT '最小交易数量',
  `num_max` decimal(20,8) unsigned NOT NULL COMMENT '最大交易数量',
  `invit_coin` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '上家赠送币种',
  `invit_1` decimal(20,8) unsigned NOT NULL COMMENT '一代赠送比例',
  `invit_2` decimal(20,8) unsigned NOT NULL COMMENT '二代赠送比例',
  `invit_3` decimal(20,8) unsigned NOT NULL COMMENT '三代赠送比例',
  `fee` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '手续费',
  `default` tinyint(2) unsigned NOT NULL COMMENT '默认',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(2) unsigned NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `coinname` (`market`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ecshecom_bazaar_config
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_bazaar_invit
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_bazaar_invit`;
CREATE TABLE `ecshecom_bazaar_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `invit` int(11) unsigned NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ecshecom_bazaar_invit
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_bazaar_log
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_bazaar_log`;
CREATE TABLE `ecshecom_bazaar_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `peerid` int(11) unsigned NOT NULL,
  `coin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `peerid` (`peerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='集市交易记录表';

-- ----------------------------
-- Records of ecshecom_bazaar_log
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_category
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_category`;
CREATE TABLE `ecshecom_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(30) NOT NULL COMMENT '标志',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `list_row` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '列表每页行数',
  `meta_title` varchar(50) NOT NULL DEFAULT '' COMMENT 'SEO的网页标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template_index` varchar(100) NOT NULL COMMENT '频道页模板',
  `template_lists` varchar(100) NOT NULL COMMENT '列表页模板',
  `template_detail` varchar(100) NOT NULL COMMENT '详情页模板',
  `template_edit` varchar(100) NOT NULL COMMENT '编辑页模板',
  `model` varchar(100) NOT NULL DEFAULT '' COMMENT '关联模型',
  `type` varchar(100) NOT NULL DEFAULT '' COMMENT '允许发布的内容类型',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外链',
  `allow_publish` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发布内容',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可见性',
  `reply` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许回复',
  `check` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '发布的文章是否需要审核',
  `reply_model` varchar(100) NOT NULL DEFAULT '',
  `extend` text NOT NULL COMMENT '扩展设置',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `icon` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类图标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';

-- ----------------------------
-- Records of ecshecom_category
-- ----------------------------
INSERT INTO `ecshecom_category` VALUES ('1', 'blog', '博客', '0', '0', '10', '', '', '', '', '', '', '', '2', '2,1', '0', '0', '1', '0', '0', '1', '', '1379474947', '1382701539', '1', '0');
INSERT INTO `ecshecom_category` VALUES ('2', 'default_blog', '默认分类', '1', '1', '10', '', '', '', '', '', '', '', '2', '2,1,3', '0', '1', '1', '0', '1', '1', '', '1379475028', '1386839751', '1', '31');

-- ----------------------------
-- Table structure for ecshecom_chat
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_chat`;
CREATE TABLE `ecshecom_chat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文字聊天表';

-- ----------------------------
-- Records of ecshecom_chat
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_coin
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_coin`;
CREATE TABLE `ecshecom_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `fee_bili` varchar(50) NOT NULL,
  `endtime` int(11) unsigned NOT NULL COMMENT '',
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) unsigned NOT NULL,
  `fee_meitian` varchar(200) NOT NULL COMMENT '每天限制',
  `dj_zj` varchar(200) NOT NULL,
  `dj_dk` varchar(200) NOT NULL,
  `dj_yh` varchar(200) NOT NULL,
  `dj_mm` varchar(200) NOT NULL,
  `zr_zs` varchar(50) NOT NULL,
  `zr_jz` varchar(50) NOT NULL,
  `zr_dz` varchar(50) NOT NULL,
  `zr_sm` varchar(50) NOT NULL,
  `zc_sm` varchar(50) NOT NULL,
  `zc_fee` varchar(50) NOT NULL,
  `zc_user` varchar(50) NOT NULL,
  `zc_min` varchar(50) NOT NULL,
  `zc_max` varchar(50) NOT NULL,
  `zc_jz` varchar(50) NOT NULL,
  `zc_zd` varchar(50) NOT NULL,
  `js_yw` varchar(50) NOT NULL,
  `js_sm` text NOT NULL,
  `js_qb` varchar(50) NOT NULL,
  `js_ym` varchar(50) NOT NULL,
  `js_gw` varchar(50) NOT NULL,
  `js_lt` varchar(50) NOT NULL,
  `js_wk` varchar(50) NOT NULL,
  `cs_yf` varchar(50) NOT NULL,
  `cs_sf` varchar(50) NOT NULL,
  `cs_fb` varchar(50) NOT NULL,
  `cs_qk` varchar(50) NOT NULL,
  `cs_zl` varchar(50) NOT NULL,
  `cs_cl` varchar(50) NOT NULL,
  `cs_zm` varchar(50) NOT NULL,
  `cs_nd` varchar(50) NOT NULL,
  `cs_jl` varchar(50) NOT NULL,
  `cs_ts` varchar(50) NOT NULL,
  `cs_bz` varchar(50) NOT NULL,
  `tp_zs` varchar(50) NOT NULL,
  `tp_js` varchar(50) NOT NULL,
  `tp_yy` varchar(50) NOT NULL,
  `tp_qj` varchar(50) NOT NULL,
  `qq3479015851_coinaddress` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='币种配置表';

-- ----------------------------
-- Records of ecshecom_coin
-- ----------------------------
INSERT INTO `ecshecom_coin` VALUES ('1', 'cny', 'rmb', '人民币', 'cny.png', '0', '', '0', '0', '0', '', '182.254.134.191', '0', '0', '0', '0', '1', '0', '0', '0', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_coin` VALUES ('7', 'ltc', 'custom', '莱特币', '59a2ff929802b.png', '0', '0', '0', '0', '1', '', '142.4.124.150', '80', 'admin', '133456', '0', '1', '3', '', '', '0.5', '', '0', '1000', '1', '0.00001', 'Litecoin', '<span style=\"color:#55666B;font-family:\"font-size:14px;background-color:#FBFBFB;\">Litecoin受到了比特币(BTC)的启发，并且在技术上具有相同的实现原理，莱特币的创造和转让基于一种开源的加密协议，不受到任何中央机构的管理。莱特币旨在改进比特币，与其相比，莱特币具有三种显著差异。第一，莱特币网络每2.5分钟（而不是10分钟）就可以处理一个块，因此可以提供更快的交易确认。第二，网络预期产出8400万个莱特币，是比特币网络发行货币量的四倍之多。第三，在其工作量证明算法中使用了由Colin Percival首次提出的scrypt加密算法。</span>', 'https://litecoin.org/', '', 'http://litecoin.org/', 'https://litecointalk.io/', 'http://qukuai.com/ltc', ' Charls Lee', 'Scrypt', '2011-11-09', ' 2.5分钟', ' 8400 万,减半时间4年', '', 'pow', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_coin` VALUES ('6', 'btc', 'custom', '比特币', '59a2fd62f0e5f.png', '0', '0', '0', '0', '1', '', '142.4.124.150', '80', 'admin', '133456', '0', '1', '3', '', '', '0.5', '', '0', '100', '1', '0.00001', 'Bitcoin', '<span style=\"color:#55666B;font-family:\" font-size:14px;background-color:#fbfbfb;\"=\"\"> 由中本聪在2009年提出，据其思路设计发布的开源软件以及建构其上的P2P网络。比特币依据特定算法，通过大量的计算产生，不依靠特定货币机构发行，其使用整个P2P网络中众多节点构成的分布式数据库来确认并记录所有的交易行为，并使用密码学设计确保货币流通各个环节安全性，可确保无法通过大量制造比特币来人为操控币值。基于密码学的设计可以使比特币只能被真实的拥有者转移或支付及兑现。同样确保了货币所有权与流通交易的匿名性。比特币总数有限，其总数量将被限制在2100万个。</span>', 'https://bitcoin.org/en/download', '', 'http://bitcoin.org/en/', 'https://bitcointalk.org/', 'http://qukuai.com/', 'Satoshi Nakamot', ' SHA-256', '2009-01-09', '10分钟', ' 2100万', '', 'pow', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_coin` VALUES ('14', 'bcc', 'custom', 'BCC', '59e7fb4e26f8b.jpg', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '1', '1', '', '', '0', '', '0', '10000', '1', '10', 'Bitcoin Cash', '<span style=\"color:#55666B;font-family:&quot;font-size:14px;background-color:#FBFBFB;\">BCC是根据Bitcoin ABC方案产生的区块链资产，Bitcoin ABC方案为保持协议稳定简单，去除了Segwit功能，支持将区块大小提升至8M，是链上扩容的技术路线。Bitcoin ABC代码基于比特币协议的稳定版本进行了改进，其认为不包含Segwit将具有更大的稳定性、安全性、鲁棒性，是现行比特币协议和比特币系统的备份，BCC将从2017年8月1日20:20开始挖矿。</span>', 'https://www.bitcoincash.org/', 'https://www.bitcoincash.org/', 'https://www.bitcoincash.org/', 'https://www.bitcoincash.org/', 'https://www.bitcoincash.org/', ' BCC团队', 'SHA-256', '2017-08-01', ' 10分钟', ' 2100万，减半时间4年', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_coin` VALUES ('15', 'xem', 'custom', '新经币', '59e7fddfce9fb.png', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '1', '1', '', '', '0', '', '0', '10000', '1', '10', 'XEM', '<span style=\"color:#55666B;font-family:&quot;font-size:14px;background-color:#FBFBFB;\">XEM新经币是NEM，新经济运动组织发行的货币的代号。NEM的创立目标是创建一套全新的数字货币及其生态系统。相较于BTC,NXT. NEM有着诸多有别与其他数字货币特性，NEM的核心是POI算法，一种基于评估个体贡献在群体中的经济活跃度的共识算法。NEM的核心代码从0构建，各款软件开发坚持以测试驱动的开发这一严谨的软件工程实践方式进行，近期的成果是马赛克与移动钱包。发行一年多，NEM核心代码的继续开发和生态链的建设仍有条不紊进行。</span>', 'http://bob.nem.ninja/', '', 'http://www.nem.io/', 'https://forum.nem.io/', '', ' NEM团队', 'POI算法', '2015-04-01', ' 1分钟', '90亿', '', 'Pos', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_coin` VALUES ('13', 'eth', 'custom', '以太坊', '59b11f280cd49.png', '0', '0', '0', '0', '0', '', '', '', 'admin', '133456', '0', '1', '1', '', '', '0', '', '0', '10000', '1', '0.00001', 'Ethereum', '<span style=\"color:#55666B;font-family:\"font-size:14px;background-color:#FBFBFB;\">Ethereum（以太坊）是一个平台和一种编程语言，使开发人员能够建立和发布下一代分布式应用。 Ethereum可以用来编程，分散，担保和交易任何事物：投票，域名，金融交易所，众筹，公司管理， 合同和大部分的协议，知识产权，还有得益于硬件集成的智能资产。</span>', 'https://www.ethereum.org/cli', 'https://github.com/ethereum/', 'https://www.ethereum.org/', 'https://forum.ethereum.org/', 'https://www.ethereum.org/', ' 以太坊团队', 'Ethash', '2014-07-24', ' 18秒', ' 7200万+1872万/年', '', 'PoS', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_coin` VALUES ('12', 'dog', 'custom', '狗狗币', '59b11edd54c7a.jpg', '0', '0', '0', '0', '1', '', '', '', 'admin', '133456', '0', '1', '1', '', '', '0.5', '', '0', '1000000', '1', '0.00001', 'Dogecoin', '<span style=\"color:#55666B;font-family:\"font-size:14px;background-color:#FBFBFB;\">狗币(Dogecoin)诞生于2013年12月12日，基于Scrypt算法。狗币系统上线后，由于reddit的助力（有数据表明在reddit狗狗币社区关注度超过7.5万，远远的超过了LTC），流量呈现爆发式发展，不过两周的时间，狗币已经铺开了专门的博客、论坛。狗币有一个好的文化背景——小费文化。Dogecoin 上线仅一周的时间，便成为第二大的小费货币。好多人参与狗币交易，并不是为了投机才参与其中，而是把它作为了一种表达分享和感恩的方式。</span>', 'http://dogecoin.com/', 'https://github.com/dogecoin/dogecoin', 'http://dogecoin.com/', 'https://bitcointalk.org/index.php?topic=361813.0', 'http://dogecoin.com/', ' Jackson Palmer', ' Scrypt', '2013-12-07', ' 60秒/块', '100000000000', '', 'PoW', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_coin` VALUES ('16', 'nxt', 'custom', '未来币', '59e801340872e.png', '0', '0', '0', '0', '1', '', '', '', 'admin', '133456', '0', '1', '1', '', '', '0.5', '', '10', '100000', '1', '0.00001', ' Nextcoin', '<span style=\"color:#55666B;font-family:\"font-size:14px;background-color:#FBFBFB;\">未来币（译名：奈克斯特币）被认为是第二代密码币，基于全新的代码编写，改进了比特币的很多特性，如以全新的100%股权证明（POS）设计代替工作量证明（POW），避免了一代密码币的很多缺陷，如消耗资源，易受攻击等。发行于社区公开认购。1分钟确认，10亿总量</span>', 'http://nxt.org/client-download/', '', 'http://nxt.org/', 'https://nxt.org/community/', '', 'NXT社区', 'Transparent Forging', '2013-11-24', '60秒', '10亿', '', 'PoS', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_coin` VALUES ('19', 'ardr', 'custom', '阿朵', '59f72f27c82c7.png', '0', '0', '0', '0', '1', '', '', '', 'admin', '133456', '0', '1', '1', '', '', '0.5', '', '0', '10000', '1', '0.00001', 'ardr', '<span style=\"color:#55666B;font-family:\"font-size:14px;background-color:#FBFBFB;\">阿朵，ardr，是未来币2.0系统所发行的虚拟数字资产。未来币团队在2016年5月发布阿朵计划，计划于2017年发布全新特性的未来币区块链系统。阿朵ARDR是由老未来币1比1快照产生，总量10亿，现有的阿朵ARDR是2016年7-10月由未来币快照产生的。当前未来币2.0已经发布了测试版。</span>', 'https://www.ardorplatform.org/', '', 'https://www.ardorplatform.org/', '', 'https://www.ardorplatform.org/', ' 未来币研发团队', '', ' 2017-01-01', ' 60秒', '10亿', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_coin` VALUES ('18', 'dash', 'custom', '达世币', '59f1f486ab633.png', '0', '0', '0', '0', '1', '', '', '', 'admin', '133456', '0', '1', '1', '', '', '0.5', '', '0', '10000', '1', '0.00001', 'Digital Cash', '<span style=\"color:#55666B;font-family:\"font-size:14px;background-color:#FBFBFB;\">\"Dash达世币是一种为匿名而生的币。它在比特币，阿侬币之外，开创了新的匿名方式。无预挖，基于11种加密算法（blake, bmw, groestl, jh, keccak, skein, luffa, cubehash, shavite, simd, echo）超级安全哈希运算，CPU挖矿（GPU挖矿软件也已发布）。它的区块奖励也和大多数山寨币不一样，它的区块奖励由公式自动确定 2222222/(((Difficulty+2600)/9)^2)。</span>', 'https://www.dash.org/downloads/', '', 'http://www.dash.org/', 'https://www.dash.org/forum/', 'https://explorer.dash.org/chain/Dash', 'eduffield', ' x11算法', '2014-01-18', '2.5分钟', '1890万', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_coin` VALUES ('20', 'qwe', 'custom', '去玩儿', '5a008cd10ad80.png', '0', '0', '0', '0', '1', '', '', '', 'admin', '133456', '0', '1', '1', '', '', '0.5', '', '0', '10000', '1', '1', 'qwe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_coin` VALUES ('21', 'jjb', 'custom', '吉吉币', '5a017a1872fa8.png', '0', '0', '0', '0', '1', '', '', '', 'admin', '133456', '0', '1', '1', '', '', '0', '', '0', '10000000', '1', '0.00000001', 'jijibi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for ecshecom_coin_comment
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_coin_comment`;
CREATE TABLE `ecshecom_coin_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `cjz` int(11) unsigned NOT NULL,
  `tzy` int(11) unsigned NOT NULL,
  `xcd` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_coin_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_coin_json
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_coin_json`;
CREATE TABLE `ecshecom_coin_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ecshecom_coin_json
-- ----------------------------
INSERT INTO `ecshecom_coin_json` VALUES ('4', 'bxb', '[20,0,null,null]', '', '0', '1497715199', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('3', 'bxb', '[20,0,null,null]', '', '0', '1497628799', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('5', 'bxb', '[20,0,null,null]', '', '0', '1497801599', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('6', 'bxb', '[20,0,null,null]', '', '0', '1497887999', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('7', 'abc', '[100019,0,null,null]', '', '0', '1503935999', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('8', 'btc', '[0,0,null,null]', '', '0', '1505404799', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('9', 'ltc', '[0,0,null,null]', '', '0', '1505404799', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('10', 'btc', '[0,0,null,null]', '', '0', '1505491199', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('11', 'btc', '[0,0,null,null]', '', '0', '1505577599', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('12', 'btc', '[0,0,null,null]', '', '0', '1505663999', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('13', 'btc', '[0,0,null,null]', '', '0', '1505750399', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('14', 'btc', '[0,0,null,null]', '', '0', '1505836799', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('15', 'btc', '[0,0,null,null]', '', '0', '1505923199', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('16', 'btc', '[0,0,null,null]', '', '0', '1506009599', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('17', 'btc', '[0,0,null,null]', '', '0', '1506095999', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('18', 'btc', '[0,0,null,null]', '', '0', '1506182399', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('19', 'btc', '[1,0,null,null]', '', '0', '1506268799', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('20', 'btc', '[120.9953489,0,null,null]', '', '0', '1506355199', '0', '0');
INSERT INTO `ecshecom_coin_json` VALUES ('21', 'btc', '[230.99525901,0,null,null]', '', '0', '1506441599', '0', '0');

-- ----------------------------
-- Table structure for ecshecom_config
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_config`;
CREATE TABLE `ecshecom_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `footer_logo` varchar(200) NOT NULL COMMENT ' ',
  `huafei_zidong` varchar(200) NOT NULL COMMENT '名称',
  `kefu` varchar(200) NOT NULL,
  `huafei_openid` varchar(200) NOT NULL COMMENT '名称',
  `huafei_appkey` varchar(200) NOT NULL COMMENT '名称',
  `index_lejimum` varchar(200) NOT NULL COMMENT '设置',
  `login_verify` varchar(200) NOT NULL COMMENT '设置',
  `fee_meitian` varchar(200) NOT NULL COMMENT '设置',
  `top_name` varchar(200) NOT NULL COMMENT '设置',
  `web_name` varchar(200) NOT NULL,
  `web_title` varchar(200) NOT NULL,
  `web_logo` varchar(200) NOT NULL,
  `web_llogo_small` varchar(200) NOT NULL,
  `web_keywords` text NOT NULL,
  `web_description` text NOT NULL,
  `web_close` text NOT NULL,
  `web_close_cause` text NOT NULL,
  `web_icp` text NOT NULL,
  `web_cnzz` text NOT NULL,
  `web_ren` text NOT NULL,
  `web_reg` text NOT NULL,
  `market_mr` text NOT NULL,
  `xnb_mr` text NOT NULL,
  `rmb_mr` text NOT NULL,
  `web_waring` text NOT NULL,
  `qq_502182299_issue_waring` text NOT NULL,
  `moble_type` text NOT NULL,
  `moble_url` text NOT NULL,
  `moble_user` text NOT NULL,
  `moble_pwd` text NOT NULL,
  `contact_moble` text NOT NULL,
  `contact_weibo` text NOT NULL,
  `contact_tqq` text NOT NULL,
  `contact_qq` text NOT NULL,
  `contact_qqun` text NOT NULL,
  `contact_weixin` text NOT NULL,
  `contact_weixin_img` text NOT NULL,
  `contact_app_img` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_alipay` text NOT NULL,
  `contact_alipay_img` text NOT NULL,
  `contact_bank` text NOT NULL,
  `user_truename` text NOT NULL,
  `user_moble` text NOT NULL,
  `user_alipay` text NOT NULL,
  `user_bank` text NOT NULL,
  `user_text_truename` text NOT NULL,
  `user_text_moble` text NOT NULL,
  `user_text_alipay` text NOT NULL,
  `user_text_bank` text NOT NULL,
  `user_text_log` text NOT NULL,
  `user_text_password` text NOT NULL,
  `user_text_paypassword` text NOT NULL,
  `mytx_min` text NOT NULL,
  `mytx_max` text NOT NULL,
  `mytx_bei` text NOT NULL,
  `mytx_coin` text NOT NULL,
  `mytx_fee` text NOT NULL,
  `trade_min` text NOT NULL,
  `trade_max` text NOT NULL,
  `trade_limit` text NOT NULL,
  `trade_text_log` text NOT NULL,
  `issue_ci` text NOT NULL,
  `issue_jian` text NOT NULL,
  `issue_min` text NOT NULL,
  `issue_max` text NOT NULL,
  `money_min` text NOT NULL,
  `money_max` text NOT NULL,
  `money_bei` text NOT NULL,
  `money_text_index` text NOT NULL,
  `money_text_log` text NOT NULL,
  `money_text_type` text NOT NULL,
  `invit_type` text NOT NULL,
  `invit_fee1` text NOT NULL,
  `invit_fee2` text NOT NULL,
  `invit_fee3` text NOT NULL,
  `invit_text_txt` text NOT NULL,
  `invit_text_log` text NOT NULL,
  `index_notice_1` text NOT NULL,
  `index_notice_11` text NOT NULL,
  `index_notice_2` text NOT NULL,
  `index_notice_22` text NOT NULL,
  `index_notice_3` text NOT NULL,
  `index_notice_33` text NOT NULL,
  `index_notice_4` text NOT NULL,
  `index_notice_44` text NOT NULL,
  `text_footer` text NOT NULL,
  `shop_text_index` text NOT NULL,
  `shop_text_log` text NOT NULL,
  `shop_text_addr` text NOT NULL,
  `shop_text_view` text NOT NULL,
  `huafei_text_index` text NOT NULL,
  `huafei_text_log` text NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `shop_coin` varchar(200) NOT NULL COMMENT '计算方式',
  `shop_logo` varchar(200) NOT NULL COMMENT '商城LOGO',
  `shop_login` varchar(200) NOT NULL COMMENT '是否要登陆',
  `index_html` varchar(50) DEFAULT NULL,
  `trade_hangqing` varchar(50) DEFAULT NULL,
  `trade_moshi` varchar(50) DEFAULT NULL,
  `reg_award` varchar(10) DEFAULT NULL,
  `reg_award_coin` varchar(50) DEFAULT NULL,
  `reg_award_num` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统配置表';

-- ----------------------------
-- Records of ecshecom_config
-- ----------------------------
INSERT INTO `ecshecom_config` VALUES ('1', '59a67e1d45054.gif', '1', 'c', '', '', '0', '0', '', '您好，欢迎来到 J8交易所 - 专业区块链数字资产交易平台', 'J8EX', 'J8交易所(J8EX.com) - 专业的区块链数字资产交易平台1', '59e8455e2a078.gif', '59a5444ed1ce5.gif', 'J8交易所/比特币/山寨币/虚拟货币/比特币交易/交易平台/数字货币', 'J8交易所是专业的数字货币交易网，数字资产交易平台，J8交易所专注数字货币分发和维持数字资产撮合数字虚拟货币交易为核心，构建安全便捷的数字货币交易平台.', '1', '升级中...', '', '', '100', '<div style=\"text-align:center;\">\r\n	<div style=\"text-align:left;\">\r\n		<span>国际版J8EX平台正式完成搬迁升级，即日起正式启用，更多资产陆续上线。</span><br />\r\n<span>1、币币交易 快速搬砖 金融风控 专业服务。</span><br />\r\n<span>2、支持多种主流虚拟币，可实现定制、快速上币。</span><br />\r\n<span>3、快速确认，半小时自动入账；手机绑定，提币更安全。</span><br />\r\n<span>4、免认证注册、低手续费，提现30分钟完成。</span><br />\r\n<span>5、搬砖专用交易所，打造中文版快速搬砖中转平台。 </span><br />\r\n<span>数字资产交易具有较高风险，请保持谨慎的心态，并在自担风险的前提下投资。</span><br />\r\n<span>J8EX团队</span><br />\r\n<span>2017年10月26日</span> <br />\r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span style=\"color:#337FE5;\"></span> \r\n	</div>\r\n</div>\r\n<p>\r\n	<span style=\"font-size:10px;color:#E56600;\"></span> \r\n</p>', 'ltc_btc', 'btc', 'cny', '<p>\r\n	国际版J8EX平台正式完成搬迁升级，即日起正式启用，更多资产陆续上线。<br />\r\n1、J8EX交易所：币币交易 快速搬砖 金融风控 专业服务。<br />\r\n2、技术支持多种主流虚拟币，可实现定制、快速上币服务。<br />\r\n3、充币快速确认，半小时自动入账；手机绑定，提币更安全。<br />\r\n4、免认证注册、低手续费，提现30分钟完成。<br />\r\n5、搬砖专用交易所，打造中文版快速搬砖中转平台。&nbsp;<br />\r\n数字资产交易具有较高风险，请保持谨慎的心态，并在自担风险的前提下投资。\r\n</p>', '新认购风险提示不投入超过风险承受能力的资金，不投资不了解的数字资产，不听信任何以海通网络名义推荐买币投资的宣传，坚决抵制传销、电信诈骗和洗钱套汇等违法行为。', '1', 'J8交易所', '335199335', 'qq502182299qaz', '我们的QQ客服', '不开放···', '', '1009066800', '1234567', '未上线···', '59a5205db9a74.gif', '59a5201163334.gif', '83839140@qq.com', '83839140@qq.com', '56f98e6d7245d.jpg', '中国银行|动说科技|0000 0000 0000 0000', '2', '2', '2', '2', '&lt;span&gt;&lt;span&gt;会员您好,务必正确填写好自己的真实姓名和真实身份证号码.&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;会员您好,务必用自己的手机号码进行手机认证,认证以后可以用来接收验证码.&lt;/span&gt;', '&lt;span&gt;会员您好,务必正确填写支付宝 &amp;nbsp;真实姓名（与实名认证姓名相同）和支付宝账号,后期提现唯一依据.&lt;/span&gt;', '&lt;span&gt;会员您好,&lt;/span&gt;&lt;span&gt;&lt;span&gt;务必正确填写银行卡信息 提现唯一依据.&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;自己以往操作和登录及登录地点的相关记录.&lt;/span&gt;', '&lt;span&gt;会员您好,修改登录密码以后请不要忘记.若不记得旧登录密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '&lt;span&gt;会员您好,修改交易密码以后请不要忘记.若不记得旧交易密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '100', '50000', '100', 'cny', '0.5', '1', '10000000', '10', '&lt;span&gt;&lt;span&gt;你委托买入或者卖出成功交易后的记录.&lt;/span&gt;&lt;/span&gt;', '5', '24', '1', '100000', '100', '100000', '100', '理财首页', '理财记录', '理财类型', '1', '5', '3', '2', '最低调的数字货币交易网站-J8交易所', '&lt;span&gt;&lt;span&gt;查看自己推广的好友,请点击&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;“+”&lt;/span&gt;&lt;span&gt;,同时正确引导好友实名认证以及买卖,赚取推广收益和交易手续费.&lt;/span&gt;&lt;/span&gt;', '系统可靠', '银行级用户数据加密、动态身份验证多级风险识别控制，保障交易安全', '系统可靠', '账户多层加密，分布式服务器离线存储，即时隔离备份数据，确保安全', '快捷方便', '充值即时、提现迅速，每秒万单的高性能交易引擎，保证一切快捷方便', '服务专业', '热忱的客服工作人员和24小时的技术团队随时为您的账户安全保驾护航', '&lt;p&gt;\r\n	&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;lt;a href=&quot;&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;&quot;&amp;gt;关于我们&amp;lt;/a&amp;gt;\r\n&lt;/p&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;联系我们&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;资质证明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;用户协议&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;法律声明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;p style=&quot;margin-top: 5px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\nCopyright &amp;copy; 2016&lt;br /&gt;\r\n&amp;lt;a href=&quot;/&quot;&amp;gt;{$C[\'web_name\']}交易平台 &amp;lt;/a&amp;gt;&lt;br /&gt;\r\nAll Rights Reserved.&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot;&amp;gt;{$C[\'web_icp\']}&amp;lt;/a&amp;gt;{$C[\'web_cnzz\']|htmlspecialchars_decode}&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;\r\n&amp;lt;p class=&quot;clear1&quot; id=&quot;ut646&quot; style=&quot;margin-top: 10px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://webscan.360.cn/index/checkwebsite/url/www.zuocoin.com&quot; target=&quot;_blank&quot;&amp;gt;&amp;lt;img border=&quot;0&quot; width=&quot;83&quot; height=&quot;31&quot; src=&quot;http://img.webscan.360.cn/status/pai/hash/a272bae5f02b1df25be2c1d9d0b251f7&quot;/&amp;gt;&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.szfw.org/&quot; target=&quot;_blank&quot; id=&quot;ut118&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_2.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot; target=&quot;_blank&quot; id=&quot;ut119&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_3.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.cyberpolice.cn/&quot; target=&quot;_blank&quot; id=&quot;ut120&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_4.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;', '', '', '', '', '', '', '1467383018', '0', '', '/Upload/shop/591d36d289371.png', '0', 'b', '1', '1', '0', 'cny', '10');

-- ----------------------------
-- Table structure for ecshecom_daohang
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_daohang`;
CREATE TABLE `ecshecom_daohang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `url` varchar(255) NOT NULL COMMENT 'url',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_daohang
-- ----------------------------
INSERT INTO `ecshecom_daohang` VALUES ('1', 'finance', '财务中心', 'Finance/index', '1', '0', '0', '1');
INSERT INTO `ecshecom_daohang` VALUES ('2', 'user', '安全中心', 'User/index', '2', '0', '0', '0');
INSERT INTO `ecshecom_daohang` VALUES ('3', 'Issue', '应用中心', 'Issue/index', '3', '0', '0', '0');
INSERT INTO `ecshecom_daohang` VALUES ('4', 'article', '官方公告', 'Article/index', '7', '0', '0', '1');
INSERT INTO `ecshecom_daohang` VALUES ('6', 'shop', '购物中心', 'Shop/index', '5', '0', '0', '0');
INSERT INTO `ecshecom_daohang` VALUES ('7', 'vote', '新币投票', 'Vote/index', '6', '0', '0', '0');
INSERT INTO `ecshecom_daohang` VALUES ('8', 'Issue', 'ICO众筹', 'Issue/index', '4', '1474183878', '0', '0');
INSERT INTO `ecshecom_daohang` VALUES ('9', '推广返佣', '推广返佣', 'promote/index.html', '4', '1480423054', '0', '-1');
INSERT INTO `ecshecom_daohang` VALUES ('10', 'article', '公告中心', 'Article/index', '0', '1480823236', '0', '-1');
INSERT INTO `ecshecom_daohang` VALUES ('11', 'THC夺宝岛', 'THC夺宝岛', 'Duobao\\index.html', '5', '1481470482', '0', '-1');
INSERT INTO `ecshecom_daohang` VALUES ('12', '欢乐抽奖', '欢乐抽奖', 'award/index.html', '5', '1482891983', '0', '-1');
INSERT INTO `ecshecom_daohang` VALUES ('13', 'dc', '下载中心', 'http://www.coin78.com/Article/type/id/15.html', '0', '1497597792', '0', '-1');
INSERT INTO `ecshecom_daohang` VALUES ('14', 'bc', '币兴股钱包下载', 'bxgcoin.exe ', '8', '1497598579', '0', '-1');

-- ----------------------------
-- Table structure for ecshecom_fenhong
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_fenhong`;
CREATE TABLE `ecshecom_fenhong` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_fenhong
-- ----------------------------
INSERT INTO `ecshecom_fenhong` VALUES ('1', '1111', 'glc', 'glc', '1.00000000', '1', '1500307200', '1500825600', '0');

-- ----------------------------
-- Table structure for ecshecom_fenhong_log
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_fenhong_log`;
CREATE TABLE `ecshecom_fenhong_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `fenzong` varchar(50) NOT NULL,
  `fenchi` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_fenhong_log
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_finance
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_finance`;
CREATE TABLE `ecshecom_finance` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  `coinname` varchar(50) NOT NULL COMMENT '币种',
  `num_a` decimal(20,8) unsigned NOT NULL COMMENT '之前正常',
  `num_b` decimal(20,8) unsigned NOT NULL COMMENT '之前冻结',
  `num` decimal(20,8) unsigned NOT NULL COMMENT '之前总计',
  `fee` decimal(20,8) unsigned NOT NULL COMMENT '操作数量',
  `type` varchar(50) NOT NULL COMMENT '操作类型',
  `name` varchar(50) NOT NULL COMMENT '操作名称',
  `nameid` int(11) NOT NULL COMMENT '操作详细',
  `remark` varchar(50) NOT NULL COMMENT '操作备注',
  `mum_a` decimal(20,8) unsigned NOT NULL COMMENT '剩余正常',
  `mum_b` decimal(20,8) unsigned NOT NULL COMMENT '剩余冻结',
  `mum` decimal(20,8) unsigned NOT NULL COMMENT '剩余总计',
  `move` varchar(50) NOT NULL COMMENT '附加',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `status` tinyint(4) unsigned NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COMMENT='财务记录表';

-- ----------------------------
-- Records of ecshecom_finance
-- ----------------------------
INSERT INTO `ecshecom_finance` VALUES ('1', '1', 'cny', '0.00000000', '0.00000000', '0.00000000', '100.21000000', '1', 'mycz', '1', '人民币充值-人工到账', '100.21000000', '0.00000000', '100.21000000', '09a9378a980659138c125656b19da473', '1497342274', '1');
INSERT INTO `ecshecom_finance` VALUES ('2', '1', 'cny', '100.21000000', '0.00000000', '100.21000000', '0.01001000', '2', 'trade', '5', '交易中心-委托买入-市场bxb_cny', '100.19999000', '0.01001000', '100.21000000', '2781919973e00755b1550b9236f95f00', '1497342306', '1');
INSERT INTO `ecshecom_finance` VALUES ('3', '1', 'cny', '100.19999000', '0.01001000', '100.21000000', '0.01001000', '2', 'tradelog', '1', '交易中心-成功买入-市场bxb_cny', '100.19999000', '0.00000000', '100.19999000', '87339d82428fccff87ff9e736aeaef08', '1497342306', '1');
INSERT INTO `ecshecom_finance` VALUES ('4', '1', 'cny', '100.19999000', '0.00000000', '100.19999000', '0.01001000', '1', 'tradelog', '1', '交易中心-成功卖出-市场bxb_cny', '100.20998000', '0.00000000', '100.20998000', '4d117b01924567cc8419463db10808f4', '1497342306', '1');
INSERT INTO `ecshecom_finance` VALUES ('5', '1', 'cny', '100.20998000', '0.00000000', '100.20998000', '0.02002000', '2', 'trade', '6', '交易中心-委托买入-市场bxb_cny', '100.18996000', '0.02002000', '100.20998000', '6d6536884a43ffc4f82c59de4d7feae8', '1497669942', '1');
INSERT INTO `ecshecom_finance` VALUES ('6', '1', 'cny', '100.18996000', '0.02002000', '100.20998000', '0.00010010', '2', 'tradelog', '2', '交易中心-成功买入-市场bxb_cny', '100.18996000', '0.01991990', '100.20987990', '03ff7fb58a26f14c43f199422b9199cb', '1497669942', '1');
INSERT INTO `ecshecom_finance` VALUES ('7', '2', 'cny', '0.00000000', '0.00000000', '0.00000000', '0.00010010', '1', 'tradelog', '2', '交易中心-成功卖出-市场bxb_cny', '0.00009990', '0.00000000', '0.00009990', 'c233f00972364ac154c12bba722d0105', '1497669942', '0');
INSERT INTO `ecshecom_finance` VALUES ('8', '1', 'cny', '100.19006010', '0.01981980', '100.20987990', '0.00990990', '2', 'tradelog', '3', '交易中心-成功买入-市场bxb_cny', '100.19006010', '0.00990990', '100.19997000', 'f2f815187bb995d70f3e46266f36a6f5', '1497669942', '1');
INSERT INTO `ecshecom_finance` VALUES ('9', '1', 'cny', '100.19006010', '0.00990990', '100.19997000', '0.00990990', '1', 'tradelog', '3', '交易中心-成功卖出-市场bxb_cny', '100.19995020', '0.00990990', '100.20986010', '9523fcfba1459cd9575754e612701285', '1497669942', '1');
INSERT INTO `ecshecom_finance` VALUES ('10', '1', 'cny', '100.20986010', '0.00000000', '100.20986010', '0.02002000', '2', 'trade', '7', '交易中心-委托买入-市场bxb_cny', '100.18984010', '0.02002000', '100.20986010', 'ab8fa969485f5d0c723d7dfe1b20fa21', '1497669981', '1');
INSERT INTO `ecshecom_finance` VALUES ('11', '1', 'cny', '100.18984010', '0.02002000', '100.20986010', '0.00010010', '2', 'tradelog', '4', '交易中心-成功买入-市场bxb_cny', '100.18984010', '0.01991990', '100.20976000', 'de15fcfa689e242ee191f0639431bace', '1497669981', '1');
INSERT INTO `ecshecom_finance` VALUES ('12', '1', 'cny', '100.18984010', '0.01991990', '100.20976000', '0.00010010', '1', 'tradelog', '4', '交易中心-成功卖出-市场bxb_cny', '100.18994000', '0.01991990', '100.20985990', 'dd3783f8252f4ed5d5f0366de0a8a610', '1497669981', '1');
INSERT INTO `ecshecom_finance` VALUES ('13', '1', 'cny', '100.19004010', '0.01981980', '100.20985990', '0.02002000', '2', 'trade', '8', '交易中心-委托买入-市场bxb_cny', '100.17002010', '0.03983980', '100.20985990', 'c4b211f361b735f74b0430189b8d44f8', '1497670010', '1');
INSERT INTO `ecshecom_finance` VALUES ('14', '1', 'cny', '100.17002010', '0.03983980', '100.20985990', '0.01980198', '2', 'tradelog', '5', '交易中心-成功买入-市场bxb_cny', '100.17002010', '0.02003782', '100.19005792', '812417fe4034259dda7713fc3a603790', '1498715568', '1');
INSERT INTO `ecshecom_finance` VALUES ('15', '15', 'cny', '10000.00000000', '0.00000000', '10000.00000000', '0.01980198', '1', 'tradelog', '5', '交易中心-成功卖出-市场bxb_cny', '10000.01979802', '0.00000000', '10000.01979802', '76fc2c35fb844fb9cc74df2ac00f26bc', '1498715568', '0');
INSERT INTO `ecshecom_finance` VALUES ('16', '1', 'cny', '100.17002010', '0.02003782', '100.19005792', '0.02000200', '2', 'tradelog', '6', '交易中心-成功买入-市场bxb_cny', '100.17002010', '0.00003582', '100.17005592', '4c951c57606cf4760ef497ec6cd35908', '1498715568', '1');
INSERT INTO `ecshecom_finance` VALUES ('17', '15', 'cny', '10000.01979802', '0.00000000', '10000.01979802', '0.02000200', '1', 'tradelog', '6', '交易中心-成功卖出-市场bxb_cny', '10000.03979602', '0.00000000', '10000.03979602', 'e12a4feae98ee8db150f9d8305c6e3b9', '1498715568', '0');
INSERT INTO `ecshecom_finance` VALUES ('18', '15', 'cny', '10000.03979602', '0.00000000', '10000.03979602', '0.93509350', '2', 'trade', '10', '交易中心-委托买入-市场bxb_cny', '9999.10470252', '0.93509350', '10000.03979602', '32e1e0da9179682a79e1b1d3c8fad21c', '1498715586', '1');
INSERT INTO `ecshecom_finance` VALUES ('19', '15', 'cny', '9999.10470252', '0.93509350', '10000.03979602', '0.93509350', '2', 'tradelog', '7', '交易中心-成功买入-市场bxb_cny', '9999.10470252', '0.00000000', '9999.10470252', 'ceb597c8b90c5e372f4f543f2a8fa49e', '1498715586', '1');
INSERT INTO `ecshecom_finance` VALUES ('20', '15', 'cny', '9999.10470252', '0.00000000', '9999.10470252', '0.93509350', '1', 'tradelog', '7', '交易中心-成功卖出-市场bxb_cny', '10000.03960902', '0.00000000', '10000.03960902', '7b15f96c12e38f08d2858268289c96f0', '1498715586', '1');
INSERT INTO `ecshecom_finance` VALUES ('21', '15', 'cny', '10000.03960902', '0.00000000', '10000.03960902', '1.00100000', '2', 'trade', '13', '交易中心-委托买入-市场abc_cny', '9999.03860902', '1.00100000', '10000.03960902', '212a0b21c14ef93ff47a46f0c368191a', '1498795002', '1');
INSERT INTO `ecshecom_finance` VALUES ('22', '15', 'cny', '9999.03860902', '1.00100000', '10000.03960902', '1.00100000', '2', 'tradelog', '8', '交易中心-成功买入-市场abc_cny', '9999.03860902', '0.00000000', '9999.03860902', 'ab50eb56478e6f289b9d702f72ca1f61', '1498795002', '1');
INSERT INTO `ecshecom_finance` VALUES ('23', '15', 'cny', '9999.03860902', '0.00000000', '9999.03860902', '1.00100000', '1', 'tradelog', '8', '交易中心-成功卖出-市场abc_cny', '10000.03760902', '0.00000000', '10000.03760902', '99d2782ea8b4621552f517fb347c8c9b', '1498795002', '1');
INSERT INTO `ecshecom_finance` VALUES ('24', '15', 'cny', '10000.03760902', '0.00000000', '10000.03760902', '0.90090000', '2', 'trade', '14', '交易中心-委托买入-市场abc_cny', '9999.13670902', '0.90090000', '10000.03760902', '1ab67e7479b79c8de2f4ee21e218df28', '1498795031', '1');
INSERT INTO `ecshecom_finance` VALUES ('25', '15', 'cny', '9999.13670902', '0.90090000', '10000.03760902', '0.11011000', '2', 'trade', '15', '交易中心-委托买入-市场abc_cny', '9999.02659902', '1.01101000', '10000.03760902', 'dcdaebdc90618d85cad3343550caef3c', '1498795052', '1');
INSERT INTO `ecshecom_finance` VALUES ('26', '15', 'cny', '9999.02659902', '1.01101000', '10000.03760902', '0.11011000', '2', 'tradelog', '9', '交易中心-成功买入-市场abc_cny', '9999.02659902', '0.90090000', '9999.92749902', '46387256e87bfb193b4dd17c1455c112', '1498795052', '1');
INSERT INTO `ecshecom_finance` VALUES ('27', '15', 'cny', '9999.02659902', '0.90090000', '9999.92749902', '0.11011000', '1', 'tradelog', '9', '交易中心-成功卖出-市场abc_cny', '9999.13648902', '0.90090000', '10000.03738902', '9bd6c1c6bf99b8d6d3bdcaf9aae74000', '1498795052', '1');
INSERT INTO `ecshecom_finance` VALUES ('28', '15', 'cny', '9999.13648902', '0.90090000', '10000.03738902', '0.09009000', '2', 'tradelog', '10', '交易中心-成功买入-市场abc_cny', '9999.13648902', '0.81081000', '9999.94729902', '993bf2aabbf871e6898b8566105af933', '1498795253', '1');
INSERT INTO `ecshecom_finance` VALUES ('29', '15', 'cny', '9999.13648902', '0.81081000', '9999.94729902', '0.09009000', '1', 'tradelog', '10', '交易中心-成功卖出-市场abc_cny', '9999.22639902', '0.81081000', '10000.03720902', 'ff5a3570b32a7421419bbcb36320c3be', '1498795253', '1');
INSERT INTO `ecshecom_finance` VALUES ('30', '15', 'cny', '9999.22639902', '0.81081000', '10000.03720902', '0.01100110', '2', 'trade', '18', '交易中心-委托买入-市场bxb_cny', '9999.21539792', '0.82181110', '10000.03720902', '4cfce1fdbe2ccbcfa13436776556ca02', '1498795314', '1');
INSERT INTO `ecshecom_finance` VALUES ('31', '15', 'cny', '9999.21539792', '0.82181110', '10000.03720902', '0.01100110', '2', 'tradelog', '11', '交易中心-成功买入-市场bxb_cny', '9999.21539792', '0.81081000', '10000.02620792', '1025068ae73c80c5231459cedd14a50e', '1498795314', '1');
INSERT INTO `ecshecom_finance` VALUES ('32', '15', 'cny', '9999.21539792', '0.81081000', '10000.02620792', '0.01100110', '1', 'tradelog', '11', '交易中心-成功卖出-市场bxb_cny', '9999.22639682', '0.81081000', '10000.03720682', '280fade6f9b8274a056896c1d68178ec', '1498795314', '1');
INSERT INTO `ecshecom_finance` VALUES ('33', '15', 'cny', '9999.22639682', '0.81081000', '10000.03720682', '0.00900090', '2', 'trade', '20', '交易中心-委托买入-市场bxb_cny', '9999.21739592', '0.81981090', '10000.03720682', '9fd95019b0b3be348a14b575f72abc62', '1498795351', '1');
INSERT INTO `ecshecom_finance` VALUES ('34', '15', 'cny', '9999.21739592', '0.81981090', '10000.03720682', '0.00900090', '2', 'tradelog', '12', '交易中心-成功买入-市场bxb_cny', '9999.21739592', '0.81081000', '10000.02820592', '6bc210b6afe0996bf3bc3f19a2343343', '1498795351', '1');
INSERT INTO `ecshecom_finance` VALUES ('35', '15', 'cny', '9999.21739592', '0.81081000', '10000.02820592', '0.00900090', '1', 'tradelog', '12', '交易中心-成功卖出-市场bxb_cny', '9999.22639502', '0.81081000', '10000.03720502', '91feee2da12a905b3de9553597beddd1', '1498795351', '1');
INSERT INTO `ecshecom_finance` VALUES ('36', '15', 'cny', '9999.22639502', '0.81081000', '10000.03720502', '11.00000000', '2', 'issue', '1', '认购中心-立即认购', '9999.22639502', '0.81081000', '10000.03720502', '77823c6a43e4b10ce40ca6dcd63e002d', '1498795885', '1');
INSERT INTO `ecshecom_finance` VALUES ('37', '15', 'cny', '9999.22639502', '0.81081000', '10000.03720502', '55.05500000', '2', 'trade', '21', '交易中心-委托买入-市场glc_cny', '9944.17139502', '55.86581000', '10000.03720502', 'c42218317c353d9aaa42b038aac90d2d', '1498811066', '1');
INSERT INTO `ecshecom_finance` VALUES ('38', '15', 'cny', '9944.17139502', '55.86581000', '10000.03720502', '540.54000000', '2', 'trade', '22', '交易中心-委托买入-市场glc_cny', '9403.63139502', '596.40581000', '10000.03720502', 'b8a5291519817d070f33ec2b1b675f46', '1498811121', '1');
INSERT INTO `ecshecom_finance` VALUES ('39', '15', 'cny', '9403.63139502', '596.40581000', '10000.03720502', '495.49500000', '2', 'trade', '23', '交易中心-委托买入-市场glc_cny', '8908.13639502', '1091.90081000', '10000.03720502', 'c0724aa29082e7d4c3e4a222483668c8', '1498811149', '1');
INSERT INTO `ecshecom_finance` VALUES ('40', '15', 'cny', '8908.13639502', '1091.90081000', '10000.03720502', '7133.63562467', '2', 'trade', '24', '交易中心-委托买入-市场glc_cny', '1774.50077035', '8225.53643467', '10000.03720502', '6a40d3a003002c64513d166b51b702b8', '1498811184', '1');
INSERT INTO `ecshecom_finance` VALUES ('41', '15', 'cny', '1774.50077035', '8225.53643467', '10000.03720502', '50.05000000', '2', 'trade', '25', '交易中心-委托买入-市场glc_cny', '1724.45077035', '8275.58643467', '10000.03720502', '2e70ddb0f8c89e8560cf9e45ec1f2d32', '1498811201', '1');
INSERT INTO `ecshecom_finance` VALUES ('42', '15', 'cny', '1724.45077035', '8275.58643467', '10000.03720502', '53.05300000', '2', 'trade', '26', '交易中心-委托买入-市场glc_cny', '1671.39777035', '8328.63943467', '10000.03720502', '5554933fb3861e941d1a3398f0fd27af', '1498811207', '1');
INSERT INTO `ecshecom_finance` VALUES ('43', '15', 'cny', '1671.39777035', '8328.63943467', '10000.03720502', '52.05200000', '2', 'trade', '27', '交易中心-委托买入-市场glc_cny', '1619.34577035', '8380.69143467', '10000.03720502', '055ad81c61b9611c73555c6a65ecc11d', '1498811217', '1');
INSERT INTO `ecshecom_finance` VALUES ('44', '15', 'cny', '1619.34577035', '8380.69143467', '10000.03720502', '51.05100000', '2', 'trade', '28', '交易中心-委托买入-市场glc_cny', '1568.29477035', '8431.74243467', '10000.03720502', 'da3ba5e626d4255a6bbe07946696e0ad', '1498811224', '1');
INSERT INTO `ecshecom_finance` VALUES ('45', '15', 'cny', '1568.29477035', '8431.74243467', '10000.03720502', '51.05100000', '1', 'trade', '28', '交易中心-交易撤销glc_cny', '1619.34577035', '8380.69143467', '10000.03720502', 'c454ac4c0516ce8c4f2186c24c13a4e3', '1498811353', '1');
INSERT INTO `ecshecom_finance` VALUES ('46', '15', 'cny', '1619.34577035', '8380.69143467', '10000.03720502', '55.05500000', '1', 'trade', '21', '交易中心-交易撤销glc_cny', '1674.40077035', '8325.63643467', '10000.03720502', 'fdd7c004b564e0af18e3ab573a220a8a', '1498811358', '1');
INSERT INTO `ecshecom_finance` VALUES ('47', '15', 'cny', '1674.40077035', '8325.63643467', '10000.03720502', '540.54000000', '1', 'trade', '22', '交易中心-交易撤销glc_cny', '2214.94077035', '7785.09643467', '10000.03720502', 'c3428dd3c01ba1981d677a15078d7fce', '1498811360', '1');
INSERT INTO `ecshecom_finance` VALUES ('48', '15', 'cny', '2214.94077035', '7785.09643467', '10000.03720502', '495.49500000', '1', 'trade', '23', '交易中心-交易撤销glc_cny', '2710.43577035', '7289.60143467', '10000.03720502', 'a917c3557f47480a74a1784ff0d0f3f5', '1498811361', '1');
INSERT INTO `ecshecom_finance` VALUES ('49', '15', 'cny', '2710.43577035', '7289.60143467', '10000.03720502', '7133.63562467', '1', 'trade', '24', '交易中心-交易撤销glc_cny', '9844.07139502', '155.96581000', '10000.03720502', '5adb116e6221dc1d99c66fb687d69ce4', '1498811363', '1');
INSERT INTO `ecshecom_finance` VALUES ('50', '15', 'cny', '9844.07139502', '155.96581000', '10000.03720502', '53.05300000', '1', 'trade', '26', '交易中心-交易撤销glc_cny', '9897.12439502', '102.91281000', '10000.03720502', 'ee8f27bfcdd252d4d1637b1c404b7b45', '1498811366', '1');
INSERT INTO `ecshecom_finance` VALUES ('51', '15', 'cny', '9897.12439502', '102.91281000', '10000.03720502', '52.05200000', '1', 'trade', '27', '交易中心-交易撤销glc_cny', '9949.17639502', '50.86081000', '10000.03720502', 'de9b8a7e364b249bc16720b73d27751e', '1498811368', '1');
INSERT INTO `ecshecom_finance` VALUES ('52', '15', 'cny', '9949.17639502', '50.86081000', '10000.03720502', '5.00500000', '2', 'tradelog', '13', '交易中心-成功买入-市场glc_cny', '9949.17639502', '45.85581000', '9995.03220502', '0f2cf45548480ed4c8fed25cd24bb03c', '1498811384', '1');
INSERT INTO `ecshecom_finance` VALUES ('53', '15', 'cny', '9949.17639502', '45.85581000', '9995.03220502', '5.00500000', '1', 'tradelog', '13', '交易中心-成功卖出-市场glc_cny', '9954.17139502', '45.85581000', '10000.02720502', '8077747c02c4f61edad7274ecd91b4ab', '1498811384', '1');
INSERT INTO `ecshecom_finance` VALUES ('54', '15', 'cny', '9954.17139502', '45.85581000', '10000.02720502', '7971.30045262', '2', 'trade', '30', '交易中心-委托买入-市场glc_cny', '1982.87094240', '8017.15626262', '10000.02720502', '1a4d09643a1fc8b9dd3aabcc8944539b', '1498811439', '1');
INSERT INTO `ecshecom_finance` VALUES ('55', '15', 'cny', '1982.87094240', '8017.15626262', '10000.02720502', '4.90490000', '2', 'trade', '31', '交易中心-委托买入-市场glc_cny', '1977.96604240', '8022.06116262', '10000.02720502', 'ef2c8d3bd36d488c1fc2be62c8bc4d95', '1498811460', '1');
INSERT INTO `ecshecom_finance` VALUES ('56', '15', 'cny', '1977.96604240', '8022.06116262', '10000.02720502', '4.80480000', '2', 'trade', '32', '交易中心-委托买入-市场glc_cny', '1973.16124240', '8026.86596262', '10000.02720502', '038e62012b47ac367898d30aedcbbd7d', '1498811468', '1');
INSERT INTO `ecshecom_finance` VALUES ('57', '15', 'cny', '1973.16124240', '8026.86596262', '10000.02720502', '4.70470000', '2', 'trade', '33', '交易中心-委托买入-市场glc_cny', '1968.45654240', '8031.57066262', '10000.02720502', '936b94a249f00a76daa39f43a7a6e90f', '1498811476', '1');
INSERT INTO `ecshecom_finance` VALUES ('58', '15', 'cny', '1968.45654240', '8031.57066262', '10000.02720502', '4.60460000', '2', 'trade', '34', '交易中心-委托买入-市场glc_cny', '1963.85194240', '8036.17526262', '10000.02720502', '40e9b6458988b24e7ff5b4bf2d1c3290', '1498811487', '1');
INSERT INTO `ecshecom_finance` VALUES ('59', '15', 'cny', '1963.85194240', '8036.17526262', '10000.02720502', '4.50450000', '2', 'trade', '35', '交易中心-委托买入-市场glc_cny', '1959.34744240', '8040.67976262', '10000.02720502', 'deffa22d6061259a8b6d3b6fa2b15cba', '1498811504', '1');
INSERT INTO `ecshecom_finance` VALUES ('60', '15', 'cny', '1959.34744240', '8040.67976262', '10000.02720502', '45.04500000', '2', 'tradelog', '14', '交易中心-成功买入-市场glc_cny', '1959.34744240', '7995.63476262', '9954.98220502', '1a70d82399acbedc07fbf448475cbb75', '1498812173', '1');
INSERT INTO `ecshecom_finance` VALUES ('61', '15', 'cny', '1959.34744240', '7995.63476262', '9954.98220502', '45.04500000', '1', 'tradelog', '14', '交易中心-成功卖出-市场glc_cny', '2004.30244240', '7995.63476262', '9999.93720502', '7c698e869de923d92443e44e7a56ceed', '1498812173', '1');
INSERT INTO `ecshecom_finance` VALUES ('62', '15', 'cny', '2004.30244240', '7995.63476262', '9999.93720502', '4.94994500', '2', 'tradelog', '15', '交易中心-成功买入-市场glc_cny', '2004.30244240', '7990.68481762', '9994.98726002', 'a995227aed51ad82ccb3ac566ce7d2e0', '1498812173', '1');
INSERT INTO `ecshecom_finance` VALUES ('63', '15', 'cny', '2004.30244240', '7990.68481762', '9994.98726002', '4.94994500', '1', 'tradelog', '15', '交易中心-成功卖出-市场glc_cny', '2009.24249740', '7990.68481762', '9999.92731502', '468ffa868970b36cf91b5b10ad83cfb0', '1498812173', '1');
INSERT INTO `ecshecom_finance` VALUES ('64', '15', 'cny', '10000000.00000000', '7990.68481762', '10007990.68481800', '10.01000000', '2', 'trade', '37', '交易中心-委托买入-市场abc_cny', '9999989.99000000', '8000.69481762', '10007990.68481800', 'd476eeba3bfea2c591db36e7c022a927', '1498868005', '0');
INSERT INTO `ecshecom_finance` VALUES ('65', '15', 'cny', '9999989.99000000', '8000.69481762', '10007990.68481800', '1.00100000', '2', 'tradelog', '16', '交易中心-成功买入-市场abc_cny', '9999989.99000000', '7999.69381762', '10007989.68381800', '5d1b951e1a3b7151bfef7daab47181f6', '1498868007', '1');
INSERT INTO `ecshecom_finance` VALUES ('66', '15', 'cny', '9999989.99000000', '7999.69381762', '10007989.68381800', '1.00100000', '1', 'tradelog', '16', '交易中心-成功卖出-市场abc_cny', '9999990.98900000', '7999.69381762', '10007990.68281800', '0f78f0318bf3b54f7672631d577db96c', '1498868008', '1');
INSERT INTO `ecshecom_finance` VALUES ('67', '15', 'cny', '9999990.98900000', '7999.69381762', '10007990.68281800', '10.01000000', '2', 'trade', '38', '交易中心-委托买入-市场abc_cny', '9999980.97900000', '8009.70381762', '10007990.68281800', '035f84a8bf05aa131625e174b8a1f60a', '1498868016', '1');
INSERT INTO `ecshecom_finance` VALUES ('68', '15', 'cny', '9999980.97900000', '8009.70381762', '10007990.68281800', '0.99099000', '2', 'trade', '39', '交易中心-委托买入-市场abc_cny', '9999979.98801000', '8010.69480762', '10007990.68281800', 'ff59ae5ade7122e41d28915e117a3292', '1498868486', '1');
INSERT INTO `ecshecom_finance` VALUES ('69', '15', 'cny', '9999979.98801000', '8010.69480762', '10007990.68281800', '0.99099000', '2', 'tradelog', '17', '交易中心-成功买入-市场abc_cny', '9999979.98801000', '8009.70381762', '10007989.69182800', 'c32c1cda8ba4615cdb05a14e4db88bbe', '1498868487', '1');
INSERT INTO `ecshecom_finance` VALUES ('70', '15', 'cny', '9999979.98801000', '8009.70381762', '10007989.69182800', '0.99099000', '1', 'tradelog', '17', '交易中心-成功卖出-市场abc_cny', '9999980.97702000', '8009.70381762', '10007990.68083800', 'f19926c5600af5ddfae603a6c8c7fd9a', '1498868487', '1');
INSERT INTO `ecshecom_finance` VALUES ('71', '15', 'cny', '9999980.97702000', '8009.70381762', '10007990.68083800', '1091.09000000', '2', 'trade', '41', '交易中心-委托买入-市场abc_cny', '9998889.88702000', '9100.79381762', '10007990.68083800', '46ca8ae2fcb423fdd4e0a28329090149', '1498869910', '1');
INSERT INTO `ecshecom_finance` VALUES ('72', '15', 'cny', '9998889.88702000', '9100.79381762', '10007990.68083800', '1091.09000000', '2', 'tradelog', '18', '交易中心-成功买入-市场abc_cny', '9998889.88702000', '8009.70381762', '10006899.59083800', '5f0649b2b46442e0c2a1f231be5daa4f', '1498869911', '1');
INSERT INTO `ecshecom_finance` VALUES ('73', '15', 'cny', '9998889.88702000', '8009.70381762', '10006899.59083800', '1091.09000000', '1', 'tradelog', '18', '交易中心-成功卖出-市场abc_cny', '9999978.79702000', '8009.70381762', '10007988.50083800', 'bbc8dff8fe79cc3400ca091da620f394', '1498869911', '1');
INSERT INTO `ecshecom_finance` VALUES ('74', '15', 'cny', '9999978.79702000', '8009.70381762', '10007988.50083800', '550.55000000', '2', 'trade', '43', '交易中心-委托买入-市场glc_cny', '9999428.24702000', '8560.25381762', '10007988.50083800', 'b1b374441f0ebd16713a7415e3ba53e1', '1498871631', '1');
INSERT INTO `ecshecom_finance` VALUES ('75', '15', 'cny', '9999428.24702000', '8560.25381762', '10007988.50083800', '550.55000000', '2', 'tradelog', '19', '交易中心-成功买入-市场glc_cny', '9999428.24702000', '8009.70381762', '10007437.95083800', '68a3d12e237324f584610318709b3a7b', '1498871631', '1');
INSERT INTO `ecshecom_finance` VALUES ('76', '15', 'cny', '9999428.24702000', '8009.70381762', '10007437.95083800', '550.55000000', '1', 'tradelog', '19', '交易中心-成功卖出-市场glc_cny', '9999977.69702000', '8009.70381762', '10007987.40083800', 'e7c599ce89b3ff9ba20d237c30a670bd', '1498871631', '1');
INSERT INTO `ecshecom_finance` VALUES ('77', '15', 'cny', '9999977.69702000', '8009.70381762', '10007987.40083800', '200.02000000', '2', 'trade', '45', '交易中心-委托买入-市场bxb_cny', '9999777.67702000', '8209.72381762', '10007987.40083800', '826f0a502cd61e61ae90ea4ebb0da773', '1498871872', '1');
INSERT INTO `ecshecom_finance` VALUES ('78', '15', 'cny', '9999777.67702000', '8209.72381762', '10007987.40083800', '0.13212321', '2', 'tradelog', '20', '交易中心-成功买入-市场bxb_cny', '9999777.67702000', '8209.59169441', '10007987.26871400', '89bc6c4c8b110ef7a94407550ca2c16c', '1498871872', '1');
INSERT INTO `ecshecom_finance` VALUES ('79', '15', 'cny', '9999777.67702000', '8209.59169441', '10007987.26871400', '0.13212321', '1', 'tradelog', '20', '交易中心-成功卖出-市场bxb_cny', '9999777.80911679', '8209.59169441', '10007987.40081100', 'dedfd64d2b3abf3b73e2077bdb602596', '1498871872', '1');
INSERT INTO `ecshecom_finance` VALUES ('80', '15', 'cny', '9999777.91721760', '8209.48359360', '10007987.40081100', '19.97399720', '2', 'tradelog', '21', '交易中心-成功买入-市场bxb_cny', '9999777.91721760', '8189.50959640', '10007967.42681400', '7010480579dc1fca8e02bbfbed42d8db', '1498871872', '1');
INSERT INTO `ecshecom_finance` VALUES ('81', '15', 'cny', '9999777.91721760', '8189.50959640', '10007967.42681400', '19.97399720', '1', 'tradelog', '21', '交易中心-成功卖出-市场bxb_cny', '9999797.88722040', '8189.50959640', '10007987.39681700', 'd60b4c37c48df03fbd5f49aa0ddb3439', '1498871872', '1');
INSERT INTO `ecshecom_finance` VALUES ('82', '17', 'cny', '0.00000000', '0.00000000', '0.00000000', '80000.19000000', '1', 'mycz', '14', '人民币充值-人工到账', '80000.19000000', '0.00000000', '80000.19000000', 'e8f82732b2e050cae8eb276488a41328', '1504364952', '1');
INSERT INTO `ecshecom_finance` VALUES ('83', '15', 'cny', '9999797.88722040', '8189.50959640', '10007987.39681700', '179.78780000', '1', 'trade', '45', '交易中心-交易撤销bxb_cny', '9999977.67502040', '8009.72179640', '10007987.39681700', '4feb8993e8cd7d4e6d54f49d6b7d5610', '1508386228', '1');
INSERT INTO `ecshecom_finance` VALUES ('84', '15', 'cny', '9999977.67502040', '8009.72179640', '10007987.39681700', '10.00000000', '1', 'trade', '38', '交易中心-交易撤销abc_cny', '9999987.67502040', '7999.72179640', '10007987.39681700', '701fccefdbf555bbc262dc7ac51f804b', '1508386230', '1');
INSERT INTO `ecshecom_finance` VALUES ('85', '15', 'cny', '9999987.67502040', '7999.72179640', '10007987.39681700', '9.00000000', '1', 'trade', '37', '交易中心-交易撤销abc_cny', '9999996.67502040', '7990.72179640', '10007987.39681700', '53b31f198c583b32e88988bccfca0601', '1508386233', '1');
INSERT INTO `ecshecom_finance` VALUES ('86', '15', 'cny', '9999996.67502040', '7990.72179640', '10007987.39681700', '4.50000000', '1', 'trade', '35', '交易中心-交易撤销glc_cny', '10000001.17502040', '7986.22179640', '10007987.39681700', 'b73115934e9ceb2dcaf84a927bc2deb4', '1508386236', '1');
INSERT INTO `ecshecom_finance` VALUES ('87', '15', 'cny', '10000001.17502040', '7986.22179640', '10007987.39681700', '4.60000000', '1', 'trade', '34', '交易中心-交易撤销glc_cny', '10000005.77502040', '7981.62179640', '10007987.39681700', '422743f160cd9877558a3eb4131b5482', '1508386237', '1');
INSERT INTO `ecshecom_finance` VALUES ('88', '15', 'cny', '10000005.77502040', '7981.62179640', '10007987.39681700', '4.70000000', '1', 'trade', '33', '交易中心-交易撤销glc_cny', '10000010.47502040', '7976.92179640', '10007987.39681700', '983a7c390ce6a55ac7df73c5b900438c', '1508386238', '1');
INSERT INTO `ecshecom_finance` VALUES ('89', '15', 'cny', '10000010.47502040', '7976.92179640', '10007987.39681700', '4.80000000', '1', 'trade', '32', '交易中心-交易撤销glc_cny', '10000015.27502040', '7972.12179640', '10007987.39681700', '7dbe003f2097a960b8216cfb137addae', '1508386242', '1');
INSERT INTO `ecshecom_finance` VALUES ('90', '15', 'cny', '10000015.27502040', '7972.12179640', '10007987.39681700', '4.90000000', '1', 'trade', '31', '交易中心-交易撤销glc_cny', '10000020.17502040', '7967.22179640', '10007987.39681700', '62e5b1ba8b0310dcf9a9ba4e71530ec4', '1508386243', '1');
INSERT INTO `ecshecom_finance` VALUES ('91', '22', 'cny', '0.00000000', '0.00000000', '0.00000000', '2.00200000', '1', 'trade', '47', '交易中心-交易撤销ltc_btc', '0.00000000', '0.00000000', '0.00000000', '29cb53df70554d1c8a125642b18ed1a9', '1509527305', '1');
INSERT INTO `ecshecom_finance` VALUES ('92', '214', 'cny', '2.00000000', '0.00000000', '2.00000000', '1.00100000', '2', 'trade', '51', '交易中心-委托买入-市场btc_cny', '0.99900000', '1.00100000', '2.00000000', '509a83a6a21b61a0ac66699eef8a5c0b', '1509530637', '0');
INSERT INTO `ecshecom_finance` VALUES ('93', '214', 'cny', '0.99900000', '1.00100000', '2.00000000', '1.00100000', '2', 'tradelog', '23', '交易中心-成功买入-市场btc_cny', '0.99900000', '0.00000000', '0.99900000', 'a92f5803e1d486872908064fd34c4e9b', '1509530654', '1');
INSERT INTO `ecshecom_finance` VALUES ('94', '214', 'cny', '0.99900000', '0.00000000', '0.99900000', '1.00100000', '1', 'tradelog', '23', '交易中心-成功卖出-市场btc_cny', '1.99800000', '0.00000000', '1.99800000', '8325212d290e51622de1a21bd0125cc1', '1509530654', '1');
INSERT INTO `ecshecom_finance` VALUES ('95', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000001', '1', 'trade', '63', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', '3b1b0b9d1b27e7bfb40da5df2b6e67da', '1509777370', '1');
INSERT INTO `ecshecom_finance` VALUES ('96', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000001', '1', 'trade', '64', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', '3b1b0b9d1b27e7bfb40da5df2b6e67da', '1509777422', '1');
INSERT INTO `ecshecom_finance` VALUES ('97', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.03453450', '1', 'trade', '89', '交易中心-交易撤销dash_btc', '1.99800000', '0.00000000', '1.99800000', 'c6205b06639bfb7dae965c1a157503f8', '1509781622', '1');
INSERT INTO `ecshecom_finance` VALUES ('98', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000000', '1', 'trade', '107', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', '049004acb8e2ed1cd8a46d7c89b3d016', '1509972672', '1');
INSERT INTO `ecshecom_finance` VALUES ('99', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.06946940', '1', 'trade', '90', '交易中心-交易撤销dash_btc', '1.99800000', '0.00000000', '1.99800000', '543f28febfc14a1f662e827a5b761758', '1509983909', '1');
INSERT INTO `ecshecom_finance` VALUES ('100', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.03448946', '1', 'trade', '91', '交易中心-交易撤销dash_btc', '1.99800000', '0.00000000', '1.99800000', '44a6baa624c9fc1f797404f5abc90db9', '1509983910', '1');
INSERT INTO `ecshecom_finance` VALUES ('101', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000033', '1', 'trade', '115', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', '021dfb89ee6e123cbc461c89e3776beb', '1509984093', '1');
INSERT INTO `ecshecom_finance` VALUES ('102', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000048', '1', 'trade', '116', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', 'cd9e557621a0b7a7ef127b3fe06c36f1', '1509984094', '1');
INSERT INTO `ecshecom_finance` VALUES ('103', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000616', '1', 'trade', '117', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', '13f541649bb5e842c0dc756b14ef39c0', '1509984094', '1');
INSERT INTO `ecshecom_finance` VALUES ('104', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000733', '1', 'trade', '118', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', 'c1d06178d54b1bf1b2b6e77fa6433a9b', '1509984095', '1');
INSERT INTO `ecshecom_finance` VALUES ('105', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000000', '1', 'trade', '119', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', '8b5d534f503f64a0e61d89a4f7746bda', '1509984095', '1');
INSERT INTO `ecshecom_finance` VALUES ('106', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000000', '1', 'trade', '119', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', '8b5d534f503f64a0e61d89a4f7746bda', '1509984096', '1');
INSERT INTO `ecshecom_finance` VALUES ('107', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000000', '1', 'trade', '119', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', '8b5d534f503f64a0e61d89a4f7746bda', '1509984096', '1');
INSERT INTO `ecshecom_finance` VALUES ('108', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000000', '1', 'trade', '119', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', '8b5d534f503f64a0e61d89a4f7746bda', '1509984098', '1');
INSERT INTO `ecshecom_finance` VALUES ('109', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000000', '1', 'trade', '119', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', '8b5d534f503f64a0e61d89a4f7746bda', '1509984106', '1');
INSERT INTO `ecshecom_finance` VALUES ('110', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00000000', '1', 'trade', '119', '交易中心-交易撤销dog_btc', '1.99800000', '0.00000000', '1.99800000', '8b5d534f503f64a0e61d89a4f7746bda', '1509984121', '1');
INSERT INTO `ecshecom_finance` VALUES ('111', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.02402400', '1', 'trade', '96', '交易中心-交易撤销ardr_btc', '1.99800000', '0.00000000', '1.99800000', '02958e7ffeb7f68fd7c7c21d897358ee', '1509984405', '1');
INSERT INTO `ecshecom_finance` VALUES ('112', '22', 'cny', '0.00000000', '0.00000000', '0.00000000', '0.00002402', '1', 'trade', '112', '交易中心-交易撤销nxt_btc', '0.00000000', '0.00000000', '0.00000000', '44469872d8e39deca22d1e67dc769e16', '1510045027', '1');
INSERT INTO `ecshecom_finance` VALUES ('113', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00007273', '1', 'trade', '134', '交易中心-交易撤销qwe_btc', '1.99800000', '0.00000000', '1.99800000', 'ab684b975d9ec04d7c77b87da2962e45', '1510047731', '1');
INSERT INTO `ecshecom_finance` VALUES ('114', '22', 'cny', '0.00000000', '0.00000000', '0.00000000', '0.00140140', '1', 'trade', '163', '交易中心-交易撤销jjb_btc', '0.00000000', '0.00000000', '0.00000000', '02d7eba7f95a6a854b43c937f9ebb4da', '1510471664', '1');
INSERT INTO `ecshecom_finance` VALUES ('115', '214', 'cny', '1.99800000', '0.00000000', '1.99800000', '0.00350350', '1', 'trade', '168', '交易中心-交易撤销qwe_btc', '1.99800000', '0.00000000', '1.99800000', '87f184f1ce5c33b107a057ac3eaba766', '1510473981', '1');

-- ----------------------------
-- Table structure for ecshecom_finance_affiche
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_finance_affiche`;
CREATE TABLE `ecshecom_finance_affiche` (
  `id` int(10) NOT NULL,
  `account_rechange` text NOT NULL COMMENT '账号充值',
  `account_withdraw_cash` text NOT NULL COMMENT '账号提现',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='财务中心公告内容';

-- ----------------------------
-- Records of ecshecom_finance_affiche
-- ----------------------------
INSERT INTO `ecshecom_finance_affiche` VALUES ('1', '<p>\r\n	<span style=\"font-size:16px;\">撒娇和反馈速度减缓房价肯定是复活节黑屋hiubfdbvicasjdhfjdshfdjsh</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">水电开发的数据来看房的数据卡话费sad防护垫首付i的话</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">苏丹红fid是否i哦二号烽火电话费抖擞hi的石佛i的萨哈夫i哦的哈</span>\r\n</p>', '<p>\r\n	<span style=\"font-size:16px;\">就打算开发的姐啊开房间阿莱克是款到即发迪斯科解放的是咖啡机宽松的解放开绿灯</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">就打算开发的姐啊开房间阿莱克是款到即发迪斯科解放的是咖啡机宽松的解放开绿灯</span><span style=\"font-size:16px;\">就打算开发的姐啊开房间阿莱克是款到即发迪斯科解放的是咖啡机宽松的解放开绿灯</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">就打算开发的姐啊开房间阿莱克是款到即发迪斯科解放的是咖啡机宽松的解放开绿灯</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>');

-- ----------------------------
-- Table structure for ecshecom_footer
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_footer`;
CREATE TABLE `ecshecom_footer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_footer
-- ----------------------------
INSERT INTO `ecshecom_footer` VALUES ('1', '1', '关于我们', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `ecshecom_footer` VALUES ('2', '1', '联系我们', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `ecshecom_footer` VALUES ('3', '1', '资质证明', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `ecshecom_footer` VALUES ('4', '1', '用户协议', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `ecshecom_footer` VALUES ('5', '1', '法律声明', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `ecshecom_footer` VALUES ('6', '1', '1', '/', 'footer_1.png', '2', '', '1', '111', '0', '1');
INSERT INTO `ecshecom_footer` VALUES ('7', '1', '1', 'http://www.szfw.org/', 'footer_2.png', '2', '', '1', '111', '0', '1');
INSERT INTO `ecshecom_footer` VALUES ('8', '1', '1', 'http://www.miibeian.gov.cn/', 'footer_3.png', '2', '', '1', '111', '0', '1');
INSERT INTO `ecshecom_footer` VALUES ('9', '1', '1', 'http://www.cyberpolice.cn/', 'footer_4.png', '2', '', '1', '111', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_huafei
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_huafei`;
CREATE TABLE `ecshecom_huafei` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL,
  `moble` varchar(255) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `mum` decimal(20,8) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_huafei
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_huafei_coin
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_huafei_coin`;
CREATE TABLE `ecshecom_huafei_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `coinname` varchar(50) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_huafei_coin
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_huafei_type
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_huafei_type`;
CREATE TABLE `ecshecom_huafei_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_huafei_type
-- ----------------------------
INSERT INTO `ecshecom_huafei_type` VALUES ('1', '10', '10元话费充值', '1');
INSERT INTO `ecshecom_huafei_type` VALUES ('2', '20', '20元话费充值', '1');
INSERT INTO `ecshecom_huafei_type` VALUES ('3', '30', '30元话费充值', '1');
INSERT INTO `ecshecom_huafei_type` VALUES ('4', '50', '50元话费充值', '1');
INSERT INTO `ecshecom_huafei_type` VALUES ('5', '100', '100元话费充值', '1');
INSERT INTO `ecshecom_huafei_type` VALUES ('6', '300', '300元话费充值', '1');

-- ----------------------------
-- Table structure for ecshecom_invit
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_invit`;
CREATE TABLE `ecshecom_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `invit` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `num` decimal(30,16) unsigned NOT NULL,
  `mum` decimal(30,16) unsigned NOT NULL,
  `fee` decimal(30,16) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `invit` (`invit`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推广奖励表';

-- ----------------------------
-- Records of ecshecom_invit
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_issue
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_issue`;
CREATE TABLE `ecshecom_issue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `buycoin` varchar(50) NOT NULL,
  `num` bigint(20) unsigned NOT NULL,
  `deal` int(11) unsigned NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `limit` int(11) unsigned NOT NULL,
  `time` varchar(255) NOT NULL,
  `tian` varchar(255) NOT NULL,
  `ci` varchar(255) NOT NULL,
  `jian` varchar(255) NOT NULL,
  `min` varchar(255) NOT NULL,
  `max` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `invit_coin` varchar(50) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `tuijian` tinyint(1) NOT NULL DEFAULT '2',
  `paixu` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='认购发行表';

-- ----------------------------
-- Records of ecshecom_issue
-- ----------------------------
INSERT INTO `ecshecom_issue` VALUES ('1', '币兴股', 'ltc', 'cny', '50000000', '0', '0.02000000', '500000', '2017-06-10 00:00:00', '20', '0', '0', '5000', '500000', '<h1 align=\"center\" style=\"text-align:center;\">\r\n	币兴<b>股白皮书</b><b></b> \r\n</h1>\r\n<p class=\"MsoNormal\">\r\n	<b>一、币兴股简介：</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	钱包中文名：币兴股\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	属性：币兴数字资产交易中心网代币<br />\r\n<span>钱包英文名：Bixingb</span><br />\r\n<span>钱包英文缩写：BXB</span><br />\r\n<span>钱包</span>Logo <span>：</span><br />\r\n<span>全预挖的数量（自己发行的数量）</span>:100000000枚\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<!--[if !supportLists]-->二、<!--[endif]-->近期发展规划\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>2.1 ICO</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<img width=\"554\" height=\"340\" src=\"file://C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\ksohtml\\wps39A7.tmp.jpg\" /> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>2.2限购办法</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>单账户</span>ICO限额2万元\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	ICO价格0.02\r\n</p>\r\n<h1>\r\n	<!--[if !supportLists]-->三、<!--[endif]--><b>交易期</b><b></b> \r\n</h1>\r\n<p class=\"MsoNormal\">\r\n	3.1 涨跌停限制\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>众筹完成后</span>30天内多空比达到2:1（有效入金：ICO资金）即可上线交易，为了保障币兴股健康发展，每天涨跌停限制，上下限待定。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	3.2 PUSH\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>上线</span>Push平台，自由兑换\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	3.3 交易手续费\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>单边</span>0.1％ 充值提现手续费暂定\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	3.4 团队合作\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<img width=\"554\" height=\"322\" src=\"file://C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\ksohtml\\wps39A8.tmp.jpg\" /> \r\n</p>\r\n<h1>\r\n	<b><br />\r\n</b><b></b> \r\n</h1>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>', 'cny', '', '', '', '0', '1508391995', '0', '0', '59437dcddc4c7.jpg', '2', '0');
INSERT INTO `ecshecom_issue` VALUES ('2', '第三方ICO-以太坊ETH', 'ltc', 'cny', '10000', '21', '1.00000000', '10000', '2017-06-29 00:00:00', '3', '0', '0', '', '', '', 'cny', '', '', '', '0', '1508391984', '0', '0', '5955cef9e65ab.jpg', '2', '0');
INSERT INTO `ecshecom_issue` VALUES ('3', '绿地币-ICO', 'ltc', 'cny', '18000000', '18000000', '0.05000000', '1000000', '2017-06-20 00:00:00', '5', '0', '0', '10000', '1000000', '<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n	<b>绿地币</b>(GLC)<b>-ICO<span>细则</span></b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	<b> </b> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	1.<span>代币总量：</span>6000万\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	2.<span>认购目标：</span>1500万\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	3.<span>认购时间：</span>6<span>月</span>20<span>日</span> 10:00 - 6<span>月</span>25<span>日</span> 10<span>：</span>00<br />\r\n4.<span>认购条件：所有用户均可参与认购活动</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	5.<span>认购价格：</span>500元/份（每份10000<span>个</span><span>绿地</span><span>币，</span>0.05<span>元</span>/个）\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	6.<span>认购金额：最低</span>500元，最高5万元\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	7.<span>交易规则：每日交易涨跌幅</span>10%\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	8.<span>交易时间：周一</span>--周六 9：00-15：00\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	9.上线交易时间：2017年6月30日上午9点\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	10.GLC介绍\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	   GLC白皮书:http://www.bi-58.com/Article/detail/id/56.html\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	   <span>区块浏览器：</span><a href=\"http://60.205.59.146/\"><u>http://60.205.59.146/</u></a> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:18.7500pt;background:#FFFFFF;\">\r\n	<b>GLC</b><b><span>是一个去中心化的数据库，同时作为</span></b><b>GLC</b><b><span>底层技术的区块链是一串使用密码学方法相关联产生的数据块，每一个数据块中包含了一次</span></b><b>GLC</b><b><span>网络交易的信息，用于验证其信息的有效性（防伪）和生成下一个区块。</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:18.7500pt;background:#FFFFFF;\">\r\n	<b>GLC</b><b><span>兼容比特币模型和以太坊虚拟机的</span>POS智能合约平台，通过全新设计的区块链依托比特币和以太币基础，打造智能化、去中心化的生态链。</b><b>GLC</b><b><span>将要打破传统区块链接的商业模式，构建新型便捷的支付通道，建立块链与真实商业社会的桥梁。对现有的支付系统和货币系统合成一体</span>,带来一场彻底的支付系统革命。</b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>   </b><b>GLC</b><b><span>团队集合了来自港澳大湾区各大公司的</span>IT精英、区块链专家、金融达人、风险投资人</b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>既有丰富的区块链开发经验，又有先进的管理和市场运作实战经验。将带给大家一个全新的市场应用体验。</span></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>01</b> <b><span>、</span> <span>高效的去中心化应用</span></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:18.7500pt;background:#FFFFFF;\">\r\n	<b><span>我们将设计一种保护措施，应用于高容错的分布式计算系统。使</span></b><b>GLC</b><b><span>区块链混合使用一致性成为可能。这使</span></b><b>GLC</b><b><span>区块链适合记录事件、标题、医疗记录和其他需要收录数据的活动、身份识别管理，交易流程管理和出处证明管理等，将会使我们的生活更加快捷便利。</span></b><b>GLC</b><b><span>将稳定、模块化和相互兼容性作为其设计宗旨，旨在成为开发高效的去中心化应用的最重要工具，并且适用于现实世界商业环境案例。</span></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>02、  智能供应链管理系统  </b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:14.2500pt;background:#FFFFFF;\">\r\n	<b>GLC</b><b><span>使得主流行业和传统企业对区块链技术的使用变得前所未有的便捷。在标准、稳定并经过测试的环境下打造专属代币、自动化供应链管理以及使用自动执行的合约。</span></b> \r\n</p>\r\n<p class=\"p\" align=\"center\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:center;background:#FFFFFF;\">\r\n	 \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>     </b><b>GLC</b><b><span>将利用其学术合作伙伴、开发工具和方法论对商业智能合约的开发进行标准化，包括将自然语言的合约准确的转译成机器可读智能合约、高容错度的细节及合约条款。第三方将在</span></b><b>GLC</b><b><span>的协助下开发专用适合记录事件、标题、医疗记录和其他需要收录数据的活动、身份识别管理，交易流程管理和出入证明管理等的生态链。同时</span></b><b>GLC</b><b><span>旨在通过与一系列合作伙伴和第三方的协作建立一个智能合约枢纽，提供安全并经过反复测试的合约模板，适用于各种行业和案例。</span></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>03、 面向移动端策略 ,打造便捷的支付体系</b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:18.7500pt;background:#FFFFFF;\">\r\n	<b><span>目前互联网上一半的流量由智能手机和平板电脑产生，</span></b><b>GLC</b><b><span>的区块链将面向移动端开发出便捷、高效、安全的交互、支付系统。能够实现资源链的快速支付、转账、储存。最终使得区块链在世界上产生颠覆性的影响。对移动支付带来一场革命。</span></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:24.0000pt;background:#FFFFFF;\">\r\n	<b>GLC</b><b><span>使用了比特币和以太币交叉模型，且代码库默认支持简单支付确认</span>SPV协议。这使得</b><b>GLC</b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>可以在轻钱包上运行智能合约，而轻钱包可以被简单的安装在任何移动设备上，从而创造一个移动去中心化应用的时代。</span></b> \r\n</p>', 'cny', '', '', '', '0', '1508391971', '0', '0', '595616a0279e9.png', '2', '0');
INSERT INTO `ecshecom_issue` VALUES ('4', '酒真链ICO', 'ltc', 'cny', '10000000', '0', '0.02000000', '0', '2017-07-03 20:00:00', '3', '0', '0', '', '', '', 'cny', '', '', '', '0', '1508391954', '0', '0', '595724aacaca1.png', '1', '0');

-- ----------------------------
-- Table structure for ecshecom_issue_log
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_issue_log`;
CREATE TABLE `ecshecom_issue_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `buycoin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` int(20) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `ci` int(11) unsigned NOT NULL,
  `jian` varchar(255) NOT NULL,
  `unlock` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='认购记录表';

-- ----------------------------
-- Records of ecshecom_issue_log
-- ----------------------------
INSERT INTO `ecshecom_issue_log` VALUES ('1', '15', '第三方ICO-以太坊ETH', 'abc', 'glc', '1.00000000', '11', '11.00000000', '0', '0', '1', '0', '1498795885', '1498795885', '0');

-- ----------------------------
-- Table structure for ecshecom_link
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_link`;
CREATE TABLE `ecshecom_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='常用银行地址';

-- ----------------------------
-- Records of ecshecom_link
-- ----------------------------
INSERT INTO `ecshecom_link` VALUES ('22', '比特币之家', '比特币之家', 'http://www.btc123.com', '59437ade06acf.png', '', '', '0', '1497594611', '1497594613', '0');
INSERT INTO `ecshecom_link` VALUES ('21', '币创网', '', 'http://www.bichuang.com', '594378ab1d905.png', '', '', '0', '1497542400', '1497594043', '0');
INSERT INTO `ecshecom_link` VALUES ('20', 'B网', 'B网', 'http://www.b.top', '594377524b571.png', '', '', '0', '1497542400', '1497542400', '1');
INSERT INTO `ecshecom_link` VALUES ('23', '聚币网', 'www.jubi.com', 'http://www.jubi.com', '5955b131ab770.png', '', '', '0', '1494345600', '1495036800', '1');
INSERT INTO `ecshecom_link` VALUES ('25', 'https://www.sosobtc.com', 'sosobtc', 'https://www.sosobtc.com', '5955b222e2101.png', '', '', '0', '1494345600', '1494950400', '1');
INSERT INTO `ecshecom_link` VALUES ('26', 'http://www.yuanbao.com', '元宝网', 'http://www.yuanbao.com', '5955b2afeeeff.png', '', '', '0', '1488816000', '1494864000', '1');
INSERT INTO `ecshecom_link` VALUES ('27', 'https://www.huobi.com', '火币网', 'https://www.huobi.com', '5955b3087c7f1.png', '', '', '0', '1467216000', '1485705600', '1');
INSERT INTO `ecshecom_link` VALUES ('28', 'https://btc.com', '比特币', 'https://btc.com', '5955b3ea5d067.png', '', '', '0', '1491926400', '1494345600', '1');
INSERT INTO `ecshecom_link` VALUES ('29', 'www.bitcoin86.com', '比特币资讯网', 'http://www.bitcoin86.com', '5955b4429a4c7.png', '', '', '0', '1494259200', '1494345600', '1');
INSERT INTO `ecshecom_link` VALUES ('30', '比特币网址导航', 'http://www.btc114.com', 'http://www.btc114.com', '5955b66d59ecf.png', '', '', '0', '1494950400', '1495036800', '1');
INSERT INTO `ecshecom_link` VALUES ('31', '巴比特资讯', 'http://www.8btc.com', 'http://www.8btc.com', '5955b6d44d4a2.png', '', '', '0', '1494259200', '1495036800', '1');
INSERT INTO `ecshecom_link` VALUES ('32', 'www.poloniex.com', '国外P网', 'www.poloniex.com/exchange', '59a311d8ad204.png', '', '', '0', '1493568000', '1493740800', '1');
INSERT INTO `ecshecom_link` VALUES ('33', 'www.bittrex.com', '国外B站', 'www.bittrex.com/Home/Markets', '59a30fcce8a36.png', '', '', '0', '1496246400', '1496332800', '1');

-- ----------------------------
-- Table structure for ecshecom_log
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_log`;
CREATE TABLE `ecshecom_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` int(20) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `unlock` int(11) unsigned NOT NULL,
  `ci` int(11) unsigned NOT NULL,
  `recycle` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_log
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_market
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_market`;
CREATE TABLE `ecshecom_market` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `round` varchar(255) NOT NULL,
  `fee_buy` varchar(255) NOT NULL,
  `fee_sell` varchar(255) NOT NULL,
  `buy_min` varchar(255) NOT NULL,
  `buy_max` varchar(255) NOT NULL,
  `sell_min` varchar(255) NOT NULL,
  `sell_max` varchar(255) NOT NULL,
  `trade_min` varchar(255) NOT NULL,
  `trade_max` varchar(255) NOT NULL,
  `invit_buy` varchar(50) NOT NULL,
  `invit_sell` varchar(50) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `zhang` varchar(255) NOT NULL,
  `die` varchar(255) NOT NULL,
  `hou_price` varchar(255) NOT NULL,
  `tendency` varchar(1000) NOT NULL,
  `trade` int(11) unsigned NOT NULL,
  `new_price` decimal(30,16) NOT NULL,
  `buy_price` decimal(30,16) NOT NULL,
  `sell_price` decimal(30,16) NOT NULL,
  `min_price` decimal(30,16) NOT NULL,
  `max_price` decimal(30,16) NOT NULL,
  `volume` decimal(30,16) NOT NULL,
  `change` decimal(30,16) NOT NULL,
  `api_min` decimal(30,16) NOT NULL,
  `api_max` decimal(30,16) NOT NULL,
  `begintrade` varchar(20) NOT NULL,
  `endtrade` varchar(20) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `jiaoyiqu` tinyint(1) NOT NULL,
  `ecshecom_faxingjia` float(8,2) NOT NULL DEFAULT '0.00' COMMENT '发行价格',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='行情配置表';

-- ----------------------------
-- Records of ecshecom_market
-- ----------------------------
INSERT INTO `ecshecom_market` VALUES ('4', 'btc_cny', '8', '0.1', '0.1', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '', '', '1', '1.0000000000000000', '0.0000000000000000', '0.0000000000000000', '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '00:00:00', '00:01:00', '0', '0', '0', '0', '0', '0.00');
INSERT INTO `ecshecom_market` VALUES ('5', 'ltc_cny', '8', '0.1', '0.1', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '', '', '1', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '00:00:00', '23:59:00', '0', '0', '0', '0', '0', '0.00');
INSERT INTO `ecshecom_market` VALUES ('27', 'ltc_btc', '8', '0.1', '0.1', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '1', '0.0086000000000000', '0.0086000000000000', '0.0000000000000000', '0.0086000000000000', '0.0086000000000000', '3.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '00:00:00', '23:59:00', '0', '0', '0', '1', '1', '0.00');
INSERT INTO `ecshecom_market` VALUES ('28', 'dog_btc', '8', '0.1', '0.1', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '1', '0.0000002000000000', '0.0000002000000000', '0.0000009900000000', '0.0000002000000000', '0.0000010000000000', '420.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '00:00:00', '23:59:00', '0', '0', '0', '1', '1', '0.00');
INSERT INTO `ecshecom_market` VALUES ('29', 'dash_btc', '8', '0.1', '0.1', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '1', '0.0350000000000000', '0.0350000000000000', '0.0410000000000000', '0.0350000000000000', '0.0350000000000000', '1.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '00:00:00', '23:59:00', '0', '0', '0', '1', '1', '0.00');
INSERT INTO `ecshecom_market` VALUES ('30', 'nxt_btc', '8', '0.1', '0.1', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '1', '0.0000070000000000', '0.0000065000000000', '0.0000090000000000', '0.0000070000000000', '0.0000070000000000', '200.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '00:00:00', '23:59:00', '0', '0', '0', '1', '1', '0.00');
INSERT INTO `ecshecom_market` VALUES ('31', 'ardr_btc', '8', '0.1', '0.1', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '1', '0.0000340000000000', '0.0000230000000000', '0.0000345000000000', '0.0000240000000000', '0.0000340000000000', '2.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '00:00:00', '23:59:00', '0', '0', '0', '1', '1', '0.00');
INSERT INTO `ecshecom_market` VALUES ('32', 'btc_btc', '8', '0.1', '0.1', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '1', '1.0000000000000000', '0.0000000000000000', '0.0000000000000000', '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '00:00:00', '00:01:00', '0', '0', '0', '1', '1', '0.00');
INSERT INTO `ecshecom_market` VALUES ('33', 'qwe_btc', '8', '0.1', '0.1', '0.00000001', '', '0.00000001', '', '0.00000001', '', '0', '0', '', '', '', '', '', '', '', '1', '0.0000000000000000', '0.0000000700000000', '0.0000001100000000', '0.0000000000000000', '0.0000000000000000', '12.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '00:00:00', '23:59:00', '0', '0', '0', '1', '1', '0.00');
INSERT INTO `ecshecom_market` VALUES ('34', 'jjb_btc', '8', '0.1', '0.1', '0.00000001', '10000000', '0.00000001', '10000000', '0.00000001', '10000000', '0', '0', '', '', '', '', '', '', '', '1', '0.0000000000000000', '0.0000002400000000', '0.0000003000000000', '0.0000000000000000', '0.0000000000000000', '99.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '00:00:00', '23:59:00', '0', '0', '0', '1', '1', '0.00');

-- ----------------------------
-- Table structure for ecshecom_market_json
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_market_json`;
CREATE TABLE `ecshecom_market_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ecshecom_market_json
-- ----------------------------
INSERT INTO `ecshecom_market_json` VALUES ('1', 'btc_cny', '', '', '0', '1498060799', '0', '0');
INSERT INTO `ecshecom_market_json` VALUES ('3', 'bxb_cny', '[\"1.00000000\",\"0.01000000\",\"0.00001000\",\"0.00001000\"]', '', '0', '1497369599', '0', '0');
INSERT INTO `ecshecom_market_json` VALUES ('4', 'bxb_cny', '', '', '0', '1568649599', '0', '0');
INSERT INTO `ecshecom_market_json` VALUES ('5', 'abc_cny', '[\"12.00000000\",\"1.20000000\",\"0.00120000\",\"0.00120000\"]', '', '0', '1498838399', '0', '0');
INSERT INTO `ecshecom_market_json` VALUES ('6', 'abc_cny', '[\"10019.00000000\",\"1091.99000000\",\"1.09199000\",\"1.09199000\"]', '', '0', '1498924799', '0', '0');
INSERT INTO `ecshecom_market_json` VALUES ('7', 'abc_cny', '', '', '0', '1499097599', '0', '0');
INSERT INTO `ecshecom_market_json` VALUES ('8', 'doge_cny', '', '', '0', '1503935999', '0', '0');
INSERT INTO `ecshecom_market_json` VALUES ('9', 'ltc_btc', '[\"3.00000000\",\"0.02580000\",\"0.00002580\",\"0.00002580\"]', '', '0', '1509551999', '0', '0');
INSERT INTO `ecshecom_market_json` VALUES ('10', 'ltc_btc', '', '', '0', '1509638399', '0', '0');

-- ----------------------------
-- Table structure for ecshecom_menu
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_menu`;
CREATE TABLE `ecshecom_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `is_dev` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  `ico_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=455 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_menu
-- ----------------------------
INSERT INTO `ecshecom_menu` VALUES ('1', '系统', '0', '1', 'Index/index', '0', '', '', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('2', '内容', '0', '1', 'Article/index', '0', '', '', '0', 'list-alt');
INSERT INTO `ecshecom_menu` VALUES ('3', '用户', '0', '1', 'User/index', '0', '', '', '0', 'user');
INSERT INTO `ecshecom_menu` VALUES ('4', '财务', '0', '1', 'Finance/index', '0', '', '', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('5', '交易', '0', '1', 'Trade/index', '0', '', '', '0', 'stats');
INSERT INTO `ecshecom_menu` VALUES ('6', '应用', '0', '1', 'Game/index', '0', '', '', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('7', '设置', '0', '1', 'Config/index', '0', '', '', '0', 'cog');
INSERT INTO `ecshecom_menu` VALUES ('8', '运营', '0', '1', 'Operate/index', '0', '', '', '0', 'share');
INSERT INTO `ecshecom_menu` VALUES ('9', '工具', '0', '1', 'Tools/index', '0', '', '', '0', 'wrench');
INSERT INTO `ecshecom_menu` VALUES ('10', '扩展', '0', '1', 'Cloud/index', '0', '', '', '0', 'tasks');
INSERT INTO `ecshecom_menu` VALUES ('11', '系统概览', '1', '1', 'Index/index', '0', '', '系统', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('12', '市场统计', '1', '3', 'Index/market', '0', '', '系统', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('13', '文章管理', '2', '1', 'Article/index', '0', '', '内容', '0', 'list-alt');
INSERT INTO `ecshecom_menu` VALUES ('14', '编辑添加', '13', '1', 'Article/edit', '1', '', '内容', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('15', '修改状态', '13', '100', 'Article/status', '1', '', '内容', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('16', '上传图片', '13', '2', 'Article/images', '1', '', '内容管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('18', '编辑', '17', '2', 'Adver/edit', '1', '', '内容管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('19', '修改', '17', '2', 'Adver/status', '1', '', '内容管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('21', '编辑', '20', '3', 'Chat/edit', '1', '', '聊天管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('22', '修改', '20', '3', 'Chat/status', '1', '', '聊天管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('23', '提示文字', '2', '1', 'Text/index', '1', '', '提示管理', '0', 'exclamation-sign');
INSERT INTO `ecshecom_menu` VALUES ('24', '编辑', '23', '1', 'Text/edit', '1', '', '提示管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('25', '修改', '23', '1', 'Text/status', '1', '', '提示管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('26', '用户管理', '3', '1', 'User/index', '0', '', '用户', '0', 'user');
INSERT INTO `ecshecom_menu` VALUES ('32', '确认转出', '26', '8', 'User/myzc_qr', '1', '', '用户管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('33', '用户配置', '3', '1', 'User/config', '1', '', '前台用户管理', '0', 'cog');
INSERT INTO `ecshecom_menu` VALUES ('34', '编辑', '33', '2', 'User/index_edit', '1', '', '用户管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('35', '修改', '33', '2', 'User/index_status', '1', '', '用户管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('37', '财产修改', '26', '3', 'Usercoin/edit', '1', '', '用户管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('39', '新增用户组', '38', '0', 'AuthManager/createGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('40', '编辑用户组', '38', '0', 'AuthManager/editgroup', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('41', '更新用户组', '38', '0', 'AuthManager/writeGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('42', '改变状态', '38', '0', 'AuthManager/changeStatus', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('43', '访问授权', '38', '0', 'AuthManager/access', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('44', '分类授权', '38', '0', 'AuthManager/category', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('45', '成员授权', '38', '0', 'AuthManager/user', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('46', '成员列表授权', '38', '0', 'AuthManager/tree', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('47', '用户组', '38', '0', 'AuthManager/group', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('48', '添加到用户组', '38', '0', 'AuthManager/addToGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('49', '用户组移除', '38', '0', 'AuthManager/removeFromGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('50', '分类添加到用户组', '38', '0', 'AuthManager/addToCategory', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('51', '模型添加到用户组', '38', '0', 'AuthManager/addToModel', '1', '', '权限管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('53', '配置', '52', '1', 'Finance/config', '1', '', '', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('55', '类型', '52', '1', 'Finance/type', '1', '', '', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('56', '状态修改', '52', '1', 'Finance/type_status', '1', '', '', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('60', '修改', '57', '3', 'Mycz/status', '1', '', '充值管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('61', '状态修改', '57', '3', 'Mycztype/status', '1', '', '充值管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('64', '状态修改', '62', '5', 'Mytx/status', '1', '', '提现管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('65', '取消', '62', '5', 'Mytx/excel', '1', '', '提现管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('66', '导入excel', '9', '5', 'Mytx/exportExcel', '1', '', '提现管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('68', '委托管理', '5', '1', 'Trade/index', '0', '', '交易', '0', 'stats');
INSERT INTO `ecshecom_menu` VALUES ('69', '成交记录', '5', '2', 'Trade/log', '0', '', '交易', '0', 'stats');
INSERT INTO `ecshecom_menu` VALUES ('70', '修改状态', '68', '0', 'Trade/status', '1', '', '交易管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('71', '撤销挂单', '68', '0', 'Trade/chexiao', '1', '', '交易管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('74', '认购编辑', '72', '2', 'Issue/edit', '1', '', '认购管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('75', '认购修改', '72', '2', 'Issue/status', '1', '', '认购管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('79', '基本配置', '7', '1', 'Config/index', '0', '', '设置', '0', 'cog');
INSERT INTO `ecshecom_menu` VALUES ('80', '短信配置', '7', '2', 'Config/moble', '0', '', '设置', '0', 'cog');
INSERT INTO `ecshecom_menu` VALUES ('81', '客服配置', '7', '3', 'Config/contact', '0', '', '设置', '0', 'cog');
INSERT INTO `ecshecom_menu` VALUES ('82', '银行配置', '79', '4', 'Config/bank', '0', '', '网站配置', '0', 'credit-card');
INSERT INTO `ecshecom_menu` VALUES ('83', '编辑', '82', '4', 'Config/bank_edit', '1', '', '网站配置', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('85', '编辑', '84', '4', 'Coin/edit', '0', '', '网站配置', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('87', '状态修改', '84', '4', 'Coin/status', '1', '', '网站配置', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('89', '编辑市场', '88', '4', 'Market/edit', '0', '', '', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('91', '状态修改', '88', '4', 'Config/market_add', '1', '', '', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('92', '图形验证码', '95', '7', 'Verify/code', '1', '', '网站配置', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('93', '手机验证码', '95', '7', 'Verify/mobile', '1', '', '网站配置', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('94', '邮件验证码', '95', '7', 'Verify/email', '1', '', '网站配置', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('95', '其他配置', '7', '6', 'Config/qita', '0', '', '设置', '0', 'cog');
INSERT INTO `ecshecom_menu` VALUES ('97', '推广配置', '8', '2', 'Invit/config', '1', '', '推广管理', '0', 'cog');
INSERT INTO `ecshecom_menu` VALUES ('101', '其他模块调用', '9', '4', 'Tools/invoke', '1', '', '其他', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('102', '优化表', '9', '4', 'Tools/optimize', '1', '', '其他', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('103', '修复表', '9', '4', 'Tools/repair', '1', '', '其他', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('104', '删除备份文件', '9', '4', 'Tools/del', '1', '', '其他', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('105', '备份数据库', '9', '4', 'Tools/export', '1', '', '其他', '0', '');
INSERT INTO `ecshecom_menu` VALUES ('106', '还原数据库', '9', '4', 'Tools/import', '1', '', '其他', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('107', '导出数据库', '9', '4', 'Tools/excel', '1', '', '其他', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('108', '导出Excel', '9', '4', 'Tools/exportExcel', '1', '', '其他', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('109', '导入Excel', '9', '4', 'Tools/importExecl', '1', '', '其他', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('115', '图片', '111', '0', 'Shop/images', '0', '', '云购商城', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('116', '菜单管理', '7', '5', 'Menu/index', '1', '', '开发组', '0', 'list');
INSERT INTO `ecshecom_menu` VALUES ('117', '排序', '116', '5', 'Menu/sort', '0', '', '开发组', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('118', '添加', '116', '5', 'Menu/add', '0', '', '开发组', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('119', '编辑', '116', '5', 'Menu/edit', '0', '', '开发组', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('120', '删除', '116', '5', 'Menu/del', '0', '', '开发组', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('121', '是否隐藏', '116', '5', 'Menu/toogleHide', '0', '', '开发组', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('122', '是否开发', '116', '5', 'Menu/toogleDev', '0', '', '开发组', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('123', '导入文件', '7', '5', 'Menu/importFile', '1', '', '开发组', '0', 'log-in');
INSERT INTO `ecshecom_menu` VALUES ('124', '导入', '7', '5', 'Menu/import', '1', '', '开发组', '0', 'log-in');
INSERT INTO `ecshecom_menu` VALUES ('127', '用户登录', '3', '0', 'Login/index', '1', '', '用户配置', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('128', '用户退出', '3', '0', 'Login/loginout', '1', '', '用户配置', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('129', '修改管理员密码', '3', '0', 'User/setpwd', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('131', '用户详情', '3', '4', 'User/detail', '1', '', '前台用户管理', '0', 'time');
INSERT INTO `ecshecom_menu` VALUES ('132', '后台用户详情', '3', '1', 'AdminUser/detail', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('133', '后台用户状态', '3', '1', 'AdminUser/status', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('134', '后台用户新增', '3', '1', 'AdminUser/add', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('135', '后台用户编辑', '3', '1', 'AdminUser/edit', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('138', '编辑', '2', '1', 'Articletype/edit', '1', '', '内容管理', '0', 'list-alt');
INSERT INTO `ecshecom_menu` VALUES ('140', '编辑', '139', '2', 'Link/edit', '1', '', '内容管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('141', '修改', '139', '2', 'Link/status', '1', '', '内容管理', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('155', '服务器队列', '9', '3', 'Tools/queue', '0', '', '工具', '0', 'wrench');
INSERT INTO `ecshecom_menu` VALUES ('156', '钱包检查', '9', '3', 'Tools/qianbao', '1', '', '工具', '0', 'wrench');
INSERT INTO `ecshecom_menu` VALUES ('157', '币种统计', '1', '2', 'Index/coin', '0', '', '系统', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('163', '提示文字', '7', '5', 'Config/text', '0', '', '设置', '0', 'cog');
INSERT INTO `ecshecom_menu` VALUES ('220', '币种评论', '5', '4', 'Trade/comment', '0', '', '交易', '0', 'stats');
INSERT INTO `ecshecom_menu` VALUES ('278', '文章类型', '2', '2', 'Article/type', '0', '', '内容', '0', 'list-alt');
INSERT INTO `ecshecom_menu` VALUES ('279', '广告管理', '2', '3', 'Article/adver', '0', '', '内容', '0', 'list-alt');
INSERT INTO `ecshecom_menu` VALUES ('280', '友情链接', '2', '4', 'Article/link', '0', '', '内容', '0', 'list-alt');
INSERT INTO `ecshecom_menu` VALUES ('282', '登陆日志', '3', '4', 'User/log', '0', '', '用户', '0', 'user');
INSERT INTO `ecshecom_menu` VALUES ('283', '用户钱包', '3', '5', 'User/qianbao', '0', '', '用户', '0', 'user');
INSERT INTO `ecshecom_menu` VALUES ('284', '提现地址', '3', '6', 'User/bank', '0', '', '用户', '0', 'user');
INSERT INTO `ecshecom_menu` VALUES ('285', '用户财产', '3', '7', 'User/coin', '0', '', '用户', '0', 'user');
INSERT INTO `ecshecom_menu` VALUES ('286', '联系地址', '3', '8', 'User/goods', '0', '', '用户', '0', 'user');
INSERT INTO `ecshecom_menu` VALUES ('287', '交易聊天', '5', '3', 'Trade/chat', '0', '', '交易', '0', 'stats');
INSERT INTO `ecshecom_menu` VALUES ('288', '交易市场', '5', '5', 'Trade/market', '0', '', '交易', '0', 'stats');
INSERT INTO `ecshecom_menu` VALUES ('289', '交易推荐', '5', '6', 'Trade/invit', '0', '', '交易', '0', 'stats');
INSERT INTO `ecshecom_menu` VALUES ('290', '财务明细', '4', '1', 'Finance/index', '0', '', '财务', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('291', '人民币充值', '4', '2', 'Finance/mycz', '0', '', '财务', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('292', '人民币充值方式', '4', '3', 'Finance/myczType', '0', '', '财务', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('293', '人民币提现', '4', '4', 'Finance/mytx', '0', '', '财务', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('294', '人民币提现配置', '4', '5', 'Finance/mytxConfig', '0', '', '财务', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('295', '虚拟币转入', '4', '6', 'Finance/myzr', '0', '', '财务', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('296', '虚拟币转出', '4', '7', 'Finance/myzc', '0', '', '财务', '0', 'th-list');
INSERT INTO `ecshecom_menu` VALUES ('297', '修改状态', '291', '100', 'Finance/myczStatus', '1', '', '财务', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('298', '确认到账', '291', '100', 'Finance/myczQueren', '1', '', '财务', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('299', '编辑添加', '292', '1', 'Finance/myczTypeEdit', '1', '', '财务', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('300', '状态修改', '292', '2', 'Finance/myczTypeStatus', '1', '', '财务', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('301', '上传图片', '292', '2', 'Finance/myczTypeImage', '1', '', '财务', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('302', '修改状态', '293', '2', 'Finance/mytxStatus', '1', '', '财务', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('303', '导出选中', '293', '3', 'Finance/mytxExcel', '1', '', '财务', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('304', '正在处理', '293', '4', 'Finance/mytxChuli', '1', '', '财务', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('305', '撤销提现', '293', '5', 'Finance/mytxChexiao', '1', '', '财务', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('306', '确认提现', '293', '6', 'Finance/mytxQueren', '1', '', '财务', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('307', '确认转出', '296', '6', 'Finance/myzcQueren', '1', '', '财务', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('309', '清理缓存', '9', '1', 'Tools/index', '0', '', '工具', '0', 'wrench');
INSERT INTO `ecshecom_menu` VALUES ('310', '备份数据库', '9', '2', 'Tools/dataExport', '1', '', '工具', '0', 'wrench');
INSERT INTO `ecshecom_menu` VALUES ('311', '还原数据库', '9', '2', 'Tools/dataImport', '1', '', '工具', '0', 'wrench');
INSERT INTO `ecshecom_menu` VALUES ('312', '管理员管理', '3', '2', 'User/admin', '0', '', '用户', '0', 'user');
INSERT INTO `ecshecom_menu` VALUES ('313', '权限列表', '3', '3', 'User/auth', '0', '', '用户', '0', 'user');
INSERT INTO `ecshecom_menu` VALUES ('314', '编辑添加', '26', '1', 'User/edit', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('315', '修改状态', '26', '1', 'User/status', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('316', '编辑添加', '312', '1', 'User/adminEdit', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('317', '修改状态', '312', '1', 'User/adminStatus', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('318', '编辑添加', '313', '1', 'User/authEdit', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('319', '修改状态', '313', '1', 'User/authStatus', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('320', '重新初始化权限', '313', '1', 'User/authStart', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('321', '编辑添加', '282', '1', 'User/logEdit', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('322', '修改状态', '282', '1', 'User/logStatus', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('323', '编辑添加', '283', '1', 'User/qianbaoEdit', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('324', '修改状态', '283', '1', 'User/qianbaoStatus', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('325', '编辑添加', '284', '1', 'User/bankEdit', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('326', '修改状态', '284', '1', 'User/bankStatus', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('327', '编辑添加', '285', '1', 'User/coinEdit', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('328', '财产统计', '285', '1', 'User/coinLog', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('329', '编辑添加', '286', '1', 'User/goodsEdit', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('330', '修改状态', '286', '1', 'User/goodsStatus', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('331', '编辑添加', '278', '1', 'Article/typeEdit', '1', '', '内容', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('332', '修改状态', '278', '100', 'Article/typeStatus', '1', '', '内容', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('333', '编辑添加', '280', '1', 'Article/linkEdit', '1', '', '内容', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('334', '修改状态', '280', '100', 'Article/linkStatus', '1', '', '内容', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('335', '编辑添加', '279', '1', 'Article/adverEdit', '1', '', '内容', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('336', '修改状态', '279', '100', 'Article/adverStatus', '1', '', '内容', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('337', '上传图片', '279', '100', 'Article/adverImage', '1', '', '内容', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('375', '客服代码', '10', '5', 'Cloud/kefu', '1', '', '扩展', '0', 'tasks');
INSERT INTO `ecshecom_menu` VALUES ('376', '使用', '375', '5', 'Cloud/kefuUp', '1', '', '扩展', '0', 'tasks');
INSERT INTO `ecshecom_menu` VALUES ('377', '访问授权', '313', '1', 'User/authAccess', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('378', '访问授权修改', '313', '1', 'User/authAccessUp', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('379', '成员授权', '313', '1', 'User/authUser', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('380', '成员授权增加', '313', '1', 'User/authUserAdd', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('381', '成员授权解除', '313', '1', 'User/authUserRemove', '1', '', '用户', '0', 'home');
INSERT INTO `ecshecom_menu` VALUES ('382', '币种配置', '7', '4', 'Config/coin', '0', '', '设置', '0', 'cog');
INSERT INTO `ecshecom_menu` VALUES ('383', '推广奖励', '8', '1', 'Operate/index', '0', '', '', '0', 'share');
INSERT INTO `ecshecom_menu` VALUES ('384', 'APP配置', '8', '1', 'App/config', '1', '', 'APP管理', '0', 'time');
INSERT INTO `ecshecom_menu` VALUES ('385', 'APP等级', '8', '2', 'App/vip_config_list', '1', '', 'APP管理', '0', 'time');
INSERT INTO `ecshecom_menu` VALUES ('386', 'WAP广告板块', '8', '3', 'Admin/App/ads_list/block_id/1', '0', '', 'WAP管理', '0', 'time');
INSERT INTO `ecshecom_menu` VALUES ('387', 'APP广告用户', '8', '4', 'App/ads_user', '1', '', 'APP管理', '0', 'time');
INSERT INTO `ecshecom_menu` VALUES ('388', '导航配置', '7', '7', 'Config/daohang', '0', '', '设置', '0', 'cog');
INSERT INTO `ecshecom_menu` VALUES ('418', '主题模板', '10', '4', 'Cloud/theme', '0', '', '扩展', '0', 'tasks');
INSERT INTO `ecshecom_menu` VALUES ('425', '商品管理', '6', '1', 'Shop/index', '0', '', '商城管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('426', '商城配置', '6', '2', 'Shop/config', '0', '', '商城管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('427', '商品类型', '6', '3', 'Shop/type', '0', '', '商城管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('428', '付款方式', '6', '4', 'Shop/coin', '0', '', '商城管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('429', '购物记录', '6', '5', 'Shop/log', '0', '', '商城管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('430', '收货地址', '6', '6', 'Shop/goods', '0', '', '商城管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('433', '分红管理', '6', '3', 'Fenhong/index', '0', '', '分红管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('434', '分红记录', '6', '5', 'Fenhong/log', '0', '', '分红管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('435', '充值记录', '6', '1', 'Huafei/index', '1', '', '话费充值', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('436', '充值配置', '6', '1', 'Huafei/config', '1', '', '话费充值', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('437', '充值金额', '6', '3', 'Huafei/type', '1', '', '话费充值', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('438', '付款方式', '6', '4', 'Huafei/coin', '1', '', '话费充值', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('439', '投票记录', '6', '1', 'Vote/index', '0', '', '新币投票', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('440', '投票类型', '6', '1', 'Vote/type', '0', '', '新币投票', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('441', '理财管理', '6', '1', 'Money/index', '1', '', '理财管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('442', '理财日志', '6', '2', 'Money/log', '1', '', '理财管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('443', '理财明细', '6', '3', 'Money/fee', '1', '', '理财管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('448', '认购管理', '6', '1', 'Issue/index', '0', '', '认购管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('449', '认购记录', '6', '1', 'Issue/log', '0', '', '认购管理', '0', 'globe');
INSERT INTO `ecshecom_menu` VALUES ('450', '中奖管理', '3', '1', 'User/award', '0', '', '用户', '0', 'user');
INSERT INTO `ecshecom_menu` VALUES ('451', '应用管理', '10', '3', 'Cloud/game', '1', '', '扩展', '0', 'tasks');
INSERT INTO `ecshecom_menu` VALUES ('452', '财务中心公告管理', '7', '0', 'FinanceAffiche/index', '0', '', 'FinanceAffiche', '0', '0');
INSERT INTO `ecshecom_menu` VALUES ('453', '财务中心公告管理', '7', '8', 'FinanceAffiche/index', '0', '', '设置', '0', 'cog');
INSERT INTO `ecshecom_menu` VALUES ('454', '编辑', '453', '1', 'FinanceAffiche/edit', '1', '', '设置', '0', 'cog');

-- ----------------------------
-- Table structure for ecshecom_message
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_message`;
CREATE TABLE `ecshecom_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_message
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_message_log
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_message_log`;
CREATE TABLE `ecshecom_message_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_message_log
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_money
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_money`;
CREATE TABLE `ecshecom_money` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `num` bigint(20) unsigned NOT NULL DEFAULT '0',
  `deal` int(11) unsigned NOT NULL DEFAULT '0',
  `tian` int(11) unsigned NOT NULL,
  `fee` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='投资理财表';

-- ----------------------------
-- Records of ecshecom_money
-- ----------------------------
INSERT INTO `ecshecom_money` VALUES ('1', '1111', 'bxb', '1', '0', '11', '11', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_money_fee
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_money_fee`;
CREATE TABLE `ecshecom_money_fee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `money_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `num` int(6) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_money_fee
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_money_log
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_money_log`;
CREATE TABLE `ecshecom_money_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `feea` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `tiana` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `money_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='理财记录表';

-- ----------------------------
-- Records of ecshecom_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_mycz
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_mycz`;
CREATE TABLE `ecshecom_mycz` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `num` float(11,2) unsigned NOT NULL,
  `mum` float(11,2) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `tradeno` varchar(50) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='充值记录表';

-- ----------------------------
-- Records of ecshecom_mycz
-- ----------------------------
INSERT INTO `ecshecom_mycz` VALUES ('1', '1', '100.21', '100.21', 'alipay', 'IT197843', '', '0', '1497342257', '1497342274', '2');
INSERT INTO `ecshecom_mycz` VALUES ('2', '1', '100.66', '0.00', 'bank', 'YS281963', '', '0', '1497343756', '0', '0');
INSERT INTO `ecshecom_mycz` VALUES ('3', '1', '100.59', '0.00', 'bank', 'GU797214', '', '0', '1497343790', '0', '3');
INSERT INTO `ecshecom_mycz` VALUES ('4', '1', '100.71', '0.00', 'alipay', 'SZ175852', '', '0', '1497344272', '0', '0');
INSERT INTO `ecshecom_mycz` VALUES ('5', '1', '100.17', '0.00', 'weixin', 'BX276429', '', '0', '1497344278', '0', '0');
INSERT INTO `ecshecom_mycz` VALUES ('7', '2', '49999.17', '0.00', 'bank', 'UM961374', '', '0', '1497608736', '0', '0');
INSERT INTO `ecshecom_mycz` VALUES ('8', '15', '100.38', '0.00', 'alipay', 'SK572366', '', '0', '1498810456', '0', '0');
INSERT INTO `ecshecom_mycz` VALUES ('9', '15', '100.85', '0.00', 'bank', 'RX461923', '', '0', '1498810690', '0', '0');
INSERT INTO `ecshecom_mycz` VALUES ('10', '17', '1231.72', '0.00', 'alipay', 'WZ935559', '', '0', '1504364115', '0', '0');
INSERT INTO `ecshecom_mycz` VALUES ('11', '17', '12323.53', '0.00', 'weixin', 'ZM716928', '', '0', '1504364202', '0', '0');
INSERT INTO `ecshecom_mycz` VALUES ('12', '17', '1212.95', '0.00', 'alipay', 'YV528677', '', '0', '1504364509', '0', '0');
INSERT INTO `ecshecom_mycz` VALUES ('13', '17', '1212.68', '0.00', 'weixin', 'JC399389', '', '0', '1504364590', '0', '0');
INSERT INTO `ecshecom_mycz` VALUES ('14', '17', '80000.19', '80000.19', 'alipay', 'AQ347817', '', '0', '1504364896', '1504364952', '2');

-- ----------------------------
-- Table structure for ecshecom_mycz_invit
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_mycz_invit`;
CREATE TABLE `ecshecom_mycz_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  `invitid` int(11) unsigned NOT NULL COMMENT '推荐人id',
  `num` decimal(20,2) unsigned NOT NULL COMMENT '操作金额',
  `fee` decimal(20,8) unsigned NOT NULL COMMENT '赠送金额',
  `coinname` varchar(50) NOT NULL COMMENT '赠送币种',
  `mum` decimal(20,8) unsigned NOT NULL COMMENT '到账金额',
  `remark` varchar(250) NOT NULL COMMENT '备注',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值赠送';

-- ----------------------------
-- Records of ecshecom_mycz_invit
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_mycz_type
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_mycz_type`;
CREATE TABLE `ecshecom_mycz_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `max` varchar(200) NOT NULL COMMENT '名称',
  `min` varchar(200) NOT NULL COMMENT '名称',
  `kaihu` varchar(200) NOT NULL COMMENT '名称',
  `truename` varchar(200) NOT NULL COMMENT '名称',
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `extra` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='充值类型';

-- ----------------------------
-- Records of ecshecom_mycz_type
-- ----------------------------
INSERT INTO `ecshecom_mycz_type` VALUES ('1', '100000', '100', '代理支付宝', '代理', 'alipay', '支付宝转账支付', '', '富通财务', '', '59aabf05882fc.jpg', '', '需要在联系方式里面设置支付宝账号', '0', '0', '0', '0');
INSERT INTO `ecshecom_mycz_type` VALUES ('2', '', '', '', '', 'weixin', '微信转账支付', '', '', '', '', '', '需要在联系方式里面设置微信账号', '0', '0', '0', '0');
INSERT INTO `ecshecom_mycz_type` VALUES ('3', '50000', '100', '', '', 'bank', '网银转账支付', '', '6226223005694214', '502182299', '57de3a186ea05.jpg', '', '需要在联系方式里面按照格式天数收款银行账号', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for ecshecom_mytx
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_mytx`;
CREATE TABLE `ecshecom_mytx` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `fee` decimal(20,2) unsigned NOT NULL,
  `mum` decimal(20,2) unsigned NOT NULL,
  `truename` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `bank` varchar(250) NOT NULL,
  `bankprov` varchar(50) NOT NULL,
  `bankcity` varchar(50) NOT NULL,
  `bankaddr` varchar(50) NOT NULL,
  `bankcard` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='提现记录表';

-- ----------------------------
-- Records of ecshecom_mytx
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_myzc
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_myzc`;
CREATE TABLE `ecshecom_myzc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `coinname` (`coinname`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_myzc
-- ----------------------------
INSERT INTO `ecshecom_myzc` VALUES ('1', '214', '12312312313', 'ltc', '', '1.00000000', '0.00000000', '1.00000000', '0', '1509372272', '0', '1');
INSERT INTO `ecshecom_myzc` VALUES ('2', '214', 'admin', 'btc', '', '10.00000000', '0.00000000', '10.00000000', '0', '1509453077', '0', '0');
INSERT INTO `ecshecom_myzc` VALUES ('3', '214', '12312312313', 'ltc', '', '100.00000000', '0.50000000', '99.50000000', '0', '1509458446', '0', '1');
INSERT INTO `ecshecom_myzc` VALUES ('4', '22', 'NXT-5FY5-SN29-EXZB-HF4EK', 'nxt', '', '100000.00000000', '500.00000000', '99500.00000000', '0', '1509629861', '0', '1');
INSERT INTO `ecshecom_myzc` VALUES ('5', '22', 'NXT-5FY5-SN29-EXZB-HF4E1', 'nxt', '', '100000.00000000', '500.00000000', '99500.00000000', '0', '1509629965', '0', '1');
INSERT INTO `ecshecom_myzc` VALUES ('6', '22', 'NXT-5FY5-SN29-EXZB-HF4E1', 'nxt', '', '100000.00000000', '500.00000000', '99500.00000000', '0', '1509630027', '0', '1');
INSERT INTO `ecshecom_myzc` VALUES ('7', '214', 'admin', 'btc', '', '10.00000000', '0.05000000', '9.95000000', '0', '1509630846', '0', '0');
INSERT INTO `ecshecom_myzc` VALUES ('8', '214', '1124MKDQot6GU8Ce8Bp2cfCKbVT83DWMhL', 'btc', '', '10.00000000', '0.05000000', '9.95000000', '0', '1509631232', '0', '1');
INSERT INTO `ecshecom_myzc` VALUES ('9', '214', 'NXT-68QR-5S35-ZY9Y-3P95Q', 'nxt', '', '10000.00000000', '50.00000000', '9950.00000000', '0', '1509632835', '0', '1');
INSERT INTO `ecshecom_myzc` VALUES ('10', '22', '453645ioii', 'dog', '', '979800.00000000', '4899.00000000', '974901.00000000', '0', '1509633760', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_myzc_fee
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_myzc_fee`;
CREATE TABLE `ecshecom_myzc_fee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `coinname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `txid` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fee` decimal(20,8) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ecshecom_myzc_fee
-- ----------------------------
INSERT INTO `ecshecom_myzc_fee` VALUES ('1', '1', '', 'ltc', '', '2', '0.50000000', '100.00000000', '99.50000000', '0', '1509458521', '0', '1');
INSERT INTO `ecshecom_myzc_fee` VALUES ('2', '1', '', 'nxt', '', '2', '500.00000000', '100000.00000000', '99500.00000000', '0', '1509629897', '0', '1');
INSERT INTO `ecshecom_myzc_fee` VALUES ('3', '1', '', 'nxt', '', '2', '500.00000000', '100000.00000000', '99500.00000000', '0', '1509629971', '0', '1');
INSERT INTO `ecshecom_myzc_fee` VALUES ('4', '1', '', 'nxt', '', '2', '500.00000000', '100000.00000000', '99500.00000000', '0', '1509630031', '0', '1');
INSERT INTO `ecshecom_myzc_fee` VALUES ('5', '1', '', 'btc', '', '2', '0.05000000', '10.00000000', '9.95000000', '0', '1509631362', '0', '1');
INSERT INTO `ecshecom_myzc_fee` VALUES ('6', '1', '', 'nxt', '', '2', '50.00000000', '10000.00000000', '9950.00000000', '0', '1509632857', '0', '1');
INSERT INTO `ecshecom_myzc_fee` VALUES ('7', '1', '', 'dog', '', '2', '4899.00000000', '979800.00000000', '974901.00000000', '0', '1509633782', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_myzr
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_myzr`;
CREATE TABLE `ecshecom_myzr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `is_custom_coin` tinyint(1) NOT NULL COMMENT '是否自定义币种',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`),
  KEY `is_custom_coin` (`is_custom_coin`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_myzr
-- ----------------------------
INSERT INTO `ecshecom_myzr` VALUES ('1', '20', 'custom_coin', 'btc', '111eN4P9yW1tU5suhh8TJPJ6VSEhpi7Y4', '0.00000000', '0.00000000', '0.00000000', '0', '1509177626', '0', '0', '1');
INSERT INTO `ecshecom_myzr` VALUES ('2', '213', 'custom_coin', 'btc', '1121nRyvUbdreseTD15JTmhQ1EbKV6bSKD', '1.00000000', '1.00000000', '0.00000000', '0', '1509178848', '1509375352', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('3', '214', 'custom_coin', 'ltc', 'LKE6nXQkMGVZZQTqF2h7QQi6z98hzgr64Z', '1.00000000', '1.00000000', '0.00000000', '0', '1509179096', '1509375364', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('4', '21', 'custom_coin', 'btc', '112UvFChB31fkprVkZpjuEjmoPtVFzGKNV', '0.00000000', '0.00000000', '0.00000000', '0', '1509283255', '0', '0', '1');
INSERT INTO `ecshecom_myzr` VALUES ('5', '21', 'custom_coin', 'dog', 'D599unPH7GhepC8iQSPJQyZy8SXg8YM6Jq', '0.00000000', '0.00000000', '0.00000000', '0', '1509283300', '0', '0', '1');
INSERT INTO `ecshecom_myzr` VALUES ('6', '22', 'custom_coin', 'btc', '112Wzs7LKjJHxH7s4ME6tSjTuzwd6S5e8C', '10.00000000', '10.00000000', '0.00000000', '0', '1509284896', '1509525523', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('7', '22', 'custom_coin', 'dash', 'Xkbs8TXbZ38ZkMJPKNBxN7gHyPXUgyDHBF', '0.00000000', '0.00000000', '0.00000000', '0', '1509284908', '0', '0', '1');
INSERT INTO `ecshecom_myzr` VALUES ('8', '214', 'custom_coin', 'dash', 'Xkv4eixCdP6hyw9uFSJ29SXj7ayU813Rbf', '10000.00000000', '10000.00000000', '0.00000000', '0', '1509290213', '1509779559', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('9', '214', 'custom_coin', 'btc', '1124MKDQot6GU8Ce8Bp2cfCKbVT83DWMhL', '0.00000000', '0.00000000', '0.00000000', '0', '1509290223', '0', '0', '1');
INSERT INTO `ecshecom_myzr` VALUES ('10', '214', 'custom_coin', 'dog', 'D599Tr45PKyKVrTEnRxuEBwuz2aT5ybJWp', '100000.00000000', '100000.00000000', '0.00000000', '0', '1509290240', '1509779083', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('11', '214', 'custom_coin', 'nxt', 'NXT-9PK6-CSNF-VRKP-7Y4ZB', '1.00000000', '1.00000000', '0.00000000', '0', '1509291438', '1509291512', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('12', '214', 'custom_coin', 'ltc', 'LKE6nXQkMGVZZQTqF2h7QQi6z98hzgr64Z', '1.00000000', '1.00000000', '0.00000000', '0', '1509291546', '1509291568', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('13', '214', 'custom_coin', 'btc', '1124MKDQot6GU8Ce8Bp2cfCKbVT83DWMhL', '0.00000000', '0.00000000', '0.00000000', '0', '1509293257', '0', '0', '1');
INSERT INTO `ecshecom_myzr` VALUES ('14', '214', 'custom_coin', 'ltc', 'LKE6nXQkMGVZZQTqF2h7QQi6z98hzgr64Z', '100.00000000', '100.00000000', '0.00000000', '0', '1509293357', '1509458296', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('15', '214', 'custom_coin', 'btc', '1124MKDQot6GU8Ce8Bp2cfCKbVT83DWMhL', '10.00000000', '10.00000000', '0.00000000', '0', '1509375295', '1509452255', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('16', '214', 'custom_coin', 'nxt', 'NXT-9PK6-CSNF-VRKP-7Y4ZB', '100000.00000000', '100000.00000000', '0.00000000', '0', '1509375307', '1509632726', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('17', '22', 'custom_coin', 'dog', 'D59BGGcokgnjesvF6hVCUPwunM4TzZ9YQQ', '2000000.00000000', '2000000.00000000', '0.00000000', '0', '1509525541', '1509525570', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('18', '22', 'custom_coin', 'nxt', 'NXT-5FY5-SN29-EXZB-HF4EK', '900000.00000000', '900000.00000000', '0.00000000', '0', '1509525616', '1509525637', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('19', '22', 'custom_coin', 'ltc', 'LKEJE3sdaEpNdGNMYRUNNY8MMXzgLUEe4C', '200.00000000', '200.00000000', '0.00000000', '0', '1509527779', '1509527797', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('20', '214', 'custom_coin', 'btc', '1124MKDQot6GU8Ce8Bp2cfCKbVT83DWMhL', '100.00000000', '100.00000000', '0.00000000', '0', '1509527920', '1509527945', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('21', '22', 'NXT-5FY5-SN29-EXZB-HF4EK', 'nxt', 'f584893e2b5fc97330417119642ff568', '100000.00000000', '99500.00000000', '500.00000000', '0', '1509629895', '0', '1', '0');
INSERT INTO `ecshecom_myzr` VALUES ('22', '22', 'custom_coin', 'dash', 'Xkbs8TXbZ38ZkMJPKNBxN7gHyPXUgyDHBF', '300.00000000', '300.00000000', '0.00000000', '0', '1509631106', '1509631122', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('23', '214', '1124MKDQot6GU8Ce8Bp2cfCKbVT83DWMhL', 'btc', '6e4f50a23e11607fad478959586612c5', '10.00000000', '9.95000000', '0.05000000', '0', '1509631361', '0', '1', '0');
INSERT INTO `ecshecom_myzr` VALUES ('24', '214', 'custom_coin', 'btc', '1124MKDQot6GU8Ce8Bp2cfCKbVT83DWMhL', '10.00000000', '10.00000000', '0.00000000', '0', '1509635005', '1509635019', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('25', '214', 'custom_coin', 'ardr', 'NXT-3U52-BFJX-QVW5-FAGCM', '10000.00000000', '10000.00000000', '0.00000000', '0', '1509777786', '1509778218', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('26', '214', 'custom_coin', 'dog', 'D599Tr45PKyKVrTEnRxuEBwuz2aT5ybJWp', '100000.00000000', '100000.00000000', '0.00000000', '0', '1509779026', '1509779094', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('27', '214', 'custom_coin', 'ltc', 'LKE6nXQkMGVZZQTqF2h7QQi6z98hzgr64Z', '100.00000000', '100.00000000', '0.00000000', '0', '1509780919', '1509780957', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('28', '21', 'custom_coin', 'dog', 'D599unPH7GhepC8iQSPJQyZy8SXg8YM6Jq', '100.00000000', '100.00000000', '0.00000000', '0', '1509974100', '1509974185', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('29', '21', 'custom_coin', 'btc', '112UvFChB31fkprVkZpjuEjmoPtVFzGKNV', '110.00000000', '110.00000000', '0.00000000', '0', '1509974240', '1509974266', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('30', '214', 'custom_coin', 'qwe', 'adfafdfas', '100000.00000000', '100000.00000000', '0.00000000', '0', '1509985822', '1509985842', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('31', '22', 'custom_coin', 'nxt', 'NXT-5FY5-SN29-EXZB-HF4EK', '0.00000000', '0.00000000', '0.00000000', '0', '1510045229', '0', '0', '1');
INSERT INTO `ecshecom_myzr` VALUES ('32', '214', 'custom_coin', 'nxt', 'NXT-9PK6-CSNF-VRKP-7Y4ZB', '0.00000000', '0.00000000', '0.00000000', '0', '1510045691', '0', '0', '1');
INSERT INTO `ecshecom_myzr` VALUES ('33', '214', 'custom_coin', 'dog', 'D599Tr45PKyKVrTEnRxuEBwuz2aT5ybJWp', '0.00000000', '0.00000000', '0.00000000', '0', '1510045756', '0', '0', '1');
INSERT INTO `ecshecom_myzr` VALUES ('34', '214', 'custom_coin', 'qwe', 'adfafdfas', '10000.00000000', '10000.00000000', '0.00000000', '0', '1510046042', '1510046055', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('35', '214', 'custom_coin', 'jjb', 'dcvfdertghyujki', '10000000.00000000', '10000000.00000000', '0.00000000', '0', '1510046481', '1510046521', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('36', '214', 'custom_coin', 'jjb', 'dcvfdertghyujki', '1234567.00000000', '1234567.00000000', '0.00000000', '0', '1510469929', '1510469983', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('37', '214', 'custom_coin', 'qwe', 'adfafdfas', '12345.00000000', '12345.00000000', '0.00000000', '0', '1510470169', '1510471292', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('38', '214', 'custom_coin', 'dog', 'D599Tr45PKyKVrTEnRxuEBwuz2aT5ybJWp', '0.00000000', '0.00000000', '0.00000000', '0', '1510470319', '0', '0', '1');
INSERT INTO `ecshecom_myzr` VALUES ('39', '214', 'custom_coin', 'ardr', 'NXT-3U52-BFJX-QVW5-FAGCM', '1.00000000', '1.00000000', '0.00000000', '0', '1510470371', '1510470384', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('40', '22', 'custom_coin', 'jjb', 'yuiolkjhyuty', '9000000.00000000', '9000000.00000000', '0.00000000', '0', '1510473243', '1510473264', '1', '1');
INSERT INTO `ecshecom_myzr` VALUES ('41', '22', 'custom_coin', 'qwe', 'rsthfdhh', '8000000.00000000', '8000000.00000000', '0.00000000', '0', '1510475572', '1510475583', '1', '1');

-- ----------------------------
-- Table structure for ecshecom_pool
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_pool`;
CREATE TABLE `ecshecom_pool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `ico` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `limit` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='矿机类型表';

-- ----------------------------
-- Records of ecshecom_pool
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_pool_log
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_pool_log`;
CREATE TABLE `ecshecom_pool_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ico` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `limit` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `use` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='矿机管理';

-- ----------------------------
-- Records of ecshecom_pool_log
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_prompt
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_prompt`;
CREATE TABLE `ecshecom_prompt` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_prompt
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_shop
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_shop`;
CREATE TABLE `ecshecom_shop` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinlist` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `buycoin` varchar(255) NOT NULL DEFAULT 'cny',
  `price` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `num` decimal(20,0) unsigned NOT NULL DEFAULT '0',
  `deal` decimal(20,0) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `max` varchar(255) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `market_price` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `qq3479015851_awardcoinnum` int(4) NOT NULL DEFAULT '0',
  `qq3479015851_awardcoin` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`),
  KEY `deal` (`deal`),
  KEY `price` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城商品表';

-- ----------------------------
-- Records of ecshecom_shop
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_shop_addr
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_shop_addr`;
CREATE TABLE `ecshecom_shop_addr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(50) NOT NULL DEFAULT '0',
  `moble` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_shop_addr
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_shop_coin
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_shop_coin`;
CREATE TABLE `ecshecom_shop_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `shopid` int(11) unsigned NOT NULL COMMENT '商品id',
  `cny` varchar(200) NOT NULL,
  `btc` varchar(200) NOT NULL,
  `ltc` varchar(200) NOT NULL,
  `dog` varchar(200) NOT NULL,
  `eth` varchar(200) NOT NULL,
  `bcc` varchar(200) NOT NULL,
  `xem` varchar(200) NOT NULL,
  `nxt` varchar(200) NOT NULL,
  `dash` varchar(200) NOT NULL,
  `ardr` varchar(200) NOT NULL,
  `qwe` varchar(200) NOT NULL,
  `jjb` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shopid` (`shopid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商品付款方式表';

-- ----------------------------
-- Records of ecshecom_shop_coin
-- ----------------------------
INSERT INTO `ecshecom_shop_coin` VALUES ('1', '1', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_shop_coin` VALUES ('2', '2', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_shop_coin` VALUES ('3', '3', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ecshecom_shop_coin` VALUES ('4', '4', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for ecshecom_shop_log
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_shop_log`;
CREATE TABLE `ecshecom_shop_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `shopid` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `coinname` varchar(50) NOT NULL DEFAULT '0.00',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `addr` varchar(50) NOT NULL DEFAULT '0.0000',
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `xuyao` decimal(20,8) unsigned NOT NULL COMMENT '价',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物记录表';

-- ----------------------------
-- Records of ecshecom_shop_log
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_shop_type
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_shop_type`;
CREATE TABLE `ecshecom_shop_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of ecshecom_shop_type
-- ----------------------------
INSERT INTO `ecshecom_shop_type` VALUES ('1', 'bjp', '保健品', '保健品', '1', '1475942400', '1475942400', '1');
INSERT INTO `ecshecom_shop_type` VALUES ('2', 'ryp', '日用品', '日用品', '2', '1476115200', '1476115200', '1');

-- ----------------------------
-- Table structure for ecshecom_text
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_text`;
CREATE TABLE `ecshecom_text` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_text
-- ----------------------------
INSERT INTO `ecshecom_text` VALUES ('1', 'game_vote', '37', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>37请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1469733741', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('2', 'finance_index', '36财务中心', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span><span style=\"color:#CC33E5;\">财务中心</span><span style=\"color:#CC33E5;\"></span></span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\"><span style=\"color:#EE33EE;\"></span></span>', '0', '1475325266', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('3', 'finance_myzr', '34虚拟币钱包地址', '<span style=\"color:#CC33E5;line-height:21px;background-color:#FFFFFF;\"><span style=\"color:#CC33E5;\"><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:normal;background-color:#FFFFFF;\">虚拟币钱包地址</span></span></span>', '0', '1475325312', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('4', 'finance_myzc', '33转出虚拟币', '<p>\r\n	<span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;line-height:21px;background-color:#FFFFFF;\">转出说明：</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;line-height:21px;background-color:#FFFFFF;\"><span style=\"font-size:14px;color:#CC33E5;\">1：为了安全，转出是由人工</span><span style=\"font-size:14px;color:#CC33E5;\">处理，您提交后我们会在短时间内为你处理</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;line-height:21px;background-color:#FFFFFF;\">2：为了加快转币速度，我们会为每次转币支付网络费，但由于网络的不确定性，部分转币仍会较慢，请耐心等待</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:12px;line-height:21px;background-color:#FFFFFF;\"><span style=\"font-size:14px;color:#CC33E5;\">3：转出的服务费为每次</span><span class=\"coin-feerate\" style=\"font-weight:700;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:24px;font-size:14px;background-color:#FFFFFF;\">1.00%</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:12px;line-height:21px;background-color:#FFFFFF;\"><span class=\"coin-feerate\" style=\"font-weight:700;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#333333;line-height:24px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;background-color:#FFFFFF;\"><span style=\"font-size:14px;color:#CC33E5;\">4：转出</span></span></span></span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;font-size:14px;color:#CC33E5;background-color:#FFFFFF;\">虚拟币</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;\">的单次不低于</span><span class=\"coin-min\" style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;\">10</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;\">，不高于</span><span class=\"coin-limit\" style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;\">300000</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;font-size:14px;color:#CC33E5;background-color:#FFFFFF;\"></span>\r\n</p>', '0', '1475325321', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('5', 'finance_mywt', '32委托管理', '<span style=\"color:#CC33E5;\"><span style=\"line-height:21px;color:#CC33E5;background-color:#FFFFFF;\">请在此查询您的委托记录</span></span>', '0', '1475325496', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('6', 'finance_mycj', '30成交查询', '<span style=\"color:#9933E5;font-size:14px;\"><span style=\"line-height:21px;color:#9933E5;font-size:14px;background-color:#FFFFFF;\">查询全部买入卖出的成交记录</span></span>', '0', '1475325508', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('7', 'finance_mycz', '29人民币充值', '<span style=\"color:#9933E5;line-height:21px;\"><span style=\"color:#9933E5;\"><span style=\"color:#9933E5;font-family:\'Microsoft YaHei\';font-size:14px;line-height:34px;\">只允许使用本人的支付宝进行</span></span></span><span style=\"color:#0096E0;line-height:21px;\"><span><span style=\"color:#FF0D00;font-family:\'Microsoft YaHei\';font-size:14px;line-height:34px;\"><span style=\"color:#9933E5;\"></span><span style=\"color:#9933E5;\">转账充值，请确保汇款人姓名与帐号注册的身份证姓名一致</span></span></span></span><span style=\"color:#9933E5;font-family:\'Microsoft YaHei\';font-size:14px;line-height:34px;\">。充值限额100至50000，充值到账时间为每天早上：09点至11点 &nbsp;-下午16点至18点，请提前做好充值准备</span>', '0', '1475325515', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('8', 'user_index', '28安全中心', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span><span style=\"color:#CC33E5;line-height:21px;background-color:#FFFFFF;\">请在安全中心邦定您的手机跟支付宝等</span></span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\"><span style=\"color:#EE33EE;\"></span></span>', '0', '1475325658', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('9', 'finance_mytx', '27人民币提现', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span> \r\n<h3 style=\"font-family:\'Microsoft YaHei\';font-weight:500;font-size:24px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#9933E5;\">提现须知</span> \r\n</h3>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	1. 提现手续费率1％，每笔提现最低收费2元 。\r\n</p>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	2. 单笔提现限额100元——50000元。\r\n</p>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	3. 人民币提现12小时内到帐，在已汇出12小时后 仍未收到款项，请联系客服。\r\n</p>\r\n</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\"><span style=\"color:#EE33EE;\"></span></span>', '0', '1475325679', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('10', 'user_moble', '26手机绑定', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span> \r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#9933E5;\">请绑定您的手机方便进行充值与提现</span> \r\n</h1>\r\n</span></span>', '0', '1475351892', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('11', 'finance_mytj', '25推荐用户', '<span style=\"color:#9933E5;line-height:21px;font-size:14px;background-color:#FFFFFF;\"><span style=\"color:#9933E5;font-size:14px;\"><span style=\"color:#9933E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30.8px;font-size:14px;background-color:#FFFFFF;\">这是您的专用邀请码：<span style=\"color:#666666;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;line-height:normal;background-color:#FFFFFF;\">奖励下线金额三级分红:一代0.3% 二代0.2% 三代0.1</span></span></span></span>', '0', '1475352280', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('12', 'finance_mywd', '24我的推荐', '<span style=\"color:#CC33E5;\"><span style=\"line-height:21px;color:#CC33E5;background-color:#FFFFFF;\">查询自己下家推荐的人员信息</span></span>', '0', '1475352284', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('13', 'finance_myjp', '23我的奖品', '<span><span style=\"line-height:21px;color:#CC33E5;background-color:#FFFFFF;\">下级充值奖励查看</span></span><span style=\"color:#CC33E5;\"></span>', '0', '1475352285', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('14', 'game_issue', '22认购中心', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">币创币众筹时间：</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">12</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">月</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">12</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">日</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">20:00</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">至</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">12</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">月</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">15</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">日</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">22:00</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">共四天</span></span></span><span style=\"color:#0096E0;line-height:21px;\"><span><span style=\"color:#E53333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;\"><span style=\"font-size:16px;color:#E53333;\">（限购总量200W币）</span></span></span></span>', '0', '1475352288', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('15', 'game_issue_log', '21认购记录', '<span><span style=\"line-height:21px;background-color:#FFFFFF;\">查询您的认购数量记录</span></span>', '0', '1475352293', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('16', 'game_fenhong', '20', '<br />', '0', '1475352294', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('17', 'game_fenhong_log', '19分红记录', '<span><span style=\"font-size:14px;color:#9933E5;\">持有</span><span style=\"color:#9933E5;font-size:14px;\">分红币</span><span style=\"font-size:14px;color:#9933E5;\">（</span><span style=\"font-size:14px;color:#9933E5;\">THC</span><span style=\"font-size:14px;color:#9933E5;\">）每周六分红为：平台交易</span><span style=\"font-size:14px;color:#9933E5;\">THC</span><span style=\"font-size:14px;color:#9933E5;\">币成交额收入的</span><span style=\"font-size:14px;color:#9933E5;\">0.5%.</span><span style=\"font-size:14px;color:#9933E5;\">每天分红时间10：00至14：00官方会发放到个人</span></span><span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;color:#9933E5;\"><span>账户</span></span></span>', '0', '1475352296', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('18', 'game_money', '18', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>18请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475352297', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('19', 'game_money_log', '17', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>17请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475352298', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('20', 'user_paypassword', '16修改交易密码', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span> \r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#9933E5;\">请在下面修改您的交易密码</span> \r\n</h1>\r\n</span></span>', '0', '1475352694', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('21', 'user_password', '69', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475352695', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('22', 'user_nameauth', '15实名认证', '<span style=\"color:#9933E5;\"><span style=\"line-height:21px;color:#9933E5;background-color:#FFFFFF;\">请您实名注册如有错误请联系客服进行修改</span></span>', '0', '1475352696', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('23', 'user_tpwdset', '交易密码输入设置', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>\r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#CC33E5;\">请牢记您的交易密码</span>\r\n</h1>\r\n</span></span>', '0', '1475352698', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('24', 'game_shop', '13', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>13请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475352702', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('25', 'game_issue_buy', '12', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>12请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475352722', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('26', 'game_huafei', '11话费充值', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>\r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#CC33E5;\">话费充值目前不开放</span>\r\n</h1>\r\n</span></span>', '0', '1475359119', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('27', 'user_bank', '支付宝管理', '<span style=\"font-size:14px;color:#CC33E5;\">请绑定您的的支付宝一但绑定不可修改</span>', '0', '1475359192', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('28', 'user_qianbao', '9钱包地址管理', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>\r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#CC33E5;\">目前还不提供转入转出钱包</span>\r\n</h1>\r\n</span></span>', '0', '1475359195', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('29', 'user_log', '8', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>8请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475359241', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('30', 'user_ga', '7', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>7请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475395398', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('31', 'user_alipay', '6绑定支付宝', '<span style=\"color:#CC33E5;line-height:21px;background-color:#FFFFFF;\"><span style=\"color:#CC33E5;\"><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:34px;background-color:#FFFFFF;\">请绑定您的真实支付宝</span></span></span>', '0', '1475395410', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('32', 'user_goods', '5联系地址管理', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>\r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#CC33E5;\">联系地址填写好后期会推出一元夺宝游戏以便收货</span>\r\n</h1>\r\n</span></span>', '0', '1475395413', '0', '1');
INSERT INTO `ecshecom_text` VALUES ('33', 'game_shop_view', '3', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>3请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1476000366', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('34', 'game_shop_log', '2', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>2请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1476002906', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('35', 'game_shop_goods', '1', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>1请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1476002907', '0', '0');
INSERT INTO `ecshecom_text` VALUES ('36', 'finance_myaward', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1482927855', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_trade
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_trade`;
CREATE TABLE `ecshecom_trade` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(30,16) unsigned NOT NULL,
  `num` decimal(30,16) unsigned NOT NULL,
  `deal` decimal(30,16) unsigned NOT NULL,
  `mum` decimal(30,16) unsigned NOT NULL,
  `fee` decimal(30,16) unsigned NOT NULL,
  `type` tinyint(2) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(2) NOT NULL COMMENT '0交易中;1已成交;2已撤销;',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `market` (`market`,`type`,`status`),
  KEY `num` (`num`,`deal`),
  KEY `status` (`status`),
  KEY `market_2` (`market`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COMMENT='交易下单表';

-- ----------------------------
-- Records of ecshecom_trade
-- ----------------------------
INSERT INTO `ecshecom_trade` VALUES ('1', '1', 'bxb_cny', '0.0100000000000000', '1.0000000000000000', '1.0000000000000000', '0.0099900000000000', '0.0000100000000000', '2', '0', '1497340101', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('2', '2', 'bxb_cny', '0.0100000000000000', '0.0100000000000000', '0.0100000000000000', '0.0000999000000000', '0.0000001000000000', '2', '0', '1497340477', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('3', '2', 'bxb_cny', '100.0000000000000000', '0.0100000000000000', '0.0000000000000000', '0.9990000000000000', '0.0010000000000000', '2', '0', '1497340614', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('4', '1', 'bxb_cny', '0.0100000000000000', '1.0000000000000000', '1.0000000000000000', '0.0099900000000000', '0.0000100000000000', '2', '0', '1497341560', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('5', '1', 'bxb_cny', '0.0100000000000000', '1.0000000000000000', '1.0000000000000000', '0.0100100000000000', '0.0000100000000000', '1', '0', '1497342306', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('6', '1', 'bxb_cny', '0.0200000000000000', '1.0000000000000000', '1.0000000000000000', '0.0200200000000000', '0.0000200000000000', '1', '0', '1497669942', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('7', '1', 'bxb_cny', '0.0200000000000000', '1.0000000000000000', '1.0000000000000000', '0.0200200000000000', '0.0000200000000000', '1', '0', '1497669981', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('8', '1', 'bxb_cny', '0.0200000000000000', '1.0000000000000000', '1.0000000000000000', '0.0200200000000000', '0.0000200000000000', '1', '0', '1497670010', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('9', '15', 'bxb_cny', '0.0110000000000000', '100.0000000000000000', '100.0000000000000000', '1.0998900000000000', '0.0001100000000000', '2', '0', '1498715568', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('10', '15', 'bxb_cny', '0.0110000000000000', '85.0000000000000000', '85.0000000000000000', '0.9350935000000000', '0.0000935000000000', '1', '0', '1498715586', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('11', '15', 'abc_cny', '0.1100000000000000', '10.0000000000000000', '10.0000000000000000', '1.0989000000000000', '0.0011000000000000', '2', '0', '1498794969', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('12', '15', 'abc_cny', '0.1000000000000000', '10.0000000000000000', '10.0000000000000000', '0.9990000000000000', '0.0010000000000000', '2', '0', '1498794975', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('13', '15', 'abc_cny', '0.1000000000000000', '10.0000000000000000', '10.0000000000000000', '1.0010000000000000', '0.0010000000000000', '1', '0', '1498795002', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('14', '15', 'abc_cny', '0.0900000000000000', '10.0000000000000000', '1.0000000000000000', '0.9009000000000000', '0.0009000000000000', '1', '0', '1498795031', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('15', '15', 'abc_cny', '0.1100000000000000', '1.0000000000000000', '1.0000000000000000', '0.1101100000000000', '0.0001100000000000', '1', '0', '1498795052', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('16', '15', 'abc_cny', '0.1000000000000000', '10.0000000000000000', '10.0000000000000000', '0.9990000000000000', '0.0010000000000000', '2', '0', '1498795220', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('17', '15', 'abc_cny', '0.0900000000000000', '1.0000000000000000', '1.0000000000000000', '0.0899100000000000', '0.0000900000000000', '2', '0', '1498795253', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('18', '15', 'bxb_cny', '0.0110000000000000', '1.0000000000000000', '1.0000000000000000', '0.0110011000000000', '0.0000011000000000', '1', '0', '1498795314', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('19', '15', 'bxb_cny', '0.0090000000000000', '1.0000000000000000', '1.0000000000000000', '0.0089991000000000', '0.0000009000000000', '2', '0', '1498795344', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('20', '15', 'bxb_cny', '0.0090000000000000', '1.0000000000000000', '1.0000000000000000', '0.0090009000000000', '0.0000009000000000', '1', '0', '1498795351', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('21', '15', 'glc_cny', '0.0550000000000000', '1000.0000000000000000', '0.0000000000000000', '55.0550000000000000', '0.0550000000000000', '1', '0', '1498811066', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('22', '15', 'glc_cny', '0.0540000000000000', '9999.9999999999999999', '0.0000000000000000', '540.5400000000000000', '0.5400000000000000', '1', '0', '1498811121', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('23', '15', 'glc_cny', '0.0550000000000000', '9000.0000000000000000', '0.0000000000000000', '495.4950000000000000', '0.4950000000000000', '1', '0', '1498811149', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('24', '15', 'glc_cny', '0.0550000000000000', '9999.9999999999999999', '0.0000000000000000', '7133.6356246700000000', '7.1265091200000000', '1', '0', '1498811184', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('25', '15', 'glc_cny', '0.0500000000000000', '1000.0000000000000000', '1000.0000000000000000', '50.0500000000000000', '0.0500000000000000', '1', '0', '1498811201', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('26', '15', 'glc_cny', '0.0530000000000000', '1000.0000000000000000', '0.0000000000000000', '53.0530000000000000', '0.0530000000000000', '1', '0', '1498811207', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('27', '15', 'glc_cny', '0.0520000000000000', '1000.0000000000000000', '0.0000000000000000', '52.0520000000000000', '0.0520000000000000', '1', '0', '1498811217', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('28', '15', 'glc_cny', '0.0510000000000000', '1000.0000000000000000', '0.0000000000000000', '51.0510000000000000', '0.0510000000000000', '1', '0', '1498811224', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('29', '15', 'glc_cny', '0.0500000000000000', '100.0000000000000000', '100.0000000000000000', '4.9950000000000000', '0.0050000000000000', '2', '0', '1498811384', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('30', '15', 'glc_cny', '0.0500000000000000', '9999.9999999999999999', '98.9000000000000000', '7971.3004526200000000', '7.9633371200000000', '1', '0', '1498811439', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('31', '15', 'glc_cny', '0.0490000000000000', '100.0000000000000000', '0.0000000000000000', '4.9049000000000000', '0.0049000000000000', '1', '0', '1498811460', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('32', '15', 'glc_cny', '0.0480000000000000', '100.0000000000000000', '0.0000000000000000', '4.8048000000000000', '0.0048000000000000', '1', '0', '1498811468', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('33', '15', 'glc_cny', '0.0470000000000000', '100.0000000000000000', '0.0000000000000000', '4.7047000000000000', '0.0047000000000000', '1', '0', '1498811476', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('34', '15', 'glc_cny', '0.0460000000000000', '100.0000000000000000', '0.0000000000000000', '4.6046000000000000', '0.0046000000000000', '1', '0', '1498811487', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('35', '15', 'glc_cny', '0.0450000000000000', '100.0000000000000000', '0.0000000000000000', '4.5045000000000000', '0.0045000000000000', '1', '0', '1498811504', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('36', '15', 'glc_cny', '0.0500000000000000', '998.9000000000000000', '998.9000000000000000', '49.8950550000000000', '0.0499450000000000', '2', '0', '1498812173', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('37', '15', 'abc_cny', '0.1000000000000000', '100.0000000000000000', '10.0000000000000000', '10.0100000000000000', '0.0100000000000000', '1', '0', '1498868005', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('38', '15', 'abc_cny', '0.1000000000000000', '100.0000000000000000', '0.0000000000000000', '10.0100000000000000', '0.0100000000000000', '1', '0', '1498868016', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('39', '15', 'abc_cny', '0.1100000000000000', '9.0000000000000000', '9.0000000000000000', '0.9909900000000000', '0.0009900000000000', '1', '0', '1498868486', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('40', '15', 'abc_cny', '0.1090000000000000', '9999.9999999999999999', '9999.9999999999999999', '2178.2337858000000000', '2.1804142000000000', '2', '0', '1498869789', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('41', '15', 'abc_cny', '0.1090000000000000', '9999.9999999999999999', '9999.9999999999999999', '1091.0900000000000000', '1.0900000000000000', '1', '0', '1498869910', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('42', '15', 'glc_cny', '0.0550000000000000', '9999.9999999999999999', '9999.9999999999999999', '549.4500000000000000', '0.5500000000000000', '2', '0', '1498871554', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('43', '15', 'glc_cny', '0.0550000000000000', '9999.9999999999999999', '9999.9999999999999999', '550.5500000000000000', '0.5500000000000000', '1', '0', '1498871631', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('44', '15', 'bxb_cny', '0.0200000000000000', '998.6000000000000000', '998.6000000000000000', '19.9700028000000000', '0.0019972000000000', '2', '0', '1498871831', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('45', '15', 'bxb_cny', '0.0200000000000000', '9999.9999999999999999', '1010.6100000000000000', '200.0200000000000000', '0.0200000000000000', '1', '0', '1498871872', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('46', '22', 'btc_cny', '9999.9999999999999999', '1.0000000000000000', '0.0000000000000000', '9999.9999999999999999', '45.5550000000000000', '2', '0', '1509527075', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('47', '22', 'ltc_btc', '0.0001000000000000', '9999.9999999999999999', '0.0000000000000000', '2.0020000000000000', '0.0020000000000000', '1', '0', '1509527205', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('48', '22', 'ltc_btc', '0.0086000000000000', '13.0000000000000000', '3.0000000000000000', '0.1119118000000000', '0.0001118000000000', '1', '0', '1509527385', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('49', '22', 'ltc_btc', '0.0082000000000000', '200.0000000000000000', '0.0000000000000000', '1.6416400000000000', '0.0016400000000000', '1', '0', '1509527403', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('50', '22', 'ltc_btc', '0.0086000000000000', '3.0000000000000000', '3.0000000000000000', '0.0257742000000000', '0.0000258000000000', '2', '0', '1509527883', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('51', '214', 'btc_cny', '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', '1.0010000000000000', '0.0010000000000000', '1', '0', '1509530637', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('52', '214', 'btc_cny', '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', '0.9990000000000000', '0.0010000000000000', '2', '0', '1509530654', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('53', '214', 'btc_btc', '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', '1.0010000000000000', '0.0010000000000000', '1', '0', '1509535357', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('54', '214', 'btc_btc', '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', '0.9990000000000000', '0.0010000000000000', '2', '0', '1509535371', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('55', '22', 'dash_btc', '0.0600000000000000', '10.0000000000000000', '1.0000000000000000', '0.5994000000000000', '0.0006000000000000', '2', '0', '1509631428', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('56', '22', 'dash_btc', '0.0600000000000000', '1.0000000000000000', '1.0000000000000000', '0.0600600000000000', '0.0000600000000000', '1', '0', '1509631434', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('57', '22', 'dog_btc', '0.0000010000000000', '9999.9999999999999999', '9999.9999999999999999', '0.0199800000000000', '0.0000200000000000', '2', '0', '1509631562', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('58', '22', 'dog_btc', '0.0000010000000000', '200.0000000000000000', '200.0000000000000000', '0.0001998000000000', '0.0000002000000000', '2', '0', '1509631605', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('59', '22', 'dog_btc', '0.0000020000000000', '9999.9999999999999999', '9800.0000000000000000', '0.0599400000000000', '0.0000600000000000', '2', '0', '1509631637', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('60', '22', 'dog_btc', '0.0000020000000000', '9999.9999999999999999', '9999.9999999999999999', '0.0600600000000000', '0.0000600000000000', '1', '0', '1509631651', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('61', '22', 'nxt_btc', '0.0000010000000000', '300.0000000000000000', '300.0000000000000000', '0.0002997000000000', '0.0000003000000000', '2', '0', '1509631689', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('62', '22', 'nxt_btc', '0.0000010000000000', '200.0000000000000000', '200.0000000000000000', '0.0002002000000000', '0.0000002000000000', '1', '0', '1509631695', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('63', '214', 'dog_btc', '0.0000000100000000', '1.0000000000000000', '0.0000000000000000', '0.0000000100000000', '0.0000000000000000', '1', '0', '1509777357', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('64', '214', 'dog_btc', '0.0000000100000000', '1.0000000000000000', '0.0000000000000000', '0.0000000100000000', '0.0000000000000000', '1', '0', '1509777384', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('65', '214', 'nxt_btc', '0.0000079100000000', '9999.9999999999999999', '9999.9999999999999999', '0.0791791000000000', '0.0000791000000000', '1', '0', '1509777573', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('66', '214', 'nxt_btc', '0.0000079100000000', '9999.9999999999999999', '9900.0000000000000000', '0.0790209000000000', '0.0000791000000000', '2', '0', '1509777584', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('67', '214', 'nxt_btc', '0.0000079200000000', '1000.0000000000000000', '1000.0000000000000000', '0.0079279200000000', '0.0000079200000000', '1', '0', '1509777662', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('68', '22', 'dog_btc', '0.0000000100000000', '9999.9999999999999999', '9999.9999999999999999', '0.0001998000000000', '0.0000002000000000', '2', '0', '1509777694', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('69', '214', 'nxt_btc', '0.0000079200000000', '1000.0000000000000000', '1000.0000000000000000', '0.0079120800000000', '0.0000079200000000', '2', '0', '1509777695', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('70', '22', 'dog_btc', '0.1234567000000000', '2000.0000000000000000', '0.0000000000000000', '246.6664866000000000', '0.2469134000000000', '2', '0', '1509777723', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('71', '22', 'dog_btc', '0.0000001000000000', '2000.0000000000000000', '2000.0000000000000000', '0.0001998000000000', '0.0000002000000000', '2', '0', '1509777758', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('72', '22', 'dog_btc', '0.0000012300000000', '2000.0000000000000000', '0.0000000000000000', '0.0024575400000000', '0.0000024600000000', '2', '0', '1509777802', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('73', '22', 'dog_btc', '0.0000002000000000', '2000.0000000000000000', '2000.0000000000000000', '0.0003996000000000', '0.0000004000000000', '2', '0', '1509777828', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('74', '22', 'dog_btc', '0.0000010000000000', '2000.0000000000000000', '0.0000000000000000', '0.0019980000000000', '0.0000020000000000', '2', '0', '1509777869', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('75', '22', 'dog_btc', '0.0000009900000000', '9999.9999999999999999', '8100.0000000000000000', '0.0197802000000000', '0.0000198000000000', '2', '0', '1509777958', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('76', '22', 'dog_btc', '0.0000099000000000', '2000.0000000000000000', '0.0000000000000000', '0.0197802000000000', '0.0000198000000000', '2', '0', '1509777980', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('77', '22', 'dog_btc', '0.0000000100000000', '9999.9999999999999999', '9999.9999999999999999', '0.0002002000000000', '0.0000002000000000', '1', '0', '1509778248', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('78', '214', 'ardr_btc', '0.0000311000000000', '9999.9999999999999999', '9999.9999999999999999', '0.3113110000000000', '0.0003110000000000', '1', '0', '1509778612', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('79', '214', 'ardr_btc', '0.0000311000000000', '9999.9999999999999999', '9999.9999999999999999', '0.3106890000000000', '0.0003110000000000', '2', '0', '1509778624', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('80', '214', 'ardr_btc', '0.0000311000000000', '9999.9999999999999999', '9999.9999999999999999', '0.3113110000000000', '0.0003110000000000', '1', '0', '1509778696', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('81', '214', 'ardr_btc', '0.0000311000000000', '9999.9999999999999999', '9999.9999999999999999', '0.3106890000000000', '0.0003110000000000', '2', '0', '1509778712', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('82', '214', 'ardr_btc', '0.0000300000000000', '9999.9999999999999999', '9999.9999999999999999', '0.3003000000000000', '0.0003000000000000', '1', '0', '1509778814', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('83', '214', 'ardr_btc', '0.0000300000000000', '9999.9999999999999999', '9999.9999999999999999', '0.2997000000000000', '0.0003000000000000', '2', '0', '1509778834', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('84', '214', 'dog_btc', '0.0000001700000000', '7890.0000000000000000', '7890.0000000000000000', '0.0013426400000000', '0.0000013400000000', '1', '0', '1509779141', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('85', '214', 'dog_btc', '0.0000001700000000', '5890.0000000000000000', '5890.0000000000000000', '0.0010003000000000', '0.0000010000000000', '2', '0', '1509779175', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('86', '214', 'dash_btc', '0.0380000000000000', '5.0000000000000000', '5.0000000000000000', '0.1901900000000000', '0.0001900000000000', '1', '0', '1509779719', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('87', '214', 'dash_btc', '0.0380000000000000', '5.0000000000000000', '5.0000000000000000', '0.1898100000000000', '0.0001900000000000', '2', '0', '1509779732', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('88', '214', 'dash_btc', '0.0350000000000000', '2.0000000000000000', '1.0000000000000000', '0.0700700000000000', '0.0000700000000000', '1', '0', '1509779754', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('89', '214', 'dash_btc', '0.0345000000000000', '1.0000000000000000', '0.0000000000000000', '0.0345345000000000', '0.0000345000000000', '1', '0', '1509779789', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('90', '214', 'dash_btc', '0.0347000000000000', '2.0000000000000000', '0.0000000000000000', '0.0694694000000000', '0.0000694000000000', '1', '0', '1509779800', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('91', '214', 'dash_btc', '0.0344550000000000', '1.0000000000000000', '0.0000000000000000', '0.0344894600000000', '0.0000344600000000', '1', '0', '1509779820', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('92', '214', 'dash_btc', '0.0348750000000000', '1.0000000000000000', '0.0000000000000000', '0.0349098800000000', '0.0000348800000000', '1', '0', '1509779981', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('93', '214', 'dash_btc', '0.0400000000000000', '1.0000000000000000', '0.0000000000000000', '0.0399600000000000', '0.0000400000000000', '2', '0', '1509780059', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('94', '214', 'dash_btc', '0.0410000000000000', '2.0000000000000000', '0.0000000000000000', '0.0819180000000000', '0.0000820000000000', '2', '0', '1509780069', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('95', '214', 'dog_btc', '0.0000240000000000', '100.0000000000000000', '100.0000000000000000', '0.0024024000000000', '0.0000024000000000', '1', '0', '1509780648', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('96', '214', 'ardr_btc', '0.0000240000000000', '1000.0000000000000000', '0.0000000000000000', '0.0240240000000000', '0.0000240000000000', '1', '0', '1509780704', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('97', '214', 'ardr_btc', '0.0000340000000000', '500.0000000000000000', '0.0000000000000000', '0.0169830000000000', '0.0000170000000000', '2', '0', '1509780725', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('98', '214', 'ltc_btc', '0.0090000000000000', '12.0000000000000000', '0.0000000000000000', '0.1078920000000000', '0.0001080000000000', '2', '0', '1509780965', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('99', '214', 'ltc_btc', '0.0091000000000000', '1.0000000000000000', '0.0000000000000000', '0.0090909000000000', '0.0000091000000000', '2', '0', '1509780986', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('100', '214', 'ltc_btc', '0.0092000000000000', '2.0000000000000000', '0.0000000000000000', '0.0183816000000000', '0.0000184000000000', '2', '0', '1509780997', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('101', '214', 'nxt_btc', '0.0000065000000000', '100.0000000000000000', '11.0000000000000000', '0.0006506500000000', '0.0000006500000000', '1', '0', '1509781158', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('102', '214', 'nxt_btc', '0.0000066000000000', '189.0000000000000000', '189.0000000000000000', '0.0012486500000000', '0.0000012500000000', '1', '0', '1509781168', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('103', '214', 'nxt_btc', '0.0000062000000000', '298.0000000000000000', '0.0000000000000000', '0.0018494500000000', '0.0000018500000000', '1', '0', '1509781184', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('104', '214', 'nxt_btc', '0.0000085000000000', '211.0000000000000000', '0.0000000000000000', '0.0017917100000000', '0.0000017900000000', '2', '0', '1509781211', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('105', '214', 'nxt_btc', '0.0000086500000000', '209.0000000000000000', '0.0000000000000000', '0.0018060400000000', '0.0000018100000000', '2', '0', '1509781226', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('106', '214', 'nxt_btc', '0.0000090000000000', '1000.0000000000000000', '0.0000000000000000', '0.0089910000000000', '0.0000090000000000', '2', '0', '1509781247', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('107', '214', 'dog_btc', '0.0000001000000000', '0.0000001000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '1', '0', '1509972541', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('108', '214', 'dash_btc', '0.0344550000000000', '1.0000000000000000', '0.0000000000000000', '0.0344894600000000', '0.0000344600000000', '1', '0', '1509972925', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('109', '22', 'dog_btc', '0.0000122200000000', '200.0000000000000000', '0.0000000000000000', '0.0024415600000000', '0.0000024400000000', '2', '0', '1509972945', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('110', '22', 'dog_btc', '0.0000122100000000', '200.0000000000000000', '0.0000000000000000', '0.0024395600000000', '0.0000024400000000', '2', '0', '1509973000', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('111', '22', 'nxt_btc', '0.0000021200000000', '200.0000000000000000', '200.0000000000000000', '0.0004235800000000', '0.0000004200000000', '2', '0', '1509973039', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('112', '22', 'nxt_btc', '0.0000001200000000', '200.0000000000000000', '0.0000000000000000', '0.0000240200000000', '0.0000000200000000', '1', '0', '1509973215', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('113', '21', 'dog_btc', '0.0000000200000000', '0.0000000200000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '1', '0', '1509974271', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('114', '21', 'dog_btc', '0.0000000200000000', '0.0000000200000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '1', '0', '1509974287', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('115', '214', 'dog_btc', '0.0000000300000000', '11.0000000000000000', '0.0000000000000000', '0.0000003300000000', '0.0000000000000000', '1', '0', '1509974808', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('116', '214', 'dog_btc', '0.0000000400000000', '12.0000000000000000', '0.0000000000000000', '0.0000004800000000', '0.0000000000000000', '1', '0', '1509974825', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('117', '214', 'dog_btc', '0.0000000500000000', '123.0000000000000000', '0.0000000000000000', '0.0000061600000000', '0.0000000100000000', '1', '0', '1509974969', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('118', '214', 'dog_btc', '0.0000000600000000', '122.0000000000000000', '0.0000000000000000', '0.0000073300000000', '0.0000000100000000', '1', '0', '1509974986', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('119', '214', 'dog_btc', '0.0000000700000000', '0.0000000300000000', '0.0000000000000000', '0.0000000000000021', '0.0000000000000000', '1', '0', '1509983839', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('120', '214', 'ardr_btc', '0.0000240000000000', '1.0000000000000000', '1.0000000000000000', '0.0000240240000000', '0.0000000200000000', '1', '0', '1509984423', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('121', '214', 'ardr_btc', '0.0000340000000000', '1.0000000000000000', '1.0000000000000000', '0.0000339700000000', '0.0000000300000000', '2', '0', '1509984435', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('122', '214', 'nxt_btc', '0.0000065100000000', '200.0000000000000000', '0.0000000000000000', '0.0013033020000000', '0.0000013000000000', '1', '0', '1509984650', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('123', '214', 'nxt_btc', '0.0000084900000000', '200.0000000000000000', '0.0000000000000000', '0.0016963000000000', '0.0000017000000000', '2', '0', '1509984922', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('124', '214', 'dog_btc', '0.0000002000000000', '1000.0000000000000000', '220.0000000000000000', '0.0002002000000000', '0.0000002000000000', '1', '0', '1509985147', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('125', '214', 'dog_btc', '0.0000002100000000', '100.0000000000000000', '100.0000000000000000', '0.0000210210000000', '0.0000000200000000', '1', '0', '1509985265', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('126', '214', 'dash_btc', '0.0350000000000000', '1.0000000000000000', '1.0000000000000000', '0.0349650000000000', '0.0000350000000000', '2', '0', '1509985336', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('127', '214', 'qwe_btc', '0.0000000500000000', '9999.9999999999999999', '0.0000000000000000', '0.0050050000000000', '0.0000050000000000', '1', '0', '1509985909', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('128', '214', 'qwe_btc', '0.0000000600000000', '1.0000000000000000', '1.0000000000000000', '0.0000000600000000', '0.0000000000000000', '2', '0', '1509985969', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('129', '214', 'qwe_btc', '0.0000000600000000', '1.0000000000000000', '1.0000000000000000', '0.0000000600600000', '0.0000000000000000', '1', '0', '1509986003', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('130', '214', 'qwe_btc', '0.0000000400000000', '3.0000000000000000', '0.0000000000000000', '0.0000001201200000', '0.0000000000000000', '1', '0', '1509986066', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('131', '214', 'qwe_btc', '0.0000000300000000', '67.0000000000000000', '0.0000000000000000', '0.0000020120100000', '0.0000000000000000', '1', '0', '1509986077', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('132', '214', 'qwe_btc', '0.0000000700000000', '23.0000000000000000', '23.0000000000000000', '0.0000016100000000', '0.0000000000000000', '2', '0', '1509986095', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('133', '214', 'qwe_btc', '0.0000000600000000', '123.0000000000000000', '0.0000000000000000', '0.0000073700000000', '0.0000000100000000', '2', '0', '1509986109', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('134', '214', 'qwe_btc', '0.0000000600000000', '1221.0000000000000000', '10.0000000000000000', '0.0000733332600000', '0.0000000700000000', '1', '0', '1509986215', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('135', '214', 'qwe_btc', '0.0000000800000000', '45.0000000000000000', '0.0000000000000000', '0.0000036000000000', '0.0000000000000000', '2', '0', '1509986230', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('136', '214', 'qwe_btc', '0.0000000600000000', '10.0000000000000000', '10.0000000000000000', '0.0000006000000000', '0.0000000000000000', '2', '0', '1509986253', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('137', '214', 'qwe_btc', '0.0000000700000000', '1.0000000000000000', '1.0000000000000000', '0.0000000700700000', '0.0000000000000000', '1', '0', '1509986326', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('138', '214', 'qwe_btc', '0.0000000900000000', '12.0000000000000000', '0.0000000000000000', '0.0000010800000000', '0.0000000000000000', '2', '0', '1509986356', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('139', '214', 'qwe_btc', '0.0000000700000000', '30.0000000000000000', '30.0000000000000000', '0.0000021021000000', '0.0000000000000000', '1', '0', '1509986381', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('140', '214', 'qwe_btc', '0.0000000700000000', '8.0000000000000000', '8.0000000000000000', '0.0000005600000000', '0.0000000000000000', '2', '0', '1509986468', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('141', '214', 'qwe_btc', '0.0000001000000000', '123.0000000000000000', '0.0000000000000000', '0.0000122900000000', '0.0000000100000000', '2', '0', '1509986492', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('142', '214', 'ardr_btc', '0.0000230000000000', '122.0000000000000000', '0.0000000000000000', '0.0028088060000000', '0.0000028100000000', '1', '0', '1509986633', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('143', '214', 'ardr_btc', '0.0000220000000000', '32.0000000000000000', '0.0000000000000000', '0.0007047040000000', '0.0000007000000000', '1', '0', '1509986646', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('144', '214', 'ardr_btc', '0.0000345000000000', '223.0000000000000000', '0.0000000000000000', '0.0076858100000000', '0.0000076900000000', '2', '0', '1509986660', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('145', '214', 'ardr_btc', '0.0000341200000000', '134.0000000000000000', '0.0000000000000000', '0.0045675100000000', '0.0000045700000000', '2', '0', '1509986672', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('146', '214', 'ardr_btc', '0.0000240000000000', '1.0000000000000000', '1.0000000000000000', '0.0000239800000000', '0.0000000200000000', '2', '0', '1509986690', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('147', '214', 'ardr_btc', '0.0000345000000000', '1.0000000000000000', '1.0000000000000000', '0.0000345345000000', '0.0000000300000000', '1', '0', '1509986797', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('148', '214', 'ardr_btc', '0.0000345100000000', '13.0000000000000000', '0.0000000000000000', '0.0004481800000000', '0.0000004500000000', '2', '0', '1509986848', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('149', '214', 'qwe_btc', '0.0000001100000000', '42.0000000000000000', '0.0000000000000000', '0.0000046200000000', '0.0000000000000000', '2', '0', '1509986949', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('150', '214', 'qwe_btc', '0.0000000700000000', '12.0000000000000000', '12.0000000000000000', '0.0000008400000000', '0.0000000000000000', '2', '0', '1509986973', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('151', '21', 'dog_btc', '0.0000012000000000', '9999.9999999999999999', '9999.9999999999999999', '0.1201200000000000', '0.0001200000000000', '1', '0', '1510017407', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('152', '214', 'dash_btc', '0.0420000000000000', '10.0000000000000000', '0.0000000000000000', '0.4195800000000000', '0.0004200000000000', '2', '0', '1510045011', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('153', '214', 'jjb_btc', '0.0000001200000000', '9999.9999999999999999', '0.0000000000000000', '1.2012000000000000', '0.0012000000000000', '1', '0', '1510046793', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('154', '214', 'jjb_btc', '0.0000001300000000', '9999.9999999999999999', '1.0000000000000000', '0.0130130000000000', '0.0000130000000000', '1', '0', '1510047034', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('155', '214', 'jjb_btc', '0.0000002400000000', '100.0000000000000000', '100.0000000000000000', '0.0000239800000000', '0.0000000200000000', '2', '0', '1510047076', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('156', '214', 'jjb_btc', '0.0000002800000000', '99.0000000000000000', '0.0000000000000000', '0.0000276900000000', '0.0000000300000000', '2', '0', '1510047102', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('157', '214', 'jjb_btc', '0.0000003000000000', '123.0000000000000000', '0.0000000000000000', '0.0000368600000000', '0.0000000400000000', '2', '0', '1510047122', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('158', '214', 'jjb_btc', '0.0000001000000000', '322.0000000000000000', '0.0000000000000000', '0.0000322322000000', '0.0000000300000000', '1', '0', '1510047139', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('159', '214', 'jjb_btc', '0.0000002400000000', '1.0000000000000000', '1.0000000000000000', '0.0000002402400000', '0.0000000000000000', '1', '0', '1510047154', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('160', '214', 'jjb_btc', '0.0000001300000000', '1.0000000000000000', '1.0000000000000000', '0.0000001300000000', '0.0000000000000000', '2', '0', '1510047183', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('161', '214', 'dash_btc', '0.0360000000000000', '12.0000000000000000', '0.0000000000000000', '0.4324319999999999', '0.0004320000000000', '1', '0', '1510053990', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('162', '22', 'qwe_btc', '0.0000000700000000', '9999.9999999999999999', '12.0000000000000000', '1.4014000000000002', '0.0014000000000000', '1', '0', '1510471565', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('163', '22', 'jjb_btc', '0.0000001400000000', '9999.9999999999999999', '0.0000000000000000', '0.7007000000000001', '0.0007000000000000', '1', '0', '1510471637', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('164', '22', 'jjb_btc', '0.0000001400000000', '9999.9999999999999999', '0.0000000000000000', '0.0028028000000000', '0.0000028000000000', '1', '0', '1510471653', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('165', '22', 'jjb_btc', '0.0000001800000000', '9999.9999999999999999', '0.0000000000000000', '0.0900900000000000', '0.0000900000000000', '1', '0', '1510471757', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('166', '214', 'jjb_btc', '0.0000001900000000', '9999.9999999999999999', '0.0000000000000000', '0.0095095000000000', '0.0000095000000000', '1', '0', '1510471839', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('167', '214', 'qwe_btc', '0.0000000600000000', '9999.9999999999999999', '0.0000000000000000', '0.0030030000000000', '0.0000030000000000', '1', '0', '1510471920', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('168', '214', 'qwe_btc', '0.0000000700000000', '50000.0000000000000000', '0.0000000000000000', '0.0035035000000000', '0.0000035000000000', '1', '0', '1510472680', '0', '2');
INSERT INTO `ecshecom_trade` VALUES ('169', '214', 'qwe_btc', '0.0000000700000000', '7899987.0000000000000000', '0.0000000000000000', '0.5535520890900000', '0.0005530000000000', '1', '0', '1510472736', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('170', '22', 'jjb_btc', '0.0000002400000000', '5000000.0000000000000000', '99.0000000000000000', '1.2012000000000000', '0.0012000000000000', '1', '0', '1510473125', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('171', '22', 'qwe_btc', '0.0000000700000000', '500000.0000000000000000', '0.0000000000000000', '0.0350350000000000', '0.0000350000000000', '1', '0', '1510474154', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('172', '214', 'qwe_btc', '0.0000000800000000', '50.0000000000000000', '0.0000000000000000', '0.0000040040000000', '0.0000000000000000', '1', '0', '1510475236', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('173', '22', 'qwe_btc', '0.0000000700000000', '5000.0000000000000000', '0.0000000000000000', '0.0003496500000000', '0.0000003500000000', '2', '0', '1510475639', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('174', '21', 'ltc_btc', '0.0000010000000000', '100.0000000000000000', '0.0000000000000000', '0.0001001000000000', '0.0000001000000000', '1', '0', '1511253032', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('175', '21', 'dog_btc', '0.0000010000000000', '100.0000000000000000', '100.0000000000000000', '0.0001001000000000', '0.0000001000000000', '1', '0', '1511253418', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('176', '21', 'dog_btc', '0.0000000600000000', '100.0000000000000000', '0.0000000000000000', '0.0000060060000000', '0.0000000100000000', '1', '0', '1511489587', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('177', '21', 'dog_btc', '0.0000000500000000', '100.0000000000000000', '100.0000000000000000', '0.0000050000000000', '0.0000000100000000', '2', '0', '1511502211', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('178', '21', 'dog_btc', '0.0000000600000000', '1000.0000000000000000', '0.0000000000000000', '0.0000600600000000', '0.0000000600000000', '1', '0', '1511503751', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('179', '21', 'dog_btc', '0.0000000900000000', '120.0000000000000000', '120.0000000000000000', '0.0000107900000000', '0.0000000100000000', '2', '0', '1511503765', '0', '1');
INSERT INTO `ecshecom_trade` VALUES ('180', '21', 'dog_btc', '0.0000000700000000', '1500.0000000000000000', '0.0000000000000000', '0.0001051050000000', '0.0000001100000000', '1', '0', '1511505455', '0', '0');
INSERT INTO `ecshecom_trade` VALUES ('181', '21', 'dog_btc', '0.0000001000000000', '200.0000000000000000', '200.0000000000000000', '0.0000199800000000', '0.0000000200000000', '2', '0', '1511505476', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_trade_json
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_trade_json`;
CREATE TABLE `ecshecom_trade_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(100) NOT NULL,
  `data` varchar(500) NOT NULL,
  `type` varchar(100) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `market` (`market`)
) ENGINE=MyISAM AUTO_INCREMENT=972 DEFAULT CHARSET=utf8 COMMENT='交易图表表';

-- ----------------------------
-- Records of ecshecom_trade_json
-- ----------------------------
INSERT INTO `ecshecom_trade_json` VALUES ('1', 'bxb_cny', '[1497342306,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '1', '0', '1497342306', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('2', 'bxb_cny', '[1497342240,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '3', '0', '1497342240', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('3', 'bxb_cny', '[1497342300,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '5', '0', '1497342300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('4', 'bxb_cny', '[1497342000,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '10', '0', '1497342000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('5', 'bxb_cny', '[1497341700,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '15', '0', '1497341700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('6', 'bxb_cny', '[1497340800,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '30', '0', '1497340800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('7', 'bxb_cny', '[1497340800,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '60', '0', '1497340800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('8', 'bxb_cny', '[1497340800,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '120', '0', '1497340800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('9', 'bxb_cny', '[1497340800,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '240', '0', '1497340800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('10', 'bxb_cny', '[1497340800,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '360', '0', '1497340800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('11', 'bxb_cny', '[1497340800,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '720', '0', '1497340800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('12', 'bxb_cny', '[1497340800,\"1.00000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '1440', '0', '1497340800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('13', 'bxb_cny', '[1497340800,\"2.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '10080', '0', '1497340800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('14', 'bxb_cny', '', '1', '0', '1497342366', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('15', 'bxb_cny', '', '3', '0', '1497342420', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('16', 'bxb_cny', '', '5', '0', '1497342600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('17', 'bxb_cny', '', '10', '0', '1497342600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('18', 'bxb_cny', '', '15', '0', '1497342600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('19', 'bxb_cny', '', '30', '0', '1497342600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('940', 'bxb_cny', '', '15', '0', '1497441600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('608', 'bxb_cny', '', '5', '0', '1497361800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('432', 'bxb_cny', '', '3', '0', '1497349800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('244', 'bxb_cny', '', '1', '0', '1497343806', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('242', 'bxb_cny', '', '1', '0', '1497343686', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('26', 'bxb_cny', '', '1', '0', '1497342366', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('27', 'bxb_cny', '', '1', '0', '1497342426', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('28', 'bxb_cny', '', '1', '0', '1497342486', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('29', 'bxb_cny', '', '1', '0', '1497342546', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('30', 'bxb_cny', '', '1', '0', '1497342606', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('31', 'bxb_cny', '', '1', '0', '1497342666', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('32', 'bxb_cny', '', '1', '0', '1497342726', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('33', 'bxb_cny', '', '1', '0', '1497342786', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('34', 'bxb_cny', '', '1', '0', '1497342846', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('35', 'bxb_cny', '', '1', '0', '1497342906', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('36', 'bxb_cny', '', '1', '0', '1497342966', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('37', 'bxb_cny', '', '1', '0', '1497343026', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('38', 'bxb_cny', '', '1', '0', '1497343086', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('39', 'bxb_cny', '', '1', '0', '1497343146', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('40', 'bxb_cny', '', '1', '0', '1497343206', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('41', 'bxb_cny', '', '1', '0', '1497343266', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('42', 'bxb_cny', '', '1', '0', '1497343326', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('43', 'bxb_cny', '', '1', '0', '1497343386', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('44', 'bxb_cny', '', '1', '0', '1497343446', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('45', 'bxb_cny', '', '1', '0', '1497343506', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('46', 'bxb_cny', '', '1', '0', '1497343566', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('47', 'bxb_cny', '', '3', '0', '1497342420', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('48', 'bxb_cny', '', '3', '0', '1497342600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('49', 'bxb_cny', '', '3', '0', '1497342780', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('50', 'bxb_cny', '', '3', '0', '1497342960', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('51', 'bxb_cny', '', '3', '0', '1497343140', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('52', 'bxb_cny', '', '3', '0', '1497343320', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('53', 'bxb_cny', '', '3', '0', '1497343500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('54', 'bxb_cny', '', '3', '0', '1497343680', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('55', 'bxb_cny', '', '3', '0', '1497343860', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('56', 'bxb_cny', '', '3', '0', '1497344040', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('57', 'bxb_cny', '', '3', '0', '1497344220', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('58', 'bxb_cny', '', '3', '0', '1497344400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('59', 'bxb_cny', '', '3', '0', '1497344580', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('60', 'bxb_cny', '', '3', '0', '1497344760', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('61', 'bxb_cny', '', '3', '0', '1497344940', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('62', 'bxb_cny', '', '3', '0', '1497345120', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('63', 'bxb_cny', '', '3', '0', '1497345300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('64', 'bxb_cny', '', '3', '0', '1497345480', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('65', 'bxb_cny', '', '3', '0', '1497345660', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('66', 'bxb_cny', '', '3', '0', '1497345840', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('67', 'bxb_cny', '', '3', '0', '1497346020', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('68', 'bxb_cny', '', '5', '0', '1497342600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('69', 'bxb_cny', '', '5', '0', '1497342900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('70', 'bxb_cny', '', '5', '0', '1497343200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('71', 'bxb_cny', '', '5', '0', '1497343500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('72', 'bxb_cny', '', '5', '0', '1497343800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('73', 'bxb_cny', '', '5', '0', '1497344100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('74', 'bxb_cny', '', '5', '0', '1497344400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('75', 'bxb_cny', '', '5', '0', '1497344700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('76', 'bxb_cny', '', '5', '0', '1497345000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('77', 'bxb_cny', '', '5', '0', '1497345300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('78', 'bxb_cny', '', '5', '0', '1497345600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('79', 'bxb_cny', '', '5', '0', '1497345900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('80', 'bxb_cny', '', '5', '0', '1497346200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('81', 'bxb_cny', '', '5', '0', '1497346500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('82', 'bxb_cny', '', '5', '0', '1497346800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('83', 'bxb_cny', '', '5', '0', '1497347100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('84', 'bxb_cny', '', '5', '0', '1497347400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('85', 'bxb_cny', '', '5', '0', '1497347700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('86', 'bxb_cny', '', '5', '0', '1497348000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('87', 'bxb_cny', '', '5', '0', '1497348300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('88', 'bxb_cny', '', '5', '0', '1497348600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('89', 'bxb_cny', '', '10', '0', '1497342600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('90', 'bxb_cny', '', '10', '0', '1497343200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('91', 'bxb_cny', '', '10', '0', '1497343800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('92', 'bxb_cny', '', '10', '0', '1497344400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('93', 'bxb_cny', '', '10', '0', '1497345000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('94', 'bxb_cny', '', '10', '0', '1497345600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('95', 'bxb_cny', '', '10', '0', '1497346200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('96', 'bxb_cny', '', '10', '0', '1497346800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('97', 'bxb_cny', '', '10', '0', '1497347400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('98', 'bxb_cny', '', '10', '0', '1497348000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('99', 'bxb_cny', '', '10', '0', '1497348600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('100', 'bxb_cny', '', '10', '0', '1497349200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('101', 'bxb_cny', '', '10', '0', '1497349800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('102', 'bxb_cny', '', '10', '0', '1497350400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('103', 'bxb_cny', '', '10', '0', '1497351000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('104', 'bxb_cny', '', '10', '0', '1497351600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('105', 'bxb_cny', '', '10', '0', '1497352200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('106', 'bxb_cny', '', '10', '0', '1497352800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('107', 'bxb_cny', '', '10', '0', '1497353400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('108', 'bxb_cny', '', '10', '0', '1497354000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('109', 'bxb_cny', '', '10', '0', '1497354600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('110', 'bxb_cny', '', '15', '0', '1497342600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('111', 'bxb_cny', '', '15', '0', '1497343500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('112', 'bxb_cny', '', '15', '0', '1497344400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('113', 'bxb_cny', '', '15', '0', '1497345300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('114', 'bxb_cny', '', '15', '0', '1497346200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('115', 'bxb_cny', '', '15', '0', '1497347100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('116', 'bxb_cny', '', '15', '0', '1497348000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('117', 'bxb_cny', '', '15', '0', '1497348900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('118', 'bxb_cny', '', '15', '0', '1497349800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('119', 'bxb_cny', '', '15', '0', '1497350700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('120', 'bxb_cny', '', '15', '0', '1497351600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('121', 'bxb_cny', '', '15', '0', '1497352500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('122', 'bxb_cny', '', '15', '0', '1497353400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('123', 'bxb_cny', '', '15', '0', '1497354300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('124', 'bxb_cny', '', '15', '0', '1497355200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('125', 'bxb_cny', '', '15', '0', '1497356100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('126', 'bxb_cny', '', '15', '0', '1497357000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('127', 'bxb_cny', '', '15', '0', '1497357900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('128', 'bxb_cny', '', '15', '0', '1497358800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('129', 'bxb_cny', '', '15', '0', '1497359700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('130', 'bxb_cny', '', '15', '0', '1497360600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('131', 'bxb_cny', '', '30', '0', '1497342600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('132', 'bxb_cny', '', '30', '0', '1497344400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('133', 'bxb_cny', '', '30', '0', '1497346200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('134', 'bxb_cny', '', '30', '0', '1497348000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('135', 'bxb_cny', '', '30', '0', '1497349800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('136', 'bxb_cny', '', '30', '0', '1497351600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('137', 'bxb_cny', '', '30', '0', '1497353400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('138', 'bxb_cny', '', '30', '0', '1497355200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('139', 'bxb_cny', '', '30', '0', '1497357000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('140', 'bxb_cny', '', '30', '0', '1497358800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('141', 'bxb_cny', '', '30', '0', '1497360600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('142', 'bxb_cny', '', '30', '0', '1497362400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('143', 'bxb_cny', '', '30', '0', '1497364200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('144', 'bxb_cny', '', '30', '0', '1497366000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('145', 'bxb_cny', '', '30', '0', '1497367800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('146', 'bxb_cny', '', '30', '0', '1497369600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('147', 'bxb_cny', '', '30', '0', '1497371400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('148', 'bxb_cny', '', '30', '0', '1497373200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('149', 'bxb_cny', '', '30', '0', '1497375000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('150', 'bxb_cny', '', '30', '0', '1497376800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('151', 'bxb_cny', '', '30', '0', '1497378600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('939', 'bxb_cny', '', '15', '0', '1497440700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('938', 'bxb_cny', '', '15', '0', '1497439800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('937', 'bxb_cny', '', '15', '0', '1497438900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('936', 'bxb_cny', '', '15', '0', '1497438000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('935', 'bxb_cny', '', '15', '0', '1497437100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('934', 'bxb_cny', '', '15', '0', '1497436200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('933', 'bxb_cny', '', '15', '0', '1497435300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('932', 'bxb_cny', '', '15', '0', '1497434400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('931', 'bxb_cny', '', '15', '0', '1497433500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('930', 'bxb_cny', '', '15', '0', '1497432600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('929', 'bxb_cny', '', '10', '0', '1497414600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('928', 'bxb_cny', '', '10', '0', '1497414000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('927', 'bxb_cny', '', '10', '0', '1497413400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('926', 'bxb_cny', '', '10', '0', '1497412800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('925', 'bxb_cny', '', '10', '0', '1497412200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('924', 'bxb_cny', '', '10', '0', '1497411600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('923', 'bxb_cny', '', '10', '0', '1497411000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('922', 'bxb_cny', '', '10', '0', '1497410400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('921', 'bxb_cny', '', '10', '0', '1497409800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('920', 'bxb_cny', '', '10', '0', '1497409200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('919', 'bxb_cny', '', '10', '0', '1497408600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('607', 'bxb_cny', '', '5', '0', '1497361500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('606', 'bxb_cny', '', '5', '0', '1497361200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('605', 'bxb_cny', '', '5', '0', '1497360900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('604', 'bxb_cny', '', '5', '0', '1497360600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('603', 'bxb_cny', '', '3', '0', '1497356820', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('602', 'bxb_cny', '', '3', '0', '1497356640', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('601', 'bxb_cny', '', '3', '0', '1497356460', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('600', 'bxb_cny', '', '3', '0', '1497356280', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('599', 'bxb_cny', '', '3', '0', '1497356100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('598', 'bxb_cny', '', '3', '0', '1497355920', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('597', 'bxb_cny', '', '3', '0', '1497355740', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('596', 'bxb_cny', '', '3', '0', '1497355560', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('595', 'bxb_cny', '', '3', '0', '1497355380', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('594', 'bxb_cny', '', '3', '0', '1497355200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('593', 'bxb_cny', '', '3', '0', '1497355020', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('592', 'bxb_cny', '', '3', '0', '1497354840', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('591', 'bxb_cny', '', '3', '0', '1497354660', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('590', 'bxb_cny', '', '3', '0', '1497354480', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('589', 'bxb_cny', '', '3', '0', '1497354300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('588', 'bxb_cny', '', '3', '0', '1497354120', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('587', 'bxb_cny', '', '3', '0', '1497353940', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('431', 'bxb_cny', '', '3', '0', '1497349620', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('430', 'bxb_cny', '', '1', '0', '1497345966', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('429', 'bxb_cny', '', '1', '0', '1497345906', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('428', 'bxb_cny', '', '1', '0', '1497345846', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('427', 'bxb_cny', '', '1', '0', '1497345786', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('426', 'bxb_cny', '', '1', '0', '1497345726', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('425', 'bxb_cny', '', '1', '0', '1497345666', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('424', 'bxb_cny', '', '1', '0', '1497345606', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('423', 'bxb_cny', '', '1', '0', '1497345546', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('422', 'bxb_cny', '', '1', '0', '1497345486', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('421', 'bxb_cny', '', '1', '0', '1497345426', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('420', 'bxb_cny', '', '1', '0', '1497345366', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('419', 'bxb_cny', '', '1', '0', '1497345306', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('418', 'bxb_cny', '', '1', '0', '1497345246', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('417', 'bxb_cny', '', '1', '0', '1497345186', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('416', 'bxb_cny', '', '1', '0', '1497345126', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('415', 'bxb_cny', '', '1', '0', '1497345066', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('414', 'bxb_cny', '', '1', '0', '1497345006', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('413', 'bxb_cny', '', '1', '0', '1497344946', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('412', 'bxb_cny', '', '1', '0', '1497344886', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('411', 'bxb_cny', '', '1', '0', '1497344826', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('243', 'bxb_cny', '', '1', '0', '1497343746', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('236', 'bxb_cny', '[1497643200,\"1.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '720', '0', '1497643200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('239', 'bxb_cny', '[1497600000,\"1.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '1440', '0', '1497600000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('241', 'bxb_cny', '', '1', '0', '1497343626', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('240', 'bxb_cny', '', '1', '0', '1497343566', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('229', 'bxb_cny', '[1497664800,\"1.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '360', '0', '1497664800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('245', 'bxb_cny', '', '1', '0', '1497343866', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('246', 'bxb_cny', '', '1', '0', '1497343926', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('247', 'bxb_cny', '', '1', '0', '1497343986', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('248', 'bxb_cny', '', '1', '0', '1497344046', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('249', 'bxb_cny', '', '1', '0', '1497344106', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('250', 'bxb_cny', '', '1', '0', '1497344166', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('251', 'bxb_cny', '', '1', '0', '1497344226', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('252', 'bxb_cny', '', '1', '0', '1497344286', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('253', 'bxb_cny', '', '1', '0', '1497344346', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('254', 'bxb_cny', '', '1', '0', '1497344406', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('255', 'bxb_cny', '', '1', '0', '1497344466', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('256', 'bxb_cny', '', '1', '0', '1497344526', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('257', 'bxb_cny', '', '1', '0', '1497344586', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('258', 'bxb_cny', '', '1', '0', '1497344646', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('259', 'bxb_cny', '', '1', '0', '1497344706', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('260', 'bxb_cny', '', '1', '0', '1497344766', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('261', 'bxb_cny', '', '3', '0', '1497346020', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('262', 'bxb_cny', '', '3', '0', '1497346200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('263', 'bxb_cny', '', '3', '0', '1497346380', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('264', 'bxb_cny', '', '3', '0', '1497346560', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('265', 'bxb_cny', '', '3', '0', '1497346740', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('266', 'bxb_cny', '', '3', '0', '1497346920', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('267', 'bxb_cny', '', '3', '0', '1497347100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('268', 'bxb_cny', '', '3', '0', '1497347280', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('269', 'bxb_cny', '', '3', '0', '1497347460', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('270', 'bxb_cny', '', '3', '0', '1497347640', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('271', 'bxb_cny', '', '3', '0', '1497347820', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('272', 'bxb_cny', '', '3', '0', '1497348000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('273', 'bxb_cny', '', '3', '0', '1497348180', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('274', 'bxb_cny', '', '3', '0', '1497348360', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('275', 'bxb_cny', '', '3', '0', '1497348540', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('276', 'bxb_cny', '', '3', '0', '1497348720', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('277', 'bxb_cny', '', '3', '0', '1497348900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('278', 'bxb_cny', '', '3', '0', '1497349080', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('279', 'bxb_cny', '', '3', '0', '1497349260', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('280', 'bxb_cny', '', '3', '0', '1497349440', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('281', 'bxb_cny', '', '3', '0', '1497349620', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('282', 'bxb_cny', '', '5', '0', '1497348600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('283', 'bxb_cny', '', '5', '0', '1497348900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('284', 'bxb_cny', '', '5', '0', '1497349200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('285', 'bxb_cny', '', '5', '0', '1497349500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('286', 'bxb_cny', '', '5', '0', '1497349800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('287', 'bxb_cny', '', '5', '0', '1497350100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('288', 'bxb_cny', '', '5', '0', '1497350400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('289', 'bxb_cny', '', '5', '0', '1497350700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('290', 'bxb_cny', '', '5', '0', '1497351000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('291', 'bxb_cny', '', '5', '0', '1497351300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('292', 'bxb_cny', '', '5', '0', '1497351600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('293', 'bxb_cny', '', '5', '0', '1497351900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('294', 'bxb_cny', '', '5', '0', '1497352200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('295', 'bxb_cny', '', '5', '0', '1497352500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('296', 'bxb_cny', '', '5', '0', '1497352800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('297', 'bxb_cny', '', '5', '0', '1497353100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('298', 'bxb_cny', '', '5', '0', '1497353400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('299', 'bxb_cny', '', '5', '0', '1497353700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('300', 'bxb_cny', '', '5', '0', '1497354000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('301', 'bxb_cny', '', '5', '0', '1497354300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('302', 'bxb_cny', '', '5', '0', '1497354600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('303', 'bxb_cny', '', '10', '0', '1497354600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('304', 'bxb_cny', '', '10', '0', '1497355200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('305', 'bxb_cny', '', '10', '0', '1497355800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('306', 'bxb_cny', '', '10', '0', '1497356400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('307', 'bxb_cny', '', '10', '0', '1497357000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('308', 'bxb_cny', '', '10', '0', '1497357600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('309', 'bxb_cny', '', '10', '0', '1497358200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('310', 'bxb_cny', '', '10', '0', '1497358800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('311', 'bxb_cny', '', '10', '0', '1497359400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('312', 'bxb_cny', '', '10', '0', '1497360000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('313', 'bxb_cny', '', '10', '0', '1497360600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('314', 'bxb_cny', '', '10', '0', '1497361200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('315', 'bxb_cny', '', '10', '0', '1497361800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('316', 'bxb_cny', '', '10', '0', '1497362400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('317', 'bxb_cny', '', '10', '0', '1497363000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('318', 'bxb_cny', '', '10', '0', '1497363600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('319', 'bxb_cny', '', '10', '0', '1497364200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('320', 'bxb_cny', '', '10', '0', '1497364800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('321', 'bxb_cny', '', '10', '0', '1497365400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('322', 'bxb_cny', '', '10', '0', '1497366000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('323', 'bxb_cny', '', '10', '0', '1497366600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('324', 'bxb_cny', '', '15', '0', '1497360600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('325', 'bxb_cny', '', '15', '0', '1497361500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('326', 'bxb_cny', '', '15', '0', '1497362400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('327', 'bxb_cny', '', '15', '0', '1497363300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('328', 'bxb_cny', '', '15', '0', '1497364200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('329', 'bxb_cny', '', '15', '0', '1497365100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('330', 'bxb_cny', '', '15', '0', '1497366000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('331', 'bxb_cny', '', '15', '0', '1497366900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('332', 'bxb_cny', '', '15', '0', '1497367800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('333', 'bxb_cny', '', '15', '0', '1497368700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('334', 'bxb_cny', '', '15', '0', '1497369600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('335', 'bxb_cny', '', '15', '0', '1497370500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('336', 'bxb_cny', '', '15', '0', '1497371400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('337', 'bxb_cny', '', '15', '0', '1497372300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('338', 'bxb_cny', '', '15', '0', '1497373200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('339', 'bxb_cny', '', '15', '0', '1497374100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('340', 'bxb_cny', '', '15', '0', '1497375000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('341', 'bxb_cny', '', '15', '0', '1497375900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('342', 'bxb_cny', '', '15', '0', '1497376800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('343', 'bxb_cny', '', '15', '0', '1497377700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('344', 'bxb_cny', '', '15', '0', '1497378600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('345', 'bxb_cny', '', '30', '0', '1497378600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('346', 'bxb_cny', '', '30', '0', '1497380400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('347', 'bxb_cny', '', '30', '0', '1497382200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('348', 'bxb_cny', '', '30', '0', '1497384000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('349', 'bxb_cny', '', '30', '0', '1497385800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('350', 'bxb_cny', '', '30', '0', '1497387600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('351', 'bxb_cny', '', '30', '0', '1497389400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('352', 'bxb_cny', '', '30', '0', '1497391200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('353', 'bxb_cny', '', '30', '0', '1497393000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('354', 'bxb_cny', '', '30', '0', '1497394800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('355', 'bxb_cny', '', '30', '0', '1497396600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('356', 'bxb_cny', '', '30', '0', '1497398400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('357', 'bxb_cny', '', '30', '0', '1497400200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('358', 'bxb_cny', '', '30', '0', '1497402000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('359', 'bxb_cny', '', '30', '0', '1497403800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('360', 'bxb_cny', '', '30', '0', '1497405600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('361', 'bxb_cny', '', '30', '0', '1497407400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('362', 'bxb_cny', '', '30', '0', '1497409200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('363', 'bxb_cny', '', '30', '0', '1497411000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('364', 'bxb_cny', '', '30', '0', '1497412800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('365', 'bxb_cny', '', '30', '0', '1497414600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('918', 'bxb_cny', '', '10', '0', '1497408000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('917', 'bxb_cny', '', '10', '0', '1497407400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('916', 'bxb_cny', '', '10', '0', '1497406800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('915', 'bxb_cny', '', '10', '0', '1497406200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('914', 'bxb_cny', '', '10', '0', '1497405600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('913', 'bxb_cny', '', '10', '0', '1497405000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('912', 'bxb_cny', '', '10', '0', '1497404400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('911', 'bxb_cny', '', '10', '0', '1497403800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('910', 'bxb_cny', '', '10', '0', '1497403200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('909', 'bxb_cny', '', '10', '0', '1497402600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('908', 'bxb_cny', '', '5', '0', '1497378600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('907', 'bxb_cny', '', '5', '0', '1497378300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('906', 'bxb_cny', '', '5', '0', '1497378000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('905', 'bxb_cny', '', '5', '0', '1497377700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('904', 'bxb_cny', '', '5', '0', '1497377400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('903', 'bxb_cny', '', '5', '0', '1497377100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('902', 'bxb_cny', '', '5', '0', '1497376800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('901', 'bxb_cny', '', '5', '0', '1497376500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('900', 'bxb_cny', '', '5', '0', '1497376200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('899', 'bxb_cny', '', '5', '0', '1497375900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('898', 'bxb_cny', '', '5', '0', '1497375600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('586', 'bxb_cny', '', '3', '0', '1497353760', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('585', 'bxb_cny', '', '3', '0', '1497353580', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('584', 'bxb_cny', '', '3', '0', '1497353400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('583', 'bxb_cny', '', '3', '0', '1497353220', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('582', 'bxb_cny', '', '1', '0', '1497347166', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('581', 'bxb_cny', '', '1', '0', '1497347106', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('580', 'bxb_cny', '', '1', '0', '1497347046', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('579', 'bxb_cny', '', '1', '0', '1497346986', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('578', 'bxb_cny', '', '1', '0', '1497346926', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('577', 'bxb_cny', '', '1', '0', '1497346866', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('576', 'bxb_cny', '', '1', '0', '1497346806', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('575', 'bxb_cny', '', '1', '0', '1497346746', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('574', 'bxb_cny', '', '1', '0', '1497346686', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('573', 'bxb_cny', '', '1', '0', '1497346626', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('572', 'bxb_cny', '', '1', '0', '1497346566', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('571', 'bxb_cny', '', '1', '0', '1497346506', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('570', 'bxb_cny', '', '1', '0', '1497346446', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('569', 'bxb_cny', '', '1', '0', '1497346386', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('568', 'bxb_cny', '', '1', '0', '1497346326', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('567', 'bxb_cny', '', '1', '0', '1497346266', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('566', 'bxb_cny', '', '1', '0', '1497346206', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('410', 'bxb_cny', '', '1', '0', '1497344766', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('409', 'bxb_cny', '[1497657600,\"1.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '240', '0', '1497657600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('433', 'bxb_cny', '', '3', '0', '1497349980', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('434', 'bxb_cny', '', '3', '0', '1497350160', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('435', 'bxb_cny', '', '3', '0', '1497350340', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('436', 'bxb_cny', '', '3', '0', '1497350520', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('437', 'bxb_cny', '', '3', '0', '1497350700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('438', 'bxb_cny', '', '3', '0', '1497350880', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('439', 'bxb_cny', '', '3', '0', '1497351060', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('440', 'bxb_cny', '', '3', '0', '1497351240', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('441', 'bxb_cny', '', '3', '0', '1497351420', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('442', 'bxb_cny', '', '3', '0', '1497351600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('443', 'bxb_cny', '', '3', '0', '1497351780', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('444', 'bxb_cny', '', '3', '0', '1497351960', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('445', 'bxb_cny', '', '3', '0', '1497352140', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('446', 'bxb_cny', '', '3', '0', '1497352320', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('447', 'bxb_cny', '', '3', '0', '1497352500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('448', 'bxb_cny', '', '3', '0', '1497352680', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('449', 'bxb_cny', '', '3', '0', '1497352860', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('450', 'bxb_cny', '', '3', '0', '1497353040', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('451', 'bxb_cny', '', '3', '0', '1497353220', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('452', 'bxb_cny', '', '5', '0', '1497354600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('453', 'bxb_cny', '', '5', '0', '1497354900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('454', 'bxb_cny', '', '5', '0', '1497355200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('455', 'bxb_cny', '', '5', '0', '1497355500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('456', 'bxb_cny', '', '5', '0', '1497355800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('457', 'bxb_cny', '', '5', '0', '1497356100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('458', 'bxb_cny', '', '5', '0', '1497356400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('459', 'bxb_cny', '', '5', '0', '1497356700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('460', 'bxb_cny', '', '5', '0', '1497357000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('461', 'bxb_cny', '', '5', '0', '1497357300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('462', 'bxb_cny', '', '5', '0', '1497357600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('463', 'bxb_cny', '', '5', '0', '1497357900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('464', 'bxb_cny', '', '5', '0', '1497358200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('465', 'bxb_cny', '', '5', '0', '1497358500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('466', 'bxb_cny', '', '5', '0', '1497358800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('467', 'bxb_cny', '', '5', '0', '1497359100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('468', 'bxb_cny', '', '5', '0', '1497359400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('469', 'bxb_cny', '', '5', '0', '1497359700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('470', 'bxb_cny', '', '5', '0', '1497360000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('471', 'bxb_cny', '', '5', '0', '1497360300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('472', 'bxb_cny', '', '5', '0', '1497360600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('473', 'bxb_cny', '', '10', '0', '1497366600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('474', 'bxb_cny', '', '10', '0', '1497367200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('475', 'bxb_cny', '', '10', '0', '1497367800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('476', 'bxb_cny', '', '10', '0', '1497368400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('477', 'bxb_cny', '', '10', '0', '1497369000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('478', 'bxb_cny', '', '10', '0', '1497369600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('479', 'bxb_cny', '', '10', '0', '1497370200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('480', 'bxb_cny', '', '10', '0', '1497370800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('481', 'bxb_cny', '', '10', '0', '1497371400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('482', 'bxb_cny', '', '10', '0', '1497372000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('483', 'bxb_cny', '', '10', '0', '1497372600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('484', 'bxb_cny', '', '10', '0', '1497373200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('485', 'bxb_cny', '', '10', '0', '1497373800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('486', 'bxb_cny', '', '10', '0', '1497374400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('487', 'bxb_cny', '', '10', '0', '1497375000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('488', 'bxb_cny', '', '10', '0', '1497375600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('489', 'bxb_cny', '', '10', '0', '1497376200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('490', 'bxb_cny', '', '10', '0', '1497376800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('491', 'bxb_cny', '', '10', '0', '1497377400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('492', 'bxb_cny', '', '10', '0', '1497378000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('493', 'bxb_cny', '', '10', '0', '1497378600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('494', 'bxb_cny', '', '15', '0', '1497378600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('495', 'bxb_cny', '', '15', '0', '1497379500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('496', 'bxb_cny', '', '15', '0', '1497380400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('497', 'bxb_cny', '', '15', '0', '1497381300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('498', 'bxb_cny', '', '15', '0', '1497382200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('499', 'bxb_cny', '', '15', '0', '1497383100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('500', 'bxb_cny', '', '15', '0', '1497384000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('501', 'bxb_cny', '', '15', '0', '1497384900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('502', 'bxb_cny', '', '15', '0', '1497385800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('503', 'bxb_cny', '', '15', '0', '1497386700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('504', 'bxb_cny', '', '15', '0', '1497387600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('505', 'bxb_cny', '', '15', '0', '1497388500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('506', 'bxb_cny', '', '15', '0', '1497389400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('507', 'bxb_cny', '', '15', '0', '1497390300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('508', 'bxb_cny', '', '15', '0', '1497391200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('509', 'bxb_cny', '', '15', '0', '1497392100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('510', 'bxb_cny', '', '15', '0', '1497393000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('511', 'bxb_cny', '', '15', '0', '1497393900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('512', 'bxb_cny', '', '15', '0', '1497394800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('513', 'bxb_cny', '', '15', '0', '1497395700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('514', 'bxb_cny', '', '15', '0', '1497396600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('515', 'bxb_cny', '', '30', '0', '1497414600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('516', 'bxb_cny', '', '30', '0', '1497416400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('517', 'bxb_cny', '', '30', '0', '1497418200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('518', 'bxb_cny', '', '30', '0', '1497420000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('519', 'bxb_cny', '', '30', '0', '1497421800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('520', 'bxb_cny', '', '30', '0', '1497423600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('521', 'bxb_cny', '', '30', '0', '1497425400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('522', 'bxb_cny', '', '30', '0', '1497427200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('523', 'bxb_cny', '', '30', '0', '1497429000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('524', 'bxb_cny', '', '30', '0', '1497430800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('525', 'bxb_cny', '', '30', '0', '1497432600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('526', 'bxb_cny', '', '30', '0', '1497434400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('527', 'bxb_cny', '', '30', '0', '1497436200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('528', 'bxb_cny', '', '30', '0', '1497438000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('529', 'bxb_cny', '', '30', '0', '1497439800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('530', 'bxb_cny', '', '30', '0', '1497441600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('531', 'bxb_cny', '', '30', '0', '1497443400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('532', 'bxb_cny', '', '30', '0', '1497445200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('533', 'bxb_cny', '', '30', '0', '1497447000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('534', 'bxb_cny', '', '30', '0', '1497448800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('535', 'bxb_cny', '', '30', '0', '1497450600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('897', 'bxb_cny', '', '5', '0', '1497375300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('896', 'bxb_cny', '', '5', '0', '1497375000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('895', 'bxb_cny', '', '5', '0', '1497374700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('894', 'bxb_cny', '', '5', '0', '1497374400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('893', 'bxb_cny', '', '5', '0', '1497374100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('892', 'bxb_cny', '', '5', '0', '1497373800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('891', 'bxb_cny', '', '5', '0', '1497373500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('890', 'bxb_cny', '', '5', '0', '1497373200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('889', 'bxb_cny', '', '5', '0', '1497372900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('888', 'bxb_cny', '', '5', '0', '1497372600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('887', 'bxb_cny', '', '3', '0', '1497364020', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('886', 'bxb_cny', '', '3', '0', '1497363840', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('885', 'bxb_cny', '', '3', '0', '1497363660', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('884', 'bxb_cny', '', '3', '0', '1497363480', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('883', 'bxb_cny', '', '3', '0', '1497363300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('882', 'bxb_cny', '', '3', '0', '1497363120', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('881', 'bxb_cny', '', '3', '0', '1497362940', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('880', 'bxb_cny', '', '3', '0', '1497362760', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('879', 'bxb_cny', '', '3', '0', '1497362580', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('878', 'bxb_cny', '', '3', '0', '1497362400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('877', 'bxb_cny', '', '3', '0', '1497362220', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('565', 'bxb_cny', '', '1', '0', '1497346146', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('564', 'bxb_cny', '', '1', '0', '1497346086', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('563', 'bxb_cny', '', '1', '0', '1497346026', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('562', 'bxb_cny', '', '1', '0', '1497345966', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('561', 'bxb_cny', '[1497664800,\"1.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '120', '0', '1497664800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('609', 'bxb_cny', '', '5', '0', '1497362100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('610', 'bxb_cny', '', '5', '0', '1497362400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('611', 'bxb_cny', '', '5', '0', '1497362700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('612', 'bxb_cny', '', '5', '0', '1497363000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('613', 'bxb_cny', '', '5', '0', '1497363300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('614', 'bxb_cny', '', '5', '0', '1497363600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('615', 'bxb_cny', '', '5', '0', '1497363900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('616', 'bxb_cny', '', '5', '0', '1497364200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('617', 'bxb_cny', '', '5', '0', '1497364500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('618', 'bxb_cny', '', '5', '0', '1497364800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('619', 'bxb_cny', '', '5', '0', '1497365100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('620', 'bxb_cny', '', '5', '0', '1497365400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('621', 'bxb_cny', '', '5', '0', '1497365700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('622', 'bxb_cny', '', '5', '0', '1497366000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('623', 'bxb_cny', '', '5', '0', '1497366300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('624', 'bxb_cny', '', '5', '0', '1497366600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('625', 'bxb_cny', '', '10', '0', '1497378600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('626', 'bxb_cny', '', '10', '0', '1497379200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('627', 'bxb_cny', '', '10', '0', '1497379800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('628', 'bxb_cny', '', '10', '0', '1497380400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('629', 'bxb_cny', '', '10', '0', '1497381000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('630', 'bxb_cny', '', '10', '0', '1497381600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('631', 'bxb_cny', '', '10', '0', '1497382200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('632', 'bxb_cny', '', '10', '0', '1497382800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('633', 'bxb_cny', '', '10', '0', '1497383400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('634', 'bxb_cny', '', '10', '0', '1497384000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('635', 'bxb_cny', '', '10', '0', '1497384600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('636', 'bxb_cny', '', '10', '0', '1497385200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('637', 'bxb_cny', '', '10', '0', '1497385800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('638', 'bxb_cny', '', '10', '0', '1497386400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('639', 'bxb_cny', '', '10', '0', '1497387000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('640', 'bxb_cny', '', '10', '0', '1497387600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('641', 'bxb_cny', '', '10', '0', '1497388200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('642', 'bxb_cny', '', '10', '0', '1497388800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('643', 'bxb_cny', '', '10', '0', '1497389400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('644', 'bxb_cny', '', '10', '0', '1497390000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('645', 'bxb_cny', '', '10', '0', '1497390600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('646', 'bxb_cny', '', '15', '0', '1497396600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('647', 'bxb_cny', '', '15', '0', '1497397500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('648', 'bxb_cny', '', '15', '0', '1497398400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('649', 'bxb_cny', '', '15', '0', '1497399300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('650', 'bxb_cny', '', '15', '0', '1497400200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('651', 'bxb_cny', '', '15', '0', '1497401100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('652', 'bxb_cny', '', '15', '0', '1497402000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('653', 'bxb_cny', '', '15', '0', '1497402900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('654', 'bxb_cny', '', '15', '0', '1497403800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('655', 'bxb_cny', '', '15', '0', '1497404700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('656', 'bxb_cny', '', '15', '0', '1497405600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('657', 'bxb_cny', '', '15', '0', '1497406500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('658', 'bxb_cny', '', '15', '0', '1497407400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('659', 'bxb_cny', '', '15', '0', '1497408300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('660', 'bxb_cny', '', '15', '0', '1497409200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('661', 'bxb_cny', '', '15', '0', '1497410100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('662', 'bxb_cny', '', '15', '0', '1497411000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('663', 'bxb_cny', '', '15', '0', '1497411900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('664', 'bxb_cny', '', '15', '0', '1497412800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('665', 'bxb_cny', '', '15', '0', '1497413700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('666', 'bxb_cny', '', '15', '0', '1497414600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('667', 'bxb_cny', '', '30', '0', '1497450600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('668', 'bxb_cny', '', '30', '0', '1497452400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('669', 'bxb_cny', '', '30', '0', '1497454200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('670', 'bxb_cny', '', '30', '0', '1497456000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('671', 'bxb_cny', '', '30', '0', '1497457800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('672', 'bxb_cny', '', '30', '0', '1497459600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('673', 'bxb_cny', '', '30', '0', '1497461400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('674', 'bxb_cny', '', '30', '0', '1497463200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('675', 'bxb_cny', '', '30', '0', '1497465000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('676', 'bxb_cny', '', '30', '0', '1497466800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('677', 'bxb_cny', '', '30', '0', '1497468600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('678', 'bxb_cny', '', '30', '0', '1497470400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('679', 'bxb_cny', '', '30', '0', '1497472200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('680', 'bxb_cny', '', '30', '0', '1497474000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('681', 'bxb_cny', '', '30', '0', '1497475800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('682', 'bxb_cny', '', '30', '0', '1497477600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('683', 'bxb_cny', '', '30', '0', '1497479400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('684', 'bxb_cny', '', '30', '0', '1497481200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('685', 'bxb_cny', '', '30', '0', '1497483000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('686', 'bxb_cny', '', '30', '0', '1497484800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('687', 'bxb_cny', '', '30', '0', '1497486600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('876', 'bxb_cny', '', '3', '0', '1497362040', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('875', 'bxb_cny', '', '3', '0', '1497361860', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('874', 'bxb_cny', '', '3', '0', '1497361680', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('873', 'bxb_cny', '', '3', '0', '1497361500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('872', 'bxb_cny', '', '3', '0', '1497361320', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('871', 'bxb_cny', '', '3', '0', '1497361140', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('870', 'bxb_cny', '', '3', '0', '1497360960', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('869', 'bxb_cny', '', '3', '0', '1497360780', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('868', 'bxb_cny', '', '3', '0', '1497360600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('867', 'bxb_cny', '', '3', '0', '1497360420', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('866', 'bxb_cny', '', '1', '0', '1497349566', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('865', 'bxb_cny', '', '1', '0', '1497349506', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('864', 'bxb_cny', '', '1', '0', '1497349446', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('863', 'bxb_cny', '', '1', '0', '1497349386', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('862', 'bxb_cny', '', '1', '0', '1497349326', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('861', 'bxb_cny', '', '1', '0', '1497349266', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('860', 'bxb_cny', '', '1', '0', '1497349206', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('859', 'bxb_cny', '', '1', '0', '1497349146', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('858', 'bxb_cny', '', '1', '0', '1497349086', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('857', 'bxb_cny', '', '1', '0', '1497349026', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('856', 'bxb_cny', '', '1', '0', '1497348966', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('709', 'bxb_cny', '', '1', '0', '1497347166', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('710', 'bxb_cny', '', '1', '0', '1497347226', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('711', 'bxb_cny', '', '1', '0', '1497347286', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('712', 'bxb_cny', '', '1', '0', '1497347346', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('713', 'bxb_cny', '', '1', '0', '1497347406', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('714', 'bxb_cny', '', '1', '0', '1497347466', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('715', 'bxb_cny', '', '1', '0', '1497347526', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('716', 'bxb_cny', '', '1', '0', '1497347586', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('717', 'bxb_cny', '', '1', '0', '1497347646', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('718', 'bxb_cny', '', '1', '0', '1497347706', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('719', 'bxb_cny', '', '1', '0', '1497347766', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('720', 'bxb_cny', '', '1', '0', '1497347826', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('721', 'bxb_cny', '', '1', '0', '1497347886', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('722', 'bxb_cny', '', '1', '0', '1497347946', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('723', 'bxb_cny', '', '1', '0', '1497348006', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('724', 'bxb_cny', '', '1', '0', '1497348066', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('725', 'bxb_cny', '', '1', '0', '1497348126', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('726', 'bxb_cny', '', '1', '0', '1497348186', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('727', 'bxb_cny', '', '1', '0', '1497348246', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('728', 'bxb_cny', '', '1', '0', '1497348306', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('729', 'bxb_cny', '', '1', '0', '1497348366', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('730', 'bxb_cny', '', '3', '0', '1497356820', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('731', 'bxb_cny', '', '3', '0', '1497357000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('732', 'bxb_cny', '', '3', '0', '1497357180', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('733', 'bxb_cny', '', '3', '0', '1497357360', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('734', 'bxb_cny', '', '3', '0', '1497357540', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('735', 'bxb_cny', '', '3', '0', '1497357720', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('736', 'bxb_cny', '', '3', '0', '1497357900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('737', 'bxb_cny', '', '3', '0', '1497358080', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('738', 'bxb_cny', '', '3', '0', '1497358260', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('739', 'bxb_cny', '', '3', '0', '1497358440', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('740', 'bxb_cny', '', '3', '0', '1497358620', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('741', 'bxb_cny', '', '3', '0', '1497358800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('742', 'bxb_cny', '', '3', '0', '1497358980', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('743', 'bxb_cny', '', '3', '0', '1497359160', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('744', 'bxb_cny', '', '3', '0', '1497359340', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('745', 'bxb_cny', '', '3', '0', '1497359520', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('746', 'bxb_cny', '', '3', '0', '1497359700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('747', 'bxb_cny', '', '3', '0', '1497359880', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('748', 'bxb_cny', '', '3', '0', '1497360060', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('749', 'bxb_cny', '', '3', '0', '1497360240', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('750', 'bxb_cny', '', '3', '0', '1497360420', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('751', 'bxb_cny', '', '5', '0', '1497366600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('752', 'bxb_cny', '', '5', '0', '1497366900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('753', 'bxb_cny', '', '5', '0', '1497367200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('754', 'bxb_cny', '', '5', '0', '1497367500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('755', 'bxb_cny', '', '5', '0', '1497367800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('756', 'bxb_cny', '', '5', '0', '1497368100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('757', 'bxb_cny', '', '5', '0', '1497368400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('758', 'bxb_cny', '', '5', '0', '1497368700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('759', 'bxb_cny', '', '5', '0', '1497369000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('760', 'bxb_cny', '', '5', '0', '1497369300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('761', 'bxb_cny', '', '5', '0', '1497369600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('762', 'bxb_cny', '', '5', '0', '1497369900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('763', 'bxb_cny', '', '5', '0', '1497370200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('764', 'bxb_cny', '', '5', '0', '1497370500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('765', 'bxb_cny', '', '5', '0', '1497370800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('766', 'bxb_cny', '', '5', '0', '1497371100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('767', 'bxb_cny', '', '5', '0', '1497371400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('768', 'bxb_cny', '', '5', '0', '1497371700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('769', 'bxb_cny', '', '5', '0', '1497372000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('770', 'bxb_cny', '', '5', '0', '1497372300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('771', 'bxb_cny', '', '5', '0', '1497372600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('772', 'bxb_cny', '', '10', '0', '1497390600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('773', 'bxb_cny', '', '10', '0', '1497391200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('774', 'bxb_cny', '', '10', '0', '1497391800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('775', 'bxb_cny', '', '10', '0', '1497392400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('776', 'bxb_cny', '', '10', '0', '1497393000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('777', 'bxb_cny', '', '10', '0', '1497393600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('778', 'bxb_cny', '', '10', '0', '1497394200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('779', 'bxb_cny', '', '10', '0', '1497394800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('780', 'bxb_cny', '', '10', '0', '1497395400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('781', 'bxb_cny', '', '10', '0', '1497396000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('782', 'bxb_cny', '', '10', '0', '1497396600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('783', 'bxb_cny', '', '10', '0', '1497397200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('784', 'bxb_cny', '', '10', '0', '1497397800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('785', 'bxb_cny', '', '10', '0', '1497398400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('786', 'bxb_cny', '', '10', '0', '1497399000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('787', 'bxb_cny', '', '10', '0', '1497399600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('788', 'bxb_cny', '', '10', '0', '1497400200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('789', 'bxb_cny', '', '10', '0', '1497400800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('790', 'bxb_cny', '', '10', '0', '1497401400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('791', 'bxb_cny', '', '10', '0', '1497402000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('792', 'bxb_cny', '', '10', '0', '1497402600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('793', 'bxb_cny', '', '15', '0', '1497414600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('794', 'bxb_cny', '', '15', '0', '1497415500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('795', 'bxb_cny', '', '15', '0', '1497416400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('796', 'bxb_cny', '', '15', '0', '1497417300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('797', 'bxb_cny', '', '15', '0', '1497418200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('798', 'bxb_cny', '', '15', '0', '1497419100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('799', 'bxb_cny', '', '15', '0', '1497420000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('800', 'bxb_cny', '', '15', '0', '1497420900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('801', 'bxb_cny', '', '15', '0', '1497421800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('802', 'bxb_cny', '', '15', '0', '1497422700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('803', 'bxb_cny', '', '15', '0', '1497423600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('804', 'bxb_cny', '', '15', '0', '1497424500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('805', 'bxb_cny', '', '15', '0', '1497425400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('806', 'bxb_cny', '', '15', '0', '1497426300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('807', 'bxb_cny', '', '15', '0', '1497427200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('808', 'bxb_cny', '', '15', '0', '1497428100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('809', 'bxb_cny', '', '15', '0', '1497429000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('810', 'bxb_cny', '', '15', '0', '1497429900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('811', 'bxb_cny', '', '15', '0', '1497430800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('812', 'bxb_cny', '', '15', '0', '1497431700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('813', 'bxb_cny', '', '15', '0', '1497432600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('814', 'bxb_cny', '', '30', '0', '1497486600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('815', 'bxb_cny', '', '30', '0', '1497488400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('816', 'bxb_cny', '', '30', '0', '1497490200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('817', 'bxb_cny', '', '30', '0', '1497492000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('818', 'bxb_cny', '', '30', '0', '1497493800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('819', 'bxb_cny', '', '30', '0', '1497495600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('820', 'bxb_cny', '', '30', '0', '1497497400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('821', 'bxb_cny', '', '30', '0', '1497499200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('822', 'bxb_cny', '', '30', '0', '1497501000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('823', 'bxb_cny', '', '30', '0', '1497502800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('824', 'bxb_cny', '', '30', '0', '1497504600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('825', 'bxb_cny', '', '30', '0', '1497506400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('826', 'bxb_cny', '', '30', '0', '1497508200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('827', 'bxb_cny', '', '30', '0', '1497510000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('828', 'bxb_cny', '', '30', '0', '1497511800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('829', 'bxb_cny', '', '30', '0', '1497513600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('830', 'bxb_cny', '', '30', '0', '1497515400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('831', 'bxb_cny', '', '30', '0', '1497517200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('832', 'bxb_cny', '', '30', '0', '1497519000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('833', 'bxb_cny', '', '30', '0', '1497520800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('834', 'bxb_cny', '', '30', '0', '1497522600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('855', 'bxb_cny', '', '1', '0', '1497348906', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('854', 'bxb_cny', '', '1', '0', '1497348846', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('853', 'bxb_cny', '', '1', '0', '1497348786', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('852', 'bxb_cny', '', '1', '0', '1497348726', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('851', 'bxb_cny', '', '1', '0', '1497348666', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('850', 'bxb_cny', '', '1', '0', '1497348606', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('849', 'bxb_cny', '', '1', '0', '1497348546', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('848', 'bxb_cny', '', '1', '0', '1497348486', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('847', 'bxb_cny', '', '1', '0', '1497348426', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('846', 'bxb_cny', '', '1', '0', '1497348366', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('845', 'bxb_cny', '[1497668400,\"1.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\",\"0.01000000\"]', '60', '0', '1497668400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('941', 'bxb_cny', '', '15', '0', '1497442500', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('942', 'bxb_cny', '', '15', '0', '1497443400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('943', 'bxb_cny', '', '15', '0', '1497444300', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('944', 'bxb_cny', '', '15', '0', '1497445200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('945', 'bxb_cny', '', '15', '0', '1497446100', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('946', 'bxb_cny', '', '15', '0', '1497447000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('947', 'bxb_cny', '', '15', '0', '1497447900', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('948', 'bxb_cny', '', '15', '0', '1497448800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('949', 'bxb_cny', '', '15', '0', '1497449700', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('950', 'bxb_cny', '', '15', '0', '1497450600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('951', 'bxb_cny', '', '30', '0', '1497522600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('952', 'bxb_cny', '', '30', '0', '1497524400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('953', 'bxb_cny', '', '30', '0', '1497526200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('954', 'bxb_cny', '', '30', '0', '1497528000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('955', 'bxb_cny', '', '30', '0', '1497529800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('956', 'bxb_cny', '', '30', '0', '1497531600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('957', 'bxb_cny', '', '30', '0', '1497533400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('958', 'bxb_cny', '', '30', '0', '1497535200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('959', 'bxb_cny', '', '30', '0', '1497537000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('960', 'bxb_cny', '', '30', '0', '1497538800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('961', 'bxb_cny', '', '30', '0', '1497540600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('962', 'bxb_cny', '', '30', '0', '1497542400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('963', 'bxb_cny', '', '30', '0', '1497544200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('964', 'bxb_cny', '', '30', '0', '1497546000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('965', 'bxb_cny', '', '30', '0', '1497547800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('966', 'bxb_cny', '', '30', '0', '1497549600', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('967', 'bxb_cny', '', '30', '0', '1497551400', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('968', 'bxb_cny', '', '30', '0', '1497553200', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('969', 'bxb_cny', '', '30', '0', '1497555000', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('970', 'bxb_cny', '', '30', '0', '1497556800', '0', '0');
INSERT INTO `ecshecom_trade_json` VALUES ('971', 'bxb_cny', '', '30', '0', '1497558600', '0', '0');

-- ----------------------------
-- Table structure for ecshecom_trade_log
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_trade_log`;
CREATE TABLE `ecshecom_trade_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `peerid` int(11) unsigned NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(30,16) unsigned NOT NULL,
  `num` decimal(30,16) unsigned NOT NULL,
  `mum` decimal(30,16) unsigned NOT NULL,
  `fee_buy` decimal(30,16) unsigned NOT NULL,
  `fee_sell` decimal(30,16) unsigned NOT NULL,
  `type` tinyint(2) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `peerid` (`peerid`),
  KEY `main` (`market`,`status`,`addtime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=678 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_trade_log
-- ----------------------------
INSERT INTO `ecshecom_trade_log` VALUES ('1', '1', '1', 'bxb_cny', '0.0100000000000000', '1.0000000000000000', '0.0100000000000000', '0.0000100000000000', '0.0000100000000000', '1', '0', '1497342306', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('2', '1', '2', 'bxb_cny', '0.0100000000000000', '0.0100000000000000', '0.0001000000000000', '0.0000001000000000', '0.0000001000000000', '1', '0', '1497669942', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('3', '1', '1', 'bxb_cny', '0.0100000000000000', '0.9900000000000000', '0.0099000000000000', '0.0000099000000000', '0.0000099000000000', '1', '0', '1497669942', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('4', '1', '1', 'bxb_cny', '0.0100000000000000', '0.0100000000000000', '0.0001000000000000', '0.0000001000000000', '0.0000001000000000', '1', '0', '1497669981', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('5', '1', '15', 'bxb_cny', '0.0200000000000000', '0.9900000000000000', '0.0198000000000000', '0.0000019800000000', '0.0000019800000000', '2', '0', '1498715568', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('6', '1', '15', 'bxb_cny', '0.0200000000000000', '1.0000000000000000', '0.0200000000000000', '0.0000020000000000', '0.0000020000000000', '2', '0', '1498715568', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('7', '15', '15', 'bxb_cny', '0.0110000000000000', '85.0000000000000000', '0.9350000000000000', '0.0000935000000000', '0.0000935000000000', '1', '0', '1498715586', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('8', '15', '15', 'abc_cny', '0.1000000000000000', '10.0000000000000000', '1.0000000000000000', '0.0010000000000000', '0.0010000000000000', '1', '0', '1498795002', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('9', '15', '15', 'abc_cny', '0.1100000000000000', '1.0000000000000000', '0.1100000000000000', '0.0001100000000000', '0.0001100000000000', '1', '0', '1498795052', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('10', '15', '15', 'abc_cny', '0.0900000000000000', '1.0000000000000000', '0.0900000000000000', '0.0000900000000000', '0.0000900000000000', '2', '0', '1498795253', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('11', '15', '15', 'bxb_cny', '0.0110000000000000', '1.0000000000000000', '0.0110000000000000', '0.0000011000000000', '0.0000011000000000', '1', '0', '1498795314', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('12', '15', '15', 'bxb_cny', '0.0090000000000000', '1.0000000000000000', '0.0090000000000000', '0.0000009000000000', '0.0000009000000000', '1', '0', '1498795351', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('13', '15', '15', 'glc_cny', '0.0500000000000000', '100.0000000000000000', '5.0000000000000000', '0.0050000000000000', '0.0050000000000000', '2', '0', '1498811384', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('14', '15', '15', 'glc_cny', '0.0500000000000000', '900.0000000000000000', '45.0000000000000000', '0.0450000000000000', '0.0450000000000000', '2', '0', '1498812173', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('15', '15', '15', 'glc_cny', '0.0500000000000000', '98.9000000000000000', '4.9450000000000000', '0.0049450000000000', '0.0049450000000000', '2', '0', '1498812173', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('16', '15', '15', 'abc_cny', '0.1000000000000000', '10.0000000000000000', '1.0000000000000000', '0.0010000000000000', '0.0010000000000000', '1', '0', '1498868006', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('17', '15', '15', 'abc_cny', '0.1100000000000000', '9.0000000000000000', '0.9900000000000000', '0.0009900000000000', '0.0009900000000000', '1', '0', '1498868486', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('18', '15', '15', 'abc_cny', '0.1090000000000000', '10000.0000000000000000', '1090.0000000000000000', '1.0900000000000000', '1.0900000000000000', '1', '0', '1498869911', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('19', '15', '15', 'glc_cny', '0.0550000000000000', '10000.0000000000000000', '550.0000000000000000', '0.5500000000000000', '0.5500000000000000', '1', '0', '1498871631', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('20', '15', '15', 'bxb_cny', '0.0110000000000000', '12.0100000000000000', '0.1321100000000000', '0.0000132100000000', '0.0000132100000000', '1', '0', '1498871872', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('21', '15', '15', 'bxb_cny', '0.0200000000000000', '998.6000000000000000', '19.9720000000000000', '0.0019972000000000', '0.0019972000000000', '1', '0', '1498871872', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('22', '22', '22', 'ltc_btc', '0.0086000000000000', '3.0000000000000000', '0.0258000000000000', '0.0000258000000000', '0.0000258000000000', '2', '0', '1509527883', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('23', '214', '214', 'btc_cny', '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', '0.0010000000000000', '0.0010000000000000', '2', '0', '1509530654', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('24', '214', '214', 'btc_btc', '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', '0.0010000000000000', '0.0010000000000000', '2', '0', '1509535372', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('25', '22', '22', 'dash_btc', '0.0600000000000000', '1.0000000000000000', '0.0600000000000000', '0.0000600000000000', '0.0000600000000000', '1', '0', '1509631434', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('26', '22', '22', 'dog_btc', '0.0000010000000000', '20000.0000000000000000', '0.0200000000000000', '0.0000200000000000', '0.0000200000000000', '1', '0', '1509631651', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('27', '22', '22', 'dog_btc', '0.0000010000000000', '200.0000000000000000', '0.0002000000000000', '0.0000002000000000', '0.0000002000000000', '1', '0', '1509631651', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('28', '22', '22', 'dog_btc', '0.0000020000000000', '9800.0000000000000000', '0.0196000000000000', '0.0000196000000000', '0.0000196000000000', '1', '0', '1509631651', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('29', '22', '22', 'nxt_btc', '0.0000010000000000', '200.0000000000000000', '0.0002000000000000', '0.0000002000000000', '0.0000002000000000', '1', '0', '1509631695', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('30', '214', '22', 'nxt_btc', '0.0000010000000000', '100.0000000000000000', '0.0001000000000000', '0.0000001000000000', '0.0000001000000000', '1', '0', '1509777573', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('31', '214', '214', 'nxt_btc', '0.0000079100000000', '9900.0000000000000000', '0.0783090000000000', '0.0000783100000000', '0.0000783100000000', '2', '0', '1509777584', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('32', '214', '214', 'nxt_btc', '0.0000079200000000', '1000.0000000000000000', '0.0079200000000000', '0.0000079200000000', '0.0000079200000000', '2', '0', '1509777695', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('33', '22', '22', 'dog_btc', '0.0000000100000000', '20000.0000000000000000', '0.0002000000000000', '0.0000002000000000', '0.0000002000000000', '1', '0', '1509778248', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('34', '214', '214', 'ardr_btc', '0.0000311000000000', '10000.0000000000000000', '0.3110000000000000', '0.0003110000000000', '0.0003110000000000', '2', '0', '1509778624', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('35', '214', '214', 'ardr_btc', '0.0000311000000000', '10000.0000000000000000', '0.3110000000000000', '0.0003110000000000', '0.0003110000000000', '2', '0', '1509778712', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('36', '214', '214', 'ardr_btc', '0.0000300000000000', '10000.0000000000000000', '0.3000000000000000', '0.0003000000000000', '0.0003000000000000', '2', '0', '1509778834', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('37', '214', '22', 'dog_btc', '0.0000001000000000', '2000.0000000000000000', '0.0002000000000000', '0.0000002000000000', '0.0000002000000000', '1', '0', '1509779141', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('38', '214', '214', 'dog_btc', '0.0000001700000000', '5890.0000000000000000', '0.0010013000000000', '0.0000010000000000', '0.0000010000000000', '2', '0', '1509779175', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('39', '214', '214', 'dash_btc', '0.0380000000000000', '5.0000000000000000', '0.1900000000000000', '0.0001900000000000', '0.0001900000000000', '2', '0', '1509779732', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('40', '214', '22', 'dog_btc', '0.0000002000000000', '100.0000000000000000', '0.0000200000000000', '0.0000000200000000', '0.0000000200000000', '1', '0', '1509780648', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('41', '214', '22', 'nxt_btc', '0.0000066000000000', '189.0000000000000000', '0.0012474000000000', '0.0000012500000000', '0.0000012500000000', '2', '0', '1509973040', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('42', '214', '22', 'nxt_btc', '0.0000065000000000', '11.0000000000000000', '0.0000715000000000', '0.0000000700000000', '0.0000000700000000', '2', '0', '1509973040', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('660', '214', '214', 'dash_btc', '0.0350000000000000', '1.0000000000000000', '0.0350000000000000', '0.0000350000000000', '0.0000350000000000', '2', '0', '1509985336', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('661', '214', '214', 'qwe_btc', '0.0000000600000000', '1.0000000000000000', '0.0000000600000000', '0.0000000000000000', '0.0000000000000000', '1', '0', '1509986004', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('662', '214', '214', 'qwe_btc', '0.0000000600000000', '10.0000000000000000', '0.0000006000000000', '0.0000000000000000', '0.0000000000000000', '2', '0', '1509986253', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('663', '214', '214', 'qwe_btc', '0.0000000700000000', '1.0000000000000000', '0.0000000700000000', '0.0000000000000000', '0.0000000000000000', '1', '0', '1509986326', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('664', '214', '214', 'qwe_btc', '0.0000000700000000', '22.0000000000000000', '0.0000015400000000', '0.0000000000000000', '0.0000000000000000', '1', '0', '1509986381', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('665', '214', '214', 'qwe_btc', '0.0000000700000000', '8.0000000000000000', '0.0000005600000000', '0.0000000000000000', '0.0000000000000000', '2', '0', '1509986468', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('666', '214', '214', 'ardr_btc', '0.0000240000000000', '1.0000000000000000', '0.0000240000000000', '0.0000000200000000', '0.0000000200000000', '2', '0', '1509986691', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('667', '214', '214', 'ardr_btc', '0.0000340000000000', '1.0000000000000000', '0.0000340000000000', '0.0000000300000000', '0.0000000300000000', '1', '0', '1509986797', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('668', '21', '22', 'dog_btc', '0.0000002000000000', '1900.0000000000000000', '0.0003800000000000', '0.0000003800000000', '0.0000003800000000', '1', '0', '1510017407', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('669', '21', '22', 'dog_btc', '0.0000009900000000', '8100.0000000000000000', '0.0080190000000000', '0.0000080200000000', '0.0000080200000000', '1', '0', '1510017407', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('670', '214', '214', 'jjb_btc', '0.0000002400000000', '1.0000000000000000', '0.0000002400000000', '0.0000000000000000', '0.0000000000000000', '1', '0', '1510047154', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('671', '214', '214', 'jjb_btc', '0.0000001300000000', '1.0000000000000000', '0.0000001300000000', '0.0000000000000000', '0.0000000000000000', '2', '0', '1510047183', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('672', '22', '214', 'qwe_btc', '0.0000000700000000', '12.0000000000000000', '0.0000008400000000', '0.0000000000000000', '0.0000000000000000', '1', '0', '1510471565', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('673', '22', '214', 'jjb_btc', '0.0000002400000000', '99.0000000000000000', '0.0000237600000000', '0.0000000200000000', '0.0000000200000000', '1', '0', '1510473125', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('674', '21', '21', 'dog_btc', '0.0000010000000000', '100.0000000000000000', '0.0001000000000000', '0.0000001000000000', '0.0000001000000000', '2', '0', '1511503751', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('675', '214', '21', 'dog_btc', '0.0000002100000000', '100.0000000000000000', '0.0000210000000000', '0.0000000200000000', '0.0000000200000000', '2', '0', '1511503765', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('676', '214', '21', 'dog_btc', '0.0000002000000000', '20.0000000000000000', '0.0000040000000000', '0.0000000000000000', '0.0000000000000000', '2', '0', '1511503765', '0', '1');
INSERT INTO `ecshecom_trade_log` VALUES ('677', '214', '21', 'dog_btc', '0.0000002000000000', '200.0000000000000000', '0.0000400000000000', '0.0000000400000000', '0.0000000400000000', '2', '0', '1511505476', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_ucenter_member
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_ucenter_member`;
CREATE TABLE `ecshecom_ucenter_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `last_login_ip` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ecshecom_ucenter_member
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_user
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_user`;
CREATE TABLE `ecshecom_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `moble` varchar(50) NOT NULL,
  `mobletime` int(11) unsigned NOT NULL,
  `password` varchar(32) NOT NULL,
  `tpwdsetting` varchar(32) NOT NULL,
  `paypassword` varchar(32) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `truename` varchar(32) NOT NULL,
  `idcard` varchar(32) NOT NULL,
  `idcardauth` tinyint(1) NOT NULL DEFAULT '0',
  `idcardimg1` varchar(100) DEFAULT NULL,
  `idcardimg2` varchar(100) DEFAULT NULL,
  `idcardinfo` varchar(500) DEFAULT NULL,
  `logins` int(11) unsigned NOT NULL,
  `ga` varchar(50) NOT NULL,
  `addip` varchar(50) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `alipay` varchar(200) DEFAULT NULL COMMENT '支付宝',
  `invit` varchar(50) NOT NULL,
  `token` varchar(50) DEFAULT NULL,
  `awardid` int(2) NOT NULL DEFAULT '0',
  `awardstatus` smallint(1) NOT NULL DEFAULT '0',
  `awardname` varchar(100) DEFAULT NULL,
  `awardNumAll` int(10) NOT NULL DEFAULT '0',
  `awardNumToday` int(10) NOT NULL DEFAULT '0',
  `awardTotalToday` int(10) NOT NULL DEFAULT '0',
  `awardtime` int(11) NOT NULL DEFAULT '0',
  `regaward` tinyint(1) NOT NULL DEFAULT '0',
  `usertype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of ecshecom_user
-- ----------------------------
INSERT INTO `ecshecom_user` VALUES ('1', '15837127203', '15837127203', '1497278270', '4297f44b13955235245b2497399d7a93', '1', '3d186804534370c3c817db0563f0e461', '0', '0', '0', '任长远', '411081198706187279', '1', null, null, null, '6', '', '1.192.21.236', '未分配或者内网IP', '0', '1497339574', '0', '0', null, null, 'MSARVD', '6f17c89ae9645e73fd1b8e358d1efa8c', '0', '0', '无奖品', '0', '0', '0', '0', '1', '0');
INSERT INTO `ecshecom_user` VALUES ('2', '18530861253', '18530861253', '1497336167', '58e0ab543e9309651370850e5ca73826', '1', '4bc5fb692a01e5faa3250a448f2b4be9', '0', '0', '0', '王登博', '411081199403281254', '1', null, null, null, '4', '', '182.119.95.84', '未分配或者内网IP', '0', '1497339574', '0', '0', null, null, 'FNEHUA', '86bb7db424d2f2f7d74dfda7b3ad1655', '0', '0', null, '0', '0', '0', '0', '1', '0');
INSERT INTO `ecshecom_user` VALUES ('3', '15240403002', '15240403002', '1497344824', 'ed7e6bbb4e0c82572797d2b7d717faf8', '1', '9c959088612d298ac59f10d840eefee9', '0', '0', '0', '李乐义', '320322199603285018', '0', null, null, null, '0', '', '125.123.83.105', '未分配或者内网IP', '0', '1497344824', '0', '0', null, null, 'DXJGZY', null, '0', '0', null, '0', '0', '0', '0', '1', '0');
INSERT INTO `ecshecom_user` VALUES ('5', '15993674328', '15993674328', '1497600444', '71b3b26aaa319e0cdf6fdb8429c112b0', '1', 'e35cf7b66449df565f93c607d5a81d09', '0', '0', '0', '高世举', '411081198901221276', '0', '5943930243b5f.jpg_5943930980bef.jpg_594393110e4e1.jpg', null, '', '0', '', '222.137.197.41', '未分配或者内网IP', '0', '1497600444', '0', '0', null, null, 'RULAXQ', null, '0', '0', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('6', '15903639320', '15903639320', '1497600490', 'bf36ea675fc9a7d00a33878c3d3b70ac', '1', 'b5a747937aec219a7a9b1cdf4293d663', '0', '0', '0', '苏玉环', '411282198211244021', '0', null, null, null, '1', '', '1.192.29.82', '未分配或者内网IP', '0', '1497600490', '0', '0', null, null, 'GDFPBU', '945b5312cc5b34a5c81a6c107506cd9d', '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('7', '15038987283', '15038987283', '1497600535', 'c6a416bda168be4b3f0af90871138e54', '1', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0', '屈刚柱', '411081199911141258', '0', null, null, null, '0', '', '222.137.197.41', '未分配或者内网IP', '0', '1497600535', '0', '0', null, null, 'TJNIQZ', null, '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('8', '15890898515', '15890898515', '1497600841', 'ffaa0ad89b568bebafcb2990bca85cca', '1', '4072ad92cbf0257d8d66ea9ea84a5af7', '0', '0', '0', '李晓辉', '411327198906253910', '0', null, null, null, '0', '', '1.192.29.82', '未分配或者内网IP', '0', '1497600841', '0', '0', null, null, 'ZXVRPC', null, '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('9', '15837109811', '15837109811', '1497600844', '21b8a4e0039b5215899fbf2c08f070cf', '1', '8c38754af97d5122a0f0b88e5ae5993d', '0', '0', '0', '赵刚', '410102198909130191', '0', null, null, null, '0', '', '1.192.29.82', '未分配或者内网IP', '0', '1497600844', '0', '0', null, null, 'LVYDGM', null, '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('10', '13523740282', '13523740282', '1497600860', '0adbd170421cd84f7665ebba5dbfd52e', '1', '184918de24299d318dd205a9349e82ca', '0', '0', '0', '屈龙江', '411081199311191251', '0', null, null, null, '0', '', '1.192.29.82', '未分配或者内网IP', '0', '1497600860', '0', '0', null, null, 'ZTCWHN', null, '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('11', '13253366809', '13253366809', '1497601348', '9619cfa4aabc670a2e2de1793d2726e0', '1', 'f8a1db64b2de13e3d5e70605b3f94071', '0', '0', '0', '王康博', '411627199808141158', '0', null, null, null, '1', '', '1.192.29.82', '未分配或者内网IP', '0', '1497601348', '0', '0', null, null, 'VDZMJY', null, '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('12', '13253655507', '13253655507', '1497602187', '29775f673b52cebda60554af3a3a53e3', '1', 'b921a87f4171a684f9a6d7da4e9c8b26', '0', '0', '0', '白得强', '410326199006241030', '0', null, null, null, '0', '', '222.137.197.41', '未分配或者内网IP', '0', '1497602187', '0', '0', null, null, 'KEWUBT', null, '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('13', '13409377100', '13409377100', '1497603048', 'e10adc3949ba59abbe56e057f20f883e', '1', 'e8a9bf77a8546e8a290323554733c4d8', '0', '0', '0', '米晓龙', '411081198910057279', '0', null, null, null, '0', '', '1.197.135.113', '未分配或者内网IP', '0', '1497603048', '0', '1', null, null, 'YSMVJT', null, '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('14', '15036918568', '15036918568', '1497603509', 'bd099d13f5e2482a677ed6a776b1fb08', '1', '711d78ee265a102bfcc5dbf5693739bc', '0', '0', '0', '魏壮壮', '412823199809132815', '0', null, null, null, '1', '', '1.192.29.82', '未分配或者内网IP', '0', '1497603509', '0', '1', null, null, 'KJSBZC', 'eb6a744a121e441ef76d911cdf79f2bc', '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('15', '17755193851', '17755193851', '1498715405', '6340b8d9750a18f9a6eb04eed93f23fd', '1', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0', '张三', '420351199305155345', '0', null, null, null, '9', '', '122.191.204.16', '未分配或者内网IP', '0', '1498715405', '0', '1', null, null, 'SVWZAH', '9f8076fb199d810a1a9962d75d1f75ac', '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('18', '13059840358', '13059840358', '1504540800', 'e0a26e70cf3482669b81e77397eb1507', '', 'e0a26e70cf3482669b81e77397eb1507', '', '', '', '222', '1110', '0', null, null, '', '1', '', '', '', '0', '0', '0', '1', null, null, 'DCTABV', '6235af4f375ae852d1fa8d1e8a3049d2', '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('19', '15600930366', '15600930366', '1506637102', '3a300c48b47b714d9821dc473304aa84', '1', '55511808baf7f301b5270d7334a4cec0', '0', '0', '0', '王志勇', '460003199407277817', '0', null, null, null, '3', '', '103.215.82.18', '未分配或者内网IP', '0', '1506637102', '0', '1', null, null, 'WZLAYS', 'd10876563f4d33630c3eea62a31fb35b', '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('21', '15989216620', '15989216620', '1508332678', 'e10adc3949ba59abbe56e057f20f883e', '1', '96e79218965eb72c92a549dd5a330112', '0', '0', '0', '', '', '0', null, null, null, '5', '', '121.32.69.135', '未分配或者内网IP', '0', '1508332678', '0', '1', null, null, 'UGVTNY', '0164424ffc45f3224786bca8de707f53', '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('22', '15876543234', '15876543234', '1508390605', 'a0a475cf454cf9a06979034098167b9e', '1', '507f513353702b50c145d5b7d138095c', '0', '0', '0', '', '', '0', null, null, null, '11', '', '14.213.152.10', '未分配或者内网IP', '0', '1508390605', '0', '1', null, null, 'EASCID', '882856c5fa12853d38493330f8509391', '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('23', '1111', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '0', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('24', '22222', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('25', '3333', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('26', '123', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('27', '42123', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('28', '54353', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('29', '4535435', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('30', '455553254', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('31', '435325353535353', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('32', '5554544', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('33', '645352', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('34', '5432532', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('35', '654dfsf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('36', 'cvfvfd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('37', 'fgfvvfvddsa', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('38', 'dfdfsfdf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('39', 'sdafffds', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('40', 'nhgfnhdd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('41', 'dghnd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('42', 'hndnd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('43', 'h', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('44', 'g', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('45', 'm', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('46', 'tr', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('47', 'wrt', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('48', 'qqq', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('49', 'ttt', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('50', 'gge', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('51', 'mhn', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('52', 'gfs', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('53', '4', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('54', '5', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('55', '3', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('56', '2', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('57', '1', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('58', 'gfsd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('59', 'vbv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('60', 'ngn', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('61', 'htht', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('62', 'vbnvn', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('63', 'afdf f', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('64', 'afdfaf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('65', 'afdffdf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('66', 'erearar', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('67', 'qwqwqeqe', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('68', 'ddcdfc', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('69', 'vcdfcdfvc', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('70', 'sxdsxd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('71', 'sawsaw', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('72', 'xsdxsdx', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('73', 'bvcxza', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('74', 'sasazsa', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('75', 'sxsxsdxsa', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('76', 'cdewsxzaqweasd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('77', 'fgdcfv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('78', 'gfgfh', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('79', 'ghgfvg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('80', 'lkljkj', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('81', ',kjkj', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('82', 'uyhjkh', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('83', 'gffgh', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('84', 'hgfghjhj', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('85', 'likkki', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('86', 'httghy', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('87', 'yteerf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('88', 'dhhhjgj', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('89', 'juyfff', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('90', 'gfsadg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('91', 'yuijhff', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('92', 'jkfght', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('93', 'nhjgfc', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('94', 'jgdhgh', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('95', 'mujhfhjjh', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('96', 'hjgjsda', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('97', 'afdsafafacx', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('98', 'czxvzzvzv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('99', 'vzvfdzsd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('100', 'fvfdvsv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('101', 'rfvdfvfdv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('102', 'afdsafvv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('103', 'jmmjmjmmg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('104', 'hjmjhjmhmm', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('105', 'jhmhmmmhmmm', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('106', 'kuuuku', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('107', 'tyhrytr', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('108', 'rtyete', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('109', 'fghfhgfhfh', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('110', 'czcczcxc', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('111', 'wsdads', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('112', 'ceefwffw', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('113', 'sfsdfaf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('114', 'dfdsfdsfafdfsdfsfs', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('115', 'vavava', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('116', 'vvcvzvzvzvczvzv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('117', 'cvzvzsdvsdvas', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('118', 'brfsfdasdfsaf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('119', 'adsfaffdafafa', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('120', 'afafdafafaffaffdfdfdsf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('121', 'efrefafdfafaf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('122', 'jkhkg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('123', 'gjghk', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('124', 'gkjgkkkk', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('125', 'gjgkgjk', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('126', 'rthfghgh', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('127', 'ytdytchg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('128', 'hmmmhm', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('129', 'cvbvnbnh', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('130', 'qsqsqsq', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('131', 'qcqcqqc', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('132', 'qqdssqsqs', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('133', 'zdzdzdzd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('134', 'xdddxxd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('135', 'csscscsc', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('136', 'vddscsc', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('137', 'dfdsfsfvcfvfsfvc', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('138', 'czzxxcx', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('139', 'bvbfdbf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('140', 'ngfdfsfd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('141', 'sdfsfdsfsfsfc', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('142', 'fdfdvdvdv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('143', 'kkkkkkkkkkkkkkkkkkk', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('144', 'lllllllllllllll', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('145', 'jjjjjjjj', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('146', 'mmmmmmmmm', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('147', 'nnnnnn', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('148', 'bbbbbbbb', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('149', 'kkkkkk', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('150', 'ooo', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('151', 'fgfgfsgss', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('152', 'sdffdsf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('153', 'xcvzvzv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('154', 'zvsdasdf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('155', 'fdsfafsdfddsdfafaf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('156', 'cvzvzvzvczvczv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('157', 'vvvvvvvvvvvvvvvvvvvvvv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('158', 'xxxxxccccccc', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('159', 'xxxxxxccccccccvvvv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('160', 'zccccxxxxxx', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('161', 'vvvvcccccccccxxxxxxxxzzz', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('162', 'fdssssssads', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('163', 'gggbbbbbbbtttttdf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('164', 'jmmmmmmmmuuuuuuuuu', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('165', 'iiikiiiiiiiik', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('166', 'gggggggff', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('167', 'hhhhhhhhhh', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('168', 'dsafafaff', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('169', 'snsnnns', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('170', 'sngfnf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('171', 'sgntrrrr', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('172', 'sfgg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('173', 'fdgsgsg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('174', 'sfgrgrrvgr', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('175', 'sgfgsgfgfgfgfggfgfgfd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('176', 'asdfdggsg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('177', 'regsgsgsgs', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('178', 'sdfsfgfsdgfsfgsgsgsg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('179', 'asdfafafaf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('180', 'afdfafafdsfdsfdsfdasfa', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('181', 'tgrrggeg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('182', 'fgbfbgbfbgfbf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('183', 'bgfbfbfgbf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('184', 'ngffdfgdgdgd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('185', 'afdfsfsaf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('186', 'afdffdsfadfdfdsfdfdfeefeffe', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('187', 'fgsfsgsgsg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('188', 'tbgdbgfbfgb', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('189', 'uillulu', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('190', 'uilulul', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('191', 'yutujhgjmh', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('192', 'yhyyhfhfh', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('193', 'fdvdvvd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('194', 'erererererfref', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('195', 'weffvfvvdsv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('196', 'bfgvdvfvs', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('197', 'fdvdsvsfvsvsvgbgb', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('198', 'dgbdbgdbgb', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('199', 'gbdbgbgfbgd', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('200', 'wqrqrerrewq', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('201', 'fvbfsvfbvgfsdgvbds', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('202', 'ggggggggbbbbbbbbbg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('203', 'tttttttbbbbbbgggggtf', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('204', 'fffffffrrrrrrfv', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('205', 'dddddddddccccccccceeeeee', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('206', 'hhhhhhbbbbbb', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('207', 'bggggggggbbbbbb', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('208', 'nnggggggggbbb', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('209', 'ffffffgggggggb', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('210', 'tttttthhhhhhyyy', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('211', 'hnhhhhhhnggggg', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('212', 'wuuwuwu', '', '0', '', '', '', '', '', '', '', '', '0', null, null, '', '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '1', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('213', '13800138000', '13800138000', '0', '5d93ceb70e2bf5daa84ec3d0cd2c731a', '', '327bc4e22b649d47c4546a3ec93f376b', '', '', '', '', '', '0', null, null, '', '1', '', '', '', '0', '0', '0', '1', null, null, 'ZIYWMQ', '78ca3317944ca90ce411fdb23ab3fee1', '0', '0', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecshecom_user` VALUES ('214', '15622317458', '15622317458', '1509178959', '5d93ceb70e2bf5daa84ec3d0cd2c731a', '1', '327bc4e22b649d47c4546a3ec93f376b', '0', '0', '0', '', '', '0', null, null, null, '18', '', '183.240.19.227', '未分配或者内网IP', '0', '1509178959', '0', '1', null, null, 'KIWUVX', 'f157179ca98e12d612b12bb1d03804ef', '0', '0', null, '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for ecshecom_user_award
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_user_award`;
CREATE TABLE `ecshecom_user_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `awardname` varchar(100) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `dealtime` int(11) NOT NULL DEFAULT '0',
  `awardid` int(2) NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_user_award
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_user_bank
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_user_bank`;
CREATE TABLE `ecshecom_user_bank` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `bank` varchar(200) NOT NULL,
  `bankprov` varchar(200) NOT NULL,
  `bankcity` varchar(200) NOT NULL,
  `bankaddr` varchar(200) NOT NULL,
  `bankcard` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_user_bank
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_user_bank_type
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_user_bank_type`;
CREATE TABLE `ecshecom_user_bank_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='常用银行地址';

-- ----------------------------
-- Records of ecshecom_user_bank_type
-- ----------------------------
INSERT INTO `ecshecom_user_bank_type` VALUES ('1', 'boc', '中国银行', 'http://www.boc.cn/', 'img_56937003683ce.jpg', '', '', '0', '1452503043', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('2', 'abc', '农业银行', 'http://www.abchina.com/cn/', 'img_569370458b18d.jpg', '', '', '0', '1452503109', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('3', 'bccb', '北京银行', 'http://www.bankofbeijing.com.cn/', 'img_569370588dcdc.jpg', '', '', '0', '1452503128', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('4', 'ccb', '建设银行', 'http://www.ccb.com/', 'img_5693709bbd20f.jpg', '', '', '0', '1452503195', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('5', 'ceb', '光大银行', 'http://www.bankofbeijing.com.cn/', 'img_569370b207cc8.jpg', '', '', '0', '1452503218', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('6', 'cib', '兴业银行', 'http://www.cib.com.cn/cn/index.html', 'img_569370d29bf59.jpg', '', '', '0', '1452503250', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('7', 'citic', '中信银行', 'http://www.ecitic.com/', 'img_569370fb7a1b3.jpg', '', '', '0', '1452503291', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('8', 'cmb', '招商银行', 'http://www.cmbchina.com/', 'img_5693710a9ac9c.jpg', '', '', '0', '1452503306', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('9', 'cmbc', '民生银行', 'http://www.cmbchina.com/', 'img_5693711f97a9d.jpg', '', '', '0', '1452503327', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('10', 'comm', '交通银行', 'http://www.bankcomm.com/BankCommSite/default.shtml', 'img_5693713076351.jpg', '', '', '0', '1452503344', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('11', 'gdb', '广发银行', 'http://www.cgbchina.com.cn/', 'img_56937154bebc5.jpg', '', '', '0', '1452503380', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('12', 'icbc', '工商银行', 'http://www.icbc.com.cn/icbc/', 'img_56937162db7f5.jpg', '', '', '0', '1452503394', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('13', 'psbc', '邮政银行', 'http://www.psbc.com/portal/zh_CN/index.html', 'img_5693717eefaa3.jpg', '', '', '0', '1452503422', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('14', 'spdb', '浦发银行', 'http://www.spdb.com.cn/chpage/c1/', 'img_5693718f1d70e.jpg', '', '', '0', '1452503439', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('15', 'szpab', '平安银行', 'http://bank.pingan.com/', '56c2e4c9aff85.jpg', '', '', '0', '1455613129', '0', '1');
INSERT INTO `ecshecom_user_bank_type` VALUES ('16', 'alipay', '支付宝', 'http://www.alipay.com', '', '', '', '0', '1452503439', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_user_coin
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_user_coin`;
CREATE TABLE `ecshecom_user_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `cny` decimal(30,16) NOT NULL,
  `cnyd` decimal(30,16) NOT NULL,
  `btc` decimal(30,16) unsigned NOT NULL,
  `btcd` decimal(30,16) unsigned NOT NULL,
  `btcb` varchar(200) NOT NULL,
  `ltc` decimal(30,16) unsigned NOT NULL,
  `ltcd` decimal(30,16) unsigned NOT NULL,
  `ltcb` varchar(200) NOT NULL,
  `dog` decimal(30,16) unsigned NOT NULL,
  `dogd` decimal(30,16) unsigned NOT NULL,
  `dogb` varchar(200) NOT NULL,
  `eth` decimal(30,16) unsigned NOT NULL,
  `ethd` decimal(30,16) unsigned NOT NULL,
  `ethb` varchar(200) NOT NULL,
  `bcc` decimal(30,16) unsigned NOT NULL,
  `bccd` decimal(30,16) unsigned NOT NULL,
  `bccb` varchar(200) NOT NULL,
  `xem` decimal(30,16) unsigned NOT NULL,
  `xemd` decimal(30,16) unsigned NOT NULL,
  `xemb` varchar(200) NOT NULL,
  `nxt` decimal(30,16) unsigned NOT NULL,
  `nxtd` decimal(30,16) unsigned NOT NULL,
  `nxtb` varchar(200) NOT NULL,
  `dash` decimal(30,16) unsigned NOT NULL,
  `dashd` decimal(30,16) unsigned NOT NULL,
  `dashb` varchar(200) NOT NULL,
  `ardr` decimal(30,16) unsigned NOT NULL,
  `ardrd` decimal(30,16) unsigned NOT NULL,
  `ardrb` varchar(200) NOT NULL,
  `qwe` decimal(30,16) unsigned NOT NULL,
  `qwed` decimal(30,16) unsigned NOT NULL,
  `qweb` varchar(200) NOT NULL,
  `jjb` decimal(30,16) unsigned NOT NULL,
  `jjbd` decimal(30,16) unsigned NOT NULL,
  `jjbb` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 COMMENT='用户币种表';

-- ----------------------------
-- Records of ecshecom_user_coin
-- ----------------------------
INSERT INTO `ecshecom_user_coin` VALUES ('1', '1', '100.1700559200000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'Xkn67eos3Xk7mnzbft25V2FeaJPTMKbgVA', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('2', '2', '0.0000999000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'XvkaYLy8whe2w5qwKDVDMJggMkWJa4Rsao', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('3', '3', '10.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'XbakrPtW6tANS41KujF9yM2ambYKxFrRNW', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('5', '5', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'XpjQD8ZBd7ZUMf8BuvBHXPq4zkHUbJyK7n', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('6', '6', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'XiYeSj6qftcTczcmEmJ2eJsysUGGLcfXaU', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('7', '7', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'Xja7iAPddfxVj2PVJvUuhD1Sqn9cqAGBup', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('8', '8', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'XpwA6ExfnpTFFwxtgtSKUpCvfLKAitrGLS', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('9', '9', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'XfoGwTz4NAWxsystYpnfMHNrKG29mZVx6t', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('10', '10', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'XgjixTRof6hzRe66uTTa18pnQswVejHvub', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('11', '11', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'XbP8j6uhmsnvU734FGnvdtjK3i2GSFhjbo', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('12', '12', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'XrqJuCh8r7Hm91iq1wc1HrQp9MZZoimut8', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('13', '13', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '112AiQMGyeCo2xLMa92nMiMJrP1dkZBTqq', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'NXT-2WKC-FQH2-W9XK-AC32H', '0.0000000000000000', '0.0000000000000000', 'Xx4TmAb8QtntkxR3pmDkgQFrG5KjvyHpdH', '0.0000000000000000', '0.0000000000000000', 'NXT-2WKC-FQH2-W9XK-AC32H', '0.0000000000000000', '0.0000000000000000', 'adfafaf', '0.0000000000000000', '0.0000000000000000', 'ass');
INSERT INTO `ecshecom_user_coin` VALUES ('14', '14', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '112FtQAHwT5oyUY1eX7Gr6Yx4JLATwC8kw', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'NXT-6JW7-XMK3-M8ZL-DJYXP', '0.0000000000000000', '0.0000000000000000', 'XmLHAoJchYY4hfds64rQQaA83UYKeqtoos', '0.0000000000000000', '0.0000000000000000', 'NXT-6JW7-XMK3-M8ZL-DJYXP', '0.0000000000000000', '0.0000000000000000', 'f', '0.0000000000000000', '0.0000000000000000', 'asq');
INSERT INTO `ecshecom_user_coin` VALUES ('15', '15', '9999.9999999999999999', '7967.2217964000000000', '0.0000000000000000', '0.0000000000000000', '112G6Srg3DHJk3RSqLGYB4oWCFUacSuTVw', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'NXT-2GGZ-6CWL-TT4P-6PGCR', '0.0000000000000000', '0.0000000000000000', 'XuCaVe88v8hDJw1FHEef9gcwug5rQAL1Nh', '0.0000000000000000', '0.0000000000000000', 'NXT-2GGZ-6CWL-TT4P-6PGCR', '0.0000000000000000', '0.0000000000000000', 'io', '0.0000000000000000', '0.0000000000000000', 'zxsdwe');
INSERT INTO `ecshecom_user_coin` VALUES ('18', '18', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', 'nodata', '0.0000000000000000', '0.0000000000000000', 'nodata', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'Xg5JZuWBa9x8q8B3WaLEyME8zrDTydjLRy', '0.0000000000000000', '0.0000000000000000', 'NXT-9PK6-CSNF-VRKP-7Y4ZB', '0.0000000000000000', '0.0000000000000000', 'ioioi', '0.0000000000000000', '0.0000000000000000', 'azxswqazxs');
INSERT INTO `ecshecom_user_coin` VALUES ('19', '19', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '0.0000000000000000', '112Gvs9Cmqb2N8CwfrdwXXvsUYEDURs3v5', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'Xqv6NyLMzuLYs8G8Ko8omS4q9gb1YqSY55', '0.0000000000000000', '0.0000000000000000', 'NXT-5FY5-SN29-EXZB-HF4EK', '0.0000000000000000', '0.0000000000000000', 'uiuiuiuiu', '0.0000000000000000', '0.0000000000000000', 'edcvfrtgbnhyujm');
INSERT INTO `ecshecom_user_coin` VALUES ('21', '21', '0.0000000000000000', '0.0000000000000000', '109.8832780689999900', '0.1083792710000000', '112UvFChB31fkprVkZpjuEjmoPtVFzGKNV', '0.5000000000000000', '0.0000000000000000', '', '9679.9999999999999999', '0.0000000000000000', 'D599unPH7GhepC8iQSPJQyZy8SXg8YM6Jq', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'Xt1aouKVXxk5VUD6LNzHuApMqbC74472qU', '0.0000000000000000', '0.0000000000000000', 'NXT-BD6C-WXJE-F8N5-D45P4', '0.0000000000000000', '0.0000000000000000', 'hjhjhj', '0.0000000000000000', '0.0000000000000000', 'ewsazxsaqw');
INSERT INTO `ecshecom_user_coin` VALUES ('22', '22', '0.0000000000000000', '0.0000000000000000', '4.8522234599999987', '5.1575277800000000', '112Wzs7LKjJHxH7s4ME6tSjTuzwd6S5e8C', '200.0000000000000000', '0.0000000000000000', 'LKEJE3sdaEpNdGNMYRUNNY8MMXzgLUEe4C', '9999.9999999999999999', '0.0000000000000000', 'D59BGGcokgnjesvF6hVCUPwunM4TzZ9YQQ', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '9999.9999999999999999', '0.0000000000000000', 'NXT-5FY5-SN29-EXZB-HF4EK', '300.0000000000000000', '0.0000000000000000', 'Xkbs8TXbZ38ZkMJPKNBxN7gHyPXUgyDHBF', '0.0000000000000000', '0.0000000000000000', 'NXT-Y577-8E4F-DXEB-9W54R', '4999.9999999999999999', '5000.0000000000000000', 'rsthfdhh', '9999.9999999999999999', '0.0000000000000000', 'yuiolkjhyuty');
INSERT INTO `ecshecom_user_coin` VALUES ('23', '23', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('24', '24', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('25', '25', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('26', '26', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('27', '27', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('28', '28', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('29', '29', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('30', '30', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('31', '31', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('32', '32', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('33', '33', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('34', '34', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('35', '35', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('36', '36', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('37', '37', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('38', '38', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('39', '39', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('40', '40', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('41', '41', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('42', '42', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('43', '43', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('44', '44', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('45', '45', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('46', '46', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('47', '47', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('48', '48', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('49', '49', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('50', '50', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('51', '51', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('52', '52', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('53', '53', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('54', '54', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('55', '55', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('56', '56', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('57', '57', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('58', '58', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('59', '59', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('60', '60', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('61', '61', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('62', '62', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('63', '63', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('64', '64', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('65', '65', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('66', '66', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('67', '67', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('68', '68', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('69', '69', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('70', '70', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('71', '71', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('72', '72', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('73', '73', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('74', '74', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('75', '75', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('76', '76', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('77', '77', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('78', '78', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('79', '79', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('80', '80', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('81', '81', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('82', '82', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('83', '83', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('84', '84', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('85', '85', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('86', '86', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('87', '87', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('88', '88', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('89', '89', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('90', '90', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('91', '91', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('92', '92', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('93', '93', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('94', '94', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('95', '95', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('96', '96', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('97', '97', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('98', '98', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('99', '99', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('100', '100', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('101', '101', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('102', '102', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('103', '103', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('104', '104', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('105', '105', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('106', '106', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('107', '107', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('108', '108', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('109', '109', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('110', '110', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('111', '111', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('112', '112', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('113', '113', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('114', '114', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('115', '115', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('116', '116', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('117', '117', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('118', '118', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('119', '119', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('120', '120', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('121', '121', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('122', '122', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('123', '123', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('124', '124', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('125', '125', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('126', '126', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('127', '127', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('128', '128', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('129', '129', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('130', '130', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('131', '131', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('132', '132', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('133', '133', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('134', '134', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('135', '135', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('136', '136', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('137', '137', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('138', '138', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('139', '139', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('140', '140', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('141', '141', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('142', '142', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('143', '143', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('144', '144', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('145', '145', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('146', '146', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('147', '147', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('148', '148', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('149', '149', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('150', '150', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('151', '151', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('152', '152', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('153', '153', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('154', '154', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('155', '155', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('156', '156', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('157', '157', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('158', '158', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('159', '159', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('160', '160', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('161', '161', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('162', '162', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('163', '163', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('164', '164', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('165', '165', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('166', '166', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('167', '167', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('168', '168', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('169', '169', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('170', '170', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('171', '171', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('172', '172', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('173', '173', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('174', '174', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('175', '175', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('176', '176', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('177', '177', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('178', '178', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('179', '179', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('180', '180', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('181', '181', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('182', '182', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('183', '183', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('184', '184', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('185', '185', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('186', '186', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('187', '187', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('188', '188', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('189', '189', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('190', '190', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('191', '191', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('192', '192', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('193', '193', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('194', '194', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('195', '195', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('196', '196', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('197', '197', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('198', '198', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('199', '199', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('200', '200', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('201', '201', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('202', '202', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('203', '203', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('204', '204', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('205', '205', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('206', '206', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('207', '207', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('208', '208', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('209', '209', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('210', '210', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('211', '211', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('212', '212', '0.0000000000000000', '0.0000000000000000', '0.0500000000000000', '0.0000000000000000', '', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('213', '213', '0.0000000000000000', '0.0000000000000000', '1.0000000000000000', '0.0000000000000000', '1121nRyvUbdreseTD15JTmhQ1EbKV6bSKD', '0.5000000000000000', '0.0000000000000000', '', '4899.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '1550.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', 'NXT-37EH-WYLA-M4N4-45GU9', '9999.9999999999999999', '0.0000000000000000', 'adfsfdfas', '0.0000000000000000', '0.0000000000000000', '');
INSERT INTO `ecshecom_user_coin` VALUES ('214', '214', '1.9980000000000000', '0.0000000000000000', '97.6142617453500200', '2.3295886846500020', '1124MKDQot6GU8Ce8Bp2cfCKbVT83DWMhL', '86.0000000000000000', '15.0000000000000000', 'LKE6nXQkMGVZZQTqF2h7QQi6z98hzgr64Z', '10319.9999999999999999', '0.0000000000000000', 'D599Tr45PKyKVrTEnRxuEBwuz2aT5ybJWp', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '0.0000000000000000', '0.0000000000000000', '', '9999.9999999999999999', '620.0000000000000000', 'NXT-9PK6-CSNF-VRKP-7Y4ZB', '9987.0000000000000000', '13.0000000000000000', 'Xkv4eixCdP6hyw9uFSJ29SXj7ayU813Rbf', '9630.9999999999999999', '370.0000000000000000', 'NXT-3U52-BFJX-QVW5-FAGCM', '9999.9999999999999999', '222.0000000000000000', 'adfafdfas', '9999.9999999999999999', '222.0000000000000000', 'dcvfdertghyujki');

-- ----------------------------
-- Table structure for ecshecom_user_goods
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_user_goods`;
CREATE TABLE `ecshecom_user_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `truename` varchar(200) NOT NULL,
  `idcard` varchar(200) NOT NULL,
  `moble` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `prov` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_user_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_user_log
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_user_log`;
CREATE TABLE `ecshecom_user_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(200) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='用户记录表';

-- ----------------------------
-- Records of ecshecom_user_log
-- ----------------------------
INSERT INTO `ecshecom_user_log` VALUES ('1', '1', '登录', '通过手机号登录', '182.119.95.84', '未分配或者内网IP', '0', '1497321195', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('2', '2', '登录', '通过手机号登录', '182.119.95.84', '未分配或者内网IP', '0', '1497352103', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('3', '2', '登录', '通过手机号登录', '222.137.195.220', '未分配或者内网IP', '0', '1497405925', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('4', '1', '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', '0', '1497591785', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('5', '1', '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', '0', '1497595481', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('6', '1', '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', '0', '1497598199', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('7', '1', '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', '0', '1497599203', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('8', '6', '登录', '通过手机号登录', '1.192.29.82', '未分配或者内网IP', '0', '1497600961', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('9', '2', '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', '0', '1497603006', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('10', '2', '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', '0', '1497605841', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('11', '14', '登录', '通过手机号登录', '1.192.29.82', '未分配或者内网IP', '0', '1497605992', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('12', '1', '登录', '通过手机号登录', '125.46.237.109', '未分配或者内网IP', '0', '1497664071', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('13', '11', '登录', '通过手机号登录', '125.46.237.109', '未分配或者内网IP', '0', '1497669241', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('14', '15', '登录', '通过手机号登录', '122.191.204.253', '未分配或者内网IP', '0', '1498792374', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('15', '15', '登录', '通过手机号登录', '220.203.63.70', '未分配或者内网IP', '0', '1498809015', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('16', '15', '登录', '通过手机号登录', '122.190.94.36', '未分配或者内网IP', '0', '1498812362', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('17', '15', '登录', '通过手机号登录', '119.39.184.43', '未分配或者内网IP', '0', '1498829312', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('18', '15', '登录', '通过手机号登录', '119.39.184.43', '未分配或者内网IP', '0', '1498867940', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('19', '15', '登录', '通过手机号登录', '119.39.184.34', '未分配或者内网IP', '0', '1498874458', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('20', '15', '登录', '通过手机号登录', '119.39.184.43', '未分配或者内网IP', '0', '1498876846', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('21', '15', '登录', '通过手机号登录', '119.39.184.43', '未分配或者内网IP', '0', '1498877084', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('22', '15', '登录', '通过手机号登录', '119.39.184.43', '未分配或者内网IP', '0', '1498877270', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('23', '16', '登录', '通过手机号登录', '192.168.86.108', '未分配或者内网IP', '0', '1500711929', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('24', '16', '登录', '通过手机号登录', '192.168.86.108', '未分配或者内网IP', '0', '1500718512', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('25', '16', '登录', '通过手机号登录', '192.168.86.108', '未分配或者内网IP', '0', '1500719781', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('26', '16', '登录', '通过手机号登录', '192.168.86.108', '未分配或者内网IP', '0', '1500719968', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('27', '16', '登录', '通过手机号登录', '192.168.86.108', '未分配或者内网IP', '0', '1500720569', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('28', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1504623820', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('29', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1504684242', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('30', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1504765550', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('31', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1504852020', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('32', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1505120665', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('33', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1505294285', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('34', '16', '登录', '通过手机号登录', '0.0.0.0', '未分配或者内网IP', '0', '1505320372', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('35', '18', '登录', '通过手机号登录', '0.0.0.0', '未分配或者内网IP', '0', '1505320729', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('36', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1505374689', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('37', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1505385811', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('38', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1505640565', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('39', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1505641860', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('40', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1505659214', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('41', '17', '登录', '通过手机号登录', '103.59.45.30', '未分配或者内网IP', '0', '1505843248', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('42', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1506015439', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('43', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1506069142', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('44', '19', '登录', '通过手机号登录', '103.215.82.18', '未分配或者内网IP', '0', '1506637158', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('45', '19', '登录', '通过手机号登录', '103.215.82.18', '未分配或者内网IP', '0', '1506637166', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('46', '19', '登录', '通过手机号登录', '103.215.82.18', '未分配或者内网IP', '0', '1506637197', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('47', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1508117658', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('48', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1508305655', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('49', '20', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1508308095', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('50', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1508308168', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('51', '20', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1508308242', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('52', '20', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1508308365', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('53', '20', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1508308415', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('54', '20', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1508334766', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('55', '17', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1508371979', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('56', '22', '登录', '通过手机号登录', '14.213.152.10', '未分配或者内网IP', '0', '1508390688', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('57', '20', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509018560', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('58', '17', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509168616', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('59', '17', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509170419', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('60', '20', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509174518', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('61', '20', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509176849', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('62', '213', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509178778', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('63', '214', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509249260', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('64', '21', '登录', '通过手机号登录', '103.59.45.30', '未分配或者内网IP', '0', '1509283233', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('65', '22', '登录', '通过手机号登录', '14.213.154.85', '未分配或者内网IP', '0', '1509284588', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('66', '22', '登录', '通过手机号登录', '14.213.154.85', '未分配或者内网IP', '0', '1509292325', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('67', '214', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509372126', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('68', '22', '登录', '通过手机号登录', '14.213.155.45', '未分配或者内网IP', '0', '1509443362', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('69', '214', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509452052', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('70', '214', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509453615', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('71', '214', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509458234', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('72', '214', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509468892', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('73', '22', '登录', '通过手机号登录', '113.69.198.204', '未分配或者内网IP', '0', '1509525467', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('74', '214', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509527554', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('75', '214', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509546601', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('76', '22', '登录', '通过手机号登录', '113.69.199.16', '未分配或者内网IP', '0', '1509548133', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('77', '214', '登录', '通过手机号登录', '183.240.19.227', '未分配或者内网IP', '0', '1509548582', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('78', '22', '登录', '通过手机号登录', '113.69.199.16', '未分配或者内网IP', '0', '1509629761', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('79', '214', '登录', '通过手机号登录', '183.240.20.212', '未分配或者内网IP', '0', '1509630672', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('80', '214', '登录', '通过手机号登录', '183.240.20.212', '未分配或者内网IP', '0', '1509776960', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('81', '22', '登录', '通过手机号登录', '14.213.152.88', '未分配或者内网IP', '0', '1509777655', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('82', '214', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1509793567', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('83', '214', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1509971909', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('84', '22', '登录', '通过手机号登录', '113.69.198.4', '未分配或者内网IP', '0', '1509972618', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('85', '21', '登录', '通过手机号登录', '121.32.69.36', '未分配或者内网IP', '0', '1509973971', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('86', '21', '登录', '通过手机号登录', '14.23.93.210', '未分配或者内网IP', '0', '1510016480', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('87', '214', '登录', '通过手机号登录', '183.240.19.231', '未分配或者内网IP', '0', '1510044794', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('88', '22', '登录', '通过手机号登录', '14.213.155.55', '未分配或者内网IP', '0', '1510044910', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('89', '214', '登录', '通过手机号登录', '121.32.70.124', '未分配或者内网IP', '0', '1510469476', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('90', '22', '登录', '通过手机号登录', '14.213.155.93', '未分配或者内网IP', '0', '1510471513', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('91', '214', '登录', '通过手机号登录', '58.62.29.24', '未分配或者内网IP', '0', '1510498641', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('92', '214', '登录', '通过手机号登录', '58.62.31.140', '未分配或者内网IP', '0', '1510732961', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('93', '21', '登录', '通过手机号登录', '121.32.69.58', '未分配或者内网IP', '0', '1510842234', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('94', '214', '登录', '通过手机号登录', '58.62.31.181', '未分配或者内网IP', '0', '1511012650', '0', '1');
INSERT INTO `ecshecom_user_log` VALUES ('95', '21', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1511251270', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_user_qianbao
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_user_qianbao`;
CREATE TABLE `ecshecom_user_qianbao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户钱包表';

-- ----------------------------
-- Records of ecshecom_user_qianbao
-- ----------------------------
INSERT INTO `ecshecom_user_qianbao` VALUES ('2', '2', 'bxb', '币兴股钱包', 'B6Wg3dSURoyBzb6nUNEjd5BCHw4Fe8YWRQ', '0', '1497606832', '0', '0');
INSERT INTO `ecshecom_user_qianbao` VALUES ('3', '214', 'ltc', '测试', '12312312313', '0', '1509372226', '0', '1');
INSERT INTO `ecshecom_user_qianbao` VALUES ('4', '214', 'nxt', '121', '123', '0', '1509372466', '0', '1');
INSERT INTO `ecshecom_user_qianbao` VALUES ('5', '214', 'btc', '111', 'admin', '0', '1509452312', '0', '1');
INSERT INTO `ecshecom_user_qianbao` VALUES ('6', '214', 'nxt', '11111111', 'NXT-68QR-5S35-ZY9Y-3P95Q', '0', '1509546644', '0', '1');
INSERT INTO `ecshecom_user_qianbao` VALUES ('7', '22', 'nxt', '222', 'NXT-5FY5-SN29-EXZB-HF4EK', '0', '1509548178', '0', '1');
INSERT INTO `ecshecom_user_qianbao` VALUES ('8', '22', 'nxt', '33', 'NXT-5FY5-SN29-EXZB-HF4E1', '0', '1509629941', '0', '1');
INSERT INTO `ecshecom_user_qianbao` VALUES ('9', '214', 'btc', '平台地址', '1124MKDQot6GU8Ce8Bp2cfCKbVT83DWMhL', '0', '1509631064', '0', '1');
INSERT INTO `ecshecom_user_qianbao` VALUES ('10', '22', 'dog', '111', '453645ioii', '0', '1509633726', '0', '1');

-- ----------------------------
-- Table structure for ecshecom_user_qianbao_address
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_user_qianbao_address`;
CREATE TABLE `ecshecom_user_qianbao_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `coin_name` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL COMMENT '钱包地址',
  `bind_time` int(10) NOT NULL COMMENT '绑定时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0禁用 1启用 2撤销(废除) -1删除',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `coin_name` (`coin_name`),
  KEY `bind_time` (`bind_time`),
  KEY `status` (`status`),
  KEY `address` (`address`)
) ENGINE=InnoDB AUTO_INCREMENT=2226 DEFAULT CHARSET=utf8 COMMENT='用户钱包地址';

-- ----------------------------
-- Records of ecshecom_user_qianbao_address
-- ----------------------------
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('10', '0', 'btc', '112XQ4ZEVq5argZAYUpc2ghKoytRFQCRqA', '0', '1', '1509014152');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('11', '0', 'btc', '112ZmccW8psEcLFWzekKhDWDmsN1zkYbsW', '0', '1', '1509014164');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('12', '0', 'btc', '112iKgtuWVFT5XYWdp5MN6bjqTNo71kGAD', '0', '1', '1509014171');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('13', '0', 'btc', '112jXAq1X7GYyx8SoLpDnmzkxNvS9qMTmW', '0', '1', '1509014178');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('14', '0', 'btc', '112o8qJUPyBFbLdMZKrhZ62VCutMAENgLQ', '0', '1', '1509014185');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('15', '0', 'btc', '112psAj95M9me292WAhPAsfNGxkUpjLgkC', '0', '1', '1509014195');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('16', '0', 'btc', '112ptTF7yVLSFLfb22ZPMGdwvjNj43NWuu', '0', '1', '1509014200');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('17', '0', 'btc', '112s61qWkp9Zi7B7xwS7n1syrjEH7Li6Ly', '0', '1', '1509014209');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('18', '0', 'btc', '112w2tJmySL7WfYz1fipfMvNGse5Pmc3T1', '0', '1', '1509014220');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('19', '0', 'btc', '1133wXo9ZfpsoamvkAtHyzsNRGW7WiPV4b', '0', '1', '1509014270');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('20', '0', 'btc', '1136yjrGfWrvU8PhAB1h98whwNRe8jF7Mg', '0', '1', '1509014282');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('21', '0', 'btc', '1139iQr6Vhojw6NRzfAeLtBqxMrCBd1mK1', '0', '1', '1509014293');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('22', '0', 'btc', '113Ckth5TvV1nXB2ANf8oqBbjP1yZuWrfC', '0', '1', '1509014303');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('23', '0', 'btc', '113FX3ikBaeNzvUr3zb2S5jB2YxmTBwFq9', '0', '1', '1509014313');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('24', '0', 'btc', '113HtP2TGoeh4pTzcJyUuB1M4JHWQ6pqpd', '0', '1', '1509014322');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('25', '0', 'btc', '113Js18eWV5MA49xLSsKU9s6PLhcrCNLGJ', '0', '1', '1509014336');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('26', '0', 'btc', '113No7xNRA1aznzSmTZdbCP8SVWrSeZbAn', '0', '1', '1509014343');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('27', '0', 'btc', '113Qkn8u4sRhUc9uzUPxUkWYCL2G87NNCu', '0', '1', '1509014351');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('28', '0', 'btc', '113TuucCkrR1tSqWtA74GRuMo4R6XcTNwY', '0', '1', '1509014357');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('29', '0', 'btc', '113UPsYN78mJuSoRPC3vLH7N2zNg7L5Lx7', '0', '1', '1509014364');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('30', '0', 'btc', '113dK5tZLpd8Bn3T43S8HgFJh46fgFWXa2', '0', '1', '1509014374');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('31', '0', 'btc', '113iCq2s1tnEF2Fmvx6ELZg7rF1ptVdiqa', '0', '1', '1509014382');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('32', '0', 'btc', '113p9WVW5PrxP7sm8JvFXZGHEoYgKszAba', '0', '1', '1509014391');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('33', '0', 'btc', '113qwkb5meSdZymrC51hmQWMy7CB8ZBC7v', '0', '1', '1509014399');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('34', '0', 'btc', '113v4EBgurjphYYxtefAANYerfRcmNzyGX', '0', '1', '1509014408');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('35', '0', 'btc', '113vAws4yBFQ6hmJQFoGXrpX5EWqRwKUB6', '0', '1', '1509014415');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('36', '0', 'btc', '113z7cFV5tjpozfwiqvdfVWTcWXAUoPvuD', '0', '1', '1509014424');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('37', '0', 'btc', '1142XHaQnrSKMK7s53f5A7x4N934ZFg13Z', '0', '1', '1509014433');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('38', '0', 'btc', '1143fGzc6iJwoFXd33yW8swE3BjiN18q8G', '0', '1', '1509014441');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('39', '0', 'btc', '1147iZmfrJjxF6kCFbMJozVPGvn8sB1SDZ', '0', '1', '1509014447');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('40', '0', 'btc', '1148zL1L8ECfira5fjUnqMEVmou4inz4WK', '0', '1', '1509014453');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('41', '0', 'btc', '114MRo5i4QcrikdLs7A7dS2E93VFQ6zf72', '0', '1', '1509014460');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('42', '0', 'btc', '114UjX3TjTpheLAcj9VHXZHDALbZkXDTXQ', '0', '1', '1509014465');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('43', '0', 'btc', '114mFV3qdc9Cm9uFdfcvx8Gj5X8k6Wyr9o', '0', '1', '1509014489');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('44', '0', 'btc', '114o6zbHAoxKUDKrAywreQWnN96PqfjRC1', '0', '1', '1509014499');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('45', '0', 'btc', '114rz3aCDKh21HjHjRpikRu5XF3N7La4Zu', '0', '1', '1509014509');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('46', '0', 'btc', '114s14nu6cvmkpWNci3occUqwx4uc9SUvy', '0', '1', '1509014516');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('47', '0', 'btc', '114sWCWbnuUazKiufH8PZsJGohkHKsM2FU', '0', '1', '1509014524');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('48', '0', 'btc', '114xv5LgWV8JbPJAnKshHuzVwV3ZZYunTB', '0', '1', '1509014535');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('49', '0', 'btc', '114yJjPSPoKs2HwcuAojxU6PMUh9xDvhZD', '0', '1', '1509014540');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('50', '0', 'btc', '1155SfWGfD7i1Hd6a6XgDbk2yTudiUHerw', '0', '1', '1509014554');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('51', '0', 'btc', '1157jmcJFLFqzmjupkWH6Bq5Q3dJjZ9c7m', '0', '1', '1509014567');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('52', '0', 'btc', '115DLizZCaZKoeexG2VCzc9tXsWzvcBDa6', '0', '1', '1509014575');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('53', '0', 'btc', '115GDoS1GBJJn9G5XyhgGPieTLCzD9zff2', '0', '1', '1509014583');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('54', '0', 'btc', '115RcovWZ4vPCauznwMZp6u3pit6As64dQ', '0', '1', '1509014589');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('55', '0', 'btc', '115Rifc5ubASz1faEYNtpBqoyCMdU4ea6D', '0', '1', '1509014596');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('56', '0', 'btc', '115RzBrFik7QBrbStsx6jib79Xs6WAnUvY', '0', '1', '1509014604');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('57', '0', 'btc', '115VrM2f8MLiRnMJxeHzFaeKn3mVgXdnTM', '0', '1', '1509014611');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('58', '0', 'btc', '115YN9NiZFRQXLQzfFeJmLbgHZqqzbHytg', '0', '1', '1509014619');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('59', '0', 'btc', '115buweSnBiBK89zqZr5EKupQHi3ua3EAH', '0', '1', '1509014626');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('60', '0', 'btc', '115ccWwXEAfQb8qkMaYm1SbFy46QaHFgwB', '0', '1', '1509014634');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('61', '0', 'btc', '115gJYQ7Jp8VfmLTZHvASusD1UeYq7bAkw', '0', '1', '1509014641');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('62', '0', 'btc', '115ijTE6h2MQkvqyqkdbk4frVGzzn5huYr', '0', '1', '1509014647');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('63', '0', 'btc', '115oz5CksD4yuRvtZ5uxpZK4wESN4iwmoC', '0', '1', '1509014671');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('64', '0', 'btc', '115qmygvRa2LpYdZiMXgN5t96xmriWE1rE', '0', '1', '1509014686');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('65', '0', 'btc', '115tWUeLsKwVcobudQBfZEyHu1jLZeUShe', '0', '1', '1509014693');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('66', '0', 'btc', '115uXySBtBFqa3UaoK9NGWRNNtfy8yy6C', '0', '1', '1509014703');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('67', '0', 'btc', '1163NE1YGD9UTSNBtCFYLuG5Z9hBvh4L7A', '0', '1', '1509014711');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('68', '0', 'btc', '1164Xp2x5dU29TLCZvXAL4XnmHaLUbKHc2', '0', '1', '1509014719');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('69', '0', 'btc', '1169FNbVTpqMQi2iHsKGpBKeXZrVYS5uFt', '0', '1', '1509014724');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('70', '0', 'btc', '116CVpFfh6dLzYjnAHsaFMY5srXgFTeN8E', '0', '1', '1509014729');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('71', '0', 'btc', '116F5Sa6jFnZX4WcUhEif57VRgeAt1QDPS', '0', '1', '1509014734');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('72', '0', 'btc', '119yeGeWmYWCmaBD58vWGWxD57d3ew7mL', '0', '1', '1509014739');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('73', '0', 'btc', '11CTnEyDDuzgEFKfzTN8XJnsNFUz1uucq', '0', '1', '1509014743');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('74', '0', 'btc', '11GsA95mr2L7ZsphnhdLsBUa9QbAZjZbS', '0', '1', '1509014822');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('75', '0', 'btc', '11HLsLncviUb3AQXZKN7bM35LfXKR8akt', '0', '1', '1509014834');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('76', '0', 'btc', '11QARqyUJBeVXjvYxENeWGBj73yH99mAS', '0', '1', '1509014842');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('77', '0', 'btc', '11Ye6qy8JYvV6sspjywBWmwd3N5VqHmMH', '0', '1', '1509014849');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('78', '0', 'btc', '11ZBipeXSdkzYCLko5voPSYYNFnqZp24z', '0', '1', '1509014855');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('79', '0', 'btc', '11aLDuCXSZTStQuVj4UqEScZP8zXw5bXy', '0', '1', '1509014864');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('80', '0', 'btc', '11iVaUhZhy8JhvVp6v4iSqoEYqVBHrZtx', '0', '1', '1509014870');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('81', '0', 'btc', '11nzx1pEm36MNAUumZpczsi7hnFTQ2bNH', '0', '1', '1509014876');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('82', '0', 'btc', '11o2VdXpAgxca8EN9ZgskTkhJHxicBpRh', '0', '1', '1509014883');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('83', '0', 'btc', '11rajf1YLagydKMj5wfQ9TCR1C2Nyvzok', '0', '1', '1509014888');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('84', '0', 'btc', '11roUzAKkzwtyU54fvMwgJdGhw8ceVeTm', '0', '1', '1509014896');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('85', '0', 'btc', '11u5VDCUyHvVjvBhLzxoLs4xDdUK7MKQ8', '0', '1', '1509014905');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('86', '0', 'btc', '11xFQaYEERQLMx3kLcRLwVhbqwQ3HsKiG', '0', '1', '1509014911');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('87', '0', 'btc', '1211MkbVBnH1GSAeAi6SqEBS8RFVKTjwma', '0', '1', '1509014917');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('88', '0', 'btc', '1218TrVXiSwD47XBWuzZjp4i2jibBxc6XN', '0', '1', '1509014924');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('89', '0', 'btc', '1218fddM5uuSvVTXVfhdwkk838UYajokpo', '0', '1', '1509014934');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('90', '0', 'btc', '1218vXUWheCQ2syFd76fcy51rfADsDuxjU', '0', '1', '1509014939');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('91', '0', 'btc', '121CxjFehpqmZX5EyXq8XsCDxU9RJCE1ka', '0', '1', '1509014948');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('92', '0', 'btc', '121UGVmKRAyEhcfgypLdtCbU7YRcamWeTW', '0', '1', '1509014955');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('93', '0', 'btc', '121V4P2Nd3cHXKYMGWaFw3xhfsRmg2Unqn', '0', '1', '1509014968');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('94', '0', 'btc', '121hKQiP592nf2hsktvkxvsA8812HkHMkz', '0', '1', '1509014987');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('95', '0', 'btc', '121khTemSykuxXykorvuw4dDgS836zH4f8', '0', '1', '1509015000');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('96', '0', 'btc', '121rgSSTdWTCT5hyeEUdxd44tmP61vq2Br', '0', '1', '1509015006');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('97', '0', 'btc', '1221mruQKFmFNchw3AXETRqKZ2jusBNGYa', '0', '1', '1509015013');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('98', '0', 'btc', '1226SapmXebUFLWLFRteDMoSwFurTMHKBp', '0', '1', '1509015023');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('102', '0', 'ltc', 'LKEWMinkqLMyR4M6ynASE21kGzoCJDm2qA', '0', '1', '1509017425');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('103', '0', 'ltc', 'LKEYwum2d8XyzT3c3V8dvLmjTq18b4hbH6', '0', '1', '1509017434');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('104', '0', 'ltc', 'LKEaEEu4tkHJ8iTbpRPA6jFsPRA2yZX5iq', '0', '1', '1509017445');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('105', '0', 'ltc', 'LKEfdJYcnANPvGf87KUKhAaPRTFiWBNGZj', '0', '1', '1509017456');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('106', '0', 'ltc', 'LKEiYw7RPg9sApmKLnTnu6fdcaU1ffi4yc', '0', '1', '1509017464');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('107', '0', 'ltc', 'LKEqtF4NaiujPvKP4PkkNA9m7GUvZBve6j', '0', '1', '1509017552');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('108', '0', 'ltc', 'LKEuJdG3XAZt4JWMD8MKVzHFfkYENsYKU6', '0', '1', '1509017572');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('109', '0', 'ltc', 'LKEvDiWFg4FHj4KVsbJ917AE1nEG2NGqAf', '0', '1', '1509017585');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('110', '0', 'ltc', 'LKEwaW4oE42SYsVNM4Mj1w4ZbJQG7LCYKJ', '0', '1', '1509017607');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('111', '0', 'ltc', 'LKExAiMGr1N8B1CSkNxs74wqr53msmwRaH', '0', '1', '1509017678');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('112', '0', 'ltc', 'LKFCHCd9qNZQVr79xCz8z4HuEAiqToRNHy', '0', '1', '1509017717');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('113', '0', 'ltc', 'LKFGvovro18NyJsVrhTEKX5rcNgRBuSjJe', '0', '1', '1509017745');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('114', '0', 'ltc', 'LKFPT1Xne14tcALEDCEkxWBh4jCbG5kaX6', '0', '1', '1509017785');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('115', '0', 'ltc', 'LKFTCp2RgFomAQmccS2RuFLkZeQNQJ8BiR', '0', '1', '1509018008');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('116', '0', 'ltc', 'LKFUEZA4JDANX2kCMz3SQrkVoPxEiNNK8i', '0', '1', '1509018017');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('117', '0', 'ltc', 'LKFgHtvZ5QtQZG63Ayw7fRSohbbMn6wp2w', '0', '1', '1509018032');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('118', '0', 'ltc', 'LKFhHisF3WCYmAtnetj4URvBYf6U2retqw', '0', '1', '1509018043');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('119', '0', 'ltc', 'LKFhQu98URe6MAZD5HygonJGMko1TB3tTB', '0', '1', '1509018049');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('120', '0', 'ltc', 'LKFmRBFmjsgsmkiGRpXMkU41KDnPtqXynx', '0', '1', '1509018062');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('121', '0', 'ltc', 'LKFqr25jKNWfQt5jXLzwXtUJH5YqwRBSf6', '0', '1', '1509018067');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('122', '0', 'ltc', 'LKFqutzsvFKvCvyUSfsrydqYPEMa1BXLbL', '0', '1', '1509018073');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('123', '0', 'ltc', 'LKFvnUSYYNNRhFPTbDEawudCw6re8WB8Bp', '0', '1', '1509018079');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('124', '0', 'ltc', 'LKG2RcHPJDCayM5Wh4s3ddUJc4kbBeTGqA', '0', '1', '1509018084');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('125', '0', 'ltc', 'LKG5xeLLPTp4SnUJryfAnTQdcbYieKteti', '0', '1', '1509018091');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('126', '0', 'ltc', 'LKG68cda92bP5DpdYSnJgBBkWbfyTK49sk', '0', '1', '1509018096');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('127', '0', 'ltc', 'LKG6AYYTj3eh2bGTtaDDsK3oaJ5MwaPpmE', '0', '1', '1509018102');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('128', '0', 'ltc', 'LKG7zKiadrXnWSfN5DNNhYLmV3yjYeHjLm', '0', '1', '1509018108');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('129', '0', 'ltc', 'LKG859sXsXCpVBTeZgJQ9n6jtnKt2Gx2qk', '0', '1', '1509018113');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('130', '0', 'ltc', 'LKGDaiGBViCyvnAkLRGNWuqGgxN7yFJRQU', '0', '1', '1509018118');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('131', '0', 'ltc', 'LKGHLsWA4TyvjbPyB8DpftLa87CagzJRzR', '0', '1', '1509018125');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('132', '0', 'ltc', 'LKGTY3dCp7aJn9yrJ62zxBYrENLXwkLFE9', '0', '1', '1509018135');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('133', '0', 'ltc', 'LKGVHSaPLdafYJQo44iCRuGzudLyEPhQWU', '0', '1', '1509018140');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('134', '0', 'ltc', 'LKGX4W58WKQpfXeRmeMQJFTbAUVUeq94fK', '0', '1', '1509018145');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('135', '0', 'ltc', 'LKGdXxJYWs76rcz2uLngug9ycKom37BSfu', '0', '1', '1509018153');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('136', '0', 'ltc', 'LKGghC69mVuUx5CvQ2AsZzMX7da5EE1YgX', '0', '1', '1509018159');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('137', '0', 'ltc', 'LKGm4xqPARxLPvc44GF6uKX7s4H6KqcVd2', '0', '1', '1509018164');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('138', '0', 'ltc', 'LKGmPTVw4asaERXDkd66zT5JEciY4jJxyF', '0', '1', '1509018169');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('139', '0', 'ltc', 'LKGsGa61JHktpkScKaLv6b9Na3FLDAzsvL', '0', '1', '1509018174');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('140', '0', 'ltc', 'LKGtxFwUb8AtxHDD2r29G41F4Pmmma2r8g', '0', '1', '1509018181');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('141', '0', 'ltc', 'LKGz1o12VJiobnUdsepXL5Jcz9GTXrdT8m', '0', '1', '1509018185');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('142', '0', 'ltc', 'LKH4fKW8GLHBzMURbWHYuaY8UgTMsYhcrg', '0', '1', '1509018193');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('143', '0', 'ltc', 'LKHA5oc8U96dn8uby6un5irECpxxZjPsoF', '0', '1', '1509018200');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('144', '0', 'ltc', 'LKHBY3yH8enyfow7XMQqfmW3JpisaxL2Tr', '0', '1', '1509018205');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('145', '0', 'ltc', 'LKHBiiQWxkAReVJnYuMvrB9qfVtYHrhS1N', '0', '1', '1509018210');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('146', '0', 'ltc', 'LKHP5gcGUrZhE86uD2EXoc4jh1ia8HxBDy', '0', '1', '1509018216');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('147', '0', 'ltc', 'LKHPd2V64BfeHZZZJPXTGgcxZ5RRQBfdJv', '0', '1', '1509018220');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('148', '0', 'ltc', 'LKHb3p66apdsnFkDdrYdDLgjRoWMwTDhXq', '0', '1', '1509018228');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('149', '0', 'ltc', 'LKHbiFrV2H2FqdcXQYAq1huhwjaKh1RuA6', '0', '1', '1509018232');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('150', '0', 'ltc', 'LKHhucZdECcJH1Zn4W5Epsz4GpywFXrAN3', '0', '1', '1509018237');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('151', '0', 'ltc', 'LKHiV2W13BpoTEkqVQWjYZQatAzbVeLmxn', '0', '1', '1509018242');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('152', '0', 'ltc', 'LKHofD1bHFidqSJuTaBBzTUY4rctRfgagQ', '0', '1', '1509018248');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('153', '0', 'ltc', 'LKHy3JPXxAuiYqXm38XZHmWiHfsPV98F9z', '0', '1', '1509018253');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('154', '0', 'ltc', 'LKHyRTX6jFFu9o7T7uEKTQayL6Qm1mm3fB', '0', '1', '1509018258');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('155', '0', 'ltc', 'LKHyUjCynF33T7RR1poWQkPPSzFmWAQFur', '0', '1', '1509018263');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('156', '0', 'ltc', 'LKJ2dggZozd32Tj72ZbstH2reo1Btr2C9L', '0', '1', '1509018268');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('157', '0', 'ltc', 'LKJ73MAMdmXFb5LdXqKA2QcBhU64jFfBQJ', '0', '1', '1509018274');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('158', '0', 'ltc', 'LKJ8s855XXacng4NsZF1dYXiWbETHcZMu9', '0', '1', '1509018278');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('159', '0', 'ltc', 'LKJBuG7TBRMa8i5LTHyyVcPUoc29VgUm3B', '0', '1', '1509018283');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('160', '0', 'ltc', 'LKJZKmsuESPH1EJu9bJXqQ3yoXNW3pZJWc', '0', '1', '1509018288');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('161', '0', 'ltc', 'LKJfN8PcxGexpJv5ZNJvrwB5vCJDYkNBJ2', '0', '1', '1509018293');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('162', '0', 'ltc', 'LKJqq18mLfNHFRe2B7Ft1LHH1GfJYXamD5', '0', '1', '1509018298');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('163', '0', 'ltc', 'LKJrfiwfzZpCKMd3QeMTxzB23Z2aci7HjS', '0', '1', '1509018305');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('164', '0', 'ltc', 'LKJv1A4Lp7YfzrbeAaGF6rvnZ9SurejJFg', '0', '1', '1509018313');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('165', '0', 'ltc', 'LKK4RMJPDKBiCFwx3Q6nh8nti838AiuBXR', '0', '1', '1509018318');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('166', '0', 'ltc', 'LKK9pyG6adfGuG7TDL27KT6RqE7Xr6361K', '0', '1', '1509018324');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('167', '0', 'ltc', 'LKKBjD2DBqqy5vnSyKkSpGaJ3gtRotSTvt', '0', '1', '1509018329');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('168', '0', 'ltc', 'LKKErskRxzq7fprefmge3Zh4DycCpQrJHX', '0', '1', '1509018335');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('169', '0', 'ltc', 'LKKJUh5JhTYYHkGCwxTkWmFbg1sLVvdtHy', '0', '1', '1509018340');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('170', '0', 'ltc', 'LKKavyLhH7Gc8SYrxzTWRd3iQZZZCTAfqa', '0', '1', '1509018345');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('171', '0', 'ltc', 'LKKdCakex9kaMPfqcDLj69X14xhPfSgJtX', '0', '1', '1509018350');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('172', '0', 'ltc', 'LKKdwR55dFPHeZYCRktXmR26mJzxJikJMC', '0', '1', '1509018355');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('173', '0', 'ltc', 'LKKh79CY7hKWdmMGEhgW7E9xdDyc8YEqma', '0', '1', '1509018361');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('174', '0', 'ltc', 'LKKhG619zLrVSpPYJTMnoZkYamjAH5dkVf', '0', '1', '1509018367');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('175', '0', 'ltc', 'LKKkXv9PtsEscnRcEx6pc48w1wq1gFnSEU', '0', '1', '1509018372');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('176', '0', 'ltc', 'LKKoj3GCTsZemcQNNbXhiaWF93QXv4UBEG', '0', '1', '1509018380');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('177', '0', 'ltc', 'LKKt7DK1p6upWXUA7amrGfSBzKTyKqLvcG', '0', '1', '1509018389');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('178', '0', 'ltc', 'LKKxoGX1zy6HaqsZzyALcBTn5xqBxgdbCU', '0', '1', '1509018395');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('179', '0', 'ltc', 'LKKySgseRJRCaN8652hLsRnhKvrqGJpTg6', '0', '1', '1509018400');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('180', '0', 'ltc', 'LKL8384pUjW5JYTV7oxoE81JM4C4L4ePG9', '0', '1', '1509018405');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('181', '0', 'ltc', 'LKLDZYiwWmHS2qHBP9DSeP1vvju58acvuQ', '0', '1', '1509018410');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('182', '0', 'ltc', 'LKLELRJ25nKjbADDwpo9Z5DkXKiVbNu25t', '0', '1', '1509018417');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('183', '0', 'ltc', 'LKLHB1ZjhefVko9JjE8QMgbvtoKH3itbHV', '0', '1', '1509018421');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('184', '0', 'ltc', 'LKLNpnNHDj3ze5BGzArPoV3q4mEuzX1TuH', '0', '1', '1509018426');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('185', '0', 'ltc', 'LKLSr62qnJBJh8DdPNPWEfJEYezaBerrbD', '0', '1', '1509018432');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('186', '0', 'ltc', 'LKLUbRuAvDh8fr9nJiWFbUZvgmGspYQA9h', '0', '1', '1509018438');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('187', '0', 'ltc', 'LKLV3PZHA8JDLxQERB473rqgbqBzaqz5v9', '0', '1', '1509018443');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('188', '0', 'ltc', 'LKLb4rjsjU66rLRLtA6m9FdR7tiNzTahyM', '0', '1', '1509018448');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('189', '0', 'ltc', 'LKLbsErDBZ99iBhvBiKEaJgN8zbJ8LcNeV', '0', '1', '1509018453');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('190', '0', 'ltc', 'LKLudnUwZ3nT1XvHvXFn33XN4CPayLz2pn', '0', '1', '1509018458');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('191', '0', 'ltc', 'LKLw9Z1BQr669RtXNGTpevPwh7k2rC8UxY', '0', '1', '1509018463');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('192', '0', 'ltc', 'LKM2Y3fhs61UsRfQ44iN4ayXxSDEEf7KqW', '0', '1', '1509018469');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('193', '0', 'ltc', 'LKM3ZiLB67TRNxF348JM4dG4nqdMomkZHh', '0', '1', '1509018475');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('194', '0', 'ltc', 'LKM3f7sLQykRuDmyqXXRqTmemQL7Whvuav', '0', '1', '1509018484');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('195', '0', 'ltc', 'LKM5SHDVj3X9kMz9RufNAQyZQPdk24NXov', '0', '1', '1509018489');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('196', '0', 'ltc', 'LKMHwrhNdtn7vSxKJ9qUdqRPuNz1qt1cc5', '0', '1', '1509018495');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('200', '0', 'jj', 'erewrwerrwrwrw', '0', '1', '1509018765');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('201', '0', 'jj', 'wreawrerfafaf', '0', '1', '1509018771');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('202', '0', 'jj', 'dfasfdfasfafaf', '0', '1', '1509018779');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('203', '0', 'jj', 'gfsgregsgadfadfaf', '0', '1', '1509018790');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('207', '0', 'dog', 'D59GTDdmYLF8nGukCZHi8dhWdWVgq9Ghuc', '0', '1', '1509019457');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('208', '0', 'dog', 'D59H7mAw6Wg7rUr5mjc1ZX7hsPPEXzxdzb', '0', '1', '1509019463');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('209', '0', 'dog', 'D59H9oiwKwdiNz21rM4L7ACCazxGgajxaW', '0', '1', '1509019468');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('210', '0', 'dog', 'D59MGMAEvTUkyE81CZvfNzpAt89sY4GgHj', '0', '1', '1509019472');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('211', '0', 'dog', 'D59RsAeNFs2Z57AvXtXrDWVXyD3YJcumAd', '0', '1', '1509019477');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('212', '0', 'dog', 'D59Y3bc81kM99nXsM4HJTaheZpjPbKUWfq', '0', '1', '1509019485');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('213', '0', 'dog', 'D59Y8e3b8x4WMmfM7cwkw3KT3HKwhEXG8F', '0', '1', '1509019512');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('214', '0', 'dog', 'D59YfCS7j6emZhBPwiB6UkeJHavQAtjFer', '0', '1', '1509019548');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('215', '0', 'dog', 'D59a3RL2Q8AhiNNm6Gprf3imzLei2afK1b', '0', '1', '1509019553');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('216', '0', 'dog', 'D59aku3WRtUS96dk994RKx15EhMbjPePa2', '0', '1', '1509019645');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('217', '0', 'dog', 'D59b18zF1FG9Eu3RGwrgzrZnhEtsGiV27g', '0', '1', '1509019650');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('218', '0', 'dog', 'D59bzD2drjG9udRhsbG7aGX9ZSMRQXL4Fp', '0', '1', '1509019655');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('219', '0', 'dog', 'D59dV9MzMd73bpUhCBnp373KrXbrrxogVt', '0', '1', '1509019699');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('220', '0', 'dog', 'D59eBniDVMydPMHxNsvCBQLRMS2q88WSvP', '0', '1', '1509019709');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('221', '0', 'dog', 'D59eCr4mwmmoGiqsqhXoEiLZUCTgG2MJxp', '0', '1', '1509019737');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('222', '0', 'dog', 'D59fUHdbRzdq2MU6881DJM2SbtwSYxDnTv', '0', '1', '1509019743');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('223', '0', 'dog', 'D59hrYFoPRiPsbRdAhfEZ9fYYQcDK1AWUp', '0', '1', '1509019752');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('224', '0', 'dog', 'D59mKKpKKNFH25XTf9sLcdd5jqRBEcV92H', '0', '1', '1509019758');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('225', '0', 'dog', 'D59oEyEbsk3HznStwym6WoPSzN3mHk11mk', '0', '1', '1509019763');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('226', '0', 'dog', 'D59pzd5hhcCZWnyCVwx2X8M9bzYX7pVPfw', '0', '1', '1509019768');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('227', '0', 'dog', 'D59qE3sLKnSJceMLf6LmZJAqPHcnZTT8zn', '0', '1', '1509019773');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('228', '0', 'dog', 'D59qcuoaJNB5mwGJ85z2L5J1Y828VPSCmz', '0', '1', '1509019778');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('229', '0', 'dog', 'D59sCdauZtxiASxbRAo8D4LLpQXHMxbN5p', '0', '1', '1509019782');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('230', '0', 'dog', 'D59t5MBsEYUoY6VpzGiQ2gsfb1rvmk87pX', '0', '1', '1509019787');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('231', '0', 'dog', 'D59voBsj6b8171UDxL6cX49h8zRFNg6Eut', '0', '1', '1509019795');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('232', '0', 'dog', 'D59wMChiGpZkepTDJjCxkLZ2wKK7vQnZ6E', '0', '1', '1509019801');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('233', '0', 'dog', 'D59xmgsLjDDB3BQkVXCuKXRBiso1ubsuP2', '0', '1', '1509019806');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('234', '0', 'dog', 'D59yNAavPBtkbuMp5fnnBokyqn8MzqCRhg', '0', '1', '1509019811');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('235', '0', 'dog', 'D5A38TQycgDJtZsgz8FvxQodLurb8SC7BZ', '0', '1', '1509019820');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('236', '0', 'dog', 'D5A4TNQjUJXBYUCqjpF7RxRfBwBWQX2v8b', '0', '1', '1509019826');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('237', '0', 'dog', 'D5A4j1wA8HTERBuQS4aausPAuBmuZXRpJ1', '0', '1', '1509019830');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('238', '0', 'dog', 'D5A6yHaBqDSc1XbVynmWpPtu6pUDtdsEvQ', '0', '1', '1509019835');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('239', '0', 'dog', 'D5A7r4vU3oKNBBP934TW1ekMq8HmRDtZ6z', '0', '1', '1509019841');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('240', '0', 'dog', 'D5A8QkDK8DP4KAM6pDD3x91NoZ16VeJjnT', '0', '1', '1509019850');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('241', '0', 'dog', 'D5AAhAKuzFBuvqtCCH2kgbK9gPQyzzY1qE', '0', '1', '1509019871');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('242', '0', 'dog', 'D5ACihavNJGQwEa7iu5gm2VKGS8atW4dnF', '0', '1', '1509019876');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('243', '0', 'dog', 'D5ADp892xSSXdBxMNDB5vj4TjW1Xe4hj5G', '0', '1', '1509019882');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('244', '0', 'dog', 'D5AEd6WTjymeZFnJs5WX99kuvmovzZUfZt', '0', '1', '1509019887');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('245', '0', 'dog', 'D5AFSSfUo9D35eF52wmwoWhLqsdxg52Paw', '0', '1', '1509019896');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('246', '0', 'dog', 'D5AGRH52gTGfr1g9V1kyhqoMLsSFnM9heW', '0', '1', '1509019902');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('247', '0', 'dog', 'D5AJfs9QJzSWrqueq7AEQFRMN6NPuq4B15', '0', '1', '1509019909');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('248', '0', 'dog', 'D5ALQDv4cbYLD8H3w64wGY4u5jcAZKJKxe', '0', '1', '1509019948');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('249', '0', 'dog', 'D5AU5e39NoQpN2Tmk8hAXX7Y3QCgocN9b8', '0', '1', '1509019953');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('250', '0', 'dog', 'D5AWKS2VoHMWWhngweUZjo9GJPrSvppYA8', '0', '1', '1509019959');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('251', '0', 'dog', 'D5AWchGL9P8rEKjacoTRhdBnBQdVEydVg8', '0', '1', '1509019968');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('252', '0', 'dog', 'D5AXQxNRcH6Us1Jjxiacj6HVA3DbdXtGkk', '0', '1', '1509019974');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('253', '0', 'dog', 'D5AXnxArB4EBVbnqoYPRRX8bkzcej8WwBt', '0', '1', '1509019979');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('254', '0', 'dog', 'D5AXrXoE8SSBST85xC9HtJHtNbPZLGh7pQ', '0', '1', '1509019984');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('255', '0', 'dog', 'D5AapwTW4Te4AkaK6k3HhS3JrAnS17hqFY', '0', '1', '1509019988');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('256', '0', 'dog', 'D5AgUKSu6TbnUKjimz7bKbye8qdMFzcMPk', '0', '1', '1509019993');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('257', '0', 'dog', 'D5AgojWiu3PrKnJgd2ht3jTtZbfuwU8pb8', '0', '1', '1509019998');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('258', '0', 'dog', 'D5Ak67Lyh3TwPsfd3n9ukW546hnthdE2kk', '0', '1', '1509020003');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('259', '0', 'dog', 'D5AktEj4aAp2ei79ukG5Jmo7BB1J24UC5P', '0', '1', '1509020008');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('260', '0', 'dog', 'D5Ao52xSrBbGXzMQdikqMSisa5NvnSGrZw', '0', '1', '1509020014');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('261', '0', 'dog', 'D5Aq4NqKQhoKane2p7qxfaaznEadPAroqr', '0', '1', '1509020020');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('262', '0', 'dog', 'D5AsC6znM68bi9fFq345u6AcUvvRHyj7fh', '0', '1', '1509020026');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('263', '0', 'dog', 'D5AznFHVcLD4ViAZV2Jcs52m4hwL2Agj3h', '0', '1', '1509020031');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('264', '0', 'dog', 'D5B8EdQ8yEbyWDfJjYhKweeb7QoFMbDuVD', '0', '1', '1509020035');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('265', '0', 'dog', 'D5BA1bULWVp4FJJ7fdnpNWigPq8h3vPZ2B', '0', '1', '1509020040');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('266', '0', 'dog', 'D5BAQSaau3tXpUV3Z9FutxHi6uZNhNufFt', '0', '1', '1509020046');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('267', '0', 'dog', 'D5BC6JJK6dm65mSZacJpEtMgeoj95GAXHz', '0', '1', '1509020052');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('268', '0', 'dog', 'D5BCBNsG1MDfjyvBQokwV3E1QkczBXWwyp', '0', '1', '1509020057');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('269', '0', 'dog', 'D5BDXaQAo6N6AM4SsM9QTXd7MMyCdhaSGw', '0', '1', '1509020061');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('270', '0', 'dog', 'D5BEDGi4G78FeKvVmhTyT8N5qvfrqSXPcq', '0', '1', '1509020066');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('271', '0', 'dog', 'D5BFNhE8oourwaLcTbRUBazCUqF2dQRRcV', '0', '1', '1509020073');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('272', '0', 'dog', 'D5BKms6CFv1aNXSN4TKtobEDh1wbijQvhy', '0', '1', '1509020078');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('273', '0', 'dog', 'D5BKomXokrQNEirFqX4UHUzbQgKcnGrgSP', '0', '1', '1509020232');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('274', '0', 'dog', 'D5BKpmyef4R8pzXrEjmAn9diCoqFY2RwD8', '0', '1', '1509020238');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('275', '0', 'dog', 'D5BMF9o4sr8QKWshRHb1C3GJs71UExGYGd', '0', '1', '1509020242');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('276', '0', 'dog', 'D5BSxrisAzbcLLyeiKBe1TzZofaeqJfLbS', '0', '1', '1509020247');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('277', '0', 'dog', 'D5BTzJPY1PLuTJ3Cqps75FZbLvVE9NbqU4', '0', '1', '1509020250');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('278', '0', 'dog', 'D5BVGDePoAKdbRQ1UNEzM4tHB6W99mb8d5', '0', '1', '1509020255');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('279', '0', 'dog', 'D5BVZkFaNVGXLq3732PSviDL7XQzGhGZ2C', '0', '1', '1509020260');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('280', '0', 'dog', 'D5BaWeYMogkUjKyRnBbHerdf8iqk71L89T', '0', '1', '1509020266');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('281', '0', 'dog', 'D5Bb4CgM5vKyxz83DTw9fswDAqoGgb6dis', '0', '1', '1509020271');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('282', '0', 'dog', 'D5BcFJdoNN8R1DDBUkHqMBKbej3TvHB35i', '0', '1', '1509020276');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('283', '0', 'dog', 'D5BciXpn7AH6AwKEGnenNESnegGxYxR29H', '0', '1', '1509020281');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('284', '0', 'dog', 'D5BcmWwMGStq6a5kTQM4SLbZNjSTFkbTCx', '0', '1', '1509020287');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('285', '0', 'dog', 'D5BiBT3x5ccboXwLLTwAdYyD8ZRK19HYcW', '0', '1', '1509020292');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('286', '0', 'dog', 'D5Bk1yXwKdmz4q6JWdEwZ1cSE5ZwQ2P6mT', '0', '1', '1509020297');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('287', '0', 'dog', 'D5BmmRuFqTnvUkyBVKN73RT7fyMisrdiUy', '0', '1', '1509020302');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('288', '0', 'dog', 'D5BnTQ45MUNPJan9LTtfN66DZcdjr3gx9P', '0', '1', '1509020307');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('289', '0', 'dog', 'D5BnhWQjG8pRXqzTYYKVqBn4Cjh5fxoGT9', '0', '1', '1509020313');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('290', '0', 'dog', 'D5Bqz8hAX3fcwVf8BGBYwxyQN8Dke3UHGv', '0', '1', '1509020318');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('291', '0', 'dog', 'D5Bu3M3SufatqFRL5zhj3jPbvAYhTBkmmu', '0', '1', '1509020322');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('292', '0', 'dog', 'D5BvJtb8GZ1DqNH5JfrP9CUkDbdE6JpUEu', '0', '1', '1509020326');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('293', '0', 'dog', 'D5By9Prr2kgeJcWyP4LJfo9eso1y87Jz1k', '0', '1', '1509020331');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('294', '0', 'dog', 'D5ByBP2x5UwNM5M6Txj6LQHcVuvrESic8i', '0', '1', '1509020335');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('295', '0', 'dog', 'D5CD4fRF3m3Mxt8c7cBv7inS5QFp4SFdja', '0', '1', '1509020340');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('296', '0', 'dog', 'D5CEo6ZcJPdUeQfQodpZQugnL84LC19kbH', '0', '1', '1509020345');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('297', '0', 'dog', 'D5CFMFGGuiX4neKjXSHF9FzQjT1PYc3JhB', '0', '1', '1509020350');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('298', '0', 'dog', 'D5CGBDJjKsYZUPX2Z6CYRLzryGUnFvFfjQ', '0', '1', '1509020356');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('299', '0', 'dog', 'D5CJFpiVofR2ygzjtfDdu4N9urf74gbFTB', '0', '1', '1509020361');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('300', '0', 'dog', 'D5CKrAmxzzvaReGBwcdPrU5oKVgaUZUb6U', '0', '1', '1509020367');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('301', '0', 'dog', 'D5CMUNqdpxcNhesBtJbgghcYATtRWgskzA', '0', '1', '1509020372');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('323', '0', 'dash', 'XqWAmLG6pMitTEnUSkN5Zx5x6Su6Agv46z', '0', '1', '1509029308');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('324', '0', 'dash', 'Xxf82FWvwX5RKb3JXj2TgHX2MXPQCti8tV', '0', '1', '1509029312');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('325', '0', 'dash', 'Xair1YJpm5d7LcX5GojWhJXVPhdNSjNjo8', '0', '1', '1509029316');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('326', '0', 'dash', 'XsnTd5Xi45byohpCu1u8FCFVwNrNEpjQAS', '0', '1', '1509029321');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('327', '0', 'dash', 'XefsYx6L3JsAoqr9sjrymC31APfu62YxoY', '0', '1', '1509029327');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('328', '0', 'dash', 'XxuHnMsxWbctKF8vfKut5WdoeWAVNNR7iY', '0', '1', '1509029336');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('329', '0', 'dash', 'XkHDceZ6ttQQD7apRHrFz95hyugtbENHAJ', '0', '1', '1509029350');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('330', '0', 'dash', 'XjkrgLaUosuiRKKnRU9qGePd4wW8i3sLST', '0', '1', '1509029357');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('331', '0', 'dash', 'XieZtCHquZ7SigNFErUfzyRNKA45hE4oam', '0', '1', '1509029362');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('332', '0', 'dash', 'XyWXAbcPvyt9mkxWQfkFrMCNbEqMRvDqxK', '0', '1', '1509029367');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('333', '0', 'dash', 'XsTu9EuLkcpNmkWFCXksZJatgVqDmMTRyj', '0', '1', '1509029375');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('334', '0', 'dash', 'XbgrbrW6XRZt3w8d53zD5d2NdApbjzHZin', '0', '1', '1509029380');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('335', '0', 'dash', 'XqLMSoAXMKRDKAEr2vGto9pDr1pdDvEwvL', '0', '1', '1509029387');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('336', '0', 'dash', 'Xyn5yGhvqbMYoc46scGTg6nJ89aPiNNsjy', '0', '1', '1509029392');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('337', '0', 'dash', 'XcTdH9XnCEPSzgHx3Z174BZD1pvyMRkspo', '0', '1', '1509029398');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('338', '0', 'dash', 'Xbz9XbQUMPW24M7CyT2TB7rNBR9kJNfXx8', '0', '1', '1509029405');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('339', '0', 'dash', 'XmbE8oHquRYPP8bMBbyzNmtq8KxM9qMZSC', '0', '1', '1509029411');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('340', '0', 'dash', 'XtNfMZuLpqRY4suoTucpvxf3TyYWezCRoC', '0', '1', '1509029416');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('341', '0', 'dash', 'Xof29uhL1ThrD1XWxZ6kMBSkRSewKNU48g', '0', '1', '1509029422');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('342', '0', 'dash', 'XpRx276iwddXNaB5NqWr1C3VCjnkCVyrV4', '0', '1', '1509029444');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('343', '0', 'dash', 'XhiCLzj5nzDbzFR13Uiyt65nwRPJDYttQh', '0', '1', '1509029449');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('344', '0', 'dash', 'XaguEgjy1aswYnXshg27z6wVYqbZHZ3d9a', '0', '1', '1509029454');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('345', '0', 'dash', 'XmFTzgNMYK4PZntfuazPxwxVYuMj9tmz65', '0', '1', '1509029460');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('346', '0', 'dash', 'Xyxd43gLiaDGSERgsaNsP13wqptxr3Qai6', '0', '1', '1509029465');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('347', '0', 'dash', 'XhfsdMpu1db9nf4y4vom4HHxmBjHTG7XAt', '0', '1', '1509029472');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('348', '0', 'dash', 'XjRJJaBvazAmFRymuyo9yQAf3j2veRh4aF', '0', '1', '1509029476');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('349', '0', 'dash', 'XcMPcZmueYwPHcMmJih45LopXwpD9NWXY2', '0', '1', '1509029481');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('350', '0', 'dash', 'XjtFrtwoKqrgvqXVHgpi83vV2B99xSVFvX', '0', '1', '1509029486');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('351', '0', 'dash', 'Xpik27JAbGQhQrwtx3it88icwhCosVKrV8', '0', '1', '1509029492');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('352', '0', 'dash', 'XnbaZ6rDtdWuNixdfWYH3A84KQ6e7nTma3', '0', '1', '1509029497');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('353', '0', 'dash', 'Xy7K7R4qRU8vKSKEaE19kzMpP7BEbSA7oi', '0', '1', '1509029502');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('354', '0', 'dash', 'XpCjvoyrXqXVD5NHwjnGcT2cSu9q55Jmhk', '0', '1', '1509029544');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('355', '0', 'dash', 'XmjBi914DDwQdeSBfsh7QcmX9QTvndBje6', '0', '1', '1509029549');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('356', '0', 'dash', 'XwhgtKcVvzvYmkNhtTCSrdW3ztr1kX4rBP', '0', '1', '1509029556');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('357', '0', 'dash', 'XikrvULNF3WiESNCPYjMajsGsJontpeJ5V', '0', '1', '1509029562');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('358', '0', 'dash', 'XdjAE4mpEwn7w7w2NZz3GFdayG4ZapWpDm', '0', '1', '1509029568');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('359', '0', 'dash', 'XgSxr4cNUYVKBhaQfTr8Cp9uKGF9U1C5Hh', '0', '1', '1509029576');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('360', '0', 'dash', 'Xh2sQNREtWHGP2g9uDjka7UcUzxmPHHcCa', '0', '1', '1509029582');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('361', '0', 'dash', 'XtMCJzy9Z7aWeqcUVZnjgYoj6xL5T4aPvW', '0', '1', '1509029588');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('362', '0', 'dash', 'XtVq5Wyg9UJWop3v1bDBfDduZZFDkFv1SL', '0', '1', '1509029622');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('363', '0', 'dash', 'Xhz8s1ReSnyikhdtycuYmZmk4faSTUN9zh', '0', '1', '1509029627');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('364', '0', 'dash', 'XwPPNCpZG6djCBRnxpgesvLdAHAsVNUPvb', '0', '1', '1509029632');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('365', '0', 'dash', 'Xw73gndGmMky516wzD2VzXtGaWP5PiTwiP', '0', '1', '1509029638');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('366', '0', 'dash', 'XgvojTjS46n9KDsWHmN3TpFHcnnMHVdNLK', '0', '1', '1509029642');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('367', '0', 'dash', 'XfyRs6hB7Czo2ecmGxugqtCNuCjoT4kXM5', '0', '1', '1509029649');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('368', '0', 'dash', 'XexYYq16xcDdQstT5gVafcSj2Jyf7ZAVZG', '0', '1', '1509029654');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('369', '0', 'dash', 'XrbGCCwzPAceV7wBjYw9ySGAiMkFTvdAen', '0', '1', '1509029660');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('370', '0', 'dash', 'XokNwtA7cL9MwXLkjKRd46tg9gMpszFvH5', '0', '1', '1509029665');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('371', '0', 'dash', 'XeQfL4eo43ius1c5HtnHSCVUWDk4YUopmN', '0', '1', '1509029669');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('372', '0', 'dash', 'XrCvG2JFxCjbt7bkcw4n75NMW1v2gBme9x', '0', '1', '1509029675');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('373', '0', 'dash', 'XgVVaF89hNcbT6rEfpEfCV3MLPzfjNe2dG', '0', '1', '1509029680');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('374', '0', 'dash', 'XjdgFqrLdBRoCDyhGLszvdpjWfnwBRRJYg', '0', '1', '1509029685');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('375', '0', 'dash', 'XxLE6YvWWbE1NwANYGouY7oYTr3oCyobDT', '0', '1', '1509029691');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('376', '0', 'dash', 'XqkJ9YRkxneF9gJFXRc3rUQeiPds1XwufD', '0', '1', '1509029711');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('377', '0', 'dash', 'XvpmdJuYiS65PdV6rw34Yjskr1igvGy716', '0', '1', '1509029733');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('378', '0', 'dash', 'XsTd86eZTjjrJ773JFzg6hS48QBys833Xc', '0', '1', '1509029738');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('379', '0', 'dash', 'XmDNCzRTrAKTFc4XHiDs5VcbueTNKabyoQ', '0', '1', '1509029743');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('380', '0', 'dash', 'XpL2pbJPkefy9amSy2BTHjwuZpTFtt12Sg', '0', '1', '1509029748');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('381', '0', 'dash', 'XbXhGuUoDDsvQ7s7cqkw4KSgJ8LvB2U6xk', '0', '1', '1509029755');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('382', '0', 'dash', 'XtxA6EymqqBv6p6iTc63c63QcTvbL42MKq', '0', '1', '1509029760');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('383', '0', 'dash', 'XdWtVyXSVDSGBi6B5T7YvrMuC9nHzKQd6J', '0', '1', '1509029765');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('384', '0', 'dash', 'XqoqyZfMnAEPnGmQZUPBbRPr7dtQuZ1oia', '0', '1', '1509029770');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('385', '0', 'dash', 'Xgtd9Y44pMTPdvRhrY4rVBKXcQh4JAwjLb', '0', '1', '1509029775');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('386', '0', 'dash', 'XiQRucMoYwDb9hvgQGMhXneJ8Ryi8MjTXE', '0', '1', '1509029781');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('387', '0', 'dash', 'XhmBJFp4uBhrFEpEu5aGqd4MAuRNeLtdhu', '0', '1', '1509029785');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('388', '0', 'dash', 'Xo2KN7oBAoTpdJngW1hrDzH8TwjhfeAEHS', '0', '1', '1509029790');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('389', '0', 'dash', 'XmRqhwP3VrgVyPcRtudW6x434FPjC9hLVX', '0', '1', '1509029794');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('390', '0', 'dash', 'Xqy2jav6NPwonGLPeC2AaAygdcpN6Xz91v', '0', '1', '1509029799');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('391', '0', 'dash', 'XiMPCvUXutW6shhZ5HPzXozCLw4QjAJY6W', '0', '1', '1509029804');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('392', '0', 'dash', 'Xu7oYJpdLTAa9h4LMEGEmkWGkC7dvMyNyc', '0', '1', '1509029809');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('393', '0', 'dash', 'XjSE6ZAGoco6wRe2ggoHzxLasJXVs1ZDxT', '0', '1', '1509029814');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('394', '0', 'dash', 'XwvjmEhQAYgKtVvHYYFXhkUoVjVsCEfgTe', '0', '1', '1509029821');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('395', '0', 'dash', 'XvzLFqQSCmCJtuWp6UkNpcTGL9zuCzJqmt', '0', '1', '1509029827');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('396', '0', 'dash', 'XfgpViVzqm9WP5F9QWuDCMJN47YrDcokDE', '0', '1', '1509029833');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('397', '0', 'dash', 'XgDZv5osjriAFnnWPdGFUvVkCxAQAeMYgE', '0', '1', '1509029838');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('398', '0', 'dash', 'XoxwN1XfQwa9opRhgL68sxCF3oKXxKABSF', '0', '1', '1509029844');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('399', '0', 'dash', 'XwUtLjCF1h4KBKoKq4VASCiA2fgigs8zja', '0', '1', '1509029851');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('400', '0', 'btc', '1228fG4bwjEJtqyVpmhyCu5CSDy3mC4jR8', '0', '1', '1509050549');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('401', '0', 'btc', '122DjMbNw2LBEiMjsbzmxaMyVoykXQWc9X', '0', '1', '1509050556');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('402', '0', 'btc', '122JCmAiBz8v8R8mpweAH7PmitYP7bGpkm', '0', '1', '1509050563');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('403', '0', 'btc', '122YrAgjQs4KqYK9wD5VSqWQiKtuX4GpSv', '0', '1', '1509050597');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('404', '0', 'btc', '122Z276oQqj9DVUjGaqouW6wqm7omu1pec', '0', '1', '1509050606');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('405', '0', 'btc', '122aVfis6R4HHFtnrCJF2CxDUCRYPpefVf', '0', '1', '1509050630');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('406', '0', 'btc', '122aimtAXPNFX4q3oyHDyvm3sz9qFpeNeh', '0', '1', '1509050637');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('407', '0', 'btc', '122ajev8CwZ9B9neBUgL4yRwYVsUfTYH6R', '0', '1', '1509050643');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('408', '0', 'btc', '122fMEvnRtG6G2dpgpDemBSdPzEw8TfA6L', '0', '1', '1509050663');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('409', '0', 'btc', '122favhJ59LvTzRkvVmPzatDcfixfLY2zy', '0', '1', '1509050671');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('410', '0', 'btc', '122g4HBw7Z5NBrZoWMkHFHgbed73kbCHT1', '0', '1', '1509050677');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('411', '0', 'btc', '122iUjmc6X7PcPcvxLTmdoc29yTvQPYRTq', '0', '1', '1509050682');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('412', '0', 'btc', '122prjF4YbpiFNxdbvUnt7BgpuTLAB2WfH', '0', '1', '1509050687');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('413', '0', 'btc', '122pvt4vLBZoznJUNEp7yNpMfu1xeEtrzi', '0', '1', '1509050692');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('414', '0', 'btc', '122r26okmSWtbarWnLF3EpNgBfqt2xG1u6', '0', '1', '1509050701');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('416', '0', 'btc', '122xrPGKgxJDGVZJobixHerdy1oWS7yvgL', '0', '1', '1509050799');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('417', '0', 'btc', '122yNsFwteBfEPqz2w9stG9xgTi7NyQtGQ', '0', '1', '1509050853');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('418', '0', 'btc', '122zWjBXrWmW5Hx3tmcUNmzGTcacpem4jq', '0', '1', '1509050862');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('419', '0', 'btc', '12315rmj8xS7e36pc2kroYh2cyxhhyZXpY', '0', '1', '1509050867');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('420', '0', 'btc', '1231f6Jsio5ZUb7sLRKHJYwq7BHpG3GYwF', '0', '1', '1509050873');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('421', '0', 'btc', '1238CBEBwfgAuyUNnD2qw6Q4eYTCedUNgm', '0', '1', '1509050879');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('422', '0', 'btc', '1239JHtfGFtfJF5JrXfBViq5DgTq64ZTvV', '0', '1', '1509050885');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('423', '0', 'btc', '123CYVKQcBUJ6txsffu98252W6cngQQHdp', '0', '1', '1509050899');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('424', '0', 'btc', '123P8zGyxJuUTwQy4YEhVr6JRHEEssXo9Z', '0', '1', '1509050906');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('425', '0', 'btc', '123PUUZu9rU9wnYH8EQ5fArqQen4mzraxg', '0', '1', '1509050911');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('426', '0', 'btc', '123PpmAfsnDXQeph4tPpKGe2VSQf4rSQk7', '0', '1', '1509050923');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('427', '0', 'btc', '123XsQnCaihodnTTVtNgX8bzmPKnQ4SY4v', '0', '1', '1509050928');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('428', '0', 'btc', '123eDyhbyUyiCPV2vPAjYyASV5yKCqkKGp', '0', '1', '1509050935');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('429', '0', 'btc', '123gxFJwRar7sou5kB83sUzPGFN5Sn76WU', '0', '1', '1509050940');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('430', '0', 'btc', '123mpXrYFnbNCHufyRHZ5WRShxpD5jjtSe', '0', '1', '1509050946');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('431', '0', 'btc', '123sSk4tGv6viTM25MEiYCnFTzQruNoxfk', '0', '1', '1509050953');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('432', '0', 'btc', '123wiUNa8rCGYxABLLKc5Sf3fbpmPVJ6sP', '0', '1', '1509050958');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('433', '0', 'btc', '123ztLJUiuDeDNuhERXJL2DxfjzEvAcKiW', '0', '1', '1509050963');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('434', '0', 'btc', '1242qnpiHJT9bYGvDhSvoiV3v88Y7MzwT8', '0', '1', '1509050968');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('435', '0', 'btc', '1245nuVPGQx9wGyVYSXQcPc77RUgS1ZWAK', '0', '1', '1509050973');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('436', '0', 'btc', '1245tsnjuNw5jPX5UwEL9Kh9yJkG3QGLMo', '0', '1', '1509050978');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('437', '0', 'btc', '124HufQwd84pzkPvbJ7atBCFBMsDckVHVS', '0', '1', '1509050988');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('438', '0', 'btc', '124X97usPwkTKsEbVd67Z9ATXdCpvmoJus', '0', '1', '1509051021');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('439', '0', 'btc', '124bCCVu4GzuRnHgUqR43YzxFCNS4CvpCC', '0', '1', '1509051038');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('440', '0', 'btc', '124cxhGukfk1SPaeAgb5GSoArydyABYVoG', '0', '1', '1509051045');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('441', '0', 'btc', '124hdKitu1cTZn8jRpGZgTeHwsvN7krnWz', '0', '1', '1509051049');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('442', '0', 'btc', '124q43wA9bqq91AAQBTUKSc6Bp5byGxuVA', '0', '1', '1509051138');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('443', '0', 'btc', '124rWvrocBKby77kCh7p193UmbUB6gjMYz', '0', '1', '1509051145');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('444', '0', 'btc', '12575WEYmDpNca4w8xsAo6uHk9YbxPYjJu', '0', '1', '1509051152');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('445', '0', 'btc', '1257YVBUZgFXnPGQq7uCNWxNPW8HXbPwTV', '0', '1', '1509051157');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('446', '0', 'btc', '1257cRn5kgtz5iiDgLdC7vQRPL1xbqJGLW', '0', '1', '1509051161');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('447', '0', 'btc', '1258uq7T4y3b58i7biBg4Q6aGQ1hNdzixb', '0', '1', '1509051166');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('448', '0', 'btc', '1259LtdxX2zmkfcRMmhkeFUbry7My29FZT', '0', '1', '1509051172');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('449', '0', 'btc', '125BvXm16E98bVm923ktVo5CabCfR1CzCp', '0', '1', '1509051178');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('450', '0', 'btc', '125EsUFjZPCC5D26ztVxfK5r4idmAxEGYF', '0', '1', '1509051184');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('451', '0', 'btc', '125Hax9ZuGXK79NjE8ihaqYcS9H3G2Be3g', '0', '1', '1509051520');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('452', '0', 'btc', '125M9Sre7Vx1YGYmMbjuswaJUWnk7gMm4o', '0', '1', '1509051541');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('453', '0', 'btc', '125P4Wyz4orDmHRh5SDgPwB4Uu6qLew9Ya', '0', '1', '1509051554');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('454', '0', 'btc', '125RPCGw2rvmGfYifx39aYj9siPn1U26tC', '0', '1', '1509051559');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('455', '0', 'btc', '125SmYd42QurjEfQeMGaNzqjkiv8fukeDq', '0', '1', '1509051587');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('456', '0', 'btc', '125U2sDfG8QDoV53xJAEiepzqZSeJj3Bss', '0', '1', '1509051595');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('457', '0', 'btc', '125XS21k32gUx5khzAboS7Jx14V7dQpnQJ', '0', '1', '1509051600');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('458', '0', 'btc', '125kxWUc7X7sGgkJeCF6K61rv2S61cHvja', '0', '1', '1509051648');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('459', '0', 'btc', '125mof4nCD1WQjWaN5MstefZ9sg85X2pug', '0', '1', '1509051659');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('460', '0', 'btc', '125p51HqzR4d7sD6zgDiMjqZbrsAVrnaWN', '0', '1', '1509051670');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('461', '0', 'btc', '125sDuB5e8S4oKyMkad8dxqi2bRKgvFX53', '0', '1', '1509051683');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('462', '0', 'btc', '125tT8Y3qcWgcfgqes5toDL6bCNxSyD7jd', '0', '1', '1509051688');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('463', '0', 'btc', '125tqXEetndRskC1Zz6yeoNirrgtDANjFB', '0', '1', '1509051706');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('464', '0', 'btc', '125v1h56KKTbXwZDATuTtsfZyma6eH45Ez', '0', '1', '1509051711');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('465', '0', 'btc', '1262SVo5onfqvJoSqsASxdBxwgcLv9dYwq', '0', '1', '1509051735');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('466', '0', 'btc', '1264D9TN7sba6VnqoYofyscndpwU5Dx1Tw', '0', '1', '1509051742');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('467', '0', 'btc', '126DnSJaNu7TXUYKmWrfaGQfuGfjKvAq9g', '0', '1', '1509051751');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('468', '0', 'btc', '126FPH7F1MVRpm3fXNkj6jLdgV9FaXRKiA', '0', '1', '1509051756');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('469', '0', 'btc', '126LHFwGkjbvxWBU9NwV64hsAb4sqSgzKf', '0', '1', '1509051761');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('470', '0', 'btc', '126UX5umxoUqRYj1FU3Cr2nEnhnGWxZEfk', '0', '1', '1509051772');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('471', '0', 'btc', '126ayE1LyZxqmELrZZ2ZbuCzvxqX8R7uYc', '0', '1', '1509051779');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('472', '0', 'btc', '126eMUfRbpVvTEEvBdqmDHhk3rNnp4mwZ9', '0', '1', '1509051792');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('473', '0', 'btc', '126fG8KZcTzb3Qw894UZ2T9BY4uxheZ1TZ', '0', '1', '1509051804');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('474', '0', 'btc', '126ibUgCGcsxhU1j9GrfjnW1buCWwNCSAD', '0', '1', '1509051809');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('475', '0', 'btc', '126rT21nVxVUatefQW7icLgAT71zGfUDtB', '0', '1', '1509051815');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('476', '0', 'btc', '126rxbcvo2xBxjig7pjg2RvWTMkaeCfsTQ', '0', '1', '1509051823');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('477', '0', 'btc', '126xoa7DjoK2JKRqF4z4XiNsZeMHETeKp3', '0', '1', '1509051832');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('478', '0', 'btc', '1274qEQTgRbswbkjkUq8TaMET4EhEYF6m9', '0', '1', '1509051854');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('479', '0', 'btc', '1276uKRk1S9d7NqNZqCdF2uYVBGr4X5VBv', '0', '1', '1509051858');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('480', '0', 'btc', '12791LshSaRehswmfHyGgEdgcVazMHk7AS', '0', '1', '1509051866');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('481', '0', 'btc', '127Dvq2LjCrtCTPYCpeu3cLbYvEuxrhALs', '0', '1', '1509051872');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('482', '0', 'btc', '127JaVNLUd2po7hmNgLqiBcwuxk6gTJ36B', '0', '1', '1509051879');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('483', '0', 'btc', '127P3R8AfN6MFNga1Vqx9JxUNaB77BkYbe', '0', '1', '1509051884');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('484', '0', 'btc', '127PAFWHiPsE4bGC9V4KMnA33nME27o9UB', '0', '1', '1509051889');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('485', '0', 'btc', '127SWXeZR42mbCh6kf2j8xVJ6Lc2N9KM2B', '0', '1', '1509051896');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('486', '0', 'btc', '127VZXFR4HdVTP4w9yd47vxBFLJwTgyrx3', '0', '1', '1509051914');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('487', '0', 'btc', '127aSPykdv326w1rqR8fBxxGpP4N94fkBL', '0', '1', '1509051920');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('488', '0', 'btc', '127cAGJtAiVuVM4tEzxMHiZM5Gk5rnxQni', '0', '1', '1509051925');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('489', '0', 'btc', '127jVQ5h1dMGWz119gneiSn3h78fDzs68P', '0', '1', '1509051934');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('490', '0', 'btc', '127mG7CWoDtDMC9atkve76GRpC6vy48fyu', '0', '1', '1509051939');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('491', '0', 'btc', '127uG7rx9PHhVnc1piYEiw5dSY6rx58erx', '0', '1', '1509051945');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('492', '0', 'btc', '1283XRV2dDRjrHBxSSDhyPucDpdmFL5FFr', '0', '1', '1509051952');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('493', '0', 'btc', '1286J3GjJ5L3StEjmgGxGF4hMAqMYE7dYd', '0', '1', '1509051961');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('494', '0', 'btc', '1287tMbGYihmq8NXK7BUX6fHXbM1HiBeqy', '0', '1', '1509051968');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('495', '0', 'btc', '1289ZzLhg4SDsouWBg5amCsNyxaDHJ1pgz', '0', '1', '1509051977');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('496', '0', 'btc', '128JkZX2Dzwr2Ec5xXmLnHjpaQJxxFe6kv', '0', '1', '1509051983');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('497', '0', 'btc', '128MLDp2Y64ucZfWLvkLC5imNQ9QZACrzo', '0', '1', '1509051991');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('498', '0', 'btc', '128NNhJo9UNY6BkgtZEHTFEhcUZiqTQSNF', '0', '1', '1509052003');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('499', '0', 'btc', '128QeehwhPyXZgZwwuKWPnUNDs4thE8dTL', '0', '1', '1509052012');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('500', '0', 'btc', '128RpHHnTP9so3XVGxaKdPWYZNP427ThGK', '0', '1', '1509052020');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('501', '0', 'btc', '128THsSYzif5rzch7P5HbMZFRS5ndrb7qY', '0', '1', '1509052100');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('502', '0', 'btc', '128Uy6LHX8fZbFUkpBykubN8ju6MTBRmFb', '0', '1', '1509052110');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('503', '0', 'btc', '128X8AmNuSUAtqFmKJvhYnV1p53k7tLETc', '0', '1', '1509052115');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('504', '0', 'btc', '128cHUJFsVQhFrKiXxKcUAiuKQs8wduF6L', '0', '1', '1509052121');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('505', '0', 'btc', '128k5KEBEaXnVBgpPgFNaPTAzftgm5LtjJ', '0', '1', '1509052126');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('506', '0', 'btc', '128o1o5WzhTvcaTnX8gPzEC7CvxeN633CG', '0', '1', '1509052132');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('507', '0', 'btc', '128qK1smkA8sFdg79KkS2nZfH6BGGTGCdx', '0', '1', '1509052137');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('508', '0', 'btc', '128sgNUAWMJbmNN68gBVpE7GLpNF2VDioW', '0', '1', '1509052142');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('509', '0', 'btc', '128tWorKJVL1K9H1W1vNs3avD1jNvhaNUc', '0', '1', '1509052150');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('510', '0', 'btc', '128vfGUdoZYEaYdwtFYw3qUWsTyRrRuydS', '0', '1', '1509052155');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('511', '0', 'btc', '128ySvLxzePk6CSAoCosfRS9AQsQyhZzoh', '0', '1', '1509052174');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('512', '0', 'btc', '12926GcJq7r83so9ofbbQBLRahTTiRyPGc', '0', '1', '1509052180');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('513', '0', 'btc', '1295CxDJSfHgTcxTVfRiXnjEXD3AEPao85', '0', '1', '1509052195');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('514', '0', 'btc', '1297dmaTf74ZKkb8t7hnngsjkKCyf11YKz', '0', '1', '1509052201');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('515', '0', 'btc', '129A2B1zuuQC2h6nrXC3DHuwAaeywHJz1W', '0', '1', '1509052207');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('516', '0', 'btc', '129D6wR2dWuYQ74uMwVGPGKqMnUcfZqVCP', '0', '1', '1509052213');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('517', '0', 'btc', '129FyE1ZHcDMTR6UJ3GsE68kULztY4dsxc', '0', '1', '1509052218');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('518', '0', 'btc', '129QGFyMXbpR8eFiB1CM8YfRkdNsfAvx4M', '0', '1', '1509052224');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('519', '0', 'btc', '129SZpXcEvHTHhb2rQnzgujbysNkB7DpgT', '0', '1', '1509052231');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('520', '0', 'btc', '129SfqoEWRJYuZkHaCDCaS2e16tBbQHNmx', '0', '1', '1509052272');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('521', '0', 'btc', '129SyKHtNhwEU7Fe96LXLfUCRn9FeyPUsy', '0', '1', '1509052285');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('522', '0', 'btc', '129V8EG7tgqcjjA5HbC3hEV2o52d3so3LD', '0', '1', '1509052291');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('523', '0', 'btc', '129VfCKNHBj59fXCU5yprES4H5wLjwEb4K', '0', '1', '1509052301');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('524', '0', 'btc', '129XXZsX2mZKKbrQJ43NdsCjTgk6jePCUh', '0', '1', '1509052330');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('525', '0', 'btc', '129ZfF6khEZwSjWW7D6mfCMAi1zuhZ6vzA', '0', '1', '1509052348');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('526', '0', 'btc', '129dgBRwLuSkh2YWiqA5pMEe667LmjfjeM', '0', '1', '1509052355');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('527', '0', 'btc', '129fBY61Ki6cYPx3xmAYYiE66ZzBnUe9hZ', '0', '1', '1509052363');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('528', '0', 'btc', '129jzTjbP2dVWp3VgCayekSZAmFmPNfJXp', '0', '1', '1509052370');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('529', '0', 'btc', '129kcdyiCPktTaDtUmTuayRmGCzzEFoTwS', '0', '1', '1509052376');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('530', '0', 'btc', '129kwfHiYPuDQFZyxJFXWuisNdzk1DMBPo', '0', '1', '1509052381');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('531', '0', 'btc', '129rirXEkS8cTphXAFEg6GXUdCyAzpnVdh', '0', '1', '1509052387');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('532', '0', 'btc', '129sZfBbAxSH3CgaTXteW49wWAsWtfgkjf', '0', '1', '1509052393');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('533', '0', 'btc', '12A2JDVW47gK16xCc3UQDK8xsYJLS1n9BR', '0', '1', '1509052410');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('534', '0', 'btc', '12A3kJouh5vPojvzGmrr8RuxHUQkysBhXW', '0', '1', '1509052423');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('535', '0', 'btc', '12A4JbU5Bx4mQYaXmumYGtz4rTp3VmeSAf', '0', '1', '1509052431');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('536', '0', 'btc', '12AB84rQ9RWXYGstNMxj3XAVoKTmVoRxMu', '0', '1', '1509052438');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('537', '0', 'btc', '12ADkw5EgJPhL41HJfubkopAHXpSSvwdcM', '0', '1', '1509052444');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('538', '0', 'btc', '12AJy9vSkh1f9RyvywekZc5xLYVb4ZjtuB', '0', '1', '1509052448');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('539', '0', 'btc', '12AKEERFGPVQvMgVAVUogoFXND1krnWNur', '0', '1', '1509052458');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('540', '0', 'btc', '12AQzUrUNpgcVUEDxSMbv35etS63TntBhe', '0', '1', '1509052476');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('541', '0', 'btc', '12AVE6TQkUMfwVANCCYi4oCQtnY5TPeCE7', '0', '1', '1509052485');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('542', '0', 'btc', '12AZXznUmT1Aw1Xm2nMSC2m7qUajZeVfUz', '0', '1', '1509052491');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('543', '0', 'btc', '12AaQyJqiaexLBNdD131ZRttGNSXcZcz8T', '0', '1', '1509052496');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('544', '0', 'btc', '12AaoroVvB4bY9SqxdvpkviyD835fhEzkp', '0', '1', '1509052501');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('545', '0', 'btc', '12Ae7soymM854yUjcEQUNKzTRRX5dwdchu', '0', '1', '1509052509');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('546', '0', 'btc', '12AgQNWRf1oppyDz1H3di9u3eTPT3rcc7D', '0', '1', '1509052517');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('547', '0', 'btc', '12AhBNsBx3beNPqKg8H4FaqLCq59MCiLoj', '0', '1', '1509052525');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('548', '0', 'btc', '12AiVogt6WmBu2QmYQCe47fFdYD75xDtQg', '0', '1', '1509052530');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('549', '0', 'btc', '12AjLmn8diFV4KGGtUFNWS6BcK29gW8Zme', '0', '1', '1509052547');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('550', '0', 'btc', '12AkA1jpAZYhzUZbWVqZBWqhMHmLN7ehy6', '0', '1', '1509052560');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('551', '0', 'btc', '12ApDjm67oaN6RbYy8V8KHPkmshkpsoRHP', '0', '1', '1509052829');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('552', '0', 'btc', '12AxJPzpb7vZHKCw1dgiKNxLBsKLuQdDe1', '0', '1', '1509052836');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('553', '0', 'btc', '12Aym9MjBGvkAKbZa3Bq2gR9w3pJRqD2Zc', '0', '1', '1509052842');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('554', '0', 'btc', '12B1LVVMXTDRNJLFjCwrPBGsK4ST5VGDwk', '0', '1', '1509052849');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('555', '0', 'btc', '12B1kATRFRkNg7X4QUt4jLGUrWERtGozhu', '0', '1', '1509052855');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('556', '0', 'btc', '12B4tLVeSUD61AytPxMrmWsX5SGPF1sjKP', '0', '1', '1509052861');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('557', '0', 'btc', '12B89gnT9GKgP3QVf2jxumvM9SjuT6DHDg', '0', '1', '1509052866');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('558', '0', 'btc', '12B8PX9Uv7irc82U2udMwDSe1AVE6Gf1NK', '0', '1', '1509052871');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('559', '0', 'btc', '12BBKopT9Bk6ahoszBu9RT7d2UArEYjm8D', '0', '1', '1509053059');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('560', '0', 'btc', '12BDhvxx1JmepByPsbL5my9z3yBtd3wjmM', '0', '1', '1509053068');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('561', '0', 'btc', '12BHrpHQjRKzsTYy6jsv5dmkaZXLyGb7R8', '0', '1', '1509053079');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('562', '0', 'btc', '12BNnRv3oCCyKaaxRHugYmcmeDzNeenRJV', '0', '1', '1509053084');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('563', '0', 'btc', '12BPzsomxZWbWnAg9cmX91cpxTqzKBftY9', '0', '1', '1509053089');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('564', '0', 'btc', '12BQVnDmn2q3uCdRmiF9dc8Pec6gRFMXLt', '0', '1', '1509053095');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('565', '0', 'btc', '12BUd6CuQTuqkXbJjCK2934XUvQTkPt3h7', '0', '1', '1509053099');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('566', '0', 'btc', '12Bb48PNA8M2KeourJ6m8UMBBC7ViRcku3', '0', '1', '1509053105');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('567', '0', 'btc', '12BgkwKzXKyhXRWG1CHFiikbkoHFwkAzJA', '0', '1', '1509053112');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('568', '0', 'btc', '12BhHyNZefxMhPWYxKzriHUY4jDaWd8Tcp', '0', '1', '1509053152');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('569', '0', 'btc', '12BjCzAwSFi5NQKJ72WVZGFhkj9bXWcr4x', '0', '1', '1509053158');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('570', '0', 'btc', '12BkCH94Li5DqJKsNFVy58KxgCgyLCKTXk', '0', '1', '1509053164');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('571', '0', 'btc', '12BqeMLPeHNkFAiFE5Go2dnRkKBLZTdeco', '0', '1', '1509053169');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('572', '0', 'btc', '12Byb8mpEwNk4wXf6FLkeRL56jRahSQMBE', '0', '1', '1509053176');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('573', '0', 'btc', '12C5FBN2PN2wEnzU2JnVVxBwVK95PmVUiY', '0', '1', '1509053182');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('574', '0', 'btc', '12C7JnRdjkC8oFcJtnpBGmnaCCiHzBbTAt', '0', '1', '1509053188');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('575', '0', 'btc', '12C9wZVw64Co9vZjEQbs4Lzhf2wsKm3T6b', '0', '1', '1509053193');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('576', '0', 'btc', '12CF2S73KNU7Yq7hNSqJhnjha4qir8v8HC', '0', '1', '1509053198');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('577', '0', 'btc', '12CF4vYor8giKUFa2iTpDv2XYFGUXETSCz', '0', '1', '1509053204');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('578', '0', 'btc', '12CFc5dMFzCM3ykUBL9vpQQTvED664joBK', '0', '1', '1509053208');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('579', '0', 'btc', '12CNHYDjax2aWnzViGsweCzdoFRSrK2yX9', '0', '1', '1509053215');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('580', '0', 'btc', '12CQpGioqmxJUmvQMJqRUt91ZNbVRKy8Yo', '0', '1', '1509053220');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('581', '0', 'btc', '12CUXnXhgaiDwuwb5amN8c6euv7CKafseN', '0', '1', '1509053225');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('582', '0', 'btc', '12CZDPcgXyEGU32hCdAD7UjQS79Cg7PCsp', '0', '1', '1509053230');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('583', '0', 'btc', '12CbkDhXWNfaMnx7dACXAq9CLoqWeAjMEZ', '0', '1', '1509053236');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('584', '0', 'btc', '12Cg6n1cFnWL7i4fssBWpyrmosQSzUV4P8', '0', '1', '1509053241');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('585', '0', 'btc', '12Chd7SMLb1bZP4qLnERf2Kef6upes7UDF', '0', '1', '1509053245');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('586', '0', 'btc', '12Ci85ZZK2psYrRtZygNZeRy9c7mKTn3L1', '0', '1', '1509053251');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('587', '0', 'btc', '12CiSx8Barc9ExfcNip3eQLpbVzuhHeXVa', '0', '1', '1509053257');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('588', '0', 'btc', '12CndnaCq5wTSUEAmeMeUMHbMnb8XgyNdH', '0', '1', '1509053263');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('589', '0', 'btc', '12CrAx2dYvXe9vowjxLk7rLwxe8HSvRSwo', '0', '1', '1509053268');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('590', '0', 'btc', '12CseXJe2CCwmx3t52azA5azJQAYv4ie3P', '0', '1', '1509053273');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('591', '0', 'btc', '12D8JRFdcYCS18Ehm2uukFGwyWaRSSYh4R', '0', '1', '1509053278');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('592', '0', 'btc', '12DFytEkBNCRxuYeEhGZnDmd4c5BvYEnLZ', '0', '1', '1509053283');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('593', '0', 'btc', '12DRiEYEh4yZHYRAZFcWZGy2BSf3sjgjRS', '0', '1', '1509053288');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('594', '0', 'btc', '12DRpKnzYG5F19uM6rEebtGRK9CaZeVEuY', '0', '1', '1509053294');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('595', '0', 'btc', '12DU6cTdLptFmTPyJTe1RBuYfrjtb9d3at', '0', '1', '1509053301');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('596', '0', 'btc', '12DUa5eKTuFu6p1DStJ1Hcp2fXfnsoHV3j', '0', '1', '1509053307');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('597', '0', 'btc', '12DV63xMCbKCnspYxcok5RgKEd8M65qQGf', '0', '1', '1509053311');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('598', '0', 'btc', '12DYn7qSkiZ7R1i9QbrDqrzvhUGcRsJVw2', '0', '1', '1509053317');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('599', '0', 'btc', '12DdRGjXLbjgT66mmMZshfNRsjyHvVHqEe', '0', '1', '1509053323');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('600', '0', 'btc', '12DnAacbDPDbk6caDHUXFJx1DA9p9AS9br', '0', '1', '1509053328');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('601', '0', 'btc', '12DnCJzsPmCnsWme4QfKRRiuidQB2spJfJ', '0', '1', '1509053797');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('602', '0', 'btc', '12DoQ7prDGAZXHb897RfxsGqBPCVbKYRTf', '0', '1', '1509053805');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('603', '0', 'btc', '12DqFMicLJ7SvPGQASEfpXyQRjdUnSMjec', '0', '1', '1509053811');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('604', '0', 'btc', '12DqqTZq41NSQ6Dns9EaXAXReNqeBNhzDV', '0', '1', '1509053825');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('605', '0', 'btc', '12DuLoC4FK1ch4ZbN2JTwVMLAU3orag7Uj', '0', '1', '1509054084');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('606', '0', 'btc', '12DxkHwgSozmx4mAsLKsRSjVPBGV3yTreu', '0', '1', '1509054375');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('607', '0', 'btc', '12Dyrj5ve487vpLZfDcJNnMLQXEMs4VBKo', '0', '1', '1509054386');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('608', '0', 'btc', '12E8J9dfBRCdvXNBBiMqSDjGMwtThkZkkB', '0', '1', '1509054391');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('609', '0', 'btc', '12EB2cSz7PSCyYicAYGxKwfitXgnBptMfR', '0', '1', '1509054402');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('610', '0', 'btc', '12ECjmGaSULv2nAg76NGjskut9aptLzGKT', '0', '1', '1509054407');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('611', '0', 'btc', '12EGnC2Pb4SL2nMvNetP9bNS6vcpxUjL1o', '0', '1', '1509054413');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('612', '0', 'btc', '12ELu7qPpNXqzutE2WnKAWHmdwouZFGDNq', '0', '1', '1509054418');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('613', '0', 'btc', '12EP9WtpJtAAj4uvaWgdD7iSiu6WizBTyq', '0', '1', '1509054424');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('614', '0', 'btc', '12ERkiTr7ss3GYpjxgharcrHoJ2psPZsCj', '0', '1', '1509054463');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('615', '0', 'btc', '12ETVdFnf6tiMc8uwHaiEYAKWD8ZCuHkRg', '0', '1', '1509054484');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('616', '0', 'btc', '12ETmucEcfk3xp2vB48aGxyJqy19Hdv53P', '0', '1', '1509054494');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('617', '0', 'btc', '12EURcMRi7LA4c4zv9dExdY5kncVC5FBsQ', '0', '1', '1509054504');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('618', '0', 'btc', '12EVf2GESFwUmKZeBnGpwg5Vrq2UZjTHJG', '0', '1', '1509054555');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('619', '0', 'btc', '12EXNmh5Kic4jbSwHjdtigVzaWN1YksWpu', '0', '1', '1509054564');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('620', '0', 'btc', '12EfqmmShgzt9Dgx2HNdp6hgJBiVbEZJit', '0', '1', '1509054574');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('621', '0', 'btc', '12EmUp63AQVMaRa5BvgtGrixZjhLYwC1aq', '0', '1', '1509054584');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('622', '0', 'btc', '12EpLwhx5p564Kdvdq1JGq7LCiQz7dmb6K', '0', '1', '1509054667');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('623', '0', 'btc', '12Era9z6fKDfUZ5CHSoJhNh5TKmUb3L2q1', '0', '1', '1509054679');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('624', '0', 'btc', '12EvCUie5F8z4FsMhGfQPNvvVv68TACTCf', '0', '1', '1509054686');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('625', '0', 'btc', '12ExX6oqwfGEbjhSR7QTg6135oPWw5EwXZ', '0', '1', '1509054697');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('626', '0', 'btc', '12F7YKo3Jse8dQMcPbuWNus1fYWWyLANL7', '0', '1', '1509054704');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('627', '0', 'btc', '12FU4xZXntcrYqK6YKB5c6WtYJ1q66Ve8X', '0', '1', '1509054719');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('628', '0', 'btc', '12FVV9tiv7jypNsJGmd6ewDLY19v2uJRkK', '0', '1', '1509054725');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('629', '0', 'btc', '12Ff3dCXG1zWPfZ1w6e221FEbfaENG4GUM', '0', '1', '1509054735');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('630', '0', 'btc', '12FkQTeAQy3dDtzxfwz8ziTpwqyKJrXePq', '0', '1', '1509054747');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('631', '0', 'btc', '12FoZFafhP2jdat4DAZjmEW9u5E4ViUwMH', '0', '1', '1509054759');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('632', '0', 'btc', '12FwCpqhd3YSf8gsKpeDnTaabCkFNtMyjS', '0', '1', '1509054767');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('633', '0', 'btc', '12FyTRFo41f7xzpNZcy6ZeoMJ9ZRyWrZRG', '0', '1', '1509054775');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('634', '0', 'btc', '12G83bcC9KrCei4JTrkxELtcS1NXsTSfnE', '0', '1', '1509054785');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('635', '0', 'btc', '12GC2Q4aw6V2g8W5rFNxqYya7hGGArCJQX', '0', '1', '1509054795');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('636', '0', 'btc', '12GHfKALBFz818rk4g4T5f7JJciKUK7b34', '0', '1', '1509054801');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('637', '0', 'btc', '12GMTj1AxSQQep3vnpwZLNizHRSzc7t2zw', '0', '1', '1509054831');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('638', '0', 'btc', '12GNxpZvn3fsS5aakBaMP8mxceHyDweY4A', '0', '1', '1509054838');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('639', '0', 'btc', '12GTkPubovudpB4YBnXzRsD19xHYAngVY1', '0', '1', '1509054846');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('640', '0', 'btc', '12GfsWRVUrRRKzLzupM2WZGLoKpJwTGjw8', '0', '1', '1509054857');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('641', '0', 'btc', '12GgCKEih7Sr1Y3qs6xkJSd9DKZjUt9ACH', '0', '1', '1509054875');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('642', '0', 'btc', '12Ghgsdc7ZETrjW1xj4qdQVk56LzATj5xY', '0', '1', '1509054883');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('643', '0', 'btc', '12GiaWtZqq2LHiE8N8fXt8kvvhTTv1sUhJ', '0', '1', '1509054891');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('644', '0', 'btc', '12GkwukAhVe5PQNmTcA1Hy1n9kgMCu6Qah', '0', '1', '1509054898');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('645', '0', 'btc', '12H1pyqcTj4mMuEo2J8meZvaroiz1qf5Ai', '0', '1', '1509054905');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('646', '0', 'btc', '12H2HGMDMdAmdPLPP2jegbsodSmx6kYER3', '0', '1', '1509054911');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('647', '0', 'btc', '12HF23u29dGGTrWvRjtE65kChV4DAFjuWD', '0', '1', '1509054918');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('648', '0', 'btc', '12HMnDt8RRAwoyPwwxotpFYWVTVPUpnzUJ', '0', '1', '1509054924');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('649', '0', 'btc', '12HRcXbTMoQCmgFD2A1HuezjauWGftzSjm', '0', '1', '1509054931');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('650', '0', 'btc', '12HT7k4Jogw5biU7DxSELzat3in4gg8f1m', '0', '1', '1509054942');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('651', '0', 'btc', '12HTJTqFRHzdiZP7aFM5JsfB23wNcfFhdq', '0', '1', '1509056368');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('652', '0', 'btc', '12HZF8wsTF229RX7SaSxNotdqmoC8MVxV2', '0', '1', '1509056374');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('653', '0', 'btc', '12Hdx81K8uEmFiMykpL1NCs4LsoV1n4ZWB', '0', '1', '1509056379');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('654', '0', 'btc', '12HqYcGVyVaWcu1fSLQca2CsD9ehQg7Q3X', '0', '1', '1509056384');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('655', '0', 'btc', '12HsBU2xEv22n7urwefgpeRMWRJHBar7xD', '0', '1', '1509056390');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('656', '0', 'btc', '12HsJLGcaXfVZdzUdZWZ7hj25g6kMYhzb6', '0', '1', '1509056397');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('657', '0', 'btc', '12Hu5TJ9DDdwZWcgSTYNFaKxouUP52kBSU', '0', '1', '1509056402');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('658', '0', 'btc', '12Hvqrq3up7M4D6TNB2KYpPWtEwVb3bB7P', '0', '1', '1509056407');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('659', '0', 'btc', '12Hz9RVaRmyzreMZHLVaPSDZ7WE9w1oHjp', '0', '1', '1509056414');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('660', '0', 'btc', '12J1TxSXZbDxiQfRE7zL177nnWD8rjoGq1', '0', '1', '1509056423');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('661', '0', 'btc', '12J2nX8ietUUmHKDGp1W9P5EMfbKTBqcAp', '0', '1', '1509056428');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('662', '0', 'btc', '12J8VCrQZ89LkJd36KoVKo8rM8Fa8josgg', '0', '1', '1509056434');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('663', '0', 'btc', '12JLZ2CForTtZLqwPMiCug3yy5Ge2xGYBq', '0', '1', '1509056439');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('664', '0', 'btc', '12JM67gXeEsGJZwu8bNgNwhC2rvuZp1Ryk', '0', '1', '1509056445');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('665', '0', 'btc', '12JRHAjpgFden9CawxvPQh24g41twpZNjt', '0', '1', '1509056450');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('666', '0', 'btc', '12JaQYEGam81jjbTJrBVPs8LKq6LKHVTDW', '0', '1', '1509056455');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('667', '0', 'btc', '12JjF2D75RVZxc5nFoQphjwwK7kq52KLWm', '0', '1', '1509056460');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('668', '0', 'btc', '12JkyDnYxMggFp2jECTA4rXoTtMQHxrAxr', '0', '1', '1509056465');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('669', '0', 'btc', '12JpMCLXpnSF9zNsbKtRKaFdp4Y1ujZA8T', '0', '1', '1509056471');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('670', '0', 'btc', '12JrrSA1pqm2jChuSsGx4eS1ewnMJVmvvg', '0', '1', '1509056497');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('671', '0', 'btc', '12JsbRU5ZNSqMXn9WoeQ8gagBJfuWCUzUL', '0', '1', '1509056503');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('672', '0', 'btc', '12JsrMxUQKxQX36EM4UvwiGJz4hwVA8Dzr', '0', '1', '1509056515');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('673', '0', 'btc', '12JtEQ4T1MmzSPU5qFKrXRcvc5J34bShZm', '0', '1', '1509056521');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('674', '0', 'btc', '12JtZ8QQS8Fi41Qqupfbr385YpUitNmRwt', '0', '1', '1509056527');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('675', '0', 'btc', '12K1o4nHrTGqq6JcjXYqtDmhoqr9mocdHd', '0', '1', '1509056533');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('676', '0', 'btc', '12K77oUkW4Mz7k6Xi4GywyKPXNSwJnvaXx', '0', '1', '1509056538');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('677', '0', 'btc', '12KCgJbss9sR1PwQA3oAGrcB5kQoF3WkuR', '0', '1', '1509056545');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('678', '0', 'btc', '12KEBqFXdXpA8NG8P5T9Fj5oZVhLfmycab', '0', '1', '1509056550');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('679', '0', 'btc', '12KEQaic5U2KhAKKTPYc4UpKxTJMwpcjmX', '0', '1', '1509056554');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('680', '0', 'btc', '12KFKayLLrZkKyL1HSg4z9MLq7ANnS2jFD', '0', '1', '1509056559');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('681', '0', 'btc', '12KG8oMR1q3W1aNuD3RBhQeLgMjUPcMosA', '0', '1', '1509056564');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('682', '0', 'btc', '12KH3tEFaMUCV7AErkZGT2KvXVQeGwk9b8', '0', '1', '1509056568');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('683', '0', 'btc', '12KH5KveFrLnsJKitMJnrcstzEoYg4NQaw', '0', '1', '1509056574');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('684', '0', 'btc', '12KH6GHCme96eL6pqZKHQ4MJc7yLpmM7QY', '0', '1', '1509056580');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('685', '0', 'btc', '12KSD1io89TnqmkhiMYWuPWPKxYLidEojH', '0', '1', '1509056585');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('686', '0', 'btc', '12KXAre5PV1C5P24AcgLpQaWeA1ZsGPuzk', '0', '1', '1509056591');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('687', '0', 'btc', '12KabVucs7YeCY6PYmxRMaWv2a2zHvKrgY', '0', '1', '1509056595');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('688', '0', 'btc', '12KfZGVqcRBeSFW914KMcV3QyHXm5irXhU', '0', '1', '1509056600');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('689', '0', 'btc', '12Kfru8c9qXhnRMV2a3JLJydZCVtYUR4EG', '0', '1', '1509056605');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('690', '0', 'btc', '12KguryM5RPrkGsDJRS78tqjHb3H3XGegP', '0', '1', '1509056610');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('691', '0', 'btc', '12Kh3j3xaFH21VAQR3ar4d2BpcFxadhRTu', '0', '1', '1509056615');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('692', '0', 'btc', '12KkLa3nmG57Np1tS1sDi2AFxZHztZHKtJ', '0', '1', '1509056621');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('693', '0', 'btc', '12KmeVywhEaesu9zX4YLLGveHmr4nMoiNW', '0', '1', '1509056626');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('694', '0', 'btc', '12KoXNsZsfbLLuEZYqKERs2ufmPBGHcgqo', '0', '1', '1509056630');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('695', '0', 'btc', '12KqnxUfrMoYRNXQBzLVksTdftEwqqpx3a', '0', '1', '1509056635');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('696', '0', 'btc', '12KtG9ddxePX2HvWML5S89vhmQgJDDFpRm', '0', '1', '1509056641');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('697', '0', 'btc', '12Kv1jErzi53mVt2GSVZggnjvTqsMK4J8f', '0', '1', '1509056646');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('698', '0', 'btc', '12KvAPSxXM9V3PYBjKfnptAdpsRHMbqaFR', '0', '1', '1509056652');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('699', '0', 'btc', '12L6MXHz1ZrL65jz3xdP3kZp6KN9ZRkJjY', '0', '1', '1509056660');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('700', '0', 'btc', '12L7QaWUXXEUVzqLy4E8qcBnkmvw4p1sKG', '0', '1', '1509056666');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('701', '0', 'dash', '1h2j3-g12hj3+12nj3=12kj3', '0', '1', '1509289277');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('707', '0', 'nxt', 'NXT-BD6C-WXJE-F8N5-D45P4', '0', '1', '1509291373');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('708', '0', 'nxt', 'NXT-Y577-8E4F-DXEB-9W54R', '0', '1', '1509291378');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('709', '0', 'nxt', 'NXT-37EH-WYLA-M4N4-45GU9', '0', '1', '1509291386');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('710', '0', 'nxt', 'NXT-6RTR-6NAG-N8M6-FXHAR', '0', '1', '1509291391');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('711', '0', 'nxt', 'NXT-TNGZ-RNFS-XAJB-7865X', '0', '1', '1509291397');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('712', '0', 'nxt', 'NXT-KJB4-5MZ3-KEAJ-G866N', '0', '1', '1509371814');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('713', '0', 'nxt', 'NXT-UVW7-XB3N-QRZQ-E9MRG', '0', '1', '1509371822');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('714', '0', 'nxt', 'NXT-YU82-LH6L-EEL3-5W2GU', '0', '1', '1509371829');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('715', '0', 'nxt', 'NXT-MVXY-RNLC-K2JT-G9A53', '0', '1', '1509371838');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('716', '0', 'nxt', 'NXT-JA6F-L9SE-L3SA-6YNCK', '0', '1', '1509371846');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('717', '0', 'nxt', 'NXT-EZTJ-4BWZ-72QS-GW38G', '0', '1', '1509371853');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('718', '0', 'nxt', 'NXT-MRNN-S2N8-RRYH-GLQLD', '0', '1', '1509371897');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('719', '0', 'nxt', 'NXT-Y3QP-8S86-HEN8-54AJC', '0', '1', '1509371904');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('720', '0', 'nxt', 'NXT-3J5U-6BXC-KA9N-GWC7W', '0', '1', '1509371911');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('721', '0', 'nxt', 'NXT-7MHS-NN3E-VEZY-AKRYA', '0', '1', '1509371931');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('722', '0', 'nxt', 'NXT-DZ8F-C3XA-JY5A-AGUC5', '0', '1', '1509371941');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('723', '0', 'nxt', 'NXT-RH7W-KDDZ-PGBQ-G6DJ7', '0', '1', '1509371948');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('724', '0', 'nxt', 'NXT-KRBV-FJ4X-CF54-6K2L7', '0', '1', '1509371957');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('725', '0', 'nxt', 'NXT-MKW3-QWE6-GNE5-AYAAX', '0', '1', '1509371961');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('726', '0', 'nxt', 'NXT-LKV5-4AXW-4ALM-FZUX6', '0', '1', '1509371967');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('727', '0', 'nxt', 'NXT-NYZW-D744-AVDJ-4J9E8', '0', '1', '1509371973');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('728', '0', 'nxt', 'NXT-LQY2-8RXX-TBBE-E297U', '0', '1', '1509371988');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('729', '0', 'nxt', 'NXT-7KL8-WDP4-CP7F-CGQR6', '0', '1', '1509371994');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('730', '0', 'nxt', 'NXT-THSH-S97D-NVX5-5KPCS', '0', '1', '1509372000');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('731', '0', 'nxt', 'NXT-78MB-SCSL-LUXT-2CLFF', '0', '1', '1509372012');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('732', '0', 'nxt', 'NXT-SYBV-R46G-R5NM-6ZQGF', '0', '1', '1509372020');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('733', '0', 'nxt', 'NXT-M6M7-G5NS-N9BL-EAGY3', '0', '1', '1509372048');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('734', '0', 'nxt', 'NXT-YZ8T-J74H-NYLS-45NGN', '0', '1', '1509372054');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('735', '0', 'nxt', 'NXT-AG3F-38W3-UZ35-HV34P', '0', '1', '1509372060');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('736', '0', 'nxt', 'NXT-MTUL-DQGT-NHAG-CBWWU', '0', '1', '1509372065');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('737', '0', 'nxt', 'NXT-CRXU-ZDF8-HPXG-H8PGQ', '0', '1', '1509372072');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('738', '0', 'nxt', 'NXT-YLUE-2DTQ-YWBW-2HT95', '0', '1', '1509372079');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('739', '0', 'nxt', 'NXT-UGBA-YANV-PKKH-6GV8W', '0', '1', '1509372084');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('740', '0', 'nxt', 'NXT-FHH9-JBNY-PZUF-9L8U4', '0', '1', '1509372091');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('741', '0', 'nxt', 'NXT-LR7Z-3GHD-QKR8-A2QM4', '0', '1', '1509372096');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('742', '0', 'nxt', 'NXT-AQ4T-SC8H-D4CD-9UDZ5', '0', '1', '1509372697');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('743', '0', 'nxt', 'NXT-RXQR-9A5P-9QHS-2CUSV', '0', '1', '1509372702');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('744', '0', 'nxt', 'NXT-J2WT-X92Y-UA69-9QPWA', '0', '1', '1509372706');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('745', '0', 'nxt', 'NXT-C292-UEJF-LM6G-F3LX8', '0', '1', '1509372711');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('746', '0', 'nxt', 'NXT-VYW4-3MKW-EZKC-657S8', '0', '1', '1509372716');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('747', '0', 'nxt', 'NXT-X8P6-L2NB-2EKC-BNEE4', '0', '1', '1509372721');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('748', '0', 'nxt', 'NXT-NAZC-TSBJ-E697-AFF5V', '0', '1', '1509372730');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('749', '0', 'nxt', 'NXT-MJYS-288D-SL38-485EA', '0', '1', '1509372737');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('750', '0', 'nxt', 'NXT-DGZ3-HTL3-KE7Z-9A4U9', '0', '1', '1509372742');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('751', '0', 'nxt', 'NXT-EEPH-8M38-VZKX-42ZLE', '0', '1', '1509372751');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('752', '0', 'nxt', 'NXT-CSQ2-7KPH-7MW3-G4GRB', '0', '1', '1509372761');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('753', '0', 'nxt', 'NXT-PL9V-5AUF-YFFU-GR6EC', '0', '1', '1509372766');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('754', '0', 'nxt', 'NXT-EVWU-L72R-4T9C-43U2B', '0', '1', '1509372771');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('755', '0', 'nxt', 'NXT-PE6E-VHPA-TT86-FXH33', '0', '1', '1509372776');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('756', '0', 'nxt', 'NXT-V3ZZ-LH59-LEET-9F3LK', '0', '1', '1509372781');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('757', '0', 'nxt', 'NXT-KKSP-TFR5-TUUT-2AJY8', '0', '1', '1509372786');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('758', '0', 'nxt', 'NXT-E97U-CK4B-7JZL-5BG93', '0', '1', '1509372791');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('759', '0', 'nxt', 'NXT-GG5P-C6MS-ZZ73-DZXPY', '0', '1', '1509372796');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('760', '0', 'nxt', 'NXT-FCUV-QX5Y-SLAK-4DVP8', '0', '1', '1509372800');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('761', '0', 'nxt', 'NXT-C38G-8ZXG-5YPT-2X4GH', '0', '1', '1509372805');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('762', '0', 'nxt', 'NXT-M35Z-KGAH-7D2M-DM7NB', '0', '1', '1509372820');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('763', '0', 'nxt', 'NXT-A946-KKAJ-72JT-72EE4', '0', '1', '1509372824');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('764', '0', 'nxt', 'NXT-4TLR-GEJ3-VNZ7-3VGT6', '0', '1', '1509372830');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('765', '0', 'nxt', 'NXT-NH33-BDUJ-L6BH-B3TTT', '0', '1', '1509372836');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('766', '0', 'nxt', 'NXT-S78J-4DXQ-UZE3-EQEGB', '0', '1', '1509372842');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('767', '0', 'nxt', 'NXT-7X34-JPKF-RKGV-DKY8B', '0', '1', '1509372847');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('768', '0', 'nxt', 'NXT-6WEV-5LRS-A3W5-DCCFE', '0', '1', '1509372852');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('769', '0', 'nxt', 'NXT-PZGQ-D3Y5-PNZ4-BZP8F', '0', '1', '1509372857');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('770', '0', 'nxt', 'NXT-F9G7-MCQG-JA95-54VLG', '0', '1', '1509372863');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('771', '0', 'nxt', 'NXT-T9CE-5RUX-RSZA-3AUGF', '0', '1', '1509372869');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('772', '0', 'nxt', 'NXT-D4ZQ-ZY9R-DXBA-4GN67', '0', '1', '1509372876');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('773', '0', 'nxt', 'NXT-DEE8-52TX-RX28-BUJ6Y', '0', '1', '1509372885');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('774', '0', 'nxt', 'NXT-DK75-YEWR-6R8A-6YZQM', '0', '1', '1509372890');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('775', '0', 'nxt', 'NXT-AA45-JB8M-MWRJ-6JL7N', '0', '1', '1509372894');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('776', '0', 'nxt', 'NXT-LR62-VFXR-UPU2-DBHC9', '0', '1', '1509372899');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('777', '0', 'nxt', 'NXT-UCPP-R7DV-5P3X-5THFQ', '0', '1', '1509372904');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('778', '0', 'nxt', 'NXT-5Q68-VMSZ-PLL3-DYNEJ', '0', '1', '1509372909');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('779', '0', 'nxt', 'NXT-39QN-WKDJ-V8WJ-GZ4QJ', '0', '1', '1509372914');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('780', '0', 'nxt', 'NXT-9ZRU-DNKV-NS95-6T6D4', '0', '1', '1509372919');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('781', '0', 'nxt', 'NXT-HGMF-S82T-5NSG-F5QF6', '0', '1', '1509372924');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('782', '0', 'nxt', 'NXT-NVRG-JZTC-TFTZ-5CU6F', '0', '1', '1509372932');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('783', '0', 'nxt', 'NXT-JFZG-43JA-BPHT-8X6BW', '0', '1', '1509372938');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('784', '0', 'nxt', 'NXT-P2LG-R82T-FPLJ-3W2BL', '0', '1', '1509372957');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('785', '0', 'nxt', 'NXT-JH8T-BPVV-RF5X-FBNTT', '0', '1', '1509372964');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('786', '0', 'nxt', 'NXT-767N-D4ZY-S2ZM-G9H3B', '0', '1', '1509372969');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('787', '0', 'nxt', 'NXT-KL7S-7NHZ-QE3T-8CJW7', '0', '1', '1509373549');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('788', '0', 'nxt', 'NXT-RXL8-QKML-76FT-324QU', '0', '1', '1509373556');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('789', '0', 'nxt', 'NXT-96ZC-TJPP-8E2D-2ZVCT', '0', '1', '1509373561');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('790', '0', 'nxt', 'NXT-C25X-MUDH-K9L3-FLX3U', '0', '1', '1509373566');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('791', '0', 'nxt', 'NXT-C8S5-F6BE-HKB5-EJ3YP', '0', '1', '1509373571');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('792', '0', 'nxt', 'NXT-U3QW-JMTJ-62XZ-7E82E', '0', '1', '1509373576');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('793', '0', 'nxt', 'NXT-SHHC-7CKW-87QQ-999ZP', '0', '1', '1509373581');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('794', '0', 'nxt', 'NXT-RX34-PRCZ-K4J3-6WLV8', '0', '1', '1509373586');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('795', '0', 'nxt', 'NXT-67QV-7MF4-YPF7-699UB', '0', '1', '1509373591');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('796', '0', 'nxt', 'NXT-99YF-M2FX-GKBU-473SY', '0', '1', '1509373599');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('797', '0', 'nxt', 'NXT-WAVR-WFPD-K8X5-B776C', '0', '1', '1509373605');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('798', '0', 'nxt', 'NXT-CF4J-FLZL-VE64-9PMZG', '0', '1', '1509373612');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('799', '0', 'nxt', 'NXT-M3Q7-ZQTM-N7DC-39CBX', '0', '1', '1509373618');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('800', '0', 'nxt', 'NXT-5GSQ-NAMW-UYRC-GEWKY', '0', '1', '1509373624');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('801', '0', 'nxt', 'NXT-CR4P-66D3-8Q4X-8HQ6D', '0', '1', '1509373630');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('802', '0', 'nxt', 'NXT-KG7X-28Q3-EUVA-DEZUY', '0', '1', '1509373635');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('803', '0', 'nxt', 'NXT-QTTA-6HZH-97YR-HVXC3', '0', '1', '1509373640');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('804', '0', 'nxt', 'NXT-33MQ-Z6TJ-8T5U-HHZCM', '0', '1', '1509373646');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('805', '0', 'nxt', 'NXT-9BTN-MJRU-JG4E-7RMYF', '0', '1', '1509373650');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('806', '0', 'nxt', 'NXT-U6QC-S9AM-WEHV-6AJEZ', '0', '1', '1509373656');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('807', '0', 'nxt', 'NXT-ST3E-VLWH-FDKD-HZJUH', '0', '1', '1509373661');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('808', '0', 'nxt', 'NXT-UUC4-VRBW-UXT8-E3PC8', '0', '1', '1509373666');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('809', '0', 'nxt', 'NXT-ESSD-TZSK-94XN-9H2NR', '0', '1', '1509373672');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('810', '0', 'nxt', 'NXT-WVWB-LZ2N-Z2JK-32LD5', '0', '1', '1509373679');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('811', '0', 'nxt', 'NXT-7NXK-44VX-ZGJN-9N6ZF', '0', '1', '1509373685');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('812', '0', 'nxt', 'NXT-XFF9-6DZT-H9YB-HN4YB', '0', '1', '1509373692');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('813', '0', 'nxt', 'NXT-KFH7-S3J6-ZZSF-ELJ7D', '0', '1', '1509373697');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('814', '0', 'nxt', 'NXT-J7SR-MES4-CTAK-5A9PV', '0', '1', '1509373704');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('815', '0', 'nxt', 'NXT-GYKE-VKKG-LNR4-CDBGX', '0', '1', '1509373710');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('816', '0', 'nxt', 'NXT-DSVH-DJA3-MAM9-8BT5N', '0', '1', '1509373715');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('817', '0', 'nxt', 'NXT-CCXP-RWXK-FP6M-CV7Y2', '0', '1', '1509373720');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('818', '0', 'nxt', 'NXT-P3KQ-HTQ8-MBQK-2QFQY', '0', '1', '1509373729');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('819', '0', 'nxt', 'NXT-H2GG-BU2Y-K9SK-2ZWW3', '0', '1', '1509373734');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('820', '0', 'nxt', 'NXT-S3ZM-8UTD-CLYF-GXKRG', '0', '1', '1509373738');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('821', '0', 'nxt', 'NXT-LT75-8UE8-9R5B-DR2K3', '0', '1', '1509373743');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('822', '0', 'nxt', 'NXT-S4RP-Z58H-TUUA-FS7R5', '0', '1', '1509373748');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('823', '0', 'nxt', 'NXT-ETLP-64YQ-G26B-9RWMM', '0', '1', '1509373759');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('824', '0', 'nxt', 'NXT-Q5KC-PWVL-RJE5-EEPPG', '0', '1', '1509373764');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('825', '0', 'nxt', 'NXT-KBES-U2SF-A7LE-D4GSZ', '0', '1', '1509373770');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('826', '0', 'nxt', 'NXT-MQJ7-2QBW-UTQ8-69T6D', '0', '1', '1509373827');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('827', '0', 'nxt', 'NXT-N8RG-DUCG-RT3Z-D9DRK', '0', '1', '1509373832');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('828', '0', 'nxt', 'NXT-YFMF-HN7H-FLVV-BJCEV', '0', '1', '1509373840');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('829', '0', 'nxt', 'NXT-Q75X-YZPP-79MM-3CDJV', '0', '1', '1509373848');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('830', '0', 'nxt', 'NXT-P6XQ-NRFP-78YH-3J7QP', '0', '1', '1509373855');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('831', '0', 'nxt', 'NXT-L8JL-9Y84-5J4B-HPDKL', '0', '1', '1509373861');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('832', '0', 'nxt', 'NXT-6CJD-9XUC-BDDN-3HXEN', '0', '1', '1509373868');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('833', '0', 'nxt', 'NXT-CKKY-KLHV-XQFK-FHV99', '0', '1', '1509373873');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('834', '0', 'nxt', 'NXT-RAQC-FHNM-9J6H-6ZUHK', '0', '1', '1509373878');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('835', '0', 'nxt', 'NXT-S6BW-2HEL-43ZV-HHZGE', '0', '1', '1509373884');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('836', '0', 'nxt', 'NXT-UN6B-CNZA-UZMR-G5L4N', '0', '1', '1509373889');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('837', '0', 'nxt', 'NXT-7LUC-78C8-2NCF-2CGHW', '0', '1', '1509373894');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('838', '0', 'nxt', 'NXT-PAC4-VHGS-FYM3-2VLLR', '0', '1', '1509373899');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('839', '0', 'nxt', 'NXT-TNLP-PSAN-SSNV-C5LB4', '0', '1', '1509373905');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('840', '0', 'nxt', 'NXT-B2X7-35B3-82FV-G6TSF', '0', '1', '1509373912');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('841', '0', 'nxt', 'NXT-MP6P-AQGD-WZSR-BW63Y', '0', '1', '1509373933');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('842', '0', 'nxt', 'NXT-NJPQ-EGTA-KUCN-GB4N2', '0', '1', '1509373939');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('843', '0', 'nxt', 'NXT-VLX5-59NQ-R5YF-64BXK', '0', '1', '1509373946');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('844', '0', 'nxt', 'NXT-FSRH-HMYU-W2HX-FA8KV', '0', '1', '1509373952');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('845', '0', 'nxt', 'NXT-H3XW-WV8V-L77K-3EUEC', '0', '1', '1509373959');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('846', '0', 'nxt', 'NXT-FRCK-VFT9-QWE3-6NFTD', '0', '1', '1509373964');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('847', '0', 'nxt', 'NXT-G8G3-C4FD-PUEC-B82RJ', '0', '1', '1509373969');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('848', '0', 'nxt', 'NXT-8Q7C-5UJF-SV5U-DFGK4', '0', '1', '1509373973');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('849', '0', 'nxt', 'NXT-RGRN-5GM8-FGXK-9UXPP', '0', '1', '1509373977');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('850', '0', 'nxt', 'NXT-ZDRL-JKKF-28PV-HCGEL', '0', '1', '1509373981');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('851', '0', 'nxt', 'NXT-NVTQ-NAZL-PYQV-8U4E8', '0', '1', '1509373987');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('852', '0', 'nxt', 'NXT-5GJG-C8FD-43X4-2AR7L', '0', '1', '1509373994');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('853', '0', 'nxt', 'NXT-MZJ9-4YRS-UXRF-HWEHZ', '0', '1', '1509373999');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('854', '0', 'nxt', 'NXT-AG8Y-HPT3-XPMV-C6ZF7', '0', '1', '1509374004');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('855', '0', 'nxt', 'NXT-ANQN-AFEJ-VLLX-GCLHY', '0', '1', '1509374009');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('856', '0', 'nxt', 'NXT-9A98-FGCK-KPQT-95WP6', '0', '1', '1509374014');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('857', '0', 'nxt', 'NXT-2TD8-RLD3-93EP-HAWQ3', '0', '1', '1509374018');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('858', '0', 'nxt', 'NXT-2HAM-PUGL-DU5M-2RZH2', '0', '1', '1509374025');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('859', '0', 'nxt', 'NXT-73NT-R6CB-SAF8-EHKSH', '0', '1', '1509374031');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('860', '0', 'nxt', 'NXT-Y7WP-A66H-AY34-EPGR7', '0', '1', '1509374037');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('861', '0', 'nxt', 'NXT-T3YV-7YLP-AJJX-EQ6TC', '0', '1', '1509374044');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('862', '0', 'nxt', 'NXT-EHVH-2ZQN-JY28-428FS', '0', '1', '1509374051');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('863', '0', 'nxt', 'NXT-4P2V-N9TK-U9U4-HAF2Q', '0', '1', '1509374057');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('864', '0', 'nxt', 'NXT-V6AD-VYZJ-6WPF-DK9AG', '0', '1', '1509374069');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('865', '0', 'nxt', 'NXT-7CAQ-6JKB-4PM5-F24V2', '0', '1', '1509374074');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('866', '0', 'nxt', 'NXT-BEUC-R7NC-9KTH-3TX5X', '0', '1', '1509374079');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('867', '0', 'nxt', 'NXT-CY2R-9XVS-7PVS-4CY4N', '0', '1', '1509374084');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('868', '0', 'nxt', 'NXT-7QKY-GMGJ-6JE5-7B73J', '0', '1', '1509374088');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('869', '0', 'nxt', 'NXT-VTXE-J57R-HJF6-DTBDJ', '0', '1', '1509374092');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('870', '0', 'nxt', 'NXT-RE57-3BXG-RFVC-84RDG', '0', '1', '1509374099');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('871', '0', 'nxt', 'NXT-L894-MQ7Y-WLJ7-8AD23', '0', '1', '1509374105');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('872', '0', 'nxt', 'NXT-NL5H-8ZAH-98BK-347US', '0', '1', '1509374111');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('873', '0', 'nxt', 'NXT-RZ78-4X2W-GPFJ-A2TQ4', '0', '1', '1509374116');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('874', '0', 'nxt', 'NXT-QJ3Z-38EM-8D3R-D4XDX', '0', '1', '1509374121');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('875', '0', 'nxt', 'NXT-CMUM-5YXU-SW74-3QE3Z', '0', '1', '1509374126');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('876', '0', 'nxt', 'NXT-W9FC-CA7E-P7XH-6B9X3', '0', '1', '1509374132');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('877', '0', 'nxt', 'NXT-MKC6-37NJ-M9JS-BZ2FF', '0', '1', '1509374139');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('878', '0', 'nxt', 'NXT-PS2P-MSPX-EKQX-CF7H7', '0', '1', '1509374144');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('879', '0', 'nxt', 'NXT-ZSGH-8A3T-PTSB-9T9YZ', '0', '1', '1509374149');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('880', '0', 'nxt', 'NXT-PZ3J-SULC-SJ3L-9V27G', '0', '1', '1509374153');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('881', '0', 'nxt', 'NXT-L2SD-JV76-J46E-585A8', '0', '1', '1509374158');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('882', '0', 'nxt', 'NXT-VXDV-RXJ7-T23B-AKHAA', '0', '1', '1509374163');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('883', '0', 'nxt', 'NXT-TVJS-PTBJ-2YCM-ER27N', '0', '1', '1509374170');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('884', '0', 'nxt', 'NXT-DRWF-R5P6-LH4P-G4KNG', '0', '1', '1509374175');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('885', '0', 'nxt', 'NXT-GXZY-GKKF-9V2P-GYRSY', '0', '1', '1509374179');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('886', '0', 'nxt', 'NXT-HV9G-SYZ9-QGST-ADP2L', '0', '1', '1509374190');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('887', '0', 'nxt', 'NXT-7XPU-M64W-LNS8-377YU', '0', '1', '1509374194');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('888', '0', 'nxt', 'NXT-R5VD-RLBN-G6FK-378XF', '0', '1', '1509374199');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('889', '0', 'nxt', 'NXT-LDE5-LNRP-D9KZ-F59FY', '0', '1', '1509374204');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('890', '0', 'nxt', 'NXT-7JRB-PSZR-46WX-E7DRK', '0', '1', '1509374214');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('891', '0', 'nxt', 'NXT-99D8-6KJS-5M3K-FU4UH', '0', '1', '1509374219');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('892', '0', 'nxt', 'NXT-3KMF-JYEW-JPEL-F87QD', '0', '1', '1509374223');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('893', '0', 'nxt', 'NXT-NPZX-NYNT-CFU2-6GLDS', '0', '1', '1509374229');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('894', '0', 'nxt', 'NXT-JHN5-BW6T-XGX6-AUPWK', '0', '1', '1509374236');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('895', '0', 'nxt', 'NXT-RA8X-C3VB-PRY2-GESFZ', '0', '1', '1509374241');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('896', '0', 'nxt', 'NXT-2BC7-24DN-7LRG-5NZEY', '0', '1', '1509374245');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('897', '0', 'nxt', 'NXT-FW9Z-YQC3-8W53-D4L4Q', '0', '1', '1509374249');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('898', '0', 'nxt', 'NXT-ZXNU-H9KJ-E6D9-A68Z6', '0', '1', '1509374254');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('899', '0', 'nxt', 'NXT-VT9Q-6HC4-C3K9-6ZYKY', '0', '1', '1509374258');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('900', '0', 'nxt', 'NXT-GJWN-FNAV-MZAM-G9W35', '0', '1', '1509374263');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('901', '0', 'nxt', 'NXT-7B67-H4AY-C762-BSN6Y', '0', '1', '1509374271');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('902', '0', 'nxt', 'NXT-T5BS-XHKY-BNGX-BGX4X', '0', '1', '1509374277');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('903', '0', 'nxt', 'NXT-QJU3-9MYV-CFET-FU57T', '0', '1', '1509374282');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('904', '0', 'nxt', 'NXT-UQWU-C2VR-JLCN-2H5NP', '0', '1', '1509374289');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('905', '0', 'nxt', 'NXT-CX7N-QD4Z-8UBX-DUT6A', '0', '1', '1509374295');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('906', '0', 'nxt', 'NXT-4A9P-KSCK-J3K3-GL32D', '0', '1', '1509374301');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('907', '0', 'nxt', 'NXT-JLB7-9JEY-9RYA-2H737', '0', '1', '1509374307');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('908', '0', 'nxt', 'NXT-BNAJ-Y7MJ-SSQX-3Z4WS', '0', '1', '1509374311');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('909', '0', 'nxt', 'NXT-Y364-9R7V-D9N3-BYZHT', '0', '1', '1509374315');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('910', '0', 'nxt', 'NXT-DD9G-EF85-A4GB-7MFXA', '0', '1', '1509374319');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('911', '0', 'nxt', 'NXT-VF35-2AZ5-PHC5-9RQ8A', '0', '1', '1509374323');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('912', '0', 'nxt', 'NXT-VMQT-E3WU-R6HM-F37SZ', '0', '1', '1509374328');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('913', '0', 'nxt', 'NXT-B5TG-CHXG-796F-4TF7L', '0', '1', '1509374333');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('914', '0', 'nxt', 'NXT-2JVK-6869-C9KT-54DJR', '0', '1', '1509374340');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('915', '0', 'nxt', 'NXT-SZY3-PMVD-7MN3-GZECE', '0', '1', '1509374345');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('916', '0', 'nxt', 'NXT-8YFK-KEQ4-WMHW-3KLN4', '0', '1', '1509374350');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('917', '0', 'nxt', 'NXT-6UX7-GP3G-J4WX-8HFCQ', '0', '1', '1509374354');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('918', '0', 'nxt', 'NXT-LZL4-CUHE-9T5P-HQBXS', '0', '1', '1509374364');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('919', '0', 'nxt', 'NXT-2QFC-VZTK-6UTB-F45CF', '0', '1', '1509374371');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('920', '0', 'nxt', 'NXT-AMPJ-HB99-DXRE-H7XJ7', '0', '1', '1509374378');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('921', '0', 'nxt', 'NXT-K23F-4D6V-J8DW-HJQWD', '0', '1', '1509374382');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('922', '0', 'nxt', 'NXT-M6AP-7FCD-WH3R-9K9LY', '0', '1', '1509374387');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('923', '0', 'nxt', 'NXT-97AN-D29H-UA3M-7YQMC', '0', '1', '1509374391');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('924', '0', 'nxt', 'NXT-P4TC-KFJZ-RVKD-AZV4N', '0', '1', '1509374396');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('925', '0', 'nxt', 'NXT-YDME-EB9C-NKPP-AP8ZM', '0', '1', '1509374402');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('926', '0', 'nxt', 'NXT-DHYC-YK4Q-38XG-E7M6D', '0', '1', '1509374406');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('927', '0', 'nxt', 'NXT-9NGX-SWT4-HPVP-AS2YB', '0', '1', '1509374413');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('928', '0', 'nxt', 'NXT-W9VL-EX74-FYUQ-8CVRS', '0', '1', '1509374418');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('929', '0', 'nxt', 'NXT-VMZH-X73L-XB6S-FFTXU', '0', '1', '1509374423');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('930', '0', 'nxt', 'NXT-JQTB-FMXY-ZR2G-C7XBR', '0', '1', '1509374428');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('931', '0', 'nxt', 'NXT-KQYP-PF5H-WSPW-9ED86', '0', '1', '1509374433');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('932', '0', 'nxt', 'NXT-8ZDM-NMTL-ZEB8-5MQTF', '0', '1', '1509374438');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('933', '0', 'nxt', 'NXT-AT2G-7MMP-XG6P-AKUMR', '0', '1', '1509374443');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('934', '0', 'nxt', 'NXT-ULER-B394-JCKC-D43EU', '0', '1', '1509374449');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('935', '0', 'nxt', 'NXT-QYMS-ASTU-R4J9-2SR82', '0', '1', '1509374454');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('936', '0', 'nxt', 'NXT-ACXW-YPSM-CL6Y-5TJLQ', '0', '1', '1509374462');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('937', '0', 'nxt', 'NXT-KS5A-BR29-9SKD-FXKHC', '0', '1', '1509374468');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('938', '0', 'nxt', 'NXT-5YG6-VM24-3CGX-7RPU2', '0', '1', '1509374477');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('939', '0', 'nxt', 'NXT-XWUL-TVZ6-XCSP-DDFHC', '0', '1', '1509374482');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('940', '0', 'nxt', 'NXT-LNLR-4PXL-PMNN-EERBT', '0', '1', '1509374487');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('941', '0', 'nxt', 'NXT-5MRB-UXLH-7YQS-9JXMD', '0', '1', '1509374492');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('942', '0', 'nxt', 'NXT-496M-W3FT-BAZH-8C4RA', '0', '1', '1509374496');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('943', '0', 'nxt', 'NXT-PDSR-2Z7L-MKQP-DDCGN', '0', '1', '1509374501');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('944', '0', 'nxt', 'NXT-U6TU-B3MU-HTZW-ERV9J', '0', '1', '1509374507');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('945', '0', 'nxt', 'NXT-6ATG-K8NC-WW8T-2X5XR', '0', '1', '1509374517');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('946', '0', 'nxt', 'NXT-2KGG-T6DU-T3AC-4L922', '0', '1', '1509374521');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('947', '0', 'nxt', 'NXT-54QT-EQLX-NTDY-DTSKU', '0', '1', '1509374527');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('948', '0', 'nxt', 'NXT-ZGJ9-3P6R-CV8J-AN8SU', '0', '1', '1509374535');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('949', '0', 'nxt', 'NXT-FQ3M-X6AA-KQ92-CVSVX', '0', '1', '1509374541');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('950', '0', 'nxt', 'NXT-7YCS-KGJC-LDGC-6D8K3', '0', '1', '1509374545');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('951', '0', 'nxt', 'NXT-RMFV-N36V-2DDB-2PEM2', '0', '1', '1509374549');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('952', '0', 'nxt', 'NXT-T65Y-4655-K3PW-7JX5W', '0', '1', '1509374554');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('953', '0', 'nxt', 'NXT-YN67-DZJK-R6E8-ECL7E', '0', '1', '1509374562');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('954', '0', 'nxt', 'NXT-S2KR-S9K2-69EZ-A83TY', '0', '1', '1509374567');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('955', '0', 'nxt', 'NXT-ZAUJ-69GT-5GFG-9J5MJ', '0', '1', '1509374572');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('956', '0', 'nxt', 'NXT-PYAG-3YVL-TGZC-FKYYW', '0', '1', '1509374588');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('957', '0', 'nxt', 'NXT-KMFY-9BES-NM62-FW9GD', '0', '1', '1509374593');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('958', '0', 'nxt', 'NXT-BTXA-7V2A-Y8YY-DVFRX', '0', '1', '1509374597');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('959', '0', 'nxt', 'NXT-7BCR-Z9GP-PMHW-EV5PY', '0', '1', '1509374602');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('960', '0', 'nxt', 'NXT-VBKY-QL4U-4F2L-ES8PK', '0', '1', '1509374607');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('961', '0', 'nxt', 'NXT-RHLF-KUSE-NGE8-8SANW', '0', '1', '1509374616');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('962', '0', 'nxt', 'NXT-CPQF-XUXF-EP3M-7JYEV', '0', '1', '1509374624');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('963', '0', 'nxt', 'NXT-92V8-6LNJ-ZWJQ-5NJTU', '0', '1', '1509374630');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('964', '0', 'nxt', 'NXT-WMYU-X94C-AN5X-DLSDR', '0', '1', '1509374636');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('965', '0', 'nxt', 'NXT-YQBH-BF6V-EUZR-87UYF', '0', '1', '1509374641');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('966', '0', 'nxt', 'NXT-8A5N-BJPR-R57U-5V36K', '0', '1', '1509374646');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('967', '0', 'nxt', 'NXT-9SWX-SPSD-SQMW-6EU2Z', '0', '1', '1509374651');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('968', '0', 'nxt', 'NXT-7A5X-JY89-FKFN-F3ZWC', '0', '1', '1509374657');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('969', '0', 'nxt', 'NXT-GKNA-95EE-3B23-F38K7', '0', '1', '1509374663');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('970', '0', 'nxt', 'NXT-HZZ4-7GYR-ARHS-HKSZB', '0', '1', '1509374668');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('971', '0', 'nxt', 'NXT-XPWG-PSXP-4VD2-FV8Y8', '0', '1', '1509374672');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('972', '0', 'nxt', 'NXT-KMHT-3WV6-UNET-9FZD9', '0', '1', '1509374678');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('973', '0', 'nxt', 'NXT-5M43-R7TZ-PGVH-C5Q38', '0', '1', '1509374683');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('974', '0', 'nxt', 'NXT-LWEJ-BRPC-35ZA-8XBUP', '0', '1', '1509374692');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('975', '0', 'nxt', 'NXT-Z6WK-8TDM-LVLP-CSMT7', '0', '1', '1509374697');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('976', '0', 'nxt', 'NXT-GLCJ-KAWA-YCEF-AMFEC', '0', '1', '1509374701');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('977', '0', 'nxt', 'NXT-H98C-YGW9-3WV4-7Q8UC', '0', '1', '1509374706');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('978', '0', 'nxt', 'NXT-CG5P-ER2Y-3PNL-GN2GW', '0', '1', '1509374711');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('979', '0', 'nxt', 'NXT-JCEK-TE5D-R2S3-AZVF2', '0', '1', '1509374718');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('980', '0', 'nxt', 'NXT-4U3Z-Z4K6-Y2VJ-CRRNG', '0', '1', '1509374723');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('981', '0', 'nxt', 'NXT-ZSAR-7HGN-S3EH-BDCDJ', '0', '1', '1509374730');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('982', '0', 'nxt', 'NXT-KAB6-V29F-DFPP-GQMLA', '0', '1', '1509374734');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('983', '0', 'nxt', 'NXT-UBV3-6ZRF-3Z4M-DSCG8', '0', '1', '1509374738');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('984', '0', 'nxt', 'NXT-X2KU-EE5R-AN64-AZBPV', '0', '1', '1509374743');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('985', '0', 'nxt', 'NXT-25RG-XBHN-V6ZA-4EX32', '0', '1', '1509374748');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('986', '0', 'nxt', 'NXT-88FS-96SL-CL3B-6629B', '0', '1', '1509374753');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('987', '0', 'nxt', 'NXT-KJHZ-H84N-3GJA-5MXXB', '0', '1', '1509374758');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('988', '0', 'nxt', 'NXT-WVG7-2F7A-HEL5-4RSKN', '0', '1', '1509374762');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('989', '0', 'nxt', 'NXT-49E4-78LK-SY3Q-23AQ8', '0', '1', '1509374767');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('990', '0', 'nxt', 'NXT-KAVG-3NX6-XNRH-9HCUA', '0', '1', '1509374771');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('991', '0', 'nxt', 'NXT-L33M-84XP-A5AG-AH9GU', '0', '1', '1509374776');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('992', '0', 'nxt', 'NXT-EVLV-ZFFU-RVD2-7P577', '0', '1', '1509374781');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('993', '0', 'nxt', 'NXT-8TEL-U6U8-SJ86-7JR9T', '0', '1', '1509374786');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('994', '0', 'nxt', 'NXT-VRCX-N4HW-ZPBH-HT2UK', '0', '1', '1509374790');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('995', '0', 'nxt', 'NXT-MGG2-BLD3-6J2B-BW7TF', '0', '1', '1509374794');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('996', '0', 'nxt', 'NXT-WPNL-5H6B-AVPA-9RTJ4', '0', '1', '1509374799');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('997', '0', 'nxt', 'NXT-QQDB-83RX-6X54-FJMRZ', '0', '1', '1509374805');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('998', '0', 'nxt', 'NXT-HFBU-FEUR-AT9E-FUSTG', '0', '1', '1509374809');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('999', '0', 'nxt', 'NXT-FGWD-YHEJ-J3VX-FYSY8', '0', '1', '1509374813');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1000', '0', 'nxt', 'NXT-Z5RL-YAFY-SG2Q-G9DKD', '0', '1', '1509374818');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1001', '0', 'nxt', 'NXT-SHCQ-Y44Y-RL48-7NUT6', '0', '1', '1509374825');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1303', '0', 'ltc', 'LKMJzxcHCRosmxdFPoZjD5SaoqHj24F1HM', '0', '1', '1509383969');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1304', '0', 'ltc', 'LKML6fXHN8tu6CCW1W5Bzm5iVsGy1DqWqL', '0', '1', '1509383977');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1305', '0', 'ltc', 'LKMMH2meseyHQh75jNzNqwd6Npbgfq5YhL', '0', '1', '1509383984');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1306', '0', 'ltc', 'LKMNX7ztjrGp2t8XCcqzoaVAdEpxAFpTAy', '0', '1', '1509383990');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1307', '0', 'ltc', 'LKMPkzGvcU8PHyUukTZCE69gcUqhA8D4RE', '0', '1', '1509383996');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1308', '0', 'ltc', 'LKMRZ5tmLejwVoRHwXTMNCyFfpoMpZk9G8', '0', '1', '1509384002');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1309', '0', 'ltc', 'LKMRxLiPRq9QHuvwk98XoFUJtKJ85gSSqY', '0', '1', '1509384010');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1310', '0', 'ltc', 'LKMZna8VwmvbuKw8rpSbPTD13mB5ShLrjG', '0', '1', '1509384017');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1311', '0', 'ltc', 'LKMtHT93TCYbvztLXoAV8fUnZFToc8HDGk', '0', '1', '1509384023');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1312', '0', 'ltc', 'LKMvt4s633WSjXCj5pRoLX1QhjM3QPiUBe', '0', '1', '1509384029');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1313', '0', 'ltc', 'LKMxA3JsBWQeDmbPKaTyMfnxXQFNwvx4Kn', '0', '1', '1509384052');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1314', '0', 'ltc', 'LKN5JTRNkBbhKTk1wBHnnhaX4ECCpjGvGW', '0', '1', '1509384061');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1315', '0', 'ltc', 'LKNLmXnDEoYerNkusZ3F6ihYNjNWUZRffZ', '0', '1', '1509384067');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1316', '0', 'ltc', 'LKNXKSeNh5T7r92TjCRjURmaczPsv48JYV', '0', '1', '1509384071');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1317', '0', 'ltc', 'LKNaWAKLqB1GuE1VCEBUi4jUta289tzsAa', '0', '1', '1509384077');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1318', '0', 'ltc', 'LKNhty9MyHBt9sR2ChTp3HFe12u8rWrmtW', '0', '1', '1509384082');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1319', '0', 'ltc', 'LKNikRSTz1vshJk89t5Q1X2rN5UCqFRpbZ', '0', '1', '1509384090');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1320', '0', 'ltc', 'LKNkUqq35qkbzmnMFiZYNaD7xbyQ6pDrRY', '0', '1', '1509384098');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1321', '0', 'ltc', 'LKNnwAcRupMG2P96FNv8AFx3G4X4qnS2ux', '0', '1', '1509384108');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1322', '0', 'ltc', 'LKNpfXV49Dd2RnpDS8TS4Q41WcHrrgmdEH', '0', '1', '1509384113');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1323', '0', 'ltc', 'LKNqVCFTtmdysft6Mh3dapUeCVAP8LHDnS', '0', '1', '1509384122');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1324', '0', 'ltc', 'LKNwJYumLQPk3yPfnzXD4JXevjjs7xEyQM', '0', '1', '1509384128');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1325', '0', 'ltc', 'LKNwJhdzh5p3XzS4HiRmytNfm4ERJJbcgv', '0', '1', '1509384134');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1326', '0', 'ltc', 'LKNxREFackJJ9LAq5qF8pjYeU4ZipcpEVN', '0', '1', '1509384140');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1327', '0', 'ltc', 'LKNy3H4RkgDNhTkR7YP38TkspvxWwmELkG', '0', '1', '1509384148');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1328', '0', 'ltc', 'LKP18oKVcHDLjnUsFvVCb6Z7vuUVtmbBWq', '0', '1', '1509384153');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1329', '0', 'ltc', 'LKP57MzsdiBb8Re6iG866fWQWeNYAZvybe', '0', '1', '1509384160');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1330', '0', 'ltc', 'LKP9veVYQe16JQCtkZmRRb7kMWwyizTjih', '0', '1', '1509384165');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1331', '0', 'ltc', 'LKPFAqa7wtPridUZB8TyTNfv7SKmah5Fkp', '0', '1', '1509384171');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1332', '0', 'ltc', 'LKPKHBGERr1ihFQiDe5zSZo1YAEYTXusLn', '0', '1', '1509384175');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1333', '0', 'ltc', 'LKPNjH2byJp8tYkgVQbSBU6W2mHAyf6q96', '0', '1', '1509384180');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1334', '0', 'ltc', 'LKPQMjdR1hVNrh8sy8maWbj1jfjJayXKoB', '0', '1', '1509384185');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1335', '0', 'ltc', 'LKPVhPah3QZGrLo6pYpynURtEfZbHJHERU', '0', '1', '1509384191');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1336', '0', 'ltc', 'LKPWm8VtGpRh76c6ooNSNmqHNdTFEjyBB3', '0', '1', '1509384200');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1337', '0', 'ltc', 'LKPoNVyyeQSEaR7Exousz9taNwTP8fLEpg', '0', '1', '1509384205');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1338', '0', 'ltc', 'LKPtnKhJ4NvNRd3TjuB9GgCpVoCPJrLwRA', '0', '1', '1509384210');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1339', '0', 'ltc', 'LKPwpuddPdtqmjgTqTPnLwmrvbCeLW9Dnh', '0', '1', '1509384216');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1340', '0', 'ltc', 'LKPxgpzEQok2U8PrGVyY4Hf5B7ixqdWMiX', '0', '1', '1509384221');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1341', '0', 'ltc', 'LKPyghzHCaf2AyK368QrcHhST7nhAANhUD', '0', '1', '1509384226');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1342', '0', 'ltc', 'LKQ51CkSVQ6VNA6WN1EAh6CZGQXa3A4fXB', '0', '1', '1509384231');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1343', '0', 'ltc', 'LKQ8kqiKcscAixthFS5LwD9zBNcufN3x21', '0', '1', '1509384237');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1344', '0', 'ltc', 'LKQCLi8ik4tsQ4digTXnARdbK2oWdKWRsC', '0', '1', '1509384242');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1345', '0', 'ltc', 'LKQDp7mAKknURzbg5AnHvCgeKPycSa7GRr', '0', '1', '1509384248');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1346', '0', 'ltc', 'LKQE9hutDRqGYfEy9fLpwwhcohVRRRsjo4', '0', '1', '1509384254');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1347', '0', 'ltc', 'LKQEv7HS2A6mdL6mXY1uLoTY4xnjkz8pBF', '0', '1', '1509384337');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1348', '0', 'ltc', 'LKQHRfYZvwvmAkBD4Par4SHrR2bVr7gdHk', '0', '1', '1509384343');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1349', '0', 'ltc', 'LKQJ2v8JHL7FV38UX5dHMxiQ6wqn9wDHtA', '0', '1', '1509384349');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1350', '0', 'ltc', 'LKQY9FxXhtpDheC741omgnW7EvGf3qW8XE', '0', '1', '1509384354');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1351', '0', 'ltc', 'LKQYNmSy3EbGTN7YRDYkiv2ihsESt7s9J8', '0', '1', '1509384360');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1352', '0', 'ltc', 'LKQbxF2v2V8wimztofAHdUq86hLCZEEsP8', '0', '1', '1509384370');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1353', '0', 'ltc', 'LKQkJbqzmPzmMZRX7iPP25HxcqgD2qmRQR', '0', '1', '1509384378');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1354', '0', 'ltc', 'LKR3xj9xtmo4aqAfmHDySKMAGi6QEhsabZ', '0', '1', '1509384384');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1355', '0', 'ltc', 'LKR9cFiGhtFXdQsc6hTUyVebrCQYTqBGUU', '0', '1', '1509384389');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1356', '0', 'ltc', 'LKRDuBoQXVnqezxLPUvWHiXvacboFqaB3R', '0', '1', '1509384395');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1357', '0', 'ltc', 'LKRFYYkpWy99cGjnFEasLwCGCgP6vdS5Qd', '0', '1', '1509384400');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1358', '0', 'ltc', 'LKRG99je4mhkmw3DajMuxJq3bky7S37U1x', '0', '1', '1509384405');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1359', '0', 'ltc', 'LKRHvZLnrwL3crLPmRyS6RFPhqRSACjicz', '0', '1', '1509384417');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1360', '0', 'ltc', 'LKRVFPFe8tH7BPXjm8S8M6D4KxoaSreVhV', '0', '1', '1509384425');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1361', '0', 'ltc', 'LKRi665WRBSPnF5e1SQourCtVh5ENUQwYp', '0', '1', '1509384431');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1362', '0', 'ltc', 'LKRoYZznf5VYYA4YnuToHq2779gvv8Jcry', '0', '1', '1509384439');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1363', '0', 'ltc', 'LKRpLE8pQMpG7kZm7zDpVXEbBgUt3c4WDL', '0', '1', '1509384445');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1364', '0', 'ltc', 'LKRpZ9guwk1BRLYgvC5GhuWPLiMKwA7WWU', '0', '1', '1509384466');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1365', '0', 'ltc', 'LKRwDV8VHESx7y8nFw4ScU6X5SnYhwW2Da', '0', '1', '1509384476');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1366', '0', 'ltc', 'LKRxSXkmqDVbthZzShoP72ZmYrVfCLsNpQ', '0', '1', '1509384480');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1367', '0', 'ltc', 'LKRyfuBM1CGwANFqvTV4JUtUEj43asC6nF', '0', '1', '1509384487');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1368', '0', 'ltc', 'LKSL6X6iQggJGdxTYg8Rx3aqqjMEgKKyqs', '0', '1', '1509384493');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1369', '0', 'ltc', 'LKSLVgfhKmuKqbiTbEYxWSvhdCVQurg7Af', '0', '1', '1509384499');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1370', '0', 'ltc', 'LKSmuiSiN9b2SexMDJJJkLba1qZjaUmiNS', '0', '1', '1509384504');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1371', '0', 'ltc', 'LKSq6hTgtq2J644TKVxgmV2k399QPrwMZr', '0', '1', '1509384510');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1372', '0', 'ltc', 'LKSqNqneZGBCqSS1YtikLa98p6of31NTyB', '0', '1', '1509384517');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1373', '0', 'ltc', 'LKSzqNDRJqwzKPJ1Pc2b52pJFonqnxEdQs', '0', '1', '1509384526');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1374', '0', 'ltc', 'LKT3saFNMtQM7THY9ui2JshY2x5KJ3pieU', '0', '1', '1509384531');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1375', '0', 'ltc', 'LKT75ZajmYVPs9tcU742poUziW1oBgASdD', '0', '1', '1509384536');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1376', '0', 'ltc', 'LKTAwTX26JA4vkoAojQMimqFSX155W3qoz', '0', '1', '1509384543');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1377', '0', 'ltc', 'LKTDSXhy2dWJBcY34kzRtpmxXszvqKuwH2', '0', '1', '1509384548');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1378', '0', 'ltc', 'LKTRF72nR6Ryz5bbEf4763JnF1LFuy5ddG', '0', '1', '1509384554');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1379', '0', 'ltc', 'LKTW6kssAc2DaR1xfCFC56jzqk2tR8DTCd', '0', '1', '1509384563');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1380', '0', 'ltc', 'LKTZq714PdbtYMqDoZoxbkfucXXPAkRzds', '0', '1', '1509384568');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1381', '0', 'ltc', 'LKTbLEagrsg31jGiHrp92xuWcmz7oV585y', '0', '1', '1509384574');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1382', '0', 'ltc', 'LKTdCiAinZMEJeXnuDy434NBJLoRF9P68t', '0', '1', '1509384579');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1383', '0', 'ltc', 'LKTfNCv82uo1CEX64UQhto4VdH5HiFvbg1', '0', '1', '1509384880');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1384', '0', 'ltc', 'LKTizcJZTVRzaGXVDfAiVmFw73sztj7VW2', '0', '1', '1509384889');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1385', '0', 'ltc', 'LKToxNnvALiszWiz2isbta5btVV7VcCWmk', '0', '1', '1509384895');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1386', '0', 'ltc', 'LKTtmhUZYxFBCVXsnboRSUSBsnXTNJgi61', '0', '1', '1509384902');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1387', '0', 'ltc', 'LKTxHkCTP6FS4RowsWGhH57fjcmbZvpNWp', '0', '1', '1509384908');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1388', '0', 'ltc', 'LKU8NxjQt3KTgWQSi7YsN7CKpb48xwWRyJ', '0', '1', '1509384916');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1389', '0', 'ltc', 'LKU9cxykYS1Z3w6m9z63bSieU2TLTfKT2Z', '0', '1', '1509384923');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1390', '0', 'ltc', 'LKUAsuuxp4YnrgGLq6r7TXPtNfSYQMrRmn', '0', '1', '1509384931');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1391', '0', 'ltc', 'LKUDCbAe3yeqC5AgeJYHjzbSLzrfvj2pwM', '0', '1', '1509384938');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1392', '0', 'ltc', 'LKUHCwrZpJexm7qVLzp7QkRDsu1PHka2r1', '0', '1', '1509384946');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1393', '0', 'ltc', 'LKUTqJJCep9GU5ciZmMbqfd3BkYQ7ACjd3', '0', '1', '1509384951');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1394', '0', 'ltc', 'LKUUdym1GE1zL8hjWc3Z4r34RLZvWtXaG1', '0', '1', '1509384962');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1395', '0', 'ltc', 'LKUbejtYDFNgepEbcSgRxXAPenLWa2uauw', '0', '1', '1509384969');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1396', '0', 'ltc', 'LKUeLZwTjHYjNzKXFzMKi4ANg8qCCopzRZ', '0', '1', '1509384977');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1397', '0', 'ltc', 'LKUu7c9eoE94vVURZ5Pe7HvBdarC8KxZEp', '0', '1', '1509384982');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1398', '0', 'ltc', 'LKUuTmcm7QGPjatQit8FvmcUmQEqhStoHR', '0', '1', '1509384988');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1399', '0', 'ltc', 'LKUviM2AVew6zqrCaxj86ePa4mBaBMqJMK', '0', '1', '1509384992');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1400', '0', 'ltc', 'LKUxxD6PZ4UqLrUxLPtu2ACgR3UWVJvf8b', '0', '1', '1509384998');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1401', '0', 'ltc', 'LKUyVCwFcMKy1wqGVT3EQhsVqEfYbpc4WJ', '0', '1', '1509385004');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1402', '0', 'ltc', 'LKVEE3nb7oAX5UvydSxQodiL4cCRzJhpMS', '0', '1', '1509385011');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1403', '0', 'ltc', 'LKVF62MuviLEPEr5PTGtxcyPUnzSWvxikJ', '0', '1', '1509385125');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1404', '0', 'ltc', 'LKVKFgoBktLX1AEvqj9QNN3YMH7stErd8W', '0', '1', '1509385131');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1405', '0', 'ltc', 'LKVTANNqcfD6gvYQH7iT41oCiCvrJfVc8E', '0', '1', '1509385136');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1406', '0', 'ltc', 'LKVWrELBE7ymUUoek9mFrSaKsaCD7TJeKe', '0', '1', '1509385143');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1407', '0', 'ltc', 'LKVYxMUMAhapaye7Y7MZdu2WQFETJNbW2o', '0', '1', '1509385149');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1408', '0', 'ltc', 'LKVeFFSWfPboZEjFkz8FhXQw5yPc2nHyBi', '0', '1', '1509385156');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1409', '0', 'ltc', 'LKVePUEzLCbv1vdoeQMg264JJiL9RSpQc4', '0', '1', '1509385161');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1410', '0', 'ltc', 'LKVhLSM9dqP8xoKeaQK8ge6QFAPCLvUSZv', '0', '1', '1509385166');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1411', '0', 'ltc', 'LKVhdHL1DhXn4PmXNb3dinqt9ZPdNQoVXu', '0', '1', '1509385171');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1412', '0', 'ltc', 'LKVhxkMiMJa7uEaFWYJtfm9oLziPwvWVcG', '0', '1', '1509385175');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1413', '0', 'ltc', 'LKVjgzs1QCmaQDeSect8KZTDGAr45hGtH5', '0', '1', '1509385180');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1414', '0', 'ltc', 'LKVoakARAt5XCxQURyweTjQtqen7dqd3V9', '0', '1', '1509385184');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1415', '0', 'ltc', 'LKVtLSrmsfCuoQF9LPZSupMUpsj9HvT1v3', '0', '1', '1509385192');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1416', '0', 'ltc', 'LKW7aLvvz4eTr4z6KnNsPRnEGiYtGh89j6', '0', '1', '1509385197');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1417', '0', 'ltc', 'LKWFcJM33gGN8xmo6a4DJM8vZGn4nLhTVK', '0', '1', '1509385201');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1418', '0', 'ltc', 'LKWHdZv8S13HVj72zkgQe8WCXjGR3FcRui', '0', '1', '1509385206');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1419', '0', 'ltc', 'LKWU8b8Kk4zKCH9nidkS3bYSAhCrdVjPi8', '0', '1', '1509385212');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1420', '0', 'ltc', 'LKWYs8cHCvZGgexbAA92HWW6SoCWYGPLLK', '0', '1', '1509385218');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1421', '0', 'ltc', 'LKWw9gHQMUvfWHrkxiU1jy9Yp58dGwFwBD', '0', '1', '1509385222');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1422', '0', 'ltc', 'LKWyh8LC2nyMGdRWcpM24ihHdMs1Rkbfzr', '0', '1', '1509385228');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1423', '0', 'ltc', 'LKX1WVLRBHs3eThcWdz7QS1vMCTcnk4eCe', '0', '1', '1509385234');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1424', '0', 'ltc', 'LKX2WTNe4NaEtxghwi8dGCmZBvwMZuHs36', '0', '1', '1509385238');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1425', '0', 'ltc', 'LKX86Gd1zzpsLitz5YxsZLf8woQEEG1Zi9', '0', '1', '1509385246');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1426', '0', 'ltc', 'LKXFgGdYi6ircMYtn9FJLp6DSyZmDB9HXj', '0', '1', '1509385252');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1427', '0', 'ltc', 'LKXR5vb21kaVNu1w4PedLt1q4GnQWdZvXE', '0', '1', '1509385256');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1428', '0', 'ltc', 'LKXXLkEYTfqJJ8vmgdSEWhvENwssmB3Mcs', '0', '1', '1509385260');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1429', '0', 'ltc', 'LKXaqtWheNrye8Hdcedpm8tZVQEN5Vawrg', '0', '1', '1509385265');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1430', '0', 'ltc', 'LKXfZr5wUighiqp8fZdUZxvkbWNxCex8dt', '0', '1', '1509385271');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1431', '0', 'ltc', 'LKXgf16GidkGEaRbAEvNsGsMWYC8RvSrmE', '0', '1', '1509385277');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1432', '0', 'ltc', 'LKXgzTU4xJXwReGE3k5GXhRdEp9yxDAPwa', '0', '1', '1509385283');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1433', '0', 'ltc', 'LKXoRixpfuDWUmSSyMPwKYuhiYV5Vsivi8', '0', '1', '1509385287');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1434', '0', 'ltc', 'LKXoqxjJdHzu6w6ZSxrUdJEisRJVgr5cBE', '0', '1', '1509385292');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1435', '0', 'ltc', 'LKY2e61cYR6BYYFsHJHCaWP7bCW842vqwz', '0', '1', '1509385302');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1436', '0', 'ltc', 'LKYD7pcLYXxJEjachggWQoJbmc2PBgp8r9', '0', '1', '1509385307');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1437', '0', 'ltc', 'LKYEw5DGsmvxkqtzqAgNwRG79v3xCG27BC', '0', '1', '1509385312');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1438', '0', 'ltc', 'LKYKjXct8HfjNhvqZZ3HfxGrsqRiYmqYby', '0', '1', '1509385317');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1439', '0', 'ltc', 'LKYMphoyP9TkJVDEtK12vAQ5bkJ5kkuVZ9', '0', '1', '1509385324');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1440', '0', 'ltc', 'LKYVe9QFEfZUmNdqxpvuWjXanzbGySQ43A', '0', '1', '1509385330');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1441', '0', 'ltc', 'LKYZYmmhiaXDPoz2cY3q4qauDSHMzzt1dH', '0', '1', '1509385336');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1442', '0', 'ltc', 'LKYcNZoBF3aw2gAKdMNymKMTEgoPMcWhEN', '0', '1', '1509385341');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1443', '0', 'ltc', 'LKYgSEM6EMfmEgWQxRqqoMS2H4nrb12qXz', '0', '1', '1509385345');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1444', '0', 'ltc', 'LKYjBP6oV5vUthnQc2AEDCgdjbGD1UhgGC', '0', '1', '1509385357');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1445', '0', 'ltc', 'LKYjzEvBuWtVsydYVEDF12joce1Fn4ev59', '0', '1', '1509385368');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1446', '0', 'ltc', 'LKYuKw1H4Mv6hFXgqTL6LwVxfjjNHdW9vF', '0', '1', '1509385374');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1447', '0', 'ltc', 'LKYyabidPfufswgekeMKY2sAK38aYwoKCW', '0', '1', '1509385381');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1448', '0', 'ltc', 'LKZBTy88kNzuHxQKpunpUQNXx5BMyArE3i', '0', '1', '1509385385');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1449', '0', 'ltc', 'LKZFPW4YEzkSJUDF9iYyrDGvtjQMMTDuiK', '0', '1', '1509385390');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1450', '0', 'ltc', 'LKZJtLcdBfABmbB26KQf1gaPPGvrNFPNXJ', '0', '1', '1509385395');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1451', '0', 'ltc', 'LKZN5KiZCo4Jo1cywebkXQEb1dAneRZq1x', '0', '1', '1509385400');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1452', '0', 'ltc', 'LKZPUwnrsmWckEeY9w4BSpFYV5daUbqtx8', '0', '1', '1509385407');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1453', '0', 'ltc', 'LKZQUV4DAuAZjs523aQX12qWQRzNV43jGD', '0', '1', '1509385416');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1454', '0', 'ltc', 'LKZUiu3fdceEEwt1my2P5rxuKVeQunimbM', '0', '1', '1509385421');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1455', '0', 'ltc', 'LKZUjqMzmZ28jpErfPg1KUd2f9MJjaRDPg', '0', '1', '1509385426');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1456', '0', 'ltc', 'LKZbfYW1EV6MXD8hyRrv5JxX6YauyfFoUs', '0', '1', '1509385433');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1457', '0', 'ltc', 'LKZeTsQ2KHuVrDFByj1uWyT2Ki2sEDtgrs', '0', '1', '1509385438');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1458', '0', 'ltc', 'LKZiDVD58CxrWsMkwq8zTJBrEWCSoxnx56', '0', '1', '1509385443');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1459', '0', 'ltc', 'LKZjSLzabtu9NTKFDiKHAw2N748LHg9Bi3', '0', '1', '1509385453');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1460', '0', 'ltc', 'LKZjjWAmh95cRFpaAcQnBZwbPydK8mLxSj', '0', '1', '1509385460');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1461', '0', 'ltc', 'LKZm4F9ifUcTZ2dyfCD7r36mvYsH3khFrY', '0', '1', '1509385465');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1462', '0', 'ltc', 'LKZmsLv6VTmygV3YvQJtWKKBLv3xcmsLMt', '0', '1', '1509385471');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1463', '0', 'ltc', 'LKZo3q6f9ML8S44w3Qv2pZCjAeVBtDtffv', '0', '1', '1509385477');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1464', '0', 'ltc', 'LKZoTwPqcyNj7NQPMSmQY4SUcJ4Q2BD6rQ', '0', '1', '1509385485');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1465', '0', 'ltc', 'LKZxMaVFopU9XDpLGE6r6iyitx9xa9JCWu', '0', '1', '1509385491');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1466', '0', 'ltc', 'LKa9dCRMHVMKH1iLMZ86RKjzHtTXM7LxwJ', '0', '1', '1509385497');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1467', '0', 'ltc', 'LKaA3DG6LhnxetL9W1v84fJRoeYagXqZG9', '0', '1', '1509385507');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1468', '0', 'ltc', 'LKaGVMYtTtUcajKEQs7MC4q966WJQ5Gpv5', '0', '1', '1509385512');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1469', '0', 'ltc', 'LKaUof8kQCRUB3uteZJJd8m5z24W11agxw', '0', '1', '1509385517');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1470', '0', 'ltc', 'LKaXsZw2KS9EPk6ZczNXKR9EFr1dnoazZp', '0', '1', '1509385521');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1471', '0', 'ltc', 'LKaYmHEj7P5dqgahWfCZXpB4hLpZVy8iM5', '0', '1', '1509385526');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1472', '0', 'ltc', 'LKabrSkmqSGF6VDcWk8C453wogbuLoeiGz', '0', '1', '1509385531');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1473', '0', 'ltc', 'LKaksFtC7Aey3y75HaGt1PoyUZBEfCgn85', '0', '1', '1509385539');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1474', '0', 'ltc', 'LKb1QpUjHDcdzVysXBYk4JNR6XBrKzxj1N', '0', '1', '1509385545');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1475', '0', 'ltc', 'LKb1oVym7znBnrjg9BEFVRVSYZwZ9PkZ75', '0', '1', '1509385549');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1476', '0', 'ltc', 'LKbBBTbBLyzfr62ZpAnZJvRBa5tFYidtyn', '0', '1', '1509385572');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1477', '0', 'ltc', 'LKbGDLPobyhpiHCzD8YYWzE8wFDCboNN5E', '0', '1', '1509385581');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1478', '0', 'ltc', 'LKberHyW1adpuyBr9mzWg47gSCGQFSW9oV', '0', '1', '1509385592');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1479', '0', 'ltc', 'LKbgzmNjfA85n3W13dv7XGHSpHFDHFALC2', '0', '1', '1509385597');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1480', '0', 'ltc', 'LKbi23Mu3Vt4fVrwsn9ZvoYPsySc9m9Gzo', '0', '1', '1509385601');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1481', '0', 'ltc', 'LKbspb6Wdm3JH3oKRefgbWuZnYb7Lyshnm', '0', '1', '1509385608');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1482', '0', 'ltc', 'LKc1b5gk7K35bEm8UMksPEcC2AJ5Lx29gg', '0', '1', '1509385616');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1483', '0', 'ltc', 'LKc2XscPjdsLMp5eHuv68rQxS5LevGf9s9', '0', '1', '1509385623');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1484', '0', 'ltc', 'LKc6xX9ZTcJCGW6AqsyNNiBw35USHoKy8H', '0', '1', '1509385629');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1485', '0', 'ltc', 'LKc9dXKk4THkWFvwiF4iQ85wAnu1iJXhog', '0', '1', '1509385634');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1486', '0', 'ltc', 'LKcAK72poWJA1n4W33Yw2DX9Nad7Sbfr4w', '0', '1', '1509385639');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1487', '0', 'ltc', 'LKcCvzqYKZqc5efY4xusCQAr3LhLu5jLjr', '0', '1', '1509385644');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1488', '0', 'ltc', 'LKcCxgkYdBscprMSTtu3GYQRzDaqN9LNXe', '0', '1', '1509385649');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1489', '0', 'ltc', 'LKcM3LWDk49hNRNWDLHpNaXB9axUpz9gD7', '0', '1', '1509385657');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1490', '0', 'ltc', 'LKcVCDBZe8SKSzmUjAbMwXReZqHQDQ7cPb', '0', '1', '1509385665');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1491', '0', 'ltc', 'LKcX6f6e1CWBtzM2iiCkbeGTZ2x9hW7JfT', '0', '1', '1509385669');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1492', '0', 'ltc', 'LKcfcAMZUhWeo6nVKoaxZuXoGbomBQ9yHk', '0', '1', '1509385682');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1493', '0', 'ltc', 'LKcgZrVjyvm9q4mZmqPKmYTnHNGLyHAbqk', '0', '1', '1509385690');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1494', '0', 'ltc', 'LKcmjVEemf5Rc4yFHy7oRTPH5UNH2iFAnP', '0', '1', '1509385695');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1495', '0', 'ltc', 'LKcnrten95xYt1mDeB1z6UmHptxoBGaGri', '0', '1', '1509385704');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1496', '0', 'ltc', 'LKcsazR23dnQUURb8NSfr3LuVGvWmrE6M4', '0', '1', '1509385714');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1497', '0', 'ltc', 'LKd7waHFLVr9PdHZE7MjVYVZYFq1aSSXk3', '0', '1', '1509385718');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1498', '0', 'ltc', 'LKd8xQQ6f2knBFbyQmQ3ExmjFFnH51vBru', '0', '1', '1509385724');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1499', '0', 'ltc', 'LKdBTfXRB1XerwWxczeeDNpEUj7KN3QugU', '0', '1', '1509385729');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1500', '0', 'ltc', 'LKdCBDwLdoxURoLPruEg45cYP1RrayJf3s', '0', '1', '1509385735');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1501', '0', 'ltc', 'LKdEC4f9v6wtKDp2uFrdbG51YZjouRswjY', '0', '1', '1509385742');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1502', '0', 'ltc', 'LKdHMb2pst4iYtnwrMTnDERwYs5Qkjs76B', '0', '1', '1509385748');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1503', '0', 'dog', 'D5CMegVRRF8V6j4qJRwLnPLYutWmGvdPR9', '0', '1', '1509386519');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1504', '0', 'dog', 'D5CNQRrGgLX5YFsWeZXcTdThTF5pnTa2CC', '0', '1', '1509386524');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1505', '0', 'dog', 'D5CTssxtbtuAB56zbuWVgyAQNE68mAvyzD', '0', '1', '1509386530');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1506', '0', 'dog', 'D5CUNtb7cvYLLn1nkdWe5JSPEasiMa3TEc', '0', '1', '1509386535');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1507', '0', 'dog', 'D5CWDN4g23hc5NVk6B2vmTB9erw4ML53o6', '0', '1', '1509386541');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1508', '0', 'dog', 'D5CXdijNVjeL9Epi9qLMfJ2ZGVTxgQuiNZ', '0', '1', '1509386546');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1509', '0', 'dog', 'D5CcmjrWpCrqrq1eRzQmdkfxaEyMnVZFnL', '0', '1', '1509386551');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1510', '0', 'dog', 'D5CfbhfGw6wj3RfttFi9tnL1GaQw35zRja', '0', '1', '1509386556');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1511', '0', 'dog', 'D5Cg4KrUCybevt7swD9cGHxybDjku2F5Ho', '0', '1', '1509386562');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1512', '0', 'dog', 'D5CngxqmnRBTRFWn8BgTHQp6Qrzk7BC1RG', '0', '1', '1509386567');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1513', '0', 'dog', 'D5Cof3NX9fWKc5QKjyZWu5Qff4F8xxB3xx', '0', '1', '1509386574');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1514', '0', 'dog', 'D5Cs1v5wvVJunx4zENgbsGTDuwXn7cn3nv', '0', '1', '1509386579');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1515', '0', 'dog', 'D5CvZhtPsJWX7AzXsWusjP1Xiu1VtHDAoV', '0', '1', '1509386584');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1516', '0', 'dog', 'D5CvuRdz7Cuxw1A8DYNZn2GFZ4sS6XhFkt', '0', '1', '1509386590');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1517', '0', 'dog', 'D5CxetDT4yzyhPynEzq7XsEU6EM6RGk6P6', '0', '1', '1509386596');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1518', '0', 'dog', 'D5Cxrt6RQdoZTFc7mxnef2wsi8NMzpZY9P', '0', '1', '1509386602');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1519', '0', 'dog', 'D5CyuFFPEieqeoWuXsxx2c7neLtRzK9djm', '0', '1', '1509386607');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1520', '0', 'dog', 'D5D2kegBQ39Qddq1pt1JsDExGxwYDZ7SHJ', '0', '1', '1509386615');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1521', '0', 'dog', 'D5D5KXC2aR1iY29oH4u5Y8KbWxJPXYDoKY', '0', '1', '1509386620');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1522', '0', 'dog', 'D5D7cMvs9tUHWVUYrZvc7LkYBtvRo6euBY', '0', '1', '1509386629');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1523', '0', 'dog', 'D5DFbY8dbm29PFJeVkKpJTfCAX4Mi6DZ7P', '0', '1', '1509386635');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1524', '0', 'dog', 'D5DJADm8WCm3yJ6s8Vhh4nHEC33mumycHJ', '0', '1', '1509386640');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1525', '0', 'dog', 'D5DNVaBJhKc5EyyrwZSvmZUoPm1tPxV37S', '0', '1', '1509386645');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1526', '0', 'dog', 'D5DSA4wzGBrRybBkngPvuRMGhYE9rP4ymJ', '0', '1', '1509386650');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1527', '0', 'dog', 'D5DStDLqqYzndXtsssZdKZhgzEii2yAd3e', '0', '1', '1509386655');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1528', '0', 'dog', 'D5DTmsWS5qBpVDyTC5WPgTTLB6LYaEtSJk', '0', '1', '1509386660');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1529', '0', 'dog', 'D5DV3MsKS96u654gswQDk6mZJ9WALBd3hD', '0', '1', '1509386667');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1530', '0', 'dog', 'D5DVsXtCFBsMb8ABXv7J1YLt2b1V4yjHUd', '0', '1', '1509386673');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1531', '0', 'dog', 'D5DakhrYEaekkZQRCeLcgQ9Vp4VL2wS67e', '0', '1', '1509386678');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1532', '0', 'dog', 'D5DbvApxAnAC5r1xTbLCDmZNNVwr4LEhe3', '0', '1', '1509386687');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1533', '0', 'dog', 'D5DchSs6xjspRwtgLMSRxesCbWcYWv2JYy', '0', '1', '1509386694');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1534', '0', 'dog', 'D5DhcCtujKeyF9aVyVK2j5ubC4GF4M3rTi', '0', '1', '1509386699');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1535', '0', 'dog', 'D5DjATEouTSu61VjaALLMs5rAgF1LxxnBC', '0', '1', '1509386703');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1536', '0', 'dog', 'D5DjCpFgcE42UWL2spkhphmFsiERgaCFRv', '0', '1', '1509386708');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1537', '0', 'dog', 'D5DnNXtTtNxLRVFesH8xfCowcvzPKGGgtP', '0', '1', '1509386712');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1538', '0', 'dog', 'D5Duac29Q2cAmTR9FJGr8Z8FmD2VrJCLbw', '0', '1', '1509386716');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1539', '0', 'dog', 'D5E1ySv2hB2gZz2QkgGzbfzms3UqKAGvSZ', '0', '1', '1509386721');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1540', '0', 'dog', 'D5E3Cr52aN4LGETTv1nsAKSwRQh7GYjGiH', '0', '1', '1509386728');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1541', '0', 'dog', 'D5E3pTzY6v2VbBZEby9HoG8mQEYBVgEcj3', '0', '1', '1509386733');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1542', '0', 'dog', 'D5E4YxznWDPjnSCdh77HchBWLESdv36L4e', '0', '1', '1509386748');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1543', '0', 'dog', 'D5E4zvoJxP94FDN2HHK9nHS37BsgbG6jyg', '0', '1', '1509386763');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1544', '0', 'dog', 'D5E5tEKhabFJBGKDW2A7WndNZhBJzLdabJ', '0', '1', '1509386772');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1545', '0', 'dog', 'D5E6TZTZHxNBoNpZjyA1883uqsZ1uVsg6X', '0', '1', '1509386777');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1546', '0', 'dog', 'D5EB2NkrM7PiksUyEzHgApND4FnemZVa4M', '0', '1', '1509386782');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1547', '0', 'dog', 'D5EBUoUY2pPBPgqQXYq2zUafy5VPiodAof', '0', '1', '1509386794');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1548', '0', 'dog', 'D5ECxuspP3bfadwGTW8eKmwBVBf5Yd211Y', '0', '1', '1509386800');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1549', '0', 'dog', 'D5EEhwbkvBG1Gkwhtdt4aDbv7svYsAEH91', '0', '1', '1509386806');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1550', '0', 'dog', 'D5EGiSaMHpMKUTuc1zM4yZ23bFbxRs3F8R', '0', '1', '1509386812');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1551', '0', 'dog', 'D5EMWhSuwKn489nPAvn8JGBTsG8kqy42vP', '0', '1', '1509386819');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1552', '0', 'dog', 'D5EMwQPfTZKsTiHGUTX5hgquR8fsNPDTDU', '0', '1', '1509386826');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1553', '0', 'dog', 'D5ERVtqiD265NabfhSzuLgEtFpe2sWCcFr', '0', '1', '1509386849');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1554', '0', 'dog', 'D5ERvZWZDso8qvryizN5JnjhBkNkLLYWDs', '0', '1', '1509386854');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1555', '0', 'dog', 'D5EWCg6cuijCSTU5pMfHNwuuk2ymotxc2S', '0', '1', '1509386863');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1556', '0', 'dog', 'D5EXaZF8KScBGXoDcSSi11QJg3Q5EYYQoo', '0', '1', '1509386869');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1557', '0', 'dog', 'D5EfBHq3kRtrxy459Af8EiW9X73pouR8k5', '0', '1', '1509386874');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1558', '0', 'dog', 'D5EfDBLrwypQXsBFvSWgVVERmjcxNCytk2', '0', '1', '1509386878');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1559', '0', 'dog', 'D5EfzBo99pDGMPQLCVK9Q51hPr7KLDtabf', '0', '1', '1509386890');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1560', '0', 'dog', 'D5Ejy6RDuzhM26WkivrtYrMzFQxsTCvuRa', '0', '1', '1509386894');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1561', '0', 'dog', 'D5EmojmfhPcpPFDLgmf5JiKL4rHSncX5BZ', '0', '1', '1509386899');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1562', '0', 'dog', 'D5EmpTz4MRAkPqWBxUEvLqrPEoaAujqgwg', '0', '1', '1509386904');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1563', '0', 'dog', 'D5EnptV427PtVhySzjc2rey7eEbn4Afwan', '0', '1', '1509386909');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1564', '0', 'dog', 'D5EsdfNg1JAahoh8bi6LinC5jEwMhKLEa8', '0', '1', '1509386915');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1565', '0', 'dog', 'D5EwYBd6KrmkGS6NcfVfqSWmWQeushJWFT', '0', '1', '1509386922');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1566', '0', 'dog', 'D5ExkuSCMTRs78PDcXEqarmF5C6FdEZu9m', '0', '1', '1509386927');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1567', '0', 'dog', 'D5Exx6qpe1J1R9ncYeHdio2mtGYakjuoFt', '0', '1', '1509386932');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1568', '0', 'dog', 'D5EzuwAxrCwh7mvBa1CjA7tR7rEM9ppZM3', '0', '1', '1509386939');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1569', '0', 'dog', 'D5F2cghk7s4WihFVEve87QMoZ4vzgWjMv3', '0', '1', '1509386944');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1570', '0', 'dog', 'D5FC6b1gwqpu6JQ8oXiHxe7wwbwd3pVmoH', '0', '1', '1509386950');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1571', '0', 'dog', 'D5FGfq8fn97qe4S4Sae1E9JWHJ9hyipumu', '0', '1', '1509386955');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1572', '0', 'dog', 'D5FHdDSygU9cEvpDNpzFPZKHqmWfyWS3eM', '0', '1', '1509386960');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1573', '0', 'dog', 'D5FJedAdoB3YFh1iMUKcyX5tQMqeUnd53z', '0', '1', '1509386965');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1574', '0', 'dog', 'D5FR57iEAA8B5vURCh6Bxyxa6d7fYKsifV', '0', '1', '1509386970');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1575', '0', 'dog', 'D5FSFv3MMwCcPv3C4oDtuPgDWL1KLS7MfL', '0', '1', '1509386976');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1576', '0', 'dog', 'D5FZToUVXuCZkoM2PjWLajkJJfLA6pXX4t', '0', '1', '1509386981');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1577', '0', 'dog', 'D5FZcuvM1pce64JCPFVYjguXvomzQXGSzt', '0', '1', '1509386987');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1578', '0', 'dog', 'D5FaJnQByyexFhb7iG9heLgY1JpxvPJPwd', '0', '1', '1509386991');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1579', '0', 'dog', 'D5Faq2S9kbQBmEwz5rJmJrqC7x4GbEEfEk', '0', '1', '1509386997');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1580', '0', 'dog', 'D5FcvD64PoGghunKntkeLE2PADUipv1fev', '0', '1', '1509387002');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1581', '0', 'dog', 'D5FdnuzxLrSAskLkErHgfEiAG4vmBs7YBa', '0', '1', '1509387007');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1582', '0', 'dog', 'D5Feico1FcJ8WrNSNN4F7P5eoDJts4KBfa', '0', '1', '1509387013');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1583', '0', 'dog', 'D5FmkvtTghHPE8kWuFG7Cxbk8ihfrhuJ6C', '0', '1', '1509387019');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1584', '0', 'dog', 'D5FpbaoDRWXc2ViDZ44djr7T9V3juieEfU', '0', '1', '1509387024');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1585', '0', 'dog', 'D5FrJXnoisMA55eTcqyYbkb3TVcxP3mK3m', '0', '1', '1509387028');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1586', '0', 'dog', 'D5FyGsJMo65VEjrAUvvkuWd2SNAyadW35X', '0', '1', '1509387033');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1587', '0', 'dog', 'D5G1S1EFRwkt3NqYEecoVPjnZE8y9JGkET', '0', '1', '1509387040');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1588', '0', 'dog', 'D5G7bwo3P1WyqdV25XFFjvUuZRs8m61uK9', '0', '1', '1509387047');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1589', '0', 'dog', 'D5G8KUHG25sTnPwnLgHnP7yQHvcobgjzCG', '0', '1', '1509387059');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1590', '0', 'dog', 'D5G8uf3rxgyCoaE2dhnJp2CtZLZbcGsve4', '0', '1', '1509387075');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1591', '0', 'dog', 'D5G91ERuQ8ghkvcxTdAPWarAzgq2q9Lp8e', '0', '1', '1509387109');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1592', '0', 'dog', 'D5GB8zckk3m2TeD3MTWZjfDojmdYRcnQV5', '0', '1', '1509387135');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1593', '0', 'dog', 'D5GCyX99S5KQyTdDefeB3s5qtsRyHBMRrC', '0', '1', '1509387153');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1594', '0', 'dog', 'D5GEwn9kkg9x5QG5dYkD9qfb6KF1x9VUJt', '0', '1', '1509387160');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1595', '0', 'dog', 'D5GHQzYPoPvCDgbzQY85ynS37cSkqWf7wC', '0', '1', '1509387169');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1596', '0', 'dog', 'D5GLvZ8znHp3NmAFGG4RmKpQbGWqyivztY', '0', '1', '1509387178');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1597', '0', 'dog', 'D5GPk7wAMJDfddxaRmC74uv5C4rCoWhLKU', '0', '1', '1509387183');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1598', '0', 'dog', 'D5GRFMEuZc7FZBUTf1hyM1MAV7WY4kXiUe', '0', '1', '1509387188');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1599', '0', 'dog', 'D5GSWLUQk3P9mYFE6BHZ31fDUd6VGsJmFm', '0', '1', '1509387193');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1600', '0', 'dog', 'D5GTuzvaKP6d3G1PyEqxCKXhf6ZAiiEpNH', '0', '1', '1509387200');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1601', '0', 'dog', 'D5GTvJWLnMQ7CT43bocbgQzSGq9tG2q1SF', '0', '1', '1509387207');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1602', '0', 'dog', 'D5GTyuoCTPLf5b7L7vkVev6fdcJ4WQNeK4', '0', '1', '1509387212');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1603', '0', 'dog', 'D5GU5jsq1Rt6erLECvgF9KSiANPx6rjof5', '0', '1', '1509387218');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1604', '0', 'dog', 'D5GVXea9L8tRA8d1MyDMsC2QkHfRqQqek2', '0', '1', '1509387222');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1605', '0', 'dog', 'D5GYqezKAhPooavknBGh6GgJPFPsSfPhHa', '0', '1', '1509387227');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1606', '0', 'dog', 'D5GbCM9TXQiMQeusArQuYpGYvYshiM3RtQ', '0', '1', '1509387231');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1607', '0', 'dog', 'D5GbhE9mp33Y4YsLuSLyvkSu1TR1hJMHjj', '0', '1', '1509387236');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1608', '0', 'dog', 'D5GfqiyG2faoHZ415aWWTfXoVkTnA33sRs', '0', '1', '1509387242');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1609', '0', 'dog', 'D5GgtcGznXVTmovdBf8LyEbvaAhnAcaWKS', '0', '1', '1509387266');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1610', '0', 'dog', 'D5GhmY1DvfP5h5p5pFQog3Gp3uSNPVFR6p', '0', '1', '1509387276');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1611', '0', 'dog', 'D5Giovpg2djDYsgwXcRSGtJkYcSVL6RAVh', '0', '1', '1509387282');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1612', '0', 'dog', 'D5Gmrq1BD9oDwMoyfnmqZg38LE3J4fMnzq', '0', '1', '1509387287');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1613', '0', 'dog', 'D5GrudU2Jfi4w1UR3AbQKfMX5AAcsHVoTj', '0', '1', '1509387293');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1614', '0', 'dog', 'D5GsxuLymRypKCGDzrDX9jJLZa9fnu4itj', '0', '1', '1509387304');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1615', '0', 'dog', 'D5GtefaJYBuzNz1YN4DduUf63Yw3ddHbyc', '0', '1', '1509387310');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1616', '0', 'dog', 'D5GvNbCFhsBfw25XPCLmya9WBH8GJbKHNR', '0', '1', '1509387316');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1617', '0', 'dog', 'D5GwmzBPfXcdtzSebzTmAUuuFXCG1TFqNK', '0', '1', '1509387323');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1618', '0', 'dog', 'D5GyHntQcEaxgxjBbdBvcNzJ5i6aL6FRcb', '0', '1', '1509387330');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1619', '0', 'dog', 'D5H2z4bx6GYHQ7bHeJArZZL9Y6oNv939we', '0', '1', '1509387334');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1620', '0', 'dog', 'D5H6gJufYkJj6QGCMDEmz3dB9xE9o2Dj6y', '0', '1', '1509387340');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1621', '0', 'dog', 'D5H8KwrWonjorXM5csJmPRqsJfLM1mFPMJ', '0', '1', '1509387347');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1622', '0', 'dog', 'D5HC6pBPrjwiABfjtTC3P5Rrn3hp77j58E', '0', '1', '1509387351');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1623', '0', 'dog', 'D5HCApVVjb1tvfeURCKUrTWSA1riBouRSS', '0', '1', '1509387356');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1624', '0', 'dog', 'D5HE5qcybQmRqchEpMz77Bv3tKEEHSJdpG', '0', '1', '1509387362');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1625', '0', 'dog', 'D5HFhRhuqxEsm1DaRAHsswWZtbBxy2nYqv', '0', '1', '1509387370');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1626', '0', 'dog', 'D5HHgb11gzGCyJrnRMCx1N92HAieUExatk', '0', '1', '1509387375');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1627', '0', 'dog', 'D5HKUFwCNpRWNsEkh4hBSrTUsEzmkQ4Y1A', '0', '1', '1509387388');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1628', '0', 'dog', 'D5HM9byKB75Dw25RyXyocSC9u9fy59ktZi', '0', '1', '1509387396');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1629', '0', 'dog', 'D5HQ6MRiv5NVCPqfDP4RcnBPjPwVeMBfuS', '0', '1', '1509387404');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1630', '0', 'dog', 'D5HTAGBmG3A69bCEVtWtwfxNDkeHdEj2mU', '0', '1', '1509387410');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1631', '0', 'dog', 'D5HZFzopUB1ieFsWpwJkhmHqB2feu8tZCk', '0', '1', '1509387415');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1632', '0', 'dog', 'D5HiVneW19Zg4mC7hm732gV6kRUukJkXRj', '0', '1', '1509387420');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1633', '0', 'dog', 'D5HkDNCHh7cPrNnUrk19sEHjWYZZCdae7p', '0', '1', '1509387427');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1634', '0', 'dog', 'D5Hkjib8pkgVEnvnCLiuzDCMnbsBJVE671', '0', '1', '1509387434');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1635', '0', 'dog', 'D5HqTAgtENDBWyfEFHdMZRxCLbgh5kK6Uo', '0', '1', '1509387446');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1636', '0', 'dog', 'D5Hrbj48tF1iUgid4pjdTemAaMLhLg74r2', '0', '1', '1509387462');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1637', '0', 'dog', 'D5Hx4BxoeJs6MKQgK5dT64gMjY6Vn9nvQg', '0', '1', '1509387468');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1638', '0', 'dog', 'D5HzveU76ejYZWEeJp8Trq3FP6J4khLYrT', '0', '1', '1509387475');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1639', '0', 'dog', 'D5J11N7GdCDQn4nx7oxpdvJsRR5RKgY5eY', '0', '1', '1509387488');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1640', '0', 'dog', 'D5J2D5HPy7PXYKhGQH1MwpvbWDbJt3FX2c', '0', '1', '1509387493');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1641', '0', 'dog', 'D5J3ww3BmqA6Bu4YJhRVkz47H8xwpSd6Tw', '0', '1', '1509387499');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1642', '0', 'dog', 'D5J5EYDgp8j3BskY836Krx8ofgAU6TFVUy', '0', '1', '1509387505');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1643', '0', 'dog', 'D5J7Ak4RdHguhYUcoPut4K9DcVaoa6Hy76', '0', '1', '1509387510');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1644', '0', 'dog', 'D5J7kVK4YEY1aHbgm4hGyj7pAv14WH8h8Q', '0', '1', '1509387519');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1645', '0', 'dog', 'D5J8khNmgtYpMcewgbFDoMBrbt3MMZsXHM', '0', '1', '1509387525');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1646', '0', 'dog', 'D5JAZxtyKyAqRZpKeUGxfmrokeEspmNQTx', '0', '1', '1509387531');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1647', '0', 'dog', 'D5JAtZ7qFbfTxkXWNbJqzMTfB8zZx3vgdQ', '0', '1', '1509387536');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1648', '0', 'dog', 'D5JC3RR8FU1pjXzRmpTgwNE9eviEhKLEL5', '0', '1', '1509387543');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1649', '0', 'dog', 'D5JKt4vrWHM9WBoSDuLNScNUiRdpfrUmqW', '0', '1', '1509387551');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1650', '0', 'dog', 'D5JPNb1crKQSZB27AgPd22LDcPJqBnasfL', '0', '1', '1509387556');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1651', '0', 'dog', 'D5JV5n8Vfb1bSVueQ6qT3vhP4XxueEvHCS', '0', '1', '1509387561');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1652', '0', 'dog', 'D5JdWDQWiXnD4ifXkB3yG9fGPfnTQikVgX', '0', '1', '1509387566');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1653', '0', 'dog', 'D5Je9xWr1nZh6mtNFZiFPovXG59T2E2jaG', '0', '1', '1509387572');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1654', '0', 'dog', 'D5JejfeoCKytA8jXE8ZWN8oxTTTfoo2nZh', '0', '1', '1509387579');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1655', '0', 'dog', 'D5Jga8F1CWrLALVPfAJaN8yhdYdTEJq5YM', '0', '1', '1509387587');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1656', '0', 'dog', 'D5JjLdzxFh5skRUJDERefv12kwFHbreM7s', '0', '1', '1509387592');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1657', '0', 'dog', 'D5JjWxPupzry3Z3YXkQZrJVKHPPfF6pSP3', '0', '1', '1509387600');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1658', '0', 'dog', 'D5JjtY64tjfxwrpDL3dqqtUWF6ZyMV8AYk', '0', '1', '1509387606');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1659', '0', 'dog', 'D5Jkyp81Egca78QHZC4PuzubsSy7E8d8VK', '0', '1', '1509387611');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1660', '0', 'dog', 'D5JmKKnkBWnS4r6sZaqd9RERbtiZCxsZYd', '0', '1', '1509387616');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1661', '0', 'dog', 'D5JmyYU9VcFA1cmiuLEBzZjmxAmtpZRaaA', '0', '1', '1509387621');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1662', '0', 'dog', 'D5JnhLKiy35yyUeJbcRHcJaiNqRxV42Eai', '0', '1', '1509387625');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1663', '0', 'dog', 'D5JqCK3ci3ow6GVWRgbnoLpjRjyo2N7ZAg', '0', '1', '1509387631');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1664', '0', 'dog', 'D5JqxQH6UiyGa9u8eMwrQgRCXnJFbWEhLZ', '0', '1', '1509387640');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1665', '0', 'dog', 'D5JscgDdqQ5jvybULqceHP3umo2u9WbRF6', '0', '1', '1509387646');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1666', '0', 'dog', 'D5JuhKewPpEgHvbNezzxqDEaHDozMzpASu', '0', '1', '1509387650');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1667', '0', 'dog', 'D5JuxyHbtTFbZFAE6LiweVy2FkV7vdsRPp', '0', '1', '1509387656');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1668', '0', 'dog', 'D5JyEfXgMWk6C4Q2miKSgTyb2ya71RJ8K4', '0', '1', '1509387661');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1669', '0', 'dog', 'D5JyHxmMd6qSYVAGuxnj643KY5oKyZCdkR', '0', '1', '1509387668');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1670', '0', 'dog', 'D5K27tHZcNbTYWYjZjdaWhTGVdQd89xzam', '0', '1', '1509387676');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1671', '0', 'dog', 'D5K6PvLKdwyyzrrfsxizrNxnS78tyPfrRY', '0', '1', '1509387683');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1672', '0', 'dog', 'D5K6RtWVNqzirXJv4cBfokc9JdYUSxQdCr', '0', '1', '1509387689');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1673', '0', 'dog', 'D5K6bCYcZSP3Ew6iFD9vFG4oBLRm5iRYzy', '0', '1', '1509387694');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1674', '0', 'dog', 'D5K8byCZYqJh14mfU93sdpVTDPPzPhCn6C', '0', '1', '1509387700');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1675', '0', 'dog', 'D5KAJUUA8DrSsz7yoa177qqf15fSrtNbka', '0', '1', '1509387706');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1676', '0', 'dog', 'D5KBVD5feC79dJBdg5YXV4eHkWkS4y5j7a', '0', '1', '1509387711');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1677', '0', 'dog', 'D5KEh7K8zmacJ5xbuxyA14dxmJwcnRDE6G', '0', '1', '1509387717');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1678', '0', 'dog', 'D5KKNmzYvu1Uihwpd483q4x2FtBeFL6sRy', '0', '1', '1509387723');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1679', '0', 'dog', 'D5KNkZw2dgVKHd9PP4Dyz7dcVucrom9biz', '0', '1', '1509387729');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1680', '0', 'dog', 'D5KRhS4kVumibrmcmX95hanfCFpxozsVc6', '0', '1', '1509387736');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1681', '0', 'dog', 'D5KcANCdXpEYFqmF4PDCX6QcX5mBGnXv2S', '0', '1', '1509387740');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1682', '0', 'dog', 'D5KfurcRiTFYBXgHt4gsR1S2SDD8f684N9', '0', '1', '1509387745');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1683', '0', 'dog', 'D5Kh8oTiAGTv1JAGrwAohvFA8eeSNKs3Jj', '0', '1', '1509387749');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1684', '0', 'dog', 'D5KiL8JG3Ghf37oBaHqwehpTGPLpL6Bfhx', '0', '1', '1509387755');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1685', '0', 'dog', 'D5KkBtp1QPDVsBBgKzpvnQsGQNCWZAMDBN', '0', '1', '1509387760');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1686', '0', 'dog', 'D5KmfRZxZ8B1z8RJ24ukxt1ssAyXxXuFSz', '0', '1', '1509387764');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1687', '0', 'dog', 'D5Kt2ntgCTozYuzwFsXDWi1YKg2nyLkapr', '0', '1', '1509387770');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1688', '0', 'dog', 'D5KwbMU8vcTnpvkoaAe6BvQfEMCnvwNiNJ', '0', '1', '1509387780');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1689', '0', 'dog', 'D5KxbmGYSWZrc7CHZvmLJ8XYCTT8xPmKai', '0', '1', '1509387786');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1690', '0', 'dog', 'D5Kyqjaqw7UZnA5ZPdcCQJKSuGBoisJ8pK', '0', '1', '1509387792');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1691', '0', 'dog', 'D5KzFTUUbNgvLegssep8Fr5p45D8CswnYn', '0', '1', '1509387797');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1692', '0', 'dog', 'D5L4j7GGSTGVNVXWAPhqBZCwDhx3pm55Qq', '0', '1', '1509387828');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1693', '0', 'dog', 'D5L8hW64uvgYqAjfHcjSQbxsMryNxcYWSo', '0', '1', '1509387837');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1694', '0', 'dog', 'D5L9JjxbhQRRFwm4ejth7wowCVPDkgPwRi', '0', '1', '1509387841');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1695', '0', 'dog', 'D5L9LyjDXwM5Rt58QihhH9ZtSnt3hvPABP', '0', '1', '1509387846');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1696', '0', 'dog', 'D5L9UmPYthNnx9C4khvzWnLz1hP1CuxtH1', '0', '1', '1509387853');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1697', '0', 'dog', 'D5LBzz8d5K7z43Eh5V3cv1ePq8zPJTvqqe', '0', '1', '1509387858');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1698', '0', 'dog', 'D5LKZ82NT8Cog6Bodb3oiWieJJ7kjdYhnZ', '0', '1', '1509387862');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1699', '0', 'dog', 'D5LKsgf1ZrUMgiC7Xz1QYVUsqYNRc81Ljd', '0', '1', '1509387868');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1700', '0', 'dog', 'D5LNJ9biZu2z5kunT7PGmkr1QUxsQhA8vR', '0', '1', '1509387876');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1701', '0', 'dog', 'D5LSdVAKYq8UF72tnLWXu1jTFKRSNVi8GF', '0', '1', '1509387882');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1702', '0', 'dog', 'D5LURboFv8wU4DqffvnuezY3LtWpwV93YC', '0', '1', '1509387889');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1703', '0', 'dash', 'Xyp8DyerwkgoAjzjwxB9t8iuViiSNDGFqn', '0', '1', '1509388262');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1704', '0', 'dash', 'Xq1zovQsg7qaHYmzhjnAy164cTh6cZtdcn', '0', '1', '1509388268');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1705', '0', 'dash', 'XfLjVsfTCo7YWfmYaMXQiria4K1Gv5Xzay', '0', '1', '1509388274');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1706', '0', 'dash', 'XwLZEyvGW3i324zDfKJXMhjJjT1KHopb4n', '0', '1', '1509388282');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1707', '0', 'dash', 'Xvfb8LEhm6JZ2ioEBLNrd5xD46UTcNTYRq', '0', '1', '1509388288');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1708', '0', 'dash', 'XrQEoTb1wdSUGU46ss3Mv2KgWwcPL4bMvj', '0', '1', '1509388293');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1709', '0', 'dash', 'XbhZDZEWMAX8vMPAEDzHKj2sW4gi5H6Pxg', '0', '1', '1509388300');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1710', '0', 'dash', 'XtbE78nj6sk2PcenqU8GE3XpCgq5vZLktk', '0', '1', '1509388306');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1711', '0', 'dash', 'Xdm8zXEmcwSiU8qZNuJ5E9bgN7cgvrvnCN', '0', '1', '1509388312');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1712', '0', 'dash', 'Xm6QzPHLf8LNE1B8uKF4ZirUfZYPfD3sxR', '0', '1', '1509388318');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1713', '0', 'dash', 'XpX48PEXExmiNoaZhi9qifMHYy5ffujSXp', '0', '1', '1509388323');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1714', '0', 'dash', 'XjcqCDGh8bkWgi86y2Uuuhwu1Pr62byHte', '0', '1', '1509388329');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1715', '0', 'dash', 'XmF6tuepVD3zZMr9iAgcm5LEEXHn31Brmr', '0', '1', '1509388352');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1716', '0', 'dash', 'XuUjhG1W2hMYjDEeq1fqXFjHjmmmSaMhgh', '0', '1', '1509388360');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1717', '0', 'dash', 'XqjLSySurZRZ7b99TfCT3vjkuJGWSD9cbs', '0', '1', '1509388367');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1718', '0', 'dash', 'XqS1kXddiNEKWiNWFf1UTMu29YdAJB8e8k', '0', '1', '1509388389');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1719', '0', 'dash', 'XwjhgNSqxxFdinKqHKxK7aDCQCnqCdbJWK', '0', '1', '1509388395');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1720', '0', 'dash', 'XoEhdmYv64SXgRmg4H5GzUhLub44R2RST6', '0', '1', '1509388401');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1721', '0', 'dash', 'Xve8cdoRUju15fRC7rarGbVzVmn1cdu3eJ', '0', '1', '1509388415');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1722', '0', 'dash', 'XqD1soTpginAm9ewCFskZESmsix2PvzmpP', '0', '1', '1509388458');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1723', '0', 'dash', 'Xr38bQ5KDuNisfbHyDCkzaDbtfnoJrpiSu', '0', '1', '1509388463');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1724', '0', 'dash', 'XsgSvs2ujrTSkruNowNtapNEzhSvp6nXb3', '0', '1', '1509388472');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1725', '0', 'dash', 'XcPM8ihH3foJZ59vrDcKmzDes82UM2piK4', '0', '1', '1509388477');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1726', '0', 'dash', 'Xdhf3QdfpF457xUpCiR21Cfxy7ZDbsooPK', '0', '1', '1509388486');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1727', '0', 'dash', 'Xe7xE416gAYdG8giui3uQfZ7ioQ2N2yBg1', '0', '1', '1509388495');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1728', '0', 'dash', 'XjXE8YA8cfkQbfG3YQn8J8oTLFcYMTautP', '0', '1', '1509388502');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1729', '0', 'dash', 'XyxXNfdLdjbYgL5YHcfFzPvVUoixqDym7b', '0', '1', '1509388508');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1730', '0', 'dash', 'XjJAPXLYLSN9bABW9ERgmyKNWcLmn9ZSYo', '0', '1', '1509388515');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1731', '0', 'dash', 'XyuRkfuzqRUpUAguu4txkV88yMhk95kpoA', '0', '1', '1509388521');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1732', '0', 'dash', 'XmCLL7H1rA5hLse91f6rEv5saKY3vVDqby', '0', '1', '1509388526');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1733', '0', 'dash', 'XbMLRvpjXFW18Hp6SiRSn7z79vzrTqAQ2W', '0', '1', '1509388531');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1734', '0', 'dash', 'XvaC7cCmRKDNpizsow3dC4RqbR4ZCYfvTa', '0', '1', '1509388536');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1735', '0', 'dash', 'Xkbb31JDMwWJRFMrgzKdYxRCHQG8JhntLu', '0', '1', '1509388542');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1736', '0', 'dash', 'XrA7KGAa6uZaWEVEFTyze7NDXXXzmKJRM7', '0', '1', '1509388547');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1737', '0', 'dash', 'Xwetzig29xpZBzR6jJu7XvFTLGUXFy1PT1', '0', '1', '1509388553');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1738', '0', 'dash', 'Xos6uW5U6owtB1hFfv8mFkhC8BJ6QmR53Q', '0', '1', '1509388558');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1739', '0', 'dash', 'XgGof4kJHKfKBi2MZrBdiZE6sDas7zyVyY', '0', '1', '1509388568');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1740', '0', 'dash', 'XnyhFQBsTeHgn2yfFPdxB1KiSLfCLbdNhW', '0', '1', '1509388573');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1741', '0', 'dash', 'XdCC2JF3MvXqCDmF4NYUM1RRe6bT7yHtG4', '0', '1', '1509388579');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1742', '0', 'dash', 'Xevti9zKR5QhYTXJo9FGuhUUTJo1jriVsK', '0', '1', '1509388585');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1743', '0', 'dash', 'XvAcFdcq4tUXiToaJynVonUQkx4QTDvivq', '0', '1', '1509388593');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1744', '0', 'dash', 'Xgowp1TynAmqGNUdBsVxjo5SxXx1ERD4Nx', '0', '1', '1509388600');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1745', '0', 'dash', 'XqNPs4NhrzBLmFyvRkcmnidLvfQKyz1jnk', '0', '1', '1509388606');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1746', '0', 'dash', 'XsffAkWWDJDviuJyem2VhGCjGdB1TW5QLZ', '0', '1', '1509388612');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1747', '0', 'dash', 'XdUe6L7mKcP19o42J1ncsZDVHiaz2WG3V7', '0', '1', '1509388622');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1748', '0', 'dash', 'XdCgP9h5dYUa8bFQgj75x2d9CmJDAhZDqb', '0', '1', '1509388633');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1749', '0', 'dash', 'XnbrUwokvJNgNvA6GtWnXXUk5uYCfYTg5g', '0', '1', '1509388638');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1750', '0', 'dash', 'XwWCPxKk3PkjQLaUX2g3iHxsdCkw1sUtrt', '0', '1', '1509388646');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1751', '0', 'dash', 'XapUNfeZGQ7gefnpaNA7hEUtuFY7Ei82kE', '0', '1', '1509388653');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1752', '0', 'dash', 'XtKGFaisvF4L8SimZ9nsNbEajP6SQ74Xei', '0', '1', '1509388658');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1753', '0', 'dash', 'XsZiVSZZQL8edVvQuqUYq6ZX7S7Tr7Qv47', '0', '1', '1509388803');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1754', '0', 'dash', 'XghximWdHcbncvqcs72qyjsdBCP5qBqMje', '0', '1', '1509388809');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1755', '0', 'dash', 'Xy7644ndDmvaRdBEorNsyJUDTVCZdBhtqY', '0', '1', '1509388816');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1756', '0', 'dash', 'XbmKXJSMG4czRRXr17AZRKUT2QvxLwptQN', '0', '1', '1509388827');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1757', '0', 'dash', 'XtEuh5z9cjuo3hTQ3gZAcu2CrrA4uoCRbw', '0', '1', '1509388837');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1758', '0', 'dash', 'XefhWCHN3JZXPnkSCDTnvvUHAPPHnoCvW1', '0', '1', '1509388844');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1759', '0', 'dash', 'XhTdrMsDyZb8pyWUxxGvtbRUvG27GDQ3o2', '0', '1', '1509388853');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1760', '0', 'dash', 'XaqmViaQw6U7Gm8K3HbG4YivstCKKtHtZd', '0', '1', '1509388857');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1761', '0', 'dash', 'Xkb22QNCBDQywJ2oSAWTVA7QGrCWWZBJj6', '0', '1', '1509388862');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1762', '0', 'dash', 'XpwK8zKG2LvLDBDyjQEpQJpkdDuB9DxTfS', '0', '1', '1509388868');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1763', '0', 'dash', 'XyE1Hipi8FvHiKNfFDmB2VcfEQQLMLVhY5', '0', '1', '1509388875');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1764', '0', 'dash', 'XxgTfP6qf9wwFKcMFsz6wc6d6P9LBTXFYG', '0', '1', '1509388881');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1765', '0', 'dash', 'XrZq3Vgq9vUg7EsMbm7Xsb4KgeL1rGRBEG', '0', '1', '1509388886');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1766', '0', 'dash', 'XcuRYmKbAQK392AKDQTxXRWnPqWSwu24qD', '0', '1', '1509388892');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1767', '0', 'dash', 'Xqymn2v2PFFchAxHtrgVBRmyMjeKaaqX1V', '0', '1', '1509388899');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1768', '0', 'dash', 'XkFVUrHB35wJaUittqKeSmrvy7petQi2HU', '0', '1', '1509388907');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1769', '0', 'dash', 'XfXqPnrWCUWhm638RBZ9eTu7umcc1yTgCL', '0', '1', '1509388911');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1770', '0', 'dash', 'XujPAfGKjuf1ybdXZWZweJtiEWggZDbpZo', '0', '1', '1509388926');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1771', '0', 'dash', 'XoK9uEDcbJvs9WHnXc3yViTQkXPEwDccJw', '0', '1', '1509388935');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1772', '0', 'dash', 'XwWGa3vosP1Zg5hJqBpGncqB8HgRKmdmuH', '0', '1', '1509388943');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1773', '0', 'dash', 'XgSTv1FwBSJo4pPr7L57WznjMU4WokYyzg', '0', '1', '1509388950');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1774', '0', 'dash', 'Xcupa2TEMXZsDDjMbfF1VLFAd6f5xkoDNt', '0', '1', '1509388956');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1775', '0', 'dash', 'XqokYpt6JJLy3Fa78uM5uQQzixcyhAhMkp', '0', '1', '1509388963');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1776', '0', 'dash', 'Xe5i49SiGY3mMbtB2bE8HhSVaeH7c6Czcs', '0', '1', '1509388972');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1777', '0', 'dash', 'Xi9PKTH1t3Dn8iGho3gU4uRmU9N5tyLgWZ', '0', '1', '1509388980');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1778', '0', 'dash', 'XtK11gYBm88k9KQo2Axh38471Zye3EkTNh', '0', '1', '1509388985');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1779', '0', 'dash', 'XxCkF8rVFJsRV7e64qvu37v2Lgkm7UMhgJ', '0', '1', '1509388991');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1780', '0', 'dash', 'XhASe4Foh3kUo3fTSAMMXCg6tdug3i4wpy', '0', '1', '1509388996');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1781', '0', 'dash', 'XvcjrSDpvmbH9bH8A3jVNSWgzj7rMbVe2A', '0', '1', '1509389002');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1782', '0', 'dash', 'XnMCSG2PaxTDMhi9D6DHCq9TNyNvsJxP6k', '0', '1', '1509389007');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1783', '0', 'dash', 'Xx2whjuRFfmAVVXjuHTgjof5hgiqpJwfUR', '0', '1', '1509389015');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1784', '0', 'dash', 'XyEiyzjkemUnDBu6bScFM2Af7EvMPMVWUx', '0', '1', '1509389021');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1785', '0', 'dash', 'XoBw3QNwN5nyXKA7kZfQQjcNuY57g9G4Wk', '0', '1', '1509389027');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1786', '0', 'dash', 'Xhy7PE1QpbDXg7eTdL1tdSBqNKPJ6CJvbM', '0', '1', '1509389033');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1787', '0', 'dash', 'Xk1t2eWrWippoxgepGbhv5MHjk3NcCKEMg', '0', '1', '1509389037');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1788', '0', 'dash', 'XtZdnqzmm3hon2kqWQt4bA2n4dbULV6SBL', '0', '1', '1509389042');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1789', '0', 'dash', 'Xqqmd7sDRiHDyqtvEkmTYu2ScZs4uSniWn', '0', '1', '1509389048');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1790', '0', 'dash', 'XvWyK68VAKrmbjqEzK6BRZhFLvwwpcBi9W', '0', '1', '1509389055');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1791', '0', 'dash', 'Xih59jNPJmoFENJ7fpzkj5bvwNXEdxu7bG', '0', '1', '1509389061');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1792', '0', 'dash', 'XmkEQwkXMVbRaoDi6ChArkRm9sFzeMHnrQ', '0', '1', '1509389071');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1793', '0', 'dash', 'XwmRkj7YqyofTL3oREXdjzazzktziD5tzd', '0', '1', '1509389079');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1794', '0', 'dash', 'XxfYC5LjoHXS3tGAxKwcYNWX7Ncm5Vc66H', '0', '1', '1509389084');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1795', '0', 'dash', 'Xrv7GxnnqN6nUZUUZAZxV15FREamUUszDD', '0', '1', '1509389091');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1796', '0', 'dash', 'Xsq3e7dfknLnkzNkDjtN87jP1z2pozoy7w', '0', '1', '1509389097');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1797', '0', 'dash', 'XicR6FWyWudc5Ufpzmdpohjfpgdsd4juRw', '0', '1', '1509389102');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1798', '0', 'dash', 'XxezNyTKSgHsg6AxVFzJW9UPHDcNdUkgSo', '0', '1', '1509389107');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1799', '0', 'dash', 'XeT9dD6pDNUcGa3j9PQD1gD8tYHnFBgaju', '0', '1', '1509389112');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1800', '0', 'dash', 'XxoSwrxfCY14axkTUv93TpfWX7iQeZfASw', '0', '1', '1509389118');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1801', '0', 'dash', 'Xof2JVUpXjdPWw2uvJpkjTxKR5tTvtvhVh', '0', '1', '1509389122');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1802', '0', 'dash', 'XgFvkCaZwhbJoEtK4q9PsmGE4RrEkCeRM2', '0', '1', '1509389131');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1803', '0', 'dash', 'Xdmom7UhwGPWXvrqs5RfJV3m89bsNaytut', '0', '1', '1509389166');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1804', '0', 'dash', 'Xbh911qeiJPAwypPYLjWUVKgtyYHp4r3mJ', '0', '1', '1509389171');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1805', '0', 'dash', 'Xx77m2WZXqf6fRJngM1oBKk8YhxcsAUrua', '0', '1', '1509389176');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1806', '0', 'dash', 'Xis4QA4A6UFmmNN24jppXQzBimvHGxHNd4', '0', '1', '1509389182');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1807', '0', 'dash', 'XrPmdoTk6TBNLFZFPw9gmhu7TkxmRYuqkG', '0', '1', '1509389187');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1808', '0', 'dash', 'XrAKXt4nwYKjVUf58gNE4cfekDZs2Dxber', '0', '1', '1509389191');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1809', '0', 'dash', 'XdWEtmhuojsbBZSeTBFwYxM2PjyK6pSSby', '0', '1', '1509389196');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1810', '0', 'dash', 'Xvet3zN2QmMEa8xHWKD4CK3uELnCLvrNgw', '0', '1', '1509389201');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1811', '0', 'dash', 'XdxxWcpoxERKC2auumofkZGFqoM3neQecZ', '0', '1', '1509389208');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1812', '0', 'dash', 'XfJhvTwRhXxLPC4Fw9FVWS5jNQajCgTfun', '0', '1', '1509389214');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1813', '0', 'dash', 'XnT7B5r12wiVPCDf5pZGca3bdhQ5c86uRo', '0', '1', '1509389219');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1814', '0', 'dash', 'XbrWUQoTLkVsCsmaJLnBUNBhgjcrNUg1c9', '0', '1', '1509389225');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1815', '0', 'dash', 'XnZsGTjh4QQXSckrTTXdRPN1rPphyRepme', '0', '1', '1509389231');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1816', '0', 'dash', 'Xm86F4TJqYa6ynzpvoutELudaZ4uPh1p75', '0', '1', '1509389236');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1817', '0', 'dash', 'XwBhLSHWMjnwRYs1jBtD1YmCGQZzKHaV4U', '0', '1', '1509389241');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1818', '0', 'dash', 'Xw1H4Y5EzLNoY4hd9DstAjNc7AQPJe5Wvn', '0', '1', '1509389247');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1819', '0', 'dash', 'XqqJkZf8be4HT1s81A2Bmd5RTBTrGamksq', '0', '1', '1509389252');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1820', '0', 'dash', 'XhhP7syPTMWwtkRGw13nJvy8fP78rcrRG5', '0', '1', '1509389258');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1821', '0', 'dash', 'XvtsKCBoP64XDj3Jz4X2J9zdRtR4STPDRK', '0', '1', '1509389285');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1822', '0', 'dash', 'XfF8MeAmChWx5QYQy4RsEbL9pznpnVxFW7', '0', '1', '1509389291');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1823', '0', 'dash', 'XdknYRPjenj6rYvYJqKkw64fDPQLPtXX9a', '0', '1', '1509389299');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1824', '0', 'dash', 'XezeNiMojjjDzAr4heWp9RpxwpzQYhpQ6u', '0', '1', '1509389303');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1825', '0', 'dash', 'XkzmLKC1SkqV3t3zd65cmCPYePvjCdSBG6', '0', '1', '1509389311');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1826', '0', 'dash', 'XeKMVREaZqL2f51QVScJmmUv3R8uHU1k1T', '0', '1', '1509389320');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1827', '0', 'dash', 'Xhp1hGDzKEvEsJLJfALsrLJLgAJK4ZDzpd', '0', '1', '1509389325');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1828', '0', 'dash', 'XnPbM2YZ1Ba1J7dztyaRD8nzHVSzuzrCxs', '0', '1', '1509389331');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1829', '0', 'dash', 'XpDZ5LT5yDCwGFegryHncLwqCTMtooy5pK', '0', '1', '1509389336');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1830', '0', 'dash', 'XmN8fCkvXPFppG119KUnFajEk9QCjw9nHg', '0', '1', '1509389341');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1831', '0', 'dash', 'Xfvfyqz1ZP3SBxAruKdq5u6tYtP4HvD6YJ', '0', '1', '1509389346');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1832', '0', 'dash', 'XjpmRYgSBuApuB2t4idfssggpYpevUwo3H', '0', '1', '1509389353');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1833', '0', 'dash', 'XqPyJnGeBHtuDMjHRCTBoZVgDTbsZDBK86', '0', '1', '1509389359');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1834', '0', 'dash', 'Xsoq3GwrCf3fjse93caueiuNPymN1abH1S', '0', '1', '1509389365');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1835', '0', 'dash', 'Xd76dgdsaJTsFikzG8M6GsZH6xHMAZi1CL', '0', '1', '1509389372');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1836', '0', 'dash', 'XqfdEPwjBCHB9i3sQXmCcYr8ZzJTbB3gvw', '0', '1', '1509389377');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1837', '0', 'dash', 'XuXnLQfoVm1WZb5PccvSDkJcQ9pj6DGTyj', '0', '1', '1509389383');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1838', '0', 'dash', 'XvJ7h4G9DRihQK5GwQX8jtrAq2FJHGXwtY', '0', '1', '1509389388');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1839', '0', 'dash', 'XmTea1RV7WVkjx2Mc6m1keXoFiYA8tzmXt', '0', '1', '1509389393');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1840', '0', 'dash', 'Xj2MVQcZMm76NmuTuBthEBFT6kCf9Gr4Ek', '0', '1', '1509389398');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1841', '0', 'dash', 'XrY2BU1tsCcemXiNqNJ8i5kwV7DJdvM7q5', '0', '1', '1509389403');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1842', '0', 'dash', 'Xce4kX1DgW21CgFrSxaGc58y1TojX2aR12', '0', '1', '1509389422');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1843', '0', 'dash', 'XrPWrJ5jkRQpYMrXW6quYfEdyHv8mSJDYu', '0', '1', '1509389429');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1844', '0', 'dash', 'Xo3pbMc5pk4nrWVgaX1Sm88dx8sx1rLqTn', '0', '1', '1509389433');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1845', '0', 'dash', 'XaxWJNuggnFra3gPdXmz4V1T9tWXmP3wsz', '0', '1', '1509389439');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1846', '0', 'dash', 'XfpEm89rg6CzvnPHtRQg6d8ZmnAtMULWJJ', '0', '1', '1509389463');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1847', '0', 'dash', 'Xwy8X2fxZkWsqpBkReWMoBEycygMF3uxhS', '0', '1', '1509389469');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1848', '0', 'dash', 'XqggNWeuHmd5zygMC6oAu9TLumwYnKUZHt', '0', '1', '1509389474');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1849', '0', 'dash', 'XwdywkH7HgeEZFXAYjGZfB9SmF2o9ET1wm', '0', '1', '1509389483');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1850', '0', 'dash', 'XqzNCbopy1ayTZhnp1HYTCDG46vwEGKP94', '0', '1', '1509389488');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1851', '0', 'dash', 'XfjSpZEQXyCZXvNLZU4UqYEXmQ6Kxai8Dq', '0', '1', '1509389493');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1852', '0', 'dash', 'Xi5n79jyodG89Sj5AgiPmftiG3Y5Z2ZJKx', '0', '1', '1509389503');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1853', '0', 'dash', 'XqiLNH9x8ZM6KUMS9DrfCcPURid8PnxTd3', '0', '1', '1509389543');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1854', '0', 'dash', 'XobdA2mSnVxAxFSjjWAWRzF9MpWwoGwSWa', '0', '1', '1509389549');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1855', '0', 'dash', 'XjCpkSxBwrrG7cZxqSEDBNB21wjkvJSwPt', '0', '1', '1509389555');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1856', '0', 'dash', 'XbwDZziakFooPiW85iweF1VBu1bBdoehR2', '0', '1', '1509389563');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1857', '0', 'dash', 'XgkbkvJroszr6CbnnP1e5JhtDW4nt4vQdq', '0', '1', '1509389569');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1858', '0', 'dash', 'XyHz5aYSykpRcfrerEo2AiuBP6KraDK7EY', '0', '1', '1509389573');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1859', '0', 'dash', 'XxFWT9Q1UBYBmGvcQaLdxHx6YAU73Hgj5d', '0', '1', '1509389579');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1860', '0', 'dash', 'XfwznqiMhZNZRJu2yCxHP56eLSjDkDa8Vq', '0', '1', '1509389584');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1861', '0', 'dash', 'XbqqzrmpZbX9gkQDkXrwBYbj7yG3Bxmez1', '0', '1', '1509389590');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1862', '0', 'dash', 'XgLqhgbQXSPCK5zvCjY7v3FcpjeFgn13US', '0', '1', '1509389598');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1863', '0', 'dash', 'XkFHjSRFZ5uzCg2bJunZxb42nCau3u6RXn', '0', '1', '1509389603');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1864', '0', 'dash', 'Xqj2QGTzRNJfCYjXogH6WvGDxD3TYToUwk', '0', '1', '1509389610');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1865', '0', 'dash', 'XeapB8cUcbJ8C9P43HyDxcURP4owgoT5mF', '0', '1', '1509389615');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1866', '0', 'dash', 'Xnqu8xUCGCKUg95HDGcDscD845wSDwkmzh', '0', '1', '1509389620');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1867', '0', 'dash', 'XpVLfMe99Zpt7sxAgFrehUKRcoPV1hi5vn', '0', '1', '1509389624');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1868', '0', 'dash', 'XaqN4feEocfJF5hor34jhbh46xB81697wp', '0', '1', '1509389628');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1869', '0', 'dash', 'Xb1jB7kCETjd8R21E5eBKGNDhvByc954Dp', '0', '1', '1509389632');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1870', '0', 'dash', 'XhQKwF6drsf8DvyCcQFPoXSZLc6bhQ1yh8', '0', '1', '1509389637');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1871', '0', 'dash', 'XjXWci71uyJGSZggV7cdq3AvsnMhDVVa2N', '0', '1', '1509389642');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1872', '0', 'dash', 'XmzJurF7eD5f27Zg81JQozcVJfAix1VBDE', '0', '1', '1509389648');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1873', '0', 'dash', 'Xn5VVCqyuxnRLZvgNp3aNSWkV8YXGCLKxc', '0', '1', '1509389653');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1874', '0', 'dash', 'XanHgqvgYimPbBW3q7Ar9efwtnYExGT89Y', '0', '1', '1509389658');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1875', '0', 'dash', 'XwecYRpKoeSShnPyFFBeVR972wL8CWvEu1', '0', '1', '1509389666');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1876', '0', 'dash', 'XdwcWEZBY69btyrq3d9714tMvAYYowZ72e', '0', '1', '1509389673');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1877', '0', 'dash', 'XoWLNYHp9jVdBikkoaSLQ2rnMnpkbe8SDu', '0', '1', '1509389677');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1878', '0', 'dash', 'Xyyz8YyPzHeSzhcwR8YNvpS35sfL9VAiWo', '0', '1', '1509389684');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1879', '0', 'dash', 'XcMCeK1ekKuczraujqof22oxMe2dNuQyho', '0', '1', '1509389689');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1880', '0', 'dash', 'XoWBnthuYCZNA7jJ2Sd1D3g8gFiNiahA7v', '0', '1', '1509389694');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1881', '0', 'dash', 'XmiTeZ1KxuPhHmxjhwMFDkqdBfwJJjhjYm', '0', '1', '1509389700');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1882', '0', 'dash', 'XegHNWhSx3CvrFvE5bHSxLNGYZu3qGGWYd', '0', '1', '1509389706');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1883', '0', 'dash', 'XrVquwV49gTdGPSyT165Jg671SnLEoEMZT', '0', '1', '1509389713');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1884', '0', 'dash', 'XtSFFTZMqVvMsmygC6dq7FvtJDcy5HHiL3', '0', '1', '1509389720');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1885', '0', 'dash', 'XqCJuzDuJjX1bNDgurgj95bD8DgngzzTMq', '0', '1', '1509389725');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1886', '0', 'dash', 'Xs8XwKaHH9F1kj8Fq424TKfV2mb429QFbf', '0', '1', '1509389731');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1887', '0', 'dash', 'Xz1cZtLqB4yFUK8qFCrAFDofXkHRJW8xrU', '0', '1', '1509389737');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1888', '0', 'dash', 'Xcd9rSb5iR4egXVbKQt6GLyFdTdZGC3aUE', '0', '1', '1509389745');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1889', '0', 'dash', 'XibF6Bv7Yi8USZN3CD53jgFScsM4xszjEr', '0', '1', '1509389750');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1890', '0', 'dash', 'Xtqu4NaysuMTmDRGvXCmrCnxpMKUsSr6cZ', '0', '1', '1509389757');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1891', '0', 'dash', 'XqdBjhWV6i8AcqfT6vs2z6i1cQ8PVLjsQo', '0', '1', '1509389762');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1892', '0', 'dash', 'XjekrFnW84pcoUfpzEPa497ezSfWY9bran', '0', '1', '1509389766');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1893', '0', 'dash', 'Xu8KuifChrUGneeHXTaBUwiHjakZ2nVVXN', '0', '1', '1509389771');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1894', '0', 'dash', 'XehGTZxJfeH9Kw5JqHyE1cmGuzJV9wSywv', '0', '1', '1509389777');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1895', '0', 'dash', 'XsdhYYAeLnQJv4aivnbyi74vmkPw3dtSDJ', '0', '1', '1509389784');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1896', '0', 'dash', 'XbVn9Ffdg2XKjd4arM3EHkCM8sQ7jzrqBv', '0', '1', '1509389789');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1897', '0', 'dash', 'Xj77wJJAkohoZhg2ipSqCsgwoS9cVTJPfS', '0', '1', '1509389794');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1898', '0', 'dash', 'XmrB9v8E5gtyN1B1umBKs7y4ZPCneLcndB', '0', '1', '1509389800');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1899', '0', 'dash', 'Xmk2Qy3YSGi6f7hJf7rnRqdANwWM3kEfpE', '0', '1', '1509389805');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1900', '0', 'dash', 'Xk66Z9fyL4Hrsv394mLJWJjL3gatVqG8sy', '0', '1', '1509389811');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1901', '0', 'dash', 'XbrbyMRGFSogEvbQvG9TaC4Uv3YrXEpAkN', '0', '1', '1509389816');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1902', '0', 'dash', 'XevaWHqHb1kuUzu9BD9a3TiUupompuVKN3', '0', '1', '1509389822');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1904', '0', 'ardr', 'NXT-559Y-E3XC-3YWG-8APED', '0', '1', '1509614340');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1905', '0', 'ardr', 'NXT-5MRP-5U2G-7P5V-79786', '0', '1', '1509614345');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1906', '0', 'ardr', 'NXT-ZFKU-DQ8L-78KT-3TME6', '0', '1', '1509614353');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1907', '0', 'ardr', 'NXT-CSXM-D5LL-N6A3-34454', '0', '1', '1509614359');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1908', '0', 'ardr', 'NXT-GTCF-7BGY-FBMG-CDKNG', '0', '1', '1509614367');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1909', '0', 'ardr', 'NXT-T9LQ-BHPL-MGEZ-64R3U', '0', '1', '1509614389');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1910', '0', 'ardr', 'NXT-CE8Q-GYXB-MZ4C-FCWGZ', '0', '1', '1509614394');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1911', '0', 'ardr', 'NXT-BAK5-US3T-7MSU-FXE7P', '0', '1', '1509614398');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1912', '0', 'ardr', 'NXT-B25Q-28T8-7BS9-BXL4B', '0', '1', '1509614404');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1913', '0', 'ardr', 'NXT-4A36-YYUJ-VWE9-3TJV6', '0', '1', '1509614410');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1914', '0', 'ardr', 'NXT-PJ6X-YEP7-PUVM-CB9DE', '0', '1', '1509614416');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1915', '0', 'ardr', 'NXT-V7DT-E45Q-MQL3-4HACF', '0', '1', '1509614421');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1916', '0', 'ardr', 'NXT-CG5B-MHJH-FSYZ-FXVVS', '0', '1', '1509614448');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1917', '0', 'ardr', 'NXT-NSFB-MSN3-42WY-3ADAH', '0', '1', '1509614459');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1918', '0', 'ardr', 'NXT-Z9A2-6HRU-M4BZ-AZVYN', '0', '1', '1509614468');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1919', '0', 'ardr', 'NXT-84BC-ZVYS-JGVA-HJWWC', '0', '1', '1509614488');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1920', '0', 'ardr', 'NXT-3WJZ-LXFU-GVMR-3BF3B', '0', '1', '1509614494');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1921', '0', 'ardr', 'NXT-RNYU-U4JA-UJYM-HLCLX', '0', '1', '1509614499');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1922', '0', 'ardr', 'NXT-9LBZ-YN5X-CQND-83B3T', '0', '1', '1509614505');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1923', '0', 'ardr', 'NXT-TGRP-56WG-6KGH-CXHEF', '0', '1', '1509614510');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1924', '0', 'ardr', 'NXT-5AAA-YF6X-QVV4-BBGPL', '0', '1', '1509614516');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1925', '0', 'ardr', 'NXT-DJVB-BPWV-MFNC-4KYBL', '0', '1', '1509614521');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1926', '0', 'ardr', 'NXT-C4SY-RAX6-HYJD-B6DSS', '0', '1', '1509614526');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1927', '0', 'ardr', 'NXT-88FT-6EFJ-LEPL-ACLRX', '0', '1', '1509614531');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1928', '0', 'ardr', 'NXT-CTTC-2QDV-TG9K-GDBPY', '0', '1', '1509614537');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1929', '0', 'ardr', 'NXT-KAYQ-NQY7-84NL-AVYQ7', '0', '1', '1509614542');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1930', '0', 'ardr', 'NXT-LNES-4MU3-684T-GZBTB', '0', '1', '1509614547');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1931', '0', 'ardr', 'NXT-PBBS-8G6U-A2MS-4LBL5', '0', '1', '1509614552');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1932', '0', 'ardr', 'NXT-K82H-4PZQ-JBYL-BNNL7', '0', '1', '1509614558');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1933', '0', 'ardr', 'NXT-7PR5-D448-8BU9-9L2FZ', '0', '1', '1509614562');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1934', '0', 'ardr', 'NXT-FPJC-7T9T-N7E3-3KC96', '0', '1', '1509614567');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1935', '0', 'ardr', 'NXT-SHW5-Q4M3-ZP98-4K5Y6', '0', '1', '1509614594');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1936', '0', 'ardr', 'NXT-2N4Y-BYNP-J8FF-492UM', '0', '1', '1509614599');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1937', '0', 'ardr', 'NXT-YHPK-PDRT-FRQG-ETWZU', '0', '1', '1509614605');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1938', '0', 'ardr', 'NXT-TYQN-YMQA-BEVZ-GVLJK', '0', '1', '1509614614');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1939', '0', 'ardr', 'NXT-LFST-KWPM-JWFQ-96F38', '0', '1', '1509614626');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1940', '0', 'ardr', 'NXT-8JQW-96WL-3ZFH-56FQL', '0', '1', '1509614630');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1941', '0', 'ardr', 'NXT-AUH6-WQ89-PAX7-EJX99', '0', '1', '1509614635');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1942', '0', 'ardr', 'NXT-Y3UW-NJMB-LZQH-G3CVJ', '0', '1', '1509614648');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1943', '0', 'ardr', 'NXT-EMNM-7CNL-GHH4-7F29X', '0', '1', '1509614657');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1944', '0', 'ardr', 'NXT-SGVJ-BA5K-J7ZQ-G8MHX', '0', '1', '1509614667');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1945', '0', 'ardr', 'NXT-AAXM-Q38L-XDVA-66W5M', '0', '1', '1509614673');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1946', '0', 'ardr', 'NXT-LZQF-WHAK-EDJ9-D9ACH', '0', '1', '1509614678');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1947', '0', 'ardr', 'NXT-L4UX-DTSY-ZP6U-DD2QU', '0', '1', '1509614683');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1948', '0', 'ardr', 'NXT-JC22-9LE4-REJS-G9XVQ', '0', '1', '1509614699');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1949', '0', 'ardr', 'NXT-SJXN-VVLC-VYBC-6JNW7', '0', '1', '1509614705');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1950', '0', 'ardr', 'NXT-65DW-H2PL-D5NA-E6X55', '0', '1', '1509614716');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1951', '0', 'ardr', 'NXT-3RWG-U26Z-5JRB-ENUF4', '0', '1', '1509614724');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1952', '0', 'ardr', 'NXT-BBQ6-BFB3-Q5CL-C62NZ', '0', '1', '1509614728');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1953', '0', 'ardr', 'NXT-V5DR-PHR7-WEJH-DKYYR', '0', '1', '1509614746');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1954', '0', 'ardr', 'NXT-QTUL-VKTP-H4JS-H9GRD', '0', '1', '1509614750');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1955', '0', 'ardr', 'NXT-P376-6JDK-5ZQU-FDWG8', '0', '1', '1509614755');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1956', '0', 'ardr', 'NXT-TMLN-YGLB-5SSA-AT83C', '0', '1', '1509614759');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1957', '0', 'ardr', 'NXT-CXFB-UBPD-59EY-9ZCK6', '0', '1', '1509614763');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1958', '0', 'ardr', 'NXT-TGMJ-97JN-CP34-4DZ5G', '0', '1', '1509614772');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1959', '0', 'ardr', 'NXT-WENX-UB95-4FMT-767VE', '0', '1', '1509614778');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1960', '0', 'ardr', 'NXT-AADX-H878-RVRE-DURJC', '0', '1', '1509614783');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1961', '0', 'ardr', 'NXT-YFKW-DXJK-E5AA-C87VS', '0', '1', '1509614789');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1962', '0', 'ardr', 'NXT-F43Y-H8R5-SH67-AE9JB', '0', '1', '1509614794');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1963', '0', 'ardr', 'NXT-GCRS-CCQS-3PRP-GVXZC', '0', '1', '1509614799');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1964', '0', 'ardr', 'NXT-NMVJ-QCFH-2ZSB-2SG66', '0', '1', '1509614804');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1965', '0', 'ardr', 'NXT-DDUN-PMK7-CRX5-9BT3Z', '0', '1', '1509614842');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1966', '0', 'ardr', 'NXT-EWCF-UFTD-5DJ6-HF7W2', '0', '1', '1509614849');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1967', '0', 'ardr', 'NXT-H7C3-3DZF-XSMY-6KDZP', '0', '1', '1509614856');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1968', '0', 'ardr', 'NXT-75DF-QFHM-KUER-BV8XP', '0', '1', '1509614875');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1969', '0', 'ardr', 'NXT-AZMN-5BFT-TYNY-8JPTF', '0', '1', '1509614880');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1970', '0', 'ardr', 'NXT-93GR-S74V-ZNL7-H7RXM', '0', '1', '1509614903');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1971', '0', 'ardr', 'NXT-FH5M-4MFZ-77XE-C5BN4', '0', '1', '1509614921');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1972', '0', 'ardr', 'NXT-KFU7-5YR3-TWT3-4L6GQ', '0', '1', '1509614940');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1973', '0', 'ardr', 'NXT-HSZQ-LQJL-6KMX-9KHKX', '0', '1', '1509614947');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1974', '0', 'ardr', 'NXT-GM8C-PCBH-RLGZ-HENEF', '0', '1', '1509615098');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1975', '0', 'ardr', 'NXT-FQEZ-3Z63-WPLK-7VQSU', '0', '1', '1509615107');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1976', '0', 'ardr', 'NXT-JNUK-ATF6-MUYX-3BSHT', '0', '1', '1509615137');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1977', '0', 'ardr', 'NXT-56YL-GH6J-5TK6-GG9AY', '0', '1', '1509615150');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1978', '0', 'ardr', 'NXT-FCFM-FZ8C-PBS5-5STX3', '0', '1', '1509615187');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1979', '0', 'ardr', 'NXT-NC2E-R8FR-34LQ-GRRU6', '0', '1', '1509615191');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1980', '0', 'ardr', 'NXT-NJDW-BJDT-HXDZ-AXWBX', '0', '1', '1509615196');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1981', '0', 'ardr', 'NXT-MZ5A-S9CQ-QQBX-77H9D', '0', '1', '1509615206');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1982', '0', 'ardr', 'NXT-T3JW-UF98-LU4B-C7NXB', '0', '1', '1509615216');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1983', '0', 'ardr', 'NXT-T48L-9QWD-6RVZ-4PH2N', '0', '1', '1509615223');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1984', '0', 'ardr', 'NXT-M348-E9FD-8NEY-7N6A7', '0', '1', '1509615227');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1985', '0', 'ardr', 'NXT-AE9A-2CPN-4NDL-5RXER', '0', '1', '1509615232');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1986', '0', 'ardr', 'NXT-Z5K6-TNFQ-RYHB-BKCZ7', '0', '1', '1509615236');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1987', '0', 'ardr', 'NXT-XUL3-D4ND-88BC-7MPL6', '0', '1', '1509615240');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1988', '0', 'ardr', 'NXT-QTB4-XXYM-5TUQ-32AW3', '0', '1', '1509615254');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1989', '0', 'ardr', 'NXT-WNMS-P52M-ZGQ9-5YD27', '0', '1', '1509615275');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1990', '0', 'ardr', 'NXT-9H26-LYA7-RZAH-8QGYZ', '0', '1', '1509615284');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1991', '0', 'ardr', 'NXT-WN4D-TPGV-3STZ-48XG8', '0', '1', '1509615297');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1992', '0', 'ardr', 'NXT-8S45-88AM-NHFM-GNAPW', '0', '1', '1509615302');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1993', '0', 'ardr', 'NXT-Y6VT-HVL6-ZRPF-2HQCU', '0', '1', '1509615309');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1994', '0', 'ardr', 'NXT-ACAL-5WCU-CKMT-7CUEG', '0', '1', '1509615317');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1995', '0', 'ardr', 'NXT-EGSX-G55N-KHV9-2N7FE', '0', '1', '1509615333');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1996', '0', 'ardr', 'NXT-7LT5-E3NC-EEY4-AKLQ6', '0', '1', '1509615340');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1997', '0', 'ardr', 'NXT-PNZS-4PS3-47LL-75EJE', '0', '1', '1509615344');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1998', '0', 'ardr', 'NXT-6J97-JM3S-UHH2-G4PWV', '0', '1', '1509615349');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('1999', '0', 'ardr', 'NXT-WX68-QYJ5-6WKA-58UFV', '0', '1', '1509615354');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2000', '0', 'ardr', 'NXT-JE7S-KTMT-25XN-9TVDW', '0', '1', '1509615358');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2001', '0', 'ardr', 'NXT-62C7-QSR3-FHJJ-ANQMG', '0', '1', '1509615363');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2002', '0', 'ardr', 'NXT-68QR-5S35-ZY9Y-3P95Q', '0', '1', '1509615383');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2003', '0', 'ardr', 'NXT-JRJS-QB3X-T6WD-FSB66', '0', '1', '1509615398');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2004', '0', 'ardr', 'NXT-4HZM-MK9B-Q4NZ-FQGYQ', '0', '1', '1509615403');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2005', '0', 'ardr', 'NXT-YTBF-T9E7-YW4B-6YHVW', '0', '1', '1509615408');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2006', '0', 'ardr', 'NXT-7TK4-GDPD-VBVS-EC3XK', '0', '1', '1509615414');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2007', '0', 'ardr', 'NXT-AC6N-DC9E-ZHK4-9YSE8', '0', '1', '1509615418');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2008', '0', 'ardr', 'NXT-G4MA-4ZD9-VHYZ-B537A', '0', '1', '1509615439');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2009', '0', 'ardr', 'NXT-8U38-4DYE-FFED-6BRZZ', '0', '1', '1509615444');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2010', '0', 'ardr', 'NXT-HEFA-PTDN-TLRC-G2YS4', '0', '1', '1509615449');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2011', '0', 'ardr', 'NXT-L5XX-HQ9G-F8YY-H3J9K', '0', '1', '1509615455');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2012', '0', 'ardr', 'NXT-U6S3-SWRQ-4CNA-7LNRJ', '0', '1', '1509615461');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2013', '0', 'ardr', 'NXT-GJWJ-Q3R4-SSJF-3YULC', '0', '1', '1509615465');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2014', '0', 'ardr', 'NXT-898W-Q3JW-KK7G-E2VNC', '0', '1', '1509615469');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2015', '0', 'ardr', 'NXT-ERDK-DBLS-A4GC-3RVZF', '0', '1', '1509615473');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2016', '0', 'ardr', 'NXT-498B-YS2Y-QYD9-HW9MD', '0', '1', '1509615478');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2017', '0', 'ardr', 'NXT-STD9-MYUE-5YW5-G4HHK', '0', '1', '1509615483');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2018', '0', 'ardr', 'NXT-GZEU-8BAR-FB2A-CAACP', '0', '1', '1509615488');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2019', '0', 'ardr', 'NXT-5CZJ-NHQL-BR85-59ZQ4', '0', '1', '1509615493');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2020', '0', 'ardr', 'NXT-G47Z-LRPH-TPGC-7TGAC', '0', '1', '1509615498');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2021', '0', 'ardr', 'NXT-KSQH-ZZHT-LNRJ-22HPM', '0', '1', '1509615502');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2022', '0', 'ardr', 'NXT-JAG2-R72X-YBVZ-D5ZKW', '0', '1', '1509615506');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2023', '0', 'ardr', 'NXT-KVWF-VGAT-9ZAS-D2S8T', '0', '1', '1509615511');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2024', '0', 'ardr', 'NXT-XNQA-MPV6-VBGU-HH788', '0', '1', '1509615515');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2025', '0', 'ardr', 'NXT-6WD4-MJV9-9EWP-43DAM', '0', '1', '1509615520');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2026', '0', 'ardr', 'NXT-SEVD-VAWL-GUYL-8MNMW', '0', '1', '1509615524');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2027', '0', 'ardr', 'NXT-BVCZ-CEJX-NVVP-3BJJU', '0', '1', '1509615530');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2028', '0', 'ardr', 'NXT-VPP6-METZ-UR5H-EDPT5', '0', '1', '1509615534');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2029', '0', 'ardr', 'NXT-9B9X-DD9X-U9XB-8QGQN', '0', '1', '1509615538');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2030', '0', 'ardr', 'NXT-VMUQ-5A5J-ZCM6-AYNDK', '0', '1', '1509615544');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2031', '0', 'ardr', 'NXT-VU8W-R26E-PU6L-3UVGG', '0', '1', '1509615549');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2032', '0', 'ardr', 'NXT-GNYK-MYG2-3HXQ-6RCEH', '0', '1', '1509615554');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2033', '0', 'ardr', 'NXT-P9TE-V4NK-4SL4-7GZE3', '0', '1', '1509615559');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2034', '0', 'ardr', 'NXT-SGV7-FSN9-JT6Q-DWSKT', '0', '1', '1509615564');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2035', '0', 'ardr', 'NXT-9E4P-ZRPJ-Q4KF-34ZHH', '0', '1', '1509615569');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2036', '0', 'ardr', 'NXT-LFYG-9RYS-ABLN-E9HK2', '0', '1', '1509615574');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2037', '0', 'ardr', 'NXT-JFCL-8HEJ-ERV6-7BYYZ', '0', '1', '1509615578');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2038', '0', 'ardr', 'NXT-QNSK-G5S6-WL8B-ATMV9', '0', '1', '1509615585');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2039', '0', 'ardr', 'NXT-HCPN-QUHK-QKCE-247NQ', '0', '1', '1509615589');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2040', '0', 'ardr', 'NXT-ABD9-BQJL-299R-4GRBF', '0', '1', '1509615594');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2041', '0', 'ardr', 'NXT-GTJ5-D4MK-CS94-CYPDY', '0', '1', '1509615598');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2042', '0', 'ardr', 'NXT-BUWT-N8RP-UHTK-CTVKA', '0', '1', '1509615602');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2043', '0', 'ardr', 'NXT-YT43-FKEB-4QZD-HSEJ9', '0', '1', '1509615610');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2044', '0', 'ardr', 'NXT-ZEUF-RPR2-KQY5-CZCJS', '0', '1', '1509615615');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2045', '0', 'ardr', 'NXT-K9GU-7AFV-5FFW-CMJRA', '0', '1', '1509615620');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2046', '0', 'ardr', 'NXT-XZD5-ASGD-PYMY-78ZJQ', '0', '1', '1509615626');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2047', '0', 'ardr', 'NXT-836S-FKQE-Y5XL-9PGDP', '0', '1', '1509615631');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2048', '0', 'ardr', 'NXT-Q3SL-7C4N-3FBQ-B5NJE', '0', '1', '1509615635');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2049', '0', 'ardr', 'NXT-6CWK-JW8P-DPEF-F3EML', '0', '1', '1509615639');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2050', '0', 'ardr', 'NXT-9Z7P-PCG5-HZ3B-HU8WA', '0', '1', '1509615644');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2051', '0', 'ardr', 'NXT-RERA-5N4H-SPW7-9QEY8', '0', '1', '1509615650');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2052', '0', 'ardr', 'NXT-ZT84-HUJU-6B2L-AKDF2', '0', '1', '1509615654');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2053', '0', 'ardr', 'NXT-TF3E-NY7L-L4BF-CP9GM', '0', '1', '1509615659');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2054', '0', 'ardr', 'NXT-T8HL-8RHZ-LVDR-6TP3T', '0', '1', '1509615673');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2055', '0', 'ardr', 'NXT-66UY-8MU7-DAV3-FFDH8', '0', '1', '1509615955');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2056', '0', 'ardr', 'NXT-WCVJ-FX28-2GLU-5MM3T', '0', '1', '1509615967');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2057', '0', 'ardr', 'NXT-JF6R-G6L6-SFPA-5NG64', '0', '1', '1509615971');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2058', '0', 'ardr', 'NXT-9SLE-2KPT-KJD8-6ECLB', '0', '1', '1509615976');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2059', '0', 'ardr', 'NXT-PCG7-N2H8-2MF6-8R838', '0', '1', '1509615982');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2060', '0', 'ardr', 'NXT-B6ZX-KTGS-2BER-9QLU2', '0', '1', '1509615988');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2061', '0', 'ardr', 'NXT-6KFZ-UK4A-D3QG-ER3SH', '0', '1', '1509615993');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2062', '0', 'ardr', 'NXT-B4PS-SCP5-WXKH-DDRJ4', '0', '1', '1509615998');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2063', '0', 'ardr', 'NXT-9UC9-DKN4-PTTQ-9RQUH', '0', '1', '1509616002');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2064', '0', 'ardr', 'NXT-K82A-6RLS-HDAR-5ADXY', '0', '1', '1509616008');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2065', '0', 'ardr', 'NXT-88B9-RNYG-ZCT6-DF9WT', '0', '1', '1509616012');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2066', '0', 'ardr', 'NXT-AULJ-DLMF-4T2C-B22S6', '0', '1', '1509616016');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2067', '0', 'ardr', 'NXT-LFY5-N5AF-64RZ-HQFSV', '0', '1', '1509616020');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2068', '0', 'ardr', 'NXT-EVQD-F9R3-KJ9Q-BE4SA', '0', '1', '1509616024');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2069', '0', 'ardr', 'NXT-YZHJ-5DGG-BS3H-2E8EZ', '0', '1', '1509616030');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2070', '0', 'ardr', 'NXT-85UK-H74X-5MB9-75A5N', '0', '1', '1509616039');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2071', '0', 'ardr', 'NXT-J4W4-M7Y6-ZYBW-DH73N', '0', '1', '1509616043');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2072', '0', 'ardr', 'NXT-Q4N4-N3GF-CDMV-8DKW4', '0', '1', '1509616048');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2073', '0', 'ardr', 'NXT-PJBQ-R7W2-DWC5-3SQ5L', '0', '1', '1509616053');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2074', '0', 'ardr', 'NXT-BBEA-4BGF-R2WK-3MD25', '0', '1', '1509616062');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2075', '0', 'ardr', 'NXT-2GZ6-CH5T-T4S7-HGWGR', '0', '1', '1509616067');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2076', '0', 'ardr', 'NXT-2EAY-29C7-LN63-BXS6X', '0', '1', '1509616072');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2077', '0', 'ardr', 'NXT-X53Q-Q6UQ-6YYB-8TA8X', '0', '1', '1509616077');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2078', '0', 'ardr', 'NXT-8TXQ-BM9N-XBTC-B8ZE7', '0', '1', '1509616082');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2079', '0', 'ardr', 'NXT-UYZR-VMXJ-5E9E-43TZU', '0', '1', '1509616086');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2080', '0', 'ardr', 'NXT-AQ7M-4PQA-7GYC-EU554', '0', '1', '1509616091');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2081', '0', 'ardr', 'NXT-4ENC-689K-2VV7-AZSDW', '0', '1', '1509616095');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2082', '0', 'ardr', 'NXT-657P-G27F-LC5Y-DRR53', '0', '1', '1509616100');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2083', '0', 'ardr', 'NXT-YD9A-QQB5-2N4N-4K3NJ', '0', '1', '1509616104');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2084', '0', 'ardr', 'NXT-V2ZP-XWSW-A2VA-6VMNW', '0', '1', '1509616108');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2085', '0', 'ardr', 'NXT-ULXL-SKWE-ACEU-6F33H', '0', '1', '1509616113');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2086', '0', 'ardr', 'NXT-YZDE-YREJ-2M56-5L6NN', '0', '1', '1509616128');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2087', '0', 'ardr', 'NXT-2N29-FAQV-XW4W-FUTA3', '0', '1', '1509616149');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2088', '0', 'ardr', 'NXT-C7JA-WD6C-Q72U-4TTZY', '0', '1', '1509616175');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2089', '0', 'ardr', 'NXT-VC9S-U6LE-3A5S-C2UJT', '0', '1', '1509616998');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2090', '0', 'ardr', 'NXT-98CD-659P-UHUW-4LB7S', '0', '1', '1509617013');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2091', '0', 'ardr', 'NXT-KMKP-WMZF-RK6U-2C587', '0', '1', '1509617025');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2092', '0', 'ardr', 'NXT-B99K-PFRQ-7Z6B-822LM', '0', '1', '1509617040');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2093', '0', 'ardr', 'NXT-ALAE-5T9D-VS6H-44BQ5', '0', '1', '1509617078');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2094', '0', 'ardr', 'NXT-7X46-JNCU-SSSU-73W2F', '0', '1', '1509617090');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2095', '0', 'ardr', 'NXT-LBNF-ZDGD-UYJ6-AZA4P', '0', '1', '1509617103');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2096', '0', 'ardr', 'NXT-8Y7Q-Z79Q-S7AM-DKEXS', '0', '1', '1509617140');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2097', '0', 'ardr', 'NXT-KUYZ-SVAR-HVBS-A6Y75', '0', '1', '1509617155');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2098', '0', 'ardr', 'NXT-TZ2Y-LV9P-TN5X-8R7EE', '0', '1', '1509617174');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2099', '0', 'ardr', 'NXT-E6U5-MPG6-USES-5HGCT', '0', '1', '1509617182');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2100', '0', 'ardr', 'NXT-W3MM-D468-NEQM-B549Y', '0', '1', '1509617187');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2101', '0', 'ardr', 'NXT-YFAX-TKWV-R3AS-7NYMG', '0', '1', '1509617192');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2102', '0', 'ardr', 'NXT-BNHF-9LBR-V6MZ-7DJYW', '0', '1', '1509617197');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2103', '0', 'ardr', 'NXT-WM56-B9UK-SRCX-7S9L9', '0', '1', '1509617517');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2104', '0', 'ardr', 'NXT-H4W3-YD3J-869C-8FSTP', '0', '1', '1509617522');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2105', '0', 'ardr', 'NXT-F7LJ-6WJM-AX5L-AS94F', '0', '1', '1509617527');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2106', '0', 'ardr', 'NXT-F65K-Z5UP-X92V-9QTZX', '0', '1', '1509617532');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2107', '0', 'ardr', 'NXT-W28U-2ZXN-DQBA-5BL4J', '0', '1', '1509617538');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2108', '0', 'ardr', 'NXT-Q3SV-S6K2-ERKQ-GMEAG', '0', '1', '1509617543');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2109', '0', 'ardr', 'NXT-KEE3-ZBCL-6SZJ-4L2R5', '0', '1', '1509617548');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2110', '0', 'ardr', 'NXT-5QXS-YKYF-P9UC-C6LNN', '0', '1', '1509617554');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2111', '0', 'ardr', 'NXT-CV7F-XATW-6HD8-9JM9U', '0', '1', '1509617559');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2112', '0', 'ardr', 'NXT-YGH3-RVXS-Z6KJ-E66YV', '0', '1', '1509617564');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2113', '0', 'ardr', 'NXT-B86G-X8RR-HS3F-G63SS', '0', '1', '1509617570');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2114', '0', 'ardr', 'NXT-WL8G-W9FB-8MJR-DSM9H', '0', '1', '1509617575');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2115', '0', 'ardr', 'NXT-DXP7-QH5X-UK2A-BZHLT', '0', '1', '1509617580');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2116', '0', 'ardr', 'NXT-CEV7-MGE3-EC8T-4CPPL', '0', '1', '1509617587');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2117', '0', 'ardr', 'NXT-CM62-RQCG-37B3-GT4EV', '0', '1', '1509617594');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2118', '0', 'ardr', 'NXT-7NZE-XKE4-4VD5-5TXPP', '0', '1', '1509617601');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2119', '0', 'ardr', 'NXT-V939-2B2X-RYDQ-FN8F9', '0', '1', '1509617645');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2120', '0', 'ardr', 'NXT-EUY7-JJ3H-Q7FN-G9ZV3', '0', '1', '1509617653');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2121', '0', 'ardr', 'NXT-3M5Q-HW8N-EN68-9NDAC', '0', '1', '1509617700');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2122', '0', 'ardr', 'NXT-YP3K-ECY3-UUS9-5RFM2', '0', '1', '1509617705');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2123', '0', 'ardr', 'NXT-6NH4-WU9D-F8UX-EUEZH', '0', '1', '1509617710');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2124', '0', 'ardr', 'NXT-R3U4-4QG4-A5EC-8BWF7', '0', '1', '1509617715');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2125', '0', 'ardr', 'NXT-LDFV-Z9TX-XAH2-DMMQP', '0', '1', '1509617719');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2126', '0', 'ardr', 'NXT-UX8V-5MRC-J9WC-3CYN4', '0', '1', '1509617725');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2127', '0', 'ardr', 'NXT-V9EP-PPFK-YL7B-7URJA', '0', '1', '1509617732');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2128', '0', 'ardr', 'NXT-KBJU-B8N7-PRDC-3ZSPV', '0', '1', '1509617737');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2129', '0', 'ardr', 'NXT-2BHZ-W9LC-4JJ7-ENN8L', '0', '1', '1509617743');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2130', '0', 'ardr', 'NXT-L7EG-KCLU-T773-6BQ7C', '0', '1', '1509617749');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2131', '0', 'ardr', 'NXT-T5TH-X5R2-BZSQ-7JEHG', '0', '1', '1509617754');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2132', '0', 'ardr', 'NXT-52EU-U4G4-YTCX-CMSAS', '0', '1', '1509617760');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2133', '0', 'ardr', 'NXT-4LN9-HDSC-BCA6-2VNZT', '0', '1', '1509617768');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2134', '0', 'ardr', 'NXT-5X4L-GUE6-U3EF-AGQ4T', '0', '1', '1509617812');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2135', '0', 'ardr', 'NXT-GCZX-U5D9-5F7C-H548F', '0', '1', '1509617819');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2136', '0', 'ardr', 'NXT-9BPC-BJV5-GKS8-DNKMN', '0', '1', '1509617824');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2137', '0', 'ardr', 'NXT-BR8A-VUZ9-3RMP-4VBGC', '0', '1', '1509617829');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2138', '0', 'ardr', 'NXT-VU2R-J8A3-QNXQ-3AQU7', '0', '1', '1509617834');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2139', '0', 'ardr', 'NXT-U2DL-SYEC-6SXP-8R9H7', '0', '1', '1509617852');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2140', '0', 'ardr', 'NXT-YRXM-F235-2GH3-7XVZH', '0', '1', '1509617871');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2141', '0', 'ardr', 'NXT-ER8X-8YJQ-86MP-GN57R', '0', '1', '1509617878');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2142', '0', 'ardr', 'NXT-2V8A-LH9M-X7WH-6D3UL', '0', '1', '1509617888');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2143', '0', 'ardr', 'NXT-WF85-67HD-85W2-8PE9R', '0', '1', '1509617892');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2144', '0', 'ardr', 'NXT-Q7ZE-NVJU-LYUN-7PQ33', '0', '1', '1509617898');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2145', '0', 'ardr', 'NXT-TMP2-SLWH-9QGB-3GPAL', '0', '1', '1509617909');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2146', '0', 'ardr', 'NXT-2JEB-XVV2-FT4N-9X9T9', '0', '1', '1509617917');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2147', '0', 'ardr', 'NXT-ZUTN-FSDK-BM6S-4A4TJ', '0', '1', '1509617922');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2148', '0', 'ardr', 'NXT-SU8E-694P-XN3Y-8FSJJ', '0', '1', '1509617927');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2149', '0', 'ardr', 'NXT-7ECR-NQ6J-JJ9Z-98MUF', '0', '1', '1509617931');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2150', '0', 'ardr', 'NXT-LAZB-DVR6-8WHS-87QFV', '0', '1', '1509617937');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2151', '0', 'ardr', 'NXT-YHYU-GMPD-8SH2-6Z9RQ', '0', '1', '1509617942');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2152', '0', 'ardr', 'NXT-FPVB-DY2U-F726-5AS6B', '0', '1', '1509617952');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2153', '0', 'ardr', 'NXT-NGAH-MX9W-D4V5-4XFDL', '0', '1', '1509617958');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2154', '0', 'ardr', 'NXT-S8HZ-UGVT-JMPR-HKP9Q', '0', '1', '1509617971');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2155', '0', 'ardr', 'NXT-QZ22-DWWG-F6KH-834JW', '0', '1', '1509617984');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2156', '0', 'ardr', 'NXT-AA28-T66A-Q8E3-7FD72', '0', '1', '1509618003');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2157', '0', 'ardr', 'NXT-YT6Y-F8UT-QLDT-8NXJB', '0', '1', '1509618008');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2158', '0', 'ardr', 'NXT-YZ4Q-HXYV-WH5V-63V2R', '0', '1', '1509618016');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2159', '0', 'ardr', 'NXT-VNQB-SJLJ-WBP3-FSSNL', '0', '1', '1509618022');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2160', '0', 'ardr', 'NXT-7NTS-6KW8-RFGZ-EFECS', '0', '1', '1509618026');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2161', '0', 'ardr', 'NXT-CXPA-MS27-SJBD-CG6M3', '0', '1', '1509618031');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2162', '0', 'ardr', 'NXT-LKMB-EQYC-YBEY-ARYSW', '0', '1', '1509618035');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2163', '0', 'ardr', 'NXT-RUN4-M7ND-7UX5-DPL8X', '0', '1', '1509618040');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2164', '0', 'ardr', 'NXT-JVM5-V3FQ-QMZL-4RYH4', '0', '1', '1509618056');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2165', '0', 'ardr', 'NXT-7ZJM-NHYN-TB2B-HG3XC', '0', '1', '1509618061');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2166', '0', 'ardr', 'NXT-7RP7-DDP7-QY5S-GKYAK', '0', '1', '1509618074');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2167', '0', 'ardr', 'NXT-9D3A-3BBF-T9CD-4X95A', '0', '1', '1509618083');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2168', '0', 'ardr', 'NXT-HB7V-YQDX-C2KY-6M9XJ', '0', '1', '1509618093');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2169', '0', 'ardr', 'NXT-HCGC-2KP6-96FF-4KYNF', '0', '1', '1509618100');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2170', '0', 'ardr', 'NXT-4KD8-FWBM-6DAS-7PDJ3', '0', '1', '1509618105');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2171', '0', 'ardr', 'NXT-BGPB-XKUX-JCFS-7PUC8', '0', '1', '1509618111');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2172', '0', 'ardr', 'NXT-YARH-CR9W-R8P2-8S6EN', '0', '1', '1509618115');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2173', '0', 'ardr', 'NXT-WWTD-8HCK-4DBJ-43XXZ', '0', '1', '1509618120');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2174', '0', 'ardr', 'NXT-VHD3-5DCN-KCY3-7R7AR', '0', '1', '1509618124');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2175', '0', 'ardr', 'NXT-YWPX-D9J4-9K2C-HQ4UT', '0', '1', '1509618130');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2176', '0', 'ardr', 'NXT-UY5B-6J8P-NZ4F-ES9L5', '0', '1', '1509618135');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2177', '0', 'ardr', 'NXT-TF4U-FY2V-DQAV-46949', '0', '1', '1509618144');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2178', '0', 'ardr', 'NXT-U9WC-953Q-6N8B-D47VW', '0', '1', '1509618161');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2179', '0', 'ardr', 'NXT-GUP6-6E2T-GZJW-FHNFV', '0', '1', '1509618173');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2180', '0', 'ardr', 'NXT-DZ5A-FYLB-3TT4-H8JCB', '0', '1', '1509618181');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2181', '0', 'ardr', 'NXT-U63Z-8MQG-RD8Y-H8KXY', '0', '1', '1509618186');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2182', '0', 'ardr', 'NXT-2SVD-P2KQ-JEJD-8VYNR', '0', '1', '1509618190');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2183', '0', 'ardr', 'NXT-FFDF-RFA3-WXTD-DB543', '0', '1', '1509618194');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2184', '0', 'ardr', 'NXT-UH5U-5R6S-82H2-CVDAW', '0', '1', '1509618200');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2185', '0', 'ardr', 'NXT-A6FU-WYNW-B258-FYALS', '0', '1', '1509618205');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2186', '0', 'ardr', 'NXT-WKHT-7PEY-XA9M-DQ3KR', '0', '1', '1509618208');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2187', '0', 'ardr', 'NXT-6FD6-SF7N-XHLT-5LXC6', '0', '1', '1509618212');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2188', '0', 'ardr', 'NXT-7C9Y-DZQD-7G42-9W33C', '0', '1', '1509618216');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2189', '0', 'ardr', 'NXT-95MF-2MWV-CXKV-G6JW8', '0', '1', '1509618221');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2190', '0', 'ardr', 'NXT-NTEX-2DSH-Y48L-AJ2DN', '0', '1', '1509618226');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2191', '0', 'ardr', 'NXT-4FQZ-WMLE-6XWT-2GYHE', '0', '1', '1509618231');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2192', '0', 'ardr', 'NXT-RUJV-2VEA-UK8X-5U4BV', '0', '1', '1509618235');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2193', '0', 'ardr', 'NXT-RMHG-3JRH-VXED-46YWV', '0', '1', '1509618239');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2194', '0', 'ardr', 'NXT-UNW3-EBGH-BQZM-7HQGE', '0', '1', '1509618242');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2195', '0', 'ardr', 'NXT-V9J3-RR4A-L6RX-ABADY', '0', '1', '1509618247');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2196', '0', 'ardr', 'NXT-CQ7E-5VPN-HFPK-AELTG', '0', '1', '1509618250');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2197', '0', 'ardr', 'NXT-SW2C-YD3X-W4TM-6AJRU', '0', '1', '1509618255');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2198', '0', 'ardr', 'NXT-969B-3LAW-BZR7-DNZZ5', '0', '1', '1509618261');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2199', '0', 'ardr', 'NXT-MR2W-778Z-2CZZ-CJ4M5', '0', '1', '1509618268');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2200', '0', 'ardr', 'NXT-6GQR-ZFTK-YJXS-8WNS4', '0', '1', '1509618274');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2201', '0', 'ardr', 'NXT-BUGD-MEWV-43VZ-9EUWE', '0', '1', '1509618280');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2202', '0', 'ardr', 'NXT-ZNS8-JFFG-CNTS-FR7WM', '0', '1', '1509618284');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2212', '0', 'qwe', 'adfafdsfafds', '0', '1', '1509985600');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2213', '0', 'qwe', 'ccddffdfdsfsfsf', '0', '1', '1509985622');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2214', '0', 'qwe', 'adsadfadsafdsafdfasfsa', '0', '1', '1509985629');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2215', '0', 'qwe', 'asdffsafeeedd', '0', '1', '1509985636');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2224', '0', 'jjb', 'cxzaqaqwsxd', '0', '1', '1510046438');
INSERT INTO `ecshecom_user_qianbao_address` VALUES ('2225', '0', 'jjb', 'fvdfdssded', '0', '1', '1510046445');

-- ----------------------------
-- Table structure for ecshecom_user_shopaddr
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_user_shopaddr`;
CREATE TABLE `ecshecom_user_shopaddr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(200) NOT NULL DEFAULT '0',
  `moble` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecshecom_user_shopaddr
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_version
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_version`;
CREATE TABLE `ecshecom_version` (
  `name` varchar(50) NOT NULL COMMENT '版本号',
  `number` int(11) NOT NULL COMMENT '序列号，一般用日期数字标示',
  `title` varchar(50) NOT NULL COMMENT '版本名',
  `create_time` int(11) NOT NULL COMMENT '发布时间',
  `update_time` int(11) NOT NULL COMMENT '更新的时间',
  `log` text NOT NULL COMMENT '更新日志',
  `url` varchar(150) NOT NULL COMMENT '链接到的远程文章',
  `is_current` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `id` (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自动更新表';

-- ----------------------------
-- Records of ecshecom_version
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_version_game
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_version_game`;
CREATE TABLE `ecshecom_version_game` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `gongsi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `shuoming` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `class` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `number` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='应用管理表';

-- ----------------------------
-- Records of ecshecom_version_game
-- ----------------------------
INSERT INTO `ecshecom_version_game` VALUES ('1', 'QQ502182299', '网上商城', 'shop', 'shop', '网上商城', '1');

-- ----------------------------
-- Table structure for ecshecom_vote
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_vote`;
CREATE TABLE `ecshecom_vote` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` int(20) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_vote
-- ----------------------------

-- ----------------------------
-- Table structure for ecshecom_vote_type
-- ----------------------------
DROP TABLE IF EXISTS `ecshecom_vote_type`;
CREATE TABLE `ecshecom_vote_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `coinname` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `zhichi` bigint(20) unsigned DEFAULT '0',
  `fandui` bigint(20) unsigned DEFAULT '0',
  `zongji` bigint(20) unsigned DEFAULT '0',
  `bili` float DEFAULT '0',
  `votecoin` varchar(50) NOT NULL,
  `assumnum` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ecshecom_vote_type
-- ----------------------------
