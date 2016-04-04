/*
Navicat MySQL Data Transfer

Source Server         : php
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : quizmasterdb

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2014-12-29 01:55:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `quiz0_category`
-- ----------------------------
DROP TABLE IF EXISTS `quiz0_category`;
CREATE TABLE `quiz0_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_status` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz0_category
-- ----------------------------
INSERT INTO `quiz0_category` VALUES ('1', '12/29/2014', 'Blood', 'blood', 'Active', 'This is the category of Blood.', 'Blood', '2014-12-29 00:44:16');
INSERT INTO `quiz0_category` VALUES ('2', '12/29/2014', 'Cell', 'cell', 'Active', 'This is the category of Blood Cell', 'Cell', '2014-12-29 00:44:53');
INSERT INTO `quiz0_category` VALUES ('3', '12/29/2014', 'Diabetes', 'diabetes', 'Active', 'This is the category of blood sugar.', 'Diabetes', '2014-12-29 00:45:27');
INSERT INTO `quiz0_category` VALUES ('4', '12/29/2014', 'Cancer', 'cancer', 'Active', 'This is the category of blood cancer', 'Cancer', '2014-12-29 00:46:12');
INSERT INTO `quiz0_category` VALUES ('5', '12/29/2014', 'Asthama', 'asthama', 'Active', 'This is the category of asthama.', 'Asthama', '2014-12-29 00:47:01');
INSERT INTO `quiz0_category` VALUES ('6', '12/29/2014', 'Heart Attack', 'heart_attack', 'Active', 'This is the category of Heart attack patient.', 'Heart', '2014-12-29 00:48:27');

-- ----------------------------
-- Table structure for `quiz0_contact`
-- ----------------------------
DROP TABLE IF EXISTS `quiz0_contact`;
CREATE TABLE `quiz0_contact` (
  `contact_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` varchar(20) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `feedback` text,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz0_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `quiz0_member`
-- ----------------------------
DROP TABLE IF EXISTS `quiz0_member`;
CREATE TABLE `quiz0_member` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'c',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz0_member
-- ----------------------------
INSERT INTO `quiz0_member` VALUES ('1', '29-12-2014', 'Waleed Bin Afzal', 'waleed', 'Pakistan', 'waleed@gmail.com', '123', 'Active', '2014-12-29 00:43:12');

-- ----------------------------
-- Table structure for `quiz0_question`
-- ----------------------------
DROP TABLE IF EXISTS `quiz0_question`;
CREATE TABLE `quiz0_question` (
  `question_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer1` varchar(255) DEFAULT NULL,
  `answer2` varchar(255) DEFAULT NULL,
  `answer3` varchar(255) DEFAULT NULL,
  `correctanswer` varchar(1) DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz0_question
-- ----------------------------
INSERT INTO `quiz0_question` VALUES ('1', '1', '12/29/2014', '\r\nThe matrix of blood is known as', 'Plasma', 'Serum', 'RBC and WBC', '1', 'Waleed Bin Afzal', '2014-12-29 00:52:46');
INSERT INTO `quiz0_question` VALUES ('2', '1', '12/29/2014', 'The percentage of formed elements in the blood is', '45%', '50%', '55%', '1', 'Waleed Bin Afzal', '2014-12-29 00:53:39');
INSERT INTO `quiz0_question` VALUES ('3', '1', '12/29/2014', 'The life span of RBC', '100 days', '110 days', '120 days', '3', 'Waleed Bin Afzal', '2014-12-29 00:55:01');
INSERT INTO `quiz0_question` VALUES ('4', '1', '12/29/2014', 'The ratio of WBC and RBC is', '1:60', '1:600', '1:6000', '2', 'Waleed Bin Afzal', '2014-12-29 00:56:00');
INSERT INTO `quiz0_question` VALUES ('5', '1', '12/29/2014', 'During blood coagulation, thromboplastin is released by', 'blood plasma', 'leucocytes', 'clumped platelets and damaged tissues', '3', 'Waleed Bin Afzal', '2014-12-29 00:57:21');
INSERT INTO `quiz0_question` VALUES ('6', '1', '12/29/2014', 'The life span of WBC is approximately', 'Less than 10 days', 'Between 20-30 days', 'Between 2-3 months', '2', 'Waleed Bin Afzal', '2014-12-29 00:58:10');
INSERT INTO `quiz0_question` VALUES ('7', '1', '12/29/2014', 'The normal level of Hb per 100 ml of blood in women is', '14g', '18 g', '20 g', '1', 'Waleed Bin Afzal', '2014-12-29 00:58:55');
INSERT INTO `quiz0_question` VALUES ('8', '1', '12/29/2014', 'Blood circulation was first explained by', 'Jenner', 'William Harvey', 'Mendel', '2', 'Waleed Bin Afzal', '2014-12-29 00:59:43');
INSERT INTO `quiz0_question` VALUES ('9', '1', '12/29/2014', 'Normal blood pressure of a healthy person is', '120/100', '110/90', '120/80', '3', 'Waleed Bin Afzal', '2014-12-29 01:00:51');
INSERT INTO `quiz0_question` VALUES ('10', '1', '12/29/2014', 'What is the name of the iron -containing protein that gives red blood vessels their color?', 'Hemocyanin', 'Myoglobin', 'Hemoglobin', '3', 'Waleed Bin Afzal', '2014-12-29 01:02:17');
INSERT INTO `quiz0_question` VALUES ('11', '2', '12/29/2014', 'Which of the following white blood cells is capable of phagocytosis?', 'Basophil', 'Eosinophil', ' Neutrophil', '3', '', '2014-12-29 01:44:24');
INSERT INTO `quiz0_question` VALUES ('12', '2', '12/29/2014', 'What would happen to red blood cells if the haem group were removed from haemoglobin?', ' Red blood cells would not be able to bind oxygen.', 'Red blood cells would not be able to reproduce.', 'White blood cells would not be able to reproduce.', '1', '', '2014-12-29 01:45:29');
INSERT INTO `quiz0_question` VALUES ('13', '2', '12/29/2014', 'The hormone erythropoietin stimulates red blood cell production in the red bone marrow. Where in the body is erythropoietin produced?', 'Spleen', 'Kidney', 'Liver', '2', '', '2014-12-29 01:46:09');
INSERT INTO `quiz0_question` VALUES ('14', '2', '12/29/2014', 'Which of the following statements about erythrocytes is correct?', 'They fight infection.', 'They are produced in the spleen.', 'They lack a nucleus.', '3', '', '2014-12-29 01:47:11');
INSERT INTO `quiz0_question` VALUES ('15', '2', '12/29/2014', 'Where does haematopoiesis take place?', 'Lungs', 'Pancreas', 'Bone marrow.', '3', '', '2014-12-29 01:48:27');
INSERT INTO `quiz0_question` VALUES ('16', '2', '12/29/2014', 'The formation of a blood clot is known as which of the following?', 'Coagulation', 'Chemotaxis', 'Leucopoiesis', '1', '', '2014-12-29 01:49:07');
INSERT INTO `quiz0_question` VALUES ('17', '2', '12/29/2014', 'Platelets are formed from what type of cell?', 'Melanocytes', 'Macrophages', 'Megakaryocytes', '3', '', '2014-12-29 01:49:52');
INSERT INTO `quiz0_question` VALUES ('18', '2', '12/29/2014', 'Which of the following is the function of white blood cells?', 'Defend against infection', 'Produce haemoglobin', 'Transport oxygen', '1', '', '2014-12-29 01:50:46');
INSERT INTO `quiz0_question` VALUES ('19', '2', '12/29/2014', 'An increased white blood cell count is indicative of which disease?', 'Lupus', 'Leukaemia', 'Anaemia', '2', '', '2014-12-29 01:51:51');
INSERT INTO `quiz0_question` VALUES ('20', '2', '12/29/2014', 'The process of coagulation is classically divided into how many pathways?', '3', '5', '2', '1', '', '2014-12-29 01:52:21');

-- ----------------------------
-- Table structure for `quiz0_subscriber`
-- ----------------------------
DROP TABLE IF EXISTS `quiz0_subscriber`;
CREATE TABLE `quiz0_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz0_subscriber
-- ----------------------------

-- ----------------------------
-- Table structure for `quiz0_user`
-- ----------------------------
DROP TABLE IF EXISTS `quiz0_user`;
CREATE TABLE `quiz0_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` varchar(25) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `scored` varchar(10) DEFAULT NULL,
  `percentage` varchar(10) DEFAULT NULL,
  `test_status` varchar(20) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz0_user
-- ----------------------------
INSERT INTO `quiz0_user` VALUES ('1', '28-12-14', 'Zeeshan Ahmed', 'Blood', '20', '40', 'Failed', '2014-12-29 01:20:41');
INSERT INTO `quiz0_user` VALUES ('2', '28-12-14', 'Zeeshan Ahmed', 'Blood', '15', '30', 'Failed', '2014-12-29 01:30:51');
INSERT INTO `quiz0_user` VALUES ('3', '28-12-14', 'Adnan Ahmed', 'Cell', '35', '70', 'Passed', '2014-12-29 01:53:58');
