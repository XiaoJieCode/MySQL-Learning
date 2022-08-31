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

 Date: 28/08/2022 13:19:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `stu_num` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stu_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stu_gender` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stu_age` int NOT NULL,
  `stu_tel` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stu_qq` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`stu_num`) USING BTREE,
  UNIQUE INDEX `stu_tel`(`stu_tel` ASC) USING BTREE,
  UNIQUE INDEX `stu_qq`(`stu_qq` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('20220101', '毛岚', '女', 20, '6142242941', '7047602518');
INSERT INTO `students` VALUES ('20220102', '彭嘉伦', '男', 20, '14457593522', '1615266049');
INSERT INTO `students` VALUES ('20220103', '徐岚', '女', 18, '97491348', '1223892896');
INSERT INTO `students` VALUES ('20220104', '魏秀英', '女', 22, '8041744293', '744493924');
INSERT INTO `students` VALUES ('20220105', '徐杰宏', '男', 21, '669914191', '745525986');
INSERT INTO `students` VALUES ('20220106', '刘睿', '男', 19, '1613574459', '7181281872');
INSERT INTO `students` VALUES ('20220107', '曹杰宏', '男', 18, '63454265', '2040625008');
INSERT INTO `students` VALUES ('20220108', '胡云熙', '男', 19, '7004237886', '76986229739');
INSERT INTO `students` VALUES ('20220109', '孟致远', '男', 18, '7051430607', '5480696150');
INSERT INTO `students` VALUES ('20220110', '陆致远', '男', 19, '13881212439', '7007939318');
INSERT INTO `students` VALUES ('20220111', 'Ethel Munoz', '女', 20, '21816293321', '73275723078');
INSERT INTO `students` VALUES ('20220112', 'Shawn Price', '男', 21, '21463495229', '96942271455');
INSERT INTO `students` VALUES ('20220113', 'Jack Mills', '男', 20, '34251668742', '52439594519');
INSERT INTO `students` VALUES ('20220114', 'Mario Barnes', '男', 20, '71112376437', '58890627696');
INSERT INTO `students` VALUES ('20220115', 'Joel Bailey', '男', 22, '27504155941', '52423164917');
INSERT INTO `students` VALUES ('20220116', 'Andrea Hernandez', '女', 20, '99936360008', '44744494414');
INSERT INTO `students` VALUES ('20220117', 'Timothy Castro', '男', 19, '98970772946', '21390385770');
INSERT INTO `students` VALUES ('20220118', 'Jessica West', '女', 19, '09399988325', '36092863443');
INSERT INTO `students` VALUES ('20220119', 'Lillian Owens', '女', 19, '28785456318', '73508300053');
INSERT INTO `students` VALUES ('20220120', 'Amy Wallace', '女', 18, '52776160374', '48186502078');

SET FOREIGN_KEY_CHECKS = 1;
