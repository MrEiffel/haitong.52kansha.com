-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-07-27 18:22:30
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web1010`
--

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_admin`
--

CREATE TABLE `ecshecom_admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` char(16) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `moble` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `last_login_time` int(11) UNSIGNED NOT NULL,
  `last_login_ip` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_admin`
--

INSERT INTO `ecshecom_admin` (`id`, `email`, `username`, `nickname`, `moble`, `password`, `sort`, `addtime`, `last_login_time`, `last_login_ip`, `endtime`, `status`) VALUES
(1, '502182299@qq.com', 'admin', '海通网络', '13502182299', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_adver`
--

CREATE TABLE `ecshecom_adver` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(250) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告图片表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_adver`
--

INSERT INTO `ecshecom_adver` (`id`, `name`, `url`, `img`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(2, '', '/Issue/index', '5955a69a2949d.png', '', 1, 1475466565, 1475466565, 1),
(3, '', '/Issue/index', '594098c919bfc.png', '', 2, 1497369600, 1497369600, 1),
(5, '', '/Article/index/id/19.html', '5955ae8a6f9f3.jpg', '', 4, 1497456000, 1497456000, 1),
(6, '', '/Article/detail/id/46.html', '595601d338120.png', '', 6, 1497507691, 1497456000, 0),
(7, '', '/Article/index', '5956004670194.png', '', 3, 1497456000, 1497456000, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_appads`
--

CREATE TABLE `ecshecom_appads` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `content` varchar(256) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `block_id` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告图片表' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_appadsblock`
--

CREATE TABLE `ecshecom_appadsblock` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `content` varchar(256) NOT NULL,
  `rank` varchar(256) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `remain` varchar(255) DEFAULT '3',
  `type` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告图片表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_appadsblock`
--

INSERT INTO `ecshecom_appadsblock` (`id`, `name`, `content`, `rank`, `img`, `remain`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'wap广告', 'wap广告', '1', '/Upload/app/58eb489aa0fe6.jpg', '', '', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_appc`
--

CREATE TABLE `ecshecom_appc` (
  `id` int(11) NOT NULL,
  `web_name` varchar(64) DEFAULT NULL,
  `web_title` varchar(64) DEFAULT NULL,
  `web_icp` varchar(64) DEFAULT NULL,
  `index_img` varchar(256) DEFAULT NULL,
  `pay` varchar(256) DEFAULT NULL,
  `withdraw_notice` varchar(256) DEFAULT NULL,
  `charge_notice` varchar(256) DEFAULT NULL,
  `show_coin` varchar(255) DEFAULT NULL,
  `show_market` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_app_log`
--

CREATE TABLE `ecshecom_app_log` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_app_vip`
--

CREATE TABLE `ecshecom_app_vip` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `rule` text,
  `times` int(11) DEFAULT NULL,
  `price_num` varchar(255) DEFAULT NULL,
  `price_coin` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_app_vip`
--

INSERT INTO `ecshecom_app_vip` (`id`, `tag`, `name`, `rule`, `times`, `price_num`, `price_coin`, `status`, `addtime`) VALUES
(1, '1', 'VIP会员卡', '[{"id":"1","num":1000}]', 100, '100', '3', 1, 1476004810);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_app_vipuser`
--

CREATE TABLE `ecshecom_app_vipuser` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `vip_id` int(11) NOT NULL,
  `addtime` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_article`
--

CREATE TABLE `ecshecom_article` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `adminid` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hits` int(11) UNSIGNED NOT NULL,
  `footer` int(11) UNSIGNED NOT NULL,
  `index` int(11) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `ecshecom_article`
--

INSERT INTO `ecshecom_article` (`id`, `title`, `content`, `adminid`, `type`, `hits`, `footer`, `index`, `sort`, `addtime`, `endtime`, `status`, `img`) VALUES
(39, '比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因', '<p>\r\n	<img title="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图1" alt="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图1" src="https://pic.sosobtc.com/attachment/article/20170615/1497498976378289.png" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	金色财经讯——Jimmy Song是比特币研发者和区块链技术初创公司Paxos的主要设计师。 在这篇评论文章中，Song先生讨论了关于比特币扩容争论的话题。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图2" alt="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图2" src="https://pic.sosobtc.com/attachment/article/20170615/1497498985987566.png" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style="text-align:center;">\r\n	（区块链技术初创公司Paxos主要设计师Jimmy Song &nbsp;图片来源：金色财经）\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	政治笼罩着比特币，这是过去几年人们唯一想谈论的话题。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	Song先生之前写过，比特币行业就像政府的三个分支，研发者是立法部门，比特币矿工是行政部门，用户是司法部门。Song先生还写过关于比特币是如何通过共识来改变的，以及达成共识是存在较大困难的。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	在本文中，Song先生研究了解决当前比特币政治僵局的另一条途径，以及如何帮助开发人员、矿工和用户。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>当前矿工的状况</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	在比特币挖矿机的制造商中，很明显Bitmain是最大且最成功的。他们通过芯片制造出大约50 - 75%的比特币网络哈希算力，而其他制造商在价格上也很难与他们竞争。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	随着比特币经历了为期3年的熊市，许多比特币挖矿公司宣告破产，因为经济从疯狂的盈利转变为难以生存。许多比特币挖矿机往往有缺陷，以及无法及时交付。然而Bitmain不仅存活了下来，还获得了蓬勃发展，并成功地夺取了巨大的市场份额。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	不管你对这家公司有什么看法，Bitmain就是最具影响力的比特币挖矿机制造商。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图3" alt="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图3" src="https://pic.sosobtc.com/attachment/article/20170615/1497499013777942.png" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>当前研发者状况</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	众所周知，中本聪(Satoshi Nakamoto)在2009年创造了第一个比特币客户，并将其发布给世界。许多人对所谓的“参考客户端”和比特币核心做出贡献，当时有数百个开发者为开源软件贡献了力量。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	而较少人知道的是，有许多不同的尝试去创建不同的比特币客户端，例如Obelisk,btc - d,Toshi和bcoin，他们只是一些试图从零开始创造新客户的尝试。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	比特币无限，比特币XT和最新的Segwit2x，虽然每种方案都取得了不同程度的成功，但大多数网络仍然运行比特币核心(大多数估计都超过90%)。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	为什么比特币核心（Bitcoin Core）是最受欢迎的?因为有些历史因素在里边。另外，人们担心应用其他团队的扩容方案会最终导致资金分裂，以此为了避免风险需要继续采用比特币核心团队的产品。同时，比特币核心拥有最大的开发人员社区和最严格的开发流程。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	不管你对比特币核心的看法是什么，该团队仍继续在网络上主导客户。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图4" alt="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图4" src="https://pic.sosobtc.com/attachment/article/20170615/1497499033292714.png" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>力量对比</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	在2014年之前，矿商和研发者通常都相处得很好，但随着规模的扩大，情况开始发生了变化。现在已经达到了这样一个情况：扩容冲突通常被视为来自Bitmain和Bitcoin Core。不管怎样，我们有两个处于冲突中的主导者。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	比特币矿工们很沮丧，因为他们多年来一直在要求更大的区块容量。从Bitmain的角度来看，没有一个开发人员对任何类型的硬分叉感兴趣。而当他们询问进展时，通常得到的回答是“遵循比特币改进方案过程”以进行“硬分叉”。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	开发人员感到沮丧是因为他们多年来一直在要求激活隔离见证Segwit。从比特币核心的角度来看，这些矿商似乎没有充分的理由阻碍良好技术的实施。当他们要求矿工说出一个拒绝的原因时，通常得到的回答是“我们想要更大的区块”到“你在阻塞比特币网络”。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图5" alt="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图5" src="https://pic.sosobtc.com/attachment/article/20170615/1497499048574144.png" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>共识和控制</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	当你想到需要改变比特币的实际共识过程时，很明显，双方都希望得到比目前更多的控制权。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	随着比特币变得越来越有价值，这两个集团都希望在长期内有更多的发言权。现在，一个小小的让步或先例将会引发一些后果。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	比特币核心可能正在考虑实施一个强硬的硬分叉，这将为更多的人树立一个先例，也可能更危险。Bitmain可能会认为，在不做出让步的情况下，在一个软分叉上合作，将会为被控制的行为树立一个先例，并在以后被忽视。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	在这种情况下，比特币可以被视为一种绕过开发者的方式。与此类似，BIP148和其他UASF提案也是解决矿工问题的一种方式。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图6" alt="比特币扩容争论的现状分析 争夺更多控制权或许才是根本原因_sosobtc_图6" src="https://pic.sosobtc.com/attachment/article/20170615/1497499071561591.png" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	这使扩容陷入目前的僵局。双方都想要控制，但考虑到比特币是一种基于共识的系统，没有任何方法可以让每一方都拥有它想要的东西，并将比特币保持在一个单一的链上。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	解决这个问题的方法不是试图解决技术问题，而是通过解决更深层次的控制问题。问题不在于“我们怎么能衡量比特币?”而是“我们怎样才能让每一个人都有更多的控制权呢?”\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>天真的解决方案</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	最明显的方式是将比特币一分为二，或者称之为“所罗门解决方案”。用户仍然可以使用比特币，每一方都可以随心所欲地做任何事情。但一边必须找到新的矿工(甚至是一个新的工作岗位)，另一边则需要寻找新的开发人员。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	虽然这有一定的吸引力，但将比特币一分为二，有可能造成重大的连带损害。实际上，大多数有争议的硬分叉都有这样一个可能的终点，因为双方都有能力使用硬分叉。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	但如果仍然僵持下去，比特币很可能就要走向终结。\r\n</p>', 1, '币友说币', 0, 1, 1, 0, 1497524753, 1497456000, 1, '594269f1754d4.png'),
(49, '纽约州金融部年度报告重申管理比特币业务的重要性', '<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	纽约州金融服务部的年度报告重申了管理数字货币业务的重要性。该报告发布于6月15日，它总结了关于其调控比特币公司的Bitlicense各部门的活动。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170626/1498444705960010.png" title="1498444705960010.png" alt="头条1_看图王.png" /> \r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	报告表示，由于交易速度和匿名资金的流动，比特币为监管机构提供了新的挑战。该报告说，“区块链技术为行业和监管机构提供了机遇和挑战。建立商业创新平台有助于提高金融交易，记录保存和清算的效率。”\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	该报告继续说，这项技术存在太多的风险，因为监管可以简单地被人或组织所绕过。交易速度和相对匿名性往往会阻碍监督和控制。纽约金融服务部表示，他们希望保护客户和投资者免受欺诈和其他非法行为的侵害。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	“如果不遵守旨在保障消费者的法规和监督，以及防止洗钱和资助非法活动，那么使用更便捷的支付方式，以及匿名进行资金流动是危险的。”\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	该监管机构已经向几家公司提出申请许可证的管理规定，这在报告中提到。现在已确定Gemini Trust Company LLC可以交易以太坊。最近，它又批准了Ripple Labs公司的分公司XRP II LLC。总共有5家公司在Bitlicense注册，目前正在通过该机构的直接监督定期进行检查和考核。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	监管机构最初在本·劳斯基的帮助下于2015年启动了Bitlicense。该文件是44页，它概述了所有需要进行比特币交易的企业的必要条件。到目前为止，企业必须提交管理和使用比特币的申请。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170626/1498444691118415.png" title="1498444691118415.png" alt="头条2_看图王.png" /> \r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<span style="font-family:楷体, 楷体_GB2312, SimKai;">本·劳斯基</span> \r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	他提到有多少企业批评许可要求。他说：“高管和投资者一直非常担心Bitlicense会伤害纽约的创新和创业业务。法案通过KYC和AML规则，以及给予国家私人信息的相当广泛的指导方针，令许多公司对此不满意。”\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	比特币企业高管的警告响了起来。当Bitlicense成立时，它引起了几家受欢迎的比特币公司停止在该州的服务。他们中的许多人对Bitlicense表示怀疑，认为法案对其服务客户群的能力产生了不利影响。这些撤出纽约州的比特币公司包括Xapo，Shapeshift，Poloniex，Bitfinex和Kraken等。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	Kraken对Bitlicense的回应最为尖锐。该公司表示：“今天Kraken停止服务纽约居民。令人遗憾的是，可恶的Bitlicense已经醒了。这是一个如此恶劣的生物，如此残酷，甚至连海妖克拉肯都没有勇气或力量去面对它那又大又尖的牙齿。它至少有40人，兄弟。”\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170626/1498444672812002.png" title="1498444672812002.png" alt="头条3_看图王.png" /> \r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	来源： 金色财经 \r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	作者： 艾利克斯在币圈儿\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	原文链接：http://www.jinse.com/news/bitcoin/35599.html\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	免责声明：本文为转载，与海通网络无关，仅为传播消息之用，不代表<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>观点，不构成<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>投资建议，炒币有风险，投资需谨慎！！\r\n</p>', 1, 'bbb', 0, 0, 1, 0, 1497596108, 1497542400, 1, ''),
(50, '[XZC]伊朗数字交易平台将零币纳入3大交易币种之一', '<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	当2017年06月17日伊朗政府将就通过数字资产的拟议管条例展开探讨时，仅仅过了10天，06月27日伊朗第一个数字资产交易平台（WWW.COINEX.IR）就上线交易数字资产了；当零币（XZC）的国际国内价格还只有80多元时，该交易平台就100元高溢价收购小零币（XZC）。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	 \r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	我们不得不佩服他们善于抓住世界潮流的决策力与执行力；该交易平台在选择比特币、以太坊以及零币（XZC）作为其平台可交易虚拟数字资产，我们对此感到十分喜悦，当然，这与零币（XZC）的独特技术优势是密不可分的。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	 \r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	零币（XZC）通过零币协议(zerocoin protocol)来保障账务隐私，使用零知识证明确保了交易双方的相关地址信息免遭泄露。它的参数和比特币一样，总货币供应量2100万枚，截至2017年06月，零币（XZC）已经挖出才大约240万个，并已在Bittrex、Bitsquare、Cryptopia、Nova Exchange等交易平台上线交易。相比于早期实现匿名功能的混币技术和环签技术，零知识证明的零币协议解决了前二者的不足，完全切断了铸造所得的币和赎回的币之间的联系。当你铸造出一个零币的时候，同时你也销毁了一个零币，也会生成一份证明证实了你烧毁了一个零币。这份证明只是证实了你烧毁了一个零币，却不用证明你烧毁了具体哪一个。然后通过使用这个证明，你就可以赎回一个完全没有任何交易历史记录的崭新的零币。同样的，也没有交易图表供以分析，相比于其它匿名方法你的隐私匿名性将得到数倍的提升。且零币协议自从由来自John Hopkins大学的Miers，Christina Garman，Matthew Green，Aviel D. Rubin在2013年一同起草发表后，在过去几年里面，这篇论文成为了学术引用最多的一篇文章，共计多达200余次的学术引用，Zcoin从理论基础上牢牢地扎实了根底。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	 \r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	当下，一些国家在经济层面因为一些原因陷入困局小零币（XZC）独特的技术优势为其摆脱相关困境提供了探索。同时，友们也愿意相信将来会有越来越多的国家、机构、个人等留意到小零币（XZC）独特的技术优势。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	免责声明：本文来自相关竞争币热心用户，与海通网络无关，仅为传播消息之用，不代表<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>观点，不构成<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>资建议，炒币有风险，投资需谨慎！！\r\n</p>\r\n<br />\r\n<br />\r\n<div style="margin:0px;padding:0px;border:0px;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;color:#990000;font-size:13px;background-color:#F9F9F9;">\r\n	声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n</div>', 1, 'bbb', 0, 0, 1, 0, 1497669354, 1497628800, 1, ''),
(51, '[XRP]Ripple结算系统已被瑞士银行等知名机构使用', '<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	目前，国际银行传统转帐结算业务需要花费大量的资金和时间来完成付款。因此Ripple实验室将自身的定位设定为帮助银行和大型金融机构节省数十亿美元的费用，并大幅度的减少结算所需要的时长。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170623/1498188021843142.png" title="1498188021843142.png" alt="xrp1_看图王.png" />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	Ripple结算系统已被诸如桑坦德，瑞士银行和联合信贷等知名机构使用。该公司声称提供“安全、即时和几乎免费的任何规模的全球金融交易，无需退款”。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170623/1498188032518892.png" title="1498188032518892.png" alt="xrp2_看图王.png" />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<span style="font-family:楷体, 楷体_GB2312, SimKai;">Ripple实验室CTO史蒂凡·托马斯</span>\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	Ripple实验室CTO史蒂凡·托马斯（Stefan Thomas）认为，由于监管障碍，全球有26万亿美元被抑制，银行合作伙伴之间的透明度不够，导致缺乏信任。Ripple结算协议旨在改善现有的金融基础设施。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	托马斯在播客中解释说：“与银行合作，改善银行用于跨境支付的金融基础设施。”\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	“我们帮助银行改善用户体验，并降低成本。”\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	Ripple认为他们的结算系统可以为Swift和ACH转移等国际银行业务协议提供更有效的替代方案。在过去一年里，人们对Ripple的银行间交易一直很感兴趣，且协议的代币价格在过去五个月里大幅增长。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	托马斯认为他公司的瑞波币XRP和IOU基础架构可以在全球释放数十亿美元，并最终改变传统的结算系统。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	来源： 金色财经 \r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	作者： 洛比特奇霍\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	原文链接：http://www.jinse.com/news/bitcoin/35860.html\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	免责声明：本文为转载，与海通网络无关，仅为传播消息之用，不代表<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>观点，不构成<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>投资建议，炒币有风险，投资需谨慎！！\r\n</p>\r\n<br />\r\n<br />\r\n<div style="margin:0px;padding:0px;border:0px;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;color:#990000;font-size:13px;background-color:#F9F9F9;">\r\n	声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n</div>', 1, 'bbb', 0, 0, 1, 0, 1497755855, 1497715200, 1, ''),
(48, '评论：segwit2X箭在弦上，是问题的终结还是昙花一现', '<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	比特币扩容一直是币圈人关注的重点，近期关于扩容的争端似乎朝着一个有趣的方向发展，SegWit2x支持为84.9％，SegWit超过42％。显而易见的共识在现阶段已经不再相关了。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	鉴于对Segwit2x压倒性的支持，很明显矿工对Bitcoin Core开发团队提出用隔离见证（Segwit）来解决交易延展性（transaction malleability）的想法并不反对。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170629/1498729786825078.png" title="1498729786825078.png" alt="1.png" />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	Segwit2x称为纽约共识是由Barry Silbert领导旗下的数字货币集团（DCG）和包括大型矿池运营商比特大陆（Bitmian）在内的其它57家公司共同签署的一项扩容共识方案，但就目前情况来看，依旧有不少投资人和矿工表示担忧，技术团队似乎一直在闭门造车，这种工作方式其根本上违背了比特币去中心化的特性——没有个人、团体或企业能够控制比特币的价值。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	因此Segwit2x与其他扩容解决方案一样受到了很多质疑和批评，但不论如何，如今SegWit2x目前获得的算力支持已经足以保证Segwit2x能够在比特币网络实施，而其是否能够彻底解决比特币扩容问题，比特币开发者Jimmy Song指出：这场扩容战争仍未结束。更大的和更具争议的2MB硬分叉问题仍旧没有解决。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170629/1498729721159319.png" title="1498729721159319.png" alt="2.png" />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<span style="font-size:18px;color:#366092;"><strong>1、Segwit2x将有遗留问题？</strong></span>\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	对于矿工来说，一部分人反对Segwit2x并不是技术层面上的问题，而是在于bitcoin core的发展路线。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	迄今为止，Bitcoin Core、整个行业以及社区对扩容路线的态度都很直接：通过激活隔离见证来减少交易延展性，从而加强安全措施，另外还要为硬件钱包提供更好的基础设施，并且为第二层解决方案搭建应用平台，旨在实现长期的扩容能力。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	矿工们反对Bitcoin Core将隔离见证作为扩容方案的计划原因是，大部分矿工认为，即使隔离见证激活之后能够用新的交易格式稍稍提升区块容量，那还是远远无法满足比特币网络发展的需求。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	对于投资人而言，这会造成利益冲突，因为开发人员受到激励会阻碍在增加区块容量方面上所做尝试，从而人为地扩大对闪电网络等侧链解决方案的需求，最重要的是这违背了比特币去中心化的特性——没有个人、团体或企业能够控制比特币的价值。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	因此，虽然矿工让步，使Segwit2x得到超过80%的激活支持率，但SegWit2x留下的问题，似乎比解决的问题还要多。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170629/1498729675762823.png" title="1498729675762823.png" alt="3.png" />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<span style="font-size:18px;color:#366092;"><strong>2、Segwit2x的支持者</strong></span>\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	不论一小部分的矿工和投资人如何担忧，Segwit2x已经达到激活的支持率，并且确定在7月底激活\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	对于SegWit2x达到激活门槛，比特币社区就像获得了巨大的宽慰。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	比特币先行者，比特币基金会创始人Charlie Shrem表示：“我们将获得隔离见证（SegWit）#Bitcoin。”\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170629/1498729641136432.png" title="1498729641136432.png" alt="4.png" />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	因此不管支持与反对的阵营如何拉锯战，无数比特币爱好者期待着8月1日那天，通过用户激活的软叉来看到分离见证的激活，包括中国采矿池也大力支持SegWit2x，并计划在7月31日前激活，大部分中国采矿池认为，SegWit2x可能与8月1日激活的UASF兼容，即使在SegWit2x被激活之后，没有人知道这些池是否会拥抱UASF，但这不妨碍比特币爱好者对SegWit2x的信心。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	同样对SegWit2x有信心的包括一些大型比特币矿池都已经信号支持SegWit2x，包括蚂蚁矿池，BitFury和鱼池，Bitcoin.com和ViaBTC也加入了支持队伍。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170629/1498729610190639.png" title="1498729610190639.png" alt="5.png" />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<span style="font-size:18px;color:#366092;"><strong>3、SegWit2x激活将发生什么？</strong></span>\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	SegWit2x解决方案最初由Rootstock首席科学家Sergio Demian Lerner提出，由比特币开发者Jeff Garzik领导的SegWit2x研究团队来进行开发，目前SegWit2x的alpha代码已经发布。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	最近的一份Reddit公开服务公告（PSA）详细介绍了SegWit2x的实际运行原理，本质上讲，区块目前实际大小只有1MB，但如果更多的算力继续支持SegWit2x并在336个区块期间有80%的区块支持SegWit2x，区块实际大小可能达到4MB，到时预计每个区块能够处理8000到10000笔交易，这大大解决了比特币交易积压问题。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	因此不管SegWit2x遭到多少质疑，又将留下多少遗留问题，就目前而言SegWit2x似乎是解决现今问题的最好途径。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	正如比特币开发者Jimmy Song说过：“如果你希望避免比特币出现永久性分裂，80%算力支持是一个积极的进展。因为这似乎看起来比特币区块链将不会分裂。”\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	原文链接：https://www.51szzc.com/service/article.html?id=276\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	作者：51数字资产\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	免责声明：本文为转载，与海通网络无关，仅为传播消息之用，不代表<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;"><span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span></span>观点，不构成<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>投资建议，炒币有风险，投资需谨慎！！\r\n</p>\r\n<br />', 1, 'bbb', 0, 0, 1, 0, 1497496231, 1497456000, 1, '5955f5b97ea46.png'),
(52, '乌克兰政府将于十月开始就区块链土地登记展开试验', '<div class="bk30 hr" style="margin:0px;padding:0px;border:0px;color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;background:url(http://www.btc38.com/statics/images/uline.gif) 50% 50% repeat-x #F9F9F9;">\r\n</div>\r\n<div style="margin:0px;padding:0px;border:0px;color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<p>\r\n		<img src="http://www.btc38.com/ueditor/php/upload/image/20170627/1498545073730662.jpg" title="1498545073730662.jpg" alt="乌克兰.jpg" />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		乌克兰政府透露计划进行一个区块链土地登记系统的试验。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		在上周三的政府会议上，乌克兰农业政策与粮食部第一副部长Maksym Martyniuk宣布了这一试点项目，计划于十月份开始。据当地媒体报道，该计划将为乌克兰国家土地登记局引入区块链技术，并将国家土地租赁拍卖数字化。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		不久前，该国总理Volodymyr Groysman就承诺为所有国有土地租赁进行拍卖——旨在增加竞争，推动当地经济，减少非法活动。他当时提出警告，可能会对不遵守政策的行为进行“刑事处罚”，强调：\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		“所有土地租赁必须通过拍卖进行。”\r\n	</p>\r\n	<p>\r\n		约有71％的乌克兰领土（4270万公顷）属于农用地。其中超过一千万公顷归国家所有，占农用地总面积的25％左右。\r\n	</p>\r\n	<p>\r\n		根据由世界银行资助，与乌克兰农业政策部，国家土地登记局和多个国家当局合作推出的2015年的一个研究项目，乌克兰目前的土地管理状况令人担忧：\r\n	</p>\r\n	<p>\r\n		公共土地注册远低于私人土地（24％ vs 71％），降低了透明度，引发非法活动。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		农用地租金水平是欧洲最低的国家之一（2015年约37美元），影响农村土地所有者的收入，导致土地资源利用率低下。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		土地市场非常萧条，主要由于缺乏金融工具和使用土地作为抵押品的复杂性。将产权转让给农用地的主要途径是租赁，存在很大的“灰色市场”。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		土地纳税人（约730万）远远少于私人土地所有者和土地使用者。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		乌克兰并不是第一个考虑在土地登记处理中使用区块链的国家。今年三月，瑞典土地登记机构开展了一项记录产权交易的试验。而在五月份，英国土地登记局则详细说明了所谓的“Digital Street”计划，该计划把区块链技术列为基础技术之一。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		作者：Chuan Tian\r\n	</p>\r\n	<p>\r\n		翻译：Ina\r\n	</p>\r\n	<p>\r\n		来源：CoinDesk（铅笔）\r\n	</p>\r\n	<p>\r\n		原文链接：http://chainb.com/?P=Cont&id=4933\r\n	</p>\r\n	<p>\r\n		免责声明：本文为转载，与海通网络无关，仅为传播消息之用，不代表<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>观点，不构成<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>投资建议，炒币有风险，投资需谨慎！！\r\n	</p>\r\n<br />\r\n	<div style="margin:0px;padding:0px;border:0px;color:#990000;font-size:13px;">\r\n		声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n	</div>\r\n</div>', 1, 'bbb', 0, 0, 1, 0, 1497928770, 1497888000, 1, ''),
(53, '食品工业企业区块链联盟成立 区块链应用再次取得突破', '<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	2017年6月23日，济南迎来中国食品工业协会盛事——第三届中国食品流通安全暨冷链物流发展峰会在济南喜来登酒店盛大开幕，由紫云股份、双汇物流、思念食品、中国食品集团、正大(中国)投资有限公司、郑州千味央厨等二十家企业发起的中国食品工业区块链联盟正式成立，这是行业的一小步，食品安全的一大步，这标志着区块链应用再现行业突破，中国食品安全保障再升级!\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170627/1498549036623241.jpg" title="1498549036623241.jpg" alt="食品1.jpg" />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	自2017年3月28日国家食药总局发布《关于食品生产经营这建立食品追溯体系的若干规定》，明确规定了食品生产企业、食品经营企业、餐饮企业建立食品追溯体系必须追溯的各种数据，尤其是明确规定食品运输信息必续进行追溯，同时明确要求食品追溯信息需要在技术上、规范上必须保证信息不得修改。新的政策严把了食品从农田到餐桌的每一道关，使中国食品安全进入“四个最严”的时代。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170627/1498549050665293.jpg" title="1498549050665293.jpg" alt="食品2.jpg" />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	作为对食品安全负有主体责任的中国食品工业企业，在新政策要求下如何应对政府监管趋严，一直是行业的痛点。中国食品工业协会深悉企业需求，特邀行业专家在会上对食品工业企业、食品冷链物流企业进行深入解读，破解企业困惑。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<img src="http://www.btc38.com/ueditor/php/upload/image/20170627/1498549060667059.jpg" title="1498549060667059.jpg" alt="食品3.jpg" />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	作为中国食品工业协会食品物流分会副会长、紫云股份董事长的罗建辉基于国家食药总局新的监管要求率先推出了基于区块链的食品追溯云服务平台，在尽可能不增加企业成本的前提下，通过云服务模式，结合紫云股份的无车承运人业务，采用区块链技术为食品工业企业提供新一代食品安全追溯服务，在业内率先实现了食品运输与贮藏过程信息的可追溯，企业的食品安全各种追溯信息实时写入区块链中，在技术上完美解决了追溯数据不可修改的问题，从而使食品工业企业的食品追溯体系能够满足政府监管部门的监管要求。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	“追溯，不能是为监管而追溯。”罗建辉进一步强调到，追溯一定要有公共服务，让消费者有便捷的途径来追溯所购买的食品，让食品追溯从原来的事后监督转变成为消费者日常消费的事前预防，这样就可以避免不符合质量要求的食品被食用，从而避免更多的食品安全事件发生，最大程度上保障公众的食品安全。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	紫云股份推出的基于区块链的微信小程序使消费者简单关注即可进行追溯，是消费者食品安全保障的不可或缺的小助手。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	“新政策落地，一定要考虑企业的利益。”罗建辉针对食品生产经营企业如何落实国家食药总局新的监管政策提出新思路，“国内很多食品工业企业一提到追溯就想着要增加投入，要增加成本，对食品追溯体系没有正确的认识。要知道现在食品生产乱象严重，大量的不合格食品在市场上通过低价驱逐良品，追溯体系建设实际上是彰显企业产品品质和食品安全的主体责任的重要手段，是能够更好保障自身市场的重要举措。”\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	在食品追溯的实践上，罗建辉率领紫云股份的团队创新地把食品追溯与企业的营销紧密结合起来，帮助企业通过食品追溯体系实现产品交付的服务化，使消费者在追溯产品同时能获取到关于该食品的食用或烹饪方法使消费者更好的享用高品质食品，增加消费者对企业产品的粘性，增加消费者对产品的复购率。此外紫云股份的食安宝追溯服务可以帮助企业获取大量的个人消费数据，使企业可以进行精准营销，提高经济效益。在与会企业看来，紫云股份的食品追溯服务完美地与企业产品营销服务结合在一起，在帮助企业解决食品安全问题同时，又解决了互联网时代的大数据精准营销问题，这样的平台才有生命力，才能把国家的监管政策落地。\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	“在国家食药总局新政策发布后，食品追溯服务这个市场就成为了刚需市场，市场规模达到千亿”。罗建辉很乐观地表示。面对千亿的市场蛋糕，紫云股份选择的是与行业共同分享，紫云股份计划在全国每个省找一家营业规模在5000万左右的第三方冷链物流公司合作，共同拓展食品追溯服务市场，为消费者严把农田到餐桌的每一道关，让消费者尽享安全美食!\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<br />\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	文章来源：网易新闻\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	原文链接：http://news.163.com/17/0627/13/CNULCMFI00014AEE.html\r\n</p>\r\n<p style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	免责声明：本文为转载，与海通网络无关，仅为传播消息之用，不代表<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>观点，不构成<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>投资建议，炒币有风险，投资需谨慎！！\r\n</p>\r\n<br />\r\n<br />\r\n<div style="margin:0px;padding:0px;border:0px;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;color:#990000;font-size:13px;background-color:#F9F9F9;">\r\n	声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n</div>', 1, 'bbb', 0, 1, 1, 0, 1498188169, 1498147200, 1, ''),
(54, '国际货币基金组织（IMF）总裁拉加德：分布式账本可凭借一些特有优势防范恐怖融资', '<div class="bk30 hr" style="margin:0px;padding:0px;border:0px;color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;background:url(http://www.btc38.com/statics/images/uline.gif) 50% 50% repeat-x #F9F9F9;">\r\n</div>\r\n<div style="margin:0px;padding:0px;border:0px;color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<p>\r\n		<img src="http://www.btc38.com/ueditor/php/upload/image/20170626/1498445381700120.png" title="1498445381700120.png" alt="人物_看图王.png" />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		国际货币基金组织（IMF）总裁针对数字货币和分布式账本技术（DLT）发表了新的评论。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		在6月22日的反洗钱金融行动特别工作组（FATF）全体会议上，克里斯蒂娜·拉加德广泛地谈到了IMF在打击洗钱和恐怖融资方面作出的努力，并指出，区块链创新虽然可以引发这些非法活动，但也能够防范这些问题。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		拉加德说道：“当然，金融科技是一把双刃剑，它可以用来促进和资助恐怖主义，比如通过虚拟货币的匿名特点，但也可以成为我们进一步防范恐怖融资的有力手段。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		虽然DLT是支撑数字货币的技术，但它也被形容为使金融体系能够更好地抵御攻击的技术，特别是应对使用电脑通过网络恐怖主义传播恐惧的行为。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		拉加德告诉与会者：\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		“这种技术不太容易受到单一故障的影响，并且被证明可以应对网络攻击，因为这种账本（交易记录）拥有多个副本。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		拉加德还强调了IMF本周发布的一项新的研究报告，其研究人员讨论了中央银行发行的数字货币等议题。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		来源： 铅笔 \r\n	</p>\r\n	<p>\r\n		作者： 陆通\r\n	</p>\r\n	<p>\r\n		原文链接：http://www.jinse.com/news/blockchain/36650.html\r\n	</p>\r\n	<p>\r\n		免责声明：本文为转载，与海通网络无关，仅为传播消息之用，不代表<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>观点，不构成<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>投资建议，炒币有风险，投资需谨慎！！\r\n	</p>\r\n<br />\r\n	<div style="margin:0px;padding:0px;border:0px;color:#990000;font-size:13px;">\r\n		声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n	</div>\r\n</div>', 1, 'bbb', 0, 0, 1, 0, 1498361419, 1498320000, 1, '');
INSERT INTO `ecshecom_article` (`id`, `title`, `content`, `adminid`, `type`, `hits`, `footer`, `index`, `sort`, `addtime`, `endtime`, `status`, `img`) VALUES
(55, '世界经济论坛发表了详细的白皮书《了解区块链的潜力', '<div class="bk30 hr" style="margin:0px;padding:0px;border:0px;color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;background:url(http://www.btc38.com/statics/images/uline.gif) 50% 50% repeat-x #F9F9F9;">\r\n</div>\r\n<div style="margin:0px;padding:0px;border:0px;color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	<p>\r\n		<img src="http://www.btc38.com/ueditor/php/upload/image/20170630/1498790865176214.png" title="1498790865176214.png" alt="经济论坛_看图王.png" />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		世界经济论坛发表了一份详细的白皮书，论证了区块链利益相关者应该组织起来，在某种程度上可能会阻碍最大联盟的发展。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		《了解区块链的潜力》于今日发布，其提出应该出现生态系统的一种新分布式网络，以最大限度地发挥分布式分类帐技术在三个方面的影响：区块链平台层，应用层和整体生态系统层，参与者可以从科学和商业的角度分析法律结构和法规。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		已经公开表达对这一概念兴趣的人包括：区块链联盟Enterprise Ethereum Alliance创始人Jeremy Millar、Linux基金会Hyperledger执行董事Brian Behlendorf、数字商会（Digital Commerce）的创始人Perianne Boring以及Bitfury集团首席通讯馆Jamie Smith。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		白皮书于世界经济论坛在中国大连召开的年度首脑会议开幕式上发布，该书提出建立一个包括创新者、风险投资家、金融机构、学者、政府机构及个人在内的网络。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		因担心此前反对大规模区块链工作的怀疑论者，作者Don和Alex Tapscott致力于为系统运作创建一种分类法，同时认为一旦建立一个结构，这种结构就会有机出现。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		在白皮书的序言中，世界经济论坛全球议程中心主席Richard Samans介绍了大规模协调可能对区块链产生的影响。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		Samans在接受CoinDesk采访时表示：\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		“这项新技术实现其潜力的程度将取决于利益相关者如何管理其发展。关于技术的功能及其当前和潜在应用程序，仍然存在重要的公开治理问题。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		该报告由Don和Alex Tapscott创立的非营利性区块链研究所提交，且得到世界经济论坛全球区块链未来理事会的反馈意见。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		46页报告的核心是作者所说的区块链技术“管理工作”的概念，或者是利益相关者有责任确保技术不仅仅使个别项目获益，而是世界“公民”。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		创始人Jeremy Millar没有将多利益相关方基础设施视为联盟的竞争对手，而是认为这样的大规模协调与他自己组织的精神一致。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		他说：\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		“治理对加速主流采用区块链技术至关重要，世界经济论坛以及Don 和Alex的工作是最受欢迎的。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style="font-size:18px;color:#366092;"><strong>预期挑战</strong></span>\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		该报告从对互联网初期的几点分析和几个突出的区块链创新者采访进行了分析。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		以下是引言中提出的三个生态系统分解：平台生态系统（包括比特币，以太坊，Hyperledger等）；在这些平台上构建的应用生态系统；以及从全局考虑的“整体”区块链生态系统。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		然后将平台的生态系统分为包含每个系统的实际技术，以及Hyperledger和Cosmos提供的技术，以促进每个区块链解决方案的互操作性。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		白皮书作者警告说，在详细分析平台面临的扩容问题和维持“大众协作”激励措施的困难时，治理不善可能导致“隐形权力”出现，造成潜在安全威胁的影响，违反整体网络参与者的利益。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		作者写道：“这种不成熟的技术将容易受到容量问题，系统故障，以外漏洞的影响，这可能是最具破坏性的，造成不懂技术用户的失望，任何一个都是目前不希望看到的。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		WEF白皮书中提出的平行应用网络涉及到各方如何与区块链相互作用。表面上，应用程序网络似乎是关于这些工具如何与其各自的区块链平台进行交互。但实际上，这部分是关于监管者和用户如何与应用程序交互的。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		引用实例，如基于以太坊的分布式计算机处理创业公司Iconomi、基于Omni的分布式互联网应用程序MaidSafe、基于NXT的区块链即服务创业公司Ardor，该报告认为，对技术工作方式的不熟悉限制了每种技术的潜在增长。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		从监管的角度来看，协调可以克服的最大挑战是监督ICO人员的不确定性。从客户的角度来看，非编码社区缺乏用户友好界面，从而导致已创建的系统无法实现区块链一些潜在应用。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		作者写道：“我们的研究表明，在基本用户界面和经验方面需要做很多工作。许多应用程序对普通人来说是无法访问的。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style="font-size:18px;color:#366092;"><strong>大局观</strong></span>\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		本文提出的第三个生态系统将以不同的方式与平台生态系统和应用生态系统进行交互。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		主要基于国家科学研究中心研究员Primavera De Filippi以及哈佛大学出版社即将出版的区块链书籍的合著者卡多佐法学院（Cardozo Law School）教授Aaron Wright的评论，白皮书得出结论，需要采用新的方法来代替软件进行集中决策。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		本文重点关注如何在监管和科学研究方面达成共识，认为利益相关者的网络设计应防止“强大的在职者”对益相关者的前进方向施加打破平衡的影响。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		为了指导这三个网络区块链的交互，报告作者主张在在Tapscotts全球解决方案网络基础上实施七个“框架”。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		具体来说，他们要求建立标准网络，机构网络，宣传网络，看门狗网络，策略网络，知识网络和传送网络。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		报告总结道：\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		“我们认为世界各地的人员，机构和行业都需要区块链技术，我们必须竭尽全力提供这些技术。本文中有一系列推动该技术发展的活动，我们希望这些将促进讨论，并提供可采取的积极步骤。”\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		来源： 比特币中文网&nbsp;\r\n	</p>\r\n	<p>\r\n		作者： 陆通\r\n	</p>\r\n	<p>\r\n		原文链接：http://www.jinse.com/news/blockchain/38864.html\r\n	</p>\r\n	<p>\r\n		免责声明：本文为转载，与海通网络无关，仅为传播消息之用，不代表<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>观点，不构成<span style="color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;line-height:24px;background-color:#F9F9F9;">海通网络</span>投资建议，炒币有风险，投资需谨慎！！\r\n	</p>\r\n<br />\r\n	<div style="margin:0px;padding:0px;border:0px;color:#990000;font-size:13px;">\r\n		声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n	</div>\r\n</div>', 1, 'bbb', 0, 1, 1, 0, 1498793545, 1498752000, 1, ''),
(56, '绿地币(GLC)白皮书', '<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>中文名称：</span><span>绿地币</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>简</span>    称：GLC\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>发行总量：</span>6000万枚 发行价0.05<span>元</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>上线平台：</span><span></span>海通网络<span>（</span>www.ecshe.com<span>）</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>分发方案：</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	5%用于推广<span>绿地币</span>--即300万枚；\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	30%用于市场合作对接领导团队--即1800<span>万枚；</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	25%用于众筹扩大<span>绿地币</span><span>持有用户量</span>--即1500<span>万枚；</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	10%用于赠送核心股东成员--即600万枚；\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	30%<span>绿地币</span><span>团队持有，用于维护团队日常运营</span>--即1800<span>万枚。</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	 \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>绿地币</span><span>特性：</span>\r\n</p>\r\n<p class="p" align="justify" style="margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;background:#FFFFFF;">\r\n	<b>                                             </b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>增</span>  值  性：<span>绿地币</span><span>作为币圈实力团队打造，资金充裕，力求在团队的快速布局下，实现财富增值；</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>大</span>  众  性：<span>绿地币</span><span>发展方向将</span><span>定位于高端房地产行业</span><span>，在目前模式下，创新交易模式，促进</span><span>绿地币</span><span>的与实体经济对接，让大家广泛参与；</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>创</span>  新  性：<span>绿地币</span><span>将引进币圈火爆的涨跌停模式，同时采取线上线下同步进行交易，迅速引流人群，让没有参与过的币圈的交易的人员，通过线下引流到平台，进一步促进流动性；</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>聚</span>  集  性：平台账户持有30万<span>绿地币</span><span>用户可以申请加入我们初创团队，经综合考核，可以进入我们持</span><span>绿地币</span><span>股东，股东权益相对丰厚，可以咨询我们。</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>连</span>  续  性：<span>绿地币</span><span>作为系列币的首发，为后续项目打下基础，必须持有一定量</span><span>绿地币</span><span>才能认购后续发行项目，保证了</span><span>绿地币</span><span>的龙头优势。</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<span>未来展望</span>\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:32.2500pt;background:#FFFFFF;">\r\n	<span>绿地币</span><span>作为币圈新秀，五大特性为大家的投资保驾护航，我们也严格遵守平台规则，实实在在为实体经济做好对接和基础运用工作，</span><span>绿地币</span><span>势必发挥其巨大的商业空间价值，为大家投资做好经济基础支撑。</span>\r\n</p>\r\n<p class="p" style="background:#FFFFFF;">\r\n	<span>区块浏览器：</span>http://60.205.59.146/\r\n</p>\r\n<p class="MsoNormal">\r\n	 \r\n</p>', 1, 'aaa', 0, 0, 1, 0, 1497953297, 1497888000, 1, ''),
(40, '留得青山在不怕没柴烧，6月15日狂人分析', '<p>\r\n	<img title="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图1" alt="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图1" src="https://pic.sosobtc.com/attachment/article/20170615/1497521417839842.jpg" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	狂人说\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	昨天在新闻一栏中发布的四大利空全部实现，美元加息、逢会必跌、外盘领跌、央行的指导性文件。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	其实指导性文件并没有出来，但是有一张图却被网友疯传，狂人只能说：贵圈太乱，只怕有心人。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图2" alt="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图2" src="https://pic.sosobtc.com/attachment/article/20170615/1497520683697943.png" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	这么傻X的造谣也能造出来，关键是，谣言一出，大幅下跌就来了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	狂人也只是个普通人，这次在ETH上的判断有些过激，导致较多人亏损。回顾一下昨日的文章：狂人认为出现破位下跌是极小概率事件，并且说明2500-2700一带越跌越买，照这个策略操作的投资者全部套牢，按目前2450元的价格算，多数人套牢了5%左右。如果你的亏损超过5%，应该找下原因。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>这种小概率事件难以避免，是诸多原因造成的，但事实已经发生，狂人不会逃避，责任在我，向大家说声对不起。</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	币圈很难找到第二个人敢如此直言涨跌，判断24小时内每个币的走势，可能是因为太容易出错，也太容易得罪追随者。但是狂人坚信，你们都是懂我的人。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	就说这么多，开始今天的分析\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>比特币</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	连续一周提示风险，连续从21000跌到17000，4天调整4000，20%的跌幅，相信多数看狂人文章的人都躲过去了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图3" alt="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图3" src="https://pic.sosobtc.com/attachment/article/20170615/1497521246121389.png" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	日线看，风险短期基本释放完毕，该位置企稳后将有一波小幅反弹，很多投资者是涨的时候敢买，跌下来不敢了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	20000的时候上车心里毫无压力，跌倒17000了反而不敢买了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	真是想问问，到底为什么？\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图4" alt="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图4" src="https://pic.sosobtc.com/attachment/article/20170615/1497521263526728.png" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	一路跌下来基本都是带着量往下杀，主力出货意图比较明显，但短期承接盘显示已经较多，抄底资金聚集，恰逢前期平台的位置，<strong>故该位置出现震荡式反弹可能性较大，但整体行情已经走出空头走势，趋势难以反转，中长线投资者继续休息就好。上方压力位压力位18200-18500。</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>莱特币</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图5" alt="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图5" src="https://pic.sosobtc.com/attachment/article/20170615/1497521298282360.png" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	比特、以太坊大跌，莱特反而纹丝不动，抗跌性表现的非常明显，主要源自于近期涨幅不大，散户看涨预期，同时主力也没有现身，大家都在修养生息。产生了窄幅的震荡，和昨日分析的基本一致，币价在区间震荡，虽然午后一度跌破200元，但很快便被收回，场内资金博弈明显，无增量资金。日线缩量明显，近几次缩量后的变盘均为向上。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>综上，日线通道内看震荡向上，压力依然时220元228元。</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>以太坊</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图6" alt="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图6" src="https://pic.sosobtc.com/attachment/article/20170615/1497521321335132.png" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	日线回踩10日线企稳\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图7" alt="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图7" src="https://pic.sosobtc.com/attachment/article/20170615/1497521340536335.png" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	15分钟被MA30完全压制，什么时候有效突破，可能才能有像样的反弹。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图8" alt="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图8" src="https://pic.sosobtc.com/attachment/article/20170615/1497521349663496.png" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	此处跌幅成交量还是太大了，如果再次有效破掉，下方支撑位距离就比较远了，大概在1800-2000左右，距离现在的位置还有20%的跌幅，所以建议方向不明的情况下，该止损要止损，毕竟涨了70倍一次像样的调整都没有，一旦调整起来，怕是有些恐怖。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>综上：短期该位置或有反弹，反弹高点大概在2700附近，逢高减仓为主。</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img title="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图9" alt="留得青山在不怕没柴烧，6月15日狂人分析_sosobtc_图9" src="https://pic.sosobtc.com/attachment/article/20170615/1497521375703628.png" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	狂人自己也亏了10%，交易本身就是这样，有高潮就有低谷，一起努力吧。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	今天状态不是很好，从后台留言能真实的感受到大家赔钱时的急切，心中有些不是滋味。无法打起十二分精神写文章。简单说了说对近期的看法，仅供参考吧！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	今天就说这么多，希望对大家有所帮助，明天见。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	有任何问题，欢迎留言。\r\n</p>\r\n<div>\r\n	<br />\r\n</div>\r\n<p>\r\n	关注数字资产咨询请访问：www.ecshe.com\r\n</p>', 1, 'aaa', 0, 1, 1, 0, 1497524889, 1497456000, 1, '59426a65d0dac.png'),
(41, '防范通过数字货币进行的非法行为的相关措施', '<p>\r\n	<span style="font-family:Calibri;font-size:12pt;"><span>尊敬的</span></span><span style="font-family:宋体;font-size:12pt;"><span></span></span><span style="font-family:宋体;font-size:12pt;">海通网络</span><span style="font-family:Calibri;font-size:12pt;"><span>用户：</span></span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Calibri;font-size:12pt;">&nbsp;</span>\r\n</p>\r\n<p style="text-indent:36pt;">\r\n	<span style="font-family:Calibri;font-size:12pt;"><span>为进一步抑制</span></span><span style="font-family:宋体;font-size:12pt;"><span>数字货币</span></span><span style="font-family:Calibri;font-size:12pt;"><span>市场的投机行为，防范通过</span></span><span style="font-family:宋体;font-size:12pt;"><span>数字货币</span></span><span style="font-family:Calibri;font-size:12pt;"><span>进行的非法传销、洗钱和换汇的可能性。</span></span><span style="font-family:宋体;font-size:12pt;">海通网络</span><span style="font-family:Calibri;font-size:12pt;"><span>将加强客户身份识别、加强资金来源和提币用户审核监督。发现可疑用户行为，</span></span><span style="font-family:宋体;font-size:12pt;">海通网络</span><span style="font-family:Calibri;font-size:12pt;"><span>可能采取限制提币、交易、冻结可疑资产的相关措施，并向有关部门进行上报。感谢您的理解与支持。</span></span>\r\n</p>\r\n<p style="text-indent:36pt;">\r\n	<span style="font-family:宋体;font-size:12pt;"><span>数字货币</span></span><span style="font-family:Calibri;font-size:12pt;"><span>不由货币当局发行，不具有法偿性与强制性，具有极高的价格波动风险，请在风险自担的前提下谨慎投资。</span></span>\r\n</p>\r\n<p>\r\n	<span style="font-family:宋体;font-size:10.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>\r\n</p>\r\n<p style="text-indent:367.5pt;">\r\n	<span style="font-family:宋体;font-size:10.5pt;">2017.6.15</span>\r\n</p>\r\n<p style="text-indent:388.5pt;">\r\n	<span style="font-family:宋体;font-size:10.5pt;"><span></span>海通网络</span>\r\n</p>\r\n<p style="text-indent:346.5pt;">\r\n	<span style="font-family:宋体;font-size:10.5pt;">&nbsp;</span>\r\n</p>\r\n<p>\r\n	<b><span style="background:#F8F8F8;color:#2B2B2B;font-family:Arial;font-size:13.5pt;font-style:normal;font-weight:bold;">Respected </span></b><b><span style="background:#F8F8F8;color:#2B2B2B;font-family:宋体;font-size:13.5pt;font-style:normal;font-weight:bold;">ecshe</span></b><b><span style="background:#F8F8F8;color:#2B2B2B;font-family:Arial;font-size:13.5pt;font-style:normal;font-weight:bold;">com users</span></b><b><span style="background:#F8F8F8;color:#2B2B2B;font-family:宋体;font-size:13.5pt;font-style:normal;font-weight:bold;"><span>：</span></span></b>\r\n</p>\r\n<p style="text-indent:42pt;">\r\n	<span style="background:#F8F8F8;color:#2B2B2B;font-family:Arial;font-size:10.5pt;font-style:normal;font-weight:normal;">In order to further curb the speculation in digital money market, it is possible to prevent illegal pyramid selling, money laundering and exchange transfer through digital currency. The ecshe.com will strengthen customer identification, strengthen funding sources and review and supervise the users of the currency. Finding suspicious user behavior, the ecshe.com may take measures to limit the use of money, trade, freeze suspicious assets, and report to the relevant authorities. Thank you for your understanding and support.</span>\r\n</p>\r\n<p style="text-indent:42pt;">\r\n	<span style="background:#F8F8F8;color:#2B2B2B;font-family:Arial;font-size:10.5pt;font-style:normal;font-weight:normal;">The digital currency is not issued by the monetary authorities. It has no legal compensation and compulsory, and it has extremely high price fluctuation risk. Please invest carefully under the premise of risk.</span>\r\n</p>\r\n<p>\r\n	<b><span style="background:#F8F8F8;color:#2B2B2B;font-family:宋体;font-size:13.5pt;font-style:normal;font-weight:bold;">&nbsp;</span></b>\r\n</p>\r\n<p style="text-indent:367.5pt;">\r\n	<span style="font-family:宋体;font-size:10.5pt;">2017.6.15</span>\r\n</p>\r\n<p style="text-indent:388.5pt;">\r\n	<span style="font-family:宋体;font-size:10.5pt;">ecshe.com</span>\r\n</p>\r\n<p>\r\n	<b><span style="background:#F8F8F8;color:#2B2B2B;font-family:宋体;font-size:13.5pt;font-style:normal;font-weight:bold;">&nbsp;</span></b>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 1, 'aaa', 0, 1, 1, 0, 1497525005, 1497456000, 1, '59426b2338444.png'),
(42, '产品优化意见“征集令”', '海通网络<span>网自上线以来，</span>通过优秀的产品体验和热忱的用户服务，得到了业界的广泛认可，在行业建立了良好口碑。本着精益求精做产品，一丝不苟为用户的服务原则，届时我们将面向全网“征集”产品优化意见，所有朋友均可给我们的产品提出建议，诚邀您来“吐槽”。活动详情如下：\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>活动时间：6</strong>月15日-6月30日\r\n</p>\r\n<p>\r\n	<strong>活动介绍：</strong>在海通网络APP、WEB端使用过程中，您觉得有什么模块是可以优化的？有什么功能是让您使用起来觉得“非常不爽”的？直接发送您对海通网络网产品提出的建议或意见；欢迎大家来“吐槽”，活动结束后，海通网络网将会优选好的建议，并根据您的建议，对产品做优化。\r\n</p>', 1, 'aaa', 0, 0, 1, 3, 1497525169, 1497456000, 1, '59426b5715ef3.png'),
(43, '海通网络优质资产登记说明', '<p>\r\n	尊敬的海通网络用户：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	至海通网络上线资产登记功能，将各类资产面向市场评定和投票以来，得到了广大用户的认可，同时也有个别误解，在此进一步明确：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	1. 初审标准\r\n</p>\r\n<p>\r\n	公司，有工商注册的实体公司。\r\n</p>\r\n<p>\r\n	团队，有专业团队在运营。\r\n</p>\r\n<p>\r\n	产品，已经实现或成型。\r\n</p>\r\n<p>\r\n	市场及定位，具有存在的意义和市场发展前景。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>2. 公示阶段</strong> \r\n</p>\r\n<p>\r\n	面向市场公示，接受评定投票。\r\n</p>\r\n<p>\r\n	<strong><br />\r\n</strong> \r\n</p>\r\n<p>\r\n	<strong>3. 上线</strong> \r\n</p>\r\n<p>\r\n	对人气高的优质资产，币兴会主动接洽，进行客观中立的尽职调查，达到最终审核标准后可在海通网络上线交易。\r\n</p>\r\n<p>\r\n	海通网络是创新资产交易平台，主营资产证券化方向，诚招各类优质落地团队及项目，不接受炒作及传销类的任何币种！\r\n</p>\r\n<p>\r\n	初审相对宽松，会给更多项目展现的机会，但登记通过并不代表上线交易，登记后需要市场的评定和严格的尽调，海通网络会严格审核每一个上线的资产，请大家放心！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	感谢各位用户和资产官方对海通网络的认可和支持！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style="text-align:right;">\r\n	海通网络网\r\n</p>\r\n<p style="text-align:right;">\r\n	2017年5月15日\r\n</p>', 1, 'aaa', 0, 0, 1, 4, 1497525376, 1497456000, 1, '59426c26a6e49.png'),
(44, '海通网络网CEO参加第一届全球区块链高峰论坛', '<p>\r\n	2017.06.14-0615\r\n</p>\r\n<p>\r\n	<strong><span style="font-size:32px;">第一届全球区块链高峰论坛在成都世纪城国际会议中心水晶厅开展，海通网络网创始人兼CEO受邀参加。</span></strong> \r\n</p>\r\n<p>\r\n	<img alt="" src="/Upload/article/59426eefbdc7f.jpg" /> \r\n</p>\r\n<p>\r\n	<span style="font-size:24px;">图1为左侧杨老师，右侧为BTS交易网刘总</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:16px;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:16px;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<img alt="" src="/Upload/article/59426f8730a32.jpg" /> \r\n</p>\r\n<p>\r\n	<span style="font-size:24px;">图二为“洋洋访谈”多媒体的"洋洋"</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:24px;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:24px;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt="" src="/Upload/article/5942700cae85b.jpg" /> \r\n</p>\r\n<p>\r\n	<span style="font-size:24px;">图三为宝二爷，宝二爷是一位资深的投资人、媒体评论人</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:24px;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:24px;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<img alt="" src="/Upload/article/594271048c30a.jpg" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt="" src="/Upload/article/594271dabdc7f.jpg" /> \r\n</p>\r\n<p>\r\n	<span style="font-size:24px;">图五为比特币中国创始人“杨林科”</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt="" src="/Upload/article/5942729690013.jpg" /> \r\n</p>\r\n<p>\r\n	<span style="font-size:24px;">图六为量子链创始人“帅初”</span> \r\n</p>', 1, 'aaa', 0, 0, 1, 2, 1497526981, 1497456000, 1, '59426e46ae85b.png'),
(46, '海通网络（www.ecshe.com）正式上线', '<p class="MsoNormal">\r\n	<span></span>海通网络<span>（</span><span>www.ecshe.com</span><span>）正式上线</span> \r\n</p>\r\n<p class="MsoNormal">\r\n	&nbsp;\r\n</p>\r\n<p class="MsoNormal">\r\n	<span></span>海通网络<span>数字</span><span>货</span><span>币交易平台专业的的加密数字货币网络交易平台。</span> \r\n</p>\r\n<p class="MsoNormal">\r\n	<br />\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<span>我们希望通过多年积累的全球化的资源与符合全球化趋势的数字货币融合，以技术为基础，把协助打造全球化互联网金融中心为终极目标，从而使平台成为</span><span>国际</span><span>数字资产及数字货币交易平台的行标机构</span><span>。</span> \r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<b><span>平台优势：</span></b><b></b> \r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<br />\r\n1、最前沿的区块链系统技术。我们拥有完整的交易体系和数字加密功能，<span></span>海通网络<span>交易平台的区块链系统不依赖第三方，通过自身分布式节点进行网络数据的存储、验证与传递的技术，区块链技术具有去中心化存储、信息高度透明、不可篡改等安全特点，并且可实现线上线下全覆盖的金融交易对接，区块链技术将颠覆整个互联网架构，进而对整个行业产生深远的影响，区块链被誉为</span>“第四次工业革命”。\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<br />\r\n2、<span></span>海通网络<span>交易平台已发展为以加密数字货币为核心业务的多元化投资平台，综合性数字资产交易平台，服务全球的领先加密数字货币投资交易品牌。</span> \r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<br />\r\n3、<span></span>海通网络<span>交易平台支持比特币、</span><span>以太坊</span><span>等多种加密数字货币的交易。</span><span></span>海通网络<span>交易平台以</span>“<span>区块连应用</span>”为核心，构建会员系统和“<span></span>海通网络<span>交易平台钱包</span>”及实体商家整合流通的全产业链式金融投资模式。“<span></span>海通网络”支持双向交易，<span>低</span><span>手续费，全球任意账户实时到账。</span>“<span></span>海通网络<span>交易平台</span>”凭借强大的区块链系统提供交易透明、安全可靠、收益倍增的高效服务。\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<br />\r\n<span></span>海通网络<span>正将加密数字货币、消费商家、网络支付逐渐整合流通，它正改变资金的存储、使用和支付方式，构建一个更加安全、高效的加密数字货币网络，未来，</span><span></span>海通网络<span>将为全球投资者提供更多高价值的数字资产服务。</span> \r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<span><br />\r\n</span> \r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<span> </span>\r\n</p>\r\n<p class="MsoNormal">\r\n	海通网络<span>平台采用：</span> \r\n</p>\r\n<img src="/Upload/article/5955b6e6d5302.png" alt="" /><br />\r\n<p>\r\n	<br />\r\n</p>', 1, 'aaa', 0, 0, 1, 5, 1497457629, 1497456000, 1, '5973196c96819.png');

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_article_type`
--

CREATE TABLE `ecshecom_article_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `remark` varchar(50) CHARACTER SET utf8 NOT NULL,
  `index` varchar(50) CHARACTER SET utf8 NOT NULL,
  `footer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `shang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `ecshecom_article_type`
--

INSERT INTO `ecshecom_article_type` (`id`, `name`, `title`, `remark`, `index`, `footer`, `shang`, `content`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, '公司简介', '公司简介', '行业资讯', '0', '1', 'aboutus', '<p class="MsoNormal">\r\n	<span></span>海通网络<span>（</span><span>www.ecshe.com</span><span>）正式上线</span>\r\n</p>\r\n<p class="MsoNormal">\r\n	<img src="/Upload/article/5955bc72266d6.png" alt="" />\r\n</p>\r\n<p class="MsoNormal">\r\n	<span></span>海通网络<span>数字</span><span>货</span><span>币交易平台专业的的加密数字货币网络交易平台。</span>\r\n</p>\r\n<p class="MsoNormal">\r\n	&nbsp;\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<span>我们希望通过多年积累的全球化的资源与符合全球化趋势的数字货币融合，以技术为基础，把协助打造全球化互联网金融中心为终极目标，从而使平台成为</span><span>国际</span><span>数字资产及数字货币交易平台的行标机构</span><span>。</span>\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	&nbsp;\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<b><span>平台优势：</span></b><b></b>\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<br />\r\n1、最前沿的区块链系统技术。我们拥有完整的交易体系和数字加密功能，<span></span>海通网络<span>交易平台的区块链系统不依赖第三方，通过自身分布式节点进行网络数据的存储、验证与传递的技术，区块链技术具有去中心化存储、信息高度透明、不可篡改等安全特点，并且可实现线上线下全覆盖的金融交易对接，区块链技术将颠覆整个互联网架构，进而对整个行业产生深远的影响，区块链被誉为</span>“第四次工业革命”。\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<br />\r\n2、<span></span>海通网络<span>交易平台已发展为以加密数字货币为核心业务的多元化投资平台，综合性数字资产交易平台，服务全球的领先加密数字货币投资交易品牌。</span>\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<br />\r\n3、<span></span>海通网络<span>交易平台支持比特币、</span><span>以太坊</span><span>等多种加密数字货币的交易。</span><span></span>海通网络<span>交易平台以</span>“<span>区块连应用</span>”为核心，构建会员系统和“<span></span>海通网络<span>交易平台钱包</span>”及实体商家整合流通的全产业链式金融投资模式。“<span></span>海通网络”支持双向交易，<span>低</span><span>手续费，全球任意账户实时到账。</span>“<span></span>海通网络<span>交易平台</span>”凭借强大的区块链系统提供交易透明、安全可靠、收益倍增的高效服务。\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<br />\r\n<span></span>海通网络<span>正将加密数字货币、消费商家、网络支付逐渐整合流通，它正改变资金的存储、使用和支付方式，构建一个更加安全、高效的加密数字货币网络，未来，</span><span></span>海通网络<span>将为全球投资者提供更多高价值的数字资产服务。</span>\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	<span><br />\r\n</span>\r\n</p>\r\n<p class="p" style="text-indent:0pt;background:#FFFFFF;">\r\n	&nbsp;\r\n</p>', 1, 1497495044, 1497495048, 1),
(2, 'xiazai', '下载中心', '最新公告', '0', '1', '', '', 3, 0, 0, 0),
(3, 'help', '帮助中心', '帮助中心', '0', '1', '', '', 2, 0, 0, 1),
(4, 'aboutus', '关于我们', '关于我们', '0', '1', '', '', 1, 1498792179, 1498792179, 1),
(5, '联系我们', '联系我们', '', '0', '1', 'aboutus', '<span style="color:#CC33E5;font-size:14px;line-height:21px;">请联系QQ客服；502182299或者发送邮件至客服QQ邮箱</span>', 2, 1497496071, 1497496074, 1),
(6, '加入我们', '加入我们', '', '0', '1', 'aboutus', '<span><span style="font-size:14px;line-height:21px;">请联系官方客服</span></span>', 4, 1497495984, 1497495990, 1),
(7, '法律声明', '法律声明', '', '0', '1', 'aboutus', '<p class="MsoNormal">\r\n	<p class="MsoNormal" style="text-indent:0pt;">\r\n		<span>《数字货币交易平台</span>海通网络用户服务协议》<br />\r\n一、总则<br />\r\n1.1、 用户在使用虚拟币交易平台服务前，应当仔细阅读《海通网络用户服务协议》（以下<br />\r\n<span>简称</span>“本协议”）的全部内容，对于本协议中的加重字体、斜体、下划线、颜色标记等条款<br />\r\n需重点阅读、理解。<br />\r\n1.2、海通网络（<a href="http://funnycoin.club/"><u>http://w</u></a><u>ww.ecshe.com</u><span>）所提供的各项服务的所有权和运作权均归北京市网录区块链网络科技有限公司（以下简称</span>“海通网络”）所有。<br />\r\n1.3、 用户应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。用户在进<br />\r\n<span>行注册程序过程中点击</span>"注册"按钮即表示用户与海通网络达成以下协议，完全接受本协议项下<br />\r\n<span>的全部条款，本协议即在用户与</span>海通网络之间产生法律效力，对双方均具有法律约束力。<br />\r\n1.4、 用户注册成功后，海通网络将给予每个用户一个用户帐号及相应的密码，该用户帐号和<br />\r\n密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。<br />\r\n1.5、 《海通网络用户服务协议》、单项服务条款、全部活动条款及公告可由海通网络随时更<br />\r\n<span>新，且无需另行通知。</span>海通网络有权对上述条款进行修改，修改后的协议一旦公布即有效替代<br />\r\n<span>原有协议。用户可随时查询最新协议。用户在使用</span>海通网络提供的各项服务之前，应仔细阅读<br />\r\n<span>本协议及本协议不可分割的各项服务协议。用户在使用相关服务时</span>,应关注并遵守其所适用<br />\r\n<span>的相关条款。用户如不同意本服务协议及</span>/或随时对其的修改，不得访问或使用本网站相关<br />\r\n<span>服务；用户一旦使用</span>海通网络服务，即视为用户已了解并完全同意本协议及其他服务条款中的<br />\r\n<span>各项内容，包括</span>海通网络对本协议及其他服务条款随时所做的任何修改，并成为海通网络用户。<br />\r\n二、用户资格及注册<br />\r\n2.1、 用户应为具有完全民事权利能力和民事行为能力的自然人、法人，或是能够独立承担<br />\r\n民事责任能力的其他组织。用户若不具有前述规定的法律能力资格，须经法定代理人同意或<br />\r\n由法定代理人代理，或是得到有权主体授权后进行注册、交易。或虽不具有完全民事权利能<br />\r\n<span>力和行为能力</span>,但点击同意注册按钮，海通网络即视为经其法定代理人同意并由其法定代理人<br />\r\n代理注册及完成交易等服务内容的操作。<br />\r\n2.2、 用户使用海通网络提供的网络平台服务前，应自行准备如下设备并承担如下开支：<br />\r\n2.2.1、 自行配备上网的所需设备，包括个人电脑、调制解调器或其他必备上网装置；<br />\r\n2.2.2、 自行负担个人上网所支付的与此服务有关的电话费用、网络费用等。<br />\r\n2.3、 用户点击“同意以下协议并注册”按钮，则视为用户同意本协议的所有条款，且具有<br />\r\n浏览<span></span>海通网络<span>平台相关信息、提交买单、合理交易等使用</span>海通网络提供的全部服务的权利能力和<br />\r\n行为能力，同意承担由此带来的全部法律责任。<br />\r\n2.4、 用户注册、使用海通网络不得出于非法或破坏海通网络交易秩序的目的，用户保证向海通网络提交的全部信息真实、准确和完整，不存在盗用、借用、买入非本人手机号码、电子邮箱<br />\r\n<span>等进行注册、虚假交易和作弊交易的行为，用户若存在上述违规行为，</span>海通网络有权取消其交<br />\r\n<span>易资格及因参加交易活动所获权益，并停止服务、封停帐号。如该违规行为给</span>海通网络造成损<br />\r\n<span>失的，</span>海通网络保留追究赔偿及诉至法律解决的权利。<br />\r\n2.5、 用户注册成功后，应妥善保管其海通网络平台帐户及密码，定期或不定期修改密码，在<br />\r\n<span>每次使用</span>海通网络服务完毕后及时退出帐户，以确保帐户安全。用户不得将海通网络平台帐户出<br />\r\n借、转让或用作其他非法用途，否则因帐户未妥善保管而造成损失的，用户应承担相应法律<br />\r\n责任。<br />\r\n三、用户个人信息保护<br />\r\n3.1、本协议所称之海通网络用户信息是指符合法律、法规及相关规定，并符合下述范围的信<br />\r\n息：<br />\r\n3.1.1、用户注册海通网络或申请海通网络会员卡时，向海通网络提供的个人信息；<br />\r\n3.1.2、用户在使用海通网络服务、参加网站活动或访问网站网页时，海通网络自动接收并记录的<br />\r\n<span>用户浏览器端或手机客户端数据，包括但不限于</span>&nbsp;IP 地址、网站 Cookie 中的资料及用户要求<br />\r\n取用的网页记录；<br />\r\n3.1.3、海通网络从商业伙伴处合法获取的用户个人信息；<br />\r\n3.1.4、其它<span></span>海通网络通过合法途径获取的用户个人信息。<br />\r\n3.2、海通网络承诺：非经法定原因或用户事先许可，海通网络不会向任何第三方透露用户的密<br />\r\n码、姓名、身份证，手机号码等非公开信息。并对用户信息中涉及识别用户个人身份和用户个人隐私<br />\r\n的信息进行保护，承诺在未获得用户许可的情况下，不会将用户的上述信息对外公开或提供<br />\r\n给任何第三方，但以下情况除外：<br />\r\n3.2.1、经用户同意向用户本人或其他第三方披露；<br />\r\n3.2.2、经用户同意公开其个人资料，享受为其提供的产品和服务；<br />\r\n3.2.3、根据法律、法规等相关规定，或行政机构要求，向行政、司法机构或其他法律规定的<br />\r\n第三方披露；<br />\r\n3.2.4、其它海通网络根据法律、法规等相关规定进行的披露。<br />\r\n四、服务的提供、修改及终止<br />\r\n4.1、用户可根据本协议及海通网络公布的相关使用规则，查阅在海通网络平台上发布的交易及<br />\r\n<span>相关资料，通过</span>海通网络平台交易具体的金融服务产品等有关活动，及海通网络现有及将来可能<br />\r\n提供的其他服务。<br />\r\n4.2、用户在使用海通网络提供的上述服务时，应遵守本协议及海通网络的相关使用规则，遵守<br />\r\n<span>自愿、平等、公平及诚实信用原则，不利用</span>海通网络平台侵犯他人合法权益及谋取不正当利益，<br />\r\n不扰乱网上交易的正常秩序。<br />\r\n4.3、用户在接受海通网络各项服务的同时，同意接受海通网络网提供的各类信息服务。用户在<br />\r\n<span>此授权</span>海通网络可以向其电子邮件、手机、通信地址等发送商业信息。用户有权选择不接受比<br />\r\n<span>特儿提供的各类信息服务，并进入</span>海通网络相关页面进行更改。<br />\r\n4.4、海通网络<span></span>海通网络尽全力维护平台的正常运行，以向用户提供持续、稳定、安全、顺畅的服务。<br />\r\n<span>但用户理解并同意：</span>海通网络对服务页面进行改版、升级网站系统、增加服务功能等须中断服<br />\r\n务的操作时，有权暂时中断服务。<br />\r\n4.5、海通网络保留随时修改或中断服务而不需通知用户的权利。海通网络有权行使修改或中断<br />\r\n服务的权利，不需对用户或任何无直接关系的第三方负责。<br />\r\n4.6、用户对本协议的修改有异议，或对海通网络的服务不满，可以行使如下权利：<br />\r\n4.6.1、停止使用海通网络的网络服务；<br />\r\n4.6.2、通过客服等渠道告知海通网络停止对其服务。结束服务后，用户使用海通网络网络服务的<br />\r\n<span>权利立即终止。在此情况下，</span>海通网络没有义务传送任何未处理的信息或未完成的服务给用户<br />\r\n或任何无直接关系的第三方。<br />\r\n五、用户权利<br />\r\n5.1、用户的用户名、密码和安全性<br />\r\n5.1.1、用户有权选择是否成为海通网络会员，用户选择成为海通网络注册用户的，可自行创建、<br />\r\n修改昵称。用户名和昵称的命名及使用应遵守相关法律法规并符合网络道德。用户名和昵称<br />\r\n中不能含有任何侮辱、威胁、淫秽、谩骂等侵害他人合法权益的文字。<br />\r\n5.1.2、用户一旦注册成功，成为海通网络的会员，将得到用户名（用户邮箱）和密码，并对以<br />\r\n此组用户名和密码登入系统后所发生的所有活动和事件负责，自行承担一切使用该用户名的<br />\r\n言语、行为等而直接或者间接导致的法律责任。<br />\r\n5.1.3、用户有义务妥善保管海通网络网账号、用户名和密码、短信验证码、交易密码，用户<br />\r\n将对用户名和密码、和交易密码安全负全部责任。因用户原因导致用户名或密码、交易密码<br />\r\n泄露而造成的任何法律后果由用户本人负责，由于用户自身原因泄露这些信息导致的财产损<br />\r\n失，本站不负相关责任。由于本站是交易网站，登录密码、提现密码、短信密码、交易密码\r\n	</p>\r\n	<p class="MsoNormal" style="text-indent:0pt;">\r\n		等不得使用相同密码，否则会有安全隐患，相关责任由用户自身承担。<br />\r\n5.1.4、用户密码遗失的，可以通过注册电子邮箱发送的链接重置密码，以手机号码注册的用<br />\r\n户可以凭借手机号码找回原密码。用户若发现任何非法使用用户名或存在其他安全漏洞的情<br />\r\n<span>况，应立即告知</span>海通网络。<br />\r\n5.1.5、海通网络不会向任何用户索取密码，不会让用户往任何非本站交易中心里提供的帐户、<br />\r\n&nbsp;充值地址打款，请大家不要相信任何海通网络打折、优惠等诈骗信息，往非法交易<br />\r\n账户、地址里打款或币造成的损失本站不负责任。<br />\r\n5.2、用户有权根据网站相关规定，在发布信息等贡献后，取得海通网络给予的奖励；<br />\r\n5.3、用户有权修改其个人账户中各项可修改信息，自行选择昵称和录入介绍性文字，自行<br />\r\n决定是否提供非必填项的内容；<br />\r\n5.4、用户有权参加海通网络社区，并发表符合国家法律规定，并符合海通网络社区规则的文章<br />\r\n及观点；<br />\r\n5.5、用户有权根据网站相关规定，获得海通网络给与的奖励（如社区学分、徽章等）；<br />\r\n5.6、用户有权参加海通网络组织提供的各项线上、线下活动；<br />\r\n5.7、用户有权根据海通网络网站规定，享受海通网络提供的其它各类服务。<br />\r\n六、用户义务<br />\r\n6.1 用户可以在海通网络平台发布对商品或交易服务的评价信息，并可对其进行适当的修<br />\r\n改、删除，但不得不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和<br />\r\n公民的合法权益，不得利用本站制作、复制和传播下列信息：<br />\r\n6.1.1、 反对宪法所确定的基本原则，煽动、抗拒、破坏宪法和法律、行政法规实施的；<br />\r\n6.1.2、 煽动颠覆国家政权，推翻社会主义制度，煽动、分裂国家，破坏国家统一的；<br />\r\n6.1.3、 损害国家荣誉和利益的；<br />\r\n6.1.4、 煽动民族仇恨、民族歧视，破坏民族团结的；<br />\r\n6.1.5、 任何包含对种族、性别、宗教、地域内容等歧视的；<br />\r\n6.1.6、 捏造或者歪曲事实，散布谣言，扰乱社会秩序的；<br />\r\n6.1.7、 宣扬封建迷信、邪教、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；<br />\r\n6.1.8、 公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；<br />\r\n6.1.9、 损害国家机关信誉的；<br />\r\n6.1.10、其他违反宪法和法律行政法规的。<br />\r\n6.1.11、进行商业广告行为的<br />\r\n6.2、用户不得通过任何手段恶意注册海通网络网站帐号，包括但不限于以牟利、炒作、套现、<br />\r\n<span>获奖等为目的多个账号注册。用户亦不得盗用其他用户帐号。如用户违反上述规定，则</span>海通网络\r\n	</p>\r\n	<p class="MsoNormal" style="text-indent:0pt;">\r\n		有权直接采取一切必要的措施，包括但不限于删除用户发布的内容、取消用户在网站获<br />\r\n得的星级、荣誉以及虚拟财富，暂停或查封用户帐号，取消因违规所获利益，乃至通过诉讼<br />\r\n形式追究用户法律责任等。<br />\r\n6.3、禁止用户将海通网络任何形式作为从事各种非法活动的场所、平台或媒介。未经海通网络\r\n	</p>\r\n	<p class="MsoNormal" style="text-indent:0pt;">\r\n		<span>的授权或许可，用户不得借用本站的名义从事任何商业活动，也不得以任何形式将</span>海通网络<br />\r\n<span>作为从事商业活动的场所、平台或媒介。如用户违反上述规定，则</span>海通网络有权直接采取一切<br />\r\n必要的措施，包括但不限于删除用户发布的内容、取消用户在网站获得的星级、荣誉以及虚<br />\r\n拟财富，暂停或查封用户帐号，取消因违规所获利益，乃至通过诉讼形式追究用户法律责任<br />\r\n等。<br />\r\n6.4、用户在海通网络以各种形式发布的一切信息，均应符合国家法律法规等相关规定及网站<br />\r\n相关规定，符合社会公序良俗，并不侵犯任何第三方主体的合法权益，否则用户自行承担因<br />\r\n<span>此产生的一切法律后果，且</span>海通网络因此受到的损失，有权向用户追偿。<br />\r\n七、责任限制与免责<br />\r\n7.1、不论在任何情况下，海通网络对由于互联网正常的设备维护，互联网络连接故障，电脑、<br />\r\n通讯或其他系统的故障，网络攻击，电力故障，罢工，暴乱，骚乱，灾难性天气（如火灾、<br />\r\n洪水、风暴等），爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的<br />\r\n不能履行或延迟履行服务不承担责任。<br />\r\n7.2、海通网络作为“网络服务提供者”的第三方平台，不担保网站平台上的信息及服务能充<br />\r\n<span>分满足用户的需求。对于用户在接受</span>海通网络服务过程中可能遇到的错误、侮辱、诽谤、不<br />\r\n<span>作为、淫秽、色情或亵渎事件，</span>海通网络不承担法律责任。<br />\r\n7.3、基于互联网的特殊性，海通网络也不担保服务不会受中断，对服务的及时性、安全性都<br />\r\n<span>不作担保，不承担非因</span>海通网络导致的责任。<br />\r\n7.4、海通网络力图使用户能对本网站进行安全访问和使用，但海通网络不声明也不保证本网站<br />\r\n或其服务器是不含病毒或其它潜在有害因素的；因此用户应使用业界公认的软件查杀任何自<br />\r\n<span></span>海通网络下载文件中的病毒。用户须自行辨别真伪，谨慎预防风险。<br />\r\n7.5、海通网络不对用户所发布信息的保存、修改、删除或储存失败负责。对网站上的非因海通网络\r\n	</p>\r\n	<p class="MsoNormal" style="text-indent:0pt;">\r\n		故意所导致的排字错误、疏忽等不承担责任。用户须自行辨别真伪，谨慎预防风险。<br />\r\n7.6、海通网络有权但无义务，改善或更正本网站任何部分之疏漏、错误。<br />\r\n7.7、除非海通网络以书面形式明确约定，海通网络对于用户以任何方式（包括但不限于包含、<br />\r\n经由、连接或下载）从本网站所获得的任何内容信息，包括但不限于广告等，不保证其准确<br />\r\n性、完整性、可靠性；对于用户因本网站上的内容信息而购买、获取的任何产品、服务、信<br />\r\n<span>息或资料，</span>海通网络不承担责任。用户自行承担使用本网站信息内容所导致的风险。<br />\r\n7.8、海通网络内所有用户所发表的用户评论，仅代表用户个人观点，并不表示本网站赞同其<br />\r\n观点或证实其描述，本网站不承担用户评论引发的任何法律责任。<br />\r\n7.9、海通网络有权删除<span></span>海通网络内各类不符合法律或协议规定的信息，而保留不通知用户的<br />\r\n权利。<br />\r\n7.10、所有发给用户的通告，海通网络都将通过正式的页面公告、站内信、电子邮件、客服电<br />\r\n<span>话、手机短信或常规的信件送达。任何非经</span>海通网络正规渠道获得的中奖、优惠等活动或信息，<br />\r\n<span></span>海通网络不承担法律责任。<br />\r\n7.11、海通网络有权根据市场情况调整充值、提现、交易等手续费费率，有权决定免费推广期<br />\r\n的终止。<br />\r\n八、法律管辖和适用<br />\r\n8.1、 本协议的订立、执行和解释及争议的解决均应适用中华人民共和国大陆地区的法律管<br />\r\n辖。<br />\r\n8.2、如发生本协议条款与上述法律相抵触时，则这些条款将完全按上述法律规定重新解释，<br />\r\n但不影响其它合法条款对用户产生的法律效力和影响。<br />\r\n8.3、 本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，则该规定可<br />\r\n被删除，不影响其余条款的继续执行。<br />\r\n8.4、 如双方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，<br />\r\n<span>任何一方均可向</span>海通网络所在地人民法院提起诉讼。<br />\r\n8.5、本协议是海通网络与用户注册成为海通网络用户，使用海通网络服务之间的重要法律文件，<br />\r\n&nbsp;海通网络或者用户的任何其他书面或者口头意思表示与本协议不一致的，均应当以本协议为<br />\r\n准。<br />\r\n<span></span>海通网络平台北京网录区块链网络科技有限公司保留最终解释权。<br />\r\n九、附则<br />\r\n<span>本协议除以上正文部分外，还包括</span>海通网络平台发布的各项服务规则、产品使用规则、页面提<br />\r\n示提醒等，各项服务规则与本协议具有同等法律效力，为本协议不可分割的重要组成部分。<br />\r\n<span>服务规则包括但不限</span>&nbsp;《海通网络用户协议》、&nbsp;《网络交易服务规则》、&nbsp;《海通网络平台使用规<br />\r\n<span>则》、</span>&nbsp;《隐私声明》、&nbsp;《反作弊声明》、&nbsp;《用户交易体验承诺》、&nbsp;《网购服务》等。其他<br />\r\n交易服务规则。\r\n	</p>\r\n	<p class="MsoNormal">\r\n		&nbsp;\r\n	</p>\r\n</p>', 4, 1497495216, 1497495219, 1),
(8, '免责声明', '免责声明', '', '0', '1', '公司简介', '<p class="MsoNormal">\r\n	根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。<span></span>海通网络仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在<span></span>海通网络平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。\r\n</p>', 5, 1497495947, 1497495955, 1),
(9, '注册协议', '注册协议', '', '0', '1', 'aboutus', '根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。<span>海通网络</span>网仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在<span>海通网络</span>网平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。<br />\r\n<br />\r\n<br />\r\n<br />\r\n请您务必注意以下几点：<br />\r\n<br />\r\n<br />\r\n<br />\r\n1.警惕虚假宣传，不要听信任何币值会永远上涨的宣传，数字货币作为一种虚拟商品，具有极高的风险，很可能出现价值归零的情况。<br />\r\n<br />\r\n2.对于推广和运营方的市场承诺，需要谨慎判别，目前并没有相关法律能保证其兑现承诺，<span>海通网络</span>不会对任何数字货币进行背书和承诺。<br />\r\n<br />\r\n3.坚决拒绝多层次传销组织，在我国参与该类组织是违法行为，造成的一切后果自负，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n4.根据《中华人民共和国反洗钱法》等有关法律规定，严格禁止利用平台进行洗钱等违法犯罪活动，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n5.数字货币和数字积分等虚拟商品所对应的实物财产和持有者享有的权利存在因发行方等义务相关方破产，关闭或违法犯罪等其他经营风险导致无法兑现的风险。<br />\r\n<br />\r\n6.在海通网络注册参与交换的用户，应保证注册身份信息的真实、准确，保证拟交换的数字货币等虚拟商品的来源合法。因信息不真实造成的任何问题，平台概不负责。<br />\r\n<br />\r\n7.因国家法律，法规及政策性文件的制定和修改，导致数字货币等虚拟商品的交易被暂停或者禁止的，由此导致的全部损失由用户自行承担。<br />\r\n<br />\r\n8.请控制风险，不要投入超过您风险承受能力的资金，不要购买您所不了解的数字货币，数字积分等虚拟商品。<br />', 6, 1497495918, 1497495922, 1),
(10, '注册指南', '注册指南', '', '0', '1', 'help', '<img src="/Upload/article/583a700024ba4.png" alt="" />', 1, 1497495861, 1497495865, 1),
(11, '交易指南', '交易指南', '', '0', '1', 'help', '', 2, 1497495802, 1497495805, 1),
(12, '充值指南', '充值指南', '', '0', '1', 'help', '', 3, 1497495770, 1497495773, 1),
(13, '充值限额', '充值限额', '', '0', '1', 'help', '<span style="color:#CC33E5;font-size:14px;"><span style="font-size:14px;line-height:normal;color:#CC33E5;">最小充值100最大充值10</span></span><span><span style="font-size:14px;line-height:normal;"><span style="color:#CC33E5;font-size:14px;"></span><span style="color:#CC33E5;font-size:14px;">0000 请通过本人支付宝充值</span></span></span><span style="color:#CC33E5;font-size:14px;"></span>', 4, 1497495698, 1497495701, 1),
(14, '提现指南', '提现指南', '', '0', '1', 'help', '<h3 style="font-family:''Microsoft YaHei'';font-weight:500;font-size:24px;background-color:#FFFFFF;">\r\n	提现须知\r\n</h3>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	1. 提现手续费率1％，每笔提现最低收费2元 。\r\n</p>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	2. 单笔提现限额100元——50000元。\r\n</p>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	3. 银行卡提现24小时内到帐，在已汇出24小时后 仍未收到款项，请联系客服。\r\n</p>', 5, 1497495645, 1497495649, 1),
(15, 'aa', '虚拟币钱包下载', '', '0', '1', 'xiazai', '<!--StartFragment -->\r\n<p>\r\n	<a href="http://www.coin78.com/bxbcoin.exe" target="_blank"><span style="color:#337FE5;font-size:32px;">http://www.coin78.com/bxbcoin.exe</span></a>\r\n</p>\r\n<p>\r\n	<span><strong><span style="font-size:24px;">点击连接下载币兴股</span><span style="font-size:24px;">钱包下载。</span></strong></span> \r\n</p>', 1, 1497542400, 1497542400, 0),
(16, '浏览器下载', '浏览器下载', '', '0', '1', 'xiazai', '<img src="/Upload/article/583a7016bd67f.png" alt="" />', 2, 1480224804, 1480224805, 0),
(17, '新币上线申请', '新币上线申请', '', '0', '1', 'xiazai', '<img src="/Upload/article/583a70a9d79ff.png" alt="" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color:#CC33E5;">请发邮件联系工作人员，合作愉快！！！</span>', 3, 1480224952, 1480224955, 0),
(18, 'dd', '工具下载', '', '0', '1', 'xiazai', '测试数据', 4, 0, 0, 0),
(19, 'aaa', '官方公告', '', '1', '0', '', '<img src="/Upload/article/5955b7dbec138.png" alt="" />', 2, 1497456000, 1497456000, 1),
(20, 'bbb', '行业资讯', '', '1', '0', '', '', 3, 1497456000, 1497456000, 1),
(21, '币友说币', '币友说币', '', '1', '0', '', '', 4, 1497493937, 1497493942, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_auth_extend`
--

CREATE TABLE `ecshecom_auth_extend` (
  `group_id` mediumint(10) UNSIGNED NOT NULL COMMENT '用户id',
  `extend_id` mediumint(8) UNSIGNED NOT NULL COMMENT '扩展表中数据的id',
  `type` tinyint(1) UNSIGNED NOT NULL COMMENT '扩展类型标识 1:栏目分类权限;2:模型权限'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_auth_extend`
--

INSERT INTO `ecshecom_auth_extend` (`group_id`, `extend_id`, `type`) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 2, 1),
(1, 2, 2),
(1, 3, 1),
(1, 3, 2),
(1, 4, 1),
(1, 37, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_auth_group`
--

CREATE TABLE `ecshecom_auth_group` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_auth_group`
--

INSERT INTO `ecshecom_auth_group` (`id`, `module`, `type`, `title`, `description`, `status`, `rules`) VALUES
(2, 'admin', 1, '财务管理组', '拥有网站资金相关的权限', -1, '431'),
(3, 'admin', 1, '超级管理员', '超级管理员组,拥有系统所有权限', 1, '424,426,431,433,434,435,436,437,438,439,440,441,443,444,445,446,447,448,449,450,451,452,453,454,455,456,458,459,460,461,462,463,465,466,467,469,470,471,473,474,475,476,477,479,480,481,482,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549'),
(4, 'admin', 1, '资讯管理员', '拥有网站文章资讯相关权限11', -1, ''),
(5, 'admin', 1, '资讯管理员', '拥有网站文章资讯相关权限', 1, ''),
(6, 'admin', 1, '财务管理组', '拥有网站资金相关的权限333', 1, '1671,1686,1687,1740,1741,1742,1743,1763,1765,1779,1780,1805,1806,1826,1827,1828,1832,1840,1841'),
(10, 'admin', 1, '财务管理组', '拥有网站资金相关的权限333', 1, ''),
(11, 'admin', 1, 'ceshi', '', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_auth_group_access`
--

CREATE TABLE `ecshecom_auth_group_access` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) UNSIGNED NOT NULL COMMENT '用户组id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_auth_group_access`
--

INSERT INTO `ecshecom_auth_group_access` (`uid`, `group_id`) VALUES
(1, 11),
(2, 3),
(3, 2);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_auth_rule`
--

CREATE TABLE `ecshecom_auth_rule` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_auth_rule`
--

INSERT INTO `ecshecom_auth_rule` (`id`, `module`, `type`, `name`, `title`, `status`, `condition`) VALUES
(425, 'admin', 1, 'Admin/article/add', '新增', -1, ''),
(427, 'admin', 1, 'Admin/article/setStatus', '改变状态', -1, ''),
(428, 'admin', 1, 'Admin/article/update', '保存', -1, ''),
(429, 'admin', 1, 'Admin/article/autoSave', '保存草稿', -1, ''),
(430, 'admin', 1, 'Admin/article/move', '移动', -1, ''),
(432, 'admin', 2, 'Admin/Article/mydocument', '内容', -1, ''),
(437, 'admin', 1, 'Admin/Trade/config', '交易配置', -1, ''),
(449, 'admin', 1, 'Admin/Index/operate', '市场统计', -1, ''),
(455, 'admin', 1, 'Admin/Issue/config', '认购配置', -1, ''),
(457, 'admin', 1, 'Admin/Index/database/type/export', '数据备份', -1, ''),
(461, 'admin', 1, 'Admin/Article/chat', '聊天列表', -1, ''),
(464, 'admin', 1, 'Admin/Index/database/type/import', '数据还原', -1, ''),
(471, 'admin', 1, 'Admin/Mytx/config', '提现配置', -1, ''),
(472, 'admin', 2, 'Admin/Mytx/index', '提现', -1, ''),
(473, 'admin', 1, 'Admin/Config/market', '市场配置', -1, ''),
(477, 'admin', 1, 'Admin/User/myzr', '转入虚拟币', -1, ''),
(479, 'admin', 1, 'Admin/User/myzc', '转出虚拟币', -1, ''),
(482, 'admin', 2, 'Admin/ExtA/index', '扩展', -1, ''),
(488, 'admin', 1, 'Admin/Auth_manager/createGroup', '新增用户组', -1, ''),
(499, 'admin', 1, 'Admin/ExtA/index', '扩展管理', -1, ''),
(509, 'admin', 1, 'Admin/Article/adver_edit', '编辑', -1, ''),
(510, 'admin', 1, 'Admin/Article/adver_status', '修改', -1, ''),
(513, 'admin', 1, 'Admin/Issue/index_edit', '认购编辑', -1, ''),
(514, 'admin', 1, 'Admin/Issue/index_status', '认购修改', -1, ''),
(515, 'admin', 1, 'Admin/Article/chat_edit', '编辑', -1, ''),
(516, 'admin', 1, 'Admin/Article/chat_status', '修改', -1, ''),
(517, 'admin', 1, 'Admin/User/coin_edit', 'coin修改', -1, ''),
(519, 'admin', 1, 'Admin/Mycz/type_status', '状态修改', -1, ''),
(520, 'admin', 1, 'Admin/Issue/log_status', '认购状态', -1, ''),
(521, 'admin', 1, 'Admin/Issue/log_jiedong', '认购解冻', -1, ''),
(522, 'admin', 1, 'Admin/Tools/database/type/export', '数据备份', -1, ''),
(525, 'admin', 1, 'Admin/Config/coin_edit', '编辑', -1, ''),
(526, 'admin', 1, 'Admin/Config/coin_add', '编辑币种', -1, ''),
(527, 'admin', 1, 'Admin/Config/coin_status', '状态修改', -1, ''),
(528, 'admin', 1, 'Admin/Config/market_edit', '编辑', -1, ''),
(530, 'admin', 1, 'Admin/Tools/database/type/import', '数据还原', -1, ''),
(541, 'admin', 2, 'Admin/Trade/config', '交易', -1, ''),
(569, 'admin', 1, 'Admin/ADVERstatus', '修改', -1, ''),
(570, 'admin', 1, 'Admin/Tradelog/index', '交易记录', -1, ''),
(585, 'admin', 1, 'Admin/Config/mycz', '充值配置', -1, ''),
(590, 'admin', 1, 'Admin/Mycztype/index', '充值类型', -1, ''),
(600, 'admin', 1, 'Admin/Usergoods/index', '用户联系地址', -1, ''),
(1379, 'admin', 1, 'Admin/Bazaar/index', '集市管理', -1, ''),
(1405, 'admin', 1, 'Admin/Bazaar/config', '集市配置', -1, ''),
(1425, 'admin', 1, 'Admin/Bazaar/log', '集市记录', -1, ''),
(1451, 'admin', 1, 'Admin/Bazaar/invit', '集市推广', -1, ''),
(1846, 'admin', 1, 'Admin/AuthManager/createGroup', '新增用户组', 1, ''),
(1847, 'admin', 1, 'Admin/AuthManager/editgroup', '编辑用户组', 1, ''),
(1848, 'admin', 1, 'Admin/AuthManager/writeGroup', '更新用户组', 1, ''),
(1849, 'admin', 1, 'Admin/AuthManager/changeStatus', '改变状态', 1, ''),
(1850, 'admin', 1, 'Admin/AuthManager/access', '访问授权', 1, ''),
(1851, 'admin', 1, 'Admin/AuthManager/category', '分类授权', 1, ''),
(1852, 'admin', 1, 'Admin/AuthManager/user', '成员授权', 1, ''),
(1853, 'admin', 1, 'Admin/AuthManager/tree', '成员列表授权', 1, ''),
(1854, 'admin', 1, 'Admin/AuthManager/group', '用户组', 1, ''),
(1855, 'admin', 1, 'Admin/AuthManager/addToGroup', '添加到用户组', 1, ''),
(1856, 'admin', 1, 'Admin/AuthManager/removeFromGroup', '用户组移除', 1, ''),
(1857, 'admin', 1, 'Admin/AuthManager/addToCategory', '分类添加到用户组', 1, ''),
(1858, 'admin', 1, 'Admin/AuthManager/addToModel', '模型添加到用户组', 1, ''),
(1859, 'admin', 1, 'Admin/Trade/status', '修改状态', 1, ''),
(1860, 'admin', 1, 'Admin/Trade/chexiao', '撤销挂单', 1, ''),
(1861, 'admin', 1, 'Admin/Shop/images', '图片', 1, ''),
(1862, 'admin', 1, 'Admin/Login/index', '用户登录', 1, ''),
(1863, 'admin', 1, 'Admin/Login/loginout', '用户退出', 1, ''),
(1864, 'admin', 1, 'Admin/User/setpwd', '修改管理员密码', 1, ''),
(1865, 'admin', 2, 'Admin/Index/index', '系统', 1, ''),
(1866, 'admin', 2, 'Admin/Article/index', '内容', 1, ''),
(1867, 'admin', 2, 'Admin/User/index', '用户', 1, ''),
(1868, 'admin', 2, 'Admin/Finance/index', '财务', 1, ''),
(1869, 'admin', 2, 'Admin/Trade/index', '交易', 1, ''),
(1870, 'admin', 2, 'Admin/Game/index', '应用', 1, ''),
(1871, 'admin', 2, 'Admin/Config/index', '设置', 1, ''),
(1872, 'admin', 2, 'Admin/Operate/index', '运营', 1, ''),
(1873, 'admin', 2, 'Admin/Tools/index', '工具', 1, ''),
(1874, 'admin', 2, 'Admin/Cloud/index', '扩展', 1, ''),
(1875, 'admin', 1, 'Admin/Index/index', '系统概览', 1, ''),
(1876, 'admin', 1, 'Admin/Article/index', '文章管理', 1, ''),
(1877, 'admin', 1, 'Admin/Article/edit', '编辑添加', 1, ''),
(1878, 'admin', 1, 'Admin/Text/index', '提示文字', 1, ''),
(1879, 'admin', 1, 'Admin/Text/edit', '编辑', 1, ''),
(1880, 'admin', 1, 'Admin/Text/status', '修改', 1, ''),
(1881, 'admin', 1, 'Admin/User/index', '用户管理', 1, ''),
(1882, 'admin', 1, 'Admin/User/config', '用户配置', 1, ''),
(1883, 'admin', 1, 'Admin/Finance/index', '财务明细', 1, ''),
(1884, 'admin', 1, 'Admin/Finance/myczTypeEdit', '编辑添加', 1, ''),
(1885, 'admin', 1, 'Admin/Finance/config', '配置', 1, ''),
(1886, 'admin', 1, 'Admin/Tools/index', '清理缓存', 1, ''),
(1887, 'admin', 1, 'Admin/Finance/type', '类型', 1, ''),
(1888, 'admin', 1, 'Admin/Finance/type_status', '状态修改', 1, ''),
(1889, 'admin', 1, 'Admin/User/edit', '编辑添加', 1, ''),
(1890, 'admin', 1, 'Admin/User/status', '修改状态', 1, ''),
(1891, 'admin', 1, 'Admin/User/adminEdit', '编辑添加', 1, ''),
(1892, 'admin', 1, 'Admin/User/adminStatus', '修改状态', 1, ''),
(1893, 'admin', 1, 'Admin/User/authEdit', '编辑添加', 1, ''),
(1894, 'admin', 1, 'Admin/User/authStatus', '修改状态', 1, ''),
(1895, 'admin', 1, 'Admin/User/authStart', '重新初始化权限', 1, ''),
(1896, 'admin', 1, 'Admin/User/logEdit', '编辑添加', 1, ''),
(1897, 'admin', 1, 'Admin/User/logStatus', '修改状态', 1, ''),
(1898, 'admin', 1, 'Admin/User/qianbaoEdit', '编辑添加', 1, ''),
(1899, 'admin', 1, 'Admin/Trade/index', '委托管理', 1, ''),
(1900, 'admin', 1, 'Admin/User/qianbaoStatus', '修改状态', 1, ''),
(1901, 'admin', 1, 'Admin/User/bankEdit', '编辑添加', 1, ''),
(1902, 'admin', 1, 'Admin/User/bankStatus', '修改状态', 1, ''),
(1903, 'admin', 1, 'Admin/User/coinEdit', '编辑添加', 1, ''),
(1904, 'admin', 1, 'Admin/User/coinLog', '财产统计', 1, ''),
(1905, 'admin', 1, 'Admin/User/goodsEdit', '编辑添加', 1, ''),
(1906, 'admin', 1, 'Admin/User/goodsStatus', '修改状态', 1, ''),
(1907, 'admin', 1, 'Admin/Article/typeEdit', '编辑添加', 1, ''),
(1908, 'admin', 1, 'Admin/Article/linkEdit', '编辑添加', 1, ''),
(1909, 'admin', 1, 'Admin/Config/index', '基本配置', 1, ''),
(1910, 'admin', 1, 'Admin/Article/adverEdit', '编辑添加', 1, ''),
(1911, 'admin', 1, 'Admin/User/authAccess', '访问授权', 1, ''),
(1912, 'admin', 1, 'Admin/User/authAccessUp', '访问授权修改', 1, ''),
(1913, 'admin', 1, 'Admin/User/authUser', '成员授权', 1, ''),
(1914, 'admin', 1, 'Admin/User/authUserAdd', '成员授权增加', 1, ''),
(1915, 'admin', 1, 'Admin/User/authUserRemove', '成员授权解除', 1, ''),
(1916, 'admin', 1, 'Admin/Operate/index', '推广奖励', 1, ''),
(1917, 'admin', 1, 'Admin/App/config', 'APP配置', 1, ''),
(1918, 'admin', 1, 'AdminUser/detail', '后台用户详情', 1, ''),
(1919, 'admin', 1, 'AdminUser/status', '后台用户状态', 1, ''),
(1920, 'admin', 1, 'AdminUser/add', '后台用户新增', 1, ''),
(1921, 'admin', 1, 'AdminUser/edit', '后台用户编辑', 1, ''),
(1922, 'admin', 1, 'Admin/Articletype/edit', '编辑', 1, ''),
(1923, 'admin', 1, 'Admin/Shop/index', '商品管理', 1, ''),
(1924, 'admin', 1, 'Admin/Huafei/index', '充值记录', 1, ''),
(1925, 'admin', 1, 'Admin/Huafei/config', '充值配置', 1, ''),
(1926, 'admin', 1, 'Admin/Vote/index', '投票记录', 1, ''),
(1927, 'admin', 1, 'Admin/Vote/type', '投票类型', 1, ''),
(1928, 'admin', 1, 'Admin/Money/index', '理财管理', 1, ''),
(1929, 'admin', 1, 'Admin/Issue/index', '认购管理', 1, ''),
(1930, 'admin', 1, 'Admin/Issue/log', '认购记录', 1, ''),
(1931, 'admin', 1, 'Admin/Article/images', '上传图片', 1, ''),
(1932, 'admin', 1, 'Admin/Adver/edit', '编辑', 1, ''),
(1933, 'admin', 1, 'Admin/Adver/status', '修改', 1, ''),
(1934, 'admin', 1, 'Admin/Article/type', '文章类型', 1, ''),
(1935, 'admin', 1, 'Admin/User/index_edit', '编辑', 1, ''),
(1936, 'admin', 1, 'Admin/User/index_status', '修改', 1, ''),
(1937, 'admin', 1, 'Admin/Finance/mycz', '人民币充值', 1, ''),
(1938, 'admin', 1, 'Admin/Finance/myczTypeStatus', '状态修改', 1, ''),
(1939, 'admin', 1, 'Admin/Finance/myczTypeImage', '上传图片', 1, ''),
(1940, 'admin', 1, 'Admin/Finance/mytxStatus', '修改状态', 1, ''),
(1941, 'admin', 1, 'Admin/Tools/dataExport', '备份数据库', 1, ''),
(1942, 'admin', 1, 'Admin/Tools/dataImport', '还原数据库', 1, ''),
(1943, 'admin', 1, 'Admin/User/admin', '管理员管理', 1, ''),
(1944, 'admin', 1, 'Admin/Trade/log', '成交记录', 1, ''),
(1945, 'admin', 1, 'Admin/Issue/edit', '认购编辑', 1, ''),
(1946, 'admin', 1, 'Admin/Issue/status', '认购修改', 1, ''),
(1947, 'admin', 1, 'Admin/Config/moble', '短信配置', 1, ''),
(1948, 'admin', 1, 'Admin/Invit/config', '推广配置', 1, ''),
(1949, 'admin', 1, 'Admin/App/vip_config_list', 'APP等级', 1, ''),
(1950, 'admin', 1, 'Admin/Link/edit', '编辑', 1, ''),
(1951, 'admin', 1, 'Admin/Link/status', '修改', 1, ''),
(1952, 'admin', 1, 'Admin/Index/coin', '币种统计', 1, ''),
(1953, 'admin', 1, 'Admin/Shop/config', '商城配置', 1, ''),
(1954, 'admin', 1, 'Admin/Money/log', '理财日志', 1, ''),
(1955, 'admin', 1, 'Admin/Index/market', '市场统计', 1, ''),
(1956, 'admin', 1, 'Admin/Chat/edit', '编辑', 1, ''),
(1957, 'admin', 1, 'Admin/Chat/status', '修改', 1, ''),
(1958, 'admin', 1, 'Admin/Article/adver', '广告管理', 1, ''),
(1959, 'admin', 1, 'Admin/Trade/chat', '交易聊天', 1, ''),
(1960, 'admin', 1, 'Admin/Finance/myczType', '人民币充值方式', 1, ''),
(1961, 'admin', 1, 'Admin/Usercoin/edit', '财产修改', 1, ''),
(1962, 'admin', 1, 'Admin/Finance/mytxExcel', '导出选中', 1, ''),
(1963, 'admin', 1, 'Admin/User/auth', '权限列表', 1, ''),
(1964, 'admin', 1, 'Admin/Mycz/status', '修改', 1, ''),
(1965, 'admin', 1, 'Admin/Mycztype/status', '状态修改', 1, ''),
(1966, 'admin', 1, 'Admin/Config/contact', '客服配置', 1, ''),
(1967, 'admin', 1, 'Admin/App/adsblock_list', 'APP广告板块', 1, ''),
(1968, 'admin', 1, 'Admin/Tools/queue', '服务器队列', 1, ''),
(1969, 'admin', 1, 'Admin/Tools/qianbao', '钱包检查', 1, ''),
(1970, 'admin', 1, 'Admin/Shop/type', '商品类型', 1, ''),
(1971, 'admin', 1, 'Admin/Fenhong/index', '分红管理', 1, ''),
(1972, 'admin', 1, 'Admin/Huafei/type', '充值金额', 1, ''),
(1973, 'admin', 1, 'Admin/Money/fee', '理财明细', 1, ''),
(1974, 'admin', 1, 'Admin/Article/link', '友情链接', 1, ''),
(1975, 'admin', 1, 'Admin/User/log', '登陆日志', 1, ''),
(1976, 'admin', 1, 'Admin/Finance/mytx', '人民币提现', 1, ''),
(1977, 'admin', 1, 'Admin/Finance/mytxChuli', '正在处理', 1, ''),
(1978, 'admin', 1, 'Admin/Config/bank', '银行配置', 1, ''),
(1979, 'admin', 1, 'Admin/Config/bank_edit', '编辑', 1, ''),
(1980, 'admin', 1, 'Admin/Coin/edit', '编辑', 1, ''),
(1981, 'admin', 1, 'Admin/Coin/status', '状态修改', 1, ''),
(1982, 'admin', 1, 'Admin/Market/edit', '编辑市场', 1, ''),
(1983, 'admin', 1, 'Admin/Config/market_add', '状态修改', 1, ''),
(1984, 'admin', 1, 'Admin/Tools/invoke', '其他模块调用', 1, ''),
(1985, 'admin', 1, 'Admin/Tools/optimize', '优化表', 1, ''),
(1986, 'admin', 1, 'Admin/Tools/repair', '修复表', 1, ''),
(1987, 'admin', 1, 'Admin/Tools/del', '删除备份文件', 1, ''),
(1988, 'admin', 1, 'Admin/Tools/export', '备份数据库', 1, ''),
(1989, 'admin', 1, 'Admin/Tools/import', '还原数据库', 1, ''),
(1990, 'admin', 1, 'Admin/Tools/excel', '导出数据库', 1, ''),
(1991, 'admin', 1, 'Admin/Tools/exportExcel', '导出Excel', 1, ''),
(1992, 'admin', 1, 'Admin/Tools/importExecl', '导入Excel', 1, ''),
(1993, 'admin', 1, 'Admin/Config/coin', '币种配置', 1, ''),
(1994, 'admin', 1, 'Admin/User/detail', '用户详情', 1, ''),
(1995, 'admin', 1, 'Admin/App/ads_user', 'APP广告用户', 1, ''),
(1996, 'admin', 1, 'Admin/Cloud/theme', '主题模板', 1, ''),
(1997, 'admin', 1, 'Admin/Shop/coin', '付款方式', 1, ''),
(1998, 'admin', 1, 'Admin/Huafei/coin', '付款方式', 1, ''),
(1999, 'admin', 1, 'Admin/Trade/comment', '币种评论', 1, ''),
(2000, 'admin', 1, 'Admin/User/qianbao', '用户钱包', 1, ''),
(2001, 'admin', 1, 'Admin/Trade/market', '交易市场', 1, ''),
(2002, 'admin', 1, 'Admin/Finance/mytxConfig', '人民币提现配置', 1, ''),
(2003, 'admin', 1, 'Admin/Finance/mytxChexiao', '撤销提现', 1, ''),
(2004, 'admin', 1, 'Admin/Mytx/status', '状态修改', 1, ''),
(2005, 'admin', 1, 'Admin/Mytx/excel', '取消', 1, ''),
(2006, 'admin', 1, 'Admin/Mytx/exportExcel', '导入excel', 1, ''),
(2007, 'admin', 1, 'Admin/Menu/index', '菜单管理', 1, ''),
(2008, 'admin', 1, 'Admin/Menu/sort', '排序', 1, ''),
(2009, 'admin', 1, 'Admin/Menu/add', '添加', 1, ''),
(2010, 'admin', 1, 'Admin/Menu/edit', '编辑', 1, ''),
(2011, 'admin', 1, 'Admin/Cloud/kefu', '客服代码', 1, ''),
(2012, 'admin', 1, 'Admin/Menu/del', '删除', 1, ''),
(2013, 'admin', 1, 'Admin/Cloud/kefuUp', '使用', 1, ''),
(2014, 'admin', 1, 'Admin/Menu/toogleHide', '是否隐藏', 1, ''),
(2015, 'admin', 1, 'Admin/Menu/toogleDev', '是否开发', 1, ''),
(2016, 'admin', 1, 'Admin/Menu/importFile', '导入文件', 1, ''),
(2017, 'admin', 1, 'Admin/Menu/import', '导入', 1, ''),
(2018, 'admin', 1, 'Admin/Config/text', '提示文字', 1, ''),
(2019, 'admin', 1, 'Admin/Shop/log', '购物记录', 1, ''),
(2020, 'admin', 1, 'Admin/Fenhong/log', '分红记录', 1, ''),
(2021, 'admin', 1, 'Admin/User/bank', '提现地址', 1, ''),
(2022, 'admin', 1, 'Admin/Trade/invit', '交易推荐', 1, ''),
(2023, 'admin', 1, 'Admin/Finance/myzr', '虚拟币转入', 1, ''),
(2024, 'admin', 1, 'Admin/Finance/mytxQueren', '确认提现', 1, ''),
(2025, 'admin', 1, 'Admin/Finance/myzcQueren', '确认转出', 1, ''),
(2026, 'admin', 1, 'Admin/Config/qita', '其他配置', 1, ''),
(2027, 'admin', 1, 'Admin/Shop/goods', '收货地址', 1, ''),
(2028, 'admin', 1, 'Admin/User/coin', '用户财产', 1, ''),
(2029, 'admin', 1, 'Admin/Finance/myzc', '虚拟币转出', 1, ''),
(2030, 'admin', 1, 'Admin/Verify/code', '图形验证码', 1, ''),
(2031, 'admin', 1, 'Admin/Verify/mobile', '手机验证码', 1, ''),
(2032, 'admin', 1, 'Admin/Verify/email', '邮件验证码', 1, ''),
(2033, 'admin', 1, 'Admin/Config/daohang', '导航配置', 1, ''),
(2034, 'admin', 1, 'Admin/User/goods', '联系地址', 1, ''),
(2035, 'admin', 1, 'Admin/User/myzc_qr', '确认转出', 1, ''),
(2036, 'admin', 1, 'Admin/Article/status', '修改状态', 1, ''),
(2037, 'admin', 1, 'Admin/Finance/myczStatus', '修改状态', 1, ''),
(2038, 'admin', 1, 'Admin/Finance/myczQueren', '确认到账', 1, ''),
(2039, 'admin', 1, 'Admin/Article/typeStatus', '修改状态', 1, ''),
(2040, 'admin', 1, 'Admin/Article/linkStatus', '修改状态', 1, ''),
(2041, 'admin', 1, 'Admin/Article/adverStatus', '修改状态', 1, ''),
(2042, 'admin', 1, 'Admin/Article/adverImage', '上传图片', 1, ''),
(2043, 'admin', 1, 'Admin/User/award', '中奖管理', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_bazaar`
--

CREATE TABLE `ecshecom_bazaar` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `coin` varchar(50) NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL,
  `num` decimal(20,8) UNSIGNED NOT NULL,
  `deal` decimal(20,8) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `fee` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='集市交易表';

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_bazaar_config`
--

CREATE TABLE `ecshecom_bazaar_config` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `market` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '市场名称',
  `price_min` decimal(20,8) UNSIGNED NOT NULL COMMENT '最小交易价格',
  `price_max` decimal(20,8) UNSIGNED NOT NULL COMMENT '最大交易价格',
  `num_mix` decimal(20,8) UNSIGNED NOT NULL COMMENT '最小交易数量',
  `num_max` decimal(20,8) UNSIGNED NOT NULL COMMENT '最大交易数量',
  `invit_coin` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '上家赠送币种',
  `invit_1` decimal(20,8) UNSIGNED NOT NULL COMMENT '一代赠送比例',
  `invit_2` decimal(20,8) UNSIGNED NOT NULL COMMENT '二代赠送比例',
  `invit_3` decimal(20,8) UNSIGNED NOT NULL COMMENT '三代赠送比例',
  `fee` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '手续费',
  `default` tinyint(2) UNSIGNED NOT NULL COMMENT '默认',
  `sort` int(11) UNSIGNED NOT NULL COMMENT '排序',
  `addtime` int(11) UNSIGNED NOT NULL COMMENT '添加时间',
  `endtime` int(11) UNSIGNED NOT NULL COMMENT '编辑时间',
  `status` tinyint(2) UNSIGNED NOT NULL COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_bazaar_invit`
--

CREATE TABLE `ecshecom_bazaar_invit` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `invit` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `num` decimal(20,8) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `fee` decimal(20,8) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_bazaar_log`
--

CREATE TABLE `ecshecom_bazaar_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `peerid` int(11) UNSIGNED NOT NULL,
  `coin` varchar(50) NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL,
  `num` decimal(20,8) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `fee` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='集市交易记录表';

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_category`
--

CREATE TABLE `ecshecom_category` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '分类ID',
  `name` varchar(30) NOT NULL COMMENT '标志',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `list_row` tinyint(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT '列表每页行数',
  `meta_title` varchar(50) NOT NULL DEFAULT '' COMMENT 'SEO的网页标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template_index` varchar(100) NOT NULL COMMENT '频道页模板',
  `template_lists` varchar(100) NOT NULL COMMENT '列表页模板',
  `template_detail` varchar(100) NOT NULL COMMENT '详情页模板',
  `template_edit` varchar(100) NOT NULL COMMENT '编辑页模板',
  `model` varchar(100) NOT NULL DEFAULT '' COMMENT '关联模型',
  `type` varchar(100) NOT NULL DEFAULT '' COMMENT '允许发布的内容类型',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '外链',
  `allow_publish` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否允许发布内容',
  `display` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '可见性',
  `reply` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否允许回复',
  `check` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发布的文章是否需要审核',
  `reply_model` varchar(100) NOT NULL DEFAULT '',
  `extend` text NOT NULL COMMENT '扩展设置',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `icon` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类图标'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_category`
--

INSERT INTO `ecshecom_category` (`id`, `name`, `title`, `pid`, `sort`, `list_row`, `meta_title`, `keywords`, `description`, `template_index`, `template_lists`, `template_detail`, `template_edit`, `model`, `type`, `link_id`, `allow_publish`, `display`, `reply`, `check`, `reply_model`, `extend`, `create_time`, `update_time`, `status`, `icon`) VALUES
(1, 'blog', '博客', 0, 0, 10, '', '', '', '', '', '', '', '2', '2,1', 0, 0, 1, 0, 0, '1', '', 1379474947, 1382701539, 1, 0),
(2, 'default_blog', '默认分类', 1, 1, 10, '', '', '', '', '', '', '', '2', '2,1,3', 0, 1, 1, 0, 1, '1', '', 1379475028, 1386839751, 1, 31);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_chat`
--

CREATE TABLE `ecshecom_chat` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文字聊天表' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_coin`
--

CREATE TABLE `ecshecom_coin` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `fee_bili` varchar(50) NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL COMMENT '',
  `addtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) UNSIGNED NOT NULL,
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
  `qq3479015851_coinaddress` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='币种配置表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_coin`
--

INSERT INTO `ecshecom_coin` (`id`, `name`, `type`, `title`, `img`, `sort`, `fee_bili`, `endtime`, `addtime`, `status`, `fee_meitian`, `dj_zj`, `dj_dk`, `dj_yh`, `dj_mm`, `zr_zs`, `zr_jz`, `zr_dz`, `zr_sm`, `zc_sm`, `zc_fee`, `zc_user`, `zc_min`, `zc_max`, `zc_jz`, `zc_zd`, `js_yw`, `js_sm`, `js_qb`, `js_ym`, `js_gw`, `js_lt`, `js_wk`, `cs_yf`, `cs_sf`, `cs_fb`, `cs_qk`, `cs_zl`, `cs_cl`, `cs_zm`, `cs_nd`, `cs_jl`, `cs_ts`, `cs_bz`, `tp_zs`, `tp_js`, `tp_yy`, `tp_qj`, `qq3479015851_coinaddress`) VALUES
(2, 'bxb', 'rgb', '张飞币', '593f95da623a7.png', 0, '100', 0, 0, 1, '100', '', '', '', '', '0', '1', '0', '', '', '0', '', '0', '10000', '1', '15', 'zhangfeibi', '', 'http://www.coin78.com/bxgcoin.exe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'BTEHmWQYexEjvtJBwjLb1wewE4E17dVSZ9'),
(1, 'cny', 'rmb', '人民币', 'cny.png', 0, '', 0, 0, 1, '', '182.254.134.191', '0', '0', '0', '0', '1', '0', '0', '0', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'glc', 'rgb', '绿地币', '5955c54c511ab.png', 0, '100', 0, 0, 1, '100', '', '', '', '', '0', '1', '0', '', '', '0', '', '0', '10000', '1', '10', 'Greenland Coin', '<span style="color:#444444;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;">绿地币(Greenland Coin)是由Aizensou为首的研发团队开发，通过<span style="color:#444444;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;">protocol</span>协议来保障账务隐私，使用知识证明确保了交易双方的相关地址信息免遭泄露。 相比于早期实现匿名功能的混币技术和环签技术，绿地币证明的<span style="color:#444444;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;">protocol</span>协议解决了前二者的不足，完全切断了铸造所得的币和赎回的币之间的联系。<span style="color:#333333;font-family:''Microsoft YaHei'', 微软雅黑, arial, Tahoma, SimSun, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;">其独特算法可以有效防止专用矿机挖矿，做到更好的去中心化，同时能够有效避免51%攻击。</span></span>', 'https://www.jubi.com/coin/vtc/view.html', 'https://github.com/vertcoin/vertcoin', 'http://zcoin.io/zh/', 'https://www.vertcoin.org/', 'https://bitcointalk.org/index.php?topic=404364.0', 'Aizensou', 'Scrypt', '2017.6.1', '45秒/块', '6000万', '', 'PoW', '', '50', '绿地核心技术团队研发，专注于高端房产区块链开发应用', '', '', '', '', '', ''),
(4, 'abc', 'rgb', '第三方', '5955cb1555df6.png', 0, '100', 0, 0, 1, '100', '', '', '', '', '0', '1', '0', '', '', '0', '', '0', '10000', '1', '10', 'abc', '', '', '', '', '', '', '', '', '', '', '10000', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'twc', 'rgb', '酒真链', '5957238bce9aa.jpg', 0, '0', 0, 0, 1, '', '', '', '', '', '0', '1', '0', '', '', '0', '', '0', '10000', '1', '10', 'Ture Wine Chain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_coin_comment`
--

CREATE TABLE `ecshecom_coin_comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `cjz` int(11) UNSIGNED NOT NULL,
  `tzy` int(11) UNSIGNED NOT NULL,
  `xcd` int(11) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_coin_json`
--

CREATE TABLE `ecshecom_coin_json` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `ecshecom_coin_json`
--

INSERT INTO `ecshecom_coin_json` (`id`, `name`, `data`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(4, 'bxb', '[20,0,null,null]', '', 0, 1497715199, 0, 0),
(3, 'bxb', '[20,0,null,null]', '', 0, 1497628799, 0, 0),
(5, 'bxb', '[20,0,null,null]', '', 0, 1497801599, 0, 0),
(6, 'bxb', '[20,0,null,null]', '', 0, 1497887999, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_config`
--

CREATE TABLE `ecshecom_config` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `addtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL,
  `shop_coin` varchar(200) NOT NULL COMMENT '计算方式',
  `shop_logo` varchar(200) NOT NULL COMMENT '商城LOGO',
  `shop_login` varchar(200) NOT NULL COMMENT '是否要登陆',
  `index_html` varchar(50) DEFAULT NULL,
  `trade_hangqing` varchar(50) DEFAULT NULL,
  `trade_moshi` varchar(50) DEFAULT NULL,
  `reg_award` varchar(10) DEFAULT NULL,
  `reg_award_coin` varchar(50) DEFAULT NULL,
  `reg_award_num` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统配置表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_config`
--

INSERT INTO `ecshecom_config` (`id`, `footer_logo`, `huafei_zidong`, `kefu`, `huafei_openid`, `huafei_appkey`, `index_lejimum`, `login_verify`, `fee_meitian`, `top_name`, `web_name`, `web_title`, `web_logo`, `web_llogo_small`, `web_keywords`, `web_description`, `web_close`, `web_close_cause`, `web_icp`, `web_cnzz`, `web_ren`, `web_reg`, `market_mr`, `xnb_mr`, `rmb_mr`, `web_waring`, `qq_502182299_issue_waring`, `moble_type`, `moble_url`, `moble_user`, `moble_pwd`, `contact_moble`, `contact_weibo`, `contact_tqq`, `contact_qq`, `contact_qqun`, `contact_weixin`, `contact_weixin_img`, `contact_app_img`, `contact_email`, `contact_alipay`, `contact_alipay_img`, `contact_bank`, `user_truename`, `user_moble`, `user_alipay`, `user_bank`, `user_text_truename`, `user_text_moble`, `user_text_alipay`, `user_text_bank`, `user_text_log`, `user_text_password`, `user_text_paypassword`, `mytx_min`, `mytx_max`, `mytx_bei`, `mytx_coin`, `mytx_fee`, `trade_min`, `trade_max`, `trade_limit`, `trade_text_log`, `issue_ci`, `issue_jian`, `issue_min`, `issue_max`, `money_min`, `money_max`, `money_bei`, `money_text_index`, `money_text_log`, `money_text_type`, `invit_type`, `invit_fee1`, `invit_fee2`, `invit_fee3`, `invit_text_txt`, `invit_text_log`, `index_notice_1`, `index_notice_11`, `index_notice_2`, `index_notice_22`, `index_notice_3`, `index_notice_33`, `index_notice_4`, `index_notice_44`, `text_footer`, `shop_text_index`, `shop_text_log`, `shop_text_addr`, `shop_text_view`, `huafei_text_index`, `huafei_text_log`, `addtime`, `status`, `shop_coin`, `shop_logo`, `shop_login`, `index_html`, `trade_hangqing`, `trade_moshi`, `reg_award`, `reg_award_coin`, `reg_award_num`) VALUES
(1, '597310c282d94.png', '1', 'c', '', '', '0', '0', '', '您好，欢迎来到海通网络-专业数字资产交易平台', '海通网络', '海通网络-专业的区块链数字资产交易平台', '597310ca53412.png', '597310bd5d454.png', '海通网络/比特币/山寨币/虚拟货币/比特币交易/交易平台/数字货币', '海通网络是专业的数字货币交易网，数字资产交易平台，海通网络专注数字货币分发和维持数字资产撮合数字虚拟货币交易为核心，构建安全便捷的数字货币交易平台.', '1', '升级中...', '豫ICP备17006875号', '', '100', '<div style="text-align:center;">\r\n	<div style="text-align:left;">\r\n		根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。海通网络仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在海通网络平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。<br />\r\n<br />\r\n<br />\r\n<br />\r\n请您务必注意以下几点：<br />\r\n<br />\r\n<br />\r\n<br />\r\n1.警惕虚假宣传，不要听信任何币值会永远上涨的宣传，数字货币作为一种虚拟商品，具有极高的风险，很可能出现价值归零的情况。<br />\r\n<br />\r\n2.对于推广和运营方的市场承诺，需要谨慎判别，目前并没有相关法律能保证其兑现承诺，海通网络不会对任何数字货币进行背书和承诺。<br />\r\n<br />\r\n3.坚决拒绝多层次传销组织，在我国参与该类组织是违法行为，造成的一切后果自负，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n4.根据《中华人民共和国反洗钱法》等有关法律规定，严格禁止利用平台进行洗钱等违法犯罪活动，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n5.数字货币和数字积分等虚拟商品所对应的实物财产和持有者享有的权利存在因发行方等义务相关方破产，关闭或违法犯罪等其他经营风险导致无法兑现的风险。<br />\r\n<br />\r\n6.在海通网络注册参与交换的用户，应保证注册身份信息的真实、准确，保证拟交换的数字货币等虚拟商品的来源合法。因信息不真实造成的任何问题，平台概不负责。<br />\r\n<br />\r\n7.因国家法律，法规及政策性文件的制定和修改，导致数字货币等虚拟商品的交易被暂停或者禁止的，由此导致的全部损失由用户自行承担。<br />\r\n<br />\r\n8.请控制风险，不要投入超过您风险承受能力的资金，不要购买您所不了解的数字货币，数字积分等虚拟商品。<br />\r\n<br />\r\n<br />\r\n	</div>\r\n	<div style="text-align:left;">\r\n		<span style="color:#337FE5;"></span> \r\n	</div>\r\n</div>\r\n<p>\r\n	<span style="font-size:10px;color:#E56600;"></span> \r\n</p>', 'abc_cny', 'abc', 'cny', '<p>\r\n	风险警告：根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。海通网络仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在海通网络网平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任，如果您不能接受，请不要进行交易！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '新认购风险提示不投入超过风险承受能力的资金，不投资不了解的数字资产，不听信任何以海通网络名义推荐买币投资的宣传，坚决抵制传销、电信诈骗和洗钱套汇等违法行为。', '1', '短信接口URL', '502182299', '502182299', '502182299', '502182299', '', '502182299', '502182299', '502182299', '597310f399ba4.png', '597310f85b512.png', '83839140@qq.com', '83839140@qq.com', '56f98e6d7245d.jpg', '中国银行|动说科技|0000 0000 0000 0000', '2', '2', '2', '2', '&lt;span&gt;&lt;span&gt;会员您好,务必正确填写好自己的真实姓名和真实身份证号码.&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;会员您好,务必用自己的手机号码进行手机认证,认证以后可以用来接收验证码.&lt;/span&gt;', '&lt;span&gt;会员您好,务必正确填写支付宝 &amp;nbsp;真实姓名（与实名认证姓名相同）和支付宝账号,后期提现唯一依据.&lt;/span&gt;', '&lt;span&gt;会员您好,&lt;/span&gt;&lt;span&gt;&lt;span&gt;务必正确填写银行卡信息 提现唯一依据.&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;自己以往操作和登录及登录地点的相关记录.&lt;/span&gt;', '&lt;span&gt;会员您好,修改登录密码以后请不要忘记.若不记得旧登录密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '&lt;span&gt;会员您好,修改交易密码以后请不要忘记.若不记得旧交易密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '100', '50000', '100', 'cny', '1', '1', '10000000', '10', '&lt;span&gt;&lt;span&gt;你委托买入或者卖出成功交易后的记录.&lt;/span&gt;&lt;/span&gt;', '5', '24', '1', '100000', '100', '100000', '100', '理财首页', '理财记录', '理财类型', '1', '5', '3', '2', '最火爆的数字货币交易网站-海通网络', '&lt;span&gt;&lt;span&gt;查看自己推广的好友,请点击&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;“+”&lt;/span&gt;&lt;span&gt;,同时正确引导好友实名认证以及买卖,赚取推广收益和交易手续费.&lt;/span&gt;&lt;/span&gt;', '系统可靠', '银行级用户数据加密、动态身份验证多级风险识别控制，保障交易安全', '系统可靠', '账户多层加密，分布式服务器离线存储，即时隔离备份数据，确保安全', '快捷方便', '充值即时、提现迅速，每秒万单的高性能交易引擎，保证一切快捷方便', '服务专业', '热忱的客服工作人员和24小时的技术团队随时为您的账户安全保驾护航', '&lt;p&gt;\r\n	&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;lt;a href=&quot;&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;&quot;&amp;gt;关于我们&amp;lt;/a&amp;gt;\r\n&lt;/p&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;联系我们&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;资质证明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;用户协议&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;法律声明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;p style=&quot;margin-top: 5px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\nCopyright &amp;copy; 2016&lt;br /&gt;\r\n&amp;lt;a href=&quot;/&quot;&amp;gt;{$C[''web_name'']}交易平台 &amp;lt;/a&amp;gt;&lt;br /&gt;\r\nAll Rights Reserved.&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot;&amp;gt;{$C[''web_icp'']}&amp;lt;/a&amp;gt;{$C[''web_cnzz'']|htmlspecialchars_decode}&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;\r\n&amp;lt;p class=&quot;clear1&quot; id=&quot;ut646&quot; style=&quot;margin-top: 10px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://webscan.360.cn/index/checkwebsite/url/www.zuocoin.com&quot; target=&quot;_blank&quot;&amp;gt;&amp;lt;img border=&quot;0&quot; width=&quot;83&quot; height=&quot;31&quot; src=&quot;http://img.webscan.360.cn/status/pai/hash/a272bae5f02b1df25be2c1d9d0b251f7&quot;/&amp;gt;&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.szfw.org/&quot; target=&quot;_blank&quot; id=&quot;ut118&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_2.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot; target=&quot;_blank&quot; id=&quot;ut119&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_3.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.cyberpolice.cn/&quot; target=&quot;_blank&quot; id=&quot;ut120&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_4.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;', '', '', '', '', '', '', 1467383018, 0, '', '/Upload/shop/591d36d289371.png', '0', 'b', '1', '1', '0', 'abc', 10);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_daohang`
--

CREATE TABLE `ecshecom_daohang` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `url` varchar(255) NOT NULL COMMENT 'url',
  `sort` int(11) UNSIGNED NOT NULL COMMENT '排序',
  `addtime` int(11) UNSIGNED NOT NULL COMMENT '添加时间',
  `endtime` int(11) UNSIGNED NOT NULL COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_daohang`
--

INSERT INTO `ecshecom_daohang` (`id`, `name`, `title`, `url`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'finance', '财务中心', 'Finance/index', 1, 0, 0, 1),
(2, 'user', '安全中心', 'User/index', 2, 0, 0, 1),
(3, 'Issue', '应用中心', 'Issue/index', 3, 0, 0, 1),
(4, 'article', '官方公告', 'Article/index', 7, 0, 0, 1),
(6, 'shop', '购物中心', 'Shop/index', 5, 0, 0, 0),
(7, 'vote', '新币投票', 'Vote/index', 6, 0, 0, 0),
(8, 'Issue', 'ICO众筹', 'Issue/index', 4, 1474183878, 0, 1),
(9, '推广返佣', '推广返佣', 'promote/index.html', 4, 1480423054, 0, -1),
(10, 'article', '公告中心', 'Article/index', 0, 1480823236, 0, -1),
(11, 'THC夺宝岛', 'THC夺宝岛', 'Duobao\\index.html', 5, 1481470482, 0, -1),
(12, '欢乐抽奖', '欢乐抽奖', 'award/index.html', 5, 1482891983, 0, -1),
(13, 'dc', '下载中心', 'http://www.coin78.com/Article/type/id/15.html', 0, 1497597792, 0, -1),
(14, 'bc', '币兴股钱包下载', 'bxgcoin.exe ', 8, 1497598579, 0, -1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_fenhong`
--

CREATE TABLE `ecshecom_fenhong` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `num` decimal(20,8) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecshecom_fenhong`
--

INSERT INTO `ecshecom_fenhong` (`id`, `name`, `coinname`, `coinjian`, `num`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, '1111', 'glc', 'glc', '1.00000000', 1, 1500307200, 1500825600, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_fenhong_log`
--

CREATE TABLE `ecshecom_fenhong_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `fenzong` varchar(50) NOT NULL,
  `fenchi` varchar(50) NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL,
  `num` decimal(20,8) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL COMMENT '用户id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_finance`
--

CREATE TABLE `ecshecom_finance` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `userid` int(11) UNSIGNED NOT NULL COMMENT '用户id',
  `coinname` varchar(50) NOT NULL COMMENT '币种',
  `num_a` decimal(20,8) UNSIGNED NOT NULL COMMENT '之前正常',
  `num_b` decimal(20,8) UNSIGNED NOT NULL COMMENT '之前冻结',
  `num` decimal(20,8) UNSIGNED NOT NULL COMMENT '之前总计',
  `fee` decimal(20,8) UNSIGNED NOT NULL COMMENT '操作数量',
  `type` varchar(50) NOT NULL COMMENT '操作类型',
  `name` varchar(50) NOT NULL COMMENT '操作名称',
  `nameid` int(11) NOT NULL COMMENT '操作详细',
  `remark` varchar(50) NOT NULL COMMENT '操作备注',
  `mum_a` decimal(20,8) UNSIGNED NOT NULL COMMENT '剩余正常',
  `mum_b` decimal(20,8) UNSIGNED NOT NULL COMMENT '剩余冻结',
  `mum` decimal(20,8) UNSIGNED NOT NULL COMMENT '剩余总计',
  `move` varchar(50) NOT NULL COMMENT '附加',
  `addtime` int(11) UNSIGNED NOT NULL COMMENT '添加时间',
  `status` tinyint(4) UNSIGNED NOT NULL COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='财务记录表';

--
-- 转存表中的数据 `ecshecom_finance`
--

INSERT INTO `ecshecom_finance` (`id`, `userid`, `coinname`, `num_a`, `num_b`, `num`, `fee`, `type`, `name`, `nameid`, `remark`, `mum_a`, `mum_b`, `mum`, `move`, `addtime`, `status`) VALUES
(1, 1, 'cny', '0.00000000', '0.00000000', '0.00000000', '100.21000000', '1', 'mycz', 1, '人民币充值-人工到账', '100.21000000', '0.00000000', '100.21000000', '09a9378a980659138c125656b19da473', 1497342274, 1),
(2, 1, 'cny', '100.21000000', '0.00000000', '100.21000000', '0.01001000', '2', 'trade', 5, '交易中心-委托买入-市场bxb_cny', '100.19999000', '0.01001000', '100.21000000', '2781919973e00755b1550b9236f95f00', 1497342306, 1),
(3, 1, 'cny', '100.19999000', '0.01001000', '100.21000000', '0.01001000', '2', 'tradelog', 1, '交易中心-成功买入-市场bxb_cny', '100.19999000', '0.00000000', '100.19999000', '87339d82428fccff87ff9e736aeaef08', 1497342306, 1),
(4, 1, 'cny', '100.19999000', '0.00000000', '100.19999000', '0.01001000', '1', 'tradelog', 1, '交易中心-成功卖出-市场bxb_cny', '100.20998000', '0.00000000', '100.20998000', '4d117b01924567cc8419463db10808f4', 1497342306, 1),
(5, 1, 'cny', '100.20998000', '0.00000000', '100.20998000', '0.02002000', '2', 'trade', 6, '交易中心-委托买入-市场bxb_cny', '100.18996000', '0.02002000', '100.20998000', '6d6536884a43ffc4f82c59de4d7feae8', 1497669942, 1),
(6, 1, 'cny', '100.18996000', '0.02002000', '100.20998000', '0.00010010', '2', 'tradelog', 2, '交易中心-成功买入-市场bxb_cny', '100.18996000', '0.01991990', '100.20987990', '03ff7fb58a26f14c43f199422b9199cb', 1497669942, 1),
(7, 2, 'cny', '0.00000000', '0.00000000', '0.00000000', '0.00010010', '1', 'tradelog', 2, '交易中心-成功卖出-市场bxb_cny', '0.00009990', '0.00000000', '0.00009990', 'c233f00972364ac154c12bba722d0105', 1497669942, 0),
(8, 1, 'cny', '100.19006010', '0.01981980', '100.20987990', '0.00990990', '2', 'tradelog', 3, '交易中心-成功买入-市场bxb_cny', '100.19006010', '0.00990990', '100.19997000', 'f2f815187bb995d70f3e46266f36a6f5', 1497669942, 1),
(9, 1, 'cny', '100.19006010', '0.00990990', '100.19997000', '0.00990990', '1', 'tradelog', 3, '交易中心-成功卖出-市场bxb_cny', '100.19995020', '0.00990990', '100.20986010', '9523fcfba1459cd9575754e612701285', 1497669942, 1),
(10, 1, 'cny', '100.20986010', '0.00000000', '100.20986010', '0.02002000', '2', 'trade', 7, '交易中心-委托买入-市场bxb_cny', '100.18984010', '0.02002000', '100.20986010', 'ab8fa969485f5d0c723d7dfe1b20fa21', 1497669981, 1),
(11, 1, 'cny', '100.18984010', '0.02002000', '100.20986010', '0.00010010', '2', 'tradelog', 4, '交易中心-成功买入-市场bxb_cny', '100.18984010', '0.01991990', '100.20976000', 'de15fcfa689e242ee191f0639431bace', 1497669981, 1),
(12, 1, 'cny', '100.18984010', '0.01991990', '100.20976000', '0.00010010', '1', 'tradelog', 4, '交易中心-成功卖出-市场bxb_cny', '100.18994000', '0.01991990', '100.20985990', 'dd3783f8252f4ed5d5f0366de0a8a610', 1497669981, 1),
(13, 1, 'cny', '100.19004010', '0.01981980', '100.20985990', '0.02002000', '2', 'trade', 8, '交易中心-委托买入-市场bxb_cny', '100.17002010', '0.03983980', '100.20985990', 'c4b211f361b735f74b0430189b8d44f8', 1497670010, 1),
(14, 1, 'cny', '100.17002010', '0.03983980', '100.20985990', '0.01980198', '2', 'tradelog', 5, '交易中心-成功买入-市场bxb_cny', '100.17002010', '0.02003782', '100.19005792', '812417fe4034259dda7713fc3a603790', 1498715568, 1),
(15, 15, 'cny', '10000.00000000', '0.00000000', '10000.00000000', '0.01980198', '1', 'tradelog', 5, '交易中心-成功卖出-市场bxb_cny', '10000.01979802', '0.00000000', '10000.01979802', '76fc2c35fb844fb9cc74df2ac00f26bc', 1498715568, 0),
(16, 1, 'cny', '100.17002010', '0.02003782', '100.19005792', '0.02000200', '2', 'tradelog', 6, '交易中心-成功买入-市场bxb_cny', '100.17002010', '0.00003582', '100.17005592', '4c951c57606cf4760ef497ec6cd35908', 1498715568, 1),
(17, 15, 'cny', '10000.01979802', '0.00000000', '10000.01979802', '0.02000200', '1', 'tradelog', 6, '交易中心-成功卖出-市场bxb_cny', '10000.03979602', '0.00000000', '10000.03979602', 'e12a4feae98ee8db150f9d8305c6e3b9', 1498715568, 0),
(18, 15, 'cny', '10000.03979602', '0.00000000', '10000.03979602', '0.93509350', '2', 'trade', 10, '交易中心-委托买入-市场bxb_cny', '9999.10470252', '0.93509350', '10000.03979602', '32e1e0da9179682a79e1b1d3c8fad21c', 1498715586, 1),
(19, 15, 'cny', '9999.10470252', '0.93509350', '10000.03979602', '0.93509350', '2', 'tradelog', 7, '交易中心-成功买入-市场bxb_cny', '9999.10470252', '0.00000000', '9999.10470252', 'ceb597c8b90c5e372f4f543f2a8fa49e', 1498715586, 1),
(20, 15, 'cny', '9999.10470252', '0.00000000', '9999.10470252', '0.93509350', '1', 'tradelog', 7, '交易中心-成功卖出-市场bxb_cny', '10000.03960902', '0.00000000', '10000.03960902', '7b15f96c12e38f08d2858268289c96f0', 1498715586, 1),
(21, 15, 'cny', '10000.03960902', '0.00000000', '10000.03960902', '1.00100000', '2', 'trade', 13, '交易中心-委托买入-市场abc_cny', '9999.03860902', '1.00100000', '10000.03960902', '212a0b21c14ef93ff47a46f0c368191a', 1498795002, 1),
(22, 15, 'cny', '9999.03860902', '1.00100000', '10000.03960902', '1.00100000', '2', 'tradelog', 8, '交易中心-成功买入-市场abc_cny', '9999.03860902', '0.00000000', '9999.03860902', 'ab50eb56478e6f289b9d702f72ca1f61', 1498795002, 1),
(23, 15, 'cny', '9999.03860902', '0.00000000', '9999.03860902', '1.00100000', '1', 'tradelog', 8, '交易中心-成功卖出-市场abc_cny', '10000.03760902', '0.00000000', '10000.03760902', '99d2782ea8b4621552f517fb347c8c9b', 1498795002, 1),
(24, 15, 'cny', '10000.03760902', '0.00000000', '10000.03760902', '0.90090000', '2', 'trade', 14, '交易中心-委托买入-市场abc_cny', '9999.13670902', '0.90090000', '10000.03760902', '1ab67e7479b79c8de2f4ee21e218df28', 1498795031, 1),
(25, 15, 'cny', '9999.13670902', '0.90090000', '10000.03760902', '0.11011000', '2', 'trade', 15, '交易中心-委托买入-市场abc_cny', '9999.02659902', '1.01101000', '10000.03760902', 'dcdaebdc90618d85cad3343550caef3c', 1498795052, 1),
(26, 15, 'cny', '9999.02659902', '1.01101000', '10000.03760902', '0.11011000', '2', 'tradelog', 9, '交易中心-成功买入-市场abc_cny', '9999.02659902', '0.90090000', '9999.92749902', '46387256e87bfb193b4dd17c1455c112', 1498795052, 1),
(27, 15, 'cny', '9999.02659902', '0.90090000', '9999.92749902', '0.11011000', '1', 'tradelog', 9, '交易中心-成功卖出-市场abc_cny', '9999.13648902', '0.90090000', '10000.03738902', '9bd6c1c6bf99b8d6d3bdcaf9aae74000', 1498795052, 1),
(28, 15, 'cny', '9999.13648902', '0.90090000', '10000.03738902', '0.09009000', '2', 'tradelog', 10, '交易中心-成功买入-市场abc_cny', '9999.13648902', '0.81081000', '9999.94729902', '993bf2aabbf871e6898b8566105af933', 1498795253, 1),
(29, 15, 'cny', '9999.13648902', '0.81081000', '9999.94729902', '0.09009000', '1', 'tradelog', 10, '交易中心-成功卖出-市场abc_cny', '9999.22639902', '0.81081000', '10000.03720902', 'ff5a3570b32a7421419bbcb36320c3be', 1498795253, 1),
(30, 15, 'cny', '9999.22639902', '0.81081000', '10000.03720902', '0.01100110', '2', 'trade', 18, '交易中心-委托买入-市场bxb_cny', '9999.21539792', '0.82181110', '10000.03720902', '4cfce1fdbe2ccbcfa13436776556ca02', 1498795314, 1),
(31, 15, 'cny', '9999.21539792', '0.82181110', '10000.03720902', '0.01100110', '2', 'tradelog', 11, '交易中心-成功买入-市场bxb_cny', '9999.21539792', '0.81081000', '10000.02620792', '1025068ae73c80c5231459cedd14a50e', 1498795314, 1),
(32, 15, 'cny', '9999.21539792', '0.81081000', '10000.02620792', '0.01100110', '1', 'tradelog', 11, '交易中心-成功卖出-市场bxb_cny', '9999.22639682', '0.81081000', '10000.03720682', '280fade6f9b8274a056896c1d68178ec', 1498795314, 1),
(33, 15, 'cny', '9999.22639682', '0.81081000', '10000.03720682', '0.00900090', '2', 'trade', 20, '交易中心-委托买入-市场bxb_cny', '9999.21739592', '0.81981090', '10000.03720682', '9fd95019b0b3be348a14b575f72abc62', 1498795351, 1),
(34, 15, 'cny', '9999.21739592', '0.81981090', '10000.03720682', '0.00900090', '2', 'tradelog', 12, '交易中心-成功买入-市场bxb_cny', '9999.21739592', '0.81081000', '10000.02820592', '6bc210b6afe0996bf3bc3f19a2343343', 1498795351, 1),
(35, 15, 'cny', '9999.21739592', '0.81081000', '10000.02820592', '0.00900090', '1', 'tradelog', 12, '交易中心-成功卖出-市场bxb_cny', '9999.22639502', '0.81081000', '10000.03720502', '91feee2da12a905b3de9553597beddd1', 1498795351, 1),
(36, 15, 'cny', '9999.22639502', '0.81081000', '10000.03720502', '11.00000000', '2', 'issue', 1, '认购中心-立即认购', '9999.22639502', '0.81081000', '10000.03720502', '77823c6a43e4b10ce40ca6dcd63e002d', 1498795885, 1),
(37, 15, 'cny', '9999.22639502', '0.81081000', '10000.03720502', '55.05500000', '2', 'trade', 21, '交易中心-委托买入-市场glc_cny', '9944.17139502', '55.86581000', '10000.03720502', 'c42218317c353d9aaa42b038aac90d2d', 1498811066, 1),
(38, 15, 'cny', '9944.17139502', '55.86581000', '10000.03720502', '540.54000000', '2', 'trade', 22, '交易中心-委托买入-市场glc_cny', '9403.63139502', '596.40581000', '10000.03720502', 'b8a5291519817d070f33ec2b1b675f46', 1498811121, 1),
(39, 15, 'cny', '9403.63139502', '596.40581000', '10000.03720502', '495.49500000', '2', 'trade', 23, '交易中心-委托买入-市场glc_cny', '8908.13639502', '1091.90081000', '10000.03720502', 'c0724aa29082e7d4c3e4a222483668c8', 1498811149, 1),
(40, 15, 'cny', '8908.13639502', '1091.90081000', '10000.03720502', '7133.63562467', '2', 'trade', 24, '交易中心-委托买入-市场glc_cny', '1774.50077035', '8225.53643467', '10000.03720502', '6a40d3a003002c64513d166b51b702b8', 1498811184, 1),
(41, 15, 'cny', '1774.50077035', '8225.53643467', '10000.03720502', '50.05000000', '2', 'trade', 25, '交易中心-委托买入-市场glc_cny', '1724.45077035', '8275.58643467', '10000.03720502', '2e70ddb0f8c89e8560cf9e45ec1f2d32', 1498811201, 1),
(42, 15, 'cny', '1724.45077035', '8275.58643467', '10000.03720502', '53.05300000', '2', 'trade', 26, '交易中心-委托买入-市场glc_cny', '1671.39777035', '8328.63943467', '10000.03720502', '5554933fb3861e941d1a3398f0fd27af', 1498811207, 1),
(43, 15, 'cny', '1671.39777035', '8328.63943467', '10000.03720502', '52.05200000', '2', 'trade', 27, '交易中心-委托买入-市场glc_cny', '1619.34577035', '8380.69143467', '10000.03720502', '055ad81c61b9611c73555c6a65ecc11d', 1498811217, 1),
(44, 15, 'cny', '1619.34577035', '8380.69143467', '10000.03720502', '51.05100000', '2', 'trade', 28, '交易中心-委托买入-市场glc_cny', '1568.29477035', '8431.74243467', '10000.03720502', 'da3ba5e626d4255a6bbe07946696e0ad', 1498811224, 1),
(45, 15, 'cny', '1568.29477035', '8431.74243467', '10000.03720502', '51.05100000', '1', 'trade', 28, '交易中心-交易撤销glc_cny', '1619.34577035', '8380.69143467', '10000.03720502', 'c454ac4c0516ce8c4f2186c24c13a4e3', 1498811353, 1),
(46, 15, 'cny', '1619.34577035', '8380.69143467', '10000.03720502', '55.05500000', '1', 'trade', 21, '交易中心-交易撤销glc_cny', '1674.40077035', '8325.63643467', '10000.03720502', 'fdd7c004b564e0af18e3ab573a220a8a', 1498811358, 1),
(47, 15, 'cny', '1674.40077035', '8325.63643467', '10000.03720502', '540.54000000', '1', 'trade', 22, '交易中心-交易撤销glc_cny', '2214.94077035', '7785.09643467', '10000.03720502', 'c3428dd3c01ba1981d677a15078d7fce', 1498811360, 1),
(48, 15, 'cny', '2214.94077035', '7785.09643467', '10000.03720502', '495.49500000', '1', 'trade', 23, '交易中心-交易撤销glc_cny', '2710.43577035', '7289.60143467', '10000.03720502', 'a917c3557f47480a74a1784ff0d0f3f5', 1498811361, 1),
(49, 15, 'cny', '2710.43577035', '7289.60143467', '10000.03720502', '7133.63562467', '1', 'trade', 24, '交易中心-交易撤销glc_cny', '9844.07139502', '155.96581000', '10000.03720502', '5adb116e6221dc1d99c66fb687d69ce4', 1498811363, 1),
(50, 15, 'cny', '9844.07139502', '155.96581000', '10000.03720502', '53.05300000', '1', 'trade', 26, '交易中心-交易撤销glc_cny', '9897.12439502', '102.91281000', '10000.03720502', 'ee8f27bfcdd252d4d1637b1c404b7b45', 1498811366, 1),
(51, 15, 'cny', '9897.12439502', '102.91281000', '10000.03720502', '52.05200000', '1', 'trade', 27, '交易中心-交易撤销glc_cny', '9949.17639502', '50.86081000', '10000.03720502', 'de9b8a7e364b249bc16720b73d27751e', 1498811368, 1),
(52, 15, 'cny', '9949.17639502', '50.86081000', '10000.03720502', '5.00500000', '2', 'tradelog', 13, '交易中心-成功买入-市场glc_cny', '9949.17639502', '45.85581000', '9995.03220502', '0f2cf45548480ed4c8fed25cd24bb03c', 1498811384, 1),
(53, 15, 'cny', '9949.17639502', '45.85581000', '9995.03220502', '5.00500000', '1', 'tradelog', 13, '交易中心-成功卖出-市场glc_cny', '9954.17139502', '45.85581000', '10000.02720502', '8077747c02c4f61edad7274ecd91b4ab', 1498811384, 1),
(54, 15, 'cny', '9954.17139502', '45.85581000', '10000.02720502', '7971.30045262', '2', 'trade', 30, '交易中心-委托买入-市场glc_cny', '1982.87094240', '8017.15626262', '10000.02720502', '1a4d09643a1fc8b9dd3aabcc8944539b', 1498811439, 1),
(55, 15, 'cny', '1982.87094240', '8017.15626262', '10000.02720502', '4.90490000', '2', 'trade', 31, '交易中心-委托买入-市场glc_cny', '1977.96604240', '8022.06116262', '10000.02720502', 'ef2c8d3bd36d488c1fc2be62c8bc4d95', 1498811460, 1),
(56, 15, 'cny', '1977.96604240', '8022.06116262', '10000.02720502', '4.80480000', '2', 'trade', 32, '交易中心-委托买入-市场glc_cny', '1973.16124240', '8026.86596262', '10000.02720502', '038e62012b47ac367898d30aedcbbd7d', 1498811468, 1),
(57, 15, 'cny', '1973.16124240', '8026.86596262', '10000.02720502', '4.70470000', '2', 'trade', 33, '交易中心-委托买入-市场glc_cny', '1968.45654240', '8031.57066262', '10000.02720502', '936b94a249f00a76daa39f43a7a6e90f', 1498811476, 1),
(58, 15, 'cny', '1968.45654240', '8031.57066262', '10000.02720502', '4.60460000', '2', 'trade', 34, '交易中心-委托买入-市场glc_cny', '1963.85194240', '8036.17526262', '10000.02720502', '40e9b6458988b24e7ff5b4bf2d1c3290', 1498811487, 1),
(59, 15, 'cny', '1963.85194240', '8036.17526262', '10000.02720502', '4.50450000', '2', 'trade', 35, '交易中心-委托买入-市场glc_cny', '1959.34744240', '8040.67976262', '10000.02720502', 'deffa22d6061259a8b6d3b6fa2b15cba', 1498811504, 1),
(60, 15, 'cny', '1959.34744240', '8040.67976262', '10000.02720502', '45.04500000', '2', 'tradelog', 14, '交易中心-成功买入-市场glc_cny', '1959.34744240', '7995.63476262', '9954.98220502', '1a70d82399acbedc07fbf448475cbb75', 1498812173, 1),
(61, 15, 'cny', '1959.34744240', '7995.63476262', '9954.98220502', '45.04500000', '1', 'tradelog', 14, '交易中心-成功卖出-市场glc_cny', '2004.30244240', '7995.63476262', '9999.93720502', '7c698e869de923d92443e44e7a56ceed', 1498812173, 1),
(62, 15, 'cny', '2004.30244240', '7995.63476262', '9999.93720502', '4.94994500', '2', 'tradelog', 15, '交易中心-成功买入-市场glc_cny', '2004.30244240', '7990.68481762', '9994.98726002', 'a995227aed51ad82ccb3ac566ce7d2e0', 1498812173, 1),
(63, 15, 'cny', '2004.30244240', '7990.68481762', '9994.98726002', '4.94994500', '1', 'tradelog', 15, '交易中心-成功卖出-市场glc_cny', '2009.24249740', '7990.68481762', '9999.92731502', '468ffa868970b36cf91b5b10ad83cfb0', 1498812173, 1),
(64, 15, 'cny', '10000000.00000000', '7990.68481762', '10007990.68481800', '10.01000000', '2', 'trade', 37, '交易中心-委托买入-市场abc_cny', '9999989.99000000', '8000.69481762', '10007990.68481800', 'd476eeba3bfea2c591db36e7c022a927', 1498868005, 0),
(65, 15, 'cny', '9999989.99000000', '8000.69481762', '10007990.68481800', '1.00100000', '2', 'tradelog', 16, '交易中心-成功买入-市场abc_cny', '9999989.99000000', '7999.69381762', '10007989.68381800', '5d1b951e1a3b7151bfef7daab47181f6', 1498868007, 1),
(66, 15, 'cny', '9999989.99000000', '7999.69381762', '10007989.68381800', '1.00100000', '1', 'tradelog', 16, '交易中心-成功卖出-市场abc_cny', '9999990.98900000', '7999.69381762', '10007990.68281800', '0f78f0318bf3b54f7672631d577db96c', 1498868008, 1),
(67, 15, 'cny', '9999990.98900000', '7999.69381762', '10007990.68281800', '10.01000000', '2', 'trade', 38, '交易中心-委托买入-市场abc_cny', '9999980.97900000', '8009.70381762', '10007990.68281800', '035f84a8bf05aa131625e174b8a1f60a', 1498868016, 1),
(68, 15, 'cny', '9999980.97900000', '8009.70381762', '10007990.68281800', '0.99099000', '2', 'trade', 39, '交易中心-委托买入-市场abc_cny', '9999979.98801000', '8010.69480762', '10007990.68281800', 'ff59ae5ade7122e41d28915e117a3292', 1498868486, 1),
(69, 15, 'cny', '9999979.98801000', '8010.69480762', '10007990.68281800', '0.99099000', '2', 'tradelog', 17, '交易中心-成功买入-市场abc_cny', '9999979.98801000', '8009.70381762', '10007989.69182800', 'c32c1cda8ba4615cdb05a14e4db88bbe', 1498868487, 1),
(70, 15, 'cny', '9999979.98801000', '8009.70381762', '10007989.69182800', '0.99099000', '1', 'tradelog', 17, '交易中心-成功卖出-市场abc_cny', '9999980.97702000', '8009.70381762', '10007990.68083800', 'f19926c5600af5ddfae603a6c8c7fd9a', 1498868487, 1),
(71, 15, 'cny', '9999980.97702000', '8009.70381762', '10007990.68083800', '1091.09000000', '2', 'trade', 41, '交易中心-委托买入-市场abc_cny', '9998889.88702000', '9100.79381762', '10007990.68083800', '46ca8ae2fcb423fdd4e0a28329090149', 1498869910, 1),
(72, 15, 'cny', '9998889.88702000', '9100.79381762', '10007990.68083800', '1091.09000000', '2', 'tradelog', 18, '交易中心-成功买入-市场abc_cny', '9998889.88702000', '8009.70381762', '10006899.59083800', '5f0649b2b46442e0c2a1f231be5daa4f', 1498869911, 1),
(73, 15, 'cny', '9998889.88702000', '8009.70381762', '10006899.59083800', '1091.09000000', '1', 'tradelog', 18, '交易中心-成功卖出-市场abc_cny', '9999978.79702000', '8009.70381762', '10007988.50083800', 'bbc8dff8fe79cc3400ca091da620f394', 1498869911, 1),
(74, 15, 'cny', '9999978.79702000', '8009.70381762', '10007988.50083800', '550.55000000', '2', 'trade', 43, '交易中心-委托买入-市场glc_cny', '9999428.24702000', '8560.25381762', '10007988.50083800', 'b1b374441f0ebd16713a7415e3ba53e1', 1498871631, 1),
(75, 15, 'cny', '9999428.24702000', '8560.25381762', '10007988.50083800', '550.55000000', '2', 'tradelog', 19, '交易中心-成功买入-市场glc_cny', '9999428.24702000', '8009.70381762', '10007437.95083800', '68a3d12e237324f584610318709b3a7b', 1498871631, 1),
(76, 15, 'cny', '9999428.24702000', '8009.70381762', '10007437.95083800', '550.55000000', '1', 'tradelog', 19, '交易中心-成功卖出-市场glc_cny', '9999977.69702000', '8009.70381762', '10007987.40083800', 'e7c599ce89b3ff9ba20d237c30a670bd', 1498871631, 1),
(77, 15, 'cny', '9999977.69702000', '8009.70381762', '10007987.40083800', '200.02000000', '2', 'trade', 45, '交易中心-委托买入-市场bxb_cny', '9999777.67702000', '8209.72381762', '10007987.40083800', '826f0a502cd61e61ae90ea4ebb0da773', 1498871872, 1),
(78, 15, 'cny', '9999777.67702000', '8209.72381762', '10007987.40083800', '0.13212321', '2', 'tradelog', 20, '交易中心-成功买入-市场bxb_cny', '9999777.67702000', '8209.59169441', '10007987.26871400', '89bc6c4c8b110ef7a94407550ca2c16c', 1498871872, 1),
(79, 15, 'cny', '9999777.67702000', '8209.59169441', '10007987.26871400', '0.13212321', '1', 'tradelog', 20, '交易中心-成功卖出-市场bxb_cny', '9999777.80911679', '8209.59169441', '10007987.40081100', 'dedfd64d2b3abf3b73e2077bdb602596', 1498871872, 1),
(80, 15, 'cny', '9999777.91721760', '8209.48359360', '10007987.40081100', '19.97399720', '2', 'tradelog', 21, '交易中心-成功买入-市场bxb_cny', '9999777.91721760', '8189.50959640', '10007967.42681400', '7010480579dc1fca8e02bbfbed42d8db', 1498871872, 1),
(81, 15, 'cny', '9999777.91721760', '8189.50959640', '10007967.42681400', '19.97399720', '1', 'tradelog', 21, '交易中心-成功卖出-市场bxb_cny', '9999797.88722040', '8189.50959640', '10007987.39681700', 'd60b4c37c48df03fbd5f49aa0ddb3439', 1498871872, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_footer`
--

CREATE TABLE `ecshecom_footer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecshecom_footer`
--

INSERT INTO `ecshecom_footer` (`id`, `name`, `title`, `url`, `img`, `type`, `remark`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, '1', '关于我们', '/Article/index/type/aboutus.html', '', '1', '', 1, 111, 0, 1),
(2, '1', '联系我们', '/Article/index/type/aboutus.html', '', '1', '', 1, 111, 0, 1),
(3, '1', '资质证明', '/Article/index/type/aboutus.html', '', '1', '', 1, 111, 0, 1),
(4, '1', '用户协议', '/Article/index/type/aboutus.html', '', '1', '', 1, 111, 0, 1),
(5, '1', '法律声明', '/Article/index/type/aboutus.html', '', '1', '', 1, 111, 0, 1),
(6, '1', '1', '/', 'footer_1.png', '2', '', 1, 111, 0, 1),
(7, '1', '1', 'http://www.szfw.org/', 'footer_2.png', '2', '', 1, 111, 0, 1),
(8, '1', '1', 'http://www.miibeian.gov.cn/', 'footer_3.png', '2', '', 1, 111, 0, 1),
(9, '1', '1', 'http://www.cyberpolice.cn/', 'footer_4.png', '2', '', 1, 111, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_huafei`
--

CREATE TABLE `ecshecom_huafei` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `userid` int(11) UNSIGNED NOT NULL,
  `moble` varchar(255) NOT NULL,
  `num` int(11) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `mum` decimal(20,8) NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_huafei_coin`
--

CREATE TABLE `ecshecom_huafei_coin` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `coinname` varchar(50) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_huafei_type`
--

CREATE TABLE `ecshecom_huafei_type` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_huafei_type`
--

INSERT INTO `ecshecom_huafei_type` (`id`, `name`, `title`, `status`) VALUES
(1, '10', '10元话费充值', 1),
(2, '20', '20元话费充值', 1),
(3, '30', '30元话费充值', 1),
(4, '50', '50元话费充值', 1),
(5, '100', '100元话费充值', 1),
(6, '300', '300元话费充值', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_invit`
--

CREATE TABLE `ecshecom_invit` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `invit` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `num` decimal(20,8) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `fee` decimal(20,8) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推广奖励表';

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_issue`
--

CREATE TABLE `ecshecom_issue` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `buycoin` varchar(50) NOT NULL,
  `num` bigint(20) UNSIGNED NOT NULL,
  `deal` int(11) UNSIGNED NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL,
  `limit` int(11) UNSIGNED NOT NULL,
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
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `tuijian` tinyint(1) NOT NULL DEFAULT '2',
  `paixu` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='认购发行表';

--
-- 转存表中的数据 `ecshecom_issue`
--

INSERT INTO `ecshecom_issue` (`id`, `name`, `coinname`, `buycoin`, `num`, `deal`, `price`, `limit`, `time`, `tian`, `ci`, `jian`, `min`, `max`, `content`, `invit_coin`, `invit_1`, `invit_2`, `invit_3`, `sort`, `addtime`, `endtime`, `status`, `image`, `tuijian`, `paixu`) VALUES
(1, '币兴股', 'bxb', 'bxb', 50000000, 0, '0.02000000', 500000, '2017-06-10 00:00:00', '20', '0', '0', '5000', '500000', '<h1 align="center" style="text-align:center;">\r\n	币兴<b>股白皮书</b><b></b> \r\n</h1>\r\n<p class="MsoNormal">\r\n	<b>一、币兴股简介：</b><b></b> \r\n</p>\r\n<p class="MsoNormal">\r\n	钱包中文名：币兴股\r\n</p>\r\n<p class="MsoNormal">\r\n	属性：币兴数字资产交易中心网代币<br />\r\n<span>钱包英文名：Bixingb</span><br />\r\n<span>钱包英文缩写：BXB</span><br />\r\n<span>钱包</span>Logo <span>：</span><br />\r\n<span>全预挖的数量（自己发行的数量）</span>:100000000枚\r\n</p>\r\n<p class="MsoNormal">\r\n	<!--[if !supportLists]-->二、<!--[endif]-->近期发展规划\r\n</p>\r\n<p class="MsoNormal">\r\n	<b>2.1 ICO</b><b></b> \r\n</p>\r\n<p class="MsoNormal">\r\n	<img width="554" height="340" src="file://C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\ksohtml\\wps39A7.tmp.jpg" /> \r\n</p>\r\n<p class="MsoNormal">\r\n	<b>2.2限购办法</b><b></b> \r\n</p>\r\n<p class="MsoNormal">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal">\r\n	<span>单账户</span>ICO限额2万元\r\n</p>\r\n<p class="MsoNormal">\r\n	ICO价格0.02\r\n</p>\r\n<h1>\r\n	<!--[if !supportLists]-->三、<!--[endif]--><b>交易期</b><b></b> \r\n</h1>\r\n<p class="MsoNormal">\r\n	3.1 涨跌停限制\r\n</p>\r\n<p class="MsoNormal">\r\n	<span>众筹完成后</span>30天内多空比达到2:1（有效入金：ICO资金）即可上线交易，为了保障币兴股健康发展，每天涨跌停限制，上下限待定。\r\n</p>\r\n<p class="MsoNormal">\r\n	3.2 PUSH\r\n</p>\r\n<p class="MsoNormal">\r\n	<span>上线</span>Push平台，自由兑换\r\n</p>\r\n<p class="MsoNormal">\r\n	3.3 交易手续费\r\n</p>\r\n<p class="MsoNormal">\r\n	<span>单边</span>0.1％ 充值提现手续费暂定\r\n</p>\r\n<p class="MsoNormal">\r\n	3.4 团队合作\r\n</p>\r\n<p class="MsoNormal">\r\n	<img width="554" height="322" src="file://C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\ksohtml\\wps39A8.tmp.jpg" /> \r\n</p>\r\n<h1>\r\n	<b><br />\r\n</b><b></b> \r\n</h1>\r\n<p class="MsoNormal">\r\n	<br />\r\n</p>', 'bxb', '', '', '', 0, 1497669785, 0, 1, '59437dcddc4c7.jpg', 2, 0),
(2, '第三方ICO-以太坊ETH', 'abc', 'glc', 10000, 21, '1.00000000', 10000, '2017-06-29 00:00:00', '3', '0', '0', '', '', '', 'abc', '', '', '', 0, 1498795809, 0, 1, '5955cef9e65ab.jpg', 2, 0),
(3, '绿地币-ICO', 'glc', 'cny', 18000000, 18000000, '0.05000000', 1000000, '2017-06-20 00:00:00', '5', '0', '0', '10000', '1000000', '<p class="MsoNormal" align="center" style="text-align:center;">\r\n	<b>绿地币</b>(GLC)<b>-ICO<span>细则</span></b><b></b> \r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	1.<span>代币总量：</span>6000万\r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	2.<span>认购目标：</span>1500万\r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	3.<span>认购时间：</span>6<span>月</span>20<span>日</span> 10:00 - 6<span>月</span>25<span>日</span> 10<span>：</span>00<br />\r\n4.<span>认购条件：所有用户均可参与认购活动</span> \r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	5.<span>认购价格：</span>500元/份（每份10000<span>个</span><span>绿地</span><span>币，</span>0.05<span>元</span>/个）\r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	6.<span>认购金额：最低</span>500元，最高5万元\r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	7.<span>交易规则：每日交易涨跌幅</span>10%\r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	8.<span>交易时间：周一</span>--周六 9：00-15：00\r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	9.上线交易时间：2017年6月30日上午9点\r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	10.GLC介绍\r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	&nbsp;&nbsp;&nbsp;GLC白皮书:http://www.bi-58.com/Article/detail/id/56.html\r\n</p>\r\n<p class="MsoNormal" align="justify" style="text-align:justify;">\r\n	&nbsp;&nbsp;&nbsp;<span>区块浏览器：</span><a href="http://60.205.59.146/"><u>http://60.205.59.146/</u></a> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:18.7500pt;background:#FFFFFF;">\r\n	<b>GLC</b><b><span>是一个去中心化的数据库，同时作为</span></b><b>GLC</b><b><span>底层技术的区块链是一串使用密码学方法相关联产生的数据块，每一个数据块中包含了一次</span></b><b>GLC</b><b><span>网络交易的信息，用于验证其信息的有效性（防伪）和生成下一个区块。</span></b><b></b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:18.7500pt;background:#FFFFFF;">\r\n	<b>GLC</b><b><span>兼容比特币模型和以太坊虚拟机的</span>POS智能合约平台，通过全新设计的区块链依托比特币和以太币基础，打造智能化、去中心化的生态链。</b><b>GLC</b><b><span>将要打破传统区块链接的商业模式，构建新型便捷的支付通道，建立块链与真实商业社会的桥梁。对现有的支付系统和货币系统合成一体</span>,带来一场彻底的支付系统革命。</b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<b>&nbsp;&nbsp; </b><b>GLC</b><b><span>团队集合了来自港澳大湾区各大公司的</span>IT精英、区块链专家、金融达人、风险投资人</b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<b><span>既有丰富的区块链开发经验，又有先进的管理和市场运作实战经验。将带给大家一个全新的市场应用体验。</span></b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<b>01</b>&nbsp;<b><span>、</span> <span>高效的去中心化应用</span></b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:18.7500pt;background:#FFFFFF;">\r\n	<b><span>我们将设计一种保护措施，应用于高容错的分布式计算系统。使</span></b><b>GLC</b><b><span>区块链混合使用一致性成为可能。这使</span></b><b>GLC</b><b><span>区块链适合记录事件、标题、医疗记录和其他需要收录数据的活动、身份识别管理，交易流程管理和出处证明管理等，将会使我们的生活更加快捷便利。</span></b><b>GLC</b><b><span>将稳定、模块化和相互兼容性作为其设计宗旨，旨在成为开发高效的去中心化应用的最重要工具，并且适用于现实世界商业环境案例。</span></b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<b>02、&nbsp; 智能供应链管理系统&nbsp;&nbsp;</b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:14.2500pt;background:#FFFFFF;">\r\n	<b>GLC</b><b><span>使得主流行业和传统企业对区块链技术的使用变得前所未有的便捷。在标准、稳定并经过测试的环境下打造专属代币、自动化供应链管理以及使用自动执行的合约。</span></b> \r\n</p>\r\n<p class="p" align="center" style="margin-left:0.0000pt;text-indent:0.0000pt;text-align:center;background:#FFFFFF;">\r\n	&nbsp;\r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><b>GLC</b><b><span>将利用其学术合作伙伴、开发工具和方法论对商业智能合约的开发进行标准化，包括将自然语言的合约准确的转译成机器可读智能合约、高容错度的细节及合约条款。第三方将在</span></b><b>GLC</b><b><span>的协助下开发专用适合记录事件、标题、医疗记录和其他需要收录数据的活动、身份识别管理，交易流程管理和出入证明管理等的生态链。同时</span></b><b>GLC</b><b><span>旨在通过与一系列合作伙伴和第三方的协作建立一个智能合约枢纽，提供安全并经过反复测试的合约模板，适用于各种行业和案例。</span></b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<b>03、 面向移动端策略 ,打造便捷的支付体系</b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:18.7500pt;background:#FFFFFF;">\r\n	<b><span>目前互联网上一半的流量由智能手机和平板电脑产生，</span></b><b>GLC</b><b><span>的区块链将面向移动端开发出便捷、高效、安全的交互、支付系统。能够实现资源链的快速支付、转账、储存。最终使得区块链在世界上产生颠覆性的影响。对移动支付带来一场革命。</span></b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:24.0000pt;background:#FFFFFF;">\r\n	<b>GLC</b><b><span>使用了比特币和以太币交叉模型，且代码库默认支持简单支付确认</span>SPV协议。这使得</b><b>GLC</b> \r\n</p>\r\n<p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;">\r\n	<b><span>可以在轻钱包上运行智能合约，而轻钱包可以被简单的安装在任何移动设备上，从而创造一个移动去中心化应用的时代。</span></b> \r\n</p>', 'glc', '', '', '', 0, 1498829822, 0, 1, '595616a0279e9.png', 2, 0),
(4, '酒真链ICO', 'twc', 'cny', 10000000, 0, '0.02000000', 0, '2017-07-03 20:00:00', '3', '0', '0', '', '', '', 'twc', '', '', '', 0, 1498883338, 0, 1, '595724aacaca1.png', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_issue_log`
--

CREATE TABLE `ecshecom_issue_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `buycoin` varchar(50) NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL,
  `num` int(20) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `ci` int(11) UNSIGNED NOT NULL,
  `jian` varchar(255) NOT NULL,
  `unlock` int(11) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='认购记录表';

--
-- 转存表中的数据 `ecshecom_issue_log`
--

INSERT INTO `ecshecom_issue_log` (`id`, `userid`, `name`, `coinname`, `buycoin`, `price`, `num`, `mum`, `ci`, `jian`, `unlock`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 15, '第三方ICO-以太坊ETH', 'abc', 'glc', '1.00000000', 11, '11.00000000', 0, '0', 1, 0, 1498795885, 1498795885, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_link`
--

CREATE TABLE `ecshecom_link` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='常用银行地址';

--
-- 转存表中的数据 `ecshecom_link`
--

INSERT INTO `ecshecom_link` (`id`, `name`, `title`, `url`, `img`, `mytx`, `remark`, `sort`, `addtime`, `endtime`, `status`) VALUES
(22, '比特币之家', '比特币之家', 'http://www.btc123.com', '59437ade06acf.png', '', '', 0, 1497594611, 1497594613, 1),
(21, '币创网', '', 'http://www.bichuang.com', '594378ab1d905.png', '', '', 0, 1497542400, 1497594043, 1),
(20, 'B网', 'B网', 'http://www.b.top', '594377524b571.png', '', '', 0, 1497542400, 1497542400, 1),
(23, '聚币网', 'www.jubi.com', 'http://www.jubi.com', '5955b131ab770.png', '', '', 0, 1494345600, 1495036800, 1),
(25, 'https://www.sosobtc.com', 'sosobtc', 'https://www.sosobtc.com', '5955b222e2101.png', '', '', 0, 1494345600, 1494950400, 1),
(26, 'http://www.yuanbao.com', '元宝网', 'http://www.yuanbao.com', '5955b2afeeeff.png', '', '', 0, 1488816000, 1494864000, 1),
(27, 'https://www.huobi.com', '火币网', 'https://www.huobi.com', '5955b3087c7f1.png', '', '', 0, 1467216000, 1485705600, 1),
(28, 'https://btc.com', '比特币', 'https://btc.com', '5955b3ea5d067.png', '', '', 0, 1491926400, 1494345600, 1),
(29, 'www.bitcoin86.com', '比特币资讯网', 'http://www.bitcoin86.com', '5955b4429a4c7.png', '', '', 0, 1494259200, 1494345600, 1),
(30, '比特币网址导航', 'http://www.btc114.com', 'http://www.btc114.com', '5955b66d59ecf.png', '', '', 0, 1494950400, 1495036800, 1),
(31, '巴比特资讯', 'http://www.8btc.com', 'http://www.8btc.com', '5955b6d44d4a2.png', '', '', 0, 1494259200, 1495036800, 1),
(32, 'https://www.btctrade.com', '比特币交易网', 'https://www.btctrade.com', '5955f8debaf64.png', '', '', 0, 1493568000, 1493740800, 1),
(33, 'http://www.9998.tv/news/42219.html', '鉴酒网', 'http://www.9998.tv/news/42219.html', '59560278a1738.png', '', '', 0, 1496246400, 1496332800, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_log`
--

CREATE TABLE `ecshecom_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL,
  `num` int(20) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `unlock` int(11) UNSIGNED NOT NULL,
  `ci` int(11) UNSIGNED NOT NULL,
  `recycle` int(11) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_market`
--

CREATE TABLE `ecshecom_market` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `trade` int(11) UNSIGNED NOT NULL,
  `new_price` decimal(20,8) UNSIGNED NOT NULL,
  `buy_price` decimal(20,8) UNSIGNED NOT NULL,
  `sell_price` decimal(20,8) UNSIGNED NOT NULL,
  `min_price` decimal(20,8) UNSIGNED NOT NULL,
  `max_price` decimal(20,8) UNSIGNED NOT NULL,
  `volume` decimal(20,8) UNSIGNED NOT NULL,
  `change` decimal(20,8) NOT NULL,
  `api_min` decimal(20,8) UNSIGNED NOT NULL,
  `api_max` decimal(20,8) UNSIGNED NOT NULL,
  `begintrade` varchar(20) NOT NULL,
  `endtrade` varchar(20) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `jiaoyiqu` tinyint(1) NOT NULL,
  `qq3479015851_faxingjia` float(8,2) NOT NULL DEFAULT '0.00' COMMENT '发行价格'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行情配置表';

--
-- 转存表中的数据 `ecshecom_market`
--

INSERT INTO `ecshecom_market` (`id`, `name`, `round`, `fee_buy`, `fee_sell`, `buy_min`, `buy_max`, `sell_min`, `sell_max`, `trade_min`, `trade_max`, `invit_buy`, `invit_sell`, `invit_1`, `invit_2`, `invit_3`, `zhang`, `die`, `hou_price`, `tendency`, `trade`, `new_price`, `buy_price`, `sell_price`, `min_price`, `max_price`, `volume`, `change`, `api_min`, `api_max`, `begintrade`, `endtrade`, `sort`, `addtime`, `endtime`, `status`, `jiaoyiqu`, `qq3479015851_faxingjia`) VALUES
(1, 'bxb_cny', '3', '0.1', '0.1', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '0.01000000', '[[1497411214,0],[1497425614,0],[1497440014,0],[1497454414,0],[1497468814,0],[1497483214,0],[1497497614,0],[1497512014,0],[1497526414,0],[1497540814,0],[1497555214,0],[1497569614,0],[1497584014,0],[1497598414,0],[1497612814,0],[1497627214,0],[1497641614,0],[1497656014,"0.01000000"],[1497670414,0]]', 1, '0.02000000', '0.02000000', '0.00000000', '0.00900000', '0.02000000', '1012.61000000', '100.00000000', '0.00000000', '0.00000000', '00:00:00', '23:59:00', 0, 0, 0, 1, 0, 0.02),
(2, 'glc_cny', '3', '0.1', '0.1', '', '', '', '', '', '', '0', '0', '', '', '', '10', '10', '', '', 1, '0.05500000', '0.05000000', '0.00000000', '0.05000000', '0.05500000', '11098.90000000', '0.00000000', '0.00000000', '0.00000000', '09:00:00', '18:00:00', 0, 0, 0, 1, 0, 0.05),
(3, 'abc_cny', '3', '0.1', '0.1', '', '', '', '', '', '', '1', '1', '', '', '', '10', '10', '', '', 1, '0.10900000', '0.10000000', '0.10900000', '0.09000000', '0.11000000', '10031.00000000', '0.00000000', '0.00000000', '0.00000000', '00:00:00', '23:59:00', 0, 0, 0, 1, 0, 0.10);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_market_json`
--

CREATE TABLE `ecshecom_market_json` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `ecshecom_market_json`
--

INSERT INTO `ecshecom_market_json` (`id`, `name`, `data`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'btc_cny', '', '', 0, 1497455999, 0, 0),
(3, 'bxb_cny', '["1.00000000","0.01000000","0.00001000","0.00001000"]', '', 0, 1497369599, 0, 0),
(4, 'bxb_cny', '', '', 0, 1568649599, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_menu`
--

CREATE TABLE `ecshecom_menu` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `is_dev` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  `ico_name` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_menu`
--

INSERT INTO `ecshecom_menu` (`id`, `title`, `pid`, `sort`, `url`, `hide`, `tip`, `group`, `is_dev`, `ico_name`) VALUES
(1, '系统', 0, 1, 'Index/index', 0, '', '', 0, 'home'),
(2, '内容', 0, 1, 'Article/index', 0, '', '', 0, 'list-alt'),
(3, '用户', 0, 1, 'User/index', 0, '', '', 0, 'user'),
(4, '财务', 0, 1, 'Finance/index', 0, '', '', 0, 'th-list'),
(5, '交易', 0, 1, 'Trade/index', 0, '', '', 0, 'stats'),
(6, '应用', 0, 1, 'Game/index', 0, '', '', 0, 'globe'),
(7, '设置', 0, 1, 'Config/index', 0, '', '', 0, 'cog'),
(8, '运营', 0, 1, 'Operate/index', 0, '', '', 0, 'share'),
(9, '工具', 0, 1, 'Tools/index', 0, '', '', 0, 'wrench'),
(10, '扩展', 0, 1, 'Cloud/index', 0, '', '', 0, 'tasks'),
(11, '系统概览', 1, 1, 'Index/index', 0, '', '系统', 0, 'home'),
(12, '市场统计', 1, 3, 'Index/market', 0, '', '系统', 0, 'home'),
(13, '文章管理', 2, 1, 'Article/index', 0, '', '内容', 0, 'list-alt'),
(14, '编辑添加', 13, 1, 'Article/edit', 1, '', '内容', 0, 'home'),
(15, '修改状态', 13, 100, 'Article/status', 1, '', '内容', 0, 'home'),
(16, '上传图片', 13, 2, 'Article/images', 1, '', '内容管理', 0, '0'),
(18, '编辑', 17, 2, 'Adver/edit', 1, '', '内容管理', 0, '0'),
(19, '修改', 17, 2, 'Adver/status', 1, '', '内容管理', 0, '0'),
(21, '编辑', 20, 3, 'Chat/edit', 1, '', '聊天管理', 0, '0'),
(22, '修改', 20, 3, 'Chat/status', 1, '', '聊天管理', 0, '0'),
(23, '提示文字', 2, 1, 'Text/index', 1, '', '提示管理', 0, 'exclamation-sign'),
(24, '编辑', 23, 1, 'Text/edit', 1, '', '提示管理', 0, '0'),
(25, '修改', 23, 1, 'Text/status', 1, '', '提示管理', 0, '0'),
(26, '用户管理', 3, 1, 'User/index', 0, '', '用户', 0, 'user'),
(32, '确认转出', 26, 8, 'User/myzc_qr', 1, '', '用户管理', 0, '0'),
(33, '用户配置', 3, 1, 'User/config', 1, '', '前台用户管理', 0, 'cog'),
(34, '编辑', 33, 2, 'User/index_edit', 1, '', '用户管理', 0, '0'),
(35, '修改', 33, 2, 'User/index_status', 1, '', '用户管理', 0, '0'),
(37, '财产修改', 26, 3, 'Usercoin/edit', 1, '', '用户管理', 0, '0'),
(39, '新增用户组', 38, 0, 'AuthManager/createGroup', 1, '', '权限管理', 0, '0'),
(40, '编辑用户组', 38, 0, 'AuthManager/editgroup', 1, '', '权限管理', 0, '0'),
(41, '更新用户组', 38, 0, 'AuthManager/writeGroup', 1, '', '权限管理', 0, '0'),
(42, '改变状态', 38, 0, 'AuthManager/changeStatus', 1, '', '权限管理', 0, '0'),
(43, '访问授权', 38, 0, 'AuthManager/access', 1, '', '权限管理', 0, '0'),
(44, '分类授权', 38, 0, 'AuthManager/category', 1, '', '权限管理', 0, '0'),
(45, '成员授权', 38, 0, 'AuthManager/user', 1, '', '权限管理', 0, '0'),
(46, '成员列表授权', 38, 0, 'AuthManager/tree', 1, '', '权限管理', 0, '0'),
(47, '用户组', 38, 0, 'AuthManager/group', 1, '', '权限管理', 0, '0'),
(48, '添加到用户组', 38, 0, 'AuthManager/addToGroup', 1, '', '权限管理', 0, '0'),
(49, '用户组移除', 38, 0, 'AuthManager/removeFromGroup', 1, '', '权限管理', 0, '0'),
(50, '分类添加到用户组', 38, 0, 'AuthManager/addToCategory', 1, '', '权限管理', 0, '0'),
(51, '模型添加到用户组', 38, 0, 'AuthManager/addToModel', 1, '', '权限管理', 0, '0'),
(53, '配置', 52, 1, 'Finance/config', 1, '', '', 0, '0'),
(55, '类型', 52, 1, 'Finance/type', 1, '', '', 0, '0'),
(56, '状态修改', 52, 1, 'Finance/type_status', 1, '', '', 0, '0'),
(60, '修改', 57, 3, 'Mycz/status', 1, '', '充值管理', 0, '0'),
(61, '状态修改', 57, 3, 'Mycztype/status', 1, '', '充值管理', 0, '0'),
(64, '状态修改', 62, 5, 'Mytx/status', 1, '', '提现管理', 0, '0'),
(65, '取消', 62, 5, 'Mytx/excel', 1, '', '提现管理', 0, '0'),
(66, '导入excel', 9, 5, 'Mytx/exportExcel', 1, '', '提现管理', 0, '0'),
(68, '委托管理', 5, 1, 'Trade/index', 0, '', '交易', 0, 'stats'),
(69, '成交记录', 5, 2, 'Trade/log', 0, '', '交易', 0, 'stats'),
(70, '修改状态', 68, 0, 'Trade/status', 1, '', '交易管理', 0, '0'),
(71, '撤销挂单', 68, 0, 'Trade/chexiao', 1, '', '交易管理', 0, '0'),
(74, '认购编辑', 72, 2, 'Issue/edit', 1, '', '认购管理', 0, '0'),
(75, '认购修改', 72, 2, 'Issue/status', 1, '', '认购管理', 0, '0'),
(79, '基本配置', 7, 1, 'Config/index', 0, '', '设置', 0, 'cog'),
(80, '短信配置', 7, 2, 'Config/moble', 0, '', '设置', 0, 'cog'),
(81, '客服配置', 7, 3, 'Config/contact', 0, '', '设置', 0, 'cog'),
(82, '银行配置', 79, 4, 'Config/bank', 0, '', '网站配置', 0, 'credit-card'),
(83, '编辑', 82, 4, 'Config/bank_edit', 1, '', '网站配置', 0, '0'),
(85, '编辑', 84, 4, 'Coin/edit', 0, '', '网站配置', 0, '0'),
(87, '状态修改', 84, 4, 'Coin/status', 1, '', '网站配置', 0, '0'),
(89, '编辑市场', 88, 4, 'Market/edit', 0, '', '', 0, '0'),
(91, '状态修改', 88, 4, 'Config/market_add', 1, '', '', 0, '0'),
(92, '图形验证码', 95, 7, 'Verify/code', 1, '', '网站配置', 0, '0'),
(93, '手机验证码', 95, 7, 'Verify/mobile', 1, '', '网站配置', 0, '0'),
(94, '邮件验证码', 95, 7, 'Verify/email', 1, '', '网站配置', 0, '0'),
(95, '其他配置', 7, 6, 'Config/qita', 0, '', '设置', 0, 'cog'),
(97, '推广配置', 8, 2, 'Invit/config', 1, '', '推广管理', 0, 'cog'),
(101, '其他模块调用', 9, 4, 'Tools/invoke', 1, '', '其他', 0, '0'),
(102, '优化表', 9, 4, 'Tools/optimize', 1, '', '其他', 0, '0'),
(103, '修复表', 9, 4, 'Tools/repair', 1, '', '其他', 0, '0'),
(104, '删除备份文件', 9, 4, 'Tools/del', 1, '', '其他', 0, '0'),
(105, '备份数据库', 9, 4, 'Tools/export', 1, '', '其他', 0, ''),
(106, '还原数据库', 9, 4, 'Tools/import', 1, '', '其他', 0, '0'),
(107, '导出数据库', 9, 4, 'Tools/excel', 1, '', '其他', 0, '0'),
(108, '导出Excel', 9, 4, 'Tools/exportExcel', 1, '', '其他', 0, '0'),
(109, '导入Excel', 9, 4, 'Tools/importExecl', 1, '', '其他', 0, '0'),
(115, '图片', 111, 0, 'Shop/images', 0, '', '云购商城', 0, '0'),
(116, '菜单管理', 7, 5, 'Menu/index', 1, '', '开发组', 0, 'list'),
(117, '排序', 116, 5, 'Menu/sort', 0, '', '开发组', 0, '0'),
(118, '添加', 116, 5, 'Menu/add', 0, '', '开发组', 0, '0'),
(119, '编辑', 116, 5, 'Menu/edit', 0, '', '开发组', 0, '0'),
(120, '删除', 116, 5, 'Menu/del', 0, '', '开发组', 0, '0'),
(121, '是否隐藏', 116, 5, 'Menu/toogleHide', 0, '', '开发组', 0, '0'),
(122, '是否开发', 116, 5, 'Menu/toogleDev', 0, '', '开发组', 0, '0'),
(123, '导入文件', 7, 5, 'Menu/importFile', 1, '', '开发组', 0, 'log-in'),
(124, '导入', 7, 5, 'Menu/import', 1, '', '开发组', 0, 'log-in'),
(127, '用户登录', 3, 0, 'Login/index', 1, '', '用户配置', 0, '0'),
(128, '用户退出', 3, 0, 'Login/loginout', 1, '', '用户配置', 0, '0'),
(129, '修改管理员密码', 3, 0, 'User/setpwd', 1, '', '用户', 0, 'home'),
(131, '用户详情', 3, 4, 'User/detail', 1, '', '前台用户管理', 0, 'time'),
(132, '后台用户详情', 3, 1, 'AdminUser/detail', 1, '', '后台用户管理', 0, 'th-list'),
(133, '后台用户状态', 3, 1, 'AdminUser/status', 1, '', '后台用户管理', 0, 'th-list'),
(134, '后台用户新增', 3, 1, 'AdminUser/add', 1, '', '后台用户管理', 0, 'th-list'),
(135, '后台用户编辑', 3, 1, 'AdminUser/edit', 1, '', '后台用户管理', 0, 'th-list'),
(138, '编辑', 2, 1, 'Articletype/edit', 1, '', '内容管理', 0, 'list-alt'),
(140, '编辑', 139, 2, 'Link/edit', 1, '', '内容管理', 0, '0'),
(141, '修改', 139, 2, 'Link/status', 1, '', '内容管理', 0, '0'),
(155, '服务器队列', 9, 3, 'Tools/queue', 0, '', '工具', 0, 'wrench'),
(156, '钱包检查', 9, 3, 'Tools/qianbao', 1, '', '工具', 0, 'wrench'),
(157, '币种统计', 1, 2, 'Index/coin', 0, '', '系统', 0, 'home'),
(163, '提示文字', 7, 5, 'Config/text', 0, '', '设置', 0, 'cog'),
(220, '币种评论', 5, 4, 'Trade/comment', 0, '', '交易', 0, 'stats'),
(278, '文章类型', 2, 2, 'Article/type', 0, '', '内容', 0, 'list-alt'),
(279, '广告管理', 2, 3, 'Article/adver', 0, '', '内容', 0, 'list-alt'),
(280, '友情链接', 2, 4, 'Article/link', 0, '', '内容', 0, 'list-alt'),
(282, '登陆日志', 3, 4, 'User/log', 0, '', '用户', 0, 'user'),
(283, '用户钱包', 3, 5, 'User/qianbao', 0, '', '用户', 0, 'user'),
(284, '提现地址', 3, 6, 'User/bank', 0, '', '用户', 0, 'user'),
(285, '用户财产', 3, 7, 'User/coin', 0, '', '用户', 0, 'user'),
(286, '联系地址', 3, 8, 'User/goods', 0, '', '用户', 0, 'user'),
(287, '交易聊天', 5, 3, 'Trade/chat', 0, '', '交易', 0, 'stats'),
(288, '交易市场', 5, 5, 'Trade/market', 0, '', '交易', 0, 'stats'),
(289, '交易推荐', 5, 6, 'Trade/invit', 0, '', '交易', 0, 'stats'),
(290, '财务明细', 4, 1, 'Finance/index', 0, '', '财务', 0, 'th-list'),
(291, '人民币充值', 4, 2, 'Finance/mycz', 0, '', '财务', 0, 'th-list'),
(292, '人民币充值方式', 4, 3, 'Finance/myczType', 0, '', '财务', 0, 'th-list'),
(293, '人民币提现', 4, 4, 'Finance/mytx', 0, '', '财务', 0, 'th-list'),
(294, '人民币提现配置', 4, 5, 'Finance/mytxConfig', 0, '', '财务', 0, 'th-list'),
(295, '虚拟币转入', 4, 6, 'Finance/myzr', 0, '', '财务', 0, 'th-list'),
(296, '虚拟币转出', 4, 7, 'Finance/myzc', 0, '', '财务', 0, 'th-list'),
(297, '修改状态', 291, 100, 'Finance/myczStatus', 1, '', '财务', 0, 'home'),
(298, '确认到账', 291, 100, 'Finance/myczQueren', 1, '', '财务', 0, 'home'),
(299, '编辑添加', 292, 1, 'Finance/myczTypeEdit', 1, '', '财务', 0, 'home'),
(300, '状态修改', 292, 2, 'Finance/myczTypeStatus', 1, '', '财务', 0, 'home'),
(301, '上传图片', 292, 2, 'Finance/myczTypeImage', 1, '', '财务', 0, 'home'),
(302, '修改状态', 293, 2, 'Finance/mytxStatus', 1, '', '财务', 0, 'home'),
(303, '导出选中', 293, 3, 'Finance/mytxExcel', 1, '', '财务', 0, 'home'),
(304, '正在处理', 293, 4, 'Finance/mytxChuli', 1, '', '财务', 0, 'home'),
(305, '撤销提现', 293, 5, 'Finance/mytxChexiao', 1, '', '财务', 0, 'home'),
(306, '确认提现', 293, 6, 'Finance/mytxQueren', 1, '', '财务', 0, 'home'),
(307, '确认转出', 296, 6, 'Finance/myzcQueren', 1, '', '财务', 0, 'home'),
(309, '清理缓存', 9, 1, 'Tools/index', 0, '', '工具', 0, 'wrench'),
(310, '备份数据库', 9, 2, 'Tools/dataExport', 1, '', '工具', 0, 'wrench'),
(311, '还原数据库', 9, 2, 'Tools/dataImport', 1, '', '工具', 0, 'wrench'),
(312, '管理员管理', 3, 2, 'User/admin', 0, '', '用户', 0, 'user'),
(313, '权限列表', 3, 3, 'User/auth', 0, '', '用户', 0, 'user'),
(314, '编辑添加', 26, 1, 'User/edit', 1, '', '用户', 0, 'home'),
(315, '修改状态', 26, 1, 'User/status', 1, '', '用户', 0, 'home'),
(316, '编辑添加', 312, 1, 'User/adminEdit', 1, '', '用户', 0, 'home'),
(317, '修改状态', 312, 1, 'User/adminStatus', 1, '', '用户', 0, 'home'),
(318, '编辑添加', 313, 1, 'User/authEdit', 1, '', '用户', 0, 'home'),
(319, '修改状态', 313, 1, 'User/authStatus', 1, '', '用户', 0, 'home'),
(320, '重新初始化权限', 313, 1, 'User/authStart', 1, '', '用户', 0, 'home'),
(321, '编辑添加', 282, 1, 'User/logEdit', 1, '', '用户', 0, 'home'),
(322, '修改状态', 282, 1, 'User/logStatus', 1, '', '用户', 0, 'home'),
(323, '编辑添加', 283, 1, 'User/qianbaoEdit', 1, '', '用户', 0, 'home'),
(324, '修改状态', 283, 1, 'User/qianbaoStatus', 1, '', '用户', 0, 'home'),
(325, '编辑添加', 284, 1, 'User/bankEdit', 1, '', '用户', 0, 'home'),
(326, '修改状态', 284, 1, 'User/bankStatus', 1, '', '用户', 0, 'home'),
(327, '编辑添加', 285, 1, 'User/coinEdit', 1, '', '用户', 0, 'home'),
(328, '财产统计', 285, 1, 'User/coinLog', 1, '', '用户', 0, 'home'),
(329, '编辑添加', 286, 1, 'User/goodsEdit', 1, '', '用户', 0, 'home'),
(330, '修改状态', 286, 1, 'User/goodsStatus', 1, '', '用户', 0, 'home'),
(331, '编辑添加', 278, 1, 'Article/typeEdit', 1, '', '内容', 0, 'home'),
(332, '修改状态', 278, 100, 'Article/typeStatus', 1, '', '内容', 0, 'home'),
(333, '编辑添加', 280, 1, 'Article/linkEdit', 1, '', '内容', 0, 'home'),
(334, '修改状态', 280, 100, 'Article/linkStatus', 1, '', '内容', 0, 'home'),
(335, '编辑添加', 279, 1, 'Article/adverEdit', 1, '', '内容', 0, 'home'),
(336, '修改状态', 279, 100, 'Article/adverStatus', 1, '', '内容', 0, 'home'),
(337, '上传图片', 279, 100, 'Article/adverImage', 1, '', '内容', 0, 'home'),
(375, '客服代码', 10, 5, 'Cloud/kefu', 1, '', '扩展', 0, 'tasks'),
(376, '使用', 375, 5, 'Cloud/kefuUp', 1, '', '扩展', 0, 'tasks'),
(377, '访问授权', 313, 1, 'User/authAccess', 1, '', '用户', 0, 'home'),
(378, '访问授权修改', 313, 1, 'User/authAccessUp', 1, '', '用户', 0, 'home'),
(379, '成员授权', 313, 1, 'User/authUser', 1, '', '用户', 0, 'home'),
(380, '成员授权增加', 313, 1, 'User/authUserAdd', 1, '', '用户', 0, 'home'),
(381, '成员授权解除', 313, 1, 'User/authUserRemove', 1, '', '用户', 0, 'home'),
(382, '币种配置', 7, 4, 'Config/coin', 0, '', '设置', 0, 'cog'),
(383, '推广奖励', 8, 1, 'Operate/index', 0, '', '', 0, 'share'),
(384, 'APP配置', 8, 1, 'App/config', 1, '', 'APP管理', 0, 'time'),
(385, 'APP等级', 8, 2, 'App/vip_config_list', 1, '', 'APP管理', 0, 'time'),
(386, 'WAP广告板块', 8, 3, 'Admin/App/ads_list/block_id/1', 0, '', 'WAP管理', 0, 'time'),
(387, 'APP广告用户', 8, 4, 'App/ads_user', 1, '', 'APP管理', 0, 'time'),
(388, '导航配置', 7, 7, 'Config/daohang', 0, '', '设置', 0, 'cog'),
(418, '主题模板', 10, 4, 'Cloud/theme', 0, '', '扩展', 0, 'tasks'),
(425, '商品管理', 6, 1, 'Shop/index', 0, '', '商城管理', 0, 'globe'),
(426, '商城配置', 6, 2, 'Shop/config', 0, '', '商城管理', 0, 'globe'),
(427, '商品类型', 6, 3, 'Shop/type', 0, '', '商城管理', 0, 'globe'),
(428, '付款方式', 6, 4, 'Shop/coin', 0, '', '商城管理', 0, 'globe'),
(429, '购物记录', 6, 5, 'Shop/log', 0, '', '商城管理', 0, 'globe'),
(430, '收货地址', 6, 6, 'Shop/goods', 0, '', '商城管理', 0, 'globe'),
(433, '分红管理', 6, 3, 'Fenhong/index', 0, '', '分红管理', 0, 'globe'),
(434, '分红记录', 6, 5, 'Fenhong/log', 0, '', '分红管理', 0, 'globe'),
(435, '充值记录', 6, 1, 'Huafei/index', 1, '', '话费充值', 0, 'globe'),
(436, '充值配置', 6, 1, 'Huafei/config', 1, '', '话费充值', 0, 'globe'),
(437, '充值金额', 6, 3, 'Huafei/type', 1, '', '话费充值', 0, 'globe'),
(438, '付款方式', 6, 4, 'Huafei/coin', 1, '', '话费充值', 0, 'globe'),
(439, '投票记录', 6, 1, 'Vote/index', 0, '', '新币投票', 0, 'globe'),
(440, '投票类型', 6, 1, 'Vote/type', 0, '', '新币投票', 0, 'globe'),
(441, '理财管理', 6, 1, 'Money/index', 1, '', '理财管理', 0, 'globe'),
(442, '理财日志', 6, 2, 'Money/log', 1, '', '理财管理', 0, 'globe'),
(443, '理财明细', 6, 3, 'Money/fee', 1, '', '理财管理', 0, 'globe'),
(448, '认购管理', 6, 1, 'Issue/index', 0, '', '认购管理', 0, 'globe'),
(449, '认购记录', 6, 1, 'Issue/log', 0, '', '认购管理', 0, 'globe'),
(450, '中奖管理', 3, 1, 'User/award', 0, '', '用户', 0, 'user'),
(451, '应用管理', 10, 3, 'Cloud/game', 1, '', '扩展', 0, 'tasks');

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_message`
--

CREATE TABLE `ecshecom_message` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_message_log`
--

CREATE TABLE `ecshecom_message_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_money`
--

CREATE TABLE `ecshecom_money` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `num` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `deal` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `tian` int(11) UNSIGNED NOT NULL,
  `fee` int(11) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投资理财表';

--
-- 转存表中的数据 `ecshecom_money`
--

INSERT INTO `ecshecom_money` (`id`, `name`, `coinname`, `num`, `deal`, `tian`, `fee`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, '1111', 'bxb', 1, 0, 11, 11, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_money_fee`
--

CREATE TABLE `ecshecom_money_fee` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `money_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `num` int(6) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_money_log`
--

CREATE TABLE `ecshecom_money_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `num` int(11) UNSIGNED NOT NULL,
  `fee` decimal(20,8) UNSIGNED NOT NULL,
  `feea` decimal(20,8) UNSIGNED NOT NULL,
  `tian` int(11) UNSIGNED NOT NULL,
  `tiana` int(11) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL,
  `money_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='理财记录表';

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_mycz`
--

CREATE TABLE `ecshecom_mycz` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `num` float(11,2) UNSIGNED NOT NULL,
  `mum` float(11,2) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `tradeno` varchar(50) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值记录表';

--
-- 转存表中的数据 `ecshecom_mycz`
--

INSERT INTO `ecshecom_mycz` (`id`, `userid`, `num`, `mum`, `type`, `tradeno`, `remark`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 1, 100.21, 100.21, 'alipay', 'IT197843', '', 0, 1497342257, 1497342274, 2),
(2, 1, 100.66, 0.00, 'bank', 'YS281963', '', 0, 1497343756, 0, 0),
(3, 1, 100.59, 0.00, 'bank', 'GU797214', '', 0, 1497343790, 0, 3),
(4, 1, 100.71, 0.00, 'alipay', 'SZ175852', '', 0, 1497344272, 0, 0),
(5, 1, 100.17, 0.00, 'weixin', 'BX276429', '', 0, 1497344278, 0, 0),
(7, 2, 49999.17, 0.00, 'bank', 'UM961374', '', 0, 1497608736, 0, 0),
(8, 15, 100.38, 0.00, 'alipay', 'SK572366', '', 0, 1498810456, 0, 0),
(9, 15, 100.85, 0.00, 'bank', 'RX461923', '', 0, 1498810690, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_mycz_invit`
--

CREATE TABLE `ecshecom_mycz_invit` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `userid` int(11) UNSIGNED NOT NULL COMMENT '用户id',
  `invitid` int(11) UNSIGNED NOT NULL COMMENT '推荐人id',
  `num` decimal(20,2) UNSIGNED NOT NULL COMMENT '操作金额',
  `fee` decimal(20,8) UNSIGNED NOT NULL COMMENT '赠送金额',
  `coinname` varchar(50) NOT NULL COMMENT '赠送币种',
  `mum` decimal(20,8) UNSIGNED NOT NULL COMMENT '到账金额',
  `remark` varchar(250) NOT NULL COMMENT '备注',
  `sort` int(11) UNSIGNED NOT NULL COMMENT '排序',
  `addtime` int(11) UNSIGNED NOT NULL COMMENT '添加时间',
  `endtime` int(11) UNSIGNED NOT NULL COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值赠送';

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_mycz_type`
--

CREATE TABLE `ecshecom_mycz_type` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值类型';

--
-- 转存表中的数据 `ecshecom_mycz_type`
--

INSERT INTO `ecshecom_mycz_type` (`id`, `max`, `min`, `kaihu`, `truename`, `name`, `title`, `url`, `username`, `password`, `img`, `extra`, `remark`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, '100000', '50', '企业支付宝', '海通网络', 'alipay', '支付宝转账支付', '', '502182299@qq.com', '', '595607f635afa.png', '', '需要在联系方式里面设置支付宝账号', 0, 0, 0, 1),
(2, '', '', '', '海通网络', 'weixin', '微信转账支付', '', 'weixinzhifu', '123456', '', '', '需要在联系方式里面设置微信账号', 0, 0, 0, 1),
(3, '50000', '100', '中国民生银行郑州紫荆支行', '中国民生银行', 'bank', '网银转账支付', '', '6226223005694214', '502182299', '57de3a186ea05.jpg', '', '需要在联系方式里面按照格式天数收款银行账号', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_mytx`
--

CREATE TABLE `ecshecom_mytx` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `num` int(11) UNSIGNED NOT NULL,
  `fee` decimal(20,2) UNSIGNED NOT NULL,
  `mum` decimal(20,2) UNSIGNED NOT NULL,
  `truename` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `bank` varchar(250) NOT NULL,
  `bankprov` varchar(50) NOT NULL,
  `bankcity` varchar(50) NOT NULL,
  `bankaddr` varchar(50) NOT NULL,
  `bankcard` varchar(200) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='提现记录表';

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_myzc`
--

CREATE TABLE `ecshecom_myzc` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL,
  `num` decimal(20,8) UNSIGNED NOT NULL,
  `fee` decimal(20,8) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_myzc_fee`
--

CREATE TABLE `ecshecom_myzc_fee` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `coinname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `txid` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fee` decimal(20,8) NOT NULL,
  `num` decimal(20,8) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_myzr`
--

CREATE TABLE `ecshecom_myzr` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL,
  `num` decimal(20,8) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `fee` decimal(20,8) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_pool`
--

CREATE TABLE `ecshecom_pool` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `ico` varchar(50) NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL,
  `tian` int(11) UNSIGNED NOT NULL,
  `limit` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='矿机类型表';

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_pool_log`
--

CREATE TABLE `ecshecom_pool_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ico` varchar(50) NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL,
  `tian` int(11) UNSIGNED NOT NULL,
  `limit` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `num` int(11) UNSIGNED NOT NULL,
  `use` int(11) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='矿机管理';

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_prompt`
--

CREATE TABLE `ecshecom_prompt` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_shop`
--

CREATE TABLE `ecshecom_shop` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `coinlist` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `buycoin` varchar(255) NOT NULL DEFAULT 'cny',
  `price` decimal(20,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `num` decimal(20,0) UNSIGNED NOT NULL DEFAULT '0',
  `deal` decimal(20,0) UNSIGNED NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `max` varchar(255) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `market_price` decimal(20,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `qq3479015851_awardcoinnum` int(4) NOT NULL DEFAULT '0',
  `qq3479015851_awardcoin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城商品表';

--
-- 转存表中的数据 `ecshecom_shop`
--

INSERT INTO `ecshecom_shop` (`id`, `name`, `coinlist`, `img`, `type`, `buycoin`, `price`, `num`, `deal`, `content`, `max`, `sort`, `addtime`, `endtime`, `status`, `market_price`, `qq3479015851_awardcoinnum`, `qq3479015851_awardcoin`) VALUES
(1, '苹果（Apple）MacBook Pro MF839CH/A 13.3英寸宽屏笔记本电脑', '', '/Upload/shop/5822a937b9874.png', 'ryp', 'cny', '8888.00', '11110', '2', '<div style="margin:0px auto;padding:0px;font-family:微软雅黑;color:#666666;background-color:#FFFFFF;">\r\n	<p style="font-family:tahoma, &quot;font-size:55px;text-align:center;">\r\n		MacBook Pro\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:24px;text-align:center;">\r\n		配备Retina 显示屏\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		每一像素颗粒，尽显澎湃动力。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150316172658167.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;color:#666666;background-color:#FFFFFF;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		绚丽夺目的 Retina 显示屏\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		领先于时代好几百万像素\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;">\r\n		15 英寸机型拥有超过 500 万像素，13 英寸机型拥有超过 400 万像素。因此，无论你是在润饰照片还是剪辑 HD高清家庭影片，都能获得令人震撼的清晰度。文字也锐利清晰，让浏览网页和修改文档这些日常之事都变得比以往更加赏心悦目。这样的显示屏方能配得上这款极为先进的笔记本电脑。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150316172704893.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;color:#666666;background-color:#FFFFFF;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		Force Touch 触控版\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		让相应式深入全新境界\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;">\r\n		13 英寸 MacBook Pro 带来你与 Mac 互动的全新方式。设计精巧的 Force Touch 触控板，让你无论点按表面的哪个位置，都能得到灵敏且效果一致的点击响应。在触控板下方，力度感应器能检测你的点按力度，为触控操作添加全新维度。你可以通过用力长按来启用一系列新功能，例如只需在触控板上增加按压力度，即可快速查看词语定义或预览文件。你还可以体验触觉反馈，触控板会发出触觉振动，因此你在屏幕上看到的一切，还能感觉到。所有这些先进功能，全可与深受 Mac 用户喜爱的 Multi-Touch 手势配合使用。轻轻松松间，你与 Mac 之间的沟通，迈入全新境界。仅限13英寸机型。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150316172711911.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;color:#666666;background-color:#FFFFFF;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		众多全新高性能技术\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		技术齐心协力，更快成就一切\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;">\r\n		拥有动力强劲的双核与四核 Intel 处理器、先进的图形处理器、基于 PCIe 的高速闪存、疾速内存和 Thunderbolt 2 端口，配备 Retina 显示屏的 MacBook Pro 带来全方位卓越性能，满足你对笔记本电脑的所有期待。无论你是浏览网站或构建网站，还是播放流媒体视频或剪辑视频，MacBook Pro 都能以超乎想象的动力和速度飞速处理极为复杂 (和不太复杂) 的任务。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150316172717994.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;color:#666666;background-color:#FFFFFF;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		纤薄、轻巧、强劲\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		毫厘之间，蕴藏无限创新\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;">\r\n		MacBook Pro 的设计精髓，就是在有限空间里满载强劲性能。因为我们相信，追求高性能不应该牺牲便携性。尽管全新 13 英寸 MacBook Pro 如此轻巧，却仍能提供长达 10 小时的电池使用时间，比前一代产品更长一个小时*。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150316172723576.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;color:#666666;background-color:#FFFFFF;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		配备一系列强大APP\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		工作事事顺手，娱乐即可上手\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;">\r\n		每台全新 Mac 均配备 iPhoto、iMovie、GarageBand、Pages、Numbers 和 Keynote。从开启它的那一刻起，你就可以运用照片、视频、音乐、文档、电子表格和演示文稿来尽情挥洒创意。为了配合 OS X Yosemite 的精美设计，这些 app 均已进行升级。同时，你还享有多款精彩 app，用以收发电子邮件、畅游网络、发送文本信息、进行 FaceTime 视频通话，甚至还有一款 app，可以帮你查找新的 app。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150316172730531.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;background-color:#F8F8F8;color:#666666;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		OS X Yosemite\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		超前的电脑操作系统\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;">\r\n		OS X Yosemite 使用简易、优雅美观，更经过精心打造，使得 Mac 硬件的功能得到充分发挥，堪称超前的电脑操作系统。它配备一系列出众的 app，满足你的日常所需。此外，它还让你的 Mac 和 iOS 设备能以绝佳方式默契合作。\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;background-color:#F8F8F8;color:#666666;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		Retina 显示屏\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		好几百万像素的好风景\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		<br />\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		13 英寸 MacBook Pro\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		13 英寸配备 Retina 显示屏的 MacBook Pro\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;background-color:#F8F8F8;color:#666666;">\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		当你将如此多的像素纳入一个显示屏中：13 英寸机型达到 400 多万像素，15 英寸机型达到 500 多万像素，效果绝对绚丽夺目。其超高像素密度已超过人眼所能分辨的范围，使图像的逼真度提升至全新境界。13 英寸 MacBook Pro 具备惊人的 2560 x 1600 像素分辨率，而 15 英寸 MacBook Pro 拥有同样可观的 2880 x 1800 像素分辨率，可让你的高分辨率图像以像素级的精度纤毫毕现。而且文字如此锐利，让你竟有种在纸面上阅读电子邮件、网页和文档的感觉。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		Retina 显示屏在保持非凡色彩和画质的同时，减少了眩光的出现。它的高对比度令黑色更浓郁，白色更明亮，其他一切色彩也都显得更丰富，更鲜艳。IPS 技术让你能够以 178 度的宽广视角观赏屏幕上的一切，因此你几乎可以从任何角度感受到它的与众不同。你也一定会为自己所看到的一切而着迷。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;">\r\n		13 英寸配备 Retina 显示屏的 MacBook Pro 比 HDTV 多了近 200 万像素，15 英寸机型则多了 300 万像素。\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;background-color:#F8F8F8;color:#666666;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		先进的 Intel 移动处理器\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		双核、四核，强大不可小视\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;">\r\n		13 英寸配备 Retina 显示屏的 MacBook Pro，搭载第五代双核 Intel Core i5 或 Intel Core i7 处理器，可随时随地轻松满足那些对性能有较高要求的 app。这意味着，无论你带着相机去哪里，你的整个数字照片工作室将如影随行。每款机型均采用超线程技术，通过让每个内核同时处理多个任务来增强性能。快达 3.1GHz 的处理速度、高达 4MB 的共享三级缓存和高达3.4GHz 的 Turbo Boost 睿频加速技术，使这些处理器可随时应对任何任务。\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;background-color:#F8F8F8;color:#666666;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		高性能图形处理器\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		荧屏表现，淋漓尽致\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;">\r\n		13 英寸配备 Retina 显示屏的 MacBook Pro 搭载 Intel Iris Graphics 6100 图形处理器，是执行日常任务和各种图形密集型创意 app 的理想选择。你可以轻松翻阅大型照片库，畅玩那些充满精彩细节的游戏，还能连接一或两台外部显示器，这是对 13 英寸 MacBook Pro 小巧身材和超凡性能的又一次精彩诠释。\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;background-color:#F8F8F8;color:#666666;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		长效电池\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		续航长达 10 小时\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		13 英寸 MacBook Pro 充电一次可运行长达 10 小时，比上一代多了一小时。而 15 英寸机型可运行长达 8小时。对任何笔记本电脑而言，这样的电池使用时间都令人赞叹。但对于配备了超高分辨率显示屏、先进处理器和图形处理器，以及超薄设计的高性能笔记本电脑而言，这绝对是超乎想象的。内置电池能为你提供多达 1000 次的完全充电和放电循环。\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;background-color:#F8F8F8;color:#666666;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		更快的全闪存\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		闪存之名，并非徒有虚名\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		基于 PCle 的闪存拥有惊人的读写速度，无论你做什么，都能感受到其中的差别：启动非常快速，app 开启迅捷，甚至连桌面操作也十分流畅，响应十分迅速。13 英寸机型的闪存比前一代产品快达 2 倍，令你能在瞬间导入海量图片库。而在 15 英寸机型上，闪存与四核处理器和高性能图形处理器相结合，令 Final Cut Pro X 中要求极高的剪辑任务也能快速完成。由于这些 MacBook Pro 机型均配备了高达 1TB 的闪存，因此你可以随身携带所有的重要文件3。此外，闪存没有任何活动部件，所以超级耐用且十分安静。\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;color:#666666;background-color:#FFFFFF;">\r\n	<p style="font-family:tahoma, &quot;font-size:30px;text-align:center;">\r\n		Mac 之妙\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:26px;text-align:center;">\r\n		妙在它能帮你做到的一切\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;">\r\n		每台 Mac 都配备了众多激发创意和提升效率的 app。同时，还拥有一系列出色的 app 来处理各种日常事务，包括浏览网页、发送邮件和信息，以及整理你的日历。甚至还有一款 app，可以帮你查找新的 app。所以，你的 Mac 不仅功能齐备，而且全副武装。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150316173058291.jpg" />\r\n	</p>\r\n</div>', '', 1, 1478620800, 1478666634, 1, '8900.00', 0, ''),
(2, 'E能之芯 铝合金纳米微吸手机平板通用底座支架', '', '/Upload/shop/5822a9af793d6.png', 'ryp', 'cny', '4500.00', '9999', '0', '<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181046506.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181051106.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181058295.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181105146.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181111449.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181117691.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181125633.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181133337.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181140847.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181147149.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181155338.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181203553.jpg" />\r\n</p>\r\n<p style="font-family:微软雅黑, Arial;color:#666666;text-align:center;background-color:#FFFFFF;">\r\n	<img src="http://goodsimg.1yyg.com/GoodsInfo/20150723181209887.jpg" />\r\n</p>', '', 2, 1478620800, 1478666734, 1, '5000.00', 0, ''),
(3, '捷视（JS）A1 商务家用手持高清无线微型投影仪', '', '/Upload/shop/5822a9ff1e0f6.png', 'ryp', 'cny', '3000.00', '999', '0', '<div style="margin:10px auto;padding:0px;font-family:微软雅黑;background-color:#FFFFFF;color:#333333;">\r\n	<p style="font-family:tahoma, &quot;font-size:35px;text-align:center;">\r\n		捷视 A1无线微型投影仪\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:20px;text-align:center;">\r\n		全球首款基于DLP技术，LED光源技术微型投影仪\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;text-indent:28px;">\r\n		A1是全球首款基于DLP技术，0.3英寸DMD芯片全功能自解码（最高支持1080P分辨率视频）LED光源技术微型投影仪，内置无线通讯互联技术模块，同各种数码产品相连接，无需外接繁琐的数据线及电源线，不受空间，地域环境限制。LED微型投影仪，又称口袋式投影机、便携式投影机、是把传统庞大的投影机精巧化、便携化、微小化，娱乐化、实用化、使投影更加贴近生活和娱乐。由于采用国际一流（OSRAM，欧司朗半导体公司）LED光源技术，鉴于LED的超强使用寿命，该机平均使用寿命超过3万小时。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150416165527528.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:10px auto;padding:0px;font-family:微软雅黑;background-color:#FFFFFF;color:#333333;">\r\n	<p style="font-family:tahoma, &quot;font-size:35px;text-align:center;">\r\n		小投影，大画面\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:20px;text-align:center;">\r\n		工作、娱乐一机到位，随时随地与他人分享\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;text-indent:28px;">\r\n		业界首款内置无线高速Wi-Fi模块及1080P高清解码芯片，可解读及传输九城以上视频片源，让你的网络视频无处不在，小投影，大画面，随时随地同他人分享视频、图片等资源，采用直读TF卡或者机器内存的OFFICE文档，处理文档更加方便快捷。A1无线微型投影仪适用于移动商务（尤其是：IT、咨询、顾问、金融、保险、直销等行业）、产品展示，播放OFFICE文档，数码产品影视分享，电玩游戏、小型会议及教学、户外娱乐活动、PARTY等，儿童教育及娱乐。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150416165536856.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:10px auto;padding:0px;font-family:微软雅黑;background-color:#FFFFFF;color:#333333;">\r\n	<p style="font-family:tahoma, &quot;font-size:35px;text-align:center;">\r\n		内置无线通讯模块\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:20px;text-align:center;">\r\n		手机遥控器，有线无线连接电脑，一步到位\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;text-indent:28px;">\r\n		支持手机遥控器，手机可当做是遥控器来操控投影。连接电脑，可有线、无线连接电脑。该产品不仅可以通过只读取TF卡或机器内存功能，还可以通过内置无线通讯模块同智能手机无线连接，将手机屏幕显示内容无线传输到投影仪，并投射出来，支持安卓同苹果系统手机，同时支持该系统的 iPad、PC等，并能够有线无线连接笔记本或台式电脑并同时镜像屏幕内容。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150416165543271.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:10px auto;padding:0px;font-family:微软雅黑;background-color:#FFFFFF;color:#333333;">\r\n	<p style="font-family:tahoma, &quot;font-size:35px;text-align:center;">\r\n		全球首款人性化的操作界面\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:20px;text-align:center;">\r\n		易读、易懂、易操作\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;text-align:center;text-indent:28px;">\r\n		全球首款人性化的操作界面，易读易懂，与同类产品相比，首次接触该产品的使用者，能在更短的时间内掌握大部分功能操作，让使用者能以愉快的心情去欣赏所喜爱的视频画面中。手持投影产品中，这款亮度适中，画面对比度1000：1，854x480高分辨率，色彩艳丽通透，还原性好，图像清晰、锐利，播放文档等文字清晰高，细节良好。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150416165550219.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;background-color:#FFFFFF;color:#333333;">\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150416165559914.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:10px auto;padding:0px;font-family:微软雅黑;background-color:#F8F8F8;color:#666666;">\r\n	<p style="font-family:tahoma, &quot;font-size:20px;">\r\n		与其他同类产品相比，具有如下特点及优点:\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		● 业界同功能的整机中体积最小，重量最轻，携带性更好。<br />\r\n● 能通过有线无线连接windows系统，苹果系统产品，安卓系统产品等。<br />\r\n● 同距离投影时，画面面积要比同类产品大10英寸左右，画面直观看起来更加舒服，流畅。<br />\r\n● 机器内置无线通讯模块，数据处理与接收稳定，不受外界环境因素，搬动，震动等造成无线通讯信号中断或者影响播放流畅度，整机批量供货时良品高。<br />\r\n● 由于使用的是聚合物锂电池，安全性要高于市场上同类机型所用电池，续航能力及使用寿命高于普通锂电池。<br />\r\n● 优化散热设计风道，噪音低，整机开孔率少，吸附灰尘几率小，外观工艺处理更好，整机故障返修率低。\r\n	</p>\r\n</div>\r\n<div style="margin:10px auto;padding:0px;font-family:微软雅黑, Arial;color:#666666;background-color:#FFFFFF;">\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150416171738581.jpg" />\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150416171753458.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:10px auto;padding:0px;font-family:微软雅黑, Arial;color:#666666;background-color:#FFFFFF;">\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150416165629394.jpg" />\r\n	</p>\r\n</div>\r\n<div style="margin:0px auto;padding:0px;font-family:微软雅黑;background-color:#FFFFFF;color:#333333;">\r\n	<p style="font-family:tahoma, &quot;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20150416165636135.jpg" />\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		1、是否所有的手机都能与该微型投影仪无线连接？\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		答：目前支持的手机操作系统为安卓4.0版本以上，苹果系统版本为5.1（含该版本）才能使用，暂不支持windowsphone系列操作系统手机。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		2、画面最大可以投影多大面积？\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		答：40英寸左右/1米，在较暗的房间里投射面积更大，最大80英寸，视 环境及投射内容来决定投影面积大小。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		3、机器内部有自带内存吗？\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		答：机器除去可以外接TF卡（最高支持32G）外，内部自带4G内存，可以存储用户想要存储的内容。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		4、可以遥控吗，为何没有遥控器？\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		答：该产品的设计理念为手持产品，机器表面按键基本能满足遥控的功能，不是桌面大型投影，按键功能操作起来更方便，不存在遥控死角，携带方便 。其次我们设计的同智能手机可以无线通讯的，利用手机同无线Wi-fi连接，可以实现网上内容海量传输，同时手机也可以安装EZCONTROL这个APP软件，通过这个软件来操作投影整个功能。大部分遥控功能手机可以取代，通过手机触控操作更加方便。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		5、可以外接音箱吗？\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		答：可以外接多媒体或者其他有线有源音箱。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		6、可以用移动电源对机器供电吗？选用怎样的移动电源供电？一般的移动电源可以用多长时间？\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		答：可以使用，根据我们外接的供充电适配器供电参数，选用的移动电源是5V/2A的，使用Micro usb的插头即可，使用时间要看投影播放的内容及移动电源的电池容量。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		7、整机的使用寿命能用多久，售后怎样保证？\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		答：整机使用的全球一流的LED光源技术，上面栏目已经提到，正常使用寿命是3万小时以上，按照每天使用8小时计算，8小时X365=2920小时，整机最低可以使用8年以上，微型投影结构设计难度在于散热及风道设计合理，本机不同于市场上某些产品，开孔率高，风道设计分散，容易吸进灰尘，造成机器电路板损坏及散热风扇停转；其次市场上某些机器由于散热设计不合理，发热量高，机器在工作的时候，明显感觉到机身发热，甚至超过使用者的耐热温度，给使用者不好的体验感。本机整机噪音亦低于同类产品，不会在你使用的时候听到恼人的噪音；本机已通过国家3C认证，安全性及品质有保证，不用担心使用安全及售后服务。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		8、亮度会衰减吗？\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		答：使用3到5年以后，可能亮度衰减总体15%，电子产品本身是消耗品，长期使用后，亮度衰减是属于正常情况，但是整机不会停止工作，在投射画面亮度上略显偏低。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		9、这个投影仪为什么没有幕布？直接投在白色墙上效果会受影响吗？\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		答: 这个是便携式投影仪，设计思想是随时随地投影，所以没有必要配投影幕，投射到墙壁上是可以的，白色无污点的墙壁即可，投影效果没有影响。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		10、为什么机器在使用中，感觉机身有些热量？\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		答：投影机内部光源在工作时会产生热量，通过内部的风路将热量散出，热量在行进过程中，部分会通过机器外壳，所以会感觉到机器外壳有些热量，属于正常现象，不会影响使用。\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:15px;font-weight:bold;">\r\n		11、使用注意重点事项？\r\n	</p>\r\n	<p style="font-family:tahoma, &quot;font-size:14px;">\r\n		答：严禁进、出空气口被异物阻档，或者机身被其他物体覆盖，导致机器工作时产生的热量将不能及时有效排出，造成机身发热明显，损坏整机；严禁在风沙环境中或者强酸强碱环境中使用；严禁机器进水等其他液体，以免损坏整机。\r\n	</p>\r\n</div>', '', 3, 1478620800, 1478666774, 1, '3300.00', 0, ''),
(4, '苹果（Apple）iPad Air 2 9.7英寸平板电脑 16G Wi', '', '/Upload/shop/5822aa3f7dbac.png', 'ryp', 'cny', '4444.00', '33321', '12', '<div class="__kindeditor_paste__">\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;font-size:45px;text-align:center;">\r\n		d折diPad Air 2\r\n	</p>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;font-size:35px;text-align:center;">\r\n		轻轻地，改变一切。\r\n	</p>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20141024154812638.jpg" />\r\n	</p>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;">\r\n		<br />\r\n	</p>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;">\r\n		<br />\r\n	</p>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;font-size:30px;text-align:center;">\r\n		多才多能，让你不想放手；<br />\r\n<br />\r\n又轻又薄，让你不觉在手。\r\n	</p>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;font-size:14px;text-align:center;">\r\n		对于 iPad，我们一直都有一个看似自相矛盾的目标：要创造一部功能极为强大，但又轻盈纤薄到你不觉在手的设备；一部让你能全力挥洒，但却毫不费力的设备。 iPad Air 2 不仅实现了这一切，甚至还超出了我们的预期。\r\n	</p>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;">\r\n		<br />\r\n	</p>\r\n	<div style="margin:0px auto;padding:0px;font-family:微软雅黑;background-color:#F8F8F8;color:#333333;">\r\n		<p style="font-family:tahoma, "font-size:35px;">\r\n			<br />\r\n		</p>\r\n	</div>\r\n	<div style="margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;background-color:#FFFFFF;">\r\n		<p style="font-family:tahoma, "text-align:center;">\r\n			<img src="http://goodsimg.1yyg.com/GoodsInfo/20141024154927978.jpg" />\r\n		</p>\r\n	</div>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;">\r\n		<br />\r\n	</p>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;font-size:35px;text-align:center;">\r\n		众多 App，为 iPad 量身打造，<br />\r\n<br />\r\n也为成就你想做的一切。\r\n	</p>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;font-size:14px;text-align:center;">\r\n		iPad Air 2 内置多款强大 app 来让你处理日常事务，比如浏览网络，查收电子邮件，编辑影片和照片，撰写报告和阅读图书。不仅如此，App Store 中还有成千上万款 app，专为 iPad 宽大的多点触控 Retina 显示屏而精心设计，绝不仅仅是手机 app 的简单放大。因此，无论你是爱好摄影，游戏，旅行，还是想管理自己的财务，总有一款 app 会让你做得更出色。\r\n	</p>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;text-align:center;">\r\n		<img src="http://goodsimg.1yyg.com/GoodsInfo/20141024154934369.jpg" />\r\n	</p>\r\n	<p style="font-family:tahoma, "background-color:#F8F8F8;">\r\n		<br />\r\n	</p>\r\n	<div style="margin:0px auto;padding:0px;font-family:微软雅黑;color:#333333;background-color:#FFFFFF;">\r\n		<p style="font-family:tahoma, "font-size:35px;text-align:center;">\r\n			iOS 8 和 iPad Air 2，<br />\r\n强强联手。\r\n		</p>\r\n		<p style="font-family:tahoma, "font-size:14px;text-align:center;">\r\n			iOS 8 是超前的移动操作系统，其先进功能让 iPad Air 2 变得更不可或缺。连续互通功能可让你在这部设备上开始一个项目，然后在另一部设备上继续完成。家人共享功能让你与多达六人轻松共享图书和 app。而 iCloud Drive 可让你安全存储各种类型的文档，并从你的各种设备上访问。事实上，iOS 8 上的一切功能不仅是为了与 iPad Air 2 默契配合而设计，也是为了将强大的 A8X 芯片、超快的无线连接、以及绚丽 Retina 显示屏的优势发挥到淋漓尽致而打造。\r\n		</p>\r\n		<p style="font-family:tahoma, "text-align:center;">\r\n			<img src="http://goodsimg.1yyg.com/GoodsInfo/20141024154942167.jpg" />\r\n		</p>\r\n	</div>\r\n</div>', '', 4, 1478666839, 1478666839, 1, '6666.00', 2, 'btc');

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_shop_addr`
--

CREATE TABLE `ecshecom_shop_addr` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `truename` varchar(50) NOT NULL DEFAULT '0',
  `moble` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_shop_coin`
--

CREATE TABLE `ecshecom_shop_coin` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `shopid` int(11) UNSIGNED NOT NULL COMMENT '商品id',
  `cny` varchar(200) NOT NULL,
  `bxb` varchar(200) NOT NULL,
  `glc` varchar(200) NOT NULL,
  `abc` varchar(200) NOT NULL,
  `twc` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品付款方式表';

--
-- 转存表中的数据 `ecshecom_shop_coin`
--

INSERT INTO `ecshecom_shop_coin` (`id`, `shopid`, `cny`, `bxb`, `glc`, `abc`, `twc`) VALUES
(1, 1, '', '', '', '', ''),
(2, 2, '', '', '', '', ''),
(3, 3, '', '', '', '', ''),
(4, 4, '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_shop_log`
--

CREATE TABLE `ecshecom_shop_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` varchar(255) NOT NULL,
  `shopid` varchar(50) NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `coinname` varchar(50) NOT NULL DEFAULT '0.00',
  `num` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `addr` varchar(50) NOT NULL DEFAULT '0.0000',
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `xuyao` decimal(20,8) UNSIGNED NOT NULL COMMENT '价'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物记录表';

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_shop_type`
--

CREATE TABLE `ecshecom_shop_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品分类';

--
-- 转存表中的数据 `ecshecom_shop_type`
--

INSERT INTO `ecshecom_shop_type` (`id`, `name`, `title`, `remark`, `sort`, `endtime`, `addtime`, `status`) VALUES
(1, 'bjp', '保健品', '保健品', 1, 1475942400, 1475942400, 1),
(2, 'ryp', '日用品', '日用品', 2, 1476115200, 1476115200, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_text`
--

CREATE TABLE `ecshecom_text` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecshecom_text`
--

INSERT INTO `ecshecom_text` (`id`, `name`, `title`, `content`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'game_vote', '37', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>37请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1469733741, 0, 0),
(2, 'finance_index', '36财务中心', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span><span style="color:#CC33E5;">财务中心</span><span style="color:#CC33E5;"></span></span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;"><span style="color:#EE33EE;"></span></span>', 0, 1475325266, 0, 1),
(3, 'finance_myzr', '34虚拟币钱包地址', '<span style="color:#CC33E5;line-height:21px;background-color:#FFFFFF;"><span style="color:#CC33E5;"><span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:normal;background-color:#FFFFFF;">虚拟币钱包地址</span></span></span>', 0, 1475325312, 0, 1),
(4, 'finance_myzc', '33转出虚拟币', '<p>\r\n	<span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:14px;line-height:21px;background-color:#FFFFFF;">转出说明：</span> \r\n</p>\r\n<p>\r\n	<span style="color:#333333;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:20px;line-height:21px;background-color:#FFFFFF;"><span style="font-size:14px;color:#CC33E5;">1：为了安全，转出是由人工</span><span style="font-size:14px;color:#CC33E5;">处理，您提交后我们会在短时间内为你处理</span></span> \r\n</p>\r\n<p>\r\n	<span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:14px;line-height:21px;background-color:#FFFFFF;">2：为了加快转币速度，我们会为每次转币支付网络费，但由于网络的不确定性，部分转币仍会较慢，请耐心等待</span> \r\n</p>\r\n<p>\r\n	<span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:12px;line-height:21px;background-color:#FFFFFF;"><span style="font-size:14px;color:#CC33E5;">3：转出的服务费为每次</span><span class="coin-feerate" style="font-weight:700;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:24px;font-size:14px;background-color:#FFFFFF;">1.00%</span></span>\r\n</p>\r\n<p>\r\n	<span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:12px;line-height:21px;background-color:#FFFFFF;"><span class="coin-feerate" style="font-weight:700;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;color:#333333;line-height:24px;background-color:#FFFFFF;"><span style="color:#333333;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:24px;background-color:#FFFFFF;"><span style="font-size:14px;color:#CC33E5;">4：转出</span></span></span></span><span style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;font-size:14px;color:#CC33E5;background-color:#FFFFFF;">虚拟币</span><span style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;">的单次不低于</span><span class="coin-min" style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;">10</span><span style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;">，不高于</span><span class="coin-limit" style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;">300000</span><span style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;font-size:14px;color:#CC33E5;background-color:#FFFFFF;"></span>\r\n</p>', 0, 1475325321, 0, 1),
(5, 'finance_mywt', '32委托管理', '<span style="color:#CC33E5;"><span style="line-height:21px;color:#CC33E5;background-color:#FFFFFF;">请在此查询您的委托记录</span></span>', 0, 1475325496, 0, 0),
(6, 'finance_mycj', '30成交查询', '<span style="color:#9933E5;font-size:14px;"><span style="line-height:21px;color:#9933E5;font-size:14px;background-color:#FFFFFF;">查询全部买入卖出的成交记录</span></span>', 0, 1475325508, 0, 1),
(7, 'finance_mycz', '29人民币充值', '<span style="color:#9933E5;line-height:21px;"><span style="color:#9933E5;"><span style="color:#9933E5;font-family:''Microsoft YaHei'';font-size:14px;line-height:34px;">只允许使用本人的支付宝进行</span></span></span><span style="color:#0096E0;line-height:21px;"><span><span style="color:#FF0D00;font-family:''Microsoft YaHei'';font-size:14px;line-height:34px;"><span style="color:#9933E5;"></span><span style="color:#9933E5;">转账充值，请确保汇款人姓名与帐号注册的身份证姓名一致</span></span></span></span><span style="color:#9933E5;font-family:''Microsoft YaHei'';font-size:14px;line-height:34px;">。充值限额100至50000，充值到账时间为每天早上：09点至11点 &nbsp;-下午16点至18点，请提前做好充值准备</span>', 0, 1475325515, 0, 1),
(8, 'user_index', '28安全中心', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span><span style="color:#CC33E5;line-height:21px;background-color:#FFFFFF;">请在安全中心邦定您的手机跟支付宝等</span></span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;"><span style="color:#EE33EE;"></span></span>', 0, 1475325658, 0, 1),
(9, 'finance_mytx', '27人民币提现', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span> \r\n<h3 style="font-family:''Microsoft YaHei'';font-weight:500;font-size:24px;background-color:#FFFFFF;">\r\n	<span style="color:#9933E5;">提现须知</span> \r\n</h3>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	1. 提现手续费率1％，每笔提现最低收费2元 。\r\n</p>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	2. 单笔提现限额100元——50000元。\r\n</p>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	3. 人民币提现12小时内到帐，在已汇出12小时后 仍未收到款项，请联系客服。\r\n</p>\r\n</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;"><span style="color:#EE33EE;"></span></span>', 0, 1475325679, 0, 1),
(10, 'user_moble', '26手机绑定', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span> \r\n<h1 style="font-weight:normal;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;">\r\n	<span style="color:#9933E5;">请绑定您的手机方便进行充值与提现</span> \r\n</h1>\r\n</span></span>', 0, 1475351892, 0, 1),
(11, 'finance_mytj', '25推荐用户', '<span style="color:#9933E5;line-height:21px;font-size:14px;background-color:#FFFFFF;"><span style="color:#9933E5;font-size:14px;"><span style="color:#9933E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:30.8px;font-size:14px;background-color:#FFFFFF;">这是您的专用邀请码：<span style="color:#666666;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:14px;line-height:normal;background-color:#FFFFFF;">奖励下线金额三级分红:一代0.3% 二代0.2% 三代0.1</span></span></span></span>', 0, 1475352280, 0, 1),
(12, 'finance_mywd', '24我的推荐', '<span style="color:#CC33E5;"><span style="line-height:21px;color:#CC33E5;background-color:#FFFFFF;">查询自己下家推荐的人员信息</span></span>', 0, 1475352284, 0, 1),
(13, 'finance_myjp', '23我的奖品', '<span><span style="line-height:21px;color:#CC33E5;background-color:#FFFFFF;">下级充值奖励查看</span></span><span style="color:#CC33E5;"></span>', 0, 1475352285, 0, 1),
(14, 'game_issue', '22认购中心', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span><span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;">币创币众筹时间：</span><span style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;">12</span><span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;">月</span><span style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;">12</span><span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;">日</span><span style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;">20:00</span><span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;">至</span><span style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;">12</span><span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;">月</span><span style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;">15</span><span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;">日</span><span style="font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;">22:00</span><span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;">共四天</span></span></span><span style="color:#0096E0;line-height:21px;"><span><span style="color:#E53333;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:30px;"><span style="font-size:16px;color:#E53333;">（限购总量200W币）</span></span></span></span>', 0, 1475352288, 0, 1),
(15, 'game_issue_log', '21认购记录', '<span><span style="line-height:21px;background-color:#FFFFFF;">查询您的认购数量记录</span></span>', 0, 1475352293, 0, 1),
(16, 'game_fenhong', '20', '<br />', 0, 1475352294, 0, 0),
(17, 'game_fenhong_log', '19分红记录', '<span><span style="font-size:14px;color:#9933E5;">持有</span><span style="color:#9933E5;font-size:14px;">分红币</span><span style="font-size:14px;color:#9933E5;">（</span><span style="font-size:14px;color:#9933E5;">THC</span><span style="font-size:14px;color:#9933E5;">）每周六分红为：平台交易</span><span style="font-size:14px;color:#9933E5;">THC</span><span style="font-size:14px;color:#9933E5;">币成交额收入的</span><span style="font-size:14px;color:#9933E5;">0.5%.</span><span style="font-size:14px;color:#9933E5;">每天分红时间10：00至14：00官方会发放到个人</span></span><span><span style="font-size:14px;"></span><span style="font-size:14px;"></span><span style="font-size:14px;"></span><span style="font-size:14px;"></span><span style="font-size:14px;"></span><span style="font-size:14px;"></span><span style="font-size:14px;"></span><span style="font-size:14px;"></span><span style="font-size:14px;"></span><span style="font-size:14px;color:#9933E5;"><span>账户</span></span></span>', 0, 1475352296, 0, 1),
(18, 'game_money', '18', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>18请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475352297, 0, 0),
(19, 'game_money_log', '17', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>17请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475352298, 0, 0),
(20, 'user_paypassword', '16修改交易密码', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span> \r\n<h1 style="font-weight:normal;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;">\r\n	<span style="color:#9933E5;">请在下面修改您的交易密码</span> \r\n</h1>\r\n</span></span>', 0, 1475352694, 0, 1),
(21, 'user_password', '69', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475352695, 0, 0),
(22, 'user_nameauth', '15实名认证', '<span style="color:#9933E5;"><span style="line-height:21px;color:#9933E5;background-color:#FFFFFF;">请您实名注册如有错误请联系客服进行修改</span></span>', 0, 1475352696, 0, 1),
(23, 'user_tpwdset', '交易密码输入设置', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>\r\n<h1 style="font-weight:normal;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;">\r\n	<span style="color:#CC33E5;">请牢记您的交易密码</span>\r\n</h1>\r\n</span></span>', 0, 1475352698, 0, 1),
(24, 'game_shop', '13', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>13请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475352702, 0, 0),
(25, 'game_issue_buy', '12', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>12请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475352722, 0, 0),
(26, 'game_huafei', '11话费充值', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>\r\n<h1 style="font-weight:normal;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;">\r\n	<span style="color:#CC33E5;">话费充值目前不开放</span>\r\n</h1>\r\n</span></span>', 0, 1475359119, 0, 0),
(27, 'user_bank', '支付宝管理', '<span style="font-size:14px;color:#CC33E5;">请绑定您的的支付宝一但绑定不可修改</span>', 0, 1475359192, 0, 1),
(28, 'user_qianbao', '9钱包地址管理', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>\r\n<h1 style="font-weight:normal;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;">\r\n	<span style="color:#CC33E5;">目前还不提供转入转出钱包</span>\r\n</h1>\r\n</span></span>', 0, 1475359195, 0, 1),
(29, 'user_log', '8', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>8请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475359241, 0, 0),
(30, 'user_ga', '7', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>7请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475395398, 0, 0),
(31, 'user_alipay', '6绑定支付宝', '<span style="color:#CC33E5;line-height:21px;background-color:#FFFFFF;"><span style="color:#CC33E5;"><span style="color:#CC33E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:34px;background-color:#FFFFFF;">请绑定您的真实支付宝</span></span></span>', 0, 1475395410, 0, 1),
(32, 'user_goods', '5联系地址管理', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>\r\n<h1 style="font-weight:normal;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;">\r\n	<span style="color:#CC33E5;">联系地址填写好后期会推出一元夺宝游戏以便收货</span>\r\n</h1>\r\n</span></span>', 0, 1475395413, 0, 1),
(33, 'game_shop_view', '3', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>3请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1476000366, 0, 0),
(34, 'game_shop_log', '2', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>2请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1476002906, 0, 0),
(35, 'game_shop_goods', '1', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>1请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1476002907, 0, 0),
(36, 'finance_myaward', '', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1482927855, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_trade`
--

CREATE TABLE `ecshecom_trade` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL,
  `num` decimal(20,8) UNSIGNED NOT NULL,
  `deal` decimal(20,8) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `fee` decimal(20,8) UNSIGNED NOT NULL,
  `type` tinyint(2) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='交易下单表';

--
-- 转存表中的数据 `ecshecom_trade`
--

INSERT INTO `ecshecom_trade` (`id`, `userid`, `market`, `price`, `num`, `deal`, `mum`, `fee`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 1, 'bxb_cny', '0.01000000', '1.00000000', '1.00000000', '0.00999000', '0.00001000', 2, 0, 1497340101, 0, 1),
(2, 2, 'bxb_cny', '0.01000000', '0.01000000', '0.01000000', '0.00009990', '0.00000010', 2, 0, 1497340477, 0, 1),
(3, 2, 'bxb_cny', '100.00000000', '0.01000000', '0.00000000', '0.99900000', '0.00100000', 2, 0, 1497340614, 0, 2),
(4, 1, 'bxb_cny', '0.01000000', '1.00000000', '1.00000000', '0.00999000', '0.00001000', 2, 0, 1497341560, 0, 1),
(5, 1, 'bxb_cny', '0.01000000', '1.00000000', '1.00000000', '0.01001000', '0.00001000', 1, 0, 1497342306, 0, 1),
(6, 1, 'bxb_cny', '0.02000000', '1.00000000', '1.00000000', '0.02002000', '0.00002000', 1, 0, 1497669942, 0, 1),
(7, 1, 'bxb_cny', '0.02000000', '1.00000000', '1.00000000', '0.02002000', '0.00002000', 1, 0, 1497669981, 0, 1),
(8, 1, 'bxb_cny', '0.02000000', '1.00000000', '1.00000000', '0.02002000', '0.00002000', 1, 0, 1497670010, 0, 1),
(9, 15, 'bxb_cny', '0.01100000', '100.00000000', '100.00000000', '1.09989000', '0.00011000', 2, 0, 1498715568, 0, 1),
(10, 15, 'bxb_cny', '0.01100000', '85.00000000', '85.00000000', '0.93509350', '0.00009350', 1, 0, 1498715586, 0, 1),
(11, 15, 'abc_cny', '0.11000000', '10.00000000', '10.00000000', '1.09890000', '0.00110000', 2, 0, 1498794969, 0, 1),
(12, 15, 'abc_cny', '0.10000000', '10.00000000', '10.00000000', '0.99900000', '0.00100000', 2, 0, 1498794975, 0, 1),
(13, 15, 'abc_cny', '0.10000000', '10.00000000', '10.00000000', '1.00100000', '0.00100000', 1, 0, 1498795002, 0, 1),
(14, 15, 'abc_cny', '0.09000000', '10.00000000', '1.00000000', '0.90090000', '0.00090000', 1, 0, 1498795031, 0, 0),
(15, 15, 'abc_cny', '0.11000000', '1.00000000', '1.00000000', '0.11011000', '0.00011000', 1, 0, 1498795052, 0, 1),
(16, 15, 'abc_cny', '0.10000000', '10.00000000', '10.00000000', '0.99900000', '0.00100000', 2, 0, 1498795220, 0, 1),
(17, 15, 'abc_cny', '0.09000000', '1.00000000', '1.00000000', '0.08991000', '0.00009000', 2, 0, 1498795253, 0, 1),
(18, 15, 'bxb_cny', '0.01100000', '1.00000000', '1.00000000', '0.01100110', '0.00000110', 1, 0, 1498795314, 0, 1),
(19, 15, 'bxb_cny', '0.00900000', '1.00000000', '1.00000000', '0.00899910', '0.00000090', 2, 0, 1498795344, 0, 1),
(20, 15, 'bxb_cny', '0.00900000', '1.00000000', '1.00000000', '0.00900090', '0.00000090', 1, 0, 1498795351, 0, 1),
(21, 15, 'glc_cny', '0.05500000', '1000.00000000', '0.00000000', '55.05500000', '0.05500000', 1, 0, 1498811066, 0, 2),
(22, 15, 'glc_cny', '0.05400000', '10000.00000000', '0.00000000', '540.54000000', '0.54000000', 1, 0, 1498811121, 0, 2),
(23, 15, 'glc_cny', '0.05500000', '9000.00000000', '0.00000000', '495.49500000', '0.49500000', 1, 0, 1498811149, 0, 2),
(24, 15, 'glc_cny', '0.05500000', '129572.89301000', '0.00000000', '7133.63562467', '7.12650912', 1, 0, 1498811184, 0, 2),
(25, 15, 'glc_cny', '0.05000000', '1000.00000000', '1000.00000000', '50.05000000', '0.05000000', 1, 0, 1498811201, 0, 1),
(26, 15, 'glc_cny', '0.05300000', '1000.00000000', '0.00000000', '53.05300000', '0.05300000', 1, 0, 1498811207, 0, 2),
(27, 15, 'glc_cny', '0.05200000', '1000.00000000', '0.00000000', '52.05200000', '0.05200000', 1, 0, 1498811217, 0, 2),
(28, 15, 'glc_cny', '0.05100000', '1000.00000000', '0.00000000', '51.05100000', '0.05100000', 1, 0, 1498811224, 0, 2),
(29, 15, 'glc_cny', '0.05000000', '100.00000000', '100.00000000', '4.99500000', '0.00500000', 2, 0, 1498811384, 0, 1),
(30, 15, 'glc_cny', '0.05000000', '159266.74231000', '98.90000000', '7971.30045262', '7.96333712', 1, 0, 1498811439, 0, 0),
(31, 15, 'glc_cny', '0.04900000', '100.00000000', '0.00000000', '4.90490000', '0.00490000', 1, 0, 1498811460, 0, 0),
(32, 15, 'glc_cny', '0.04800000', '100.00000000', '0.00000000', '4.80480000', '0.00480000', 1, 0, 1498811468, 0, 0),
(33, 15, 'glc_cny', '0.04700000', '100.00000000', '0.00000000', '4.70470000', '0.00470000', 1, 0, 1498811476, 0, 0),
(34, 15, 'glc_cny', '0.04600000', '100.00000000', '0.00000000', '4.60460000', '0.00460000', 1, 0, 1498811487, 0, 0),
(35, 15, 'glc_cny', '0.04500000', '100.00000000', '0.00000000', '4.50450000', '0.00450000', 1, 0, 1498811504, 0, 0),
(36, 15, 'glc_cny', '0.05000000', '998.90000000', '998.90000000', '49.89505500', '0.04994500', 2, 0, 1498812173, 0, 1),
(37, 15, 'abc_cny', '0.10000000', '100.00000000', '10.00000000', '10.01000000', '0.01000000', 1, 0, 1498868005, 0, 0),
(38, 15, 'abc_cny', '0.10000000', '100.00000000', '0.00000000', '10.01000000', '0.01000000', 1, 0, 1498868016, 0, 0),
(39, 15, 'abc_cny', '0.11000000', '9.00000000', '9.00000000', '0.99099000', '0.00099000', 1, 0, 1498868486, 0, 1),
(40, 15, 'abc_cny', '0.10900000', '20003.80000000', '10000.00000000', '2178.23378580', '2.18041420', 2, 0, 1498869789, 0, 2),
(41, 15, 'abc_cny', '0.10900000', '10000.00000000', '10000.00000000', '1091.09000000', '1.09000000', 1, 0, 1498869910, 0, 1),
(42, 15, 'glc_cny', '0.05500000', '10000.00000000', '10000.00000000', '549.45000000', '0.55000000', 2, 0, 1498871554, 0, 1),
(43, 15, 'glc_cny', '0.05500000', '10000.00000000', '10000.00000000', '550.55000000', '0.55000000', 1, 0, 1498871631, 0, 1),
(44, 15, 'bxb_cny', '0.02000000', '998.60000000', '998.60000000', '19.97000280', '0.00199720', 2, 0, 1498871831, 0, 1),
(45, 15, 'bxb_cny', '0.02000000', '10000.00000000', '1010.61000000', '200.02000000', '0.02000000', 1, 0, 1498871872, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_trade_json`
--

CREATE TABLE `ecshecom_trade_json` (
  `id` int(11) UNSIGNED NOT NULL,
  `market` varchar(100) NOT NULL,
  `data` varchar(500) NOT NULL,
  `type` varchar(100) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='交易图表表';

--
-- 转存表中的数据 `ecshecom_trade_json`
--

INSERT INTO `ecshecom_trade_json` (`id`, `market`, `data`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'bxb_cny', '[1497342306,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '1', 0, 1497342306, 0, 0),
(2, 'bxb_cny', '[1497342240,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '3', 0, 1497342240, 0, 0),
(3, 'bxb_cny', '[1497342300,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '5', 0, 1497342300, 0, 0),
(4, 'bxb_cny', '[1497342000,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '10', 0, 1497342000, 0, 0),
(5, 'bxb_cny', '[1497341700,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '15', 0, 1497341700, 0, 0),
(6, 'bxb_cny', '[1497340800,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '30', 0, 1497340800, 0, 0),
(7, 'bxb_cny', '[1497340800,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '60', 0, 1497340800, 0, 0),
(8, 'bxb_cny', '[1497340800,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '120', 0, 1497340800, 0, 0),
(9, 'bxb_cny', '[1497340800,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '240', 0, 1497340800, 0, 0),
(10, 'bxb_cny', '[1497340800,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '360', 0, 1497340800, 0, 0),
(11, 'bxb_cny', '[1497340800,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '720', 0, 1497340800, 0, 0),
(12, 'bxb_cny', '[1497340800,"1.00000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '1440', 0, 1497340800, 0, 0),
(13, 'bxb_cny', '[1497340800,"2.01000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '10080', 0, 1497340800, 0, 0),
(14, 'bxb_cny', '', '1', 0, 1497342366, 0, 0),
(15, 'bxb_cny', '', '3', 0, 1497342420, 0, 0),
(16, 'bxb_cny', '', '5', 0, 1497342600, 0, 0),
(17, 'bxb_cny', '', '10', 0, 1497342600, 0, 0),
(18, 'bxb_cny', '', '15', 0, 1497342600, 0, 0),
(19, 'bxb_cny', '', '30', 0, 1497342600, 0, 0),
(940, 'bxb_cny', '', '15', 0, 1497441600, 0, 0),
(608, 'bxb_cny', '', '5', 0, 1497361800, 0, 0),
(432, 'bxb_cny', '', '3', 0, 1497349800, 0, 0),
(244, 'bxb_cny', '', '1', 0, 1497343806, 0, 0),
(242, 'bxb_cny', '', '1', 0, 1497343686, 0, 0),
(26, 'bxb_cny', '', '1', 0, 1497342366, 0, 0),
(27, 'bxb_cny', '', '1', 0, 1497342426, 0, 0),
(28, 'bxb_cny', '', '1', 0, 1497342486, 0, 0),
(29, 'bxb_cny', '', '1', 0, 1497342546, 0, 0),
(30, 'bxb_cny', '', '1', 0, 1497342606, 0, 0),
(31, 'bxb_cny', '', '1', 0, 1497342666, 0, 0),
(32, 'bxb_cny', '', '1', 0, 1497342726, 0, 0),
(33, 'bxb_cny', '', '1', 0, 1497342786, 0, 0),
(34, 'bxb_cny', '', '1', 0, 1497342846, 0, 0),
(35, 'bxb_cny', '', '1', 0, 1497342906, 0, 0),
(36, 'bxb_cny', '', '1', 0, 1497342966, 0, 0),
(37, 'bxb_cny', '', '1', 0, 1497343026, 0, 0),
(38, 'bxb_cny', '', '1', 0, 1497343086, 0, 0),
(39, 'bxb_cny', '', '1', 0, 1497343146, 0, 0),
(40, 'bxb_cny', '', '1', 0, 1497343206, 0, 0),
(41, 'bxb_cny', '', '1', 0, 1497343266, 0, 0),
(42, 'bxb_cny', '', '1', 0, 1497343326, 0, 0),
(43, 'bxb_cny', '', '1', 0, 1497343386, 0, 0),
(44, 'bxb_cny', '', '1', 0, 1497343446, 0, 0),
(45, 'bxb_cny', '', '1', 0, 1497343506, 0, 0),
(46, 'bxb_cny', '', '1', 0, 1497343566, 0, 0),
(47, 'bxb_cny', '', '3', 0, 1497342420, 0, 0),
(48, 'bxb_cny', '', '3', 0, 1497342600, 0, 0),
(49, 'bxb_cny', '', '3', 0, 1497342780, 0, 0),
(50, 'bxb_cny', '', '3', 0, 1497342960, 0, 0),
(51, 'bxb_cny', '', '3', 0, 1497343140, 0, 0),
(52, 'bxb_cny', '', '3', 0, 1497343320, 0, 0),
(53, 'bxb_cny', '', '3', 0, 1497343500, 0, 0),
(54, 'bxb_cny', '', '3', 0, 1497343680, 0, 0),
(55, 'bxb_cny', '', '3', 0, 1497343860, 0, 0),
(56, 'bxb_cny', '', '3', 0, 1497344040, 0, 0),
(57, 'bxb_cny', '', '3', 0, 1497344220, 0, 0),
(58, 'bxb_cny', '', '3', 0, 1497344400, 0, 0),
(59, 'bxb_cny', '', '3', 0, 1497344580, 0, 0),
(60, 'bxb_cny', '', '3', 0, 1497344760, 0, 0),
(61, 'bxb_cny', '', '3', 0, 1497344940, 0, 0),
(62, 'bxb_cny', '', '3', 0, 1497345120, 0, 0),
(63, 'bxb_cny', '', '3', 0, 1497345300, 0, 0),
(64, 'bxb_cny', '', '3', 0, 1497345480, 0, 0),
(65, 'bxb_cny', '', '3', 0, 1497345660, 0, 0),
(66, 'bxb_cny', '', '3', 0, 1497345840, 0, 0),
(67, 'bxb_cny', '', '3', 0, 1497346020, 0, 0),
(68, 'bxb_cny', '', '5', 0, 1497342600, 0, 0),
(69, 'bxb_cny', '', '5', 0, 1497342900, 0, 0),
(70, 'bxb_cny', '', '5', 0, 1497343200, 0, 0),
(71, 'bxb_cny', '', '5', 0, 1497343500, 0, 0),
(72, 'bxb_cny', '', '5', 0, 1497343800, 0, 0),
(73, 'bxb_cny', '', '5', 0, 1497344100, 0, 0),
(74, 'bxb_cny', '', '5', 0, 1497344400, 0, 0),
(75, 'bxb_cny', '', '5', 0, 1497344700, 0, 0),
(76, 'bxb_cny', '', '5', 0, 1497345000, 0, 0),
(77, 'bxb_cny', '', '5', 0, 1497345300, 0, 0),
(78, 'bxb_cny', '', '5', 0, 1497345600, 0, 0),
(79, 'bxb_cny', '', '5', 0, 1497345900, 0, 0),
(80, 'bxb_cny', '', '5', 0, 1497346200, 0, 0),
(81, 'bxb_cny', '', '5', 0, 1497346500, 0, 0),
(82, 'bxb_cny', '', '5', 0, 1497346800, 0, 0),
(83, 'bxb_cny', '', '5', 0, 1497347100, 0, 0),
(84, 'bxb_cny', '', '5', 0, 1497347400, 0, 0),
(85, 'bxb_cny', '', '5', 0, 1497347700, 0, 0),
(86, 'bxb_cny', '', '5', 0, 1497348000, 0, 0),
(87, 'bxb_cny', '', '5', 0, 1497348300, 0, 0),
(88, 'bxb_cny', '', '5', 0, 1497348600, 0, 0),
(89, 'bxb_cny', '', '10', 0, 1497342600, 0, 0),
(90, 'bxb_cny', '', '10', 0, 1497343200, 0, 0),
(91, 'bxb_cny', '', '10', 0, 1497343800, 0, 0),
(92, 'bxb_cny', '', '10', 0, 1497344400, 0, 0),
(93, 'bxb_cny', '', '10', 0, 1497345000, 0, 0),
(94, 'bxb_cny', '', '10', 0, 1497345600, 0, 0),
(95, 'bxb_cny', '', '10', 0, 1497346200, 0, 0),
(96, 'bxb_cny', '', '10', 0, 1497346800, 0, 0),
(97, 'bxb_cny', '', '10', 0, 1497347400, 0, 0),
(98, 'bxb_cny', '', '10', 0, 1497348000, 0, 0),
(99, 'bxb_cny', '', '10', 0, 1497348600, 0, 0),
(100, 'bxb_cny', '', '10', 0, 1497349200, 0, 0),
(101, 'bxb_cny', '', '10', 0, 1497349800, 0, 0),
(102, 'bxb_cny', '', '10', 0, 1497350400, 0, 0),
(103, 'bxb_cny', '', '10', 0, 1497351000, 0, 0),
(104, 'bxb_cny', '', '10', 0, 1497351600, 0, 0),
(105, 'bxb_cny', '', '10', 0, 1497352200, 0, 0),
(106, 'bxb_cny', '', '10', 0, 1497352800, 0, 0),
(107, 'bxb_cny', '', '10', 0, 1497353400, 0, 0),
(108, 'bxb_cny', '', '10', 0, 1497354000, 0, 0),
(109, 'bxb_cny', '', '10', 0, 1497354600, 0, 0),
(110, 'bxb_cny', '', '15', 0, 1497342600, 0, 0),
(111, 'bxb_cny', '', '15', 0, 1497343500, 0, 0),
(112, 'bxb_cny', '', '15', 0, 1497344400, 0, 0),
(113, 'bxb_cny', '', '15', 0, 1497345300, 0, 0),
(114, 'bxb_cny', '', '15', 0, 1497346200, 0, 0),
(115, 'bxb_cny', '', '15', 0, 1497347100, 0, 0),
(116, 'bxb_cny', '', '15', 0, 1497348000, 0, 0),
(117, 'bxb_cny', '', '15', 0, 1497348900, 0, 0),
(118, 'bxb_cny', '', '15', 0, 1497349800, 0, 0),
(119, 'bxb_cny', '', '15', 0, 1497350700, 0, 0),
(120, 'bxb_cny', '', '15', 0, 1497351600, 0, 0),
(121, 'bxb_cny', '', '15', 0, 1497352500, 0, 0),
(122, 'bxb_cny', '', '15', 0, 1497353400, 0, 0),
(123, 'bxb_cny', '', '15', 0, 1497354300, 0, 0),
(124, 'bxb_cny', '', '15', 0, 1497355200, 0, 0),
(125, 'bxb_cny', '', '15', 0, 1497356100, 0, 0),
(126, 'bxb_cny', '', '15', 0, 1497357000, 0, 0),
(127, 'bxb_cny', '', '15', 0, 1497357900, 0, 0),
(128, 'bxb_cny', '', '15', 0, 1497358800, 0, 0),
(129, 'bxb_cny', '', '15', 0, 1497359700, 0, 0),
(130, 'bxb_cny', '', '15', 0, 1497360600, 0, 0),
(131, 'bxb_cny', '', '30', 0, 1497342600, 0, 0),
(132, 'bxb_cny', '', '30', 0, 1497344400, 0, 0),
(133, 'bxb_cny', '', '30', 0, 1497346200, 0, 0),
(134, 'bxb_cny', '', '30', 0, 1497348000, 0, 0),
(135, 'bxb_cny', '', '30', 0, 1497349800, 0, 0),
(136, 'bxb_cny', '', '30', 0, 1497351600, 0, 0),
(137, 'bxb_cny', '', '30', 0, 1497353400, 0, 0),
(138, 'bxb_cny', '', '30', 0, 1497355200, 0, 0),
(139, 'bxb_cny', '', '30', 0, 1497357000, 0, 0),
(140, 'bxb_cny', '', '30', 0, 1497358800, 0, 0),
(141, 'bxb_cny', '', '30', 0, 1497360600, 0, 0),
(142, 'bxb_cny', '', '30', 0, 1497362400, 0, 0),
(143, 'bxb_cny', '', '30', 0, 1497364200, 0, 0),
(144, 'bxb_cny', '', '30', 0, 1497366000, 0, 0),
(145, 'bxb_cny', '', '30', 0, 1497367800, 0, 0),
(146, 'bxb_cny', '', '30', 0, 1497369600, 0, 0),
(147, 'bxb_cny', '', '30', 0, 1497371400, 0, 0),
(148, 'bxb_cny', '', '30', 0, 1497373200, 0, 0),
(149, 'bxb_cny', '', '30', 0, 1497375000, 0, 0),
(150, 'bxb_cny', '', '30', 0, 1497376800, 0, 0),
(151, 'bxb_cny', '', '30', 0, 1497378600, 0, 0),
(939, 'bxb_cny', '', '15', 0, 1497440700, 0, 0),
(938, 'bxb_cny', '', '15', 0, 1497439800, 0, 0),
(937, 'bxb_cny', '', '15', 0, 1497438900, 0, 0),
(936, 'bxb_cny', '', '15', 0, 1497438000, 0, 0),
(935, 'bxb_cny', '', '15', 0, 1497437100, 0, 0),
(934, 'bxb_cny', '', '15', 0, 1497436200, 0, 0),
(933, 'bxb_cny', '', '15', 0, 1497435300, 0, 0),
(932, 'bxb_cny', '', '15', 0, 1497434400, 0, 0),
(931, 'bxb_cny', '', '15', 0, 1497433500, 0, 0),
(930, 'bxb_cny', '', '15', 0, 1497432600, 0, 0),
(929, 'bxb_cny', '', '10', 0, 1497414600, 0, 0),
(928, 'bxb_cny', '', '10', 0, 1497414000, 0, 0),
(927, 'bxb_cny', '', '10', 0, 1497413400, 0, 0),
(926, 'bxb_cny', '', '10', 0, 1497412800, 0, 0),
(925, 'bxb_cny', '', '10', 0, 1497412200, 0, 0),
(924, 'bxb_cny', '', '10', 0, 1497411600, 0, 0),
(923, 'bxb_cny', '', '10', 0, 1497411000, 0, 0),
(922, 'bxb_cny', '', '10', 0, 1497410400, 0, 0),
(921, 'bxb_cny', '', '10', 0, 1497409800, 0, 0),
(920, 'bxb_cny', '', '10', 0, 1497409200, 0, 0),
(919, 'bxb_cny', '', '10', 0, 1497408600, 0, 0),
(607, 'bxb_cny', '', '5', 0, 1497361500, 0, 0),
(606, 'bxb_cny', '', '5', 0, 1497361200, 0, 0),
(605, 'bxb_cny', '', '5', 0, 1497360900, 0, 0),
(604, 'bxb_cny', '', '5', 0, 1497360600, 0, 0),
(603, 'bxb_cny', '', '3', 0, 1497356820, 0, 0),
(602, 'bxb_cny', '', '3', 0, 1497356640, 0, 0),
(601, 'bxb_cny', '', '3', 0, 1497356460, 0, 0),
(600, 'bxb_cny', '', '3', 0, 1497356280, 0, 0),
(599, 'bxb_cny', '', '3', 0, 1497356100, 0, 0),
(598, 'bxb_cny', '', '3', 0, 1497355920, 0, 0),
(597, 'bxb_cny', '', '3', 0, 1497355740, 0, 0),
(596, 'bxb_cny', '', '3', 0, 1497355560, 0, 0),
(595, 'bxb_cny', '', '3', 0, 1497355380, 0, 0),
(594, 'bxb_cny', '', '3', 0, 1497355200, 0, 0),
(593, 'bxb_cny', '', '3', 0, 1497355020, 0, 0),
(592, 'bxb_cny', '', '3', 0, 1497354840, 0, 0),
(591, 'bxb_cny', '', '3', 0, 1497354660, 0, 0),
(590, 'bxb_cny', '', '3', 0, 1497354480, 0, 0),
(589, 'bxb_cny', '', '3', 0, 1497354300, 0, 0),
(588, 'bxb_cny', '', '3', 0, 1497354120, 0, 0),
(587, 'bxb_cny', '', '3', 0, 1497353940, 0, 0),
(431, 'bxb_cny', '', '3', 0, 1497349620, 0, 0),
(430, 'bxb_cny', '', '1', 0, 1497345966, 0, 0),
(429, 'bxb_cny', '', '1', 0, 1497345906, 0, 0),
(428, 'bxb_cny', '', '1', 0, 1497345846, 0, 0),
(427, 'bxb_cny', '', '1', 0, 1497345786, 0, 0),
(426, 'bxb_cny', '', '1', 0, 1497345726, 0, 0),
(425, 'bxb_cny', '', '1', 0, 1497345666, 0, 0),
(424, 'bxb_cny', '', '1', 0, 1497345606, 0, 0),
(423, 'bxb_cny', '', '1', 0, 1497345546, 0, 0),
(422, 'bxb_cny', '', '1', 0, 1497345486, 0, 0),
(421, 'bxb_cny', '', '1', 0, 1497345426, 0, 0),
(420, 'bxb_cny', '', '1', 0, 1497345366, 0, 0),
(419, 'bxb_cny', '', '1', 0, 1497345306, 0, 0),
(418, 'bxb_cny', '', '1', 0, 1497345246, 0, 0),
(417, 'bxb_cny', '', '1', 0, 1497345186, 0, 0),
(416, 'bxb_cny', '', '1', 0, 1497345126, 0, 0),
(415, 'bxb_cny', '', '1', 0, 1497345066, 0, 0),
(414, 'bxb_cny', '', '1', 0, 1497345006, 0, 0),
(413, 'bxb_cny', '', '1', 0, 1497344946, 0, 0),
(412, 'bxb_cny', '', '1', 0, 1497344886, 0, 0),
(411, 'bxb_cny', '', '1', 0, 1497344826, 0, 0),
(243, 'bxb_cny', '', '1', 0, 1497343746, 0, 0),
(236, 'bxb_cny', '[1497643200,"1.01000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '720', 0, 1497643200, 0, 0),
(239, 'bxb_cny', '[1497600000,"1.01000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '1440', 0, 1497600000, 0, 0),
(241, 'bxb_cny', '', '1', 0, 1497343626, 0, 0),
(240, 'bxb_cny', '', '1', 0, 1497343566, 0, 0),
(229, 'bxb_cny', '[1497664800,"1.01000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '360', 0, 1497664800, 0, 0),
(245, 'bxb_cny', '', '1', 0, 1497343866, 0, 0),
(246, 'bxb_cny', '', '1', 0, 1497343926, 0, 0),
(247, 'bxb_cny', '', '1', 0, 1497343986, 0, 0),
(248, 'bxb_cny', '', '1', 0, 1497344046, 0, 0),
(249, 'bxb_cny', '', '1', 0, 1497344106, 0, 0),
(250, 'bxb_cny', '', '1', 0, 1497344166, 0, 0),
(251, 'bxb_cny', '', '1', 0, 1497344226, 0, 0),
(252, 'bxb_cny', '', '1', 0, 1497344286, 0, 0),
(253, 'bxb_cny', '', '1', 0, 1497344346, 0, 0),
(254, 'bxb_cny', '', '1', 0, 1497344406, 0, 0),
(255, 'bxb_cny', '', '1', 0, 1497344466, 0, 0),
(256, 'bxb_cny', '', '1', 0, 1497344526, 0, 0),
(257, 'bxb_cny', '', '1', 0, 1497344586, 0, 0),
(258, 'bxb_cny', '', '1', 0, 1497344646, 0, 0),
(259, 'bxb_cny', '', '1', 0, 1497344706, 0, 0),
(260, 'bxb_cny', '', '1', 0, 1497344766, 0, 0),
(261, 'bxb_cny', '', '3', 0, 1497346020, 0, 0),
(262, 'bxb_cny', '', '3', 0, 1497346200, 0, 0),
(263, 'bxb_cny', '', '3', 0, 1497346380, 0, 0),
(264, 'bxb_cny', '', '3', 0, 1497346560, 0, 0),
(265, 'bxb_cny', '', '3', 0, 1497346740, 0, 0),
(266, 'bxb_cny', '', '3', 0, 1497346920, 0, 0),
(267, 'bxb_cny', '', '3', 0, 1497347100, 0, 0),
(268, 'bxb_cny', '', '3', 0, 1497347280, 0, 0),
(269, 'bxb_cny', '', '3', 0, 1497347460, 0, 0),
(270, 'bxb_cny', '', '3', 0, 1497347640, 0, 0),
(271, 'bxb_cny', '', '3', 0, 1497347820, 0, 0),
(272, 'bxb_cny', '', '3', 0, 1497348000, 0, 0),
(273, 'bxb_cny', '', '3', 0, 1497348180, 0, 0),
(274, 'bxb_cny', '', '3', 0, 1497348360, 0, 0),
(275, 'bxb_cny', '', '3', 0, 1497348540, 0, 0),
(276, 'bxb_cny', '', '3', 0, 1497348720, 0, 0),
(277, 'bxb_cny', '', '3', 0, 1497348900, 0, 0),
(278, 'bxb_cny', '', '3', 0, 1497349080, 0, 0),
(279, 'bxb_cny', '', '3', 0, 1497349260, 0, 0),
(280, 'bxb_cny', '', '3', 0, 1497349440, 0, 0),
(281, 'bxb_cny', '', '3', 0, 1497349620, 0, 0),
(282, 'bxb_cny', '', '5', 0, 1497348600, 0, 0),
(283, 'bxb_cny', '', '5', 0, 1497348900, 0, 0),
(284, 'bxb_cny', '', '5', 0, 1497349200, 0, 0),
(285, 'bxb_cny', '', '5', 0, 1497349500, 0, 0),
(286, 'bxb_cny', '', '5', 0, 1497349800, 0, 0),
(287, 'bxb_cny', '', '5', 0, 1497350100, 0, 0),
(288, 'bxb_cny', '', '5', 0, 1497350400, 0, 0),
(289, 'bxb_cny', '', '5', 0, 1497350700, 0, 0),
(290, 'bxb_cny', '', '5', 0, 1497351000, 0, 0),
(291, 'bxb_cny', '', '5', 0, 1497351300, 0, 0),
(292, 'bxb_cny', '', '5', 0, 1497351600, 0, 0),
(293, 'bxb_cny', '', '5', 0, 1497351900, 0, 0),
(294, 'bxb_cny', '', '5', 0, 1497352200, 0, 0),
(295, 'bxb_cny', '', '5', 0, 1497352500, 0, 0),
(296, 'bxb_cny', '', '5', 0, 1497352800, 0, 0),
(297, 'bxb_cny', '', '5', 0, 1497353100, 0, 0),
(298, 'bxb_cny', '', '5', 0, 1497353400, 0, 0),
(299, 'bxb_cny', '', '5', 0, 1497353700, 0, 0),
(300, 'bxb_cny', '', '5', 0, 1497354000, 0, 0),
(301, 'bxb_cny', '', '5', 0, 1497354300, 0, 0),
(302, 'bxb_cny', '', '5', 0, 1497354600, 0, 0),
(303, 'bxb_cny', '', '10', 0, 1497354600, 0, 0),
(304, 'bxb_cny', '', '10', 0, 1497355200, 0, 0),
(305, 'bxb_cny', '', '10', 0, 1497355800, 0, 0),
(306, 'bxb_cny', '', '10', 0, 1497356400, 0, 0),
(307, 'bxb_cny', '', '10', 0, 1497357000, 0, 0),
(308, 'bxb_cny', '', '10', 0, 1497357600, 0, 0),
(309, 'bxb_cny', '', '10', 0, 1497358200, 0, 0),
(310, 'bxb_cny', '', '10', 0, 1497358800, 0, 0),
(311, 'bxb_cny', '', '10', 0, 1497359400, 0, 0),
(312, 'bxb_cny', '', '10', 0, 1497360000, 0, 0),
(313, 'bxb_cny', '', '10', 0, 1497360600, 0, 0),
(314, 'bxb_cny', '', '10', 0, 1497361200, 0, 0),
(315, 'bxb_cny', '', '10', 0, 1497361800, 0, 0),
(316, 'bxb_cny', '', '10', 0, 1497362400, 0, 0),
(317, 'bxb_cny', '', '10', 0, 1497363000, 0, 0),
(318, 'bxb_cny', '', '10', 0, 1497363600, 0, 0),
(319, 'bxb_cny', '', '10', 0, 1497364200, 0, 0),
(320, 'bxb_cny', '', '10', 0, 1497364800, 0, 0),
(321, 'bxb_cny', '', '10', 0, 1497365400, 0, 0),
(322, 'bxb_cny', '', '10', 0, 1497366000, 0, 0),
(323, 'bxb_cny', '', '10', 0, 1497366600, 0, 0),
(324, 'bxb_cny', '', '15', 0, 1497360600, 0, 0),
(325, 'bxb_cny', '', '15', 0, 1497361500, 0, 0),
(326, 'bxb_cny', '', '15', 0, 1497362400, 0, 0),
(327, 'bxb_cny', '', '15', 0, 1497363300, 0, 0),
(328, 'bxb_cny', '', '15', 0, 1497364200, 0, 0),
(329, 'bxb_cny', '', '15', 0, 1497365100, 0, 0),
(330, 'bxb_cny', '', '15', 0, 1497366000, 0, 0),
(331, 'bxb_cny', '', '15', 0, 1497366900, 0, 0),
(332, 'bxb_cny', '', '15', 0, 1497367800, 0, 0),
(333, 'bxb_cny', '', '15', 0, 1497368700, 0, 0),
(334, 'bxb_cny', '', '15', 0, 1497369600, 0, 0),
(335, 'bxb_cny', '', '15', 0, 1497370500, 0, 0),
(336, 'bxb_cny', '', '15', 0, 1497371400, 0, 0),
(337, 'bxb_cny', '', '15', 0, 1497372300, 0, 0),
(338, 'bxb_cny', '', '15', 0, 1497373200, 0, 0),
(339, 'bxb_cny', '', '15', 0, 1497374100, 0, 0),
(340, 'bxb_cny', '', '15', 0, 1497375000, 0, 0),
(341, 'bxb_cny', '', '15', 0, 1497375900, 0, 0),
(342, 'bxb_cny', '', '15', 0, 1497376800, 0, 0),
(343, 'bxb_cny', '', '15', 0, 1497377700, 0, 0),
(344, 'bxb_cny', '', '15', 0, 1497378600, 0, 0),
(345, 'bxb_cny', '', '30', 0, 1497378600, 0, 0),
(346, 'bxb_cny', '', '30', 0, 1497380400, 0, 0),
(347, 'bxb_cny', '', '30', 0, 1497382200, 0, 0),
(348, 'bxb_cny', '', '30', 0, 1497384000, 0, 0),
(349, 'bxb_cny', '', '30', 0, 1497385800, 0, 0),
(350, 'bxb_cny', '', '30', 0, 1497387600, 0, 0),
(351, 'bxb_cny', '', '30', 0, 1497389400, 0, 0),
(352, 'bxb_cny', '', '30', 0, 1497391200, 0, 0),
(353, 'bxb_cny', '', '30', 0, 1497393000, 0, 0),
(354, 'bxb_cny', '', '30', 0, 1497394800, 0, 0),
(355, 'bxb_cny', '', '30', 0, 1497396600, 0, 0),
(356, 'bxb_cny', '', '30', 0, 1497398400, 0, 0),
(357, 'bxb_cny', '', '30', 0, 1497400200, 0, 0),
(358, 'bxb_cny', '', '30', 0, 1497402000, 0, 0),
(359, 'bxb_cny', '', '30', 0, 1497403800, 0, 0),
(360, 'bxb_cny', '', '30', 0, 1497405600, 0, 0),
(361, 'bxb_cny', '', '30', 0, 1497407400, 0, 0),
(362, 'bxb_cny', '', '30', 0, 1497409200, 0, 0),
(363, 'bxb_cny', '', '30', 0, 1497411000, 0, 0),
(364, 'bxb_cny', '', '30', 0, 1497412800, 0, 0),
(365, 'bxb_cny', '', '30', 0, 1497414600, 0, 0),
(918, 'bxb_cny', '', '10', 0, 1497408000, 0, 0),
(917, 'bxb_cny', '', '10', 0, 1497407400, 0, 0),
(916, 'bxb_cny', '', '10', 0, 1497406800, 0, 0),
(915, 'bxb_cny', '', '10', 0, 1497406200, 0, 0),
(914, 'bxb_cny', '', '10', 0, 1497405600, 0, 0),
(913, 'bxb_cny', '', '10', 0, 1497405000, 0, 0),
(912, 'bxb_cny', '', '10', 0, 1497404400, 0, 0),
(911, 'bxb_cny', '', '10', 0, 1497403800, 0, 0),
(910, 'bxb_cny', '', '10', 0, 1497403200, 0, 0),
(909, 'bxb_cny', '', '10', 0, 1497402600, 0, 0),
(908, 'bxb_cny', '', '5', 0, 1497378600, 0, 0),
(907, 'bxb_cny', '', '5', 0, 1497378300, 0, 0),
(906, 'bxb_cny', '', '5', 0, 1497378000, 0, 0),
(905, 'bxb_cny', '', '5', 0, 1497377700, 0, 0),
(904, 'bxb_cny', '', '5', 0, 1497377400, 0, 0),
(903, 'bxb_cny', '', '5', 0, 1497377100, 0, 0),
(902, 'bxb_cny', '', '5', 0, 1497376800, 0, 0),
(901, 'bxb_cny', '', '5', 0, 1497376500, 0, 0),
(900, 'bxb_cny', '', '5', 0, 1497376200, 0, 0),
(899, 'bxb_cny', '', '5', 0, 1497375900, 0, 0),
(898, 'bxb_cny', '', '5', 0, 1497375600, 0, 0),
(586, 'bxb_cny', '', '3', 0, 1497353760, 0, 0),
(585, 'bxb_cny', '', '3', 0, 1497353580, 0, 0),
(584, 'bxb_cny', '', '3', 0, 1497353400, 0, 0),
(583, 'bxb_cny', '', '3', 0, 1497353220, 0, 0),
(582, 'bxb_cny', '', '1', 0, 1497347166, 0, 0),
(581, 'bxb_cny', '', '1', 0, 1497347106, 0, 0),
(580, 'bxb_cny', '', '1', 0, 1497347046, 0, 0),
(579, 'bxb_cny', '', '1', 0, 1497346986, 0, 0),
(578, 'bxb_cny', '', '1', 0, 1497346926, 0, 0),
(577, 'bxb_cny', '', '1', 0, 1497346866, 0, 0),
(576, 'bxb_cny', '', '1', 0, 1497346806, 0, 0),
(575, 'bxb_cny', '', '1', 0, 1497346746, 0, 0),
(574, 'bxb_cny', '', '1', 0, 1497346686, 0, 0),
(573, 'bxb_cny', '', '1', 0, 1497346626, 0, 0),
(572, 'bxb_cny', '', '1', 0, 1497346566, 0, 0),
(571, 'bxb_cny', '', '1', 0, 1497346506, 0, 0),
(570, 'bxb_cny', '', '1', 0, 1497346446, 0, 0),
(569, 'bxb_cny', '', '1', 0, 1497346386, 0, 0),
(568, 'bxb_cny', '', '1', 0, 1497346326, 0, 0),
(567, 'bxb_cny', '', '1', 0, 1497346266, 0, 0),
(566, 'bxb_cny', '', '1', 0, 1497346206, 0, 0),
(410, 'bxb_cny', '', '1', 0, 1497344766, 0, 0),
(409, 'bxb_cny', '[1497657600,"1.01000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '240', 0, 1497657600, 0, 0),
(433, 'bxb_cny', '', '3', 0, 1497349980, 0, 0),
(434, 'bxb_cny', '', '3', 0, 1497350160, 0, 0),
(435, 'bxb_cny', '', '3', 0, 1497350340, 0, 0),
(436, 'bxb_cny', '', '3', 0, 1497350520, 0, 0),
(437, 'bxb_cny', '', '3', 0, 1497350700, 0, 0),
(438, 'bxb_cny', '', '3', 0, 1497350880, 0, 0),
(439, 'bxb_cny', '', '3', 0, 1497351060, 0, 0),
(440, 'bxb_cny', '', '3', 0, 1497351240, 0, 0),
(441, 'bxb_cny', '', '3', 0, 1497351420, 0, 0),
(442, 'bxb_cny', '', '3', 0, 1497351600, 0, 0),
(443, 'bxb_cny', '', '3', 0, 1497351780, 0, 0),
(444, 'bxb_cny', '', '3', 0, 1497351960, 0, 0),
(445, 'bxb_cny', '', '3', 0, 1497352140, 0, 0),
(446, 'bxb_cny', '', '3', 0, 1497352320, 0, 0),
(447, 'bxb_cny', '', '3', 0, 1497352500, 0, 0),
(448, 'bxb_cny', '', '3', 0, 1497352680, 0, 0),
(449, 'bxb_cny', '', '3', 0, 1497352860, 0, 0),
(450, 'bxb_cny', '', '3', 0, 1497353040, 0, 0),
(451, 'bxb_cny', '', '3', 0, 1497353220, 0, 0),
(452, 'bxb_cny', '', '5', 0, 1497354600, 0, 0),
(453, 'bxb_cny', '', '5', 0, 1497354900, 0, 0),
(454, 'bxb_cny', '', '5', 0, 1497355200, 0, 0),
(455, 'bxb_cny', '', '5', 0, 1497355500, 0, 0),
(456, 'bxb_cny', '', '5', 0, 1497355800, 0, 0),
(457, 'bxb_cny', '', '5', 0, 1497356100, 0, 0),
(458, 'bxb_cny', '', '5', 0, 1497356400, 0, 0),
(459, 'bxb_cny', '', '5', 0, 1497356700, 0, 0),
(460, 'bxb_cny', '', '5', 0, 1497357000, 0, 0),
(461, 'bxb_cny', '', '5', 0, 1497357300, 0, 0),
(462, 'bxb_cny', '', '5', 0, 1497357600, 0, 0),
(463, 'bxb_cny', '', '5', 0, 1497357900, 0, 0),
(464, 'bxb_cny', '', '5', 0, 1497358200, 0, 0),
(465, 'bxb_cny', '', '5', 0, 1497358500, 0, 0),
(466, 'bxb_cny', '', '5', 0, 1497358800, 0, 0),
(467, 'bxb_cny', '', '5', 0, 1497359100, 0, 0),
(468, 'bxb_cny', '', '5', 0, 1497359400, 0, 0),
(469, 'bxb_cny', '', '5', 0, 1497359700, 0, 0),
(470, 'bxb_cny', '', '5', 0, 1497360000, 0, 0),
(471, 'bxb_cny', '', '5', 0, 1497360300, 0, 0),
(472, 'bxb_cny', '', '5', 0, 1497360600, 0, 0),
(473, 'bxb_cny', '', '10', 0, 1497366600, 0, 0),
(474, 'bxb_cny', '', '10', 0, 1497367200, 0, 0),
(475, 'bxb_cny', '', '10', 0, 1497367800, 0, 0),
(476, 'bxb_cny', '', '10', 0, 1497368400, 0, 0),
(477, 'bxb_cny', '', '10', 0, 1497369000, 0, 0),
(478, 'bxb_cny', '', '10', 0, 1497369600, 0, 0),
(479, 'bxb_cny', '', '10', 0, 1497370200, 0, 0),
(480, 'bxb_cny', '', '10', 0, 1497370800, 0, 0),
(481, 'bxb_cny', '', '10', 0, 1497371400, 0, 0),
(482, 'bxb_cny', '', '10', 0, 1497372000, 0, 0),
(483, 'bxb_cny', '', '10', 0, 1497372600, 0, 0),
(484, 'bxb_cny', '', '10', 0, 1497373200, 0, 0),
(485, 'bxb_cny', '', '10', 0, 1497373800, 0, 0),
(486, 'bxb_cny', '', '10', 0, 1497374400, 0, 0),
(487, 'bxb_cny', '', '10', 0, 1497375000, 0, 0),
(488, 'bxb_cny', '', '10', 0, 1497375600, 0, 0),
(489, 'bxb_cny', '', '10', 0, 1497376200, 0, 0),
(490, 'bxb_cny', '', '10', 0, 1497376800, 0, 0),
(491, 'bxb_cny', '', '10', 0, 1497377400, 0, 0),
(492, 'bxb_cny', '', '10', 0, 1497378000, 0, 0),
(493, 'bxb_cny', '', '10', 0, 1497378600, 0, 0),
(494, 'bxb_cny', '', '15', 0, 1497378600, 0, 0),
(495, 'bxb_cny', '', '15', 0, 1497379500, 0, 0),
(496, 'bxb_cny', '', '15', 0, 1497380400, 0, 0),
(497, 'bxb_cny', '', '15', 0, 1497381300, 0, 0),
(498, 'bxb_cny', '', '15', 0, 1497382200, 0, 0),
(499, 'bxb_cny', '', '15', 0, 1497383100, 0, 0),
(500, 'bxb_cny', '', '15', 0, 1497384000, 0, 0),
(501, 'bxb_cny', '', '15', 0, 1497384900, 0, 0),
(502, 'bxb_cny', '', '15', 0, 1497385800, 0, 0),
(503, 'bxb_cny', '', '15', 0, 1497386700, 0, 0),
(504, 'bxb_cny', '', '15', 0, 1497387600, 0, 0),
(505, 'bxb_cny', '', '15', 0, 1497388500, 0, 0),
(506, 'bxb_cny', '', '15', 0, 1497389400, 0, 0),
(507, 'bxb_cny', '', '15', 0, 1497390300, 0, 0),
(508, 'bxb_cny', '', '15', 0, 1497391200, 0, 0),
(509, 'bxb_cny', '', '15', 0, 1497392100, 0, 0),
(510, 'bxb_cny', '', '15', 0, 1497393000, 0, 0),
(511, 'bxb_cny', '', '15', 0, 1497393900, 0, 0),
(512, 'bxb_cny', '', '15', 0, 1497394800, 0, 0),
(513, 'bxb_cny', '', '15', 0, 1497395700, 0, 0),
(514, 'bxb_cny', '', '15', 0, 1497396600, 0, 0),
(515, 'bxb_cny', '', '30', 0, 1497414600, 0, 0),
(516, 'bxb_cny', '', '30', 0, 1497416400, 0, 0),
(517, 'bxb_cny', '', '30', 0, 1497418200, 0, 0),
(518, 'bxb_cny', '', '30', 0, 1497420000, 0, 0),
(519, 'bxb_cny', '', '30', 0, 1497421800, 0, 0),
(520, 'bxb_cny', '', '30', 0, 1497423600, 0, 0),
(521, 'bxb_cny', '', '30', 0, 1497425400, 0, 0),
(522, 'bxb_cny', '', '30', 0, 1497427200, 0, 0),
(523, 'bxb_cny', '', '30', 0, 1497429000, 0, 0),
(524, 'bxb_cny', '', '30', 0, 1497430800, 0, 0),
(525, 'bxb_cny', '', '30', 0, 1497432600, 0, 0),
(526, 'bxb_cny', '', '30', 0, 1497434400, 0, 0),
(527, 'bxb_cny', '', '30', 0, 1497436200, 0, 0),
(528, 'bxb_cny', '', '30', 0, 1497438000, 0, 0),
(529, 'bxb_cny', '', '30', 0, 1497439800, 0, 0),
(530, 'bxb_cny', '', '30', 0, 1497441600, 0, 0),
(531, 'bxb_cny', '', '30', 0, 1497443400, 0, 0),
(532, 'bxb_cny', '', '30', 0, 1497445200, 0, 0),
(533, 'bxb_cny', '', '30', 0, 1497447000, 0, 0),
(534, 'bxb_cny', '', '30', 0, 1497448800, 0, 0),
(535, 'bxb_cny', '', '30', 0, 1497450600, 0, 0),
(897, 'bxb_cny', '', '5', 0, 1497375300, 0, 0),
(896, 'bxb_cny', '', '5', 0, 1497375000, 0, 0),
(895, 'bxb_cny', '', '5', 0, 1497374700, 0, 0),
(894, 'bxb_cny', '', '5', 0, 1497374400, 0, 0),
(893, 'bxb_cny', '', '5', 0, 1497374100, 0, 0),
(892, 'bxb_cny', '', '5', 0, 1497373800, 0, 0),
(891, 'bxb_cny', '', '5', 0, 1497373500, 0, 0),
(890, 'bxb_cny', '', '5', 0, 1497373200, 0, 0),
(889, 'bxb_cny', '', '5', 0, 1497372900, 0, 0),
(888, 'bxb_cny', '', '5', 0, 1497372600, 0, 0),
(887, 'bxb_cny', '', '3', 0, 1497364020, 0, 0),
(886, 'bxb_cny', '', '3', 0, 1497363840, 0, 0),
(885, 'bxb_cny', '', '3', 0, 1497363660, 0, 0),
(884, 'bxb_cny', '', '3', 0, 1497363480, 0, 0),
(883, 'bxb_cny', '', '3', 0, 1497363300, 0, 0),
(882, 'bxb_cny', '', '3', 0, 1497363120, 0, 0),
(881, 'bxb_cny', '', '3', 0, 1497362940, 0, 0),
(880, 'bxb_cny', '', '3', 0, 1497362760, 0, 0),
(879, 'bxb_cny', '', '3', 0, 1497362580, 0, 0),
(878, 'bxb_cny', '', '3', 0, 1497362400, 0, 0),
(877, 'bxb_cny', '', '3', 0, 1497362220, 0, 0),
(565, 'bxb_cny', '', '1', 0, 1497346146, 0, 0),
(564, 'bxb_cny', '', '1', 0, 1497346086, 0, 0),
(563, 'bxb_cny', '', '1', 0, 1497346026, 0, 0),
(562, 'bxb_cny', '', '1', 0, 1497345966, 0, 0),
(561, 'bxb_cny', '[1497664800,"1.01000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '120', 0, 1497664800, 0, 0),
(609, 'bxb_cny', '', '5', 0, 1497362100, 0, 0),
(610, 'bxb_cny', '', '5', 0, 1497362400, 0, 0),
(611, 'bxb_cny', '', '5', 0, 1497362700, 0, 0),
(612, 'bxb_cny', '', '5', 0, 1497363000, 0, 0),
(613, 'bxb_cny', '', '5', 0, 1497363300, 0, 0),
(614, 'bxb_cny', '', '5', 0, 1497363600, 0, 0),
(615, 'bxb_cny', '', '5', 0, 1497363900, 0, 0),
(616, 'bxb_cny', '', '5', 0, 1497364200, 0, 0),
(617, 'bxb_cny', '', '5', 0, 1497364500, 0, 0),
(618, 'bxb_cny', '', '5', 0, 1497364800, 0, 0),
(619, 'bxb_cny', '', '5', 0, 1497365100, 0, 0),
(620, 'bxb_cny', '', '5', 0, 1497365400, 0, 0),
(621, 'bxb_cny', '', '5', 0, 1497365700, 0, 0),
(622, 'bxb_cny', '', '5', 0, 1497366000, 0, 0),
(623, 'bxb_cny', '', '5', 0, 1497366300, 0, 0),
(624, 'bxb_cny', '', '5', 0, 1497366600, 0, 0),
(625, 'bxb_cny', '', '10', 0, 1497378600, 0, 0),
(626, 'bxb_cny', '', '10', 0, 1497379200, 0, 0),
(627, 'bxb_cny', '', '10', 0, 1497379800, 0, 0),
(628, 'bxb_cny', '', '10', 0, 1497380400, 0, 0),
(629, 'bxb_cny', '', '10', 0, 1497381000, 0, 0),
(630, 'bxb_cny', '', '10', 0, 1497381600, 0, 0),
(631, 'bxb_cny', '', '10', 0, 1497382200, 0, 0),
(632, 'bxb_cny', '', '10', 0, 1497382800, 0, 0),
(633, 'bxb_cny', '', '10', 0, 1497383400, 0, 0),
(634, 'bxb_cny', '', '10', 0, 1497384000, 0, 0),
(635, 'bxb_cny', '', '10', 0, 1497384600, 0, 0),
(636, 'bxb_cny', '', '10', 0, 1497385200, 0, 0),
(637, 'bxb_cny', '', '10', 0, 1497385800, 0, 0),
(638, 'bxb_cny', '', '10', 0, 1497386400, 0, 0),
(639, 'bxb_cny', '', '10', 0, 1497387000, 0, 0),
(640, 'bxb_cny', '', '10', 0, 1497387600, 0, 0),
(641, 'bxb_cny', '', '10', 0, 1497388200, 0, 0),
(642, 'bxb_cny', '', '10', 0, 1497388800, 0, 0),
(643, 'bxb_cny', '', '10', 0, 1497389400, 0, 0),
(644, 'bxb_cny', '', '10', 0, 1497390000, 0, 0),
(645, 'bxb_cny', '', '10', 0, 1497390600, 0, 0),
(646, 'bxb_cny', '', '15', 0, 1497396600, 0, 0),
(647, 'bxb_cny', '', '15', 0, 1497397500, 0, 0),
(648, 'bxb_cny', '', '15', 0, 1497398400, 0, 0),
(649, 'bxb_cny', '', '15', 0, 1497399300, 0, 0),
(650, 'bxb_cny', '', '15', 0, 1497400200, 0, 0),
(651, 'bxb_cny', '', '15', 0, 1497401100, 0, 0),
(652, 'bxb_cny', '', '15', 0, 1497402000, 0, 0),
(653, 'bxb_cny', '', '15', 0, 1497402900, 0, 0),
(654, 'bxb_cny', '', '15', 0, 1497403800, 0, 0),
(655, 'bxb_cny', '', '15', 0, 1497404700, 0, 0),
(656, 'bxb_cny', '', '15', 0, 1497405600, 0, 0),
(657, 'bxb_cny', '', '15', 0, 1497406500, 0, 0),
(658, 'bxb_cny', '', '15', 0, 1497407400, 0, 0),
(659, 'bxb_cny', '', '15', 0, 1497408300, 0, 0),
(660, 'bxb_cny', '', '15', 0, 1497409200, 0, 0),
(661, 'bxb_cny', '', '15', 0, 1497410100, 0, 0),
(662, 'bxb_cny', '', '15', 0, 1497411000, 0, 0),
(663, 'bxb_cny', '', '15', 0, 1497411900, 0, 0),
(664, 'bxb_cny', '', '15', 0, 1497412800, 0, 0),
(665, 'bxb_cny', '', '15', 0, 1497413700, 0, 0),
(666, 'bxb_cny', '', '15', 0, 1497414600, 0, 0),
(667, 'bxb_cny', '', '30', 0, 1497450600, 0, 0),
(668, 'bxb_cny', '', '30', 0, 1497452400, 0, 0),
(669, 'bxb_cny', '', '30', 0, 1497454200, 0, 0),
(670, 'bxb_cny', '', '30', 0, 1497456000, 0, 0),
(671, 'bxb_cny', '', '30', 0, 1497457800, 0, 0),
(672, 'bxb_cny', '', '30', 0, 1497459600, 0, 0),
(673, 'bxb_cny', '', '30', 0, 1497461400, 0, 0),
(674, 'bxb_cny', '', '30', 0, 1497463200, 0, 0),
(675, 'bxb_cny', '', '30', 0, 1497465000, 0, 0),
(676, 'bxb_cny', '', '30', 0, 1497466800, 0, 0),
(677, 'bxb_cny', '', '30', 0, 1497468600, 0, 0),
(678, 'bxb_cny', '', '30', 0, 1497470400, 0, 0),
(679, 'bxb_cny', '', '30', 0, 1497472200, 0, 0),
(680, 'bxb_cny', '', '30', 0, 1497474000, 0, 0),
(681, 'bxb_cny', '', '30', 0, 1497475800, 0, 0),
(682, 'bxb_cny', '', '30', 0, 1497477600, 0, 0),
(683, 'bxb_cny', '', '30', 0, 1497479400, 0, 0),
(684, 'bxb_cny', '', '30', 0, 1497481200, 0, 0),
(685, 'bxb_cny', '', '30', 0, 1497483000, 0, 0),
(686, 'bxb_cny', '', '30', 0, 1497484800, 0, 0),
(687, 'bxb_cny', '', '30', 0, 1497486600, 0, 0),
(876, 'bxb_cny', '', '3', 0, 1497362040, 0, 0),
(875, 'bxb_cny', '', '3', 0, 1497361860, 0, 0),
(874, 'bxb_cny', '', '3', 0, 1497361680, 0, 0),
(873, 'bxb_cny', '', '3', 0, 1497361500, 0, 0),
(872, 'bxb_cny', '', '3', 0, 1497361320, 0, 0),
(871, 'bxb_cny', '', '3', 0, 1497361140, 0, 0),
(870, 'bxb_cny', '', '3', 0, 1497360960, 0, 0),
(869, 'bxb_cny', '', '3', 0, 1497360780, 0, 0),
(868, 'bxb_cny', '', '3', 0, 1497360600, 0, 0),
(867, 'bxb_cny', '', '3', 0, 1497360420, 0, 0),
(866, 'bxb_cny', '', '1', 0, 1497349566, 0, 0),
(865, 'bxb_cny', '', '1', 0, 1497349506, 0, 0),
(864, 'bxb_cny', '', '1', 0, 1497349446, 0, 0),
(863, 'bxb_cny', '', '1', 0, 1497349386, 0, 0),
(862, 'bxb_cny', '', '1', 0, 1497349326, 0, 0),
(861, 'bxb_cny', '', '1', 0, 1497349266, 0, 0),
(860, 'bxb_cny', '', '1', 0, 1497349206, 0, 0),
(859, 'bxb_cny', '', '1', 0, 1497349146, 0, 0),
(858, 'bxb_cny', '', '1', 0, 1497349086, 0, 0),
(857, 'bxb_cny', '', '1', 0, 1497349026, 0, 0),
(856, 'bxb_cny', '', '1', 0, 1497348966, 0, 0),
(709, 'bxb_cny', '', '1', 0, 1497347166, 0, 0),
(710, 'bxb_cny', '', '1', 0, 1497347226, 0, 0),
(711, 'bxb_cny', '', '1', 0, 1497347286, 0, 0),
(712, 'bxb_cny', '', '1', 0, 1497347346, 0, 0),
(713, 'bxb_cny', '', '1', 0, 1497347406, 0, 0),
(714, 'bxb_cny', '', '1', 0, 1497347466, 0, 0),
(715, 'bxb_cny', '', '1', 0, 1497347526, 0, 0),
(716, 'bxb_cny', '', '1', 0, 1497347586, 0, 0),
(717, 'bxb_cny', '', '1', 0, 1497347646, 0, 0),
(718, 'bxb_cny', '', '1', 0, 1497347706, 0, 0),
(719, 'bxb_cny', '', '1', 0, 1497347766, 0, 0),
(720, 'bxb_cny', '', '1', 0, 1497347826, 0, 0),
(721, 'bxb_cny', '', '1', 0, 1497347886, 0, 0),
(722, 'bxb_cny', '', '1', 0, 1497347946, 0, 0),
(723, 'bxb_cny', '', '1', 0, 1497348006, 0, 0),
(724, 'bxb_cny', '', '1', 0, 1497348066, 0, 0),
(725, 'bxb_cny', '', '1', 0, 1497348126, 0, 0),
(726, 'bxb_cny', '', '1', 0, 1497348186, 0, 0),
(727, 'bxb_cny', '', '1', 0, 1497348246, 0, 0),
(728, 'bxb_cny', '', '1', 0, 1497348306, 0, 0),
(729, 'bxb_cny', '', '1', 0, 1497348366, 0, 0),
(730, 'bxb_cny', '', '3', 0, 1497356820, 0, 0),
(731, 'bxb_cny', '', '3', 0, 1497357000, 0, 0),
(732, 'bxb_cny', '', '3', 0, 1497357180, 0, 0),
(733, 'bxb_cny', '', '3', 0, 1497357360, 0, 0),
(734, 'bxb_cny', '', '3', 0, 1497357540, 0, 0),
(735, 'bxb_cny', '', '3', 0, 1497357720, 0, 0),
(736, 'bxb_cny', '', '3', 0, 1497357900, 0, 0),
(737, 'bxb_cny', '', '3', 0, 1497358080, 0, 0),
(738, 'bxb_cny', '', '3', 0, 1497358260, 0, 0),
(739, 'bxb_cny', '', '3', 0, 1497358440, 0, 0),
(740, 'bxb_cny', '', '3', 0, 1497358620, 0, 0),
(741, 'bxb_cny', '', '3', 0, 1497358800, 0, 0),
(742, 'bxb_cny', '', '3', 0, 1497358980, 0, 0),
(743, 'bxb_cny', '', '3', 0, 1497359160, 0, 0),
(744, 'bxb_cny', '', '3', 0, 1497359340, 0, 0),
(745, 'bxb_cny', '', '3', 0, 1497359520, 0, 0),
(746, 'bxb_cny', '', '3', 0, 1497359700, 0, 0),
(747, 'bxb_cny', '', '3', 0, 1497359880, 0, 0),
(748, 'bxb_cny', '', '3', 0, 1497360060, 0, 0),
(749, 'bxb_cny', '', '3', 0, 1497360240, 0, 0),
(750, 'bxb_cny', '', '3', 0, 1497360420, 0, 0),
(751, 'bxb_cny', '', '5', 0, 1497366600, 0, 0),
(752, 'bxb_cny', '', '5', 0, 1497366900, 0, 0),
(753, 'bxb_cny', '', '5', 0, 1497367200, 0, 0),
(754, 'bxb_cny', '', '5', 0, 1497367500, 0, 0),
(755, 'bxb_cny', '', '5', 0, 1497367800, 0, 0),
(756, 'bxb_cny', '', '5', 0, 1497368100, 0, 0),
(757, 'bxb_cny', '', '5', 0, 1497368400, 0, 0),
(758, 'bxb_cny', '', '5', 0, 1497368700, 0, 0),
(759, 'bxb_cny', '', '5', 0, 1497369000, 0, 0),
(760, 'bxb_cny', '', '5', 0, 1497369300, 0, 0),
(761, 'bxb_cny', '', '5', 0, 1497369600, 0, 0),
(762, 'bxb_cny', '', '5', 0, 1497369900, 0, 0),
(763, 'bxb_cny', '', '5', 0, 1497370200, 0, 0),
(764, 'bxb_cny', '', '5', 0, 1497370500, 0, 0),
(765, 'bxb_cny', '', '5', 0, 1497370800, 0, 0),
(766, 'bxb_cny', '', '5', 0, 1497371100, 0, 0),
(767, 'bxb_cny', '', '5', 0, 1497371400, 0, 0),
(768, 'bxb_cny', '', '5', 0, 1497371700, 0, 0),
(769, 'bxb_cny', '', '5', 0, 1497372000, 0, 0),
(770, 'bxb_cny', '', '5', 0, 1497372300, 0, 0),
(771, 'bxb_cny', '', '5', 0, 1497372600, 0, 0),
(772, 'bxb_cny', '', '10', 0, 1497390600, 0, 0),
(773, 'bxb_cny', '', '10', 0, 1497391200, 0, 0),
(774, 'bxb_cny', '', '10', 0, 1497391800, 0, 0),
(775, 'bxb_cny', '', '10', 0, 1497392400, 0, 0),
(776, 'bxb_cny', '', '10', 0, 1497393000, 0, 0),
(777, 'bxb_cny', '', '10', 0, 1497393600, 0, 0),
(778, 'bxb_cny', '', '10', 0, 1497394200, 0, 0),
(779, 'bxb_cny', '', '10', 0, 1497394800, 0, 0),
(780, 'bxb_cny', '', '10', 0, 1497395400, 0, 0),
(781, 'bxb_cny', '', '10', 0, 1497396000, 0, 0),
(782, 'bxb_cny', '', '10', 0, 1497396600, 0, 0),
(783, 'bxb_cny', '', '10', 0, 1497397200, 0, 0),
(784, 'bxb_cny', '', '10', 0, 1497397800, 0, 0),
(785, 'bxb_cny', '', '10', 0, 1497398400, 0, 0),
(786, 'bxb_cny', '', '10', 0, 1497399000, 0, 0),
(787, 'bxb_cny', '', '10', 0, 1497399600, 0, 0),
(788, 'bxb_cny', '', '10', 0, 1497400200, 0, 0),
(789, 'bxb_cny', '', '10', 0, 1497400800, 0, 0),
(790, 'bxb_cny', '', '10', 0, 1497401400, 0, 0),
(791, 'bxb_cny', '', '10', 0, 1497402000, 0, 0),
(792, 'bxb_cny', '', '10', 0, 1497402600, 0, 0),
(793, 'bxb_cny', '', '15', 0, 1497414600, 0, 0),
(794, 'bxb_cny', '', '15', 0, 1497415500, 0, 0),
(795, 'bxb_cny', '', '15', 0, 1497416400, 0, 0),
(796, 'bxb_cny', '', '15', 0, 1497417300, 0, 0),
(797, 'bxb_cny', '', '15', 0, 1497418200, 0, 0),
(798, 'bxb_cny', '', '15', 0, 1497419100, 0, 0),
(799, 'bxb_cny', '', '15', 0, 1497420000, 0, 0),
(800, 'bxb_cny', '', '15', 0, 1497420900, 0, 0),
(801, 'bxb_cny', '', '15', 0, 1497421800, 0, 0),
(802, 'bxb_cny', '', '15', 0, 1497422700, 0, 0),
(803, 'bxb_cny', '', '15', 0, 1497423600, 0, 0),
(804, 'bxb_cny', '', '15', 0, 1497424500, 0, 0),
(805, 'bxb_cny', '', '15', 0, 1497425400, 0, 0),
(806, 'bxb_cny', '', '15', 0, 1497426300, 0, 0),
(807, 'bxb_cny', '', '15', 0, 1497427200, 0, 0),
(808, 'bxb_cny', '', '15', 0, 1497428100, 0, 0),
(809, 'bxb_cny', '', '15', 0, 1497429000, 0, 0),
(810, 'bxb_cny', '', '15', 0, 1497429900, 0, 0),
(811, 'bxb_cny', '', '15', 0, 1497430800, 0, 0),
(812, 'bxb_cny', '', '15', 0, 1497431700, 0, 0),
(813, 'bxb_cny', '', '15', 0, 1497432600, 0, 0),
(814, 'bxb_cny', '', '30', 0, 1497486600, 0, 0),
(815, 'bxb_cny', '', '30', 0, 1497488400, 0, 0),
(816, 'bxb_cny', '', '30', 0, 1497490200, 0, 0),
(817, 'bxb_cny', '', '30', 0, 1497492000, 0, 0),
(818, 'bxb_cny', '', '30', 0, 1497493800, 0, 0),
(819, 'bxb_cny', '', '30', 0, 1497495600, 0, 0),
(820, 'bxb_cny', '', '30', 0, 1497497400, 0, 0),
(821, 'bxb_cny', '', '30', 0, 1497499200, 0, 0),
(822, 'bxb_cny', '', '30', 0, 1497501000, 0, 0),
(823, 'bxb_cny', '', '30', 0, 1497502800, 0, 0),
(824, 'bxb_cny', '', '30', 0, 1497504600, 0, 0),
(825, 'bxb_cny', '', '30', 0, 1497506400, 0, 0),
(826, 'bxb_cny', '', '30', 0, 1497508200, 0, 0),
(827, 'bxb_cny', '', '30', 0, 1497510000, 0, 0),
(828, 'bxb_cny', '', '30', 0, 1497511800, 0, 0),
(829, 'bxb_cny', '', '30', 0, 1497513600, 0, 0),
(830, 'bxb_cny', '', '30', 0, 1497515400, 0, 0),
(831, 'bxb_cny', '', '30', 0, 1497517200, 0, 0),
(832, 'bxb_cny', '', '30', 0, 1497519000, 0, 0),
(833, 'bxb_cny', '', '30', 0, 1497520800, 0, 0),
(834, 'bxb_cny', '', '30', 0, 1497522600, 0, 0),
(855, 'bxb_cny', '', '1', 0, 1497348906, 0, 0),
(854, 'bxb_cny', '', '1', 0, 1497348846, 0, 0),
(853, 'bxb_cny', '', '1', 0, 1497348786, 0, 0),
(852, 'bxb_cny', '', '1', 0, 1497348726, 0, 0),
(851, 'bxb_cny', '', '1', 0, 1497348666, 0, 0),
(850, 'bxb_cny', '', '1', 0, 1497348606, 0, 0),
(849, 'bxb_cny', '', '1', 0, 1497348546, 0, 0),
(848, 'bxb_cny', '', '1', 0, 1497348486, 0, 0),
(847, 'bxb_cny', '', '1', 0, 1497348426, 0, 0),
(846, 'bxb_cny', '', '1', 0, 1497348366, 0, 0),
(845, 'bxb_cny', '[1497668400,"1.01000000","0.01000000","0.01000000","0.01000000","0.01000000"]', '60', 0, 1497668400, 0, 0),
(941, 'bxb_cny', '', '15', 0, 1497442500, 0, 0),
(942, 'bxb_cny', '', '15', 0, 1497443400, 0, 0),
(943, 'bxb_cny', '', '15', 0, 1497444300, 0, 0),
(944, 'bxb_cny', '', '15', 0, 1497445200, 0, 0),
(945, 'bxb_cny', '', '15', 0, 1497446100, 0, 0),
(946, 'bxb_cny', '', '15', 0, 1497447000, 0, 0),
(947, 'bxb_cny', '', '15', 0, 1497447900, 0, 0),
(948, 'bxb_cny', '', '15', 0, 1497448800, 0, 0),
(949, 'bxb_cny', '', '15', 0, 1497449700, 0, 0),
(950, 'bxb_cny', '', '15', 0, 1497450600, 0, 0),
(951, 'bxb_cny', '', '30', 0, 1497522600, 0, 0),
(952, 'bxb_cny', '', '30', 0, 1497524400, 0, 0),
(953, 'bxb_cny', '', '30', 0, 1497526200, 0, 0),
(954, 'bxb_cny', '', '30', 0, 1497528000, 0, 0),
(955, 'bxb_cny', '', '30', 0, 1497529800, 0, 0),
(956, 'bxb_cny', '', '30', 0, 1497531600, 0, 0),
(957, 'bxb_cny', '', '30', 0, 1497533400, 0, 0),
(958, 'bxb_cny', '', '30', 0, 1497535200, 0, 0),
(959, 'bxb_cny', '', '30', 0, 1497537000, 0, 0),
(960, 'bxb_cny', '', '30', 0, 1497538800, 0, 0),
(961, 'bxb_cny', '', '30', 0, 1497540600, 0, 0),
(962, 'bxb_cny', '', '30', 0, 1497542400, 0, 0),
(963, 'bxb_cny', '', '30', 0, 1497544200, 0, 0),
(964, 'bxb_cny', '', '30', 0, 1497546000, 0, 0),
(965, 'bxb_cny', '', '30', 0, 1497547800, 0, 0),
(966, 'bxb_cny', '', '30', 0, 1497549600, 0, 0),
(967, 'bxb_cny', '', '30', 0, 1497551400, 0, 0),
(968, 'bxb_cny', '', '30', 0, 1497553200, 0, 0),
(969, 'bxb_cny', '', '30', 0, 1497555000, 0, 0),
(970, 'bxb_cny', '', '30', 0, 1497556800, 0, 0),
(971, 'bxb_cny', '', '30', 0, 1497558600, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_trade_log`
--

CREATE TABLE `ecshecom_trade_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `peerid` int(11) UNSIGNED NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL,
  `num` decimal(20,8) UNSIGNED NOT NULL,
  `mum` decimal(20,8) UNSIGNED NOT NULL,
  `fee_buy` decimal(20,8) UNSIGNED NOT NULL,
  `fee_sell` decimal(20,8) UNSIGNED NOT NULL,
  `type` tinyint(2) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecshecom_trade_log`
--

INSERT INTO `ecshecom_trade_log` (`id`, `userid`, `peerid`, `market`, `price`, `num`, `mum`, `fee_buy`, `fee_sell`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 1, 1, 'bxb_cny', '0.01000000', '1.00000000', '0.01000000', '0.00001000', '0.00001000', 1, 0, 1497342306, 0, 1),
(2, 1, 2, 'bxb_cny', '0.01000000', '0.01000000', '0.00010000', '0.00000010', '0.00000010', 1, 0, 1497669942, 0, 1),
(3, 1, 1, 'bxb_cny', '0.01000000', '0.99000000', '0.00990000', '0.00000990', '0.00000990', 1, 0, 1497669942, 0, 1),
(4, 1, 1, 'bxb_cny', '0.01000000', '0.01000000', '0.00010000', '0.00000010', '0.00000010', 1, 0, 1497669981, 0, 1),
(5, 1, 15, 'bxb_cny', '0.02000000', '0.99000000', '0.01980000', '0.00000198', '0.00000198', 2, 0, 1498715568, 0, 1),
(6, 1, 15, 'bxb_cny', '0.02000000', '1.00000000', '0.02000000', '0.00000200', '0.00000200', 2, 0, 1498715568, 0, 1),
(7, 15, 15, 'bxb_cny', '0.01100000', '85.00000000', '0.93500000', '0.00009350', '0.00009350', 1, 0, 1498715586, 0, 1),
(8, 15, 15, 'abc_cny', '0.10000000', '10.00000000', '1.00000000', '0.00100000', '0.00100000', 1, 0, 1498795002, 0, 1),
(9, 15, 15, 'abc_cny', '0.11000000', '1.00000000', '0.11000000', '0.00011000', '0.00011000', 1, 0, 1498795052, 0, 1),
(10, 15, 15, 'abc_cny', '0.09000000', '1.00000000', '0.09000000', '0.00009000', '0.00009000', 2, 0, 1498795253, 0, 1),
(11, 15, 15, 'bxb_cny', '0.01100000', '1.00000000', '0.01100000', '0.00000110', '0.00000110', 1, 0, 1498795314, 0, 1),
(12, 15, 15, 'bxb_cny', '0.00900000', '1.00000000', '0.00900000', '0.00000090', '0.00000090', 1, 0, 1498795351, 0, 1),
(13, 15, 15, 'glc_cny', '0.05000000', '100.00000000', '5.00000000', '0.00500000', '0.00500000', 2, 0, 1498811384, 0, 1),
(14, 15, 15, 'glc_cny', '0.05000000', '900.00000000', '45.00000000', '0.04500000', '0.04500000', 2, 0, 1498812173, 0, 1),
(15, 15, 15, 'glc_cny', '0.05000000', '98.90000000', '4.94500000', '0.00494500', '0.00494500', 2, 0, 1498812173, 0, 1),
(16, 15, 15, 'abc_cny', '0.10000000', '10.00000000', '1.00000000', '0.00100000', '0.00100000', 1, 0, 1498868006, 0, 1),
(17, 15, 15, 'abc_cny', '0.11000000', '9.00000000', '0.99000000', '0.00099000', '0.00099000', 1, 0, 1498868486, 0, 1),
(18, 15, 15, 'abc_cny', '0.10900000', '10000.00000000', '1090.00000000', '1.09000000', '1.09000000', 1, 0, 1498869911, 0, 1),
(19, 15, 15, 'glc_cny', '0.05500000', '10000.00000000', '550.00000000', '0.55000000', '0.55000000', 1, 0, 1498871631, 0, 1),
(20, 15, 15, 'bxb_cny', '0.01100000', '12.01000000', '0.13211000', '0.00001321', '0.00001321', 1, 0, 1498871872, 0, 1),
(21, 15, 15, 'bxb_cny', '0.02000000', '998.60000000', '19.97200000', '0.00199720', '0.00199720', 1, 0, 1498871872, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_ucenter_member`
--

CREATE TABLE `ecshecom_ucenter_member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `last_login_ip` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_user`
--

CREATE TABLE `ecshecom_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `moble` varchar(50) NOT NULL,
  `mobletime` int(11) UNSIGNED NOT NULL,
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
  `logins` int(11) UNSIGNED NOT NULL,
  `ga` varchar(50) NOT NULL,
  `addip` varchar(50) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
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
  `usertype` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户信息表';

--
-- 转存表中的数据 `ecshecom_user`
--

INSERT INTO `ecshecom_user` (`id`, `username`, `moble`, `mobletime`, `password`, `tpwdsetting`, `paypassword`, `invit_1`, `invit_2`, `invit_3`, `truename`, `idcard`, `idcardauth`, `idcardimg1`, `idcardimg2`, `idcardinfo`, `logins`, `ga`, `addip`, `addr`, `sort`, `addtime`, `endtime`, `status`, `email`, `alipay`, `invit`, `token`, `awardid`, `awardstatus`, `awardname`, `awardNumAll`, `awardNumToday`, `awardTotalToday`, `awardtime`, `regaward`, `usertype`) VALUES
(1, '15837127203', '15837127203', 1497278270, '4297f44b13955235245b2497399d7a93', '1', '3d186804534370c3c817db0563f0e461', '0', '0', '0', '任长远', '411081198706187279', 1, NULL, NULL, NULL, 6, '', '1.192.21.236', '未分配或者内网IP', 0, 1497339574, 0, 1, NULL, NULL, 'MSARVD', '6f17c89ae9645e73fd1b8e358d1efa8c', 0, 0, '无奖品', 0, 0, 0, 0, 1, 0),
(2, '18530861253', '18530861253', 1497336167, '58e0ab543e9309651370850e5ca73826', '1', '4bc5fb692a01e5faa3250a448f2b4be9', '0', '0', '0', '王登博', '411081199403281254', 1, NULL, NULL, NULL, 4, '', '182.119.95.84', '未分配或者内网IP', 0, 1497339574, 0, 1, NULL, NULL, 'FNEHUA', '86bb7db424d2f2f7d74dfda7b3ad1655', 0, 0, NULL, 0, 0, 0, 0, 1, 0),
(3, '15240403002', '15240403002', 1497344824, 'ed7e6bbb4e0c82572797d2b7d717faf8', '1', '9c959088612d298ac59f10d840eefee9', '0', '0', '0', '李乐义', '320322199603285018', 0, NULL, NULL, NULL, 0, '', '125.123.83.105', '未分配或者内网IP', 0, 1497344824, 0, 1, NULL, NULL, 'DXJGZY', NULL, 0, 0, NULL, 0, 0, 0, 0, 1, 0),
(5, '15993674328', '15993674328', 1497600444, '71b3b26aaa319e0cdf6fdb8429c112b0', '1', 'e35cf7b66449df565f93c607d5a81d09', '0', '0', '0', '高世举', '411081198901221276', 0, '5943930243b5f.jpg_5943930980bef.jpg_594393110e4e1.jpg', NULL, '', 0, '', '222.137.197.41', '未分配或者内网IP', 0, 1497600444, 0, 1, NULL, NULL, 'RULAXQ', NULL, 0, 0, '无奖品', 0, 0, 0, 0, 0, 0),
(6, '15903639320', '15903639320', 1497600490, 'bf36ea675fc9a7d00a33878c3d3b70ac', '1', 'b5a747937aec219a7a9b1cdf4293d663', '0', '0', '0', '苏玉环', '411282198211244021', 0, NULL, NULL, NULL, 1, '', '1.192.29.82', '未分配或者内网IP', 0, 1497600490, 0, 1, NULL, NULL, 'GDFPBU', '945b5312cc5b34a5c81a6c107506cd9d', 0, 0, NULL, 0, 0, 0, 0, 0, 0),
(7, '15038987283', '15038987283', 1497600535, 'c6a416bda168be4b3f0af90871138e54', '1', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0', '屈刚柱', '411081199911141258', 0, NULL, NULL, NULL, 0, '', '222.137.197.41', '未分配或者内网IP', 0, 1497600535, 0, 1, NULL, NULL, 'TJNIQZ', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 0),
(8, '15890898515', '15890898515', 1497600841, 'ffaa0ad89b568bebafcb2990bca85cca', '1', '4072ad92cbf0257d8d66ea9ea84a5af7', '0', '0', '0', '李晓辉', '411327198906253910', 0, NULL, NULL, NULL, 0, '', '1.192.29.82', '未分配或者内网IP', 0, 1497600841, 0, 1, NULL, NULL, 'ZXVRPC', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 0),
(9, '15837109811', '15837109811', 1497600844, '21b8a4e0039b5215899fbf2c08f070cf', '1', '8c38754af97d5122a0f0b88e5ae5993d', '0', '0', '0', '赵刚', '410102198909130191', 0, NULL, NULL, NULL, 0, '', '1.192.29.82', '未分配或者内网IP', 0, 1497600844, 0, 1, NULL, NULL, 'LVYDGM', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 0),
(10, '13523740282', '13523740282', 1497600860, '0adbd170421cd84f7665ebba5dbfd52e', '1', '184918de24299d318dd205a9349e82ca', '0', '0', '0', '屈龙江', '411081199311191251', 0, NULL, NULL, NULL, 0, '', '1.192.29.82', '未分配或者内网IP', 0, 1497600860, 0, 1, NULL, NULL, 'ZTCWHN', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 0),
(11, '13253366809', '13253366809', 1497601348, '9619cfa4aabc670a2e2de1793d2726e0', '1', 'f8a1db64b2de13e3d5e70605b3f94071', '0', '0', '0', '王康博', '411627199808141158', 0, NULL, NULL, NULL, 1, '', '1.192.29.82', '未分配或者内网IP', 0, 1497601348, 0, 1, NULL, NULL, 'VDZMJY', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 0),
(12, '13253655507', '13253655507', 1497602187, '29775f673b52cebda60554af3a3a53e3', '1', 'b921a87f4171a684f9a6d7da4e9c8b26', '0', '0', '0', '白得强', '410326199006241030', 0, NULL, NULL, NULL, 0, '', '222.137.197.41', '未分配或者内网IP', 0, 1497602187, 0, 1, NULL, NULL, 'KEWUBT', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 0),
(13, '13409377100', '13409377100', 1497603048, 'e10adc3949ba59abbe56e057f20f883e', '1', 'e8a9bf77a8546e8a290323554733c4d8', '0', '0', '0', '米晓龙', '411081198910057279', 0, NULL, NULL, NULL, 0, '', '1.197.135.113', '未分配或者内网IP', 0, 1497603048, 0, 1, NULL, NULL, 'YSMVJT', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 0),
(14, '15036918568', '15036918568', 1497603509, 'bd099d13f5e2482a677ed6a776b1fb08', '1', '711d78ee265a102bfcc5dbf5693739bc', '0', '0', '0', '魏壮壮', '412823199809132815', 0, NULL, NULL, NULL, 1, '', '1.192.29.82', '未分配或者内网IP', 0, 1497603509, 0, 1, NULL, NULL, 'KJSBZC', 'eb6a744a121e441ef76d911cdf79f2bc', 0, 0, NULL, 0, 0, 0, 0, 0, 0),
(15, '17755193851', '17755193851', 1498715405, '6340b8d9750a18f9a6eb04eed93f23fd', '1', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0', '张三', '420351199305155345', 0, NULL, NULL, NULL, 9, '', '122.191.204.16', '未分配或者内网IP', 0, 1498715405, 0, 1, NULL, NULL, 'SVWZAH', '9f8076fb199d810a1a9962d75d1f75ac', 0, 0, NULL, 0, 0, 0, 0, 0, 0),
(16, '15502171747', '13059840358', 1498868123, 'd64588fb904fa3e9635d1a4c01d38a92', '1', 'd64588fb904fa3e9635d1a4c01d38a92', '0', '0', '0', '丽丽', '110199902034569', 1, NULL, NULL, NULL, 5, '', '45.113.160.58', '未分配或者内网IP', 0, 1500711895, 0, 1, NULL, NULL, 'WXNYJB', '78133f6d13c5bcfc19c78fccae1d2f8e', 0, 0, '无奖品', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_user_award`
--

CREATE TABLE `ecshecom_user_award` (
  `id` int(11) NOT NULL,
  `userid` int(10) NOT NULL DEFAULT '0',
  `awardname` varchar(100) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `dealtime` int(11) NOT NULL DEFAULT '0',
  `awardid` int(2) NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_user_bank`
--

CREATE TABLE `ecshecom_user_bank` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `bank` varchar(200) NOT NULL,
  `bankprov` varchar(200) NOT NULL,
  `bankcity` varchar(200) NOT NULL,
  `bankaddr` varchar(200) NOT NULL,
  `bankcard` varchar(200) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecshecom_user_bank`
--

INSERT INTO `ecshecom_user_bank` (`id`, `userid`, `name`, `bank`, `bankprov`, `bankcity`, `bankaddr`, `bankcard`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 2, '测试', '平安银行', '浙江', '宁波', '测试支行', '2245122145454545', 0, 1494863694, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_user_bank_type`
--

CREATE TABLE `ecshecom_user_bank_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='常用银行地址';

--
-- 转存表中的数据 `ecshecom_user_bank_type`
--

INSERT INTO `ecshecom_user_bank_type` (`id`, `name`, `title`, `url`, `img`, `mytx`, `remark`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'boc', '中国银行', 'http://www.boc.cn/', 'img_56937003683ce.jpg', '', '', 0, 1452503043, 0, 1),
(2, 'abc', '农业银行', 'http://www.abchina.com/cn/', 'img_569370458b18d.jpg', '', '', 0, 1452503109, 0, 1),
(3, 'bccb', '北京银行', 'http://www.bankofbeijing.com.cn/', 'img_569370588dcdc.jpg', '', '', 0, 1452503128, 0, 1),
(4, 'ccb', '建设银行', 'http://www.ccb.com/', 'img_5693709bbd20f.jpg', '', '', 0, 1452503195, 0, 1),
(5, 'ceb', '光大银行', 'http://www.bankofbeijing.com.cn/', 'img_569370b207cc8.jpg', '', '', 0, 1452503218, 0, 1),
(6, 'cib', '兴业银行', 'http://www.cib.com.cn/cn/index.html', 'img_569370d29bf59.jpg', '', '', 0, 1452503250, 0, 1),
(7, 'citic', '中信银行', 'http://www.ecitic.com/', 'img_569370fb7a1b3.jpg', '', '', 0, 1452503291, 0, 1),
(8, 'cmb', '招商银行', 'http://www.cmbchina.com/', 'img_5693710a9ac9c.jpg', '', '', 0, 1452503306, 0, 1),
(9, 'cmbc', '民生银行', 'http://www.cmbchina.com/', 'img_5693711f97a9d.jpg', '', '', 0, 1452503327, 0, 1),
(10, 'comm', '交通银行', 'http://www.bankcomm.com/BankCommSite/default.shtml', 'img_5693713076351.jpg', '', '', 0, 1452503344, 0, 1),
(11, 'gdb', '广发银行', 'http://www.cgbchina.com.cn/', 'img_56937154bebc5.jpg', '', '', 0, 1452503380, 0, 1),
(12, 'icbc', '工商银行', 'http://www.icbc.com.cn/icbc/', 'img_56937162db7f5.jpg', '', '', 0, 1452503394, 0, 1),
(13, 'psbc', '邮政银行', 'http://www.psbc.com/portal/zh_CN/index.html', 'img_5693717eefaa3.jpg', '', '', 0, 1452503422, 0, 1),
(14, 'spdb', '浦发银行', 'http://www.spdb.com.cn/chpage/c1/', 'img_5693718f1d70e.jpg', '', '', 0, 1452503439, 0, 1),
(15, 'szpab', '平安银行', 'http://bank.pingan.com/', '56c2e4c9aff85.jpg', '', '', 0, 1455613129, 0, 1),
(16, 'alipay', '支付宝', 'http://www.alipay.com', '', '', '', 0, 1452503439, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_user_coin`
--

CREATE TABLE `ecshecom_user_coin` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `cny` decimal(20,8) NOT NULL,
  `cnyd` decimal(20,8) NOT NULL,
  `bxb` decimal(20,8) UNSIGNED NOT NULL,
  `bxbd` decimal(20,8) UNSIGNED NOT NULL,
  `bxbb` varchar(200) NOT NULL,
  `glc` decimal(20,8) UNSIGNED NOT NULL,
  `glcd` decimal(20,8) UNSIGNED NOT NULL,
  `glcb` varchar(200) NOT NULL,
  `abc` decimal(20,8) UNSIGNED NOT NULL,
  `abcd` decimal(20,8) UNSIGNED NOT NULL,
  `abcb` varchar(200) NOT NULL,
  `twc` decimal(20,8) UNSIGNED NOT NULL,
  `twcd` decimal(20,8) UNSIGNED NOT NULL,
  `twcb` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户币种表';

--
-- 转存表中的数据 `ecshecom_user_coin`
--

INSERT INTO `ecshecom_user_coin` (`id`, `userid`, `cny`, `cnyd`, `bxb`, `bxbd`, `bxbb`, `glc`, `glcd`, `glcb`, `abc`, `abcd`, `abcb`, `twc`, `twcd`, `twcb`) VALUES
(1, 1, '100.17005592', '0.00000000', '12.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(2, 2, '0.00009990', '0.00000000', '9.99000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(3, 3, '10.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(5, 5, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(6, 6, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(7, 7, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(8, 8, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(9, 9, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(10, 10, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(11, 11, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(12, 12, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(13, 13, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(14, 14, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(15, 15, '9999797.88722040', '8189.50959640', '9998.01000000', '0.00000000', '', '30000000.00000000', '0.00000000', '', '100019.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(16, 16, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '');

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_user_goods`
--

CREATE TABLE `ecshecom_user_goods` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `truename` varchar(200) NOT NULL,
  `idcard` varchar(200) NOT NULL,
  `moble` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL,
  `prov` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_user_log`
--

CREATE TABLE `ecshecom_user_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `type` varchar(200) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户记录表';

--
-- 转存表中的数据 `ecshecom_user_log`
--

INSERT INTO `ecshecom_user_log` (`id`, `userid`, `type`, `remark`, `addip`, `addr`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 1, '登录', '通过手机号登录', '182.119.95.84', '未分配或者内网IP', 0, 1497321195, 0, 1),
(2, 2, '登录', '通过手机号登录', '182.119.95.84', '未分配或者内网IP', 0, 1497352103, 0, 1),
(3, 2, '登录', '通过手机号登录', '222.137.195.220', '未分配或者内网IP', 0, 1497405925, 0, 1),
(4, 1, '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', 0, 1497591785, 0, 1),
(5, 1, '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', 0, 1497595481, 0, 1),
(6, 1, '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', 0, 1497598199, 0, 1),
(7, 1, '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', 0, 1497599203, 0, 1),
(8, 6, '登录', '通过手机号登录', '1.192.29.82', '未分配或者内网IP', 0, 1497600961, 0, 1),
(9, 2, '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', 0, 1497603006, 0, 1),
(10, 2, '登录', '通过手机号登录', '222.137.197.41', '未分配或者内网IP', 0, 1497605841, 0, 1),
(11, 14, '登录', '通过手机号登录', '1.192.29.82', '未分配或者内网IP', 0, 1497605992, 0, 1),
(12, 1, '登录', '通过手机号登录', '125.46.237.109', '未分配或者内网IP', 0, 1497664071, 0, 1),
(13, 11, '登录', '通过手机号登录', '125.46.237.109', '未分配或者内网IP', 0, 1497669241, 0, 1),
(14, 15, '登录', '通过手机号登录', '122.191.204.253', '未分配或者内网IP', 0, 1498792374, 0, 1),
(15, 15, '登录', '通过手机号登录', '220.203.63.70', '未分配或者内网IP', 0, 1498809015, 0, 1),
(16, 15, '登录', '通过手机号登录', '122.190.94.36', '未分配或者内网IP', 0, 1498812362, 0, 1),
(17, 15, '登录', '通过手机号登录', '119.39.184.43', '未分配或者内网IP', 0, 1498829312, 0, 1),
(18, 15, '登录', '通过手机号登录', '119.39.184.43', '未分配或者内网IP', 0, 1498867940, 0, 1),
(19, 15, '登录', '通过手机号登录', '119.39.184.34', '未分配或者内网IP', 0, 1498874458, 0, 1),
(20, 15, '登录', '通过手机号登录', '119.39.184.43', '未分配或者内网IP', 0, 1498876846, 0, 1),
(21, 15, '登录', '通过手机号登录', '119.39.184.43', '未分配或者内网IP', 0, 1498877084, 0, 1),
(22, 15, '登录', '通过手机号登录', '119.39.184.43', '未分配或者内网IP', 0, 1498877270, 0, 1),
(23, 16, '登录', '通过手机号登录', '192.168.86.108', '未分配或者内网IP', 0, 1500711929, 0, 1),
(24, 16, '登录', '通过手机号登录', '192.168.86.108', '未分配或者内网IP', 0, 1500718512, 0, 1),
(25, 16, '登录', '通过手机号登录', '192.168.86.108', '未分配或者内网IP', 0, 1500719781, 0, 1),
(26, 16, '登录', '通过手机号登录', '192.168.86.108', '未分配或者内网IP', 0, 1500719968, 0, 1),
(27, 16, '登录', '通过手机号登录', '192.168.86.108', '未分配或者内网IP', 0, 1500720569, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_user_qianbao`
--

CREATE TABLE `ecshecom_user_qianbao` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户钱包表';

--
-- 转存表中的数据 `ecshecom_user_qianbao`
--

INSERT INTO `ecshecom_user_qianbao` (`id`, `userid`, `coinname`, `name`, `addr`, `sort`, `addtime`, `endtime`, `status`) VALUES
(2, 2, 'bxb', '币兴股钱包', 'B6Wg3dSURoyBzb6nUNEjd5BCHw4Fe8YWRQ', 0, 1497606832, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_user_shopaddr`
--

CREATE TABLE `ecshecom_user_shopaddr` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `truename` varchar(200) NOT NULL DEFAULT '0',
  `moble` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_version`
--

CREATE TABLE `ecshecom_version` (
  `name` varchar(50) NOT NULL COMMENT '版本号',
  `number` int(11) NOT NULL COMMENT '序列号，一般用日期数字标示',
  `title` varchar(50) NOT NULL COMMENT '版本名',
  `create_time` int(11) NOT NULL COMMENT '发布时间',
  `update_time` int(11) NOT NULL COMMENT '更新的时间',
  `log` text NOT NULL COMMENT '更新日志',
  `url` varchar(150) NOT NULL COMMENT '链接到的远程文章',
  `is_current` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自动更新表' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_version_game`
--

CREATE TABLE `ecshecom_version_game` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `gongsi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `shuoming` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `class` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='应用管理表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ecshecom_version_game`
--

INSERT INTO `ecshecom_version_game` (`id`, `gongsi`, `shuoming`, `class`, `name`, `title`, `status`) VALUES
(1, 'QQ3479015851', '网上商城', 'shop', 'shop', '网上商城', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_vote`
--

CREATE TABLE `ecshecom_vote` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` int(20) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ecshecom_vote_type`
--

CREATE TABLE `ecshecom_vote_type` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `coinname` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `zhichi` bigint(20) UNSIGNED DEFAULT '0',
  `fandui` bigint(20) UNSIGNED DEFAULT '0',
  `zongji` bigint(20) UNSIGNED DEFAULT '0',
  `bili` float DEFAULT '0',
  `votecoin` varchar(50) NOT NULL,
  `assumnum` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ecshecom_admin`
--
ALTER TABLE `ecshecom_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `ecshecom_adver`
--
ALTER TABLE `ecshecom_adver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_appads`
--
ALTER TABLE `ecshecom_appads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_appadsblock`
--
ALTER TABLE `ecshecom_appadsblock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_appc`
--
ALTER TABLE `ecshecom_appc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_app_log`
--
ALTER TABLE `ecshecom_app_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_app_vip`
--
ALTER TABLE `ecshecom_app_vip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_app_vipuser`
--
ALTER TABLE `ecshecom_app_vipuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_article`
--
ALTER TABLE `ecshecom_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `type` (`type`),
  ADD KEY `adminid` (`adminid`);

--
-- Indexes for table `ecshecom_article_type`
--
ALTER TABLE `ecshecom_article_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ecshecom_auth_extend`
--
ALTER TABLE `ecshecom_auth_extend`
  ADD UNIQUE KEY `group_extend_type` (`group_id`,`extend_id`,`type`),
  ADD KEY `uid` (`group_id`),
  ADD KEY `group_id` (`extend_id`);

--
-- Indexes for table `ecshecom_auth_group`
--
ALTER TABLE `ecshecom_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_auth_group_access`
--
ALTER TABLE `ecshecom_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `ecshecom_auth_rule`
--
ALTER TABLE `ecshecom_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`,`status`,`type`);

--
-- Indexes for table `ecshecom_bazaar`
--
ALTER TABLE `ecshecom_bazaar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_bazaar_config`
--
ALTER TABLE `ecshecom_bazaar_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `coinname` (`market`);

--
-- Indexes for table `ecshecom_bazaar_invit`
--
ALTER TABLE `ecshecom_bazaar_invit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_bazaar_log`
--
ALTER TABLE `ecshecom_bazaar_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`),
  ADD KEY `peerid` (`peerid`);

--
-- Indexes for table `ecshecom_category`
--
ALTER TABLE `ecshecom_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_name` (`name`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `ecshecom_chat`
--
ALTER TABLE `ecshecom_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ecshecom_coin`
--
ALTER TABLE `ecshecom_coin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ecshecom_coin_comment`
--
ALTER TABLE `ecshecom_coin_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ecshecom_coin_json`
--
ALTER TABLE `ecshecom_coin_json`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_config`
--
ALTER TABLE `ecshecom_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_daohang`
--
ALTER TABLE `ecshecom_daohang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_fenhong`
--
ALTER TABLE `ecshecom_fenhong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_fenhong_log`
--
ALTER TABLE `ecshecom_fenhong_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `ecshecom_finance`
--
ALTER TABLE `ecshecom_finance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `coinname` (`coinname`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_footer`
--
ALTER TABLE `ecshecom_footer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ecshecom_huafei`
--
ALTER TABLE `ecshecom_huafei`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_huafei_coin`
--
ALTER TABLE `ecshecom_huafei_coin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_huafei_type`
--
ALTER TABLE `ecshecom_huafei_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_invit`
--
ALTER TABLE `ecshecom_invit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `invit` (`invit`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_issue`
--
ALTER TABLE `ecshecom_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`),
  ADD KEY `coinname` (`coinname`);

--
-- Indexes for table `ecshecom_issue_log`
--
ALTER TABLE `ecshecom_issue_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_link`
--
ALTER TABLE `ecshecom_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ecshecom_log`
--
ALTER TABLE `ecshecom_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `coinname` (`coinname`);

--
-- Indexes for table `ecshecom_market`
--
ALTER TABLE `ecshecom_market`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ecshecom_market_json`
--
ALTER TABLE `ecshecom_market_json`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_menu`
--
ALTER TABLE `ecshecom_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `ecshecom_message`
--
ALTER TABLE `ecshecom_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ecshecom_message_log`
--
ALTER TABLE `ecshecom_message_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ecshecom_money`
--
ALTER TABLE `ecshecom_money`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ecshecom_money_fee`
--
ALTER TABLE `ecshecom_money_fee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ecshecom_money_log`
--
ALTER TABLE `ecshecom_money_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_mycz`
--
ALTER TABLE `ecshecom_mycz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_mycz_invit`
--
ALTER TABLE `ecshecom_mycz_invit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_mycz_type`
--
ALTER TABLE `ecshecom_mycz_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ecshecom_mytx`
--
ALTER TABLE `ecshecom_mytx`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_myzc`
--
ALTER TABLE `ecshecom_myzc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`),
  ADD KEY `coinname` (`coinname`);

--
-- Indexes for table `ecshecom_myzc_fee`
--
ALTER TABLE `ecshecom_myzc_fee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_myzr`
--
ALTER TABLE `ecshecom_myzr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `coinname` (`coinname`);

--
-- Indexes for table `ecshecom_pool`
--
ALTER TABLE `ecshecom_pool`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ecshecom_pool_log`
--
ALTER TABLE `ecshecom_pool_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ecshecom_prompt`
--
ALTER TABLE `ecshecom_prompt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ecshecom_shop`
--
ALTER TABLE `ecshecom_shop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `status` (`status`),
  ADD KEY `deal` (`deal`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `ecshecom_shop_addr`
--
ALTER TABLE `ecshecom_shop_addr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ecshecom_shop_coin`
--
ALTER TABLE `ecshecom_shop_coin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopid` (`shopid`);

--
-- Indexes for table `ecshecom_shop_log`
--
ALTER TABLE `ecshecom_shop_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_shop_type`
--
ALTER TABLE `ecshecom_shop_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_text`
--
ALTER TABLE `ecshecom_text`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ecshecom_trade`
--
ALTER TABLE `ecshecom_trade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `market` (`market`,`type`,`status`),
  ADD KEY `num` (`num`,`deal`),
  ADD KEY `status` (`status`),
  ADD KEY `market_2` (`market`);

--
-- Indexes for table `ecshecom_trade_json`
--
ALTER TABLE `ecshecom_trade_json`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `market` (`market`);

--
-- Indexes for table `ecshecom_trade_log`
--
ALTER TABLE `ecshecom_trade_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `peerid` (`peerid`),
  ADD KEY `main` (`market`,`status`,`addtime`) USING BTREE;

--
-- Indexes for table `ecshecom_ucenter_member`
--
ALTER TABLE `ecshecom_ucenter_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_user`
--
ALTER TABLE `ecshecom_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_user_award`
--
ALTER TABLE `ecshecom_user_award`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecshecom_user_bank`
--
ALTER TABLE `ecshecom_user_bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ecshecom_user_bank_type`
--
ALTER TABLE `ecshecom_user_bank_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ecshecom_user_coin`
--
ALTER TABLE `ecshecom_user_coin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ecshecom_user_goods`
--
ALTER TABLE `ecshecom_user_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_user_log`
--
ALTER TABLE `ecshecom_user_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_user_qianbao`
--
ALTER TABLE `ecshecom_user_qianbao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `coinname` (`coinname`);

--
-- Indexes for table `ecshecom_user_shopaddr`
--
ALTER TABLE `ecshecom_user_shopaddr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ecshecom_version`
--
ALTER TABLE `ecshecom_version`
  ADD PRIMARY KEY (`name`),
  ADD KEY `id` (`number`);

--
-- Indexes for table `ecshecom_version_game`
--
ALTER TABLE `ecshecom_version_game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `number` (`name`);

--
-- Indexes for table `ecshecom_vote`
--
ALTER TABLE `ecshecom_vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ecshecom_vote_type`
--
ALTER TABLE `ecshecom_vote_type`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ecshecom_admin`
--
ALTER TABLE `ecshecom_admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ecshecom_adver`
--
ALTER TABLE `ecshecom_adver`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `ecshecom_appads`
--
ALTER TABLE `ecshecom_appads`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_appadsblock`
--
ALTER TABLE `ecshecom_appadsblock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ecshecom_appc`
--
ALTER TABLE `ecshecom_appc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_app_log`
--
ALTER TABLE `ecshecom_app_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_app_vip`
--
ALTER TABLE `ecshecom_app_vip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ecshecom_app_vipuser`
--
ALTER TABLE `ecshecom_app_vipuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_article`
--
ALTER TABLE `ecshecom_article`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- 使用表AUTO_INCREMENT `ecshecom_article_type`
--
ALTER TABLE `ecshecom_article_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `ecshecom_auth_group`
--
ALTER TABLE `ecshecom_auth_group`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键', AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `ecshecom_auth_rule`
--
ALTER TABLE `ecshecom_auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键', AUTO_INCREMENT=2044;
--
-- 使用表AUTO_INCREMENT `ecshecom_bazaar`
--
ALTER TABLE `ecshecom_bazaar`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_bazaar_config`
--
ALTER TABLE `ecshecom_bazaar_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id';
--
-- 使用表AUTO_INCREMENT `ecshecom_bazaar_invit`
--
ALTER TABLE `ecshecom_bazaar_invit`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_bazaar_log`
--
ALTER TABLE `ecshecom_bazaar_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_category`
--
ALTER TABLE `ecshecom_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类ID', AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `ecshecom_chat`
--
ALTER TABLE `ecshecom_chat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_coin`
--
ALTER TABLE `ecshecom_coin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `ecshecom_coin_comment`
--
ALTER TABLE `ecshecom_coin_comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_coin_json`
--
ALTER TABLE `ecshecom_coin_json`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `ecshecom_config`
--
ALTER TABLE `ecshecom_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ecshecom_daohang`
--
ALTER TABLE `ecshecom_daohang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `ecshecom_fenhong`
--
ALTER TABLE `ecshecom_fenhong`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ecshecom_fenhong_log`
--
ALTER TABLE `ecshecom_fenhong_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 使用表AUTO_INCREMENT `ecshecom_finance`
--
ALTER TABLE `ecshecom_finance`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=82;
--
-- 使用表AUTO_INCREMENT `ecshecom_footer`
--
ALTER TABLE `ecshecom_footer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `ecshecom_huafei`
--
ALTER TABLE `ecshecom_huafei`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id';
--
-- 使用表AUTO_INCREMENT `ecshecom_huafei_coin`
--
ALTER TABLE `ecshecom_huafei_coin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id';
--
-- 使用表AUTO_INCREMENT `ecshecom_huafei_type`
--
ALTER TABLE `ecshecom_huafei_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `ecshecom_invit`
--
ALTER TABLE `ecshecom_invit`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_issue`
--
ALTER TABLE `ecshecom_issue`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `ecshecom_issue_log`
--
ALTER TABLE `ecshecom_issue_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ecshecom_link`
--
ALTER TABLE `ecshecom_link`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- 使用表AUTO_INCREMENT `ecshecom_log`
--
ALTER TABLE `ecshecom_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_market`
--
ALTER TABLE `ecshecom_market`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `ecshecom_market_json`
--
ALTER TABLE `ecshecom_market_json`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `ecshecom_menu`
--
ALTER TABLE `ecshecom_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文档ID', AUTO_INCREMENT=452;
--
-- 使用表AUTO_INCREMENT `ecshecom_message`
--
ALTER TABLE `ecshecom_message`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_message_log`
--
ALTER TABLE `ecshecom_message_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_money`
--
ALTER TABLE `ecshecom_money`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ecshecom_money_fee`
--
ALTER TABLE `ecshecom_money_fee`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_money_log`
--
ALTER TABLE `ecshecom_money_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_mycz`
--
ALTER TABLE `ecshecom_mycz`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `ecshecom_mycz_invit`
--
ALTER TABLE `ecshecom_mycz_invit`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id';
--
-- 使用表AUTO_INCREMENT `ecshecom_mycz_type`
--
ALTER TABLE `ecshecom_mycz_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `ecshecom_mytx`
--
ALTER TABLE `ecshecom_mytx`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_myzc`
--
ALTER TABLE `ecshecom_myzc`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_myzc_fee`
--
ALTER TABLE `ecshecom_myzc_fee`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_myzr`
--
ALTER TABLE `ecshecom_myzr`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_pool`
--
ALTER TABLE `ecshecom_pool`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_pool_log`
--
ALTER TABLE `ecshecom_pool_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_prompt`
--
ALTER TABLE `ecshecom_prompt`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_shop`
--
ALTER TABLE `ecshecom_shop`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `ecshecom_shop_addr`
--
ALTER TABLE `ecshecom_shop_addr`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_shop_coin`
--
ALTER TABLE `ecshecom_shop_coin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `ecshecom_shop_log`
--
ALTER TABLE `ecshecom_shop_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_shop_type`
--
ALTER TABLE `ecshecom_shop_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `ecshecom_text`
--
ALTER TABLE `ecshecom_text`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 使用表AUTO_INCREMENT `ecshecom_trade`
--
ALTER TABLE `ecshecom_trade`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- 使用表AUTO_INCREMENT `ecshecom_trade_json`
--
ALTER TABLE `ecshecom_trade_json`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=972;
--
-- 使用表AUTO_INCREMENT `ecshecom_trade_log`
--
ALTER TABLE `ecshecom_trade_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `ecshecom_ucenter_member`
--
ALTER TABLE `ecshecom_ucenter_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_user`
--
ALTER TABLE `ecshecom_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `ecshecom_user_award`
--
ALTER TABLE `ecshecom_user_award`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_user_bank`
--
ALTER TABLE `ecshecom_user_bank`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ecshecom_user_bank_type`
--
ALTER TABLE `ecshecom_user_bank_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `ecshecom_user_coin`
--
ALTER TABLE `ecshecom_user_coin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `ecshecom_user_goods`
--
ALTER TABLE `ecshecom_user_goods`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ecshecom_user_log`
--
ALTER TABLE `ecshecom_user_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- 使用表AUTO_INCREMENT `ecshecom_user_qianbao`
--
ALTER TABLE `ecshecom_user_qianbao`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `ecshecom_user_shopaddr`
--
ALTER TABLE `ecshecom_user_shopaddr`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_version_game`
--
ALTER TABLE `ecshecom_version_game`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ecshecom_vote`
--
ALTER TABLE `ecshecom_vote`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ecshecom_vote_type`
--
ALTER TABLE `ecshecom_vote_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
