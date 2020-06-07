/*
 Navicat Premium Data Transfer

 Source Server         : lin
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:33060
 Source Schema         : laravel-shop

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 08/06/2020 00:33:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, '首页', 'fa-bar-chart', '/', NULL, NULL, '2020-06-07 03:49:55');
INSERT INTO `admin_menu` VALUES (2, 0, 2, '系统管理', 'fa-tasks', NULL, NULL, NULL, '2020-06-07 03:50:35');
INSERT INTO `admin_menu` VALUES (3, 2, 3, '管理员', 'fa-users', 'auth/users', NULL, NULL, '2020-06-07 03:51:04');
INSERT INTO `admin_menu` VALUES (4, 2, 4, '角色', 'fa-user', 'auth/roles', NULL, NULL, '2020-06-07 03:51:32');
INSERT INTO `admin_menu` VALUES (5, 2, 5, '权限', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-06-07 03:51:52');
INSERT INTO `admin_menu` VALUES (6, 2, 6, '菜单', 'fa-bars', 'auth/menu', NULL, NULL, '2020-06-07 03:52:10');
INSERT INTO `admin_menu` VALUES (7, 2, 7, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, '2020-06-07 03:52:31');
INSERT INTO `admin_menu` VALUES (8, 0, 0, '用户管理', 'fa-bars', '/users', NULL, '2020-06-07 05:03:21', '2020-06-07 05:03:21');
INSERT INTO `admin_menu` VALUES (9, 0, 0, '商品管理', 'fa-bars', '/products', NULL, '2020-06-07 13:46:38', '2020-06-07 13:47:44');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 03:44:16', '2020-06-07 03:44:16');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:44:35', '2020-06-07 03:44:35');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 03:46:06', '2020-06-07 03:46:06');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:46:14', '2020-06-07 03:46:14');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:46:33', '2020-06-07 03:46:33');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:47:13', '2020-06-07 03:47:13');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:47:43', '2020-06-07 03:47:43');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 03:48:48', '2020-06-07 03:48:48');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:48:52', '2020-06-07 03:48:52');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:48:59', '2020-06-07 03:48:59');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/menu/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:49:28', '2020-06-07 03:49:28');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/menu/1', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"M8GEFMhWdvtlbudRU8qpArQwcYp35PWCSnQG9xnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2020-06-07 03:49:55', '2020-06-07 03:49:55');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 03:49:56', '2020-06-07 03:49:56');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/menu/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:50:20', '2020-06-07 03:50:20');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/menu/2', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"M8GEFMhWdvtlbudRU8qpArQwcYp35PWCSnQG9xnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2020-06-07 03:50:34', '2020-06-07 03:50:34');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 03:50:36', '2020-06-07 03:50:36');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/menu/3/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:50:57', '2020-06-07 03:50:57');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/menu/3', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"M8GEFMhWdvtlbudRU8qpArQwcYp35PWCSnQG9xnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2020-06-07 03:51:04', '2020-06-07 03:51:04');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 03:51:05', '2020-06-07 03:51:05');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/menu/4/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:51:24', '2020-06-07 03:51:24');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/menu/4', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"M8GEFMhWdvtlbudRU8qpArQwcYp35PWCSnQG9xnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2020-06-07 03:51:32', '2020-06-07 03:51:32');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 03:51:33', '2020-06-07 03:51:33');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/menu/5/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:51:44', '2020-06-07 03:51:44');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/menu/5', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"M8GEFMhWdvtlbudRU8qpArQwcYp35PWCSnQG9xnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2020-06-07 03:51:52', '2020-06-07 03:51:52');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 03:51:53', '2020-06-07 03:51:53');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/menu/6/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:52:00', '2020-06-07 03:52:00');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/auth/menu/6', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"M8GEFMhWdvtlbudRU8qpArQwcYp35PWCSnQG9xnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2020-06-07 03:52:09', '2020-06-07 03:52:09');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 03:52:10', '2020-06-07 03:52:10');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/menu/7/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:52:25', '2020-06-07 03:52:25');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/menu/7', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"M8GEFMhWdvtlbudRU8qpArQwcYp35PWCSnQG9xnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2020-06-07 03:52:31', '2020-06-07 03:52:31');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 03:52:32', '2020-06-07 03:52:32');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 03:53:15', '2020-06-07 03:53:15');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 03:53:20', '2020-06-07 03:53:20');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 03:53:27', '2020-06-07 03:53:27');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:00:06', '2020-06-07 05:00:06');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:00:25', '2020-06-07 05:00:25');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:00:37', '2020-06-07 05:00:37');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:00:47', '2020-06-07 05:00:47');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:00:50', '2020-06-07 05:00:50');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:00:53', '2020-06-07 05:00:53');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/menu/4/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:01:01', '2020-06-07 05:01:01');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:01:05', '2020-06-07 05:01:05');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:01:22', '2020-06-07 05:01:22');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:01:34', '2020-06-07 05:01:34');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 05:02:27', '2020-06-07 05:02:27');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"M8GEFMhWdvtlbudRU8qpArQwcYp35PWCSnQG9xnL\"}', '2020-06-07 05:03:21', '2020-06-07 05:03:21');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 05:03:22', '2020-06-07 05:03:22');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:03:57', '2020-06-07 05:03:57');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:04:05', '2020-06-07 05:04:05');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:04:08', '2020-06-07 05:04:08');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:04:12', '2020-06-07 05:04:12');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2020-06-07 05:06:01', '2020-06-07 05:06:01');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2020-06-07 05:17:38', '2020-06-07 05:17:38');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2020-06-07 05:18:22', '2020-06-07 05:18:22');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_export_\":\"page:1\"}', '2020-06-07 05:18:32', '2020-06-07 05:18:32');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2020-06-07 05:19:47', '2020-06-07 05:19:47');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:19:52', '2020-06-07 05:19:52');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-06-07 05:25:54', '2020-06-07 05:25:54');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-06-07 05:25:58', '2020-06-07 05:25:58');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-06-07 05:26:00', '2020-06-07 05:26:00');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-06-07 05:26:02', '2020-06-07 05:26:02');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-06-07 05:26:04', '2020-06-07 05:26:04');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:26:06', '2020-06-07 05:26:06');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:26:09', '2020-06-07 05:26:09');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:26:11', '2020-06-07 05:26:11');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:26:12', '2020-06-07 05:26:12');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:26:13', '2020-06-07 05:26:13');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:26:14', '2020-06-07 05:26:14');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:26:15', '2020-06-07 05:26:15');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:26:16', '2020-06-07 05:26:16');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:30:25', '2020-06-07 05:30:25');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:30:28', '2020-06-07 05:30:28');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/auth/permissions', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:30:30', '2020-06-07 05:30:30');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/permissions/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:30:52', '2020-06-07 05:30:52');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/permissions', 'POST', '192.168.10.1', '{\"slug\":\"users\",\"name\":\"\\u7528\\u6236\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users*\",\"_token\":\"M8GEFMhWdvtlbudRU8qpArQwcYp35PWCSnQG9xnL\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/permissions\"}', '2020-06-07 05:32:03', '2020-06-07 05:32:03');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/permissions', 'GET', '192.168.10.1', '[]', '2020-06-07 05:32:03', '2020-06-07 05:32:03');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/auth/roles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:32:23', '2020-06-07 05:32:23');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/roles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:32:41', '2020-06-07 05:32:41');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/auth/roles', 'POST', '192.168.10.1', '{\"slug\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"M8GEFMhWdvtlbudRU8qpArQwcYp35PWCSnQG9xnL\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/roles\"}', '2020-06-07 05:36:28', '2020-06-07 05:36:28');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/auth/roles', 'GET', '192.168.10.1', '[]', '2020-06-07 05:36:28', '2020-06-07 05:36:28');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:36:48', '2020-06-07 05:36:48');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/auth/roles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:37:18', '2020-06-07 05:37:18');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:37:21', '2020-06-07 05:37:21');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:37:34', '2020-06-07 05:37:34');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/auth/users/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:37:36', '2020-06-07 05:37:36');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/auth/users/1', 'PUT', '192.168.10.1', '{\"username\":\"admin\",\"name\":\"Administrator\",\"password\":\"$2y$10$UEOApJry7rjtTdxnj.4Kq.\\/JM6NrWfteCuh3cDECaGQZDc8Tu7oVO\",\"password_confirmation\":\"$2y$10$UEOApJry7rjtTdxnj.4Kq.\\/JM6NrWfteCuh3cDECaGQZDc8Tu7oVO\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"M8GEFMhWdvtlbudRU8qpArQwcYp35PWCSnQG9xnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/users\"}', '2020-06-07 05:38:19', '2020-06-07 05:38:19');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/auth/users', 'GET', '192.168.10.1', '[]', '2020-06-07 05:38:20', '2020-06-07 05:38:20');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/auth/users', 'GET', '192.168.10.1', '[]', '2020-06-07 05:38:27', '2020-06-07 05:38:27');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/auth/users/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:38:30', '2020-06-07 05:38:30');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:38:35', '2020-06-07 05:38:35');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:38:37', '2020-06-07 05:38:37');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:38:39', '2020-06-07 05:38:39');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:38:40', '2020-06-07 05:38:40');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:38:45', '2020-06-07 05:38:45');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:38:46', '2020-06-07 05:38:46');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:39:05', '2020-06-07 05:39:05');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:39:29', '2020-06-07 05:39:29');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:39:37', '2020-06-07 05:39:37');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:39:49', '2020-06-07 05:39:49');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:39:52', '2020-06-07 05:39:52');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/auth/logout', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:39:57', '2020-06-07 05:39:57');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:47:21', '2020-06-07 05:47:21');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:47:31', '2020-06-07 05:47:31');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:47:33', '2020-06-07 05:47:33');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2020-06-07 05:47:35', '2020-06-07 05:47:35');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2020-06-07 05:47:37', '2020-06-07 05:47:37');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:47:39', '2020-06-07 05:47:39');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:48:40', '2020-06-07 05:48:40');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:48:44', '2020-06-07 05:48:44');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:49:48', '2020-06-07 05:49:48');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:49:51', '2020-06-07 05:49:51');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/auth/logout', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:49:54', '2020-06-07 05:49:54');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:50:01', '2020-06-07 05:50:01');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:50:11', '2020-06-07 05:50:11');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:50:14', '2020-06-07 05:50:14');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:50:33', '2020-06-07 05:50:33');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:50:38', '2020-06-07 05:50:38');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:50:43', '2020-06-07 05:50:43');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/auth/users/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:50:44', '2020-06-07 05:50:44');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:53:24', '2020-06-07 05:53:24');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:53:30', '2020-06-07 05:53:30');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:53:35', '2020-06-07 05:53:35');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/auth/users/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:53:36', '2020-06-07 05:53:36');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/auth/users', 'POST', '192.168.10.1', '{\"username\":\"\\u4f60\\u731c\",\"name\":\"lin\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"aiMwOf2SDtmY0OmA8fM267qTQqSGziM1xOfR8Hxd\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/users\"}', '2020-06-07 05:54:39', '2020-06-07 05:54:39');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/auth/users/create', 'GET', '192.168.10.1', '[]', '2020-06-07 05:54:39', '2020-06-07 05:54:39');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/auth/users/create', 'GET', '192.168.10.1', '[]', '2020-06-07 05:55:32', '2020-06-07 05:55:32');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/auth/users', 'POST', '192.168.10.1', '{\"username\":\"rt\",\"name\":\"rt\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"aiMwOf2SDtmY0OmA8fM267qTQqSGziM1xOfR8Hxd\"}', '2020-06-07 05:56:00', '2020-06-07 05:56:00');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/auth/users', 'GET', '192.168.10.1', '[]', '2020-06-07 05:56:00', '2020-06-07 05:56:00');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/auth/logout', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:56:29', '2020-06-07 05:56:29');
INSERT INTO `admin_operation_log` VALUES (130, 2, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:56:37', '2020-06-07 05:56:37');
INSERT INTO `admin_operation_log` VALUES (131, 2, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:56:39', '2020-06-07 05:56:39');
INSERT INTO `admin_operation_log` VALUES (132, 2, 'admin/auth/logout', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 05:57:06', '2020-06-07 05:57:06');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 05:57:13', '2020-06-07 05:57:13');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-06-07 13:45:24', '2020-06-07 13:45:24');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 13:45:30', '2020-06-07 13:45:30');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 13:45:32', '2020-06-07 13:45:32');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 13:45:49', '2020-06-07 13:45:49');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/profucts\",\"roles\":[null],\"permission\":null,\"_token\":\"xYdSDk2Kouoyt4ygwTfi9cjJLYrIjyUg2rBJjZwn\"}', '2020-06-07 13:46:38', '2020-06-07 13:46:38');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 13:46:38', '2020-06-07 13:46:38');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 13:46:55', '2020-06-07 13:46:55');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/auth/menu/8/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 13:47:28', '2020-06-07 13:47:28');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 13:47:34', '2020-06-07 13:47:34');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/auth/menu/9/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 13:47:36', '2020-06-07 13:47:36');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/auth/menu/9', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"xYdSDk2Kouoyt4ygwTfi9cjJLYrIjyUg2rBJjZwn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2020-06-07 13:47:44', '2020-06-07 13:47:44');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-06-07 13:47:44', '2020-06-07 13:47:44');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2020-06-07 13:48:02', '2020-06-07 13:48:02');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 13:48:05', '2020-06-07 13:48:05');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 13:48:07', '2020-06-07 13:48:07');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/products/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 13:56:20', '2020-06-07 13:56:20');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2020-06-07 13:56:23', '2020-06-07 13:56:23');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2020-06-07 13:56:25', '2020-06-07 13:56:25');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2020-06-07 13:58:52', '2020-06-07 13:58:52');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2020-06-07 13:58:55', '2020-06-07 13:58:55');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2020-06-07 13:59:19', '2020-06-07 13:59:19');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2020-06-07 13:59:21', '2020-06-07 13:59:21');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2020-06-07 14:08:07', '2020-06-07 14:08:07');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2020-06-07 14:08:09', '2020-06-07 14:08:09');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2020-06-07 14:08:10', '2020-06-07 14:08:10');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2020-06-07 14:08:42', '2020-06-07 14:08:42');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2020-06-07 14:08:44', '2020-06-07 14:08:44');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/products', 'POST', '192.168.10.1', '{\"title\":\"ThinkpsdT590\",\"description\":\"<p>Thinkpad\\u5de5\\u7a0b\\u5e08\\u7cfb\\u5217<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"new_1\":{\"title\":\"i5|8G|256GSSD|T1000i5|8G|256GSSD|T1000\",\"description\":\"\\u9177\\u777f\\u5341\\u4ee3 i5|8G|256GSSD|T1000i5|8G|256GSSD|T1000\",\"price\":\"9999\",\"stock\":\"1000\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"title\":\"i7|1TB|RTX4000 8G|\\u4f4d\\u5bbd256\",\"description\":\"\\u9177\\u777f13\\u4ee3 i7|1TB|RTX4000 8G|\\u4f4d\\u5bbd256\",\"price\":\"13999\",\"stock\":\"99\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"xYdSDk2Kouoyt4ygwTfi9cjJLYrIjyUg2rBJjZwn\"}', '2020-06-07 14:15:38', '2020-06-07 14:15:38');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2020-06-07 14:15:39', '2020-06-07 14:15:39');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 14:19:28', '2020-06-07 14:19:28');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/products/1', 'PUT', '192.168.10.1', '{\"title\":\"ThinkpsdT595\",\"description\":\"<p>Thinkpad\\u5de5\\u7a0b\\u5e08\\u7cfb\\u5217<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"i5|8G|256GSSD|T1000i5|8G|256GSSD|T1000\",\"description\":\"\\u9177\\u777f\\u5341\\u4ee3 i5|8G|256GSSD|T1000i5|8G|256GSSD|T1000\",\"price\":\"9999.00\",\"stock\":\"1000\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"i7|1TB|RTX4000 8G|\\u4f4d\\u5bbd256\",\"description\":\"\\u9177\\u777f13\\u4ee3 i7|1TB|RTX4000 8G|\\u4f4d\\u5bbd256\",\"price\":\"13999.00\",\"stock\":\"99\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"xYdSDk2Kouoyt4ygwTfi9cjJLYrIjyUg2rBJjZwn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2020-06-07 14:21:19', '2020-06-07 14:21:19');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2020-06-07 14:21:19', '2020-06-07 14:21:19');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2020-06-07 14:22:16', '2020-06-07 14:22:16');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2020-06-07 15:05:58', '2020-06-07 15:05:58');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/products/5/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 15:06:06', '2020-06-07 15:06:06');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 15:39:10', '2020-06-07 15:39:10');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2020-06-07 15:39:14', '2020-06-07 15:39:14');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/products/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-07 15:39:17', '2020-06-07 15:39:17');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/products/2', 'PUT', '192.168.10.1', '{\"title\":\"omnis\",\"description\":\"<p>Omnis inventore eum quia dolore.<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"3\":{\"title\":\"consequuntur\",\"description\":\"Maxime assumenda laudantium vel veritatis assumenda.\",\"price\":\"2256.00\",\"stock\":\"72566\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"title\":\"ex\",\"description\":\"Quis iusto doloribus minus.\",\"price\":\"3286.00\",\"stock\":\"87858\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"title\":\"recusandae\",\"description\":\"Cum ratione rem fugiat dolor.\",\"price\":\"1602.00\",\"stock\":\"61846\",\"id\":\"5\",\"_remove_\":\"0\"}},\"_token\":\"xYdSDk2Kouoyt4ygwTfi9cjJLYrIjyUg2rBJjZwn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2020-06-07 15:39:27', '2020-06-07 15:39:27');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2020-06-07 15:39:27', '2020-06-07 15:39:27');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (6, '用戶管理', 'users', '', '/users*', '2020-06-07 05:32:03', '2020-06-07 05:32:03');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 3, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 4, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 6, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, '2020-06-07 13:50:25', '2020-06-07 13:50:28');
INSERT INTO `admin_role_users` VALUES (2, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-06-07 03:27:02', '2020-06-07 03:27:02');
INSERT INTO `admin_roles` VALUES (2, '运营', 'operation', '2020-06-07 05:36:28', '2020-06-07 05:36:28');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$UEOApJry7rjtTdxnj.4Kq./JM6NrWfteCuh3cDECaGQZDc8Tu7oVO', 'Administrator', NULL, 'jq5ItZKApe472paqgt3rzLXFGEPPi5kw2aetPQLC8iUJXaKyXwSGK2NNwSNd', '2020-06-07 03:27:02', '2020-06-07 03:27:02');
INSERT INTO `admin_users` VALUES (2, 'rt', '$2y$10$C4nJW2eJ0gJsJ7S9j4cA4.IWKMtDA8piLMum.gWHMKGYGFSqKJDPW', 'rt', 'images/timg.jpg', 'e1Rif979ethQMABm1Z3ngIbmQGdnWTfggjxp28SINlvLglFQZwoHehJAYoPj', '2020-06-07 05:56:00', '2020-06-07 05:56:00');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_05_21_144759_create_user_addresses_table', 2);
INSERT INTO `migrations` VALUES (5, '2016_01_04_173148_create_admin_tables', 3);
INSERT INTO `migrations` VALUES (6, '2020_06_07_132621_create_products_table', 4);
INSERT INTO `migrations` VALUES (7, '2020_06_07_132700_create_product_skus_table', 4);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_skus
-- ----------------------------
DROP TABLE IF EXISTS `product_skus`;
CREATE TABLE `product_skus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_skus_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `product_skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_skus
-- ----------------------------
INSERT INTO `product_skus` VALUES (3, 'consequuntur', 'Maxime assumenda laudantium vel veritatis assumenda.', 2256.00, 72566, 2, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (4, 'ex', 'Quis iusto doloribus minus.', 3286.00, 87858, 2, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (5, 'recusandae', 'Cum ratione rem fugiat dolor.', 1602.00, 61846, 2, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (6, 'quibusdam', 'Minima eligendi aperiam ut vel fugit.', 905.00, 46603, 3, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (7, 'numquam', 'Dolor delectus atque corporis.', 6478.00, 62353, 3, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (8, 'assumenda', 'Est modi et et ipsam sit omnis voluptas.', 2932.00, 73834, 3, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (9, 'dolores', 'Labore dicta quos molestiae.', 1253.00, 81150, 4, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (10, 'mollitia', 'Neque hic sunt rem aspernatur.', 7224.00, 40670, 4, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (11, 'autem', 'Non excepturi quidem praesentium enim.', 5831.00, 78387, 4, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (12, 'facere', 'A nulla quia aut maiores corrupti.', 5539.00, 32959, 5, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (13, 'deserunt', 'Aut veritatis dolorum ab mollitia quibusdam inventore.', 1058.00, 76165, 5, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (14, 'ea', 'Deleniti similique rerum omnis pariatur.', 5038.00, 29336, 5, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (15, 'illum', 'Blanditiis sunt a beatae ratione in enim eos.', 5534.00, 27685, 6, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (16, 'cum', 'Dolorum aut illo corporis aut rerum et.', 3951.00, 23683, 6, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (17, 'itaque', 'Minima quia laudantium omnis accusantium.', 962.00, 99192, 6, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (18, 'recusandae', 'Quia tenetur explicabo explicabo sed eum recusandae eos.', 809.00, 9004, 7, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (19, 'asperiores', 'Et voluptas et consequuntur consequuntur quod repudiandae natus.', 4270.00, 59312, 7, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (20, 'dignissimos', 'Deleniti et natus id non quo ut.', 4534.00, 69975, 7, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (21, 'consectetur', 'Ea qui dicta excepturi asperiores dolor animi consequuntur.', 3030.00, 17987, 8, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (22, 'praesentium', 'Dolores sint molestiae ipsum ipsa.', 7474.00, 20218, 8, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (23, 'deserunt', 'Id iste sint deleniti vitae similique atque.', 3142.00, 36401, 8, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (24, 'molestias', 'Cumque est quibusdam possimus.', 7615.00, 60926, 9, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (25, 'sunt', 'Optio animi laboriosam dignissimos porro aut sed repellat.', 6080.00, 27201, 9, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (26, 'ratione', 'Quasi ut non expedita aut commodi eos quam.', 9694.00, 9595, 9, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (27, 'et', 'Quo itaque temporibus nam dolore autem ut labore.', 9582.00, 91645, 10, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (28, 'id', 'Deserunt minus magnam consequatur beatae.', 8891.00, 46387, 10, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (29, 'deserunt', 'Modi iusto blanditiis commodi qui.', 2139.00, 56376, 10, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (30, 'cupiditate', 'Vel aut harum quaerat et et animi et.', 8092.00, 65394, 11, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (31, 'repudiandae', 'Dolores officia sit ad molestias ipsam consequatur.', 697.00, 23003, 11, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (32, 'qui', 'Quae rerum omnis soluta suscipit qui praesentium laborum.', 2892.00, 20884, 11, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (33, 'accusamus', 'Autem aperiam accusantium ipsam iste sed rerum perferendis.', 6072.00, 10104, 12, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (34, 'officia', 'Ea velit voluptate repellendus tempora omnis autem harum eum.', 3720.00, 67158, 12, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (35, 'debitis', 'Et reprehenderit ipsam eum at in.', 9275.00, 4907, 12, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (36, 'adipisci', 'Labore distinctio mollitia fugit nihil.', 4157.00, 70698, 13, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (37, 'quas', 'Et accusamus laborum cum.', 3785.00, 17243, 13, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (38, 'officiis', 'Rerum eligendi quia dolore rerum.', 2572.00, 32941, 13, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (39, 'incidunt', 'Culpa architecto debitis et nisi.', 6234.00, 61453, 14, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (40, 'hic', 'Explicabo dolore ab mollitia mollitia consequatur aperiam.', 6363.00, 64490, 14, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (41, 'dolor', 'Est dolores blanditiis quaerat aliquam quia.', 7261.00, 33300, 14, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (42, 'nihil', 'Laborum expedita aut similique voluptatem et laborum ullam sed.', 7472.00, 96717, 15, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (43, 'id', 'Aut nihil quaerat quia maiores id autem.', 3209.00, 41951, 15, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (44, 'corrupti', 'Nobis et dignissimos ea autem.', 7648.00, 97642, 15, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (45, 'odio', 'Maxime eligendi alias aut cumque doloremque deleniti amet.', 1673.00, 18653, 16, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (46, 'ut', 'Et excepturi voluptas animi harum eaque libero inventore.', 7048.00, 73289, 16, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (47, 'commodi', 'Nemo sunt illum temporibus accusamus qui praesentium optio.', 7287.00, 18159, 16, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `product_skus` VALUES (48, 'eius', 'Cupiditate dolorum explicabo repudiandae sed.', 8003.00, 42797, 17, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (49, 'rem', 'Quas in est sunt reiciendis nam.', 5976.00, 93728, 17, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (50, 'maiores', 'Laudantium tenetur quis et mollitia eius omnis.', 3512.00, 42307, 17, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (51, 'aut', 'Ut sint modi voluptas ex quasi quod corporis eos.', 5537.00, 1636, 18, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (52, 'quis', 'Rerum reprehenderit aliquid harum velit.', 5522.00, 48073, 18, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (53, 'vel', 'Officia non id et aliquam esse.', 5602.00, 37410, 18, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (54, 'nobis', 'Possimus aut beatae ex et.', 6452.00, 45716, 19, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (55, 'et', 'Qui in quo aut architecto voluptate.', 4843.00, 79167, 19, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (56, 'unde', 'Et esse quidem accusamus distinctio illum deleniti.', 7653.00, 58896, 19, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (57, 'doloribus', 'Quos ut ea voluptatem assumenda aliquam id quo.', 3078.00, 58207, 20, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (58, 'rerum', 'Ipsum dignissimos consequatur aut quidem ab.', 3785.00, 825, 20, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (59, 'ut', 'Tempore aut ea iusto nihil cupiditate qui explicabo.', 7456.00, 14038, 20, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (60, 'ipsam', 'Quae nemo molestias sed amet et sint quos.', 2208.00, 13134, 21, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (61, 'molestias', 'Beatae voluptatem dignissimos molestias inventore accusamus.', 5747.00, 94006, 21, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (62, 'non', 'Voluptatem ut libero voluptatem ipsa ea enim.', 4348.00, 29891, 21, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (63, 'culpa', 'Et dolor aspernatur et quis ea ab.', 3415.00, 93388, 22, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (64, 'doloribus', 'Assumenda enim non doloremque quia autem ut nihil natus.', 7011.00, 70316, 22, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (65, 'quaerat', 'Officia ipsam deserunt ab delectus ab iste exercitationem voluptate.', 6938.00, 59922, 22, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (66, 'qui', 'Voluptate nemo alias harum est ut.', 8450.00, 45215, 23, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (67, 'ab', 'Dolorem perspiciatis voluptate ipsum.', 267.00, 15850, 23, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (68, 'qui', 'Sit natus debitis aut ut hic.', 9855.00, 41909, 23, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (69, 'et', 'Et impedit sit qui.', 3768.00, 69465, 24, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (70, 'aliquid', 'Modi modi voluptatem dignissimos praesentium ducimus vitae nobis.', 122.00, 6251, 24, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (71, 'voluptatem', 'Sunt cupiditate esse eos maiores.', 1525.00, 93520, 24, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (72, 'maiores', 'Ut voluptatem est modi ipsam a ut rerum.', 6506.00, 93196, 25, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (73, 'accusamus', 'Harum nihil voluptas aut sapiente.', 7750.00, 56891, 25, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (74, 'voluptatem', 'Qui laborum voluptates qui officiis dolores minus.', 4591.00, 43565, 25, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (75, 'ducimus', 'Laboriosam velit est omnis quidem.', 4996.00, 22157, 26, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (76, 'sunt', 'Quibusdam cumque eos enim facere.', 7474.00, 96681, 26, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (77, 'cumque', 'Temporibus voluptas nam ipsa rerum fugiat atque sed.', 6221.00, 1650, 26, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (78, 'quaerat', 'Tempora vel neque expedita molestiae soluta maxime.', 6509.00, 13057, 27, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (79, 'sit', 'Expedita architecto amet eum sunt laudantium nostrum sit.', 8779.00, 11308, 27, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (80, 'aperiam', 'Et culpa sed non necessitatibus possimus sunt.', 1378.00, 77516, 27, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (81, 'rem', 'Aut ab vitae sit odit amet veniam.', 4405.00, 73730, 28, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (82, 'suscipit', 'Vel amet magnam labore ut nemo amet.', 2885.00, 26844, 28, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (83, 'perferendis', 'Culpa esse aut eligendi.', 6927.00, 95921, 28, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (84, 'porro', 'Quis aut corporis nihil maiores.', 6916.00, 85430, 29, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (85, 'aut', 'Ut dolores sit omnis necessitatibus.', 7991.00, 72531, 29, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (86, 'ea', 'Veritatis incidunt id placeat et minima culpa et.', 9429.00, 83503, 29, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (87, 'alias', 'Omnis voluptas illo cupiditate necessitatibus.', 5435.00, 90618, 30, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (88, 'quod', 'Facere nam necessitatibus ut.', 735.00, 33912, 30, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (89, 'ea', 'Est dolores delectus aliquid.', 4402.00, 64354, 30, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (90, 'cum', 'Doloribus et est nemo cum sequi.', 4062.00, 31930, 31, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (91, 'natus', 'Vel dolor ut ex quo voluptate ratione.', 212.00, 7103, 31, '2020-06-07 14:43:37', '2020-06-07 14:43:37');
INSERT INTO `product_skus` VALUES (92, 'qui', 'Aut sit explicabo et mollitia consequatur assumenda iure.', 1329.00, 64324, 31, '2020-06-07 14:43:37', '2020-06-07 14:43:37');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT 1,
  `rating` double(8, 2) NOT NULL DEFAULT 5.00,
  `sold_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `review_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (2, 'omnis', '<p>Omnis inventore eum quia dolore.</p>', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 0, 5.00, 0, 0, 1602.00, '2020-06-07 14:43:36', '2020-06-07 15:39:27');
INSERT INTO `products` VALUES (3, 'eius', 'Laboriosam iure placeat est vitae est eveniet.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 3.00, 0, 0, 905.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (4, 'eum', 'Reiciendis aut officiis et.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 4.00, 0, 0, 1253.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (5, 'iste', 'Sapiente et ex quam voluptas illum impedit.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 4.00, 0, 0, 1058.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (6, 'doloremque', 'Nihil est id vel ab.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 1.00, 0, 0, 962.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (7, 'delectus', 'Numquam nostrum voluptatem voluptatem veniam fuga fugit.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 4.00, 0, 0, 809.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (8, 'eius', 'Labore id eum rem iure suscipit.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 1.00, 0, 0, 3030.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (9, 'illo', 'Aliquid vero neque perspiciatis aut.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 5.00, 0, 0, 6080.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (10, 'inventore', 'Ullam dolores expedita ratione repudiandae molestiae.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 3.00, 0, 0, 2139.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (11, 'possimus', 'Esse voluptatem architecto aut voluptatem.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 5.00, 0, 0, 697.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (12, 'dolorum', 'Quia esse repellat laborum excepturi maiores.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 2.00, 0, 0, 3720.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (13, 'pariatur', 'Suscipit optio a ut distinctio nam omnis non harum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 0.00, 0, 0, 2572.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (14, 'quia', 'Distinctio ipsam ea fugit ut rerum soluta voluptatem commodi.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 5.00, 0, 0, 6234.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (15, 'odio', 'Qui rerum magni quibusdam et ut omnis fugiat.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 2.00, 0, 0, 3209.00, '2020-06-07 14:43:36', '2020-06-07 14:43:36');
INSERT INTO `products` VALUES (16, 'distinctio', 'Blanditiis adipisci sed delectus tenetur dolores nulla est.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 4.00, 0, 0, 1673.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (17, 'harum', 'Mollitia aut at velit minima at sit aspernatur.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 3.00, 0, 0, 3512.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (18, 'et', 'Officia nihil quia nesciunt inventore sint aliquid dolor corrupti.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 4.00, 0, 0, 5522.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (19, 'iure', 'Reiciendis rem eum nesciunt dolores.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 3.00, 0, 0, 4843.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (20, 'expedita', 'Velit dolorem totam qui debitis qui.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 2.00, 0, 0, 3078.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (21, 'nemo', 'Consequuntur quae quo ullam temporibus dolorem illum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 2.00, 0, 0, 2208.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (22, 'dolores', 'Harum voluptatum molestiae quasi non nemo dolorum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 3.00, 0, 0, 3415.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (23, 'nihil', 'Soluta et reprehenderit rem autem quia.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 0.00, 0, 0, 267.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (24, 'quas', 'Nesciunt laudantium explicabo magni laborum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 4.00, 0, 0, 122.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (25, 'vero', 'Impedit animi molestiae est quasi.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 5.00, 0, 0, 4591.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (26, 'consequatur', 'Vitae quibusdam natus ipsam.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 0.00, 0, 0, 4996.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (27, 'quam', 'Sint quam perferendis et neque possimus culpa eos.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 5.00, 0, 0, 1378.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (28, 'ipsam', 'Qui et possimus autem.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 2.00, 0, 0, 2885.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (29, 'hic', 'Quo iure distinctio quos ut dolor dignissimos.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 2.00, 0, 0, 6916.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (30, 'sed', 'Dolorum excepturi voluptas quidem voluptate a tempore nemo optio.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 5.00, 0, 0, 735.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');
INSERT INTO `products` VALUES (31, 'voluptate', 'Quaerat libero commodi fugiat.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 0.00, 0, 0, 212.00, '2020-06-07 14:43:36', '2020-06-07 14:43:37');

-- ----------------------------
-- Table structure for user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_addresses_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES (3, 1, '江苏省', '苏州市', '相城区', '第13街道第383号', 244200, '石毅', '17095358465', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (4, 1, '江苏省', '苏州市', '相城区', '第20街道第91号', 373100, '应华', '15759889241', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (5, 1, '北京市', '市辖区', '东城区', '第23街道第257号', 482400, '鄢晧', '15512144044', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (6, 1, '河北省', '石家庄市', '长安区', '第64街道第999号', 234900, '卢博', '15810412529', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (7, 1, '广东省', '深圳市', '福田区', '第20街道第658号', 844400, '嵺正诚', '18039336849', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (8, 1, '河北省', '石家庄市', '长安区', '第41街道第608号', 27300, '糜哲彦', '15637649344', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (9, 1, '江苏省', '南京市', '浦口区', '第6街道第414号', 395600, '俞宁', '17079648338', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (10, 1, '河北省', '石家庄市', '长安区', '第13街道第923号', 252800, '叶芳', '17076169649', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (11, 1, '北京市', '市辖区', '东城区', '第97街道第871号', 432500, '伏芬', '17853862297', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (12, 1, '江苏省', '南京市', '浦口区', '第75街道第690号', 296100, '覃霞', '15230955167', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (13, 1, '河北省', '石家庄市', '长安区', '第8街道第920号', 347000, '佟淑珍', '17096290460', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (14, 1, '河北省', '石家庄市', '长安区', '第89街道第284号', 313000, '乔依琳', '13309662450', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (15, 1, '江苏省', '南京市', '浦口区', '第15街道第365号', 197400, '费春梅', '17095306793', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (16, 1, '北京市', '市辖区', '东城区', '第1街道第189号', 481600, '嵺秀华', '13861364099', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (17, 1, '河北省', '石家庄市', '长安区', '第49街道第754号', 744900, '鄢桂兰', '18310322772', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (18, 1, '江苏省', '南京市', '浦口区', '第34街道第634号', 447800, '董桂珍', '13177355205', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (19, 1, '广东省', '深圳市', '福田区', '第16街道第822号', 496000, '巫艳', '15338292167', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (20, 1, '北京市', '市辖区', '东城区', '第37街道第847号', 705700, '仇凤兰', '15168054381', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (21, 1, '广东省', '深圳市', '福田区', '第9街道第897号', 744600, '潘瑞', '15276503138', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');
INSERT INTO `user_addresses` VALUES (22, 1, '江苏省', '苏州市', '相城区', '第27街道第839号', 27600, '曹志强', '13903536045', NULL, '2020-06-07 03:06:13', '2020-06-07 03:06:13');

-- ----------------------------
-- Table structure for user_favorite_products
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_products`;
CREATE TABLE `user_favorite_products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_favorite_products_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `user_favorite_products_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `user_favorite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_favorite_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_favorite_products
-- ----------------------------
INSERT INTO `user_favorite_products` VALUES (4, 1, 3, '2020-06-07 16:21:17', '2020-06-07 16:21:17');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'lin123', '522968424@qq.com', '2020-05-21 14:44:32', '$2y$10$d8YC.QC2t8aO7Pf3rW5P3uAgBOL6b4.7GbaVDz9ZeOh9APMRaYmc.', 'tD25QIllGVJKgTO4sY8NnYQ1LCf9cqUfSrD8mxgFDWJYCHCE6HAF91jurAyr', '2020-05-21 14:34:32', '2020-06-02 13:16:49');
INSERT INTO `users` VALUES (2, 'lin1234', 'lin@qq.com', '2020-05-21 14:46:33', '$2y$10$tqM9jEV9OJFOgFBS3CnLtu2d9SZ6liKYgeeFvxkJLz9gmLNiwYwAe', NULL, '2020-05-21 14:45:56', '2020-05-21 14:46:33');

SET FOREIGN_KEY_CHECKS = 1;
