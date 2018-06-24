/*
Navicat MySQL Data Transfer

Source Server         : booksck
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : booksck

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-06-23 18:28:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for booksck
-- ----------------------------
DROP TABLE IF EXISTS `booksck`;
CREATE TABLE `booksck` (
  `bid` int(20) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(255) DEFAULT NULL,
  `bprice` int(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `stock` int(255) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of booksck
-- ----------------------------
INSERT INTO `booksck` VALUES ('1', '泰戈尔诗集', '32', './images/book_01.gif', '978');
INSERT INTO `booksck` VALUES ('2', '天堂之旅', '28', './images/book_02.gif', '975');
INSERT INTO `booksck` VALUES ('3', '三体', '58', './images/book_03.gif', '884');
INSERT INTO `booksck` VALUES ('4', '钱钟书书籍', '28', './images/book_04.gif', '585');
INSERT INTO `booksck` VALUES ('5', '盟友', '46', './images/book_05.gif', '560');
INSERT INTO `booksck` VALUES ('6', '背影', '32', './images/book_06.gif', '878');
INSERT INTO `booksck` VALUES ('7', '超时空之恋', '51', './images/book_07.gif', '212');
INSERT INTO `booksck` VALUES ('8', '哆啦A梦', '12', './images/book_08.gif', '999');
INSERT INTO `booksck` VALUES ('9', 'JAVA程序设计', '89', './images/book_09.gif', '10');
INSERT INTO `booksck` VALUES ('10', '又见一帘幽梦', '54', './images/book_10.gif', '888');
INSERT INTO `booksck` VALUES ('11', '围城', '26', './images/book_07.gif', '545');
INSERT INTO `booksck` VALUES ('12', '江水', '93', './images/book_02.gif', '53');
INSERT INTO `booksck` VALUES ('13', '河水', '54', './images/book_06.gif', '52');
INSERT INTO `booksck` VALUES ('14', 'Python', '23', './images/book_01.gif', '12');
INSERT INTO `booksck` VALUES ('15', '摆渡人', '38', './images/book_03.gif', '255');
INSERT INTO `booksck` VALUES ('16', 'Java高级', '98', './images/book_01.gif', '565');
INSERT INTO `booksck` VALUES ('17', '傅雷家书', '25', './images/book_08.gif', '99');
INSERT INTO `booksck` VALUES ('18', '童年', '34', './images/book_03.gif', '51');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `iid` int(10) NOT NULL AUTO_INCREMENT,
  `oid` int(10) DEFAULT NULL,
  `bid` int(10) DEFAULT NULL,
  `createdate` varchar(255) DEFAULT NULL,
  `iprice` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `count` int(255) DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('14', '9', '2', '2018-06-23 18:24:27', '3.00', '84.00', '0', '216');
INSERT INTO `items` VALUES ('15', '9', '3', '2018-06-23 18:24:27', '1.00', '58.00', '0', '216');
INSERT INTO `items` VALUES ('16', '9', '4', '2018-06-23 18:24:27', '1.00', '28.00', '0', '216');
INSERT INTO `items` VALUES ('17', '9', '5', '2018-06-23 18:24:27', '1.00', '46.00', '0', '216');
INSERT INTO `items` VALUES ('18', '10', '2', '2018-06-23 18:26:12', '2.00', '56.00', '0', '56');
INSERT INTO `items` VALUES ('19', '11', '2', '2018-06-23 18:26:40', '2.00', '56.00', '0', '172');
INSERT INTO `items` VALUES ('20', '11', '3', '2018-06-23 18:26:40', '2.00', '116.00', '0', '172');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('9', 'chenke');
INSERT INTO `orders` VALUES ('10', 'chenke');
INSERT INTO `orders` VALUES ('11', 'chenke');

-- ----------------------------
-- Table structure for userinfock
-- ----------------------------
DROP TABLE IF EXISTS `userinfock`;
CREATE TABLE `userinfock` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfock
-- ----------------------------
INSERT INTO `userinfock` VALUES ('chenke', '123456', '123@qq.com');
INSERT INTO `userinfock` VALUES ('aaa', '123', '123@qq.com');
