/*
 Navicat Premium Data Transfer

 Source Server         : zs_all
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : control

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001


*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '编号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证',
  `account` double(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `level` int(0) NOT NULL DEFAULT 1 COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '超级管理员信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES (1, 'superadmin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 22, '2025-11-15 17:42:13', '18843232356', '上海市', '111', 'aa@163.com', '342425199001116372', 101.30, 1);

-- ----------------------------
-- Table structure for advertiser_info
-- ----------------------------
DROP TABLE IF EXISTS `advertiser_info`;
CREATE TABLE `advertiser_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告名称',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of advertiser_info
-- ----------------------------
INSERT INTO `advertiser_info` VALUES (1, '系统公告', '<p>这是系统公告，管理员可以在后台修改</p><p><br></p><p><span style=\"color: rgb(0, 0, 0);\">一年一度的七夕节悄悄已经来临，年轻的女士们早就盼望着收到心爱的人送出的七夕节鲜花和巧克力，或许送花的一幕会没有背景音乐的衬托，但恋人之间温馨相拥共度节日的浪漫，是那样的幸福，令人向往。男孩们会忘了这天要准备的礼物吗？</span></p>', '2025-11-04 18:55:11');
INSERT INTO `advertiser_info` VALUES (2, '花城公告', '<p><span style=\"color: rgb(0, 0, 0);\">因为工作繁忙，很多人无法亲手送花给女孩，这时可以选择网上订花的方式。一来不必亲力亲为，二来送花到女孩公司，可以很大程度上满意她的虚荣心。到提供鲜花速递服务的中国鲜花网，提前一周左右订花相对来说价格会便宜一点。鲜花是节日永远的主题，是浪漫和美好的催化剂，节日送花给女孩已经成为越来越多男孩的选择。</span></p>', '2025-11-04 19:45:24');

-- ----------------------------
-- Table structure for business_info
-- ----------------------------
DROP TABLE IF EXISTS `business_info`;
CREATE TABLE `business_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证',
  `account` double(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `level` int(0) NOT NULL DEFAULT 2 COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of business_info
-- ----------------------------
INSERT INTO `business_info` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 22, '2025-11-15 17:42:13', '18843232356', '上海市', 'aa@163.com', '342425199001116372', 0.00, 2);

-- ----------------------------
-- Table structure for cart_info
-- ----------------------------
DROP TABLE IF EXISTS `cart_info`;
CREATE TABLE `cart_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `count` int(0) NOT NULL DEFAULT 0 COMMENT '数量',
  `goodsId` bigint(0) NOT NULL DEFAULT 0 COMMENT '所属商品',
  `userId` bigint(0) NOT NULL DEFAULT 0 COMMENT '所属用户',
  `level` int(0) NULL DEFAULT NULL COMMENT '用户等级',
  `createTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart_info
-- ----------------------------
INSERT INTO `cart_info` VALUES (4, 1, 6, 1, 3, '2025-11-05 01:21:01');

-- ----------------------------
-- Table structure for check_info
-- ----------------------------
DROP TABLE IF EXISTS `check_info`;
CREATE TABLE `check_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `age` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '年龄',
  `temperature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '体温',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '人员检测信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of check_info
-- ----------------------------
INSERT INTO `check_info` VALUES (1, '张三', '23', '38', '13455556666', '九江南瓜镇6号楼601');
INSERT INTO `check_info` VALUES (2, '李四', '34', '37.2', '15600001111', '上海红桥区睿王渊小区5楼1506号');

-- ----------------------------
-- Table structure for comment_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_info`;
CREATE TABLE `comment_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评价内容',
  `goodsId` bigint(0) NOT NULL DEFAULT 0 COMMENT '所属商品',
  `userId` bigint(0) NOT NULL DEFAULT 0 COMMENT '评价人id',
  `level` int(0) NULL DEFAULT NULL COMMENT '用户等级',
  `createTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品评价表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment_info
-- ----------------------------
INSERT INTO `comment_info` VALUES (1, '不错', 1, 1, 1, '2025-11-15 21:12:53');

-- ----------------------------
-- Table structure for comment_richtext_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_richtext_info`;
CREATE TABLE `comment_richtext_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论人',
  `foreignId` bigint(0) NULL DEFAULT NULL COMMENT '关联的模块id',
  `parentId` bigint(0) NULL DEFAULT 0 COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '防疫须知评论信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment_richtext_info
-- ----------------------------
INSERT INTO `comment_richtext_info` VALUES (1, '不错', '2025-11-15 21:12:07', 'superadmin', 1, 0);

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '商品描述',
  `price` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品价格',
  `discount` double(10, 2) NULL DEFAULT 1.00 COMMENT '商品折扣',
  `sales` int(0) NOT NULL DEFAULT 0 COMMENT '商品销量',
  `hot` int(0) NOT NULL DEFAULT 0 COMMENT '商品点赞数',
  `recommend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '否' COMMENT '是否是推荐',
  `count` int(0) NOT NULL DEFAULT 0 COMMENT '商品库存',
  `typeId` bigint(0) NOT NULL DEFAULT 0 COMMENT '所属类别',
  `fileIds` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品图片id，用英文逗号隔开',
  `userId` bigint(0) NOT NULL DEFAULT 0 COMMENT '评价人id',
  `level` int(0) NULL DEFAULT NULL COMMENT '用户等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品详情表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods_info
-- ----------------------------
INSERT INTO `goods_info` VALUES (1, '守候爱情 是甜蜜的琼浆，醉人的纯酒', '12朵白玫瑰，绣球、绿叶搭配。白色，浅蓝色包装纸多层包装，蓝白相间丝带扎束(高50cm*宽36cm)☆爱你如初，我将会一直为你守候', 59.00, 0.80, 32, 32, '是', 198, 1, '[6]', 1, 1);
INSERT INTO `goods_info` VALUES (2, '红运高照 红光满面', '红掌2片,洋兰6支,粉扶郎6支,跳舞兰8支,向日葵4支,红扶郎5支,天堂鸟2支,转运竹2支,粉色多头康乃馨,配散尾叶、绿叶,精美花篮。', 439.00, 0.80, 10, 4, '是', 200, 2, '[8]', 1, 1);
INSERT INTO `goods_info` VALUES (3, '开心时刻 希望你能开心度过每一天', '1只大的精美玫瑰花束,粉色蝴蝶结扎束。', 15.00, 0.80, 20, 4, '是', 200, 3, '[10]', 1, 1);
INSERT INTO `goods_info` VALUES (4, '非你莫属 我的心只为你而存在', '5朵昆明A级红玫瑰,2朵精美白玫瑰,相思豆搭配,浅绿色包装纸,浅咖色包装纸,白色玻璃纸,红色丝带扎束（高55cm*宽39cm）', 169.00, 0.90, 1, 0, '是', 199, 1, '[7]', 1, 1);
INSERT INTO `goods_info` VALUES (5, '牛皮纸', '英文报纸复古牛皮纸高级感', 9.90, 0.90, 0, 0, '否', 500, 3, '[9]', 1, 1);
INSERT INTO `goods_info` VALUES (6, '熟悉的眼睛 注视着渐渐远去的背影', '熟悉的眼睛 注视着渐渐远去的背影红玫瑰1朵,配绿叶,黄莺,陶瓷花瓶(温馨提示:以当地实际花瓶为主,图片仅供参考)(高60cm*宽24cm)', 13.00, 0.80, 0, 0, '否', 150, 3, '[11]', 1, 1);
INSERT INTO `goods_info` VALUES (7, '思念的泪水 为你而流，为自己而流', '1朵粉康乃馨,配绿叶,粉丝带扎束,精美瓶花(高45cm*宽35cm)(以当地实际花瓶为主,图片仅供参考)', 14.50, 0.90, 0, 0, '否', 138, 3, '[12]', 1, 1);
INSERT INTO `goods_info` VALUES (8, '报纸', '新疆棉复古报纸.英文报纸.复古感', 6.50, 0.90, 0, 0, '否', 605, 3, '[13]', 1, 1);
INSERT INTO `goods_info` VALUES (9, '纱网纸', '新款条条纱 新品条纹纱 鲜花花束包装纱网 花艺包装材料花店用', 7.50, 0.70, 0, 0, '是', 98, 3, '[14]', 1, 1);

-- ----------------------------
-- Table structure for message_info
-- ----------------------------
DROP TABLE IF EXISTS `message_info`;
CREATE TABLE `message_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '留言名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '留言内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '留言时间',
  `parentId` bigint(0) NULL DEFAULT 0 COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '在线交流信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message_info
-- ----------------------------
INSERT INTO `message_info` VALUES (1, 'superadmin', '这个真的太棒了，女朋友哭死', '2025-11-15 21:16:54', 0);
INSERT INTO `message_info` VALUES (2, 'superadmin', '那是！一个好看', '2025-11-15 21:17:12', 1);

-- ----------------------------
-- Table structure for nx_system_file_info
-- ----------------------------
DROP TABLE IF EXISTS `nx_system_file_info`;
CREATE TABLE `nx_system_file_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `originName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '原始文件名',
  `fileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '存储文件名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '文件信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nx_system_file_info
-- ----------------------------
INSERT INTO `nx_system_file_info` VALUES (1, '1.jpg', '1.jpg');
INSERT INTO `nx_system_file_info` VALUES (2, '2.jpg', '2.jpg');
INSERT INTO `nx_system_file_info` VALUES (3, '3.jpg', '3.jpg');
INSERT INTO `nx_system_file_info` VALUES (4, '4.jpg', '4.jpg');
INSERT INTO `nx_system_file_info` VALUES (5, '001.jpg', '0011667559582083.jpg');
INSERT INTO `nx_system_file_info` VALUES (6, '002.jpg', '0021667560712669.jpg');
INSERT INTO `nx_system_file_info` VALUES (7, '003.jpg', '0031667560977535.jpg');
INSERT INTO `nx_system_file_info` VALUES (8, '004.jpg', '0041667561100754.jpg');
INSERT INTO `nx_system_file_info` VALUES (9, '008.jpg', '0081667561505055.jpg');
INSERT INTO `nx_system_file_info` VALUES (10, '005.jpg', '0051667561602717.jpg');
INSERT INTO `nx_system_file_info` VALUES (11, '006.jpg', '0061667561698971.jpg');
INSERT INTO `nx_system_file_info` VALUES (12, '007.jpg', '0071667561757271.jpg');
INSERT INTO `nx_system_file_info` VALUES (13, '009.jpg', '0091667561837738.jpg');
INSERT INTO `nx_system_file_info` VALUES (14, '010.jpg', '0101667561956294.jpg');

-- ----------------------------
-- Table structure for order_goods_rel
-- ----------------------------
DROP TABLE IF EXISTS `order_goods_rel`;
CREATE TABLE `order_goods_rel`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `orderId` bigint(0) NULL DEFAULT NULL COMMENT '订单ID',
  `goodsId` bigint(0) NOT NULL DEFAULT 0 COMMENT '所属商品',
  `count` int(0) NULL DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单商品关系映射表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_goods_rel
-- ----------------------------
INSERT INTO `order_goods_rel` VALUES (1, 1, 1, 30);
INSERT INTO `order_goods_rel` VALUES (2, 2, 2, 10);
INSERT INTO `order_goods_rel` VALUES (3, 3, 3, 20);
INSERT INTO `order_goods_rel` VALUES (4, 4, 1, 1);
INSERT INTO `order_goods_rel` VALUES (5, 5, 4, 1);
INSERT INTO `order_goods_rel` VALUES (6, 6, 1, 1);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `orderId` bigint(0) NULL DEFAULT NULL COMMENT '订单ID',
  `totalPrice` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '总价格',
  `userId` bigint(0) NOT NULL DEFAULT 0 COMMENT '所属用户',
  `level` int(0) NULL DEFAULT NULL COMMENT '用户等级',
  `linkAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系地址',
  `linkPhone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系电话',
  `linkMan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系人',
  `createTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '未发货' COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品订单信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (1, 111111, 480.00, 1, 1, '安徽省合肥市高新区', '18812337865', 'admin', '2025-11-15 17:42:13', '完成');
INSERT INTO `order_info` VALUES (2, 222222, 160.00, 1, 2, '上海市浦东新区', '18812337865', '张三', '2025-11-15 17:42:13', '完成');
INSERT INTO `order_info` VALUES (3, 333333, 320.00, 1, 3, '上海市长宁区', '18812337865', '李四', '2025-11-15 17:42:13', '完成');
INSERT INTO `order_info` VALUES (4, 12020111520363133, 16.00, 1, 1, '上海市', '18843232356', '管理员', '2025-11-15 20:36:13', '完成');
INSERT INTO `order_info` VALUES (5, 12020111521132628, 2.70, 1, 1, '上海市', '18843232356', '管理员', '2025-11-15 21:13:44', '完成');
INSERT INTO `order_info` VALUES (6, 12022110417028010, 16.00, 1, 3, '上海市', '18843232356', '老张', '2025-11-04 17:02:58', '待付款');

-- ----------------------------
-- Table structure for praise_richtext_info
-- ----------------------------
DROP TABLE IF EXISTS `praise_richtext_info`;
CREATE TABLE `praise_richtext_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `userId` bigint(0) NULL DEFAULT NULL COMMENT '用户id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '点赞时间',
  `level` int(0) NULL DEFAULT NULL COMMENT '用户等级',
  `foreignId` bigint(0) NULL DEFAULT NULL COMMENT '关联的模块id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '防疫须知点赞信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of praise_richtext_info
-- ----------------------------
INSERT INTO `praise_richtext_info` VALUES (1, 1, '2025-11-15 21:11:58', 1, 1);
INSERT INTO `praise_richtext_info` VALUES (2, 1, '2025-11-04 19:44:53', 3, 1);

-- ----------------------------
-- Table structure for richtext_info
-- ----------------------------
DROP TABLE IF EXISTS `richtext_info`;
CREATE TABLE `richtext_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '防疫须知信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of richtext_info
-- ----------------------------
INSERT INTO `richtext_info` VALUES (1, '新冠肺炎的预防和控制', '2025-11-15T20:35', '<h2><br></h2><p>1.新型冠状病毒</p><p><br></p><p>新型冠状病毒是指以前从未在人类中发现的冠状病毒新毒株。2019年12月导致武汉病毒性肺炎暴发疫情的病毒为新型冠状病毒，世界卫生组织将该病毒命名为COVID-19。</p><h2><br></h2><p>2.传染源</p><p><br></p><p>目前主要是新型冠状病毒感染的患者，无症状感染者也可能成为传染源。</p><p><br></p><p>3.传播途径</p><p>	</p><p>经呼吸道飞沫和密切接触传播是主要的传播途径，在相对封闭的环境中长时间暴露于高浓度气溶胶情况下存在经气溶胶传播的可能。</p><p>	</p><p>4.新冠肺炎的症状</p><p>	</p><p>以发热、乏力、干咳为主要表现。少数患者伴有鼻塞、流涕、腹泻等症状。重型病例多在一周后出现呼吸困难，严重者快速进展为急性呼吸窘迫综合征、脓毒症休克、难以纠正的代谢性酸中毒和出凝血功能障碍。值得注意的是重型、危重型患者病程中可为中低热，甚至无明显发热。</p><p>	</p><p>部分患者仅表现为低热、轻微乏力等，无肺炎表现，多在1周后恢复。</p><p>	</p><p>从目前收治的病例情况看，多数患者预后良好，儿童病例症状相对较轻，少数患者病情危重。死亡病例多见于老年人和有慢性基础疾病者。</p><p>	</p><p>5.新冠肺炎的预防</p><p>	（1）避免去疾病正在流行的地区。</p><p>	（2）减少到人员密集的公共场所活动，尤其是空气流动性差的地方，例如公共浴池、温泉、影院、网吧、KTV、 商场、车站、机场、码头、展览馆等。</p><p>	（3）不要接触、购买和食用野生动物(即野味)，避免前往售卖活体动物(禽类、海产品、野生动物等)的市场，禽肉蛋要充分煮熟后食用。</p><p>	（4）居室保持清洁，勤开窗，经常通风，每天2次，每次半小时。</p><p>	（5）随时保持手卫生。减少接触公共场所的公共物品和部位；从公共场所返回、咳嗽用手捂之后、饭前便后，用洗手液或香皂等流水洗手，或者使用含酒精成分的免洗洗手液；不确定手是否清洁时，避免用手接触口鼻眼；打喷嚏或咳嗽时用手肘衣服遮住口鼻。</p><p>	（6）建议外出佩戴口罩。外出前往公共场所、乘坐公共交通工具时，可佩戴一次性使用医用口罩，外出就医应佩戴医用外科口罩或N95口罩。</p><p>	（7）保持良好卫生和健康习惯。家庭成员不共用毛巾，保持家居、餐具清洁，勤晒衣被。不随地吐痰，口鼻分泌物用纸巾包好，弃置于有盖垃圾箱内。注意营养，勤运动。</p><p>	（8）主动做好个人及家庭成员的健康监测。建议早晚测量体温各一次。</p><p>	（9）准备常用物资。家庭应常备体温计和一次性使用医用口罩、家用消毒用品等物品。也可备有医用外科口罩或N95口罩供必要时外出使用。</p><p>	（10）家庭成员出现可疑症状(包括发热、咳嗽、咽痛、胸闷等)时，及时就诊。</p><p>	观察是否有异常反应发生。</p>');

-- ----------------------------
-- Table structure for submit_info
-- ----------------------------
DROP TABLE IF EXISTS `submit_info`;
CREATE TABLE `submit_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '提交时间',
  `subreason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '来由',
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '提交人',
  `level` int(0) NULL DEFAULT NULL COMMENT '用户等级',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '理由',
  `verifyName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '外来人员报备信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of submit_info
-- ----------------------------
INSERT INTO `submit_info` VALUES (1, '赵大刚', '2025-11-15 19:09:52', '提货12朵白玫瑰，绣球、绿叶搭配', 'superadmin', 1, '审核通过', '检查通过', 'superadmin');
INSERT INTO `submit_info` VALUES (2, '赵千里', '2025-11-15 21:14:39', '提货11支康乃馨精美花篮，插花', 'superadmin', 1, '审核通过', '检查通过', 'superadmin');

-- ----------------------------
-- Table structure for type_info
-- ----------------------------
DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '类型描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品类别表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of type_info
-- ----------------------------
INSERT INTO `type_info` VALUES (1, '鲜花', '鲜花、盒花、保鲜花');
INSERT INTO `type_info` VALUES (2, '礼篮', '献上我的真挚诚意');
INSERT INTO `type_info` VALUES (3, '定制', '单选包装、私人定制');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证',
  `account` double(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `level` int(0) NOT NULL DEFAULT 3 COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '张天志', 'e10adc3949ba59abbe56e057f20f883e', '老张', '男', 22, '2025-11-15 17:42:13', '18843232356', '上海红桥区睿王渊小区5楼1506号', 'aa@163.com', '342425199001116372', 0.00, 3);

SET FOREIGN_KEY_CHECKS = 1;
