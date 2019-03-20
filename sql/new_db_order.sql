/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : new_db_order

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 19/03/2019 16:33:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `phone_number` varchar(45) NULL DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态 0删除 1正常 ',
  `created_at` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(40) NOT NULL DEFAULT '' COMMENT '订单编码',
  `order_status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1待付款 2待发货 3待收货 4已收货 5已取消',
  `client_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态 0删除 1正常 ',
  `created_at` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
);

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

SET FOREIGN_KEY_CHECKS = 1;
