/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : build

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-09-05 14:19:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goodid` int(10) NOT NULL,
  `goodsprice` int(100) NOT NULL,
  `goodscount` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('9', '6', '219', '100');

-- ----------------------------
-- Table structure for `cate`
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `id` int(255) NOT NULL,
  `catename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `classes_id` int(255) DEFAULT NULL,
  `parentid` int(255) DEFAULT NULL,
  `cate_decs` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cate_id_uindex` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES ('0', '抛光砖', '0', '16', '抛光砖');
INSERT INTO `cate` VALUES ('1', '仿古砖', '0', '16', '仿古砖');
INSERT INTO `cate` VALUES ('2', '木纹砖', '0', '16', '木纹砖');
INSERT INTO `cate` VALUES ('3', '背景墙', '0', '16', '背景墙');
INSERT INTO `cate` VALUES ('4', '花洒套装', '0', '17', '花洒套装');
INSERT INTO `cate` VALUES ('5', '卫浴挂件', '0', '17', '卫浴挂件');
INSERT INTO `cate` VALUES ('6', '座便器', '0', '17', '座便器');
INSERT INTO `cate` VALUES ('7', '淋浴房', '0', '17', '淋浴房');
INSERT INTO `cate` VALUES ('8', '吸顶灯', '0', '18', '吸顶灯');
INSERT INTO `cate` VALUES ('9', '吊灯', '0', '18', '吊灯');
INSERT INTO `cate` VALUES ('10', '强化复合地板', '0', '19', '强化复合地板');
INSERT INTO `cate` VALUES ('11', '实木地板', '0', '19', '实木地板');
INSERT INTO `cate` VALUES ('12', '壁画', '0', '20', '壁画');
INSERT INTO `cate` VALUES ('13', '无纺布', '0', '20', '无纺布');
INSERT INTO `cate` VALUES ('14', '无妨纸', '0', '20', '无纺纸');
INSERT INTO `cate` VALUES ('15', '纯色', '0', '21', '纯色');
INSERT INTO `cate` VALUES ('16', '瓷砖', '1', null, '瓷砖');
INSERT INTO `cate` VALUES ('17', '卫浴', '2', null, '卫浴');
INSERT INTO `cate` VALUES ('18', '灯饰', '3', null, '灯饰');
INSERT INTO `cate` VALUES ('19', '地板', '4', null, '地板');
INSERT INTO `cate` VALUES ('20', '墙纸', '5', null, '墙纸');
INSERT INTO `cate` VALUES ('21', '窗帘', '6', null, '窗帘');

-- ----------------------------
-- Table structure for `format`
-- ----------------------------
DROP TABLE IF EXISTS `format`;
CREATE TABLE `format` (
  `id` int(10) NOT NULL,
  `cateid` int(10) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of format
-- ----------------------------
INSERT INTO `format` VALUES ('2', '16', '材质');
INSERT INTO `format` VALUES ('3', '16', '规格');
INSERT INTO `format` VALUES ('4', '17', '材质');
INSERT INTO `format` VALUES ('5', '17', '尺寸');
INSERT INTO `format` VALUES ('6', '18', '主材');
INSERT INTO `format` VALUES ('7', '18', '光源类型');
INSERT INTO `format` VALUES ('8', '19', '厚度');
INSERT INTO `format` VALUES ('9', '19', '企口');
INSERT INTO `format` VALUES ('10', '20', '材质');
INSERT INTO `format` VALUES ('11', '20', '类型');
INSERT INTO `format` VALUES ('12', '21', '颜色');
INSERT INTO `format` VALUES ('13', '21', '纹理');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(65) NOT NULL,
  `cateid` int(255) DEFAULT NULL,
  `tgoods` int(10) DEFAULT NULL,
  `hgoods` int(10) DEFAULT NULL,
  `goodsname` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `goodsmas` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `goodsprice` double(65,0) DEFAULT NULL,
  `goodsorigin` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `goodspicture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `goodssale` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('3', '0', '1', null, '华菱瓷砖', '浅黄色客厅800X800板砖', '68', '上海', '/assets/images/瓷砖1.png', '61');
INSERT INTO `goods` VALUES ('5', '0', null, null, '餐厅黄色仿古砖', '室内抗污耐磨地板纹理瓷砖', '15', '北京', '/assets/images/瓷砖2.png', '46');
INSERT INTO `goods` VALUES ('6', '0', '1', null, '木纹大理石瓷砖', '简欧风格客厅地板', '219', '意大利', '/assets/images/瓷砖3.png', '917');
INSERT INTO `goods` VALUES ('7', '0', null, null, '客厅地板砖', '皇室冰玉系列全跑面砖', '209', '上海', '/assets/images/瓷砖4.png', '914');
INSERT INTO `goods` VALUES ('8', '1', '1', null, '客卧两用面砖', '彩霞玉系列全抛瓷砖', '209', '大连', '/assets/images/瓷砖5.png', '913');
INSERT INTO `goods` VALUES ('9', '1', null, null, '芙蓉黄大理石', '简欧家居客厅防滑瓷砖', '219', '意大利', '/assets/images/瓷砖6.png', '913');
INSERT INTO `goods` VALUES ('10', '1', '1', null, '全抛砖', '客厅防滑砖', '209', '大连', '/assets/images/瓷砖7.png', '912');
INSERT INTO `goods` VALUES ('11', '1', null, null, '天然石纹砖', '维罗纳天然石纹客厅卧室专用砖', '209', '维罗纳', '/assets/images/瓷砖8.png', '912');
INSERT INTO `goods` VALUES ('12', '2', '1', null, '百合米黄大理石砖', '百合米黄大理石砖现代客厅地板砖', '219', '大连', '/assets/images/瓷砖9.png', '805');
INSERT INTO `goods` VALUES ('13', '2', null, null, '耐磨地板砖', '800X800规格客厅卧室瓷砖', '219', '大连', '/assets/images/瓷砖10.png', '906');
INSERT INTO `goods` VALUES ('14', '2', '1', null, '自然客厅面砖', '卡布奇诺大理石瓷砖', '229', '北京', '/assets/images/瓷砖11.png', '904');
INSERT INTO `goods` VALUES ('15', '2', null, null, '浅卡网纹瓷砖', '客厅访华全跑地板装', '209', '上海', '/assets/images/瓷砖12.png', '780');
INSERT INTO `goods` VALUES ('16', '3', '1', null, '北极品玉瓷砖', '北极品玉客厅抛光面砖高档欧式面砖', '209', '北京', '/assets/images/瓷砖13.png', '770');
INSERT INTO `goods` VALUES ('17', '3', null, null, '简约客厅抛砖', '800x800现代全抛瓷砖', '210', '北京', '/assets/images/瓷砖14.png', '781');
INSERT INTO `goods` VALUES ('18', '3', '1', null, '田园仿古砖', '米黄色浴室搬砖防滑地板砖', '19', '北京', '/assets/images/瓷砖15.png', '674');
INSERT INTO `goods` VALUES ('19', '5', null, null, '单杠毛巾架', '精选优质合金不锈钢', '19', '上海', '/assets/images/卫浴挂件1.png', '48');
INSERT INTO `goods` VALUES ('20', '5', '1', null, '防臭地漏', '不锈钢拉丝经典价款', '22', '上海', '/assets/images/卫浴挂件2.png', '33');
INSERT INTO `goods` VALUES ('21', '4', null, null, '水龙头单把', '洗脸盆冷热水龙头不锈钢', '164', '上海', '/assets/images/卫浴花洒1.png', '46');
INSERT INTO `goods` VALUES ('22', '4', '1', null, '淋浴器双把', '多功能花洒套装淋浴双华洒龙头挂墙式花洒', '772', '大连', '/assets/images/卫浴花洒2.png', '1488');
INSERT INTO `goods` VALUES ('23', '4', null, null, '双花洒龙头', '多功能花洒套装淋浴器双花洒龙头挂墙式花洒', '970', '大连', '/assets/images/卫浴花洒3.png', '1475');
INSERT INTO `goods` VALUES ('24', '4', '1', null, '浴室冷热花洒', '新款多功能淋雨花洒浴室冷热花洒套装', '760', '大连', '/assets/images/卫浴花洒4.png', '1469');
INSERT INTO `goods` VALUES ('25', '4', null, null, '淋浴器', '多功能花洒套装淋雨双花洒龙头挂墙式花洒', '697', '大连', '/assets/images/卫浴花洒5.png', '1456');
INSERT INTO `goods` VALUES ('26', '4', '1', null, '增压睡莲喷头', '淋浴花洒套装全铜花花洒套装淋浴器', '937', '大连', '/assets/images/卫浴花洒4.png', '1446');
INSERT INTO `goods` VALUES ('27', '6', null, null, '家庭节水座便器', '400mm坑距马桶家庭节水喷射虹吸式连体马桶', '1518', '北京', '/assets/images/卫浴便器1.png', '817');
INSERT INTO `goods` VALUES ('28', '6', '1', null, '家庭节水座便器', '360无残留节水坐便器', '1650', '北京', '/assets/images/卫浴便器2.png', '446');
INSERT INTO `goods` VALUES ('29', '6', null, null, '环形座便器', '360高平滑面虹吸式连体座便器', '1575', '北京·', '/assets/images/卫浴便器3.png', '412');
INSERT INTO `goods` VALUES ('30', '6', '1', null, '佛山卫浴马桶', '喷射虹吸式连体座便器300mm坑距马桶', '1518', '北京', '/assets/images/卫浴便器4.png', '404');
INSERT INTO `goods` VALUES ('31', '7', null, null, '卫浴房', '钢化玻璃6mm整体淋浴房弧扇型 简易整体浴室 淋浴房', '1648', '大连', '/assets/images/卫浴房1.png', '825');
INSERT INTO `goods` VALUES ('32', '7', '1', null, '淋浴房', '淋浴房 淋浴房整体 304不锈钢简易洗浴房 钢化玻璃隔断整体浴室浴屏', '1760', '大连', '/assets/images/卫浴房2.png', '352');
INSERT INTO `goods` VALUES ('33', '8', null, null, '调光LED正方形水晶灯', '[ 阁晨家居照明 ] 正方形客厅吸顶灯 中新款现代简约 调光LED正方形水晶灯', '368', '上海', '/assets/images/灯饰吸顶1.png', '452');
INSERT INTO `goods` VALUES ('34', '8', '1', null, '大四头LED吸顶灯', '大4头LED吸顶灯 简约客厅灯调光 780X780X140无极调光96W', '695', '大连', '/assets/images/灯饰吸顶2.png', '356');
INSERT INTO `goods` VALUES ('35', '8', null, null, '大气水晶调光客厅水晶灯', '铁艺喷漆边框 高透光亚克力灯罩 优质五金材质', '598', '大连', '/assets/images/灯饰吸顶3.png', '346');
INSERT INTO `goods` VALUES ('36', '9', '1', null, '水晶球*86客厅', '[ 冠烁照明 ] 客厅高贵LED水晶灯走廊吊顶 30#水晶球*86客厅 大堂吊灯', '368', '大连', '/assets/images/灯饰吊灯1.png', '666');
INSERT INTO `goods` VALUES ('37', '9', null, null, '时尚圆形led吊灯', '[ 领秀照明 ] 美式客厅吸顶灯 时尚圆形led吊灯 大螺口吊灯6头', '375', '大连', '/assets/images/灯饰吊灯2.png', '336');
INSERT INTO `goods` VALUES ('38', '9', '1', null, '黑色led三头餐吊灯', '领秀照明 ] 黑色led三头餐吊灯 创意简约饭厅卧室书房吊灯灯具', '117', '大连', '/assets/images/灯饰吊灯3.png', '276');
INSERT INTO `goods` VALUES ('39', '10', null, null, '美式纯实木地板', '[ 林杰 ] 名木番龙眼压印地板 书香门第木地板 美式纯实木地板', '225', '上海', '/assets/images/地板砖1.png', '626');
INSERT INTO `goods` VALUES ('40', '10', '1', null, '哑光香槟玫瑰地板', '[ 玛菲格林 ] 室内多层实木地板 自然生态地板 哑光香槟玫瑰地板', '420', '上海', '/assets/images/地板砖2.png', '361');
INSERT INTO `goods` VALUES ('41', '10', null, null, '高档纯实木地板', '[ 林杰 ] 亮光圆盘豆地暖地板 自然纹理木地板 高档纯实木地板', '296', '上海', '/assets/images/地板砖3.png', '339');
INSERT INTO `goods` VALUES ('42', '10', '1', null, '纯橡木仿古地板', '[ 高锋宁家 ] 进口实木地板 纯橡木仿古地板 原生态原木本色木地板', '221', '北京', '/assets/images/地板砖4.png', '334');
INSERT INTO `goods` VALUES ('43', '10', null, null, '耐磨防滑地板', '[ 高锋宁家 ] 美式生态圆盘木地板 原木进口纯实木地板 耐磨防滑地板', '164', '上海', '/assets/images/地板砖5.png', '299');
INSERT INTO `goods` VALUES ('44', '10', null, null, '印象栖霞地板', '[ 玛菲格林 ] 美式多层实木地板 客厅书房生态木地板 印象栖霞地板', '197', '上海', '/assets/images/地板砖6.png', '295');
INSERT INTO `goods` VALUES ('45', '10', null, null, '抗污纯实木地板', '[ 高锋宁家 ] 东南亚仿古地板 进口浅红原木木地板 抗污纯实木地板', '197', '上海', '/assets/images/地板砖7.png', '263');
INSERT INTO `goods` VALUES ('46', '10', null, null, '耐磨防水卧室木地板', '[ 林杰 ] 雅典古城番龙眼 美式纯实木地板 耐磨防水卧室木地板', '216', '上海', '/assets/images/地板砖8.png', '281');
INSERT INTO `goods` VALUES ('47', '11', null, null, '室内防滑木地板', '[ 高锋宁家 ] 纯橡木仿古实木地板 浅红色古典地板 室内防滑木地板', '278', '上海', '/assets/images/地板砖9.png', '275');
INSERT INTO `goods` VALUES ('48', '11', null, null, '客厅多层实木地板', '[ 玛菲格林 ] 柚木高耐磨地板 生态环保木地板 客厅多层实木地板', '138', '上海', '/assets/images/地板砖10.png', '266');
INSERT INTO `goods` VALUES ('49', '11', null, null, '抗污纯实木地板', '[ 高锋宁家 ] 东南亚仿古地板 进口浅红原木木地板 抗污纯实木地板', '197', '上海', '/assets/images/地板砖11.png', '262');
INSERT INTO `goods` VALUES ('50', '11', null, null, '自然生态地板', '[ 玛菲格林 ] 欧洲防水橡木地板 美式多层实木地板 自然生态地板', '178', '上海', '/assets/images/地板砖12.png', '258');
INSERT INTO `goods` VALUES ('51', '11', null, null, '卧室瑜伽木地板', '[ 玛菲格林 ] 圆盘豆地热地板 环保多层实木地板 卧室瑜伽木地板', '136', '上海', '/assets/images/地板砖13.png', '238');
INSERT INTO `goods` VALUES ('52', '11', null, null, '橡木防滑地板', '[ 高锋宁家 ] 美国进口纯实木地板 高档环保木地板 橡木防滑地板', '408', '上海', '/assets/images/地板砖14.png', '238');
INSERT INTO `goods` VALUES ('53', '11', null, null, '美式纯实木地板', '[ 林杰 ] 生态圆盘豆压印地板 持久耐磨木地板 美式纯实木地板', '193', '上海', '/assets/images/地板砖15.png', '157');
INSERT INTO `goods` VALUES ('54', '11', null, null, '耐磨木地板', '[ 嘉恒 ] 生态环保强化复合地板 简洁明亮室内地板 耐磨木地板', '149', '上海', '/assets/images/地板砖16.png', '86');
INSERT INTO `goods` VALUES ('55', '12', null, null, '客厅壁纸', '[ 雅致壁画 ] 大型壁画无缝无纺纸 埃菲尔铁塔卧室壁纸 客厅壁纸', '170', '上海', '/assets/images/墙纸壁纸1.png', '247');
INSERT INTO `goods` VALUES ('56', '12', null, null, '客厅电视墙壁纸', '[ 艺美墙纸 ] 米白色欧式田园壁纸 卧室无纺布墙纸 客厅电视墙壁纸', '37', '上海', '/assets/images/墙纸壁纸2.png', '227');
INSERT INTO `goods` VALUES ('57', '13', null, null, '卧室墙布', '[ 雅致壁画 ] 欧式无缝无纺纸 客厅电视背景墙墙纸 卧室墙布', '170', '上海', '/assets/images/墙纸无纺布1.png', '223');
INSERT INTO `goods` VALUES ('58', '13', null, null, '艺术线条背景墙壁纸', '[ 艺美墙纸 ] 灰色无纺布墙纸 现代简约电视墙纸 艺术线条背景墙壁纸', '37', '上海', '/assets/images/墙纸无纺布2.png', '218');
INSERT INTO `goods` VALUES ('59', '14', null, null, '工装无缝墙纸', '[ 艺美墙纸 ] 纯色哑光无纺布壁纸 客厅卧室素色壁纸 工装无缝墙纸', '45', '上海', '/assets/images/墙纸无纺纸1.png', '214');
INSERT INTO `goods` VALUES ('60', '14', null, null, '客厅背景墙墙纸', '[ 艺美墙纸 ] 紫色无纺布墙纸 水波纹电视壁纸 客厅背景墙墙纸', '37', '上海', '/assets/images/墙纸无纺纸2.png', '213');
INSERT INTO `goods` VALUES ('61', '15', null, null, '卧室米黄色遮光布', '[ 信万达 ] 原生态环保棉麻布艺客厅定做窗帘 卧室米黄色遮光布', '125', '大连', '/assets/images/窗帘1.png', '268');
INSERT INTO `goods` VALUES ('62', '15', null, null, '阳台飘窗窗帘', '[ 信万达 ] 简约风格编织纹客厅遮光布 卧室阳台飘窗窗帘成品', '125', '大连', '/assets/images/窗帘2.png', '265');
INSERT INTO `goods` VALUES ('63', '15', null, null, '高档窗纱窗帘定制', '[ 锦绣宫 ] 现代简欧落地窗纱 客厅卧室遮光窗纱 高档窗纱窗帘定制', '24', '大连', '/assets/images/窗帘3.png', '250');
INSERT INTO `goods` VALUES ('64', '15', null, null, '台浅麻灰窗帘布', '[ 信万达 ] 原生态棉麻遮光窗帘布 客厅阳台浅麻灰窗帘布', '125', '大连', '/assets/images/窗帘4.png', '236');
INSERT INTO `goods` VALUES ('65', '15', null, null, '室内遮光窗帘布', '[ 锦绣宫 ] 欧式轻奢华窗帘 雪尼尔提花窗帘 室内遮光窗帘布 S挂钩窗帘', '48', '大连', '/assets/images/窗帘5.png', '223');
INSERT INTO `goods` VALUES ('66', '15', null, null, '窗帘成品遮光布料', '[ 信万达 ] 窗帘成品遮光布料 客厅卧室亚麻简约现代中式浅棕色', '125', '大连', '/assets/images/窗帘6.png', '232');
INSERT INTO `goods` VALUES ('67', '15', null, null, '仿真丝绒隔音折帘', '[ 信万达 ] 藏青拼象牙白棉麻窗帘 绣花纹理光泽窗帘布 仿真丝绒雪尼尔隔音折帘', '170', '大连', '/assets/images/窗帘7.png', '170');
INSERT INTO `goods` VALUES ('68', '15', null, null, '客厅卧室遮光窗纱', '[ 锦绣宫 ] 现代简欧落地窗纱 客厅卧室遮光窗纱 高档窗纱窗帘定制', '27', '大连', '/assets/images/窗帘8.png', '230');

-- ----------------------------
-- Table structure for `picture`
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `picture_id` int(255) NOT NULL,
  `goods_id` int(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('0', '0', '/images/good1.png');
INSERT INTO `picture` VALUES ('1', '1', '/images/good2.png');

-- ----------------------------
-- Table structure for `size`
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size` (
  `id` int(255) NOT NULL,
  `context` varchar(255) NOT NULL,
  `formatid` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES ('0', '大理石', '2');
INSERT INTO `size` VALUES ('1', '陶瓷', '2');
INSERT INTO `size` VALUES ('2', '半瓷', '2');
INSERT INTO `size` VALUES ('3', '600x600', '3');
INSERT INTO `size` VALUES ('4', '800x800', '3');
INSERT INTO `size` VALUES ('5', '不锈钢', '4');
INSERT INTO `size` VALUES ('6', '陶瓷', '4');
INSERT INTO `size` VALUES ('7', '153*80', '5');
INSERT INTO `size` VALUES ('8', '175*120', '5');
INSERT INTO `size` VALUES ('9', '磨砂面', '6');
INSERT INTO `size` VALUES ('10', '光滑面', '6');
INSERT INTO `size` VALUES ('11', '白炽灯', '7');
INSERT INTO `size` VALUES ('12', 'COB', '7');
INSERT INTO `size` VALUES ('13', 'LED', '7');
INSERT INTO `size` VALUES ('14', '10mm', '8');
INSERT INTO `size` VALUES ('15', '12mm', '8');
INSERT INTO `size` VALUES ('16', '15mm', '8');
INSERT INTO `size` VALUES ('17', '单锁口', '9');
INSERT INTO `size` VALUES ('18', '平口', '9');
INSERT INTO `size` VALUES ('19', '普槽', '9');
INSERT INTO `size` VALUES ('20', '丝绸布', '10');
INSERT INTO `size` VALUES ('21', '宣绒布', '10');
INSERT INTO `size` VALUES ('22', '平滑壁纸', '11');
INSERT INTO `size` VALUES ('23', '邹纹壁纸', '11');
INSERT INTO `size` VALUES ('24', '深色', '12');
INSERT INTO `size` VALUES ('25', '浅色', '12');
INSERT INTO `size` VALUES ('26', '光滑', '13');
INSERT INTO `size` VALUES ('27', '花纹', '13');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0', '123', '123');
INSERT INTO `user` VALUES ('2', '123', '321');
