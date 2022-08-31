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

 Date: 29/08/2022 16:28:52
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
) ENGINE = InnoDB AUTO_INCREMENT = 220303 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('2022010101', '金子异', '男', 18, 220101);
INSERT INTO `students` VALUES ('2022010102', '傅睿', '男', 19, 220101);
INSERT INTO `students` VALUES ('2022010103', '田嘉伦', '男', 19, 220101);
INSERT INTO `students` VALUES ('2022010104', '尹震南', '男', 19, 220101);
INSERT INTO `students` VALUES ('2022010105', '侯詩涵', '女', 19, 220101);
INSERT INTO `students` VALUES ('2022010106', '黄睿', '男', 19, 220101);
INSERT INTO `students` VALUES ('2022010107', '赵秀英', '女', 20, 220101);
INSERT INTO `students` VALUES ('2022010108', '贺秀英', '女', 20, 220101);
INSERT INTO `students` VALUES ('2022010109', '袁秀英', '女', 19, 220101);
INSERT INTO `students` VALUES ('2022010110', '蒋岚', '女', 18, 220101);
INSERT INTO `students` VALUES ('2022010111', '唐晓明', '男', 20, 220101);
INSERT INTO `students` VALUES ('2022010112', '汤宇宁', '男', 20, 220101);
INSERT INTO `students` VALUES ('2022010113', '梁子韬', '男', 18, 220101);
INSERT INTO `students` VALUES ('2022010114', '杨震南', '男', 18, 220101);
INSERT INTO `students` VALUES ('2022010115', '邱杰宏', '男', 18, 220101);
INSERT INTO `students` VALUES ('2022010116', '金秀英', '女', 19, 220101);
INSERT INTO `students` VALUES ('2022010117', '蔡安琪', '女', 20, 220101);
INSERT INTO `students` VALUES ('2022010118', '梁岚', '女', 18, 220101);
INSERT INTO `students` VALUES ('2022010119', '钟宇宁', '男', 19, 220101);
INSERT INTO `students` VALUES ('2022010120', '毛安琪', '女', 19, 220101);
INSERT INTO `students` VALUES ('2022010121', '沈致远', '男', 18, 220101);
INSERT INTO `students` VALUES ('2022010122', '董云熙', '男', 19, 220101);
INSERT INTO `students` VALUES ('2022010123', '杜嘉伦', '男', 19, 220101);
INSERT INTO `students` VALUES ('2022010124', '崔岚', '女', 18, 220101);
INSERT INTO `students` VALUES ('2022010125', '石致远', '男', 20, 220101);
INSERT INTO `students` VALUES ('2022010126', '卢嘉伦', '男', 19, 220101);
INSERT INTO `students` VALUES ('2022010127', '薛安琪', '女', 20, 220101);
INSERT INTO `students` VALUES ('2022010128', '陆致远', '男', 19, 220101);
INSERT INTO `students` VALUES ('2022010129', '龙宇宁', '男', 18, 220101);
INSERT INTO `students` VALUES ('2022010130', '郭嘉伦', '男', 20, 220101);
INSERT INTO `students` VALUES ('2022010201', '贺宇宁', '男', 19, 220102);
INSERT INTO `students` VALUES ('2022010202', '何岚', '女', 19, 220102);
INSERT INTO `students` VALUES ('2022010203', '苏杰宏', '男', 19, 220102);
INSERT INTO `students` VALUES ('2022010204', '唐云熙', '男', 20, 220102);
INSERT INTO `students` VALUES ('2022010205', '唐子韬', '男', 18, 220102);
INSERT INTO `students` VALUES ('2022010206', '魏子异', '男', 18, 220102);
INSERT INTO `students` VALUES ('2022010207', '贾宇宁', '男', 20, 220102);
INSERT INTO `students` VALUES ('2022010208', '向睿', '男', 18, 220102);
INSERT INTO `students` VALUES ('2022010209', '董璐', '女', 19, 220102);
INSERT INTO `students` VALUES ('2022010210', '常安琪', '女', 20, 220102);
INSERT INTO `students` VALUES ('2022010211', '朱宇宁', '男', 20, 220102);
INSERT INTO `students` VALUES ('2022010212', '黄致远', '男', 19, 220102);
INSERT INTO `students` VALUES ('2022010213', '侯秀英', '女', 18, 220102);
INSERT INTO `students` VALUES ('2022010214', '史岚', '女', 18, 220102);
INSERT INTO `students` VALUES ('2022010215', '宋宇宁', '男', 19, 220102);
INSERT INTO `students` VALUES ('2022010216', '薛致远', '男', 19, 220102);
INSERT INTO `students` VALUES ('2022010217', '邵云熙', '男', 18, 220102);
INSERT INTO `students` VALUES ('2022010218', '吴安琪', '女', 20, 220102);
INSERT INTO `students` VALUES ('2022010219', '钱震南', '男', 19, 220102);
INSERT INTO `students` VALUES ('2022010220', '廖震南', '男', 18, 220102);
INSERT INTO `students` VALUES ('2022010221', '汤子异', '男', 19, 220102);
INSERT INTO `students` VALUES ('2022010222', '段致远', '男', 19, 220102);
INSERT INTO `students` VALUES ('2022010223', '冯宇宁', '男', 19, 220102);
INSERT INTO `students` VALUES ('2022010224', '马宇宁', '男', 20, 220102);
INSERT INTO `students` VALUES ('2022010225', '姜嘉伦', '男', 19, 220102);
INSERT INTO `students` VALUES ('2022010226', '汤晓明', '男', 20, 220102);
INSERT INTO `students` VALUES ('2022010227', '高嘉伦', '男', 19, 220102);
INSERT INTO `students` VALUES ('2022010228', '唐璐', '女', 19, 220102);
INSERT INTO `students` VALUES ('2022010229', '丁子韬', '男', 18, 220102);
INSERT INTO `students` VALUES ('2022010230', '刘震南', '男', 20, 220102);
INSERT INTO `students` VALUES ('2022020101', '高睿', '男', 18, 220201);
INSERT INTO `students` VALUES ('2022020102', '许詩涵', '女', 18, 220201);
INSERT INTO `students` VALUES ('2022020103', '顾震南', '男', 19, 220201);
INSERT INTO `students` VALUES ('2022020104', '吴杰宏', '男', 19, 220201);
INSERT INTO `students` VALUES ('2022020105', '常云熙', '男', 18, 220201);
INSERT INTO `students` VALUES ('2022020106', '阎嘉伦', '男', 19, 220201);
INSERT INTO `students` VALUES ('2022020107', '吴詩涵', '女', 19, 220201);
INSERT INTO `students` VALUES ('2022020108', '姜杰宏', '男', 20, 220201);
INSERT INTO `students` VALUES ('2022020109', '卢秀英', '女', 19, 220201);
INSERT INTO `students` VALUES ('2022020110', '高子异', '男', 19, 220201);
INSERT INTO `students` VALUES ('2022020111', '郑岚', '女', 19, 220201);
INSERT INTO `students` VALUES ('2022020112', '严杰宏', '男', 18, 220201);
INSERT INTO `students` VALUES ('2022020113', '袁嘉伦', '男', 18, 220201);
INSERT INTO `students` VALUES ('2022020114', '胡安琪', '女', 19, 220201);
INSERT INTO `students` VALUES ('2022020115', '钱嘉伦', '男', 20, 220201);
INSERT INTO `students` VALUES ('2022020116', '邓云熙', '男', 19, 220201);
INSERT INTO `students` VALUES ('2022020117', '秦安琪', '女', 19, 220201);
INSERT INTO `students` VALUES ('2022020118', '杜安琪', '女', 20, 220201);
INSERT INTO `students` VALUES ('2022020119', '蔡秀英', '女', 19, 220201);
INSERT INTO `students` VALUES ('2022020120', '尹安琪', '女', 19, 220201);
INSERT INTO `students` VALUES ('2022020121', '陆子异', '男', 20, 220201);
INSERT INTO `students` VALUES ('2022020122', '谭杰宏', '男', 20, 220201);
INSERT INTO `students` VALUES ('2022020123', '董詩涵', '女', 20, 220201);
INSERT INTO `students` VALUES ('2022020124', '马宇宁', '男', 20, 220201);
INSERT INTO `students` VALUES ('2022020125', '邵秀英', '女', 18, 220201);
INSERT INTO `students` VALUES ('2022020126', '武致远', '男', 20, 220201);
INSERT INTO `students` VALUES ('2022020127', '彭睿', '男', 19, 220201);
INSERT INTO `students` VALUES ('2022020128', '郝秀英', '女', 19, 220201);
INSERT INTO `students` VALUES ('2022020129', '马晓明', '男', 19, 220201);
INSERT INTO `students` VALUES ('2022020130', '赵岚', '女', 20, 220201);
INSERT INTO `students` VALUES ('2022020201', '高睿', '男', 18, 220202);
INSERT INTO `students` VALUES ('2022020202', '许詩涵', '女', 18, 220202);
INSERT INTO `students` VALUES ('2022020203', '顾震南', '男', 19, 220202);
INSERT INTO `students` VALUES ('2022020204', '吴杰宏', '男', 19, 220202);
INSERT INTO `students` VALUES ('2022020205', '常云熙', '男', 18, 220202);
INSERT INTO `students` VALUES ('2022020206', '阎嘉伦', '男', 19, 220202);
INSERT INTO `students` VALUES ('2022020207', '吴詩涵', '女', 19, 220202);
INSERT INTO `students` VALUES ('2022020208', '姜杰宏', '男', 20, 220202);
INSERT INTO `students` VALUES ('2022020209', '卢秀英', '女', 19, 220202);
INSERT INTO `students` VALUES ('2022020210', '高子异', '男', 19, 220202);
INSERT INTO `students` VALUES ('2022020211', '郑岚', '女', 19, 220202);
INSERT INTO `students` VALUES ('2022020212', '严杰宏', '男', 18, 220202);
INSERT INTO `students` VALUES ('2022020213', '袁嘉伦', '男', 18, 220202);
INSERT INTO `students` VALUES ('2022020214', '胡安琪', '女', 19, 220202);
INSERT INTO `students` VALUES ('2022020215', '钱嘉伦', '男', 20, 220202);
INSERT INTO `students` VALUES ('2022020216', '邓云熙', '男', 19, 220202);
INSERT INTO `students` VALUES ('2022020217', '秦安琪', '女', 19, 220202);
INSERT INTO `students` VALUES ('2022020218', '杜安琪', '女', 20, 220202);
INSERT INTO `students` VALUES ('2022020219', '蔡秀英', '女', 19, 220202);
INSERT INTO `students` VALUES ('2022020220', '尹安琪', '女', 19, 220202);
INSERT INTO `students` VALUES ('2022020221', '陆子异', '男', 20, 220202);
INSERT INTO `students` VALUES ('2022020222', '谭杰宏', '男', 20, 220202);
INSERT INTO `students` VALUES ('2022020223', '董詩涵', '女', 20, 220202);
INSERT INTO `students` VALUES ('2022020224', '马宇宁', '男', 20, 220202);
INSERT INTO `students` VALUES ('2022020225', '邵秀英', '女', 18, 220202);
INSERT INTO `students` VALUES ('2022020226', '武致远', '男', 20, 220202);
INSERT INTO `students` VALUES ('2022020227', '彭睿', '男', 19, 220202);
INSERT INTO `students` VALUES ('2022020228', '郝秀英', '女', 19, 220202);
INSERT INTO `students` VALUES ('2022020229', '马晓明', '男', 19, 220202);
INSERT INTO `students` VALUES ('2022020230', '赵岚', '女', 20, 220202);
INSERT INTO `students` VALUES ('2022030101', '钟子异', '男', 18, 220301);
INSERT INTO `students` VALUES ('2022030102', '任致远', '男', 19, 220301);
INSERT INTO `students` VALUES ('2022030103', '陈晓明', '男', 19, 220301);
INSERT INTO `students` VALUES ('2022030104', '马子异', '男', 19, 220301);
INSERT INTO `students` VALUES ('2022030105', '萧震南', '男', 19, 220301);
INSERT INTO `students` VALUES ('2022030106', '谢睿', '男', 20, 220301);
INSERT INTO `students` VALUES ('2022030107', '余子异', '男', 18, 220301);
INSERT INTO `students` VALUES ('2022030108', '赵杰宏', '男', 19, 220301);
INSERT INTO `students` VALUES ('2022030109', '姚璐', '女', 20, 220301);
INSERT INTO `students` VALUES ('2022030110', '马璐', '女', 20, 220301);
INSERT INTO `students` VALUES ('2022030111', '尹詩涵', '女', 20, 220301);
INSERT INTO `students` VALUES ('2022030112', '彭致远', '男', 20, 220301);
INSERT INTO `students` VALUES ('2022030113', '孟嘉伦', '男', 20, 220301);
INSERT INTO `students` VALUES ('2022030114', '侯子异', '男', 19, 220301);
INSERT INTO `students` VALUES ('2022030115', '林秀英', '女', 19, 220301);
INSERT INTO `students` VALUES ('2022030116', '黄睿', '男', 20, 220301);
INSERT INTO `students` VALUES ('2022030117', '邵嘉伦', '男', 20, 220301);
INSERT INTO `students` VALUES ('2022030118', '王詩涵', '女', 19, 220301);
INSERT INTO `students` VALUES ('2022030119', '常睿', '男', 18, 220301);
INSERT INTO `students` VALUES ('2022030120', '邹子韬', '男', 19, 220301);
INSERT INTO `students` VALUES ('2022030121', '张云熙', '男', 19, 220301);
INSERT INTO `students` VALUES ('2022030122', '金杰宏', '男', 20, 220301);
INSERT INTO `students` VALUES ('2022030123', '崔秀英', '女', 18, 220301);
INSERT INTO `students` VALUES ('2022030124', '薛晓明', '男', 19, 220301);
INSERT INTO `students` VALUES ('2022030125', '金璐', '女', 19, 220301);
INSERT INTO `students` VALUES ('2022030126', '姚詩涵', '女', 19, 220301);
INSERT INTO `students` VALUES ('2022030127', '李璐', '女', 18, 220301);
INSERT INTO `students` VALUES ('2022030128', '丁杰宏', '男', 19, 220301);
INSERT INTO `students` VALUES ('2022030129', '贺子异', '男', 19, 220301);
INSERT INTO `students` VALUES ('2022030130', '胡杰宏', '男', 20, 220301);
INSERT INTO `students` VALUES ('2022030201', '钟子异', '男', 18, 220302);
INSERT INTO `students` VALUES ('2022030202', '任致远', '男', 19, 220302);
INSERT INTO `students` VALUES ('2022030203', '陈晓明', '男', 19, 220302);
INSERT INTO `students` VALUES ('2022030204', '马子异', '男', 19, 220302);
INSERT INTO `students` VALUES ('2022030205', '萧震南', '男', 19, 220302);
INSERT INTO `students` VALUES ('2022030206', '谢睿', '男', 20, 220302);
INSERT INTO `students` VALUES ('2022030207', '余子异', '男', 18, 220302);
INSERT INTO `students` VALUES ('2022030208', '赵杰宏', '男', 19, 220302);
INSERT INTO `students` VALUES ('2022030209', '姚璐', '女', 20, 220302);
INSERT INTO `students` VALUES ('2022030210', '马璐', '女', 20, 220302);
INSERT INTO `students` VALUES ('2022030211', '尹詩涵', '女', 20, 220302);
INSERT INTO `students` VALUES ('2022030212', '彭致远', '男', 20, 220302);
INSERT INTO `students` VALUES ('2022030213', '孟嘉伦', '男', 20, 220302);
INSERT INTO `students` VALUES ('2022030214', '侯子异', '男', 19, 220302);
INSERT INTO `students` VALUES ('2022030215', '林秀英', '女', 19, 220302);
INSERT INTO `students` VALUES ('2022030216', '黄睿', '男', 20, 220302);
INSERT INTO `students` VALUES ('2022030217', '邵嘉伦', '男', 20, 220302);
INSERT INTO `students` VALUES ('2022030218', '王詩涵', '女', 19, 220302);
INSERT INTO `students` VALUES ('2022030219', '常睿', '男', 18, 220302);
INSERT INTO `students` VALUES ('2022030220', '邹子韬', '男', 19, 220302);
INSERT INTO `students` VALUES ('2022030221', '张云熙', '男', 19, 220302);
INSERT INTO `students` VALUES ('2022030222', '金杰宏', '男', 20, 220302);
INSERT INTO `students` VALUES ('2022030223', '崔秀英', '女', 18, 220302);
INSERT INTO `students` VALUES ('2022030224', '薛晓明', '男', 19, 220302);
INSERT INTO `students` VALUES ('2022030225', '金璐', '女', 19, 220302);
INSERT INTO `students` VALUES ('2022030226', '姚詩涵', '女', 19, 220302);
INSERT INTO `students` VALUES ('2022030227', '李璐', '女', 18, 220302);
INSERT INTO `students` VALUES ('2022030228', '丁杰宏', '男', 19, 220302);
INSERT INTO `students` VALUES ('2022030229', '贺子异', '男', 19, 220302);
INSERT INTO `students` VALUES ('2022030230', '胡杰宏', '男', 20, 220302);

SET FOREIGN_KEY_CHECKS = 1;
