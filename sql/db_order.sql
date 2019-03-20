/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : db_order

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 19/03/2019 17:21:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(40) NOT NULL DEFAULT '' COMMENT '订单编码',
  `order_status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1待付款 2待发货 3待收货 4已收货 5已取消',
  `name` varchar(40) NOT NULL DEFAULT '',
  `phone_number` varchar(45) NULL DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态 0删除 1正常 ',
  `created_at` bigint(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` bigint(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`)
);

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, '2019021315010099989953', 6, '王昭君', '13164789921', 1, 1552357279, 1552372102);
INSERT INTO `order` VALUES (2, '2019031114060610198505', 5, '李白', '13162459821', 1, 1552370793, 1552370793);
INSERT INTO `order` VALUES (3, '2019030415162254575553', 4, '孙策', '18165379343', 1, 1552444018, 1552444127);
INSERT INTO `order` VALUES (4, '2019034545235444543534', 3, '后裔', '19164778555', 1, 1552444018, 1552444123);
INSERT INTO `order` VALUES (5, '2019030415162223424112', 3, '貂蝉', '13164465567', 1, 1552444018, 1552444118);
INSERT INTO `order` VALUES (6, '2019031210492553100555', 2, '百里玄策', '18904783314', 1, 1552445010, 1552445213);
INSERT INTO `order` VALUES (7, '2019031310240957534534', 2, '嫦娥', '13044789966', 1, 1552445066, 1552445597);
INSERT INTO `order` VALUES (8, '2019031310240953455499', 2, '程咬金', '17654789655', 1, 1552445066, 1552464864);
INSERT INTO `order` VALUES (9, '2019031310240957797890', 1, '花木兰', '18964783464', 1, 1552445066, 1552464854);
INSERT INTO `order` VALUES (10, '2019012511115810155521', 1, '黄忠', '18964765421', 1, 1552445081, 1552464850);
INSERT INTO `order` VALUES (11, '2019012511115810155521', 1, '黄忠', '18964765421', 1, 1552445081, 1552464850);

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `orders_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_name` varchar(120) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_num` smallint(5) UNSIGNED NOT NULL DEFAULT 1 COMMENT '购买数量',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品售价',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态 0删除 1正常',
  `created_at` bigint(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` bigint(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`)
);

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES (1, 1, '鹅莓', 1, 20.00, 1, 1552357279, 1552357297);
INSERT INTO `order_goods` VALUES (2, 1, '乳草', 10, 17.00, 1, 1552370793, 1552370793);
INSERT INTO `order_goods` VALUES (3, 2, '芦苇裙', 1, 100.00, 1, 1552444018, 1552444041);
INSERT INTO `order_goods` VALUES (4, 2, '牛蒡', 20, 100.00, 1, 1552444018, 1552444033);
INSERT INTO `order_goods` VALUES (5, 3, '野洋葱', 10, 60.00, 1, 1552444018, 1552444026);
INSERT INTO `order_goods` VALUES (6, 4, '去毛火鸡', 1, 60.00, 1, 1552445010, 1552445213);
INSERT INTO `order_goods` VALUES (7, 5, '草帽', 2, 60.00, 1, 1552445066, 1552445204);
INSERT INTO `order_goods` VALUES (8, 5, '背包', 1, 299.00, 1, 1552445066, 1552445188);
INSERT INTO `order_goods` VALUES (9, 6, '墓碑', 1, 299.00, 1, 1552445066, 1552445179);
INSERT INTO `order_goods` VALUES (10, 7, '木箱子', 5, 17.00, 1, 1552445081, 1552445164);
INSERT INTO `order_goods` VALUES (11, 8, '长直木轴', 50, 100.00, 1, 1552445122, 1552445155);
INSERT INTO `order_goods` VALUES (12, 8, '熔炉', 1, 500.00, 1, 1552446846, 1552446964);
INSERT INTO `order_goods` VALUES (13, 9, '芦苇捆', 40, 1.00, 1, 1552446846, 1552446949);
INSERT INTO `order_goods` VALUES (14, 10, '黏土', 1, 1.00, 1, 1552446879, 1552446932);
INSERT INTO `order_goods` VALUES (15, 10, '黏土', 1, 1.00, 1, 1552446879, 1552446932);

SET FOREIGN_KEY_CHECKS = 1;
