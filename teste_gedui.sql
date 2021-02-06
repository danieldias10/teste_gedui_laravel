/*
 Navicat Premium Data Transfer

 Source Server         : MySQL 8 localhost
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3311
 Source Schema         : teste_gedui

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 05/02/2021 13:07:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('0447de3907e8a7aa50b9dd8e8a1d398d091f0d40e9fdf492d58540dfe7a0b9508bcad72296de5db0', 1, 1, 'token', '[]', 0, '2021-01-28 04:23:04', '2021-01-28 04:23:04', '2021-02-07 04:23:04');
INSERT INTO `oauth_access_tokens` VALUES ('1f8804d0c210f19cbd7f5de394083ace3ea09a2439172e44bcd34ec594778db7cb3f3e7ea44486c2', 1, 1, 'token', '[]', 0, '2021-01-28 04:20:14', '2021-01-28 04:20:14', '2021-02-07 04:20:13');
INSERT INTO `oauth_access_tokens` VALUES ('24957cf463723731e532c4935f65284393947b81ce0748da29c6a1df669b2258e8a7abbc4efdca52', 1, 1, 'token', '[]', 0, '2021-01-28 04:07:09', '2021-01-28 04:07:09', '2021-02-07 04:07:09');
INSERT INTO `oauth_access_tokens` VALUES ('25bc356a0b7659cda9715636ecd6b4d1d4271a76749a4eded80b61494bca14d9ab61013e5d441734', 1, 1, 'token', '[]', 0, '2021-01-28 15:43:01', '2021-01-28 15:43:01', '2021-02-07 15:43:01');
INSERT INTO `oauth_access_tokens` VALUES ('31b9defb207ca89a55e05654ffc78758fa68f2b07e685ceab24ffd091989f9067556d0b334202d94', 1, 1, 'token', '[]', 0, '2021-01-28 04:30:56', '2021-01-28 04:30:56', '2021-02-07 04:30:55');
INSERT INTO `oauth_access_tokens` VALUES ('31cb70d6c1ae7db730423319c1b020a66f416cfab5826276065634f37bce9ae50fb20d6bb860311c', 1, 1, 'token', '[]', 1, '2021-02-05 12:30:50', '2021-02-05 12:30:50', '2021-02-15 12:30:50');
INSERT INTO `oauth_access_tokens` VALUES ('35dee9bbf5c178050ac27e16fd755867dd624b028c5f5cb7ebac372aee02c7d5b24d8a50cfede11d', 1, 1, 'token', '[]', 1, '2021-01-28 07:48:42', '2021-01-28 07:48:42', '2021-02-07 07:48:41');
INSERT INTO `oauth_access_tokens` VALUES ('39a672ee9d5bbb5ea17b5f1da169164c460fb95fa7a2e78cfde8ec7fabed218fa8520ce01f772d92', 1, 1, 'token', '[]', 0, '2021-01-28 04:35:31', '2021-01-28 04:35:31', '2021-02-07 04:35:31');
INSERT INTO `oauth_access_tokens` VALUES ('3aeac908f4b385eb19ac0bdb80ed28f906b03d4c0b8c3719265eff678b857b1544e0c39f3a333e50', 1, 1, 'token', '[]', 0, '2021-01-28 07:57:11', '2021-01-28 07:57:11', '2021-02-07 07:57:11');
INSERT INTO `oauth_access_tokens` VALUES ('3f78b93645d809beb5b9eedf69a6031b0c82de896379e8a5a9830e1fbb2a896d7f48bc4bb9c03675', 1, 1, 'token', '[]', 0, '2021-01-28 04:33:55', '2021-01-28 04:33:55', '2021-02-07 04:33:55');
INSERT INTO `oauth_access_tokens` VALUES ('42750fcd7164195027ae9489e71cd1ed6183851be9430596e16896aa2e8cad8d0aebca3a5761d135', 1, 1, 'token', '[]', 1, '2021-01-28 06:45:05', '2021-01-28 06:45:05', '2021-02-07 06:45:04');
INSERT INTO `oauth_access_tokens` VALUES ('448f81efbe94dfe49b7808816ce03f410ef546494ca0f747a15de25ec8841c4cd94e5173c956e5a4', 1, 1, 'token', '[]', 0, '2021-01-28 03:57:00', '2021-01-28 03:57:00', '2021-02-07 03:57:00');
INSERT INTO `oauth_access_tokens` VALUES ('52748568100c71efa7f9afa188d8741d1f22a06a908a0b4a700d363efcad2c54348cbc6ec1050d26', 1, 1, 'token', '[]', 0, '2021-01-28 04:18:32', '2021-01-28 04:18:32', '2021-02-07 04:18:32');
INSERT INTO `oauth_access_tokens` VALUES ('569666af93c98871184c4fb40162dd4c32631b0681d738232a9f3d79b210e6c2cd27428ece26e335', 1, 1, 'token', '[]', 0, '2021-01-28 03:51:07', '2021-01-28 03:51:07', '2021-02-07 03:51:06');
INSERT INTO `oauth_access_tokens` VALUES ('576c741b9d72d04119a4990ae2d605d0870fa8d128331d78346170e9759d6b1e380a7bf84ae3bed6', 1, 1, 'token', '[]', 0, '2021-01-28 04:50:45', '2021-01-28 04:50:45', '2021-02-07 04:50:45');
INSERT INTO `oauth_access_tokens` VALUES ('5817531cf998364cd2b1b79777650ddd248c385d52dbe57ff2e235e8cc952d78fd39b7d098c555bd', 1, 1, 'token', '[]', 0, '2021-01-28 07:57:16', '2021-01-28 07:57:16', '2021-02-07 07:57:16');
INSERT INTO `oauth_access_tokens` VALUES ('639de3eb7dc118133172d1cb0885dec2f9852e1136e9399b71ccc54bf595ceee38e648bb3840f43c', 1, 1, 'token', '[]', 0, '2021-01-28 04:21:09', '2021-01-28 04:21:09', '2021-02-07 04:21:09');
INSERT INTO `oauth_access_tokens` VALUES ('72d148aea7788d7c23459d7662e7a10ee2e7f0a16120923749b42090c4723cb1f88849e9227ec8c8', 1, 1, 'token', '[]', 0, '2021-01-28 04:15:34', '2021-01-28 04:15:34', '2021-02-07 04:15:34');
INSERT INTO `oauth_access_tokens` VALUES ('9d82ded580b91d3b32f78a1e3b7c572ef7647c7b3343ef4f074d1b1c3722a1a003489f1c013c244c', 1, 1, 'token', '[]', 0, '2021-02-05 12:24:00', '2021-02-05 12:24:00', '2021-02-15 12:24:00');
INSERT INTO `oauth_access_tokens` VALUES ('be98afabf512ac94e2968a47975f6dfbfac67d33b35a985aa82aa1da89008cd75d2cb00f3133f831', 1, 1, 'token', '[]', 1, '2021-01-28 08:03:50', '2021-01-28 08:03:50', '2021-02-07 08:03:50');
INSERT INTO `oauth_access_tokens` VALUES ('cc09dbe2f028382e76c827b2cad483d865733192f46d4ace2022fdb62b6758a6155c003078518706', 1, 1, 'token', '[]', 1, '2021-01-28 07:57:18', '2021-01-28 07:57:18', '2021-02-07 07:57:18');
INSERT INTO `oauth_access_tokens` VALUES ('d02825ab82e97fdd42e5798c8d7d708eadce425ac387cbef31827455b07f4d285e16237718496130', 1, 1, 'token', '[]', 0, '2021-01-28 07:57:17', '2021-01-28 07:57:17', '2021-02-07 07:57:17');
INSERT INTO `oauth_access_tokens` VALUES ('d3f189ff34876ee7d499903fdbf7780bfe660e651d8ba03a4a993346ff08afcaf1ffdb8155533b43', 1, 1, 'token', '[]', 0, '2021-01-28 08:14:05', '2021-01-28 08:14:05', '2021-02-07 08:14:04');
INSERT INTO `oauth_access_tokens` VALUES ('ecc1a8d52edf64eadd02de3a933078d79ebd53f6a0643771f89a0d68850cc38fc37abfc236d0205b', 1, 1, 'token', '[]', 0, '2021-02-05 12:16:52', '2021-02-05 12:16:52', '2021-02-15 12:16:43');
INSERT INTO `oauth_access_tokens` VALUES ('f5c56e2d0b8716225db4d33aa78b3cded4ef4aece9d60c722d13a7e13c05f1d1168caabc924eeb61', 1, 1, 'token', '[]', 0, '2021-01-28 04:30:02', '2021-01-28 04:30:02', '2021-02-07 04:30:02');
INSERT INTO `oauth_access_tokens` VALUES ('f80b21110eef0525c385c6a4701030b5cca51a327c6e19c7dc3bc171654590fed25e03a5ebe12d91', 1, 1, 'token', '[]', 0, '2021-01-28 15:43:36', '2021-01-28 15:43:36', '2021-02-07 15:43:35');
INSERT INTO `oauth_access_tokens` VALUES ('f9a3ae1bc709d6c51097bb990a7ec4606ef5721a42c1584024318b9dc44412c800cfc2f0d77c546a', 1, 1, 'token', '[]', 0, '2021-01-28 04:21:29', '2021-01-28 04:21:29', '2021-02-07 04:21:28');
INSERT INTO `oauth_access_tokens` VALUES ('fcca9ecc1c40ac61c1b521a3945492da16ff4a23550615738df587fc6c4a520f89bc01296a8c353f', 1, 1, 'token', '[]', 0, '2021-01-28 04:29:18', '2021-01-28 04:29:18', '2021-02-07 04:29:17');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'upEqHSMipe74zTfA8SI2Wip27ZhbVyt1gbE4Bz1z', NULL, 'http://localhost', 1, 0, 0, '2021-01-28 05:12:18', '2021-01-28 05:12:18');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', 'EKNzq24KLtSuc4xUSD4o7seiEXMmzsRDybvG8d9u', 'users', 'http://localhost', 0, 1, 0, '2021-01-28 05:12:18', '2021-01-28 05:12:18');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2021-01-28 05:12:18', '2021-01-28 05:12:18');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

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
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'teste', 'teste@teste.com', NULL, '$2y$10$E0dwjnMF4WN0gnSb2lczHe.AnDwYhL42EKhgngdIT.MPHubXKx4ji', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
