/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : mydatabase

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 29/08/2022 16:59:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes`  (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `class_remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`class_id`) USING BTREE,
  UNIQUE INDEX `class_name`(`class_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 220303 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES (220101, 'java1', 'null');
INSERT INTO `classes` VALUES (220102, 'java2', NULL);
INSERT INTO `classes` VALUES (220201, 'c1', NULL);
INSERT INTO `classes` VALUES (220202, 'c2', NULL);
INSERT INTO `classes` VALUES (220301, 'python1', NULL);
INSERT INTO `classes` VALUES (220302, 'python2', NULL);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `stu_num` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `stu_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `stu_gender` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `stu_age` int NOT NULL,
  `cid` int NULL DEFAULT NULL,
  PRIMARY KEY (`stu_num`) USING BTREE,
  INDEX `FK_STUDENTS_CLASSES`(`cid` ASC) USING BTREE,
  CONSTRAINT `FK_STUDENTS_CLASSES` FOREIGN KEY (`cid`) REFERENCES `classes` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('2022010101', '?????????', '???', 18, 220101);
INSERT INTO `students` VALUES ('2022010102', '??????', '???', 19, 220101);
INSERT INTO `students` VALUES ('2022010103', '?????????', '???', 19, 220101);
INSERT INTO `students` VALUES ('2022010104', '?????????', '???', 19, 220101);
INSERT INTO `students` VALUES ('2022010201', '?????????', '???', 19, 220102);
INSERT INTO `students` VALUES ('2022010202', '??????', '???', 19, 220102);
INSERT INTO `students` VALUES ('2022010203', '?????????', '???', 19, 220102);
INSERT INTO `students` VALUES ('2022010204', '?????????', '???', 20, 220102);
INSERT INTO `students` VALUES ('2022020101', '??????', '???', 18, 220201);
INSERT INTO `students` VALUES ('2022020102', '?????????', '???', 18, 220201);
INSERT INTO `students` VALUES ('2022020103', '?????????', '???', 19, 220201);
INSERT INTO `students` VALUES ('2022020104', '?????????', '???', 19, 220201);
INSERT INTO `students` VALUES ('2022020201', '??????', '???', 18, 220202);
INSERT INTO `students` VALUES ('2022020202', '?????????', '???', 18, 220202);
INSERT INTO `students` VALUES ('2022020203', '?????????', '???', 19, 220202);
INSERT INTO `students` VALUES ('2022020204', '?????????', '???', 19, 220202);
INSERT INTO `students` VALUES ('2022030101', '?????????', '???', 18, 220301);
INSERT INTO `students` VALUES ('2022030102', '?????????', '???', 19, 220301);
INSERT INTO `students` VALUES ('2022030103', '?????????', '???', 19, 220301);
INSERT INTO `students` VALUES ('2022030104', '?????????', '???', 19, 220301);
INSERT INTO `students` VALUES ('2022030201', '?????????', '???', 18, 220302);
INSERT INTO `students` VALUES ('2022030202', '?????????', '???', 19, 220302);
INSERT INTO `students` VALUES ('2022030203', '?????????', '???', 19, 220302);
INSERT INTO `students` VALUES ('2022030204', '?????????', '???', 19, 220302);

SET FOREIGN_KEY_CHECKS = 1;
