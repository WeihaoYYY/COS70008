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

 Date: 22/04/2023 01:21:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators`  (
  `aid` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `security_question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` bigint NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `created_by_aid` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  INDEX `FKk2itmxx40mlltdhbir4mt1sc1`(`created_by_aid` ASC) USING BTREE,
  CONSTRAINT `FKk2itmxx40mlltdhbir4mt1sc1` FOREIGN KEY (`created_by_aid`) REFERENCES `administrators` (`aid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES (1, 'Jack', '123', 'What is my name', 'Jack', 1, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
