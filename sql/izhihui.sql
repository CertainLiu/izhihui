/*
Navicat MySQL Data Transfer

Source Server         : izhihui
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : izhihui

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-04-19 22:07:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for izz_education_experience
-- ----------------------------
DROP TABLE IF EXISTS `izz_education_experience`;
CREATE TABLE `izz_education_experience` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `school_name` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `graduate_degree` varchar(20) DEFAULT NULL,
  `describe` text,
  `end_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of izz_education_experience
-- ----------------------------
INSERT INTO `izz_education_experience` VALUES ('1', '1', '刘意定', '2013年5月', '汝南县职业教育中心', '平面设计', '中专', '所学内容包括网站设计，淘宝美工相关，网页制作相关', '2015年7月');

-- ----------------------------
-- Table structure for izz_essential_information
-- ----------------------------
DROP TABLE IF EXISTS `izz_essential_information`;
CREATE TABLE `izz_essential_information` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) NOT NULL DEFAULT '1',
  `birthday` varchar(20) DEFAULT NULL,
  `marriage` varchar(20) DEFAULT NULL,
  `political` varchar(20) DEFAULT NULL,
  `hometown` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `educationplus` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of izz_essential_information
-- ----------------------------
INSERT INTO `izz_essential_information` VALUES ('1', '1', '刘意定', '男', '1998年05月23日', '未婚', '团员', '河南省驻马店市汝南县', '浙江省金华市义乌市', '中专', '是', '18757874341', '1196157806', '1196157806@qq.com');

-- ----------------------------
-- Table structure for izz_honor
-- ----------------------------
DROP TABLE IF EXISTS `izz_honor`;
CREATE TABLE `izz_honor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `honor_name` varchar(100) DEFAULT NULL,
  `describe` text,
  `user_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of izz_honor
-- ----------------------------
INSERT INTO `izz_honor` VALUES ('1', '1', '驻马店市中等职业学院计算机2等奖', '使用word,excel,ppt快速做出指定题目', '刘意定');
INSERT INTO `izz_honor` VALUES ('2', '1', '郑州市锐捷教育平面设计3等奖', '使用photoshop在规定时间里设计网站界面。', '刘意定');

-- ----------------------------
-- Table structure for izz_module_info
-- ----------------------------
DROP TABLE IF EXISTS `izz_module_info`;
CREATE TABLE `izz_module_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) DEFAULT NULL,
  `module_img_website` varchar(50) DEFAULT NULL,
  `module_website` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of izz_module_info
-- ----------------------------
INSERT INTO `izz_module_info` VALUES ('1', 'home', '/public/images/small_h_icon.png', '/public/html/index.html');
INSERT INTO `izz_module_info` VALUES ('2', 'information', '/public/images/small_i_icon.png', '/public/html/information.html');
INSERT INTO `izz_module_info` VALUES ('3', 'masterpiece', '/public/images/small_m_icon.png', '/public/html/masterpiece.html');
INSERT INTO `izz_module_info` VALUES ('4', 'resource', '/public/images/small_r_icon.png', '/public/html/resource.html');
INSERT INTO `izz_module_info` VALUES ('5', 'about', '/public/images/small_a_icon.png', '/public/html/about.html');

-- ----------------------------
-- Table structure for izz_resource
-- ----------------------------
DROP TABLE IF EXISTS `izz_resource`;
CREATE TABLE `izz_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tag` varchar(30) NOT NULL,
  `website` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of izz_resource
-- ----------------------------
INSERT INTO `izz_resource` VALUES ('1', '刘意定', 'php连接及读取和写入mysql数据库的常用代码', 'php', 'http://www.jb51.net/article/53557.htm');
INSERT INTO `izz_resource` VALUES ('2', '刘意定', '如何入门 React？你应该跟着这八步走', 'react', 'http://www.jianshu.com/p/ed55b366cd96');
INSERT INTO `izz_resource` VALUES ('4', '刘意定', '前端里-专注 Web 开发技术和资源分享', '学习网站', 'http://www.yyyweb.com/');

-- ----------------------------
-- Table structure for izz_resource_tag
-- ----------------------------
DROP TABLE IF EXISTS `izz_resource_tag`;
CREATE TABLE `izz_resource_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `tag` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of izz_resource_tag
-- ----------------------------
INSERT INTO `izz_resource_tag` VALUES ('1', '刘意定', '\r\nJavaScript');
INSERT INTO `izz_resource_tag` VALUES ('2', '刘意定', 'HTML5');
INSERT INTO `izz_resource_tag` VALUES ('3', '刘意定', 'CSS3');
INSERT INTO `izz_resource_tag` VALUES ('4', '刘意定', 'jQuery');
INSERT INTO `izz_resource_tag` VALUES ('5', '刘意定', 'PHP');
INSERT INTO `izz_resource_tag` VALUES ('6', '刘意定', 'ThinkPHP');
INSERT INTO `izz_resource_tag` VALUES ('7', '刘意定', 'Mysql');
INSERT INTO `izz_resource_tag` VALUES ('8', '刘意定', 'Apache');
INSERT INTO `izz_resource_tag` VALUES ('9', '刘意定', 'Nginx');
INSERT INTO `izz_resource_tag` VALUES ('10', '刘意定', 'Vue');
INSERT INTO `izz_resource_tag` VALUES ('11', '刘意定', 'Webpack');
INSERT INTO `izz_resource_tag` VALUES ('12', '刘意定', 'Node');
INSERT INTO `izz_resource_tag` VALUES ('13', '刘意定', 'React');
INSERT INTO `izz_resource_tag` VALUES ('14', '刘意定', '\r\n学习网站');

-- ----------------------------
-- Table structure for izz_user_infomation
-- ----------------------------
DROP TABLE IF EXISTS `izz_user_infomation`;
CREATE TABLE `izz_user_infomation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `qq` int(20) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `user_photo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of izz_user_infomation
-- ----------------------------
INSERT INTO `izz_user_infomation` VALUES ('1', '1', '刘意定', 'zhihui201314++', '18757874341', '1196157806', '1196157806@qq.com', '/public/images/user_photo.jpg');

-- ----------------------------
-- Table structure for izz_work_experience
-- ----------------------------
DROP TABLE IF EXISTS `izz_work_experience`;
CREATE TABLE `izz_work_experience` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `describe` text,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of izz_work_experience
-- ----------------------------
INSERT INTO `izz_work_experience` VALUES ('1', '1', '刘意定', '早稻网络科技', '设计部', '平面设计师', '负责app与网站前端页面的设计。', '2015年9月', '2015年12月');
INSERT INTO `izz_work_experience` VALUES ('2', '1', '刘意定', '速云网络科技（义乌市华睿软件）', '前端部', '前端工程师', '负责网站UI界面的修改与手机端响应式页面制作。', '2015年12月', '2016年6月');
INSERT INTO `izz_work_experience` VALUES ('3', '1', '刘意定', '易职人才网', '技术部', '前端工程师', '负责在Thinkphp环境下修改网站前端界面，实现部分php程序。', '2017年2月', '2017年4月');
