/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : smarthome

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 25/10/2022 17:51:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rights
-- ----------------------------
DROP TABLE IF EXISTS `rights`;
CREATE TABLE `rights`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rights
-- ----------------------------
INSERT INTO `rights` VALUES (1, 'r1', '管理员');
INSERT INTO `rights` VALUES (2, 'r2', '普通用户');

-- ----------------------------
-- Table structure for sensor
-- ----------------------------
DROP TABLE IF EXISTS `sensor`;
CREATE TABLE `sensor`  (
  `id` double NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sensor_value` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 481490 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sensor
-- ----------------------------
INSERT INTO `sensor` VALUES (4801, 'Illumination', '2022-10-19 09:26:41', 72);
INSERT INTO `sensor` VALUES (4802, 'Illumination', '2022-10-19 09:26:44', 86);
INSERT INTO `sensor` VALUES (4803, 'Illumination', '2022-10-19 09:26:47', 95);
INSERT INTO `sensor` VALUES (4804, 'Illumination', '2022-10-19 09:26:50', 85);
INSERT INTO `sensor` VALUES (4805, 'Illumination', '2022-10-19 09:26:53', 84);
INSERT INTO `sensor` VALUES (4806, 'Illumination', '2022-10-19 09:26:56', 96);
INSERT INTO `sensor` VALUES (4807, 'Illumination', '2022-10-19 09:26:59', 100);
INSERT INTO `sensor` VALUES (4808, 'Illumination', '2022-10-19 09:27:02', 101);
INSERT INTO `sensor` VALUES (4809, 'Illumination', '2022-10-19 09:27:05', 100);
INSERT INTO `sensor` VALUES (4810, 'Illumination', '2022-10-19 09:27:08', 101);
INSERT INTO `sensor` VALUES (4811, 'Illumination', '2022-10-19 09:27:11', 97);
INSERT INTO `sensor` VALUES (4812, 'Illumination', '2022-10-19 09:27:14', 77);
INSERT INTO `sensor` VALUES (4813, 'Illumination', '2022-10-19 09:27:17', 77);
INSERT INTO `sensor` VALUES (4814, 'Illumination', '2022-10-19 09:27:20', 108);
INSERT INTO `sensor` VALUES (4815, 'Illumination', '2022-10-19 09:27:23', 95);
INSERT INTO `sensor` VALUES (4816, 'Illumination', '2022-10-19 09:27:26', 94);
INSERT INTO `sensor` VALUES (4817, 'Illumination', '2022-10-19 09:27:29', 94);
INSERT INTO `sensor` VALUES (4818, 'Illumination', '2022-10-19 09:27:32', 91);
INSERT INTO `sensor` VALUES (4819, 'Illumination', '2022-10-19 09:27:35', 93);
INSERT INTO `sensor` VALUES (4820, 'Illumination', '2022-10-19 09:27:38', 93);
INSERT INTO `sensor` VALUES (4821, 'Illumination', '2022-10-19 09:27:41', 95);
INSERT INTO `sensor` VALUES (4822, 'Illumination', '2022-10-19 09:27:44', 93);
INSERT INTO `sensor` VALUES (4823, 'Illumination', '2022-10-19 09:27:47', 95);
INSERT INTO `sensor` VALUES (4824, 'Illumination', '2022-10-19 09:27:50', 92);
INSERT INTO `sensor` VALUES (4825, 'Illumination', '2022-10-19 09:27:53', 93);
INSERT INTO `sensor` VALUES (4826, 'Illumination', '2022-10-19 09:27:56', 97);
INSERT INTO `sensor` VALUES (4827, 'Illumination', '2022-10-19 09:27:59', 108);
INSERT INTO `sensor` VALUES (4828, 'Illumination', '2022-10-19 09:28:02', 98);
INSERT INTO `sensor` VALUES (4829, 'Illumination', '2022-10-19 09:28:05', 1);
INSERT INTO `sensor` VALUES (4830, 'Illumination', '2022-10-19 09:28:11', 1);
INSERT INTO `sensor` VALUES (4831, 'Illumination', '2022-10-19 09:28:14', 107);
INSERT INTO `sensor` VALUES (4832, 'Illumination', '2022-10-19 09:28:17', 109);
INSERT INTO `sensor` VALUES (4833, 'Illumination', '2022-10-19 09:28:20', 108);
INSERT INTO `sensor` VALUES (4834, 'Illumination', '2022-10-19 09:28:23', 109);
INSERT INTO `sensor` VALUES (4835, 'Illumination', '2022-10-19 09:28:26', 109);
INSERT INTO `sensor` VALUES (4836, 'Illumination', '2022-10-19 09:28:29', 107);
INSERT INTO `sensor` VALUES (4837, 'Illumination', '2022-10-19 09:28:32', 107);
INSERT INTO `sensor` VALUES (4838, 'Illumination', '2022-10-19 09:28:35', 104);
INSERT INTO `sensor` VALUES (4839, 'Illumination', '2022-10-19 09:28:38', 107);
INSERT INTO `sensor` VALUES (4840, 'Illumination', '2022-10-19 09:28:41', 114);
INSERT INTO `sensor` VALUES (4841, 'Illumination', '2022-10-19 09:28:44', 107);
INSERT INTO `sensor` VALUES (4842, 'Illumination', '2022-10-19 09:28:47', 108);
INSERT INTO `sensor` VALUES (4843, 'Illumination', '2022-10-19 09:28:50', 106);
INSERT INTO `sensor` VALUES (4844, 'Illumination', '2022-10-19 09:28:53', 107);
INSERT INTO `sensor` VALUES (4845, 'Illumination', '2022-10-19 09:28:56', 110);
INSERT INTO `sensor` VALUES (4846, 'Illumination', '2022-10-19 09:28:59', 70);
INSERT INTO `sensor` VALUES (4847, 'Illumination', '2022-10-19 09:29:02', 71);
INSERT INTO `sensor` VALUES (4848, 'Illumination', '2022-10-19 09:29:05', 73);
INSERT INTO `sensor` VALUES (4849, 'Illumination', '2022-10-19 09:29:08', 72);
INSERT INTO `sensor` VALUES (4850, 'Illumination', '2022-10-19 09:30:23', 66);
INSERT INTO `sensor` VALUES (4851, 'Illumination', '2022-10-19 09:30:26', 73);
INSERT INTO `sensor` VALUES (4852, 'Illumination', '2022-10-19 09:30:29', 70);
INSERT INTO `sensor` VALUES (4853, 'Illumination', '2022-10-19 09:30:32', 67);
INSERT INTO `sensor` VALUES (4854, 'Illumination', '2022-10-19 09:30:35', 67);
INSERT INTO `sensor` VALUES (4855, 'Illumination', '2022-10-19 09:30:38', 69);
INSERT INTO `sensor` VALUES (4856, 'Illumination', '2022-10-19 09:30:41', 68);
INSERT INTO `sensor` VALUES (4857, 'Illumination', '2022-10-19 09:30:44', 53);
INSERT INTO `sensor` VALUES (4858, 'Illumination', '2022-10-19 09:30:47', 52);
INSERT INTO `sensor` VALUES (4859, 'Illumination', '2022-10-19 09:30:50', 63);
INSERT INTO `sensor` VALUES (4860, 'Illumination', '2022-10-19 09:30:53', 69);
INSERT INTO `sensor` VALUES (4861, 'Illumination', '2022-10-19 09:31:00', 75);
INSERT INTO `sensor` VALUES (4862, 'Illumination', '2022-10-19 09:48:49', 0);
INSERT INTO `sensor` VALUES (4863, 'Illumination', '2022-10-19 09:48:52', 0);
INSERT INTO `sensor` VALUES (4864, 'Illumination', '2022-10-19 09:48:55', 0);
INSERT INTO `sensor` VALUES (4865, 'Illumination', '2022-10-19 09:48:58', 0);
INSERT INTO `sensor` VALUES (4866, 'Illumination', '2022-10-19 09:49:01', 0);
INSERT INTO `sensor` VALUES (4867, 'Illumination', '2022-10-19 09:49:04', 0);
INSERT INTO `sensor` VALUES (4868, 'Illumination', '2022-10-19 09:49:07', 0);
INSERT INTO `sensor` VALUES (4869, 'Illumination', '2022-10-19 09:49:10', 0);
INSERT INTO `sensor` VALUES (4870, 'Illumination', '2022-10-19 09:49:13', 0);
INSERT INTO `sensor` VALUES (4871, 'Illumination', '2022-10-19 09:49:16', 0);
INSERT INTO `sensor` VALUES (4872, 'Illumination', '2022-10-19 09:49:19', 0);
INSERT INTO `sensor` VALUES (4873, 'Illumination', '2022-10-19 09:49:22', 0);
INSERT INTO `sensor` VALUES (4874, 'Illumination', '2022-10-19 09:49:25', 0);
INSERT INTO `sensor` VALUES (4875, 'Illumination', '2022-10-19 09:49:28', 0);
INSERT INTO `sensor` VALUES (4876, 'Illumination', '2022-10-19 09:49:31', 0);
INSERT INTO `sensor` VALUES (4877, 'Illumination', '2022-10-19 09:49:34', 0);
INSERT INTO `sensor` VALUES (4878, 'Illumination', '2022-10-19 09:49:37', 0);
INSERT INTO `sensor` VALUES (4879, 'Illumination', '2022-10-19 09:49:40', 0);
INSERT INTO `sensor` VALUES (4880, 'Illumination', '2022-10-19 09:49:46', 0);
INSERT INTO `sensor` VALUES (4881, 'Illumination', '2022-10-19 09:49:49', 0);
INSERT INTO `sensor` VALUES (4882, 'Illumination', '2022-10-19 09:49:52', 0);
INSERT INTO `sensor` VALUES (4883, 'Illumination', '2022-10-19 09:50:13', 0);
INSERT INTO `sensor` VALUES (4884, 'Illumination', '2022-10-19 09:50:16', 0);
INSERT INTO `sensor` VALUES (4885, 'Illumination', '2022-10-19 09:50:19', 0);
INSERT INTO `sensor` VALUES (4886, 'Illumination', '2022-10-19 09:51:40', 75);
INSERT INTO `sensor` VALUES (4887, 'Illumination', '2022-10-19 09:51:43', 76);
INSERT INTO `sensor` VALUES (4888, 'Illumination', '2022-10-19 09:51:46', 2);
INSERT INTO `sensor` VALUES (4889, 'Illumination', '2022-10-19 09:51:49', 73);
INSERT INTO `sensor` VALUES (4890, 'Illumination', '2022-10-19 09:51:52', 73);
INSERT INTO `sensor` VALUES (4891, 'Illumination', '2022-10-19 09:51:55', 72);
INSERT INTO `sensor` VALUES (4892, 'Illumination', '2022-10-19 09:51:58', 76);
INSERT INTO `sensor` VALUES (4893, 'Illumination', '2022-10-19 09:52:01', 75);
INSERT INTO `sensor` VALUES (4894, 'Illumination', '2022-10-19 09:52:04', 76);
INSERT INTO `sensor` VALUES (4895, 'Illumination', '2022-10-19 09:52:07', 75);
INSERT INTO `sensor` VALUES (4896, 'Illumination', '2022-10-19 09:52:10', 75);
INSERT INTO `sensor` VALUES (4897, 'Illumination', '2022-10-19 09:52:16', 67);
INSERT INTO `sensor` VALUES (4898, 'Illumination', '2022-10-19 09:52:19', 68);
INSERT INTO `sensor` VALUES (4899, 'Illumination', '2022-10-19 09:52:22', 70);
INSERT INTO `sensor` VALUES (4900, 'Illumination', '2022-10-19 09:52:25', 69);
INSERT INTO `sensor` VALUES (4901, 'Illumination', '2022-10-19 09:52:28', 0);
INSERT INTO `sensor` VALUES (4902, 'Illumination', '2022-10-19 09:52:31', 0);
INSERT INTO `sensor` VALUES (4903, 'Illumination', '2022-10-19 09:52:34', 0);
INSERT INTO `sensor` VALUES (4904, 'Illumination', '2022-10-19 09:52:37', 0);
INSERT INTO `sensor` VALUES (4905, 'Illumination', '2022-10-19 09:52:40', 6);
INSERT INTO `sensor` VALUES (4906, 'Illumination', '2022-10-19 09:52:43', 73);
INSERT INTO `sensor` VALUES (4907, 'Illumination', '2022-10-19 09:52:46', 77);
INSERT INTO `sensor` VALUES (4908, 'Illumination', '2022-10-19 09:52:49', 77);
INSERT INTO `sensor` VALUES (4909, 'Illumination', '2022-10-19 09:52:52', 77);
INSERT INTO `sensor` VALUES (4910, 'Illumination', '2022-10-19 09:52:55', 77);
INSERT INTO `sensor` VALUES (4911, 'Illumination', '2022-10-19 09:52:58', 76);
INSERT INTO `sensor` VALUES (4912, 'Illumination', '2022-10-19 09:53:01', 76);
INSERT INTO `sensor` VALUES (4913, 'Illumination', '2022-10-19 09:53:04', 76);
INSERT INTO `sensor` VALUES (4914, 'Illumination', '2022-10-19 09:53:07', 74);
INSERT INTO `sensor` VALUES (4915, 'Illumination', '2022-10-19 09:53:10', 74);
INSERT INTO `sensor` VALUES (4916, 'Illumination', '2022-10-19 09:53:13', 75);
INSERT INTO `sensor` VALUES (4917, 'Illumination', '2022-10-19 09:53:17', 75);
INSERT INTO `sensor` VALUES (4918, 'Illumination', '2022-10-19 09:53:20', 75);
INSERT INTO `sensor` VALUES (4919, 'Illumination', '2022-10-19 09:53:23', 74);
INSERT INTO `sensor` VALUES (4920, 'Illumination', '2022-10-19 09:53:26', 76);
INSERT INTO `sensor` VALUES (4921, 'Illumination', '2022-10-19 09:53:29', 75);
INSERT INTO `sensor` VALUES (4922, 'Illumination', '2022-10-19 09:53:32', 75);
INSERT INTO `sensor` VALUES (4923, 'Illumination', '2022-10-19 09:53:35', 74);
INSERT INTO `sensor` VALUES (4924, 'Illumination', '2022-10-19 09:53:38', 75);
INSERT INTO `sensor` VALUES (4925, 'Illumination', '2022-10-19 09:53:41', 75);
INSERT INTO `sensor` VALUES (4926, 'Illumination', '2022-10-19 09:53:44', 75);
INSERT INTO `sensor` VALUES (4927, 'Illumination', '2022-10-19 09:53:47', 75);
INSERT INTO `sensor` VALUES (4928, 'Illumination', '2022-10-19 09:53:50', 75);
INSERT INTO `sensor` VALUES (4929, 'Illumination', '2022-10-19 09:53:53', 76);
INSERT INTO `sensor` VALUES (4930, 'Illumination', '2022-10-19 09:53:56', 75);
INSERT INTO `sensor` VALUES (4931, 'Illumination', '2022-10-19 09:53:59', 76);
INSERT INTO `sensor` VALUES (4932, 'Illumination', '2022-10-19 09:54:02', 74);
INSERT INTO `sensor` VALUES (4933, 'Illumination', '2022-10-19 09:54:05', 75);
INSERT INTO `sensor` VALUES (4934, 'Illumination', '2022-10-19 09:54:08', 74);
INSERT INTO `sensor` VALUES (4935, 'Illumination', '2022-10-19 09:54:11', 74);
INSERT INTO `sensor` VALUES (4936, 'Illumination', '2022-10-19 09:54:14', 74);
INSERT INTO `sensor` VALUES (4937, 'Illumination', '2022-10-19 09:54:17', 75);
INSERT INTO `sensor` VALUES (4938, 'Illumination', '2022-10-19 09:55:23', 75);
INSERT INTO `sensor` VALUES (4939, 'Illumination', '2022-10-19 09:55:26', 75);
INSERT INTO `sensor` VALUES (4940, 'Illumination', '2022-10-19 09:55:29', 74);
INSERT INTO `sensor` VALUES (4941, 'Illumination', '2022-10-19 09:55:32', 75);
INSERT INTO `sensor` VALUES (4942, 'Illumination', '2022-10-19 09:55:35', 74);
INSERT INTO `sensor` VALUES (4943, 'Illumination', '2022-10-19 09:55:38', 74);
INSERT INTO `sensor` VALUES (4944, 'Illumination', '2022-10-19 09:55:41', 74);
INSERT INTO `sensor` VALUES (4945, 'Illumination', '2022-10-19 09:55:44', 72);
INSERT INTO `sensor` VALUES (4946, 'Illumination', '2022-10-19 09:55:47', 73);
INSERT INTO `sensor` VALUES (4947, 'Illumination', '2022-10-19 09:55:50', 72);
INSERT INTO `sensor` VALUES (4948, 'Illumination', '2022-10-19 09:55:53', 73);
INSERT INTO `sensor` VALUES (4949, 'Illumination', '2022-10-19 09:55:56', 70);
INSERT INTO `sensor` VALUES (4950, 'Illumination', '2022-10-19 09:55:59', 71);
INSERT INTO `sensor` VALUES (4951, 'Illumination', '2022-10-19 09:56:02', 72);
INSERT INTO `sensor` VALUES (4952, 'Illumination', '2022-10-19 09:56:05', 72);
INSERT INTO `sensor` VALUES (4953, 'Illumination', '2022-10-19 09:56:08', 72);
INSERT INTO `sensor` VALUES (4954, 'Illumination', '2022-10-19 09:56:11', 73);
INSERT INTO `sensor` VALUES (4955, 'Illumination', '2022-10-19 09:56:14', 72);
INSERT INTO `sensor` VALUES (4956, 'Illumination', '2022-10-19 09:56:17', 71);
INSERT INTO `sensor` VALUES (4957, 'Illumination', '2022-10-19 09:56:20', 72);
INSERT INTO `sensor` VALUES (4958, 'Illumination', '2022-10-19 09:56:23', 70);
INSERT INTO `sensor` VALUES (4959, 'Illumination', '2022-10-19 09:56:26', 68);
INSERT INTO `sensor` VALUES (4960, 'Illumination', '2022-10-19 09:56:29', 68);
INSERT INTO `sensor` VALUES (4961, 'Illumination', '2022-10-19 09:56:32', 69);
INSERT INTO `sensor` VALUES (4962, 'Illumination', '2022-10-19 09:56:35', 27);
INSERT INTO `sensor` VALUES (4963, 'Illumination', '2022-10-19 09:56:38', 0);
INSERT INTO `sensor` VALUES (4964, 'Illumination', '2022-10-19 09:56:41', 0);
INSERT INTO `sensor` VALUES (4965, 'Illumination', '2022-10-19 09:56:44', 81);
INSERT INTO `sensor` VALUES (4966, 'Illumination', '2022-10-19 09:56:47', 75);
INSERT INTO `sensor` VALUES (4967, 'Illumination', '2022-10-19 09:56:50', 73);
INSERT INTO `sensor` VALUES (4968, 'Illumination', '2022-10-19 09:56:53', 75);
INSERT INTO `sensor` VALUES (4969, 'Illumination', '2022-10-19 09:56:56', 74);
INSERT INTO `sensor` VALUES (4970, 'Illumination', '2022-10-19 09:56:59', 75);
INSERT INTO `sensor` VALUES (4971, 'Illumination', '2022-10-19 09:57:02', 74);
INSERT INTO `sensor` VALUES (4972, 'Illumination', '2022-10-19 09:57:05', 73);
INSERT INTO `sensor` VALUES (4973, 'Illumination', '2022-10-19 09:57:08', 72);
INSERT INTO `sensor` VALUES (4974, 'Illumination', '2022-10-19 09:57:11', 72);
INSERT INTO `sensor` VALUES (4975, 'Illumination', '2022-10-19 09:57:14', 71);
INSERT INTO `sensor` VALUES (4976, 'Illumination', '2022-10-19 09:57:17', 72);
INSERT INTO `sensor` VALUES (4977, 'Illumination', '2022-10-19 09:57:20', 71);
INSERT INTO `sensor` VALUES (4978, 'Illumination', '2022-10-19 09:57:23', 70);
INSERT INTO `sensor` VALUES (4979, 'Illumination', '2022-10-19 09:57:26', 71);
INSERT INTO `sensor` VALUES (4980, 'Illumination', '2022-10-19 09:57:29', 70);
INSERT INTO `sensor` VALUES (4981, 'Illumination', '2022-10-19 09:57:32', 71);
INSERT INTO `sensor` VALUES (4982, 'Illumination', '2022-10-19 09:57:35', 71);
INSERT INTO `sensor` VALUES (4983, 'Illumination', '2022-10-19 09:57:38', 73);
INSERT INTO `sensor` VALUES (4984, 'Illumination', '2022-10-19 09:57:41', 72);
INSERT INTO `sensor` VALUES (4985, 'Illumination', '2022-10-19 09:57:44', 73);
INSERT INTO `sensor` VALUES (4986, 'Illumination', '2022-10-19 09:57:47', 73);
INSERT INTO `sensor` VALUES (4987, 'Illumination', '2022-10-19 09:57:50', 74);
INSERT INTO `sensor` VALUES (4988, 'Illumination', '2022-10-19 09:57:53', 72);
INSERT INTO `sensor` VALUES (4989, 'Illumination', '2022-10-19 09:57:56', 74);
INSERT INTO `sensor` VALUES (4990, 'Illumination', '2022-10-19 09:57:59', 73);
INSERT INTO `sensor` VALUES (4991, 'Illumination', '2022-10-19 09:58:02', 73);
INSERT INTO `sensor` VALUES (4992, 'Illumination', '2022-10-19 09:58:06', 74);
INSERT INTO `sensor` VALUES (4993, 'Illumination', '2022-10-19 09:58:09', 74);
INSERT INTO `sensor` VALUES (4994, 'Illumination', '2022-10-19 09:58:12', 73);
INSERT INTO `sensor` VALUES (4995, 'Illumination', '2022-10-19 09:58:15', 72);
INSERT INTO `sensor` VALUES (4996, 'Illumination', '2022-10-19 09:58:18', 71);
INSERT INTO `sensor` VALUES (4997, 'Illumination', '2022-10-19 09:58:21', 71);
INSERT INTO `sensor` VALUES (4998, 'Illumination', '2022-10-19 09:58:27', 70);
INSERT INTO `sensor` VALUES (4999, 'Illumination', '2022-10-19 09:58:30', 71);
INSERT INTO `sensor` VALUES (5000, 'Illumination', '2022-10-19 09:58:33', 71);
INSERT INTO `sensor` VALUES (5001, 'Illumination', '2022-10-19 09:58:36', 71);
INSERT INTO `sensor` VALUES (5002, 'Illumination', '2022-10-19 09:58:39', 68);
INSERT INTO `sensor` VALUES (5003, 'Illumination', '2022-10-19 09:58:42', 67);
INSERT INTO `sensor` VALUES (5004, 'Illumination', '2022-10-19 09:58:45', 61);
INSERT INTO `sensor` VALUES (5005, 'Illumination', '2022-10-19 09:58:48', 65);
INSERT INTO `sensor` VALUES (5006, 'Illumination', '2022-10-19 09:58:51', 66);
INSERT INTO `sensor` VALUES (5007, 'Illumination', '2022-10-19 09:58:54', 66);
INSERT INTO `sensor` VALUES (5008, 'Illumination', '2022-10-19 09:58:57', 67);
INSERT INTO `sensor` VALUES (5009, 'Illumination', '2022-10-19 09:59:00', 67);
INSERT INTO `sensor` VALUES (5010, 'Illumination', '2022-10-19 09:59:03', 67);
INSERT INTO `sensor` VALUES (5011, 'Illumination', '2022-10-19 09:59:06', 67);
INSERT INTO `sensor` VALUES (5012, 'Illumination', '2022-10-19 09:59:09', 67);
INSERT INTO `sensor` VALUES (5013, 'Illumination', '2022-10-19 09:59:12', 67);
INSERT INTO `sensor` VALUES (5014, 'Illumination', '2022-10-19 09:59:15', 69);
INSERT INTO `sensor` VALUES (5015, 'Illumination', '2022-10-19 09:59:18', 69);
INSERT INTO `sensor` VALUES (5016, 'Illumination', '2022-10-19 09:59:21', 69);
INSERT INTO `sensor` VALUES (5017, 'Illumination', '2022-10-19 09:59:24', 69);
INSERT INTO `sensor` VALUES (5018, 'Illumination', '2022-10-19 09:59:27', 67);
INSERT INTO `sensor` VALUES (5019, 'Illumination', '2022-10-19 09:59:30', 67);
INSERT INTO `sensor` VALUES (5020, 'Illumination', '2022-10-19 09:59:33', 67);
INSERT INTO `sensor` VALUES (5021, 'Illumination', '2022-10-19 09:59:36', 67);
INSERT INTO `sensor` VALUES (5022, 'Illumination', '2022-10-19 09:59:39', 67);
INSERT INTO `sensor` VALUES (5023, 'Illumination', '2022-10-19 09:59:42', 67);
INSERT INTO `sensor` VALUES (5024, 'Illumination', '2022-10-19 09:59:45', 68);
INSERT INTO `sensor` VALUES (5025, 'Illumination', '2022-10-19 09:59:48', 68);
INSERT INTO `sensor` VALUES (5026, 'Illumination', '2022-10-19 09:59:51', 69);
INSERT INTO `sensor` VALUES (5027, 'Illumination', '2022-10-19 09:59:54', 69);
INSERT INTO `sensor` VALUES (5028, 'Illumination', '2022-10-19 09:59:57', 69);
INSERT INTO `sensor` VALUES (5029, 'Illumination', '2022-10-19 10:00:00', 68);
INSERT INTO `sensor` VALUES (5030, 'Illumination', '2022-10-19 10:00:03', 67);
INSERT INTO `sensor` VALUES (5031, 'Illumination', '2022-10-19 10:00:06', 68);
INSERT INTO `sensor` VALUES (5032, 'Illumination', '2022-10-19 10:00:09', 68);
INSERT INTO `sensor` VALUES (5033, 'Illumination', '2022-10-19 10:00:12', 67);
INSERT INTO `sensor` VALUES (5034, 'Illumination', '2022-10-19 10:00:15', 67);
INSERT INTO `sensor` VALUES (5035, 'Illumination', '2022-10-19 10:00:18', 67);
INSERT INTO `sensor` VALUES (5036, 'Illumination', '2022-10-19 10:00:21', 67);
INSERT INTO `sensor` VALUES (5037, 'Illumination', '2022-10-19 10:00:24', 68);
INSERT INTO `sensor` VALUES (5038, 'Illumination', '2022-10-19 10:00:27', 67);
INSERT INTO `sensor` VALUES (5039, 'Illumination', '2022-10-19 10:00:30', 67);
INSERT INTO `sensor` VALUES (5040, 'Illumination', '2022-10-19 10:00:33', 65);
INSERT INTO `sensor` VALUES (5041, 'Illumination', '2022-10-19 10:00:36', 65);
INSERT INTO `sensor` VALUES (5042, 'Illumination', '2022-10-19 10:00:39', 65);
INSERT INTO `sensor` VALUES (5043, 'Illumination', '2022-10-19 10:00:42', 61);
INSERT INTO `sensor` VALUES (5044, 'Illumination', '2022-10-19 10:00:45', 61);
INSERT INTO `sensor` VALUES (5045, 'Illumination', '2022-10-19 10:00:48', 61);
INSERT INTO `sensor` VALUES (5046, 'Illumination', '2022-10-19 10:00:51', 60);
INSERT INTO `sensor` VALUES (5047, 'Illumination', '2022-10-19 10:00:54', 60);
INSERT INTO `sensor` VALUES (5048, 'Illumination', '2022-10-19 10:00:57', 62);
INSERT INTO `sensor` VALUES (5049, 'Illumination', '2022-10-19 10:01:00', 62);
INSERT INTO `sensor` VALUES (5050, 'Illumination', '2022-10-19 10:01:03', 63);
INSERT INTO `sensor` VALUES (5051, 'Illumination', '2022-10-19 10:01:06', 64);
INSERT INTO `sensor` VALUES (5052, 'Illumination', '2022-10-19 10:01:09', 64);
INSERT INTO `sensor` VALUES (5053, 'Illumination', '2022-10-19 10:01:12', 65);
INSERT INTO `sensor` VALUES (5054, 'Illumination', '2022-10-19 10:01:15', 65);
INSERT INTO `sensor` VALUES (5055, 'Illumination', '2022-10-19 10:01:18', 67);
INSERT INTO `sensor` VALUES (5056, 'Illumination', '2022-10-19 10:01:21', 60);
INSERT INTO `sensor` VALUES (5057, 'Illumination', '2022-10-19 10:01:24', 61);
INSERT INTO `sensor` VALUES (5058, 'Illumination', '2022-10-19 10:01:27', 60);
INSERT INTO `sensor` VALUES (5059, 'Illumination', '2022-10-19 10:01:30', 60);
INSERT INTO `sensor` VALUES (5060, 'Illumination', '2022-10-19 10:01:33', 65);
INSERT INTO `sensor` VALUES (5061, 'Illumination', '2022-10-19 10:01:36', 66);
INSERT INTO `sensor` VALUES (5062, 'Illumination', '2022-10-19 10:01:39', 67);
INSERT INTO `sensor` VALUES (5063, 'Illumination', '2022-10-19 10:01:42', 68);
INSERT INTO `sensor` VALUES (5064, 'Illumination', '2022-10-19 10:01:45', 68);
INSERT INTO `sensor` VALUES (5065, 'Illumination', '2022-10-19 10:01:48', 67);
INSERT INTO `sensor` VALUES (5066, 'Illumination', '2022-10-19 10:01:51', 68);
INSERT INTO `sensor` VALUES (5067, 'Illumination', '2022-10-19 10:01:54', 68);
INSERT INTO `sensor` VALUES (5068, 'Illumination', '2022-10-19 10:01:57', 68);
INSERT INTO `sensor` VALUES (5069, 'Illumination', '2022-10-19 10:02:00', 68);
INSERT INTO `sensor` VALUES (5070, 'Illumination', '2022-10-19 10:02:03', 69);
INSERT INTO `sensor` VALUES (5071, 'Illumination', '2022-10-19 10:02:06', 67);
INSERT INTO `sensor` VALUES (5072, 'Illumination', '2022-10-19 10:02:09', 67);
INSERT INTO `sensor` VALUES (5073, 'Illumination', '2022-10-19 10:02:12', 67);
INSERT INTO `sensor` VALUES (5074, 'Illumination', '2022-10-19 10:02:15', 66);
INSERT INTO `sensor` VALUES (5075, 'Illumination', '2022-10-19 10:02:18', 66);
INSERT INTO `sensor` VALUES (5076, 'Illumination', '2022-10-19 10:02:21', 67);
INSERT INTO `sensor` VALUES (5077, 'Illumination', '2022-10-19 10:02:24', 67);
INSERT INTO `sensor` VALUES (5078, 'Illumination', '2022-10-19 10:02:27', 66);
INSERT INTO `sensor` VALUES (5079, 'Illumination', '2022-10-19 10:02:30', 70);
INSERT INTO `sensor` VALUES (5080, 'Illumination', '2022-10-19 10:02:33', 70);
INSERT INTO `sensor` VALUES (5081, 'Illumination', '2022-10-19 10:02:36', 69);
INSERT INTO `sensor` VALUES (5082, 'Illumination', '2022-10-19 10:02:39', 69);
INSERT INTO `sensor` VALUES (5083, 'Illumination', '2022-10-19 10:02:42', 66);
INSERT INTO `sensor` VALUES (5084, 'Illumination', '2022-10-19 10:02:46', 65);
INSERT INTO `sensor` VALUES (5085, 'Illumination', '2022-10-19 10:02:49', 66);
INSERT INTO `sensor` VALUES (5086, 'Illumination', '2022-10-19 10:02:52', 65);
INSERT INTO `sensor` VALUES (5087, 'Illumination', '2022-10-19 10:02:55', 65);
INSERT INTO `sensor` VALUES (5088, 'Illumination', '2022-10-19 10:02:58', 64);
INSERT INTO `sensor` VALUES (5089, 'Illumination', '2022-10-19 10:03:01', 65);
INSERT INTO `sensor` VALUES (5090, 'Illumination', '2022-10-19 10:03:04', 66);
INSERT INTO `sensor` VALUES (5091, 'Illumination', '2022-10-19 10:03:07', 66);
INSERT INTO `sensor` VALUES (5092, 'Illumination', '2022-10-19 10:03:10', 66);
INSERT INTO `sensor` VALUES (5093, 'Illumination', '2022-10-19 10:03:13', 66);
INSERT INTO `sensor` VALUES (5094, 'Illumination', '2022-10-19 10:03:16', 66);
INSERT INTO `sensor` VALUES (5095, 'Illumination', '2022-10-19 10:03:19', 66);
INSERT INTO `sensor` VALUES (5096, 'Illumination', '2022-10-19 10:03:22', 66);
INSERT INTO `sensor` VALUES (5097, 'Illumination', '2022-10-19 10:03:25', 66);
INSERT INTO `sensor` VALUES (5098, 'Illumination', '2022-10-19 10:03:28', 66);
INSERT INTO `sensor` VALUES (5099, 'Illumination', '2022-10-19 10:03:31', 67);
INSERT INTO `sensor` VALUES (5100, 'Illumination', '2022-10-19 10:03:34', 66);
INSERT INTO `sensor` VALUES (5101, 'Illumination', '2022-10-19 10:03:37', 68);
INSERT INTO `sensor` VALUES (5102, 'Illumination', '2022-10-19 10:03:40', 68);
INSERT INTO `sensor` VALUES (5103, 'Illumination', '2022-10-19 10:03:43', 67);
INSERT INTO `sensor` VALUES (5104, 'Illumination', '2022-10-19 10:03:46', 67);
INSERT INTO `sensor` VALUES (5105, 'Illumination', '2022-10-19 10:03:49', 67);
INSERT INTO `sensor` VALUES (5106, 'Illumination', '2022-10-19 10:03:52', 68);
INSERT INTO `sensor` VALUES (5107, 'Illumination', '2022-10-19 10:03:55', 66);
INSERT INTO `sensor` VALUES (5108, 'Illumination', '2022-10-19 10:03:58', 69);
INSERT INTO `sensor` VALUES (5109, 'Illumination', '2022-10-19 10:04:01', 69);
INSERT INTO `sensor` VALUES (5110, 'Illumination', '2022-10-19 10:04:04', 70);
INSERT INTO `sensor` VALUES (5111, 'Illumination', '2022-10-19 10:04:07', 66);
INSERT INTO `sensor` VALUES (5112, 'Illumination', '2022-10-19 10:04:10', 65);
INSERT INTO `sensor` VALUES (5113, 'Illumination', '2022-10-19 10:04:13', 66);
INSERT INTO `sensor` VALUES (5114, 'Illumination', '2022-10-19 10:04:16', 66);
INSERT INTO `sensor` VALUES (5115, 'Illumination', '2022-10-19 10:04:19', 66);
INSERT INTO `sensor` VALUES (5116, 'Illumination', '2022-10-19 10:04:22', 66);
INSERT INTO `sensor` VALUES (5117, 'Illumination', '2022-10-19 10:04:25', 66);
INSERT INTO `sensor` VALUES (5118, 'Illumination', '2022-10-19 10:04:28', 66);
INSERT INTO `sensor` VALUES (5119, 'Illumination', '2022-10-19 10:04:31', 66);
INSERT INTO `sensor` VALUES (5120, 'Illumination', '2022-10-19 10:04:34', 67);
INSERT INTO `sensor` VALUES (5121, 'Illumination', '2022-10-19 10:04:37', 66);
INSERT INTO `sensor` VALUES (5122, 'Illumination', '2022-10-19 10:04:40', 67);
INSERT INTO `sensor` VALUES (5123, 'Illumination', '2022-10-19 10:04:43', 66);
INSERT INTO `sensor` VALUES (5124, 'Illumination', '2022-10-19 10:04:46', 66);
INSERT INTO `sensor` VALUES (5125, 'Illumination', '2022-10-19 10:04:49', 66);
INSERT INTO `sensor` VALUES (5126, 'Illumination', '2022-10-19 10:04:52', 66);
INSERT INTO `sensor` VALUES (5127, 'Illumination', '2022-10-19 10:04:55', 66);
INSERT INTO `sensor` VALUES (5128, 'Illumination', '2022-10-19 10:04:58', 67);
INSERT INTO `sensor` VALUES (5129, 'Illumination', '2022-10-19 10:05:01', 67);
INSERT INTO `sensor` VALUES (5130, 'Illumination', '2022-10-19 10:05:04', 66);
INSERT INTO `sensor` VALUES (5131, 'Illumination', '2022-10-19 10:05:07', 67);
INSERT INTO `sensor` VALUES (5132, 'Illumination', '2022-10-19 10:05:10', 66);
INSERT INTO `sensor` VALUES (5133, 'Illumination', '2022-10-19 10:05:13', 67);
INSERT INTO `sensor` VALUES (5134, 'Illumination', '2022-10-19 10:05:16', 67);
INSERT INTO `sensor` VALUES (5135, 'Illumination', '2022-10-19 10:05:19', 66);
INSERT INTO `sensor` VALUES (5136, 'Illumination', '2022-10-19 10:05:22', 63);
INSERT INTO `sensor` VALUES (5137, 'Illumination', '2022-10-19 10:05:25', 63);
INSERT INTO `sensor` VALUES (5138, 'Illumination', '2022-10-19 10:05:28', 63);
INSERT INTO `sensor` VALUES (5139, 'Illumination', '2022-10-19 10:05:31', 59);
INSERT INTO `sensor` VALUES (5140, 'Illumination', '2022-10-19 10:05:34', 60);
INSERT INTO `sensor` VALUES (5141, 'Illumination', '2022-10-19 10:05:37', 62);
INSERT INTO `sensor` VALUES (5142, 'Illumination', '2022-10-19 10:05:40', 60);
INSERT INTO `sensor` VALUES (5143, 'Illumination', '2022-10-19 10:05:43', 62);
INSERT INTO `sensor` VALUES (5144, 'Illumination', '2022-10-19 10:05:46', 62);
INSERT INTO `sensor` VALUES (5145, 'Illumination', '2022-10-19 10:05:49', 62);
INSERT INTO `sensor` VALUES (5146, 'Illumination', '2022-10-19 10:05:52', 63);
INSERT INTO `sensor` VALUES (5147, 'Illumination', '2022-10-19 10:05:55', 62);
INSERT INTO `sensor` VALUES (5148, 'Illumination', '2022-10-19 10:05:58', 61);
INSERT INTO `sensor` VALUES (5149, 'Illumination', '2022-10-19 10:06:04', 62);
INSERT INTO `sensor` VALUES (5150, 'Illumination', '2022-10-19 10:06:07', 63);
INSERT INTO `sensor` VALUES (5151, 'Illumination', '2022-10-19 10:06:10', 63);
INSERT INTO `sensor` VALUES (5152, 'Illumination', '2022-10-19 10:06:13', 63);
INSERT INTO `sensor` VALUES (5153, 'Illumination', '2022-10-19 10:06:16', 63);
INSERT INTO `sensor` VALUES (5154, 'Illumination', '2022-10-19 10:06:19', 64);
INSERT INTO `sensor` VALUES (5155, 'Illumination', '2022-10-19 10:06:22', 63);
INSERT INTO `sensor` VALUES (5156, 'Illumination', '2022-10-19 10:06:25', 63);
INSERT INTO `sensor` VALUES (5157, 'Illumination', '2022-10-19 10:06:28', 65);
INSERT INTO `sensor` VALUES (5158, 'Illumination', '2022-10-19 10:06:31', 64);
INSERT INTO `sensor` VALUES (5159, 'Illumination', '2022-10-19 10:06:34', 64);
INSERT INTO `sensor` VALUES (5160, 'Illumination', '2022-10-19 10:06:37', 63);
INSERT INTO `sensor` VALUES (5161, 'Illumination', '2022-10-19 10:06:41', 64);
INSERT INTO `sensor` VALUES (5162, 'Illumination', '2022-10-19 10:06:44', 64);
INSERT INTO `sensor` VALUES (5163, 'Illumination', '2022-10-19 10:06:47', 63);
INSERT INTO `sensor` VALUES (5164, 'Illumination', '2022-10-19 10:06:50', 63);
INSERT INTO `sensor` VALUES (5165, 'Illumination', '2022-10-19 10:06:53', 63);
INSERT INTO `sensor` VALUES (5166, 'Illumination', '2022-10-19 10:06:56', 64);
INSERT INTO `sensor` VALUES (5167, 'Illumination', '2022-10-19 10:06:59', 66);
INSERT INTO `sensor` VALUES (5168, 'Illumination', '2022-10-19 10:07:02', 67);
INSERT INTO `sensor` VALUES (5169, 'Illumination', '2022-10-19 10:07:05', 67);
INSERT INTO `sensor` VALUES (5170, 'Illumination', '2022-10-19 10:07:08', 67);
INSERT INTO `sensor` VALUES (5171, 'Illumination', '2022-10-19 10:07:11', 66);
INSERT INTO `sensor` VALUES (5172, 'Illumination', '2022-10-19 10:07:14', 67);
INSERT INTO `sensor` VALUES (5173, 'Illumination', '2022-10-19 10:07:17', 67);
INSERT INTO `sensor` VALUES (5174, 'Illumination', '2022-10-19 10:07:20', 67);
INSERT INTO `sensor` VALUES (5175, 'Illumination', '2022-10-19 10:07:23', 67);
INSERT INTO `sensor` VALUES (5176, 'Illumination', '2022-10-19 10:07:26', 66);
INSERT INTO `sensor` VALUES (5177, 'Illumination', '2022-10-19 10:07:29', 68);
INSERT INTO `sensor` VALUES (5178, 'Illumination', '2022-10-19 10:07:32', 67);
INSERT INTO `sensor` VALUES (5179, 'Illumination', '2022-10-19 10:07:35', 68);
INSERT INTO `sensor` VALUES (5180, 'Illumination', '2022-10-19 10:07:38', 67);
INSERT INTO `sensor` VALUES (5181, 'Illumination', '2022-10-19 10:07:41', 67);
INSERT INTO `sensor` VALUES (5182, 'Illumination', '2022-10-19 10:07:44', 67);
INSERT INTO `sensor` VALUES (5183, 'Illumination', '2022-10-19 10:07:47', 67);
INSERT INTO `sensor` VALUES (5184, 'Illumination', '2022-10-19 10:07:50', 67);
INSERT INTO `sensor` VALUES (5185, 'Illumination', '2022-10-19 10:07:53', 68);
INSERT INTO `sensor` VALUES (5186, 'Illumination', '2022-10-19 10:07:56', 67);
INSERT INTO `sensor` VALUES (5187, 'Illumination', '2022-10-19 10:07:59', 67);
INSERT INTO `sensor` VALUES (5188, 'Illumination', '2022-10-19 10:08:02', 67);
INSERT INTO `sensor` VALUES (5189, 'Illumination', '2022-10-19 10:08:05', 67);
INSERT INTO `sensor` VALUES (5190, 'Illumination', '2022-10-19 10:08:08', 67);
INSERT INTO `sensor` VALUES (5191, 'Illumination', '2022-10-19 10:08:11', 67);
INSERT INTO `sensor` VALUES (5192, 'Illumination', '2022-10-19 10:08:14', 67);
INSERT INTO `sensor` VALUES (5193, 'Illumination', '2022-10-19 10:08:17', 64);
INSERT INTO `sensor` VALUES (5194, 'Illumination', '2022-10-19 10:08:20', 65);
INSERT INTO `sensor` VALUES (5195, 'Illumination', '2022-10-19 10:08:23', 66);
INSERT INTO `sensor` VALUES (5196, 'Illumination', '2022-10-19 10:08:26', 66);
INSERT INTO `sensor` VALUES (5197, 'Illumination', '2022-10-19 10:08:29', 68);
INSERT INTO `sensor` VALUES (5198, 'Illumination', '2022-10-19 10:08:32', 68);
INSERT INTO `sensor` VALUES (5199, 'Illumination', '2022-10-19 10:08:35', 68);
INSERT INTO `sensor` VALUES (5200, 'Illumination', '2022-10-19 10:08:38', 69);
INSERT INTO `sensor` VALUES (5201, 'Illumination', '2022-10-19 10:08:41', 69);
INSERT INTO `sensor` VALUES (5202, 'Illumination', '2022-10-19 10:08:44', 69);
INSERT INTO `sensor` VALUES (5203, 'Illumination', '2022-10-19 10:08:47', 69);
INSERT INTO `sensor` VALUES (5204, 'Illumination', '2022-10-19 10:08:50', 70);
INSERT INTO `sensor` VALUES (5205, 'Illumination', '2022-10-19 10:08:53', 70);
INSERT INTO `sensor` VALUES (5206, 'Illumination', '2022-10-19 10:08:56', 70);
INSERT INTO `sensor` VALUES (5207, 'Illumination', '2022-10-19 10:08:59', 72);
INSERT INTO `sensor` VALUES (5208, 'Illumination', '2022-10-19 10:09:02', 70);
INSERT INTO `sensor` VALUES (5209, 'Illumination', '2022-10-19 10:09:05', 70);
INSERT INTO `sensor` VALUES (5210, 'Illumination', '2022-10-19 10:09:08', 70);
INSERT INTO `sensor` VALUES (5211, 'Illumination', '2022-10-19 10:09:11', 70);
INSERT INTO `sensor` VALUES (5212, 'Illumination', '2022-10-19 10:09:14', 69);
INSERT INTO `sensor` VALUES (5213, 'Illumination', '2022-10-19 10:09:17', 68);
INSERT INTO `sensor` VALUES (5214, 'Illumination', '2022-10-19 10:09:20', 69);
INSERT INTO `sensor` VALUES (5215, 'Illumination', '2022-10-19 10:09:23', 70);
INSERT INTO `sensor` VALUES (5216, 'Illumination', '2022-10-19 10:09:26', 69);
INSERT INTO `sensor` VALUES (5217, 'Illumination', '2022-10-19 10:09:29', 69);
INSERT INTO `sensor` VALUES (5218, 'Illumination', '2022-10-19 10:09:32', 68);
INSERT INTO `sensor` VALUES (5219, 'Illumination', '2022-10-19 10:09:35', 69);
INSERT INTO `sensor` VALUES (5220, 'Illumination', '2022-10-19 10:09:38', 68);
INSERT INTO `sensor` VALUES (5221, 'Illumination', '2022-10-19 10:09:41', 67);
INSERT INTO `sensor` VALUES (5222, 'Illumination', '2022-10-19 10:09:44', 67);
INSERT INTO `sensor` VALUES (5223, 'Illumination', '2022-10-19 10:09:47', 67);
INSERT INTO `sensor` VALUES (5224, 'Illumination', '2022-10-19 10:09:50', 67);
INSERT INTO `sensor` VALUES (5225, 'Illumination', '2022-10-19 10:09:53', 67);
INSERT INTO `sensor` VALUES (5226, 'Illumination', '2022-10-19 10:09:56', 66);
INSERT INTO `sensor` VALUES (5227, 'Illumination', '2022-10-19 10:09:59', 67);
INSERT INTO `sensor` VALUES (5228, 'Illumination', '2022-10-19 10:10:02', 68);
INSERT INTO `sensor` VALUES (5229, 'Illumination', '2022-10-19 10:10:05', 66);
INSERT INTO `sensor` VALUES (5230, 'Illumination', '2022-10-19 10:10:08', 68);
INSERT INTO `sensor` VALUES (5231, 'Illumination', '2022-10-19 10:10:11', 0);
INSERT INTO `sensor` VALUES (5232, 'Illumination', '2022-10-19 10:10:14', 66);
INSERT INTO `sensor` VALUES (5233, 'Illumination', '2022-10-19 10:10:17', 65);
INSERT INTO `sensor` VALUES (5234, 'Illumination', '2022-10-19 10:10:20', 66);
INSERT INTO `sensor` VALUES (5235, 'Illumination', '2022-10-19 10:10:23', 66);
INSERT INTO `sensor` VALUES (5236, 'Illumination', '2022-10-19 10:10:26', 66);
INSERT INTO `sensor` VALUES (5237, 'Illumination', '2022-10-19 10:10:29', 65);
INSERT INTO `sensor` VALUES (5238, 'Illumination', '2022-10-19 10:10:32', 66);
INSERT INTO `sensor` VALUES (5239, 'Illumination', '2022-10-19 10:10:35', 66);
INSERT INTO `sensor` VALUES (5240, 'Illumination', '2022-10-19 10:10:38', 65);
INSERT INTO `sensor` VALUES (5241, 'Illumination', '2022-10-19 10:10:41', 65);
INSERT INTO `sensor` VALUES (5242, 'Illumination', '2022-10-19 10:10:44', 66);
INSERT INTO `sensor` VALUES (5243, 'Illumination', '2022-10-19 10:10:47', 66);
INSERT INTO `sensor` VALUES (5244, 'Illumination', '2022-10-19 10:10:50', 65);
INSERT INTO `sensor` VALUES (5245, 'Illumination', '2022-10-19 10:10:53', 66);
INSERT INTO `sensor` VALUES (5246, 'Illumination', '2022-10-19 10:10:56', 66);
INSERT INTO `sensor` VALUES (5247, 'Illumination', '2022-10-19 10:10:59', 63);
INSERT INTO `sensor` VALUES (5248, 'Illumination', '2022-10-19 10:11:02', 62);
INSERT INTO `sensor` VALUES (5249, 'Illumination', '2022-10-19 10:11:05', 64);
INSERT INTO `sensor` VALUES (5250, 'Illumination', '2022-10-19 10:11:08', 63);
INSERT INTO `sensor` VALUES (5251, 'Illumination', '2022-10-19 10:11:11', 63);
INSERT INTO `sensor` VALUES (5252, 'Illumination', '2022-10-19 10:11:14', 64);
INSERT INTO `sensor` VALUES (5253, 'Illumination', '2022-10-19 10:11:17', 66);
INSERT INTO `sensor` VALUES (5254, 'Illumination', '2022-10-19 10:11:20', 64);
INSERT INTO `sensor` VALUES (5255, 'Illumination', '2022-10-19 10:11:24', 65);
INSERT INTO `sensor` VALUES (5256, 'Illumination', '2022-10-19 10:11:27', 63);
INSERT INTO `sensor` VALUES (5257, 'Illumination', '2022-10-19 10:11:30', 63);
INSERT INTO `sensor` VALUES (5258, 'Illumination', '2022-10-19 10:11:33', 63);
INSERT INTO `sensor` VALUES (5259, 'Illumination', '2022-10-19 10:11:36', 63);
INSERT INTO `sensor` VALUES (5260, 'Illumination', '2022-10-19 10:11:39', 63);
INSERT INTO `sensor` VALUES (5261, 'Illumination', '2022-10-19 10:11:42', 63);
INSERT INTO `sensor` VALUES (5262, 'Illumination', '2022-10-19 10:11:45', 63);
INSERT INTO `sensor` VALUES (5263, 'Illumination', '2022-10-19 10:11:48', 63);
INSERT INTO `sensor` VALUES (5264, 'Illumination', '2022-10-19 10:11:51', 64);
INSERT INTO `sensor` VALUES (5265, 'Illumination', '2022-10-19 10:11:54', 64);
INSERT INTO `sensor` VALUES (5266, 'Illumination', '2022-10-19 10:11:57', 64);
INSERT INTO `sensor` VALUES (5267, 'Illumination', '2022-10-19 10:12:00', 63);
INSERT INTO `sensor` VALUES (5268, 'Illumination', '2022-10-19 10:12:03', 64);
INSERT INTO `sensor` VALUES (5269, 'Illumination', '2022-10-19 10:12:06', 63);
INSERT INTO `sensor` VALUES (5270, 'Illumination', '2022-10-19 10:12:09', 64);
INSERT INTO `sensor` VALUES (5271, 'Illumination', '2022-10-19 10:12:12', 63);
INSERT INTO `sensor` VALUES (5272, 'Illumination', '2022-10-19 10:12:15', 63);
INSERT INTO `sensor` VALUES (5273, 'Illumination', '2022-10-19 10:12:18', 63);
INSERT INTO `sensor` VALUES (5274, 'Illumination', '2022-10-19 10:12:21', 64);
INSERT INTO `sensor` VALUES (5275, 'Illumination', '2022-10-19 10:12:24', 62);
INSERT INTO `sensor` VALUES (5276, 'Illumination', '2022-10-19 10:12:27', 62);
INSERT INTO `sensor` VALUES (5277, 'Illumination', '2022-10-19 10:12:30', 62);
INSERT INTO `sensor` VALUES (5278, 'Illumination', '2022-10-19 10:12:33', 62);
INSERT INTO `sensor` VALUES (5279, 'Illumination', '2022-10-19 10:12:36', 63);
INSERT INTO `sensor` VALUES (5280, 'Illumination', '2022-10-19 10:12:39', 63);
INSERT INTO `sensor` VALUES (5281, 'Illumination', '2022-10-19 10:12:42', 65);
INSERT INTO `sensor` VALUES (5282, 'Illumination', '2022-10-19 10:12:45', 63);
INSERT INTO `sensor` VALUES (5283, 'Illumination', '2022-10-19 10:12:48', 64);
INSERT INTO `sensor` VALUES (5284, 'Illumination', '2022-10-19 10:12:51', 63);
INSERT INTO `sensor` VALUES (5285, 'Illumination', '2022-10-19 10:12:54', 64);
INSERT INTO `sensor` VALUES (5286, 'Illumination', '2022-10-19 10:12:57', 64);
INSERT INTO `sensor` VALUES (5287, 'Illumination', '2022-10-19 10:13:00', 64);
INSERT INTO `sensor` VALUES (5288, 'Illumination', '2022-10-19 10:13:03', 64);
INSERT INTO `sensor` VALUES (5289, 'Illumination', '2022-10-19 10:13:06', 65);
INSERT INTO `sensor` VALUES (5290, 'Illumination', '2022-10-19 10:13:09', 65);
INSERT INTO `sensor` VALUES (5291, 'Illumination', '2022-10-19 10:13:12', 64);
INSERT INTO `sensor` VALUES (5292, 'Illumination', '2022-10-19 10:13:15', 64);
INSERT INTO `sensor` VALUES (5293, 'Illumination', '2022-10-19 10:13:18', 64);
INSERT INTO `sensor` VALUES (5294, 'Illumination', '2022-10-19 10:13:21', 64);
INSERT INTO `sensor` VALUES (5295, 'Illumination', '2022-10-19 10:13:24', 64);
INSERT INTO `sensor` VALUES (5296, 'Illumination', '2022-10-19 10:13:27', 64);
INSERT INTO `sensor` VALUES (5297, 'Illumination', '2022-10-19 10:13:30', 64);
INSERT INTO `sensor` VALUES (5298, 'Illumination', '2022-10-19 10:13:33', 64);
INSERT INTO `sensor` VALUES (5299, 'Illumination', '2022-10-19 10:13:36', 64);
INSERT INTO `sensor` VALUES (5300, 'Illumination', '2022-10-19 10:13:39', 65);
INSERT INTO `sensor` VALUES (5301, 'Light', '2022-10-19 09:26:41', 0);
INSERT INTO `sensor` VALUES (5302, 'Light', '2022-10-19 09:26:44', 0);
INSERT INTO `sensor` VALUES (5303, 'Light', '2022-10-19 09:26:47', 0);
INSERT INTO `sensor` VALUES (5304, 'Light', '2022-10-19 09:26:50', 0);
INSERT INTO `sensor` VALUES (5305, 'Light', '2022-10-19 09:26:53', 0);
INSERT INTO `sensor` VALUES (5306, 'Light', '2022-10-19 09:26:56', 0);
INSERT INTO `sensor` VALUES (5307, 'Light', '2022-10-19 09:26:59', 0);
INSERT INTO `sensor` VALUES (5308, 'Light', '2022-10-19 09:27:02', 0);
INSERT INTO `sensor` VALUES (5309, 'Light', '2022-10-19 09:27:05', 0);
INSERT INTO `sensor` VALUES (5310, 'Light', '2022-10-19 09:27:08', 0);
INSERT INTO `sensor` VALUES (5311, 'Light', '2022-10-19 09:27:11', 0);
INSERT INTO `sensor` VALUES (5312, 'Light', '2022-10-19 09:27:14', 0);
INSERT INTO `sensor` VALUES (5313, 'Light', '2022-10-19 09:27:17', 0);
INSERT INTO `sensor` VALUES (5314, 'Light', '2022-10-19 09:27:20', 0);
INSERT INTO `sensor` VALUES (5315, 'Light', '2022-10-19 09:27:23', 0);
INSERT INTO `sensor` VALUES (5316, 'Light', '2022-10-19 09:27:26', 0);
INSERT INTO `sensor` VALUES (5317, 'Light', '2022-10-19 09:27:29', 0);
INSERT INTO `sensor` VALUES (5318, 'Light', '2022-10-19 09:27:32', 0);
INSERT INTO `sensor` VALUES (5319, 'Light', '2022-10-19 09:27:35', 0);
INSERT INTO `sensor` VALUES (5320, 'Light', '2022-10-19 09:27:38', 0);
INSERT INTO `sensor` VALUES (5321, 'Light', '2022-10-19 09:27:41', 0);
INSERT INTO `sensor` VALUES (5322, 'Light', '2022-10-19 09:27:44', 0);
INSERT INTO `sensor` VALUES (5323, 'Light', '2022-10-19 09:27:47', 0);
INSERT INTO `sensor` VALUES (5324, 'Light', '2022-10-19 09:27:50', 0);
INSERT INTO `sensor` VALUES (5325, 'Light', '2022-10-19 09:27:53', 0);
INSERT INTO `sensor` VALUES (5326, 'Light', '2022-10-19 09:27:56', 0);
INSERT INTO `sensor` VALUES (5327, 'Light', '2022-10-19 09:27:59', 0);
INSERT INTO `sensor` VALUES (5328, 'Light', '2022-10-19 09:28:02', 0);
INSERT INTO `sensor` VALUES (5329, 'Light', '2022-10-19 09:28:05', 0);
INSERT INTO `sensor` VALUES (5330, 'Light', '2022-10-19 09:28:11', 0);
INSERT INTO `sensor` VALUES (5331, 'Light', '2022-10-19 09:28:14', 0);
INSERT INTO `sensor` VALUES (5332, 'Light', '2022-10-19 09:28:17', 0);
INSERT INTO `sensor` VALUES (5333, 'Light', '2022-10-19 09:28:20', 0);
INSERT INTO `sensor` VALUES (5334, 'Light', '2022-10-19 09:28:23', 0);
INSERT INTO `sensor` VALUES (5335, 'Light', '2022-10-19 09:28:26', 0);
INSERT INTO `sensor` VALUES (5336, 'Light', '2022-10-19 09:28:29', 0);
INSERT INTO `sensor` VALUES (5337, 'Light', '2022-10-19 09:28:32', 0);
INSERT INTO `sensor` VALUES (5338, 'Light', '2022-10-19 09:28:35', 0);
INSERT INTO `sensor` VALUES (5339, 'Light', '2022-10-19 09:28:38', 0);
INSERT INTO `sensor` VALUES (5340, 'Light', '2022-10-19 09:28:41', 0);
INSERT INTO `sensor` VALUES (5341, 'Light', '2022-10-19 09:28:44', 0);
INSERT INTO `sensor` VALUES (5342, 'Light', '2022-10-19 09:28:47', 0);
INSERT INTO `sensor` VALUES (5343, 'Light', '2022-10-19 09:28:50', 0);
INSERT INTO `sensor` VALUES (5344, 'Light', '2022-10-19 09:28:53', 0);
INSERT INTO `sensor` VALUES (5345, 'Light', '2022-10-19 09:28:56', 0);
INSERT INTO `sensor` VALUES (5346, 'Light', '2022-10-19 09:28:59', 0);
INSERT INTO `sensor` VALUES (5347, 'Light', '2022-10-19 09:29:02', 0);
INSERT INTO `sensor` VALUES (5348, 'Light', '2022-10-19 09:29:05', 0);
INSERT INTO `sensor` VALUES (5349, 'Light', '2022-10-19 09:29:08', 0);
INSERT INTO `sensor` VALUES (5350, 'Light', '2022-10-19 09:30:23', 0);
INSERT INTO `sensor` VALUES (5351, 'Light', '2022-10-19 09:30:26', 0);
INSERT INTO `sensor` VALUES (5352, 'Light', '2022-10-19 09:30:29', 0);
INSERT INTO `sensor` VALUES (5353, 'Light', '2022-10-19 09:30:32', 0);
INSERT INTO `sensor` VALUES (5354, 'Light', '2022-10-19 09:30:35', 0);
INSERT INTO `sensor` VALUES (5355, 'Light', '2022-10-19 09:30:38', 0);
INSERT INTO `sensor` VALUES (5356, 'Light', '2022-10-19 09:30:41', 0);
INSERT INTO `sensor` VALUES (5357, 'Light', '2022-10-19 09:30:44', 0);
INSERT INTO `sensor` VALUES (5358, 'Light', '2022-10-19 09:30:47', 0);
INSERT INTO `sensor` VALUES (5359, 'Light', '2022-10-19 09:30:50', 0);
INSERT INTO `sensor` VALUES (5360, 'Light', '2022-10-19 09:30:53', 0);
INSERT INTO `sensor` VALUES (5361, 'Light', '2022-10-19 09:31:00', 0);
INSERT INTO `sensor` VALUES (5362, 'Light', '2022-10-19 09:48:49', 0);
INSERT INTO `sensor` VALUES (5363, 'Light', '2022-10-19 09:48:52', 0);
INSERT INTO `sensor` VALUES (5364, 'Light', '2022-10-19 09:48:55', 0);
INSERT INTO `sensor` VALUES (5365, 'Light', '2022-10-19 09:48:58', 0);
INSERT INTO `sensor` VALUES (5366, 'Light', '2022-10-19 09:49:01', 0);
INSERT INTO `sensor` VALUES (5367, 'Light', '2022-10-19 09:49:04', 0);
INSERT INTO `sensor` VALUES (5368, 'Light', '2022-10-19 09:49:07', 0);
INSERT INTO `sensor` VALUES (5369, 'Light', '2022-10-19 09:49:10', 0);
INSERT INTO `sensor` VALUES (5370, 'Light', '2022-10-19 09:49:13', 0);
INSERT INTO `sensor` VALUES (5371, 'Light', '2022-10-19 09:49:16', 0);
INSERT INTO `sensor` VALUES (5372, 'Light', '2022-10-19 09:49:19', 0);
INSERT INTO `sensor` VALUES (5373, 'Light', '2022-10-19 09:49:22', 0);
INSERT INTO `sensor` VALUES (5374, 'Light', '2022-10-19 09:49:25', 0);
INSERT INTO `sensor` VALUES (5375, 'Light', '2022-10-19 09:49:28', 0);
INSERT INTO `sensor` VALUES (5376, 'Light', '2022-10-19 09:49:31', 0);
INSERT INTO `sensor` VALUES (5377, 'Light', '2022-10-19 09:49:34', 0);
INSERT INTO `sensor` VALUES (5378, 'Light', '2022-10-19 09:49:37', 0);
INSERT INTO `sensor` VALUES (5379, 'Light', '2022-10-19 09:49:40', 0);
INSERT INTO `sensor` VALUES (5380, 'Light', '2022-10-19 09:49:46', 0);
INSERT INTO `sensor` VALUES (5381, 'Light', '2022-10-19 09:49:49', 0);
INSERT INTO `sensor` VALUES (5382, 'Light', '2022-10-19 09:49:52', 0);
INSERT INTO `sensor` VALUES (5383, 'Light', '2022-10-19 09:50:13', 0);
INSERT INTO `sensor` VALUES (5384, 'Light', '2022-10-19 09:50:16', 0);
INSERT INTO `sensor` VALUES (5385, 'Light', '2022-10-19 09:50:19', 0);
INSERT INTO `sensor` VALUES (5386, 'Light', '2022-10-19 09:51:40', 0);
INSERT INTO `sensor` VALUES (5387, 'Light', '2022-10-19 09:51:43', 0);
INSERT INTO `sensor` VALUES (5388, 'Light', '2022-10-19 09:51:46', 0);
INSERT INTO `sensor` VALUES (5389, 'Light', '2022-10-19 09:51:49', 0);
INSERT INTO `sensor` VALUES (5390, 'Light', '2022-10-19 09:51:52', 0);
INSERT INTO `sensor` VALUES (5391, 'Light', '2022-10-19 09:51:55', 0);
INSERT INTO `sensor` VALUES (5392, 'Light', '2022-10-19 09:51:58', 0);
INSERT INTO `sensor` VALUES (5393, 'Light', '2022-10-19 09:52:01', 0);
INSERT INTO `sensor` VALUES (5394, 'Light', '2022-10-19 09:52:04', 0);
INSERT INTO `sensor` VALUES (5395, 'Light', '2022-10-19 09:52:07', 0);
INSERT INTO `sensor` VALUES (5396, 'Light', '2022-10-19 09:52:10', 0);
INSERT INTO `sensor` VALUES (5397, 'Light', '2022-10-19 09:52:16', 0);
INSERT INTO `sensor` VALUES (5398, 'Light', '2022-10-19 09:52:19', 0);
INSERT INTO `sensor` VALUES (5399, 'Light', '2022-10-19 09:52:22', 0);
INSERT INTO `sensor` VALUES (5400, 'Light', '2022-10-19 09:52:25', 0);
INSERT INTO `sensor` VALUES (5401, 'Light', '2022-10-19 09:52:28', 1);
INSERT INTO `sensor` VALUES (5402, 'Light', '2022-10-19 09:52:31', 1);
INSERT INTO `sensor` VALUES (5403, 'Light', '2022-10-19 09:52:34', 1);
INSERT INTO `sensor` VALUES (5404, 'Light', '2022-10-19 09:52:37', 1);
INSERT INTO `sensor` VALUES (5405, 'Light', '2022-10-19 09:52:40', 0);
INSERT INTO `sensor` VALUES (5406, 'Light', '2022-10-19 09:52:43', 0);
INSERT INTO `sensor` VALUES (5407, 'Light', '2022-10-19 09:52:46', 0);
INSERT INTO `sensor` VALUES (5408, 'Light', '2022-10-19 09:52:49', 0);
INSERT INTO `sensor` VALUES (5409, 'Light', '2022-10-19 09:52:52', 0);
INSERT INTO `sensor` VALUES (5410, 'Light', '2022-10-19 09:52:55', 0);
INSERT INTO `sensor` VALUES (5411, 'Light', '2022-10-19 09:52:58', 0);
INSERT INTO `sensor` VALUES (5412, 'Light', '2022-10-19 09:53:01', 0);
INSERT INTO `sensor` VALUES (5413, 'Light', '2022-10-19 09:53:04', 0);
INSERT INTO `sensor` VALUES (5414, 'Light', '2022-10-19 09:53:07', 0);
INSERT INTO `sensor` VALUES (5415, 'Light', '2022-10-19 09:53:10', 0);
INSERT INTO `sensor` VALUES (5416, 'Light', '2022-10-19 09:53:13', 0);
INSERT INTO `sensor` VALUES (5417, 'Light', '2022-10-19 09:53:17', 0);
INSERT INTO `sensor` VALUES (5418, 'Light', '2022-10-19 09:53:20', 0);
INSERT INTO `sensor` VALUES (5419, 'Light', '2022-10-19 09:53:23', 0);
INSERT INTO `sensor` VALUES (5420, 'Light', '2022-10-19 09:53:26', 0);
INSERT INTO `sensor` VALUES (5421, 'Light', '2022-10-19 09:53:29', 0);
INSERT INTO `sensor` VALUES (5422, 'Light', '2022-10-19 09:53:32', 0);
INSERT INTO `sensor` VALUES (5423, 'Light', '2022-10-19 09:53:35', 0);
INSERT INTO `sensor` VALUES (5424, 'Light', '2022-10-19 09:53:38', 0);
INSERT INTO `sensor` VALUES (5425, 'Light', '2022-10-19 09:53:41', 0);
INSERT INTO `sensor` VALUES (5426, 'Light', '2022-10-19 09:53:44', 0);
INSERT INTO `sensor` VALUES (5427, 'Light', '2022-10-19 09:53:47', 0);
INSERT INTO `sensor` VALUES (5428, 'Light', '2022-10-19 09:53:50', 0);
INSERT INTO `sensor` VALUES (5429, 'Light', '2022-10-19 09:53:53', 0);
INSERT INTO `sensor` VALUES (5430, 'Light', '2022-10-19 09:53:56', 0);
INSERT INTO `sensor` VALUES (5431, 'Light', '2022-10-19 09:53:59', 0);
INSERT INTO `sensor` VALUES (5432, 'Light', '2022-10-19 09:54:02', 0);
INSERT INTO `sensor` VALUES (5433, 'Light', '2022-10-19 09:54:05', 0);
INSERT INTO `sensor` VALUES (5434, 'Light', '2022-10-19 09:54:08', 0);
INSERT INTO `sensor` VALUES (5435, 'Light', '2022-10-19 09:54:11', 0);
INSERT INTO `sensor` VALUES (5436, 'Light', '2022-10-19 09:54:14', 0);
INSERT INTO `sensor` VALUES (5437, 'Light', '2022-10-19 09:54:17', 0);
INSERT INTO `sensor` VALUES (5438, 'Light', '2022-10-19 09:55:23', 0);
INSERT INTO `sensor` VALUES (5439, 'Light', '2022-10-19 09:55:26', 0);
INSERT INTO `sensor` VALUES (5440, 'Light', '2022-10-19 09:55:29', 0);
INSERT INTO `sensor` VALUES (5441, 'Light', '2022-10-19 09:55:32', 0);
INSERT INTO `sensor` VALUES (5442, 'Light', '2022-10-19 09:55:35', 0);
INSERT INTO `sensor` VALUES (5443, 'Light', '2022-10-19 09:55:38', 0);
INSERT INTO `sensor` VALUES (5444, 'Light', '2022-10-19 09:55:41', 0);
INSERT INTO `sensor` VALUES (5445, 'Light', '2022-10-19 09:55:44', 0);
INSERT INTO `sensor` VALUES (5446, 'Light', '2022-10-19 09:55:47', 0);
INSERT INTO `sensor` VALUES (5447, 'Light', '2022-10-19 09:55:50', 0);
INSERT INTO `sensor` VALUES (5448, 'Light', '2022-10-19 09:55:53', 0);
INSERT INTO `sensor` VALUES (5449, 'Light', '2022-10-19 09:55:56', 0);
INSERT INTO `sensor` VALUES (5450, 'Light', '2022-10-19 09:55:59', 0);
INSERT INTO `sensor` VALUES (5451, 'Light', '2022-10-19 09:56:02', 0);
INSERT INTO `sensor` VALUES (5452, 'Light', '2022-10-19 09:56:05', 0);
INSERT INTO `sensor` VALUES (5453, 'Light', '2022-10-19 09:56:08', 0);
INSERT INTO `sensor` VALUES (5454, 'Light', '2022-10-19 09:56:11', 0);
INSERT INTO `sensor` VALUES (5455, 'Light', '2022-10-19 09:56:14', 0);
INSERT INTO `sensor` VALUES (5456, 'Light', '2022-10-19 09:56:17', 0);
INSERT INTO `sensor` VALUES (5457, 'Light', '2022-10-19 09:56:20', 0);
INSERT INTO `sensor` VALUES (5458, 'Light', '2022-10-19 09:56:23', 0);
INSERT INTO `sensor` VALUES (5459, 'Light', '2022-10-19 09:56:26', 0);
INSERT INTO `sensor` VALUES (5460, 'Light', '2022-10-19 09:56:29', 0);
INSERT INTO `sensor` VALUES (5461, 'Light', '2022-10-19 09:56:32', 0);
INSERT INTO `sensor` VALUES (5462, 'Light', '2022-10-19 09:56:35', 0);
INSERT INTO `sensor` VALUES (5463, 'Light', '2022-10-19 09:56:38', 1);
INSERT INTO `sensor` VALUES (5464, 'Light', '2022-10-19 09:56:41', 1);
INSERT INTO `sensor` VALUES (5465, 'Light', '2022-10-19 09:56:44', 0);
INSERT INTO `sensor` VALUES (5466, 'Light', '2022-10-19 09:56:47', 0);
INSERT INTO `sensor` VALUES (5467, 'Light', '2022-10-19 09:56:50', 0);
INSERT INTO `sensor` VALUES (5468, 'Light', '2022-10-19 09:56:53', 0);
INSERT INTO `sensor` VALUES (5469, 'Light', '2022-10-19 09:56:56', 0);
INSERT INTO `sensor` VALUES (5470, 'Light', '2022-10-19 09:56:59', 0);
INSERT INTO `sensor` VALUES (5471, 'Light', '2022-10-19 09:57:02', 0);
INSERT INTO `sensor` VALUES (5472, 'Light', '2022-10-19 09:57:05', 0);
INSERT INTO `sensor` VALUES (5473, 'Light', '2022-10-19 09:57:08', 0);
INSERT INTO `sensor` VALUES (5474, 'Light', '2022-10-19 09:57:11', 0);
INSERT INTO `sensor` VALUES (5475, 'Light', '2022-10-19 09:57:14', 0);
INSERT INTO `sensor` VALUES (5476, 'Light', '2022-10-19 09:57:17', 0);
INSERT INTO `sensor` VALUES (5477, 'Light', '2022-10-19 09:57:20', 0);
INSERT INTO `sensor` VALUES (5478, 'Light', '2022-10-19 09:57:23', 0);
INSERT INTO `sensor` VALUES (5479, 'Light', '2022-10-19 09:57:26', 0);
INSERT INTO `sensor` VALUES (5480, 'Light', '2022-10-19 09:57:29', 0);
INSERT INTO `sensor` VALUES (5481, 'Light', '2022-10-19 09:57:32', 0);
INSERT INTO `sensor` VALUES (5482, 'Light', '2022-10-19 09:57:35', 0);
INSERT INTO `sensor` VALUES (5483, 'Light', '2022-10-19 09:57:38', 0);
INSERT INTO `sensor` VALUES (5484, 'Light', '2022-10-19 09:57:41', 0);
INSERT INTO `sensor` VALUES (5485, 'Light', '2022-10-19 09:57:44', 0);
INSERT INTO `sensor` VALUES (5486, 'Light', '2022-10-19 09:57:47', 0);
INSERT INTO `sensor` VALUES (5487, 'Light', '2022-10-19 09:57:50', 0);
INSERT INTO `sensor` VALUES (5488, 'Light', '2022-10-19 09:57:53', 0);
INSERT INTO `sensor` VALUES (5489, 'Light', '2022-10-19 09:57:56', 0);
INSERT INTO `sensor` VALUES (5490, 'Light', '2022-10-19 09:57:59', 0);
INSERT INTO `sensor` VALUES (5491, 'Light', '2022-10-19 09:58:02', 0);
INSERT INTO `sensor` VALUES (5492, 'Light', '2022-10-19 09:58:06', 0);
INSERT INTO `sensor` VALUES (5493, 'Light', '2022-10-19 09:58:09', 0);
INSERT INTO `sensor` VALUES (5494, 'Light', '2022-10-19 09:58:12', 0);
INSERT INTO `sensor` VALUES (5495, 'Light', '2022-10-19 09:58:15', 0);
INSERT INTO `sensor` VALUES (5496, 'Light', '2022-10-19 09:58:18', 0);
INSERT INTO `sensor` VALUES (5497, 'Light', '2022-10-19 09:58:21', 0);
INSERT INTO `sensor` VALUES (5498, 'Light', '2022-10-19 09:58:27', 0);
INSERT INTO `sensor` VALUES (5499, 'Light', '2022-10-19 09:58:30', 0);
INSERT INTO `sensor` VALUES (5500, 'Light', '2022-10-19 09:58:33', 0);
INSERT INTO `sensor` VALUES (5501, 'Light', '2022-10-19 09:58:36', 0);
INSERT INTO `sensor` VALUES (5502, 'Light', '2022-10-19 09:58:39', 0);
INSERT INTO `sensor` VALUES (5503, 'Light', '2022-10-19 09:58:42', 0);
INSERT INTO `sensor` VALUES (5504, 'Light', '2022-10-19 09:58:45', 0);
INSERT INTO `sensor` VALUES (5505, 'Light', '2022-10-19 09:58:48', 0);
INSERT INTO `sensor` VALUES (5506, 'Light', '2022-10-19 09:58:51', 0);
INSERT INTO `sensor` VALUES (5507, 'Light', '2022-10-19 09:58:54', 0);
INSERT INTO `sensor` VALUES (5508, 'Light', '2022-10-19 09:58:57', 0);
INSERT INTO `sensor` VALUES (5509, 'Light', '2022-10-19 09:59:00', 0);
INSERT INTO `sensor` VALUES (5510, 'Light', '2022-10-19 09:59:03', 0);
INSERT INTO `sensor` VALUES (5511, 'Light', '2022-10-19 09:59:06', 0);
INSERT INTO `sensor` VALUES (5512, 'Light', '2022-10-19 09:59:09', 0);
INSERT INTO `sensor` VALUES (5513, 'Light', '2022-10-19 09:59:12', 0);
INSERT INTO `sensor` VALUES (5514, 'Light', '2022-10-19 09:59:15', 0);
INSERT INTO `sensor` VALUES (5515, 'Light', '2022-10-19 09:59:18', 0);
INSERT INTO `sensor` VALUES (5516, 'Light', '2022-10-19 09:59:21', 0);
INSERT INTO `sensor` VALUES (5517, 'Light', '2022-10-19 09:59:24', 0);
INSERT INTO `sensor` VALUES (5518, 'Light', '2022-10-19 09:59:27', 0);
INSERT INTO `sensor` VALUES (5519, 'Light', '2022-10-19 09:59:30', 0);
INSERT INTO `sensor` VALUES (5520, 'Light', '2022-10-19 09:59:33', 0);
INSERT INTO `sensor` VALUES (5521, 'Light', '2022-10-19 09:59:36', 0);
INSERT INTO `sensor` VALUES (5522, 'Light', '2022-10-19 09:59:39', 0);
INSERT INTO `sensor` VALUES (5523, 'Light', '2022-10-19 09:59:42', 0);
INSERT INTO `sensor` VALUES (5524, 'Light', '2022-10-19 09:59:45', 0);
INSERT INTO `sensor` VALUES (5525, 'Light', '2022-10-19 09:59:48', 0);
INSERT INTO `sensor` VALUES (5526, 'Light', '2022-10-19 09:59:51', 0);
INSERT INTO `sensor` VALUES (5527, 'Light', '2022-10-19 09:59:54', 0);
INSERT INTO `sensor` VALUES (5528, 'Light', '2022-10-19 09:59:57', 0);
INSERT INTO `sensor` VALUES (5529, 'Light', '2022-10-19 10:00:00', 0);
INSERT INTO `sensor` VALUES (5530, 'Light', '2022-10-19 10:00:03', 0);
INSERT INTO `sensor` VALUES (5531, 'Light', '2022-10-19 10:00:06', 0);
INSERT INTO `sensor` VALUES (5532, 'Light', '2022-10-19 10:00:09', 0);
INSERT INTO `sensor` VALUES (5533, 'Light', '2022-10-19 10:00:12', 0);
INSERT INTO `sensor` VALUES (5534, 'Light', '2022-10-19 10:00:15', 0);
INSERT INTO `sensor` VALUES (5535, 'Light', '2022-10-19 10:00:18', 0);
INSERT INTO `sensor` VALUES (5536, 'Light', '2022-10-19 10:00:21', 0);
INSERT INTO `sensor` VALUES (5537, 'Light', '2022-10-19 10:00:24', 0);
INSERT INTO `sensor` VALUES (5538, 'Light', '2022-10-19 10:00:27', 0);
INSERT INTO `sensor` VALUES (5539, 'Light', '2022-10-19 10:00:30', 0);
INSERT INTO `sensor` VALUES (5540, 'Light', '2022-10-19 10:00:33', 0);
INSERT INTO `sensor` VALUES (5541, 'Light', '2022-10-19 10:00:36', 0);
INSERT INTO `sensor` VALUES (5542, 'Light', '2022-10-19 10:00:39', 0);
INSERT INTO `sensor` VALUES (5543, 'Light', '2022-10-19 10:00:42', 0);
INSERT INTO `sensor` VALUES (5544, 'Light', '2022-10-19 10:00:45', 0);
INSERT INTO `sensor` VALUES (5545, 'Light', '2022-10-19 10:00:48', 0);
INSERT INTO `sensor` VALUES (5546, 'Light', '2022-10-19 10:00:51', 0);
INSERT INTO `sensor` VALUES (5547, 'Light', '2022-10-19 10:00:54', 0);
INSERT INTO `sensor` VALUES (5548, 'Light', '2022-10-19 10:00:57', 0);
INSERT INTO `sensor` VALUES (5549, 'Light', '2022-10-19 10:01:00', 0);
INSERT INTO `sensor` VALUES (5550, 'Light', '2022-10-19 10:01:03', 0);
INSERT INTO `sensor` VALUES (5551, 'Light', '2022-10-19 10:01:06', 0);
INSERT INTO `sensor` VALUES (5552, 'Light', '2022-10-19 10:01:09', 0);
INSERT INTO `sensor` VALUES (5553, 'Light', '2022-10-19 10:01:12', 0);
INSERT INTO `sensor` VALUES (5554, 'Light', '2022-10-19 10:01:15', 0);
INSERT INTO `sensor` VALUES (5555, 'Light', '2022-10-19 10:01:18', 0);
INSERT INTO `sensor` VALUES (5556, 'Light', '2022-10-19 10:01:21', 0);
INSERT INTO `sensor` VALUES (5557, 'Light', '2022-10-19 10:01:24', 0);
INSERT INTO `sensor` VALUES (5558, 'Light', '2022-10-19 10:01:27', 0);
INSERT INTO `sensor` VALUES (5559, 'Light', '2022-10-19 10:01:30', 0);
INSERT INTO `sensor` VALUES (5560, 'Light', '2022-10-19 10:01:33', 0);
INSERT INTO `sensor` VALUES (5561, 'Light', '2022-10-19 10:01:36', 0);
INSERT INTO `sensor` VALUES (5562, 'Light', '2022-10-19 10:01:39', 0);
INSERT INTO `sensor` VALUES (5563, 'Light', '2022-10-19 10:01:42', 0);
INSERT INTO `sensor` VALUES (5564, 'Light', '2022-10-19 10:01:45', 0);
INSERT INTO `sensor` VALUES (5565, 'Light', '2022-10-19 10:01:48', 0);
INSERT INTO `sensor` VALUES (5566, 'Light', '2022-10-19 10:01:51', 0);
INSERT INTO `sensor` VALUES (5567, 'Light', '2022-10-19 10:01:54', 0);
INSERT INTO `sensor` VALUES (5568, 'Light', '2022-10-19 10:01:57', 0);
INSERT INTO `sensor` VALUES (5569, 'Light', '2022-10-19 10:02:00', 0);
INSERT INTO `sensor` VALUES (5570, 'Light', '2022-10-19 10:02:03', 0);
INSERT INTO `sensor` VALUES (5571, 'Light', '2022-10-19 10:02:06', 0);
INSERT INTO `sensor` VALUES (5572, 'Light', '2022-10-19 10:02:09', 0);
INSERT INTO `sensor` VALUES (5573, 'Light', '2022-10-19 10:02:12', 0);
INSERT INTO `sensor` VALUES (5574, 'Light', '2022-10-19 10:02:15', 0);
INSERT INTO `sensor` VALUES (5575, 'Light', '2022-10-19 10:02:18', 0);
INSERT INTO `sensor` VALUES (5576, 'Light', '2022-10-19 10:02:21', 0);
INSERT INTO `sensor` VALUES (5577, 'Light', '2022-10-19 10:02:24', 0);
INSERT INTO `sensor` VALUES (5578, 'Light', '2022-10-19 10:02:27', 0);
INSERT INTO `sensor` VALUES (5579, 'Light', '2022-10-19 10:02:30', 0);
INSERT INTO `sensor` VALUES (5580, 'Light', '2022-10-19 10:02:33', 0);
INSERT INTO `sensor` VALUES (5581, 'Light', '2022-10-19 10:02:36', 0);
INSERT INTO `sensor` VALUES (5582, 'Light', '2022-10-19 10:02:39', 0);
INSERT INTO `sensor` VALUES (5583, 'Light', '2022-10-19 10:02:42', 0);
INSERT INTO `sensor` VALUES (5584, 'Light', '2022-10-19 10:02:46', 0);
INSERT INTO `sensor` VALUES (5585, 'Light', '2022-10-19 10:02:49', 0);
INSERT INTO `sensor` VALUES (5586, 'Light', '2022-10-19 10:02:52', 0);
INSERT INTO `sensor` VALUES (5587, 'Light', '2022-10-19 10:02:55', 0);
INSERT INTO `sensor` VALUES (5588, 'Light', '2022-10-19 10:02:58', 0);
INSERT INTO `sensor` VALUES (5589, 'Light', '2022-10-19 10:03:01', 0);
INSERT INTO `sensor` VALUES (5590, 'Light', '2022-10-19 10:03:04', 0);
INSERT INTO `sensor` VALUES (5591, 'Light', '2022-10-19 10:03:07', 0);
INSERT INTO `sensor` VALUES (5592, 'Light', '2022-10-19 10:03:10', 0);
INSERT INTO `sensor` VALUES (5593, 'Light', '2022-10-19 10:03:13', 0);
INSERT INTO `sensor` VALUES (5594, 'Light', '2022-10-19 10:03:16', 0);
INSERT INTO `sensor` VALUES (5595, 'Light', '2022-10-19 10:03:19', 0);
INSERT INTO `sensor` VALUES (5596, 'Light', '2022-10-19 10:03:22', 0);
INSERT INTO `sensor` VALUES (5597, 'Light', '2022-10-19 10:03:25', 0);
INSERT INTO `sensor` VALUES (5598, 'Light', '2022-10-19 10:03:28', 0);
INSERT INTO `sensor` VALUES (5599, 'Light', '2022-10-19 10:03:31', 0);
INSERT INTO `sensor` VALUES (5600, 'Light', '2022-10-19 10:03:34', 0);
INSERT INTO `sensor` VALUES (5601, 'Light', '2022-10-19 10:03:37', 0);
INSERT INTO `sensor` VALUES (5602, 'Light', '2022-10-19 10:03:40', 0);
INSERT INTO `sensor` VALUES (5603, 'Light', '2022-10-19 10:03:43', 0);
INSERT INTO `sensor` VALUES (5604, 'Light', '2022-10-19 10:03:46', 0);
INSERT INTO `sensor` VALUES (5605, 'Light', '2022-10-19 10:03:49', 0);
INSERT INTO `sensor` VALUES (5606, 'Light', '2022-10-19 10:03:52', 0);
INSERT INTO `sensor` VALUES (5607, 'Light', '2022-10-19 10:03:55', 0);
INSERT INTO `sensor` VALUES (5608, 'Light', '2022-10-19 10:03:58', 0);
INSERT INTO `sensor` VALUES (5609, 'Light', '2022-10-19 10:04:01', 0);
INSERT INTO `sensor` VALUES (5610, 'Light', '2022-10-19 10:04:04', 0);
INSERT INTO `sensor` VALUES (5611, 'Light', '2022-10-19 10:04:07', 0);
INSERT INTO `sensor` VALUES (5612, 'Light', '2022-10-19 10:04:10', 0);
INSERT INTO `sensor` VALUES (5613, 'Light', '2022-10-19 10:04:13', 0);
INSERT INTO `sensor` VALUES (5614, 'Light', '2022-10-19 10:04:16', 0);
INSERT INTO `sensor` VALUES (5615, 'Light', '2022-10-19 10:04:19', 0);
INSERT INTO `sensor` VALUES (5616, 'Light', '2022-10-19 10:04:22', 0);
INSERT INTO `sensor` VALUES (5617, 'Light', '2022-10-19 10:04:25', 0);
INSERT INTO `sensor` VALUES (5618, 'Light', '2022-10-19 10:04:28', 0);
INSERT INTO `sensor` VALUES (5619, 'Light', '2022-10-19 10:04:31', 0);
INSERT INTO `sensor` VALUES (5620, 'Light', '2022-10-19 10:04:34', 0);
INSERT INTO `sensor` VALUES (5621, 'Light', '2022-10-19 10:04:37', 0);
INSERT INTO `sensor` VALUES (5622, 'Light', '2022-10-19 10:04:40', 0);
INSERT INTO `sensor` VALUES (5623, 'Light', '2022-10-19 10:04:43', 0);
INSERT INTO `sensor` VALUES (5624, 'Light', '2022-10-19 10:04:46', 0);
INSERT INTO `sensor` VALUES (5625, 'Light', '2022-10-19 10:04:49', 0);
INSERT INTO `sensor` VALUES (5626, 'Light', '2022-10-19 10:04:52', 0);
INSERT INTO `sensor` VALUES (5627, 'Light', '2022-10-19 10:04:55', 0);
INSERT INTO `sensor` VALUES (5628, 'Light', '2022-10-19 10:04:58', 0);
INSERT INTO `sensor` VALUES (5629, 'Light', '2022-10-19 10:05:01', 0);
INSERT INTO `sensor` VALUES (5630, 'Light', '2022-10-19 10:05:04', 0);
INSERT INTO `sensor` VALUES (5631, 'Light', '2022-10-19 10:05:07', 0);
INSERT INTO `sensor` VALUES (5632, 'Light', '2022-10-19 10:05:10', 0);
INSERT INTO `sensor` VALUES (5633, 'Light', '2022-10-19 10:05:13', 0);
INSERT INTO `sensor` VALUES (5634, 'Light', '2022-10-19 10:05:16', 0);
INSERT INTO `sensor` VALUES (5635, 'Light', '2022-10-19 10:05:19', 0);
INSERT INTO `sensor` VALUES (5636, 'Light', '2022-10-19 10:05:22', 0);
INSERT INTO `sensor` VALUES (5637, 'Light', '2022-10-19 10:05:25', 0);
INSERT INTO `sensor` VALUES (5638, 'Light', '2022-10-19 10:05:28', 0);
INSERT INTO `sensor` VALUES (5639, 'Light', '2022-10-19 10:05:31', 0);
INSERT INTO `sensor` VALUES (5640, 'Light', '2022-10-19 10:05:34', 0);
INSERT INTO `sensor` VALUES (5641, 'Light', '2022-10-19 10:05:37', 0);
INSERT INTO `sensor` VALUES (5642, 'Light', '2022-10-19 10:05:40', 0);
INSERT INTO `sensor` VALUES (5643, 'Light', '2022-10-19 10:05:43', 0);
INSERT INTO `sensor` VALUES (5644, 'Light', '2022-10-19 10:05:46', 0);
INSERT INTO `sensor` VALUES (5645, 'Light', '2022-10-19 10:05:49', 0);
INSERT INTO `sensor` VALUES (5646, 'Light', '2022-10-19 10:05:52', 0);
INSERT INTO `sensor` VALUES (5647, 'Light', '2022-10-19 10:05:55', 0);
INSERT INTO `sensor` VALUES (5648, 'Light', '2022-10-19 10:05:58', 0);
INSERT INTO `sensor` VALUES (5649, 'Light', '2022-10-19 10:06:04', 0);
INSERT INTO `sensor` VALUES (5650, 'Light', '2022-10-19 10:06:07', 0);
INSERT INTO `sensor` VALUES (5651, 'Light', '2022-10-19 10:06:10', 0);
INSERT INTO `sensor` VALUES (5652, 'Light', '2022-10-19 10:06:13', 0);
INSERT INTO `sensor` VALUES (5653, 'Light', '2022-10-19 10:06:16', 0);
INSERT INTO `sensor` VALUES (5654, 'Light', '2022-10-19 10:06:19', 0);
INSERT INTO `sensor` VALUES (5655, 'Light', '2022-10-19 10:06:22', 0);
INSERT INTO `sensor` VALUES (5656, 'Light', '2022-10-19 10:06:25', 0);
INSERT INTO `sensor` VALUES (5657, 'Light', '2022-10-19 10:06:28', 0);
INSERT INTO `sensor` VALUES (5658, 'Light', '2022-10-19 10:06:31', 0);
INSERT INTO `sensor` VALUES (5659, 'Light', '2022-10-19 10:06:34', 0);
INSERT INTO `sensor` VALUES (5660, 'Light', '2022-10-19 10:06:37', 0);
INSERT INTO `sensor` VALUES (5661, 'Light', '2022-10-19 10:06:41', 0);
INSERT INTO `sensor` VALUES (5662, 'Light', '2022-10-19 10:06:44', 0);
INSERT INTO `sensor` VALUES (5663, 'Light', '2022-10-19 10:06:47', 0);
INSERT INTO `sensor` VALUES (5664, 'Light', '2022-10-19 10:06:50', 0);
INSERT INTO `sensor` VALUES (5665, 'Light', '2022-10-19 10:06:53', 0);
INSERT INTO `sensor` VALUES (5666, 'Light', '2022-10-19 10:06:56', 0);
INSERT INTO `sensor` VALUES (5667, 'Light', '2022-10-19 10:06:59', 0);
INSERT INTO `sensor` VALUES (5668, 'Light', '2022-10-19 10:07:02', 0);
INSERT INTO `sensor` VALUES (5669, 'Light', '2022-10-19 10:07:05', 0);
INSERT INTO `sensor` VALUES (5670, 'Light', '2022-10-19 10:07:08', 0);
INSERT INTO `sensor` VALUES (5671, 'Light', '2022-10-19 10:07:11', 0);
INSERT INTO `sensor` VALUES (5672, 'Light', '2022-10-19 10:07:14', 0);
INSERT INTO `sensor` VALUES (5673, 'Light', '2022-10-19 10:07:17', 0);
INSERT INTO `sensor` VALUES (5674, 'Light', '2022-10-19 10:07:20', 0);
INSERT INTO `sensor` VALUES (5675, 'Light', '2022-10-19 10:07:23', 0);
INSERT INTO `sensor` VALUES (5676, 'Light', '2022-10-19 10:07:26', 0);
INSERT INTO `sensor` VALUES (5677, 'Light', '2022-10-19 10:07:29', 0);
INSERT INTO `sensor` VALUES (5678, 'Light', '2022-10-19 10:07:32', 0);
INSERT INTO `sensor` VALUES (5679, 'Light', '2022-10-19 10:07:35', 0);
INSERT INTO `sensor` VALUES (5680, 'Light', '2022-10-19 10:07:38', 0);
INSERT INTO `sensor` VALUES (5681, 'Light', '2022-10-19 10:07:41', 0);
INSERT INTO `sensor` VALUES (5682, 'Light', '2022-10-19 10:07:44', 0);
INSERT INTO `sensor` VALUES (5683, 'Light', '2022-10-19 10:07:47', 0);
INSERT INTO `sensor` VALUES (5684, 'Light', '2022-10-19 10:07:50', 0);
INSERT INTO `sensor` VALUES (5685, 'Light', '2022-10-19 10:07:53', 0);
INSERT INTO `sensor` VALUES (5686, 'Light', '2022-10-19 10:07:56', 0);
INSERT INTO `sensor` VALUES (5687, 'Light', '2022-10-19 10:07:59', 0);
INSERT INTO `sensor` VALUES (5688, 'Light', '2022-10-19 10:08:02', 0);
INSERT INTO `sensor` VALUES (5689, 'Light', '2022-10-19 10:08:05', 0);
INSERT INTO `sensor` VALUES (5690, 'Light', '2022-10-19 10:08:08', 0);
INSERT INTO `sensor` VALUES (5691, 'Light', '2022-10-19 10:08:11', 0);
INSERT INTO `sensor` VALUES (5692, 'Light', '2022-10-19 10:08:14', 0);
INSERT INTO `sensor` VALUES (5693, 'Light', '2022-10-19 10:08:17', 0);
INSERT INTO `sensor` VALUES (5694, 'Light', '2022-10-19 10:08:20', 0);
INSERT INTO `sensor` VALUES (5695, 'Light', '2022-10-19 10:08:23', 0);
INSERT INTO `sensor` VALUES (5696, 'Light', '2022-10-19 10:08:26', 0);
INSERT INTO `sensor` VALUES (5697, 'Light', '2022-10-19 10:08:29', 0);
INSERT INTO `sensor` VALUES (5698, 'Light', '2022-10-19 10:08:32', 0);
INSERT INTO `sensor` VALUES (5699, 'Light', '2022-10-19 10:08:35', 0);
INSERT INTO `sensor` VALUES (5700, 'Light', '2022-10-19 10:08:38', 0);
INSERT INTO `sensor` VALUES (5701, 'Light', '2022-10-19 10:08:41', 0);
INSERT INTO `sensor` VALUES (5702, 'Light', '2022-10-19 10:08:44', 0);
INSERT INTO `sensor` VALUES (5703, 'Light', '2022-10-19 10:08:47', 0);
INSERT INTO `sensor` VALUES (5704, 'Light', '2022-10-19 10:08:50', 0);
INSERT INTO `sensor` VALUES (5705, 'Light', '2022-10-19 10:08:53', 0);
INSERT INTO `sensor` VALUES (5706, 'Light', '2022-10-19 10:08:56', 0);
INSERT INTO `sensor` VALUES (5707, 'Light', '2022-10-19 10:08:59', 0);
INSERT INTO `sensor` VALUES (5708, 'Light', '2022-10-19 10:09:02', 0);
INSERT INTO `sensor` VALUES (5709, 'Light', '2022-10-19 10:09:05', 0);
INSERT INTO `sensor` VALUES (5710, 'Light', '2022-10-19 10:09:08', 0);
INSERT INTO `sensor` VALUES (5711, 'Light', '2022-10-19 10:09:11', 0);
INSERT INTO `sensor` VALUES (5712, 'Light', '2022-10-19 10:09:14', 0);
INSERT INTO `sensor` VALUES (5713, 'Light', '2022-10-19 10:09:17', 0);
INSERT INTO `sensor` VALUES (5714, 'Light', '2022-10-19 10:09:20', 0);
INSERT INTO `sensor` VALUES (5715, 'Light', '2022-10-19 10:09:23', 0);
INSERT INTO `sensor` VALUES (5716, 'Light', '2022-10-19 10:09:26', 0);
INSERT INTO `sensor` VALUES (5717, 'Light', '2022-10-19 10:09:29', 0);
INSERT INTO `sensor` VALUES (5718, 'Light', '2022-10-19 10:09:32', 0);
INSERT INTO `sensor` VALUES (5719, 'Light', '2022-10-19 10:09:35', 0);
INSERT INTO `sensor` VALUES (5720, 'Light', '2022-10-19 10:09:38', 0);
INSERT INTO `sensor` VALUES (5721, 'Light', '2022-10-19 10:09:41', 0);
INSERT INTO `sensor` VALUES (5722, 'Light', '2022-10-19 10:09:44', 0);
INSERT INTO `sensor` VALUES (5723, 'Light', '2022-10-19 10:09:47', 0);
INSERT INTO `sensor` VALUES (5724, 'Light', '2022-10-19 10:09:50', 0);
INSERT INTO `sensor` VALUES (5725, 'Light', '2022-10-19 10:09:53', 0);
INSERT INTO `sensor` VALUES (5726, 'Light', '2022-10-19 10:09:56', 0);
INSERT INTO `sensor` VALUES (5727, 'Light', '2022-10-19 10:09:59', 0);
INSERT INTO `sensor` VALUES (5728, 'Light', '2022-10-19 10:10:02', 0);
INSERT INTO `sensor` VALUES (5729, 'Light', '2022-10-19 10:10:05', 0);
INSERT INTO `sensor` VALUES (5730, 'Light', '2022-10-19 10:10:08', 0);
INSERT INTO `sensor` VALUES (5731, 'Light', '2022-10-19 10:10:11', 1);
INSERT INTO `sensor` VALUES (5732, 'Light', '2022-10-19 10:10:14', 0);
INSERT INTO `sensor` VALUES (5733, 'Light', '2022-10-19 10:10:17', 0);
INSERT INTO `sensor` VALUES (5734, 'Light', '2022-10-19 10:10:20', 0);
INSERT INTO `sensor` VALUES (5735, 'Light', '2022-10-19 10:10:23', 0);
INSERT INTO `sensor` VALUES (5736, 'Light', '2022-10-19 10:10:26', 0);
INSERT INTO `sensor` VALUES (5737, 'Light', '2022-10-19 10:10:29', 0);
INSERT INTO `sensor` VALUES (5738, 'Light', '2022-10-19 10:10:32', 0);
INSERT INTO `sensor` VALUES (5739, 'Light', '2022-10-19 10:10:35', 0);
INSERT INTO `sensor` VALUES (5740, 'Light', '2022-10-19 10:10:38', 0);
INSERT INTO `sensor` VALUES (5741, 'Light', '2022-10-19 10:10:41', 0);
INSERT INTO `sensor` VALUES (5742, 'Light', '2022-10-19 10:10:44', 0);
INSERT INTO `sensor` VALUES (5743, 'Light', '2022-10-19 10:10:47', 0);
INSERT INTO `sensor` VALUES (5744, 'Light', '2022-10-19 10:10:50', 0);
INSERT INTO `sensor` VALUES (5745, 'Light', '2022-10-19 10:10:53', 0);
INSERT INTO `sensor` VALUES (5746, 'Light', '2022-10-19 10:10:56', 0);
INSERT INTO `sensor` VALUES (5747, 'Light', '2022-10-19 10:10:59', 0);
INSERT INTO `sensor` VALUES (5748, 'Light', '2022-10-19 10:11:02', 0);
INSERT INTO `sensor` VALUES (5749, 'Light', '2022-10-19 10:11:05', 0);
INSERT INTO `sensor` VALUES (5750, 'Light', '2022-10-19 10:11:08', 0);
INSERT INTO `sensor` VALUES (5751, 'Light', '2022-10-19 10:11:11', 0);
INSERT INTO `sensor` VALUES (5752, 'Light', '2022-10-19 10:11:14', 0);
INSERT INTO `sensor` VALUES (5753, 'Light', '2022-10-19 10:11:17', 0);
INSERT INTO `sensor` VALUES (5754, 'Light', '2022-10-19 10:11:20', 0);
INSERT INTO `sensor` VALUES (5755, 'Light', '2022-10-19 10:11:24', 0);
INSERT INTO `sensor` VALUES (5756, 'Light', '2022-10-19 10:11:27', 0);
INSERT INTO `sensor` VALUES (5757, 'Light', '2022-10-19 10:11:30', 0);
INSERT INTO `sensor` VALUES (5758, 'Light', '2022-10-19 10:11:33', 0);
INSERT INTO `sensor` VALUES (5759, 'Light', '2022-10-19 10:11:36', 0);
INSERT INTO `sensor` VALUES (5760, 'Light', '2022-10-19 10:11:39', 0);
INSERT INTO `sensor` VALUES (5761, 'Light', '2022-10-19 10:11:42', 0);
INSERT INTO `sensor` VALUES (5762, 'Light', '2022-10-19 10:11:45', 0);
INSERT INTO `sensor` VALUES (5763, 'Light', '2022-10-19 10:11:48', 0);
INSERT INTO `sensor` VALUES (5764, 'Light', '2022-10-19 10:11:51', 0);
INSERT INTO `sensor` VALUES (5765, 'Light', '2022-10-19 10:11:54', 0);
INSERT INTO `sensor` VALUES (5766, 'Light', '2022-10-19 10:11:57', 0);
INSERT INTO `sensor` VALUES (5767, 'Light', '2022-10-19 10:12:00', 0);
INSERT INTO `sensor` VALUES (5768, 'Light', '2022-10-19 10:12:03', 0);
INSERT INTO `sensor` VALUES (5769, 'Light', '2022-10-19 10:12:06', 0);
INSERT INTO `sensor` VALUES (5770, 'Light', '2022-10-19 10:12:09', 0);
INSERT INTO `sensor` VALUES (5771, 'Light', '2022-10-19 10:12:12', 0);
INSERT INTO `sensor` VALUES (5772, 'Light', '2022-10-19 10:12:15', 0);
INSERT INTO `sensor` VALUES (5773, 'Light', '2022-10-19 10:12:18', 0);
INSERT INTO `sensor` VALUES (5774, 'Light', '2022-10-19 10:12:21', 0);
INSERT INTO `sensor` VALUES (5775, 'Light', '2022-10-19 10:12:24', 0);
INSERT INTO `sensor` VALUES (5776, 'Light', '2022-10-19 10:12:27', 0);
INSERT INTO `sensor` VALUES (5777, 'Light', '2022-10-19 10:12:30', 0);
INSERT INTO `sensor` VALUES (5778, 'Light', '2022-10-19 10:12:33', 0);
INSERT INTO `sensor` VALUES (5779, 'Light', '2022-10-19 10:12:36', 0);
INSERT INTO `sensor` VALUES (5780, 'Light', '2022-10-19 10:12:39', 0);
INSERT INTO `sensor` VALUES (5781, 'Light', '2022-10-19 10:12:42', 0);
INSERT INTO `sensor` VALUES (5782, 'Light', '2022-10-19 10:12:45', 0);
INSERT INTO `sensor` VALUES (5783, 'Light', '2022-10-19 10:12:48', 0);
INSERT INTO `sensor` VALUES (5784, 'Light', '2022-10-19 10:12:51', 0);
INSERT INTO `sensor` VALUES (5785, 'Light', '2022-10-19 10:12:54', 0);
INSERT INTO `sensor` VALUES (5786, 'Light', '2022-10-19 10:12:57', 0);
INSERT INTO `sensor` VALUES (5787, 'Light', '2022-10-19 10:13:00', 0);
INSERT INTO `sensor` VALUES (5788, 'Light', '2022-10-19 10:13:03', 0);
INSERT INTO `sensor` VALUES (5789, 'Light', '2022-10-19 10:13:06', 0);
INSERT INTO `sensor` VALUES (5790, 'Light', '2022-10-19 10:13:09', 0);
INSERT INTO `sensor` VALUES (5791, 'Light', '2022-10-19 10:13:12', 0);
INSERT INTO `sensor` VALUES (5792, 'Light', '2022-10-19 10:13:15', 0);
INSERT INTO `sensor` VALUES (5793, 'Light', '2022-10-19 10:13:18', 0);
INSERT INTO `sensor` VALUES (5794, 'Light', '2022-10-19 10:13:21', 0);
INSERT INTO `sensor` VALUES (5795, 'Light', '2022-10-19 10:13:24', 0);
INSERT INTO `sensor` VALUES (5796, 'Light', '2022-10-19 10:13:27', 0);
INSERT INTO `sensor` VALUES (5797, 'Light', '2022-10-19 10:13:30', 0);
INSERT INTO `sensor` VALUES (5798, 'Light', '2022-10-19 10:13:33', 0);
INSERT INTO `sensor` VALUES (5799, 'Light', '2022-10-19 10:13:36', 0);
INSERT INTO `sensor` VALUES (5800, 'Light', '2022-10-19 10:13:39', 0);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('user', 'el-icon-user', 'icon');
INSERT INTO `sys_dict` VALUES ('house', 'el-icon-house', 'icon');
INSERT INTO `sys_dict` VALUES ('menu', 'el-icon-menu', 'icon');
INSERT INTO `sys_dict` VALUES ('s-custom', 'el-icon-s-custom', 'icon');
INSERT INTO `sys_dict` VALUES ('s-grid', 'el-icon-s-grid', 'icon');
INSERT INTO `sys_dict` VALUES ('document', 'el-icon-document', 'icon');
INSERT INTO `sys_dict` VALUES ('coffee', 'el-icon-coffee\r\n', 'icon');
INSERT INTO `sys_dict` VALUES ('s-marketing', 'el-icon-s-marketing', 'icon');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件类型',
  `size` bigint NULL DEFAULT NULL COMMENT '文件大小(kb)',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '下载链接',
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件md5',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '是否禁用链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (23, 'NingNing.jpg', 'jpg', 35, 'http://localhost:5057/file/ec8eee52cc4d449ba5e43bf088225d59.jpg', '9d8d3218944b59584e602aadf7e42d53', 0, 1);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '路径',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图标',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `pid` int NULL DEFAULT NULL COMMENT '父级id',
  `page_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '页面路径',
  `sort_num` int NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '用户管理', '/user', 'el-icon-user', NULL, 7, 'User', 301);
INSERT INTO `sys_menu` VALUES (2, '角色管理', '/role', 'el-icon-s-custom', NULL, 7, 'Role', 302);
INSERT INTO `sys_menu` VALUES (3, '菜单管理', '/menu', 'el-icon-menu', NULL, 7, 'Menu', 303);
INSERT INTO `sys_menu` VALUES (4, '文件管理', '/file', 'el-icon-document', NULL, 7, 'File', 304);
INSERT INTO `sys_menu` VALUES (5, '网页主页', '/home', 'el-icon-house', NULL, NULL, 'Home', 0);
INSERT INTO `sys_menu` VALUES (6, '传感器管理', '/sensor', 'el-icon-s-marketing', NULL, 7, 'Sensor', 305);
INSERT INTO `sys_menu` VALUES (7, '系统管理', NULL, 'el-icon-s-grid', NULL, NULL, NULL, 300);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'Admin管理员', '管理员Admin', 'ROLE_ADMIN');
INSERT INTO `sys_role` VALUES (2, '普通用户', '普通用户', 'ROLE_USER');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int NOT NULL COMMENT '角色id',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色菜单关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (2, 5);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 7);
INSERT INTO `sys_role_menu` VALUES (4, 5);
INSERT INTO `sys_role_menu` VALUES (4, 6);
INSERT INTO `sys_role_menu` VALUES (4, 7);

-- ----------------------------
-- Table structure for user_rights
-- ----------------------------
DROP TABLE IF EXISTS `user_rights`;
CREATE TABLE `user_rights`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_rights
-- ----------------------------
INSERT INTO `user_rights` VALUES (1, 'u1', 'r2');
INSERT INTO `user_rights` VALUES (3, 'u2', 'r1');
INSERT INTO `user_rights` VALUES (4, 'u3', 'r2');
INSERT INTO `user_rights` VALUES (5, 'u3', 'r2');
INSERT INTO `user_rights` VALUES (6, 'u3', 'r2');
INSERT INTO `user_rights` VALUES (7, 'u4', 'r2');
INSERT INTO `user_rights` VALUES (8, 'u3', 'r2');
INSERT INTO `user_rights` VALUES (9, 'u4', 'r2');
INSERT INTO `user_rights` VALUES (10, 'u5', 'r2');
INSERT INTO `user_rights` VALUES (11, 'u4', 'r2');
INSERT INTO `user_rights` VALUES (12, 'u4', 'r2');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户id',
  `user_account` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `user_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码',
  `user_postbox` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `avatar_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像路径',
  `nick_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'u2', 'test', '456', '1919810@qq.com', 'http://localhost:5057/file/085b9b65e58d485d88c345fe5c0720c7.jpg', 'test1', 'ROLE_USER');
INSERT INTO `users` VALUES (3, 'u1', '15057735381', 'root', '1840087157@qq.com', 'http://localhost:5057/file/ec8eee52cc4d449ba5e43bf088225d59.jpg', 'Alizceh', 'ROLE_ADMIN');
INSERT INTO `users` VALUES (15, 'u3', 'test1', '456', NULL, '', '普通用户u3', NULL);

-- ----------------------------
-- Table structure for web_user
-- ----------------------------
DROP TABLE IF EXISTS `web_user`;
CREATE TABLE `web_user`  (
  `user_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_account` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nick_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_user
-- ----------------------------
INSERT INTO `web_user` VALUES ('u1', '15057735381', 'Alizceh', 'http://localhost:5057/NingNing.jpg');
INSERT INTO `web_user` VALUES ('u1', 'test', '测试人员', NULL);

SET FOREIGN_KEY_CHECKS = 1;
