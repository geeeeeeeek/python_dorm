/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_dorm

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 10/08/2023 18:57:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add tag', 13, 'add_tag');
INSERT INTO `auth_permission` VALUES (50, 'Can change tag', 13, 'change_tag');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tag', 13, 'delete_tag');
INSERT INTO `auth_permission` VALUES (52, 'Can view tag', 13, 'view_tag');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add thing', 15, 'add_thing');
INSERT INTO `auth_permission` VALUES (58, 'Can change thing', 15, 'change_thing');
INSERT INTO `auth_permission` VALUES (59, 'Can delete thing', 15, 'delete_thing');
INSERT INTO `auth_permission` VALUES (60, 'Can view thing', 15, 'view_thing');
INSERT INTO `auth_permission` VALUES (61, 'Can add record', 16, 'add_record');
INSERT INTO `auth_permission` VALUES (62, 'Can change record', 16, 'change_record');
INSERT INTO `auth_permission` VALUES (63, 'Can delete record', 16, 'delete_record');
INSERT INTO `auth_permission` VALUES (64, 'Can view record', 16, 'view_record');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add banner', 18, 'add_banner');
INSERT INTO `auth_permission` VALUES (70, 'Can change banner', 18, 'change_banner');
INSERT INTO `auth_permission` VALUES (71, 'Can delete banner', 18, 'delete_banner');
INSERT INTO `auth_permission` VALUES (72, 'Can view banner', 18, 'view_banner');
INSERT INTO `auth_permission` VALUES (73, 'Can add address', 19, 'add_address');
INSERT INTO `auth_permission` VALUES (74, 'Can change address', 19, 'change_address');
INSERT INTO `auth_permission` VALUES (75, 'Can delete address', 19, 'delete_address');
INSERT INTO `auth_permission` VALUES (76, 'Can view address', 19, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '301', '2023-08-10 18:48:19.894765');
INSERT INTO `b_classification` VALUES (2, '302', '2023-08-10 18:48:23.955511');
INSERT INTO `b_classification` VALUES (3, '303', '2023-08-10 18:48:28.202242');
INSERT INTO `b_classification` VALUES (4, '601', '2023-08-10 18:48:32.701017');
INSERT INTO `b_classification` VALUES (5, '602', '2023-08-10 18:48:36.423355');
INSERT INTO `b_classification` VALUES (6, '603', '2023-08-10 18:48:40.474539');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-10 18:40:06.847221');
INSERT INTO `b_login_log` VALUES (2, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-10 18:40:57.943315');
INSERT INTO `b_login_log` VALUES (3, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-10 18:55:12.186340');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-10 18:56:00.059780');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-08-10 18:39:13.582474', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-08-10 18:39:13.590050', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-08-10 18:39:13.601270', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-08-10 18:39:18.560054', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-08-10 18:39:29.432297', '/myapp/admin/user/create', 'POST', NULL, '7');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-08-10 18:39:44.618713', '/myapp/admin/user/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-08-10 18:39:44.641345', '/myapp/admin/user/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-08-10 18:39:56.538005', '/myapp/admin/user/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-08-10 18:39:56.579594', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-08-10 18:40:06.855552', '/myapp/admin/adminLogin', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-08-10 18:40:06.953255', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-08-10 18:40:06.970810', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-08-10 18:40:06.973809', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-08-10 18:40:27.160162', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-08-10 18:40:27.162467', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-08-10 18:40:27.162167', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-08-10 18:40:30.612235', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-08-10 18:40:30.614501', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-08-10 18:40:30.615507', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-08-10 18:40:34.513042', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-08-10 18:40:34.516050', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-08-10 18:40:34.518040', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-08-10 18:40:57.950314', '/myapp/admin/adminLogin', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-08-10 18:40:58.104980', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-08-10 18:40:58.117982', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-08-10 18:40:58.149002', '/myapp/admin/tag/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-08-10 18:40:59.430928', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-08-10 18:42:08.596060', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-08-10 18:42:08.617800', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-08-10 18:42:08.620242', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-08-10 18:42:09.231081', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-08-10 18:42:12.423970', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-08-10 18:42:19.290679', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-08-10 18:42:22.042932', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-08-10 18:47:44.559046', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-08-10 18:47:45.775352', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-08-10 18:47:45.794894', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-08-10 18:47:45.795896', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-08-10 18:48:14.873287', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-08-10 18:48:19.910038', '/myapp/admin/classification/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-08-10 18:48:19.928327', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-08-10 18:48:23.968130', '/myapp/admin/classification/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-08-10 18:48:24.018030', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-08-10 18:48:28.214892', '/myapp/admin/classification/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-08-10 18:48:28.246289', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-08-10 18:48:32.712932', '/myapp/admin/classification/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-08-10 18:48:32.745557', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-08-10 18:48:36.435990', '/myapp/admin/classification/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-08-10 18:48:36.466484', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-08-10 18:48:40.477607', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-08-10 18:48:40.498763', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-08-10 18:48:41.633948', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-08-10 18:48:41.635305', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-08-10 18:48:41.653186', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-08-10 18:49:13.859741', '/myapp/admin/thing/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-08-10 18:49:13.894767', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-08-10 18:49:29.239265', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-08-10 18:49:29.284111', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-08-10 18:49:46.127618', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-08-10 18:49:46.132618', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-08-10 18:49:46.137619', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-08-10 18:49:48.927104', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-08-10 18:49:48.933527', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-08-10 18:49:48.946497', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-08-10 18:49:52.071615', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-08-10 18:49:52.083629', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-08-10 18:49:52.085637', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-08-10 18:50:01.468345', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-08-10 18:50:01.541444', '/myapp/admin/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-08-10 18:50:23.683412', '/myapp/admin/thing/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-08-10 18:50:23.751859', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-08-10 18:50:52.374928', '/myapp/admin/thing/create', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-08-10 18:50:52.412459', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-08-10 18:51:37.323160', '/myapp/admin/thing/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-08-10 18:51:55.906652', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-08-10 18:51:55.910071', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-08-10 18:51:55.915857', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-08-10 18:51:57.654331', '/myapp/admin/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-08-10 18:52:00.131631', '/myapp/admin/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-08-10 18:52:20.884329', '/myapp/admin/thing/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-08-10 18:52:20.970344', '/myapp/admin/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-08-10 18:52:37.854860', '/myapp/admin/thing/create', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-08-10 18:52:37.925411', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-08-10 18:52:57.247165', '/myapp/admin/thing/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-08-10 18:52:57.292632', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-08-10 18:53:20.453850', '/myapp/admin/thing/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-08-10 18:53:20.508905', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-08-10 18:53:36.747918', '/myapp/admin/thing/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-08-10 18:53:36.834931', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-08-10 18:54:01.789858', '/myapp/admin/thing/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-08-10 18:54:01.912478', '/myapp/admin/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-08-10 18:54:15.833977', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-08-10 18:54:15.835978', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-08-10 18:54:15.860043', '/myapp/admin/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-08-10 18:54:18.903716', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-08-10 18:54:18.907820', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-08-10 18:54:18.917177', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-08-10 18:54:25.058094', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-08-10 18:54:25.067093', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-08-10 18:54:25.073094', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-08-10 18:54:31.488792', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-08-10 18:54:31.581166', '/myapp/admin/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-08-10 18:54:47.832132', '/myapp/admin/thing/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-08-10 18:54:47.906812', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-08-10 18:54:54.906546', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-08-10 18:54:54.971288', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-08-10 18:55:00.153351', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-08-10 18:55:00.971906', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-08-10 18:55:00.990998', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-08-10 18:55:00.993508', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-08-10 18:55:12.192349', '/myapp/admin/adminLogin', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-08-10 18:55:12.279565', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-08-10 18:55:12.281587', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-08-10 18:55:12.299259', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-08-10 18:55:13.458352', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-08-10 18:55:13.993142', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-08-10 18:55:15.919828', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1059');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-08-10 18:55:17.498695', '/myapp/admin/opLog/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-08-10 18:55:18.453432', '/myapp/admin/loginLog/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-08-10 18:55:19.280357', '/myapp/admin/errorLog/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-08-10 18:55:20.296925', '/myapp/admin/loginLog/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-08-10 18:55:22.488240', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-08-10 18:55:24.694456', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-08-10 18:55:26.352150', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-08-10 18:55:26.358492', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-08-10 18:55:26.359005', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-08-10 18:55:43.662798', '/myapp/admin/adminLogin', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-08-10 18:56:00.066908', '/myapp/admin/adminLogin', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-08-10 18:56:00.161455', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-08-10 18:56:00.162731', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-08-10 18:56:00.179109', '/myapp/admin/tag/list', 'GET', NULL, '23');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banji` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xuehao` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '', '0', '2023-08-10 18:49:13.845198', 3, 'dsadsf', '软件技术三班', '333', '刘德华', '男', '2023090111');
INSERT INTO `b_thing` VALUES (2, '', '0', '2023-08-10 18:50:23.666038', 3, 'adsdf', '软件技术二班', '333', '杨颖', '女', '2023090112');
INSERT INTO `b_thing` VALUES (3, '', '0', '2023-08-10 18:50:52.367927', 2, 'dddd', '软件技术三班', '132223332', '刘莉莉', '女', '2023090118');
INSERT INTO `b_thing` VALUES (4, '', '1', '2023-08-10 18:52:20.867313', 5, 'dddd', '软件技术三班', '333', '张舒涵', '男', '2023090110');
INSERT INTO `b_thing` VALUES (5, '', '0', '2023-08-10 18:52:37.829884', 6, 'dddd', '软件技术三班', '333', '李连杰', '男', '2023090124');
INSERT INTO `b_thing` VALUES (6, '', '0', '2023-08-10 18:52:57.228436', 1, '该生性格怪异', '软件技术三班', '433', '刘若英', '女', '2023090222');
INSERT INTO `b_thing` VALUES (7, '', '0', '2023-08-10 18:53:20.443714', 3, 'adsdf', '软件技术二班', '09999', '王宝强', '男', '2023090999');
INSERT INTO `b_thing` VALUES (8, '', '0', '2023-08-10 18:53:36.723870', 5, '喜欢篮球', '软件技术三班', '333', '伍六一', '男', '2023090444');
INSERT INTO `b_thing` VALUES (9, '', '0', '2023-08-10 18:54:01.767240', 2, 'ddds', '软件技术三班', '3222', '王晓红', '女', '2023090889');

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-08-10 18:39:44.614441', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-08-10 18:39:56.523584', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-08-10 18:36:15.480871');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-08-10 18:36:15.900252');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-08-10 18:36:15.996685');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-08-10 18:36:16.009788');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-10 18:36:16.022801');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-08-10 18:36:16.129765');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-08-10 18:36:16.188709');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-08-10 18:36:16.254239');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-08-10 18:36:16.268261');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-08-10 18:36:16.320267');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-08-10 18:36:16.326816');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-10 18:36:16.339824');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-08-10 18:36:16.398823');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-10 18:36:16.522401');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-08-10 18:36:16.585938');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-08-10 18:36:16.600017');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-10 18:36:16.664495');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-08-10 18:36:17.802079');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_auto_20230526_2255', '2023-08-10 18:36:17.942799');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20230527_1411', '2023-08-10 18:36:18.080570');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_thing_raw', '2023-08-10 18:36:18.126592');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20230808_1739', '2023-08-10 18:36:18.827831');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_thing_remark', '2023-08-10 18:36:18.883696');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0007_auto_20230809_1840', '2023-08-10 18:36:19.315364');
INSERT INTO `django_migrations` VALUES (25, 'sessions', '0001_initial', '2023-08-10 18:36:19.374885');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0008_auto_20230810_1836', '2023-08-10 18:36:48.363798');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
