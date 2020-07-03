/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : jdydxt

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2019-12-17 17:17:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `userName` varchar(200) default '',
  `userPw` varchar(100) default '',
  `zhi` varchar(100) default '',
  `tel` varchar(100) default '',
  `age` varchar(100) default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456', '运营总监', '13565565111', '33');
INSERT INTO `admin` VALUES ('2', 'sa', '123456', 'CEO', '15813406574', '28');
INSERT INTO `admin` VALUES ('3', 'CFO', '123456', 'CFO', '13467825589', '45');

-- ----------------------------
-- Table structure for jiudian
-- ----------------------------
DROP TABLE IF EXISTS `jiudian`;
CREATE TABLE `jiudian` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default '',
  `dizhi` varchar(200) default '',
  `style` varchar(50) default NULL,
  `info` text,
  `pic` varchar(200) default '',
  `tel` varchar(100) default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiudian
-- ----------------------------
INSERT INTO `jiudian` VALUES ('5', '北京中国石化会议中心', '北京中国石化会议中心', '经济/客栈', '<p>\r\n	北京中国石化会议中心毗邻著名的十三陵水库风景区，周边环境优美、空气清新，距昌平县城中心约5分钟车程，是您是京郊度假旅游、商务出差的优选之地。<br />\r\n客房风格温馨典雅，低调又不失内涵。每个朝向的房间，都会给您带来不一样的风景。<br />\r\n建有专业的康体楼，内设高品质温泉游泳馆、乒乓球、棋牌室、KTV包房及台球等娱乐，可满足您的多种娱乐需求。专业户外塑胶健身跑道及免费爬山项目，让您在会议中心体验全方位的运动快感。<br />\r\n会议中心设有零点餐厅，可为您提供富有昌平特色的各式菜品；夏日的啤酒花园，为您提供上佳的聚餐场所；可容纳800人就餐的大型宴会厅、自助餐厅以及8个各具特色的VIP包间，让您享用尽情享用各类美食。<br />\r\n中国石化会议中心设有550人报告厅及21个中小型会议室，并配备专业的服务团队，为您提供全方位的会议服务。<strong></strong>\r\n</p>', 'upload/20150228151326.jpg', '12345678941');
INSERT INTO `jiudian` VALUES ('6', '北京大方饭店', '北京大方饭店', '经济/客栈', '<p>\r\n	北京大方饭店位于北京西客站南广场东侧，毗邻中华世纪坛、中央电视塔、莲花池公园，距天安门广场15分钟车程。饭店建筑面积约54000平方米，地上十二层，地下三层，拥有标准间、豪华间、普通间、豪华套间、总统套房等房型共325间客房。饭店首层大厅设有商务中心、商亭、大堂酒吧等。可容纳约300人用餐，并设有多个豪华包间。饭店多功能厅面积1710平米，可容纳300人，另有面积为160平米中型会议室一个及多个小型会议室和休息室，可满足不同宴会、会议及商务洽谈需求。饭店康乐中心集健身房、棋牌室、台球室、美容美发和桑拿等设施于一体。\r\n</p>', 'upload/1418196258016.jpg', '13267826542');
INSERT INTO `jiudian` VALUES ('7', '北京金色夏日商务酒店', '北京金色夏日商务酒店', '经济/客栈', '<p>\r\n	<span style=\"font:12px/24px Tahoma, Simsun, sans-serif;color:#333333;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\">双床&nbsp;无早&nbsp;有线免费&nbsp;￥398<br />\r\n单床&nbsp;无早&nbsp;有线免费&nbsp;￥248<br />\r\n单人床&nbsp; 无早&nbsp;有线免费&nbsp;￥248</span> \r\n</p>\r\n<p>\r\n	<span style=\"font:12px/24px Tahoma, Simsun, sans-serif;color:#333333;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\"></span> \r\n</p>\r\n<p>\r\n	北京金色夏日商务酒店位于西二环内，广安门立交桥畔，北毗金融街、复兴门、西单，南接广安门商务区，西近西客站，交通便捷，环境优越。<br />\r\n酒店是由鑫恒集团投资兴建的一家集客房、餐饮、娱乐于一体的高档商务酒店，外观古朴典雅，内部豪华舒适，总体设计采用古今合璧的独特建筑风格，先进的管理以及完备的酒店配套设施，无微不至的个性化服务，是您来京下榻选择之地。\r\n</p>', 'upload/1418196334347.jpg', '18462656589');
INSERT INTO `jiudian` VALUES ('8', '北京启航国际酒店 ', '北京 顺义区 天竺地区天柱东路甲六号 ，近顺义区出入境检验疫局', '经济/客栈', '<p>\r\n	<span id=\"ctl00_MainContentPlaceHolder_commonHead1_lnkCity\" style=\"font:12px/25px Tahoma, Simsun, sans-serif;color:#333333;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;white-space:normal;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\" target=\"_blank\" itemprop=\"addressLocality\"><span style=\"font:12px/24px Tahoma, Simsun, sans-serif;color:#333333;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\">双床&nbsp;无早&nbsp;有线免费&nbsp;￥398<br />\r\n单床&nbsp;无早&nbsp;有线免费&nbsp;￥248<br />\r\n单人床&nbsp; 无早&nbsp;有线免费&nbsp;￥248</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font:12px/25px Tahoma, Simsun, sans-serif;color:#333333;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;white-space:normal;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\" target=\"_blank\" itemprop=\"addressLocality\"><span style=\"font:12px/24px Tahoma, Simsun, sans-serif;color:#333333;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\"></span></span> \r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 北京启航国际酒店地处北京市顺义区天竺地区天柱东路。东邻首都国际机场；西与新国际展览中心毗邻，仅3分钟车程。国航办公大楼、松下、爱立信、润通国际大厦等知名公司写字楼环绕四周，蓝湾、莲竹馨晴、米兰、天竺花园等高档社区密集周围。机场高速、京承高速、机场轻轨、M15号线等立体交通四通八达。<br />\r\n北京启航国际酒店占地面积10000多平米，地上六层，外观设计庄重、大方，内部装修典雅、前位，极富文化内涵。酒店设有多种房型，房间内设有中央空调、程控电话、卫星电视、磁卡门锁、宽带上网等多功能的现代化智能服务。<br />\r\n酒店装修独特的特色风味餐厅可容纳300人同时就餐；酒店同时可提供商务中心、代订机票、旅游咨询、洗衣、康乐健身、会议、酒吧等服务，让每一个客人都能在此拥有难忘的美好体验。广州宾捷酒店管理有限公司旗下的宾捷酒店管理是国内领先的在线酒店预订网站，凭借现代化的通信系统、在线电子商务技术和完善的客户管理系统，通过一体化的专业呼叫中心，为广大商务旅行人士提供全国470个主要城市的近15000家酒店的免费预订服务。此酒店预订服务由宾捷酒店管理提供。\r\n</p>', 'upload/1418196403944.jpg', '13578845647');
INSERT INTO `jiudian` VALUES ('9', '佛山陶花园艺宿馆酒店', '佛山 禅城区 石湾公园', '经济/客栈', '<p>\r\n	酒店位于石湾公园旁边，可以陪爱人去公园走走；房间挺大，床很舒服，浴缸也很大，适合情侣入住。<br />\r\n2016年开业&nbsp;&nbsp;2018年装修&nbsp;&nbsp;46间房&nbsp;&nbsp;&nbsp;联系方式&nbsp;住宿预订提供方\r\n</p>\r\n<p>\r\n	佛山陶花园艺宿馆精品主题酒店位于和平路，临近南风古灶、国际陶文化公园、古寮场等。<br />\r\n<br />\r\n酒店由台湾四季旅馆事业集团和佛山创意产业园共同投资，并由四季旅馆事业集团全权管理的一家中外合资的陶文化主题精品酒店。<br />\r\n<br />\r\n酒店拥有舒适温馨的客房，设施一应俱全，服务热忱，配备中餐厅、大堂吧、会议厅、商务中心以及SPA等。\r\n</p>', 'upload/timg1.jpg', '15813406574');
INSERT INTO `jiudian` VALUES ('10', '佛山千色汇主题酒店', '佛山 禅城区 江湾一路2号', '经济/客栈', '<p>\r\n	<span style=\"text-align:left;color:#555555;text-transform:none;text-indent:0px;letter-spacing:normal;font-family:PingFang-SC-Medium;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;float:none;display:inline !important;white-space:normal;orphans:2;widows:2;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\">下榻开业于2016-09-01的佛山千色汇主题酒店，感受佛山的独特魅力。酒店地处便捷区域，距离佛山沙堤机场仅9km，距离佛山火车站仅5km。只需步行至同济路地铁站，可以很便捷的到达城市的各个角落。对于入住酒店的旅客来说，闲暇时间去附近的佛山祖庙和南风古灶游玩是一个不错的选择。</span><br style=\"text-align:left;color:#555555;text-transform:none;text-indent:0px;letter-spacing:normal;font-family:PingFang-SC-Medium;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;orphans:2;widows:2;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\" />\r\n<span style=\"text-align:left;color:#555555;text-transform:none;text-indent:0px;letter-spacing:normal;font-family:PingFang-SC-Medium;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;float:none;display:inline !important;white-space:normal;orphans:2;widows:2;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\">客房内的所有设施都是经过精心的考虑和安排，包括空调、液晶电视机和房间内高速上网，满足您入住需求的同时又能增添家的温馨感。有饮水需求的旅客，酒店还为您提供了电热水壶。除此之外，配备有拖鞋、24小时热水和吹风机的浴室是您消除一天疲劳的好地方。</span><br style=\"text-align:left;color:#555555;text-transform:none;text-indent:0px;letter-spacing:normal;font-family:PingFang-SC-Medium;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;orphans:2;widows:2;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\" />\r\n<span style=\"text-align:left;color:#555555;text-transform:none;text-indent:0px;letter-spacing:normal;font-family:PingFang-SC-Medium;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;float:none;display:inline !important;white-space:normal;orphans:2;widows:2;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\">旅客可以在闲暇时间去酒店的休闲区，提升健康幸福感。24小时开放的前台服务可为您随时提供信息，以帮助您探索这个魅力之都。酒店会为自驾的客人提供停车场。</span>\r\n</p>', 'upload/timg2.jpg', '18476275715');
INSERT INTO `jiudian` VALUES ('11', '佛山希尔顿酒店', '佛山岭南大道127号', '经济/客栈', '<p style=\"margin:0px;padding:0px;color:#303030;text-transform:none;line-height:1.6;text-indent:0px;letter-spacing:normal;font-family:\"Microsoft Yahei\", Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;box-sizing:border-box;orphans:2;widows:2;background-color:#FFFFFF;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\">\r\n	<span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">佛山希尔顿酒店坐落于佛山市禅城区，位于粤港澳大湾区中心城市，距广州白云机场</span><span style=\"font-size:12px;box-sizing:border-box;\">50</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">分钟车程，距广州南站</span><span style=\"font-size:12px;box-sizing:border-box;\">20</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">分钟车程，距岭南天地、佛山祖庙等众多热门景点仅需</span><span style=\"font-size:12px;box-sizing:border-box;\">15</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">分钟车程。<span style=\"font-size:12px;box-sizing:border-box;\"><br style=\"box-sizing:border-box;\" />\r\n</span></span>\r\n</p>\r\n<p style=\"margin:0px;padding:0px;color:#303030;text-transform:none;line-height:1.6;text-indent:0px;letter-spacing:normal;font-family:\"Microsoft Yahei\", Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;box-sizing:border-box;orphans:2;widows:2;background-color:#FFFFFF;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\">\r\n	<span style=\"font-size:12px;box-sizing:border-box;\">600</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">间舒适客房，其中包括</span><span style=\"font-size:12px;box-sizing:border-box;\">291</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">间</span><span style=\"font-size:12px;box-sizing:border-box;\">45</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">平方米以上的双床房。</span><span style=\"font-size:12px;box-sizing:border-box;\">32</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">个灵活的多功能会议室，包括</span><span style=\"font-size:12px;box-sizing:border-box;\">1</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">个</span><span style=\"font-size:12px;box-sizing:border-box;\">1,500</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">平方米无柱大宴会厅，配备</span><span style=\"font-size:12px;box-sizing:border-box;\">100</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">平方米的高清</span><span style=\"font-size:12px;box-sizing:border-box;\">LED</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">显示屏。<span style=\"font-size:12px;box-sizing:border-box;\"><br style=\"box-sizing:border-box;\" />\r\n</span></span>\r\n</p>\r\n<p style=\"margin:0px;padding:0px;color:#303030;text-transform:none;line-height:1.6;text-indent:0px;letter-spacing:normal;font-family:\"Microsoft Yahei\", Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;box-sizing:border-box;orphans:2;widows:2;background-color:#FFFFFF;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\">\r\n	<span style=\"font-size:12px;box-sizing:border-box;\">5</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">个风格独特的餐厅和酒吧，为宾客呈献寰宇美馔及地道的顺德佳肴。<span style=\"font-size:12px;box-sizing:border-box;\"><br style=\"box-sizing:border-box;\" />\r\n</span></span>\r\n</p>\r\n<p style=\"margin:0px;padding:0px;color:#303030;text-transform:none;line-height:1.6;text-indent:0px;letter-spacing:normal;font-family:\"Microsoft Yahei\", Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;box-sizing:border-box;orphans:2;widows:2;background-color:#FFFFFF;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\">\r\n	<span style=\"font-size:12px;box-sizing:border-box;\">24</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">小时健身中心、室内外泳池以及泰式水疗中心为您重塑身心活力。<span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\"><br style=\"box-sizing:border-box;\" />\r\n</span></span>\r\n</p>\r\n<p style=\"margin:0px;padding:0px;color:#303030;text-transform:none;line-height:1.6;text-indent:0px;letter-spacing:normal;font-family:\"Microsoft Yahei\", Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;box-sizing:border-box;orphans:2;widows:2;background-color:#FFFFFF;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\">\r\n	<span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">酒店设有多种不同风格的童趣亲子房及儿童乐园，且距广州长隆旅游度假区仅</span><span style=\"font-size:12px;box-sizing:border-box;\">40</span><span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">分钟车程，特别适合家庭周末出游度假。<span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\"><br style=\"box-sizing:border-box;\" />\r\n</span></span>\r\n</p>\r\n<p style=\"margin:0px;padding:0px;color:#303030;text-transform:none;line-height:1.6;text-indent:0px;letter-spacing:normal;font-family:\"Microsoft Yahei\", Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;box-sizing:border-box;orphans:2;widows:2;background-color:#FFFFFF;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\">\r\n	<span style=\"font-family:宋体;font-size:12px;box-sizing:border-box;\">佛山希尔顿酒店是商务出差和亲子自驾游的理想之选。</span>\r\n</p>', 'upload/timg3.jpg', '15674256314');
INSERT INTO `jiudian` VALUES ('12', '佛山滨海酒店', '东平二路3号滨海御庭二期一区P067', '经济/客栈', '<p style=\"margin:0px;padding:0px;color:#333333;text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Tahoma, Simsun, sans-serif;font-size:12px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\">\r\n	2017年开业&nbsp;&nbsp;2018年装修&nbsp;&nbsp;68间房&nbsp;\r\n</p>\r\n<br style=\"color:#333333;text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Tahoma, Simsun, sans-serif;font-size:12px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\" />\r\n<span id=\"ctl00_MainContentPlaceHolder_hotelDetailInfo_lbDesc\" style=\"color:#333333;text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Tahoma, Simsun, sans-serif;font-size:12px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\" itemprop=\"description\"> 地址位置优越，环境服务好，家的温馨。</span>', 'upload/timg5.jpg', '15656264589');
INSERT INTO `jiudian` VALUES ('13', '佛山北极星的梦公寓', '佛山滨海御庭2期', '经济/客栈', '<span style=\"color:#333333;text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Tahoma, Simsun, sans-serif;font-size:12px;font-style:normal;font-weight:400;word-spacing:0px;float:none;display:inline !important;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;-webkit-text-stroke-width:0px;font-variant-ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;text-decoration-color:initial;\">这里是我精心准备的家。有缘来住下的朋友，希望它能为你带来一段温馨难忘的旅途体验.</span>', 'upload/timg4.jpg', '18546234577');

-- ----------------------------
-- Table structure for kefang
-- ----------------------------
DROP TABLE IF EXISTS `kefang`;
CREATE TABLE `kefang` (
  `id` int(11) NOT NULL auto_increment,
  `jid` int(11) default NULL,
  `name` varchar(50) default NULL,
  `chuang` varchar(50) default NULL,
  `ren` varchar(50) default NULL,
  `price` varchar(50) default NULL,
  `type` varchar(50) default NULL,
  `state` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kefang
-- ----------------------------
INSERT INTO `kefang` VALUES ('1', '5', '标准双床房', '双床', '2人', '225', '有早', '');
INSERT INTO `kefang` VALUES ('2', '6', '女生舒适床位房', '双床', '2人', '300', '有早', '');
INSERT INTO `kefang` VALUES ('3', '7', '家庭聚会房', '多床', '4人以上', '800', '有早', '');
INSERT INTO `kefang` VALUES ('4', '5', '大床房', '单床', '2人', '200', '有早', '');
INSERT INTO `kefang` VALUES ('5', '5', '三人房', '三床', '3人', '240', '无早', '订满');
INSERT INTO `kefang` VALUES ('6', '9', '大床房', '5', '3人', '258', '有早', '');
INSERT INTO `kefang` VALUES ('7', '9', '标准双人房', '12', '2人', '128', '无早', '');
INSERT INTO `kefang` VALUES ('8', '13', '闺蜜房', '2', '1人', '380', '无早', '');
INSERT INTO `kefang` VALUES ('9', '12', '家庭套房', '3', '1人', '588', '有早', '');
INSERT INTO `kefang` VALUES ('10', '12', '情侣套房', '2', '1人', '288', '有早', '');
INSERT INTO `kefang` VALUES ('11', '5', '总统套房', '1', '1人', '1888', '有早', '');
INSERT INTO `kefang` VALUES ('12', '11', '青年客栈', '1', '1人', '88', '无早', '订满');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL auto_increment,
  `msg` text,
  `appuser` varchar(200) default '',
  `date` varchar(100) default '',
  `reply` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '卫生方面还可以，工作人员也按时打扫，就是沙发感觉不是很干净，总体不错。但是浴室下水比较慢一些，即使帅气的前台大晚上的帮忙弄过以后，依旧是慢了一些，如果改善一下这个，应该会更好！最好的就是那个窗子，可以打开坐在窗边看风景，这个很好！喜欢这点！在价格上也还行，就是地址离佛山西站比较远。', '15813406574', '2019-12-11 20:46:04', 'e');
INSERT INTO `message` VALUES ('2', '商务非常方便，有两个屋子，中间有门隔开，有茶具什么的非常方便。楼下还有寄快递箱子，点外卖什么都非常方便的。就是离地铁口走路的话，其实并不近', '15813406574', '2019-12-11 20:46:19', '感谢您在百忙之中对我们做出的点评，我们酒店以服务卫生为根本，我们将不断的努力，希望您的每一次入住都有一个干净舒适的环境，谢谢您~~');
INSERT INTO `message` VALUES ('3', '有停车场，附近是居民区，吃东西方便，走十几分钟有个广佛线地铁同济饹站！非常棒，主要是房间新净，性价比超高！', '13476274715', '2019-12-11 20:47:43', '您的满意，是小二奋斗不止的动力，小U定会继续努力，期待您我的再次相聚。');
INSERT INTO `message` VALUES ('4', '酒店比想象中的要好很多。很大。也非常干净。就是位置不是太繁华。需要走一段路才能有公交。其他的都不错。性价比比较高', '13476274715', '2019-12-11 20:47:53', '尊敬的客人：首先感谢您告知我们有在您入住本酒店期间所遇到的问题。非常遗憾未能达到您的期望，请允许我们向您表达最诚');
INSERT INTO `message` VALUES ('5', '', '15813406574', '2019-12-17 14:18:42', '');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(500) default '',
  `date` varchar(100) default '',
  `info` text,
  `appuser` varchar(100) default '',
  `pic` varchar(200) default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('19', '党校第126期（学习党的十九届四中全会精神）培训班圆满结束', '2019-12-11 21:25:31', '曾峥在总结讲话时指出，学习贯彻四中全会精神是学校一项需要长期坚持的重要任务，党校以“个人自学、专题报告、分组讨论”相结合的形式，用了四个单元时间组织参训学员开展专题学习，取得了较好的效果。各二级党委能够认真组织学习，所有参训同志能够以饱满的政治热情、务实的求学态度，认真学习、热烈讨论、深刻领悟，结合学校和学院实际，作了很多思考，为学校进一步完善制度体系和治理能力、推动新一轮体制机制改革提出了宝贵的意见和建议。<br>\n<br>\n<br>\n<br>\n曾峥强调，全校各级党组织要继续深化四中全会精神的学习，组织全体师生继续深入开展学习研讨，做到全覆盖，为此要做好三个方面的工作：一是深刻认识全会精神的重大意义，切实把思想和行动统一到中央的战略决策部署上来。要坚持学在先、学在前，切实做到学懂弄通、学深悟透，进一步深学细研、掌握核心要义，把思想和行动统一到四中全会精神上来，增强贯彻落实的政治自觉、思想自觉、行动自觉，更好地用习近平新时代中国特色社会主义思想武装头脑、指导实践、推动工作。二是坚持知行合一，切实把学习贯彻落实全会精神转化为抓好工作的实践成果。要主动把学习贯彻四中全会精神与学校各项重点工作结合起来，全面加强党的领导，坚定制度自信，强化责任担当，按照完善国家治理体系和治理能力现代化的各项要求，开展学校新一轮“大学习、深调研、真落实”工作，结合实际切实完善学校人才培养、科学研究、社会服务、文化传承创新、国际交流合作等方面的制度机制，不断加强制度创新，强化制度执行，推动学校“改大申博”攻坚战，切实把制度优势转化为推动学校高水平理工科大学建设的治理效能。三是强化制度意识，切实把提高制度执行力作为领导干部履职尽责的重要标尺。要深刻认识提高制度执行力的必要性重要性，切实增强按制度办事、依法办事意识，自觉维护制度的刚性约束力。同时，领导干部要带头维护制度权威、发挥表率作用，营造制度执行的浓厚氛围。最后，还要提高运用制度履职尽责的能力水平，不断增强学习本领、政治领导本领、改革创新本领、科学发展本领、依法执政本领、群众工作本领、狠抓落实本领、驾驭风险本领，在贯彻执行制度中提高工作科学化专业化水平。<br>\n<br>\n<br>\n<br>\n会前，全体参训学员集中观看了习近平同志《论坚持党对一切工作的领导》出版发行的报道以及黄文秀同志先进事迹的视频，并由曾峥书记领学了《论坚持党对一切工作的领导》书中“牢牢掌握党对高校工作的领导权”这一章节。会上，曾峥还通报了学校主题教育开展以来在整改落实方面所取得的主要成效。<br>\n<br>\n<br>\n<br>\n物理与光电工程学院教工支部书记苏志锟、材料科学与能源工程学院教工支部书记苗磊、口腔医学院教工支部书记韩励、马克思主义学院教工支部书记吴智刚、教务处处长古广灵等5个二级党委的学员代表依次上台就学习十九届四中全会精神心得体会作了交流发言。', '校外交部', 'upload/timg6.jpg');
INSERT INTO `news` VALUES ('20', '校领导参加材料科学与能源工程学院党委主题教育专题民主生活会', '2019-12-11 20:05:21', '&nbsp;12月3日下午，材料科学与能源工程学院党委领导班子召开“不忘初心、牢记使命”主题教育专题民主生活会，学校党委副书记、纪委书记许晓珠到会指导并作点评讲话。学校主题教育办相关工作人员，学院领导班子、党委委员、党员教职工代表参加了会议。会议由学院党委书记郑春元主持。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;许晓珠指出，民主生活会的功夫在会前，材能学院领导班子团结，氛围好，党委会前准备充分，材料完备；会上班子和班子成员认真查摆存在问题，检视问题与相互批评到位，会议取得明显成效。许晓珠强调，“不忘初心、牢记使命”主题教育永远在路上，要加强理论学习，运用好调研成果；要以党建推动全面建设，不搞“两张皮”，会后领导班子既要继续梳理问题，解决问题，也要找亮点，加快发展进步；要以实际行动关心和爱护老师，做好学生工作；要做好制度建设，用制度来加强管理。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会上，郑春元通报了民主生活会准备情况，代表班子作检视剖析发言，并带头作个人检视剖析发言，班子其他成员依次作个人检视剖析发言。每位同志都认真查摆自身存在的主要问题，深刻剖析原因，提出整改措施，既联系实际摆情况，又进行深刻的党性分析。大家逐一开展相互批评，相互之间坦诚相对，体现了对党的忠诚、对事业的负责、对同志的关心。会议达到了预期的目的。', '港澳办', 'upload/timg7.jpg');
INSERT INTO `news` VALUES ('21', '校领导率纪检监察党支部参观佛山市纪法教育基地', '2019-12-11 20:05:53', '为深入开展“不忘初心、牢记使命”主题教育，11月28日，学校党委副书记、纪委书记许晓珠率纪检监察党支部一行到佛山市纪法教育基地参观学习。<br>\n<br>\n据讲解员介绍，佛山市纪法教育基地由佛山监狱的原备勤楼改造扩建而成，展厅面积4050平方米，基地以“不忘初心、牢记使命”为主题，以学习习近平新时代中国特色社会主义思想为主线，聚焦全面从严治党永远在路上，设有“从严治党庄严承诺”、“崇规尚廉源远流长”、“自我革命砥砺前行”、“肃贪清污警钟长鸣”和“清风正气永葆本色”五个主题展厅，是佛山首个大型纪法教育基地。在讲解员的指引下，支部成员依次参观了五个主题展厅，通过图片、实物和案例，回顾了中国共产党的党风廉政建设和反腐败斗争历程，深刻感受以习近平同志为核心的党中央全面从严治党的坚定决心，探究分析反面典型案例背后的信仰缺失、贪欲膨胀等深层次原因，从反面典型案例中受警示，从先进典型人物身上受激励。活动最后，面向庄严神圣的党旗，许晓珠带领支部成员重温入党誓词。<br>\n<br>\n<br>\n支部成员纷纷表示，此次参观学习深受触动，将自觉加强党性修养和业务学习，严以律己，不断提升自身综合素质，做到忠诚干净、清廉务实，以更加坚定的理想信念和昂扬的精神状态，投身到学校高水平理工科大学的建设和纪检监察工作中去。', '央视', 'upload/timg8.jpg');
INSERT INTO `news` VALUES ('22', '我校关工委获教育部关工委2019年“读懂中国”活动优秀组织奖', '2019-12-11 20:06:54', '12月5日，我校收到《关于2019年“读懂中国”活动评审结果的通知》（教关委函〔2019〕16号）文件，我校关工委荣获教育部关工委2019年“读懂中国”活动优秀组织奖，全省共有8所高校获得此项殊荣。<br>\n<br>\n今年3月，我校关工委接到广东省教育厅《转发教育部关工委关于全面开展“读懂中国”活动的通知》(粤教关工委[2019]5号)后，校领导高度重视，要求关工委积极挖掘先进典型，对照通知精神精心组织报送。作为关工委工作的承接载体，离退休党委多次召开专题会议，对照“读懂中国”活动要求，深入调研座谈，在全校一千多名离退休教职工中做好选树典型工作，确保选拔过程公开透明，经得起师生的考验，经得起时间的考验。最后选出史久成、肖君和、周庆国三位老教授作为首期代表进行视频拍摄。为保证本次拍摄顺利，我校关工委与佛山传媒集团共同组建工作小组，结合我校特点和选拔的人物特质进行针对性拍摄，力求每个人物的每个细节精益求精，最终出来的视频作品主题聚焦、陈述客观又充满温情，受到被拍摄者、在校师生和社会各界的良好反响，起到了同心聚力凝聚共识的效果，对我校关工委工作的开展起到了良好的示范效应。<br>\n<br>\n6月12日，我校关工委负责同志参加中山大学关工委举办的“读懂中国”主题教育现场交流活动后，积极主动向学校相关领导汇报。学校党委对报送高质量的征文、视频等素材参加教育部关工委开展的“腾飞中国”、“读懂中国”展播活动提出指示精神。经过努力，报送广东省教育厅关工委7篇征文和4个视频，经筛选，《乘东风锐意创新&nbsp;与时代并肩同行——记佛山科学技术学院退休教授肖君和》征文和《最是人间重晚晴》视频上报教育部关工委，并于近日获得教育部关工委2019年“读懂中国”活动优秀组织奖。<br>\n<br>\n通过开展“读懂中国”活动，不仅真实地展示了我校离退休教职工群体敬业爱岗的优良传统，退休不退志的积极人生态度，爱党爱国的牢固信念，也对我校全体师生发挥了重要的示范和引领作用。', '央视', 'upload/timg9.jpg');
INSERT INTO `news` VALUES ('23', '曾峥书记指导粤台人工智能学院党委召开主题教育专题民主生活会', '2019-12-11 20:06:33', '12月2日下午，粤台人工智能学院党委在江湾校区召开“不忘初心、牢记使命”专题民主生活会，学校党委书记曾峥出席会议并讲话。会议由粤台人工智能学院党委书记李炳亮主持，学院党委班子成员、学校主题教育办有关同志参加会议。会议紧密结合主题教育工作，开得务实有效。<br>\n<br>\n曾峥在点评讲话中指出，粤台人工智能学院党委这次专题民主生活会开的很有深度，让人感触很深刻，班子成员凝心聚力，剖析深刻，可以看出这是一支具有战斗力的集体。一是会前准备齐全，从制定方案，开展学习、集中研讨、征求意见、谈心谈话、检视剖析、撰写发言提纲、整改落实等环节准备非常充分。二是检视剖析很透彻，很深刻。三是能够开展批评与自我批评，班子成员提醒警醒到位,立足全局谋划学院工作，达到了组织生活会召开的目的。曾峥希望学院党委班子进一步加快制度机制建设，开拓视野，创新方法，为学院高质量发展贡献光热。<br>\n<br>\n会上，李炳亮通报了民主生活会会前准备工作并代表党委班子做对照检查，紧紧围绕中央和省委、学校党委主题教育工作部署，对照党章党规围绕“四个对照”、“四个找一找”的要求，全面查摆了学院工作存在的问题，深刻检视剖析产生问题的根源，结合学院实际，提出了整改措施。接着，李炳亮同志带头作个人对照检查，开展批评和自我批评，学院班子其他成员依次围绕主题教育工作，结合自己的分管工作实际，进行深刻剖析检查。自我批评触及灵魂，相互批评针针见血、坦诚相见。班子成员间互提批评意见，不仅指出问题、分析原因，还真诚帮助、提出希望，提醒警醒效果良好。', '港澳办', 'upload/timg10.jpg');

-- ----------------------------
-- Table structure for pingjia
-- ----------------------------
DROP TABLE IF EXISTS `pingjia`;
CREATE TABLE `pingjia` (
  `id` int(11) NOT NULL auto_increment,
  `msg` text,
  `name` varchar(50) default NULL,
  `adddate` varchar(50) default NULL,
  `jid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pingjia
-- ----------------------------
INSERT INTO `pingjia` VALUES ('4', '酒店位置还行吧，地点比较安静。隔音是差的，隔壁上个厕所都知道，哗啦啦的。早餐就是连锁酒店标准款，房间是真的小，感觉转个身都困难，空调声音超响，大冬天卫生间放了好久的水，没放出热水来，床又硬，感觉很冰。', '15813406574', '2019-12-11 22:41:39', '12');
INSERT INTO `pingjia` VALUES ('5', '早餐不错，性价比高，服务热情，周边饭店很多，比快捷酒店实惠，设施老点，房间面积小，很好！下次还会入住的，', '15813406574', '2019-12-11 22:42:02', '5');
INSERT INTO `pingjia` VALUES ('6', '首先，前台服务员态度还是好的！！ 然后要吐槽的是，不怎么卫生，有点旧，发霉，一分价钱一分货，下次还是选择连锁酒店吧，当时是看中离陆家嘴近，然并卵，酒店在小巷子里面，出去地铁站有一公里，公交少。很不方便。牙刷牙膏梳子都要问前台拿才有。 一楼有蛇皮的房间，不过前台很爽快的给换了房间。\r\n', '15813406574', '2019-12-11 22:42:21', '6');
INSERT INTO `pingjia` VALUES ('7', '酒店位置有点偏，离八佰伴，渡口等均在3km之内，共享时代滴滴打车和小单车都能替代，可以接受。 酒店停车位很多，自驾停车超方便。 早餐是房间赠送的，和酒店价位成正比，性价比高。早起黄浦江边散步回来，早餐已经开始。 推荐枣泥蛋糕和皮蛋瘦肉粥，西瓜切块又大又甜，赞一个！晚餐可以点餐，价格适中，口味不错。 房间么不大，但有大厅，小院，在上海寸土寸金的城市可以接受。服务员素质都很棒，有求必应，但不能支付宝，稍有不便。总之酒店性价比高，以后还会定！', '15813406574', '2019-12-11 22:42:42', '8');
INSERT INTO `pingjia` VALUES ('8', '总体还可以，早餐也行。睡眠非常安静，门口搭车方便，就是空调制热有点问题，一晚上都凉飕飕的。夏天订这里应该很好！', '15813406574', '2019-12-11 22:42:52', '9');
INSERT INTO `pingjia` VALUES ('9', '因为进博会，定好的酒店迟到一点不保留，连续找几个酒店都贵得不行，想起以前住过南泉，就入住了。还是一样的不行。酒店在小巷子里，不知道可真不好找；安排住一楼，一进房间迎面扑来一股潮湿和霉味，房间又小得很；早餐比较简单。原先两个晚上，实在是住不下第二天，赶快跑了。', '15813406574', '2019-12-11 22:43:09', '10');
INSERT INTO `pingjia` VALUES ('10', '挺安静的，酒店房间不是很新，稍微有点味道吧。但是性价比很高，早餐吃的还可以。建议房间要重新装修一下。酒店大厅服务态度很好。', '15813406574', '2019-12-11 22:43:31', '11');
INSERT INTO `pingjia` VALUES ('11', '千万不要住，千万不要住，千万不要住啊！ 我觉得三遍都不够可是千万不要住啊，设施老旧.房间里插线板少还远。空调声音大。毛巾浴巾能当古董了。早餐全是凉的', '15813406574', '2019-12-11 22:43:48', '12');
INSERT INTO `pingjia` VALUES ('12', '有停车场，前台服务态度不好，关键是房间的配套设施比较老化，热水开几分钟都不热，下水道还有点堵塞，房间隔音差，一楼靠马路的天不亮外面就很吵...', '15813406574', '2019-12-11 22:44:18', '12');
INSERT INTO `pingjia` VALUES ('13', '有停车场，前台服务态度不好，关键是房间的配套设施比较老化，热水开几分钟都不热，下水道还有点堵塞，房间隔音差，一楼靠马路的天不亮外面就很吵...', '15813406574', '2019-12-11 22:44:39', '13');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default '',
  `pwd` varchar(50) default '',
  `sex` varchar(10) default '',
  `age` varchar(10) default '',
  `tel` varchar(50) default '',
  `address` varchar(200) default '',
  `email` varchar(100) default '',
  `type` varchar(50) default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('17', '张三', '123456', '男', '25', '13572255555', '的撒打算', '22@qq.com', '8');
INSERT INTO `userinfo` VALUES ('18', '陈荣辉', '123456', '男', '20', '15813406574', '佛山科学技术学院', '1525610977@qq.com', '9');
INSERT INTO `userinfo` VALUES ('19', '18476275715', '123456', '男', '20', '13476274715', '1525610977@qqq.com', '中国', '7');
INSERT INTO `userinfo` VALUES ('20', '小虎', '123456', '女', '25', '1326782882', '1725057129@qq.com', '广东', '0.9');

-- ----------------------------
-- Table structure for yuding
-- ----------------------------
DROP TABLE IF EXISTS `yuding`;
CREATE TABLE `yuding` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default '',
  `fang` varchar(100) default '',
  `count` varchar(100) default '',
  `bdate` varchar(50) default '',
  `edate` varchar(50) default '',
  `tel` varchar(50) default '',
  `fangkuan` varchar(50) default NULL,
  `dingjin` double default NULL,
  `ism` varchar(50) default NULL,
  `mtel` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuding
-- ----------------------------
INSERT INTO `yuding` VALUES ('2', '张三', '4', '1', '2015-05-30 21:35:03', '2015-06-03 21:35:12', '13572255555', '900', '90', 'true', '13572255555');
INSERT INTO `yuding` VALUES ('3', 'chen', '4', '1', '2019-12-26 20:27:13', '2020-01-02 20:27:16', '15813406574', '1600', '160', 'false', '');
INSERT INTO `yuding` VALUES ('4', 'lisi', '4', '1', '2019-12-19 20:28:58', '2019-12-27 20:29:00', '15813406574', '1800', '180', 'false', '');
INSERT INTO `yuding` VALUES ('5', 'zhangsan', '3', '1', '2019-12-19 20:33:02', '2019-12-26 20:33:05', '15813406574', '6400', '640', 'false', '');
INSERT INTO `yuding` VALUES ('6', 'chen', '2', '1', '2019-12-19 20:34:37', '2019-12-26 20:34:40', '13572255555', '1920', '192', 'true', '13572255555');
INSERT INTO `yuding` VALUES ('8', '陈俊杰', '1', '3', '2019-12-12 20:48:27', '2019-12-20 20:48:31', '13476274715', '4252.5', '425.6', 'true', '13476274715');
INSERT INTO `yuding` VALUES ('9', '2', '8', '1', '2019-12-26 21:41:43', '2019-12-27 21:41:46', '', '760', '76', 'false', '');
INSERT INTO `yuding` VALUES ('10', '趁热', '8', '3', '2019-12-27 21:42:28', '2020-01-11 21:42:31', '', '18240', '1824', 'false', '');
INSERT INTO `yuding` VALUES ('12', '明凯', '10', '1', '2019-12-20 22:10:22', '2019-12-27 22:10:26', '15813406574', '2073.6', '207.9', 'true', '15813406574');
INSERT INTO `yuding` VALUES ('13', 'deft', '2', '1', '2020-01-02 22:10:42', '2020-02-06 22:10:45', '15813406574', '9720', '972', 'true', '15813406574');
INSERT INTO `yuding` VALUES ('14', '宋义进', '4', '1', '2019-12-19 22:11:43', '2019-12-24 22:11:45', '15813406574', '1080', '108', 'true', '15813406574');
INSERT INTO `yuding` VALUES ('15', '陈', '7', '1', '2019-12-13 10:01:23', '2019-12-20 10:01:26', '15813406574', '921.6', '92.7', 'true', '15813406574');
