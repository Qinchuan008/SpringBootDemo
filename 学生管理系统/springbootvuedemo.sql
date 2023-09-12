/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : springbootvuedemo

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 11/09/2023 19:01:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'a', '1');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `age` int NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `clazz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (1, '刘亮', 21, '大二', '二班');
INSERT INTO `students` VALUES (2, '罗海燕', 18, '大三', '三班');
INSERT INTO `students` VALUES (3, '周波', 24, '大三', '四班');
INSERT INTO `students` VALUES (4, '陈婷', 21, '大三', '一班');
INSERT INTO `students` VALUES (5, '胡雪', 18, '大二', '一班');
INSERT INTO `students` VALUES (6, '黄云', 19, '大三', '一班');
INSERT INTO `students` VALUES (7, '邹旭', 21, '大三', '一班');
INSERT INTO `students` VALUES (8, '卢春梅', 19, '大二', '三班');
INSERT INTO `students` VALUES (9, '张平', 18, '大一', '三班');
INSERT INTO `students` VALUES (10, '刘瑞', 18, '大四', '一班');
INSERT INTO `students` VALUES (11, '李金凤', 25, '大四', '二班');
INSERT INTO `students` VALUES (12, '刘婷', 23, '大一', '一班');
INSERT INTO `students` VALUES (13, '陈娟', 20, '大三', '一班');
INSERT INTO `students` VALUES (14, '李凯', 25, '大一', '四班');
INSERT INTO `students` VALUES (15, '尹杰', 18, '大三', '四班');
INSERT INTO `students` VALUES (16, '张瑜', 23, '大一', '二班');
INSERT INTO `students` VALUES (17, '范成', 21, '大三', '二班');
INSERT INTO `students` VALUES (18, '陶桂荣', 21, '大三', '四班');
INSERT INTO `students` VALUES (19, '朱杨', 18, '大三', '三班');
INSERT INTO `students` VALUES (20, '黄春梅', 18, '大一', '三班');
INSERT INTO `students` VALUES (21, '戴凤英', 21, '大一', '三班');
INSERT INTO `students` VALUES (22, '刘瑜', 22, '大四', '一班');
INSERT INTO `students` VALUES (23, '李柳', 21, '大一', '四班');
INSERT INTO `students` VALUES (24, '殷云', 23, '大四', '三班');
INSERT INTO `students` VALUES (25, '刘梅', 25, '大一', '一班');
INSERT INTO `students` VALUES (26, '马英', 25, '大三', '四班');
INSERT INTO `students` VALUES (27, '张桂芝', 19, '大二', '三班');
INSERT INTO `students` VALUES (28, '刘秀英', 24, '大二', '四班');
INSERT INTO `students` VALUES (29, '李林', 20, '大二', '一班');
INSERT INTO `students` VALUES (30, '樊俊', 23, '大四', '三班');
INSERT INTO `students` VALUES (31, '郝秀芳', 19, '大三', '二班');
INSERT INTO `students` VALUES (32, '周玉', 25, '大一', '三班');
INSERT INTO `students` VALUES (33, '叶岩', 18, '大一', '二班');
INSERT INTO `students` VALUES (34, '芦帅', 25, '大二', '一班');
INSERT INTO `students` VALUES (35, '张琳', 20, '大四', '二班');
INSERT INTO `students` VALUES (36, '朱秀珍', 19, '大四', '二班');
INSERT INTO `students` VALUES (37, '解玲', 23, '大三', '二班');
INSERT INTO `students` VALUES (38, '黄玉英', 25, '大一', '四班');
INSERT INTO `students` VALUES (39, '凌婷婷', 21, '大三', '三班');
INSERT INTO `students` VALUES (40, '刘芳', 18, '大四', '一班');
INSERT INTO `students` VALUES (41, '张倩', 24, '大四', '三班');
INSERT INTO `students` VALUES (42, '金凤兰', 18, '大一', '二班');
INSERT INTO `students` VALUES (43, '向华', 24, '大二', '四班');
INSERT INTO `students` VALUES (44, '沈兰英', 19, '大四', '三班');
INSERT INTO `students` VALUES (45, '田梅', 24, '大四', '三班');
INSERT INTO `students` VALUES (46, '吴琳', 22, '大三', '四班');
INSERT INTO `students` VALUES (47, '顾楠', 19, '大四', '一班');
INSERT INTO `students` VALUES (48, '黄敏', 25, '大二', '一班');
INSERT INTO `students` VALUES (49, '陈莉', 18, '大三', '三班');
INSERT INTO `students` VALUES (50, '魏斌', 24, '大二', '二班');
INSERT INTO `students` VALUES (51, '王强', 24, '大三', '四班');
INSERT INTO `students` VALUES (52, '姚帆', 18, '大一', '三班');
INSERT INTO `students` VALUES (53, '杨玉兰', 24, '大一', '四班');
INSERT INTO `students` VALUES (54, '田芳', 19, '大二', '二班');
INSERT INTO `students` VALUES (55, '李晨', 19, '大四', '二班');
INSERT INTO `students` VALUES (56, '梁桂荣', 24, '大三', '四班');
INSERT INTO `students` VALUES (57, '李刚', 23, '大三', '二班');
INSERT INTO `students` VALUES (58, '倪红梅', 22, '大四', '三班');
INSERT INTO `students` VALUES (59, '李玉珍', 20, '大四', '二班');
INSERT INTO `students` VALUES (60, '高玉梅', 20, '大二', '一班');
INSERT INTO `students` VALUES (61, '杨想', 24, '大四', '三班');
INSERT INTO `students` VALUES (62, '张桂兰', 24, '大一', '一班');
INSERT INTO `students` VALUES (63, '彭云', 24, '大二', '四班');
INSERT INTO `students` VALUES (64, '张浩', 25, '大一', '四班');
INSERT INTO `students` VALUES (65, '陈琴', 19, '大四', '三班');
INSERT INTO `students` VALUES (66, '王春梅', 21, '大二', '二班');
INSERT INTO `students` VALUES (67, '林秀珍', 20, '大二', '二班');
INSERT INTO `students` VALUES (68, '杨建', 25, '大四', '二班');
INSERT INTO `students` VALUES (69, '杨欣', 24, '大四', '一班');
INSERT INTO `students` VALUES (70, '尹秀英', 22, '大一', '四班');
INSERT INTO `students` VALUES (71, '韩楠', 18, '大三', '四班');
INSERT INTO `students` VALUES (72, '胡平', 21, '大二', '一班');
INSERT INTO `students` VALUES (73, '王利', 24, '大四', '一班');
INSERT INTO `students` VALUES (74, '万颖', 23, '大四', '四班');
INSERT INTO `students` VALUES (75, '李柳', 24, '大二', '三班');
INSERT INTO `students` VALUES (76, '姚俊', 21, '大一', '三班');
INSERT INTO `students` VALUES (77, '黄勇', 23, '大一', '二班');
INSERT INTO `students` VALUES (78, '刘楠', 20, '大二', '二班');
INSERT INTO `students` VALUES (79, '杨云', 20, '大一', '三班');
INSERT INTO `students` VALUES (80, '刘秀梅', 18, '大三', '三班');
INSERT INTO `students` VALUES (81, '莫建', 25, '大一', '一班');
INSERT INTO `students` VALUES (82, '李健', 19, '大二', '三班');
INSERT INTO `students` VALUES (83, '杨想', 21, '大一', '四班');
INSERT INTO `students` VALUES (84, '江欣', 19, '大四', '一班');
INSERT INTO `students` VALUES (85, '薛旭', 20, '大一', '二班');
INSERT INTO `students` VALUES (86, '陈玲', 20, '大三', '四班');
INSERT INTO `students` VALUES (87, '万杨', 22, '大三', '一班');
INSERT INTO `students` VALUES (88, '武建华', 23, '大一', '一班');
INSERT INTO `students` VALUES (89, '罗杰', 18, '大一', '三班');
INSERT INTO `students` VALUES (90, '高佳', 22, '大四', '二班');
INSERT INTO `students` VALUES (91, '董林', 21, '大四', '四班');
INSERT INTO `students` VALUES (92, '李桂英', 22, '大二', '二班');
INSERT INTO `students` VALUES (93, '林涛', 25, '大一', '一班');
INSERT INTO `students` VALUES (94, '刘玲', 20, '大四', '三班');
INSERT INTO `students` VALUES (95, '胡平', 20, '大一', '三班');
INSERT INTO `students` VALUES (96, '温旭', 20, '大二', '四班');
INSERT INTO `students` VALUES (97, '杨霞', 24, '大四', '一班');
INSERT INTO `students` VALUES (98, '邓东', 25, '大一', '四班');
INSERT INTO `students` VALUES (99, '李玉英', 25, '大一', '四班');
INSERT INTO `students` VALUES (100, '郭云', 23, '大三', '一班');

SET FOREIGN_KEY_CHECKS = 1;
