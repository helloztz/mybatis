/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : mybatis

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 05/11/2018 15:37:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for author
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `favourite_section` varchar(255) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of author
-- ----------------------------
BEGIN;
INSERT INTO `author` VALUES (1, '123', '2416020591@qq.com', '黑龙江 哈尔滨 女', '你就是我的幸运，一闪一闪亮晶晶', '小草', 'helen', '赵敏');
INSERT INTO `author` VALUES (2, '123', '52145865@qq.com', '黑龙江 哈尔滨 女', '一千个人就有一千种生活方式，要想改变一些事情，一闪一闪亮晶晶', '鹦鹉', 'anwenqi', '安琪');
INSERT INTO `author` VALUES (3, '123', 'yaoyanjun@126.com', '黑龙江 哈尔滨 男', '2017.1.4 我们会很幸福的哦 ', '阳光的温暖感觉不到', 'yaoyanjun', '姚延军');
COMMIT;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `featured` int(2) DEFAULT NULL,
  `style` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
BEGIN;
INSERT INTO `blog` VALUES (1, 'My_Colourful Garden', 1, 'ACTIVE', 1, 'pink');
INSERT INTO `blog` VALUES (2, '海鸥的树', 2, 'ACTIVE', 1, 'black');
INSERT INTO `blog` VALUES (3, '姚延军的空间', 3, 'ACTIVE', 1, 'red');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `create_on` varchar(50) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES (1, 1, '过客', '你怎么看？', '2017-01-05 09:52:04', NULL);
INSERT INTO `comment` VALUES (2, 1, '大侠', '我是大侠', '2017-01-05 09:51:58', NULL);
INSERT INTO `comment` VALUES (3, 1, '匿名草', '您可以在这里发布评论', '2017-01-05 09:51:58', NULL);
INSERT INTO `comment` VALUES (4, 2, '匿名草', '您可以在这里发布评论', '2017-01-06 09:34:58', NULL);
INSERT INTO `comment` VALUES (5, 2, '匿名草', '您可以在这里发布评论', '2017-01-07 09:51:58', NULL);
INSERT INTO `comment` VALUES (6, 2, '匿名草', 'fasdadad', '2018-01-05 23:51:58', NULL);
INSERT INTO `comment` VALUES (7, 2, '匿名草', '发飙', '2017-01-05 09:51:58', NULL);
INSERT INTO `comment` VALUES (8, 2, '匿名草', '你可以在这里发布评论', '2017-03-05 22:51:58', NULL);
INSERT INTO `comment` VALUES (9, 3, '鹦鹉', '看看', '2017-05-05 09:51:58', NULL);
INSERT INTO `comment` VALUES (10, 3, '小草', '看看', '2017-11-05 09:51:58', NULL);
COMMIT;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `create_on` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `draft` text,
  `body` text,
  `visit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
BEGIN;
INSERT INTO `post` VALUES (1, 1, 1, '2017-01-04 15:59:06', '概要', '第一个日志', '使用二进制格式将9个十进制书压缩为4个字节数来表示', '使用二进制格式将9个十进制书压缩为4个字节数来表示使用二进制格式将9个十进制书压缩为4个字节数来表示使用二进制格式将9个十进制书压缩为4个字节数来表示', 113);
INSERT INTO `post` VALUES (2, 1, 1, '2017-01-05 10:52:06', '简介元芳', '第二个日志', 'MySQL TEXT数据类型的最大长度 - 唾手可得的树 - 博客园2018年5月1日', 'MySQL TEXT数据类型的最大长度 - 唾手可得的树 - 博客园2018年5月1日 - MySQL TEXT数据类型的最大长度 TINYTEXT 256 bytes TEXT 65,535 bytes ~64kb MEDIUMTEXT 16,777,215 bytes ~16MB LONGTEXT 4,294,967,295 bytes ~4GB...', 113);
INSERT INTO `post` VALUES (3, 1, 1, '2017-01-10 22:38:06', '测试', '请务必仔细阅读下面的文字', 'mysql longtext 设置存储', 'mysql longtext 设置存储容量大小,max_allowed_packet ..._CSDN博客2018年2月27日 - mysql longtext 设置存储容量大小,max_allowed_packet2018年02月27日 17:56:48...max_allowed_packet 参数的作用是,用来控制其通信缓冲区的最大长度。...', 113);
COMMIT;

-- ----------------------------
-- Table structure for post_tag
-- ----------------------------
DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE `post_tag` (
  `post_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_tag
-- ----------------------------
BEGIN;
INSERT INTO `post_tag` VALUES (1, 2);
INSERT INTO `post_tag` VALUES (2, 2);
INSERT INTO `post_tag` VALUES (1, 3);
INSERT INTO `post_tag` VALUES (2, 3);
COMMIT;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
BEGIN;
INSERT INTO `tag` VALUES (1, '成龙');
INSERT INTO `tag` VALUES (2, '王宝强');
INSERT INTO `tag` VALUES (3, '电影');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
