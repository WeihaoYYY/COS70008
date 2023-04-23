/*
 Navicat Premium Data Transfer

 Source Server         : MySQL 8
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : rcca

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 23/04/2023 15:06:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators`  (
  `aid` bigint NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `security_question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by_aid` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  INDEX `FKk2itmxx40mlltdhbir4mt1sc1`(`created_by_aid` ASC) USING BTREE,
  CONSTRAINT `FKk2itmxx40mlltdhbir4mt1sc1` FOREIGN KEY (`created_by_aid`) REFERENCES `administrators` (`aid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES (1, 'two', 'two', '223', 'What is your name?', NULL);
INSERT INTO `administrators` VALUES (2, 'two', 'two', '223', 'What is your name?', NULL);
INSERT INTO `administrators` VALUES (3, 'two', 'two', '223', 'What is your name?', 2);
INSERT INTO `administrators` VALUES (4, 'two', 'ab', '223', 'What is your name?', NULL);
INSERT INTO `administrators` VALUES (5, 'two', 'ab', '223', 'What is your name?', NULL);
INSERT INTO `administrators` VALUES (6, 'two', 'cd', '223', 'What is your name?', 5);
INSERT INTO `administrators` VALUES (7, 'two', '123aa', '223', 'What is your name?', NULL);
INSERT INTO `administrators` VALUES (8, 'two', '123aa', '223', 'What is your name?', NULL);
INSERT INTO `administrators` VALUES (9, 'two', '456ddd', '223', 'What is your name?', 8);
INSERT INTO `administrators` VALUES (10, 'two', 'Jack', '223', 'What is your name?', NULL);
INSERT INTO `administrators` VALUES (11, 'two', 'Jack', '223', 'What is your name?', NULL);
INSERT INTO `administrators` VALUES (12, 'two', 'Rose', '223', 'What is your name?', 11);

SET FOREIGN_KEY_CHECKS = 1;
