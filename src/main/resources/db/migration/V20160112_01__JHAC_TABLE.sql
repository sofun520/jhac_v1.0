/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : jhac6

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-01-22 18:02:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jhac_app_conf
-- ----------------------------
DROP TABLE IF EXISTS `jhac_app_conf`;
CREATE TABLE `jhac_app_conf` (
  `conf_id` varchar(32) NOT NULL,
  `conf_key` varchar(255) DEFAULT NULL,
  `conf_value` varchar(255) DEFAULT NULL,
  `conf_date` datetime DEFAULT NULL,
  `conf_status` int(1) DEFAULT '1' COMMENT '数据状态：1-可用、2-删除',
  PRIMARY KEY (`conf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='移动端配置表';

-- ----------------------------
-- Records of jhac_app_conf
-- ----------------------------
INSERT INTO `jhac_app_conf` VALUES ('1', 'versionCode', '1.0', '2015-09-25 15:53:31', '1');
INSERT INTO `jhac_app_conf` VALUES ('20443088219c4860af21d70fd7026c61', 'fock', 'you', '2015-12-06 10:22:48', '1');
INSERT INTO `jhac_app_conf` VALUES ('21ae20167e5243668bc87bb46fe78eda', 'fock', 'you', '2015-12-06 10:22:42', '0');
INSERT INTO `jhac_app_conf` VALUES ('470abe60bc08452bbe85b9f986fc14b1', 'fock', 'you', '2015-12-06 10:20:14', '0');
INSERT INTO `jhac_app_conf` VALUES ('4cdbe5d56b604a6b9277ecf65529c839', 'fock', 'you', '2015-12-06 10:22:44', '0');
INSERT INTO `jhac_app_conf` VALUES ('7a4bf7df44a844ae9a81da7cc2d96951', 'fock', 'you', '2015-12-06 10:22:44', '0');
INSERT INTO `jhac_app_conf` VALUES ('8bd8d37850d5441d9665d7552d3fac6b', 'fock', 'you', '2015-12-06 10:22:47', '0');
INSERT INTO `jhac_app_conf` VALUES ('95ef75f258154b8391e34d57af78dd40', 'fock', 'you', '2015-12-06 10:22:46', '0');
INSERT INTO `jhac_app_conf` VALUES ('db450844bb5c460eb01d2c3146ca0d3b', 'fock', 'you', '2015-12-06 10:22:47', '0');
INSERT INTO `jhac_app_conf` VALUES ('ec6c16cb86e54bc6979a0934b443132a', 'fock', 'you', '2015-12-06 10:22:41', '0');
INSERT INTO `jhac_app_conf` VALUES ('f4aab0ef026b49f6bdf3cb1cf30d6134', 'fock', 'you', '2015-12-06 10:21:55', '0');
INSERT INTO `jhac_app_conf` VALUES ('f51b1e35c96f42f6bbd73b55f470b71f', 'fock', 'you', '2015-12-06 10:22:43', '0');

-- ----------------------------
-- Table structure for jhac_area
-- ----------------------------
DROP TABLE IF EXISTS `jhac_area`;
CREATE TABLE `jhac_area` (
  `area_id` varchar(32) NOT NULL,
  `area_name` varchar(40) DEFAULT NULL,
  `area_en` varchar(10) DEFAULT NULL,
  `area_add_date` datetime DEFAULT NULL,
  `area_data_status` int(1) DEFAULT '1',
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='区域信息表（基础数据表）';

-- ----------------------------
-- Records of jhac_area
-- ----------------------------
INSERT INTO `jhac_area` VALUES ('13530f2ddc6148cc80c2665421213edf', '荆门市', 'JM', '2015-09-26 09:36:29', '1');
INSERT INTO `jhac_area` VALUES ('1947f3f0ee1c480bbea40b8fd32697d8', '咸宁市', 'XN', '2016-01-13 14:36:34', '1');
INSERT INTO `jhac_area` VALUES ('2905335743744203825b0671b79e9b90', '湘江', 'XJ', '2016-01-13 16:22:25', '1');
INSERT INTO `jhac_area` VALUES ('2bb730eca7574030b918f814ca34b604', '荆州市', 'JZ', '2015-09-26 09:38:58', '1');
INSERT INTO `jhac_area` VALUES ('51367f0caaa14fe2a030529babf1d784', '武汉市', 'WH', '2015-09-26 09:36:11', '1');
INSERT INTO `jhac_area` VALUES ('5e925d10c2114001a3caa8e40e3565aa', '宜昌市', 'YC', '2016-01-13 14:36:45', '1');
INSERT INTO `jhac_area` VALUES ('7d1e2079cb2649dea4f8a654a168b592', '合肥市', 'HF', '2016-01-12 16:44:25', '1');
INSERT INTO `jhac_area` VALUES ('aaf5d025d9884830b45244c62616ead8', '长沙市', 'CS', '2016-01-13 14:37:29', '1');
INSERT INTO `jhac_area` VALUES ('c83008663dcd4982beee08f679d651d7', '襄阳市', 'XY', '2016-01-13 14:37:03', '1');

-- ----------------------------
-- Table structure for jhac_backservice
-- ----------------------------
DROP TABLE IF EXISTS `jhac_backservice`;
CREATE TABLE `jhac_backservice` (
  `bac_id` varchar(32) NOT NULL,
  `bac_out_id` varchar(32) DEFAULT NULL,
  `bac_problem` varchar(255) DEFAULT NULL,
  `bac_problem_pic` varchar(255) DEFAULT NULL,
  `bac_add_date` datetime DEFAULT NULL,
  `bac_user_id` int(10) DEFAULT NULL,
  `bac_area_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`bac_id`),
  KEY `jhac_backservice_business` (`bac_out_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='售后信息表';

-- ----------------------------
-- Records of jhac_backservice
-- ----------------------------
INSERT INTO `jhac_backservice` VALUES ('2a656f6ccc684dd7b6b937ab3d0e76be', '2f9f1c0d3f3b4df0895a36fda698d666', '测试问题', null, '2015-11-13 16:49:26', '11', 'JZ');
INSERT INTO `jhac_backservice` VALUES ('3536c34dbdeb462ab77849b857c757b0', '2f9f1c0d3f3b4df0895a36fda698d666', '测试数据', null, '2015-11-13 16:49:15', '11', 'JZ');

-- ----------------------------
-- Table structure for jhac_baoxian
-- ----------------------------
DROP TABLE IF EXISTS `jhac_baoxian`;
CREATE TABLE `jhac_baoxian` (
  `bao_id` varchar(32) NOT NULL,
  `bao_ids` varchar(20) DEFAULT NULL COMMENT '保单编号',
  `bao_shouyiren` varchar(50) DEFAULT NULL,
  `bao_out_id` varchar(32) DEFAULT NULL,
  `bao_area_code` varchar(10) DEFAULT NULL,
  `bao_is_print` int(1) DEFAULT '0' COMMENT '是否打印保单？',
  `bao_add_date` datetime DEFAULT NULL COMMENT '出单日期',
  `bao_data_status` int(1) DEFAULT '1' COMMENT '数据状态:1 可用  0 删除',
  `bao_start_date` varchar(30) DEFAULT NULL COMMENT '保险起始日期',
  PRIMARY KEY (`bao_id`),
  KEY `jhac_baoxian_business` (`bao_out_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='保单信息表';

-- ----------------------------
-- Records of jhac_baoxian
-- ----------------------------
INSERT INTO `jhac_baoxian` VALUES ('1', '100001', '张三', '2f9f1c0d3f3b4df0895a36fda698d666', 'JZ', '0', '2016-01-21 15:51:20', '1', '2016-01-21 15:51:2');
INSERT INTO `jhac_baoxian` VALUES ('51dfaf5edc434bbfb7c8c2896cecfc6c', '10003', '光头强', '3bed70b77fb144178c4c29e8070a947a', 'JZ', '0', '2016-01-21 17:29:03', '1', '2016-01-21');
INSERT INTO `jhac_baoxian` VALUES ('ca47719dd53740df83551e06797e1b1d', '100002', '江强', 'eaa51e5b8a784601a7e14cdc770a4090', 'JZ', '0', '2016-01-21 16:42:18', '1', '2016-01-23');

-- ----------------------------
-- Table structure for jhac_car
-- ----------------------------
DROP TABLE IF EXISTS `jhac_car`;
CREATE TABLE `jhac_car` (
  `car_id` varchar(32) NOT NULL COMMENT '主键',
  `car_class_id` varchar(32) DEFAULT NULL COMMENT '车辆类别id',
  `car_changpai` varchar(50) DEFAULT NULL COMMENT '厂牌',
  `car_xinghao` varchar(50) DEFAULT NULL COMMENT '型号',
  `car_dengjidate` varchar(30) DEFAULT NULL COMMENT '首次登记日期',
  `car_licence` varchar(50) DEFAULT NULL COMMENT '车牌号',
  `car_engineno` varchar(50) DEFAULT NULL COMMENT '发动机号',
  `car_color` varchar(20) DEFAULT NULL COMMENT '车身颜色',
  `car_gear` varchar(20) DEFAULT NULL COMMENT '自动/手动',
  `car_out_id` varchar(32) DEFAULT NULL COMMENT '装车信息ID',
  `car_add_date` datetime DEFAULT NULL COMMENT '录入日期',
  `car_data_status` int(1) DEFAULT '1' COMMENT '数据状态：1-可用、0-删除',
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='车辆信息表';

-- ----------------------------
-- Records of jhac_car
-- ----------------------------
INSERT INTO `jhac_car` VALUES ('785bb88e2f1044aba01a536cc34cfcb6', '9cfb0f48d4664f8a82434ac17dce6f5f', 'CAMRY', 'CAMRY-02', '2016-01-22', '鄂A8767', 'DFGBFG', '黑色', '自动', 'd6f2c6bb3947418cbdb1cfb33ffb72f3', '2016-01-22 14:11:22', '1');
INSERT INTO `jhac_car` VALUES ('d5724a5ce7724f3f8f799511e2693286', '9cfb0f48d4664f8a82434ac17dce6f5f', 'CAMRY', 'CAMRY-01', '2016-01-21', '鄂A1234', 'SDFSDF-01', '白色', '自动', '5de74c6d5f5b40888f45157a7b32f15c', '2016-01-22 13:40:49', '1');

-- ----------------------------
-- Table structure for jhac_car_class
-- ----------------------------
DROP TABLE IF EXISTS `jhac_car_class`;
CREATE TABLE `jhac_car_class` (
  `cc_id` varchar(32) NOT NULL,
  `cc_name` varchar(50) DEFAULT NULL,
  `cc_company_id` varchar(32) DEFAULT NULL,
  `cc_area_code` varchar(10) DEFAULT NULL,
  `cc_add_date` datetime DEFAULT NULL,
  `cc_data_status` int(1) DEFAULT '1',
  PRIMARY KEY (`cc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='车辆类别信息表';

-- ----------------------------
-- Records of jhac_car_class
-- ----------------------------
INSERT INTO `jhac_car_class` VALUES ('05409c4764c944d59c6ea413cd90251e', '飞度', 'e31e0139074845ddbb5432b965b15613', 'JZ', '2016-01-13 09:48:39', '1');
INSERT INTO `jhac_car_class` VALUES ('098ce69d0bd8494c960b91b8d18f109a', 'CRV', '27704221a46a47268bf9f9f02c9fd534', 'JM', '2016-01-22 17:43:38', '1');
INSERT INTO `jhac_car_class` VALUES ('0e445b653cd3465ea17c736aa88ba518', '致炫', 'c55f4e5cba4949ea92111aa07e5e23d4', 'JZ', '2016-01-13 09:48:03', '1');
INSERT INTO `jhac_car_class` VALUES ('2be8ebc2172d403d83d7ae20312243ed', '新胜达(IX45)', '4aaa5ed0c2bd4d7ba1d136d447ce71ac', 'JZ', '2016-01-13 09:49:57', '1');
INSERT INTO `jhac_car_class` VALUES ('348ae8b3445c4777b0d814e09f434b13', '名图', '4aaa5ed0c2bd4d7ba1d136d447ce71ac', 'JZ', '2016-01-13 09:49:48', '1');
INSERT INTO `jhac_car_class` VALUES ('391c352f0a7446da9512cd3a4294387b', '速派', '59b6559f720643b89a13b169eccfb2bb', 'JZ', '2016-01-13 09:52:55', '1');
INSERT INTO `jhac_car_class` VALUES ('3a82dd87cb7145828b21b5ed16d5b72e', '思铭', '4ab4c6735fea44eb971209846a0c16e5', 'JZ', '2016-01-13 09:51:26', '1');
INSERT INTO `jhac_car_class` VALUES ('40e70c129f064de79e8ca197e04fda4c', '奥德赛', 'e31e0139074845ddbb5432b965b15613', 'JZ', '2016-01-13 09:48:50', '1');
INSERT INTO `jhac_car_class` VALUES ('44cc9c8579f8449b9c8778735ee5eadd', '速腾', '22843546df574c7bb0bef50cf560b950', 'JM', '2016-01-22 17:43:46', '1');
INSERT INTO `jhac_car_class` VALUES ('4bf249838270436687183f25d5354ed8', '名图', '2b4f4cb716d249c79667c00a706445ce', 'YC', '2016-01-14 14:49:57', '1');
INSERT INTO `jhac_car_class` VALUES ('4c9ed2873c6242b7b367817049c8c473', '骊威', '0cc91e4fe67548d3a3febff210ff0a0a', 'JZ', '2016-01-13 09:50:27', '1');
INSERT INTO `jhac_car_class` VALUES ('59336e257b224dd598b05ca456a9623c', '凯美瑞', 'b0be5e63c3684b7dafa04ef36422b06b', 'JM', '2016-01-22 17:43:08', '1');
INSERT INTO `jhac_car_class` VALUES ('6c48afdc11464a6bb5c057c51982885f', '索纳塔', '4aaa5ed0c2bd4d7ba1d136d447ce71ac', 'JZ', '2016-01-13 09:49:29', '1');
INSERT INTO `jhac_car_class` VALUES ('6e2f952186a44bf28ac11cf59c4def4a', '雅阁', 'e31e0139074845ddbb5432b965b15613', 'JZ', '2016-01-13 09:48:29', '1');
INSERT INTO `jhac_car_class` VALUES ('7294acda4d64410cbc8edb1397d6388c', '悦动', '4aaa5ed0c2bd4d7ba1d136d447ce71ac', 'JZ', '2016-01-13 09:49:08', '1');
INSERT INTO `jhac_car_class` VALUES ('734b19b1d30746b09580fa93b7c2acc4', '途胜', '4aaa5ed0c2bd4d7ba1d136d447ce71ac', 'JZ', '2016-01-13 09:49:39', '1');
INSERT INTO `jhac_car_class` VALUES ('74e316685ebc4b8ba27dd9921d4bb892', '天籁', '0cc91e4fe67548d3a3febff210ff0a0a', 'JZ', '2016-01-13 09:50:34', '1');
INSERT INTO `jhac_car_class` VALUES ('7a51b4ddaa0842fa93ac71d690e34006', '宝来', 'caad0a2b1c0d47118c04c69f95de52f3', 'YC', '2016-01-14 14:50:16', '1');
INSERT INTO `jhac_car_class` VALUES ('8010bbb3d9224dbba7ea5032959ffca2', '思域', '4ab4c6735fea44eb971209846a0c16e5', 'JZ', '2016-01-13 09:51:15', '1');
INSERT INTO `jhac_car_class` VALUES ('845ff683bea04d87ae69949f2ebb7aa8', '汉兰达', 'b0be5e63c3684b7dafa04ef36422b06b', 'JM', '2016-01-22 17:43:27', '1');
INSERT INTO `jhac_car_class` VALUES ('867261bd333244f6950e5e32f0047719', '索纳塔', '2b4f4cb716d249c79667c00a706445ce', 'YC', '2016-01-14 14:51:04', '1');
INSERT INTO `jhac_car_class` VALUES ('8f862053d2ce4dbc844a7f0fc34cf6ca', 'CRV', '4ab4c6735fea44eb971209846a0c16e5', 'JZ', '2016-01-13 09:50:59', '1');
INSERT INTO `jhac_car_class` VALUES ('92d52ac6ae024a25af7a6c7718df66a6', '明锐', '59b6559f720643b89a13b169eccfb2bb', 'JZ', '2016-01-13 09:53:14', '1');
INSERT INTO `jhac_car_class` VALUES ('9983f893a0bb4b119ce9025f3e163b9b', 'XRV', '4ab4c6735fea44eb971209846a0c16e5', 'JZ', '2016-01-13 09:51:06', '1');
INSERT INTO `jhac_car_class` VALUES ('9cfb0f48d4664f8a82434ac17dce6f5f', '凯美瑞', 'c55f4e5cba4949ea92111aa07e5e23d4', 'JZ', '2016-01-13 09:47:41', '1');
INSERT INTO `jhac_car_class` VALUES ('a5b7083ba00b4e6a89c33c13bdc41718', '杰德', '4ab4c6735fea44eb971209846a0c16e5', 'JZ', '2016-01-13 09:51:36', '1');
INSERT INTO `jhac_car_class` VALUES ('b606c17f6f454efd866fbb60389a7c92', '汉兰达', 'c55f4e5cba4949ea92111aa07e5e23d4', 'JZ', '2016-01-13 09:47:53', '1');
INSERT INTO `jhac_car_class` VALUES ('bd7e6559c4aa46a789fa41cc2f1c5923', '轩逸', '0cc91e4fe67548d3a3febff210ff0a0a', 'JZ', '2016-01-13 09:50:10', '1');
INSERT INTO `jhac_car_class` VALUES ('c25448f5b4bd43e2b232a617acefd7ed', '思铂睿', '4ab4c6735fea44eb971209846a0c16e5', 'JZ', '2016-01-13 09:51:43', '1');
INSERT INTO `jhac_car_class` VALUES ('c5ee2c406b7b4bf59567f001b92873b8', '骐达', '0cc91e4fe67548d3a3febff210ff0a0a', 'JZ', '2016-01-13 09:50:42', '1');
INSERT INTO `jhac_car_class` VALUES ('c679e08987eb4b87bd671af1f2afe883', '逍客', '0cc91e4fe67548d3a3febff210ff0a0a', 'JZ', '2016-01-13 09:50:19', '1');
INSERT INTO `jhac_car_class` VALUES ('cfbd95ebbaba47daab5ab41497f35a95', '昊锐', '59b6559f720643b89a13b169eccfb2bb', 'JZ', '2016-01-13 09:53:05', '1');
INSERT INTO `jhac_car_class` VALUES ('d6dab3aea1cf456283629ad0eda8b3ae', '野帝', '59b6559f720643b89a13b169eccfb2bb', 'JZ', '2016-01-13 09:53:22', '1');
INSERT INTO `jhac_car_class` VALUES ('e1dea64d6ce14a3a8013dbb3e781f707', '锋范', 'e31e0139074845ddbb5432b965b15613', 'JZ', '2016-01-13 09:48:59', '1');
INSERT INTO `jhac_car_class` VALUES ('e5c56ce0b6c1441faf61367b9e49d288', 'CC', '22843546df574c7bb0bef50cf560b950', 'JM', '2016-01-22 17:44:44', '1');
INSERT INTO `jhac_car_class` VALUES ('ee61c0a9e1314d41b58cddfd83f2e9e6', '逸致', 'c55f4e5cba4949ea92111aa07e5e23d4', 'JZ', '2016-01-13 09:48:13', '1');
INSERT INTO `jhac_car_class` VALUES ('f2fc1b062e504668855e4da20d512e48', 'CC', 'caad0a2b1c0d47118c04c69f95de52f3', 'YC', '2016-01-14 14:50:10', '1');
INSERT INTO `jhac_car_class` VALUES ('f92198e726004d9d949953720e111d1e', 'IX35', '4aaa5ed0c2bd4d7ba1d136d447ce71ac', 'JZ', '2016-01-13 09:49:18', '1');

-- ----------------------------
-- Table structure for jhac_company
-- ----------------------------
DROP TABLE IF EXISTS `jhac_company`;
CREATE TABLE `jhac_company` (
  `com_id` varchar(32) NOT NULL,
  `com_name` varchar(100) DEFAULT NULL,
  `com_parent_id` varchar(32) DEFAULT '0',
  `com_area_code` varchar(10) DEFAULT NULL,
  `com_add_date` datetime DEFAULT NULL,
  `com_data_status` int(1) DEFAULT '1',
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='合作集团/4S点信息表（基础数据表）';

-- ----------------------------
-- Records of jhac_company
-- ----------------------------
INSERT INTO `jhac_company` VALUES ('0cc91e4fe67548d3a3febff210ff0a0a', '荆州恒信德龙东风日产4S店', '864f41bcc5a34d30acafbaf1749de2a7', 'JZ', '2015-11-13 16:34:38', '1');
INSERT INTO `jhac_company` VALUES ('127bd97596c7430d8a7067efc3d1239d', '荆州恒信德龙一汽大众4S店', '864f41bcc5a34d30acafbaf1749de2a7', 'JZ', '2015-11-13 16:35:40', '1');
INSERT INTO `jhac_company` VALUES ('13ba60fc08e84abeb34346ba9757f636', '天顺达集团', '0', 'WH', '2015-11-13 16:29:41', '1');
INSERT INTO `jhac_company` VALUES ('22843546df574c7bb0bef50cf560b950', '荆门一汽大众4S店', '864f41bcc5a34d30acafbaf1749de2a7', 'JM', '2016-01-11 16:20:15', '1');
INSERT INTO `jhac_company` VALUES ('27704221a46a47268bf9f9f02c9fd534', '荆门东风本田4S店', '864f41bcc5a34d30acafbaf1749de2a7', 'JM', '2016-01-11 16:20:35', '1');
INSERT INTO `jhac_company` VALUES ('2b4f4cb716d249c79667c00a706445ce', '宜昌北京现代4S店', '864f41bcc5a34d30acafbaf1749de2a7', 'YC', '2016-01-14 14:33:19', '1');
INSERT INTO `jhac_company` VALUES ('4aaa5ed0c2bd4d7ba1d136d447ce71ac', '荆州恒信德龙北京现代4S店', '864f41bcc5a34d30acafbaf1749de2a7', 'JZ', '2015-11-13 16:34:18', '1');
INSERT INTO `jhac_company` VALUES ('4ab4c6735fea44eb971209846a0c16e5', '荆州恒信德龙东风本田4S店', '864f41bcc5a34d30acafbaf1749de2a7', 'JZ', '2015-11-13 16:35:03', '1');
INSERT INTO `jhac_company` VALUES ('57b5a85489a84386b8bfcded5b401a7c', '荆州一汽丰田4S店', 'feb3c2e7c8ec4c158fd8c37b3140f7e1', 'JZ', '2015-11-13 16:36:17', '1');
INSERT INTO `jhac_company` VALUES ('59b6559f720643b89a13b169eccfb2bb', '荆州恒信德龙斯柯达4S店', '864f41bcc5a34d30acafbaf1749de2a7', 'JZ', '2015-11-13 16:35:27', '1');
INSERT INTO `jhac_company` VALUES ('647148e328574c5fa78792418bd0b89c', '荆州通用别克4S店', 'd72e3a334658402b95faafab989aad13', 'JZ', '2015-11-13 16:38:47', '1');
INSERT INTO `jhac_company` VALUES ('6672dd164dc745528cfaac8828fb39fd', '荆州通用雪弗兰4S店', 'd72e3a334658402b95faafab989aad13', 'JZ', '2015-11-13 16:39:10', '1');
INSERT INTO `jhac_company` VALUES ('7499745a34a84c05b7219796b40ac595', '测试华星', 'a862e62d4c834308a4277981c7c468b0', 'WH', '2016-01-12 17:06:06', '1');
INSERT INTO `jhac_company` VALUES ('864f41bcc5a34d30acafbaf1749de2a7', '恒信德龙集团', '0', 'WH', '2015-11-13 16:32:26', '1');
INSERT INTO `jhac_company` VALUES ('a862e62d4c834308a4277981c7c468b0', '华星汽车集团', '0', 'WH', '2015-11-13 16:29:31', '1');
INSERT INTO `jhac_company` VALUES ('b0be5e63c3684b7dafa04ef36422b06b', '荆门广汽丰田4S店', 'a862e62d4c834308a4277981c7c468b0', 'JM', '2016-01-11 16:21:09', '1');
INSERT INTO `jhac_company` VALUES ('c55f4e5cba4949ea92111aa07e5e23d4', '荆州华星荆沙广汽丰田4S店', 'a862e62d4c834308a4277981c7c468b0', 'JZ', '2015-11-13 16:33:01', '1');
INSERT INTO `jhac_company` VALUES ('c95c5780b0a641699673fa59c16258f9', '测试4S店', 'edeff78ff5f44e65adef4f7e7109ea16', 'WH', '2016-01-06 14:40:49', '1');
INSERT INTO `jhac_company` VALUES ('caad0a2b1c0d47118c04c69f95de52f3', '宜昌一汽大众4S店', '864f41bcc5a34d30acafbaf1749de2a7', 'YC', '2016-01-14 14:34:13', '1');
INSERT INTO `jhac_company` VALUES ('d72e3a334658402b95faafab989aad13', '其他车系(福特,别克,雪弗兰)', '0', 'WH', '2015-11-13 16:31:49', '1');
INSERT INTO `jhac_company` VALUES ('e31e0139074845ddbb5432b965b15613', '荆州天顺达广本4S店', '13ba60fc08e84abeb34346ba9757f636', 'JZ', '2015-11-13 16:33:46', '1');
INSERT INTO `jhac_company` VALUES ('edeff78ff5f44e65adef4f7e7109ea16', '测试集团', '0', 'WH', '2016-01-06 14:40:09', '1');
INSERT INTO `jhac_company` VALUES ('fb4090eba1f943a5a43748c88f656803', '荆州长安福特4S店', 'd72e3a334658402b95faafab989aad13', 'JZ', '2015-11-13 16:38:30', '1');
INSERT INTO `jhac_company` VALUES ('feb3c2e7c8ec4c158fd8c37b3140f7e1', '荆州一汽丰田', '0', 'WH', '2015-11-13 16:30:16', '1');

-- ----------------------------
-- Table structure for jhac_customer
-- ----------------------------
DROP TABLE IF EXISTS `jhac_customer`;
CREATE TABLE `jhac_customer` (
  `cus_id` varchar(32) NOT NULL COMMENT '主键',
  `cus_name` varchar(50) DEFAULT NULL COMMENT '客户姓名',
  `cus_identify` varchar(20) DEFAULT NULL COMMENT '客户身份证号',
  `cus_telephone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `cus_address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `cus_id_pic` varchar(255) DEFAULT NULL COMMENT '身份证照片',
  `cus_out_id` varchar(32) DEFAULT NULL COMMENT '装车信息ID',
  `cus_add_date` datetime DEFAULT NULL COMMENT '录入时间',
  `cus_data_status` int(1) DEFAULT '1' COMMENT '数据状态：1-可用、0-删除',
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='客户信息表';

-- ----------------------------
-- Records of jhac_customer
-- ----------------------------
INSERT INTO `jhac_customer` VALUES ('0e0d95dca85d4cc583e06823f1354fef', '张三', '42061108887888899', '15444333322', '湖北省武汉市汉阳区月湖桥北路1333号', null, '5de74c6d5f5b40888f45157a7b32f15c', '2016-01-22 13:48:29', '1');
INSERT INTO `jhac_customer` VALUES ('605d2f73fada414eaac603c0efccdaac', '龙五', '4206211987654567867', '18988998877', '湖北省随州市随县莲花镇六组', null, 'd6f2c6bb3947418cbdb1cfb33ffb72f3', '2016-01-22 14:14:59', '1');
INSERT INTO `jhac_customer` VALUES ('714d484246e14b0892b91d312db04cf7', '王凯旋', '34234234234234234', '3423423434', '东直门大街', null, '3f9cbe8645504b9b827b5e35a464e57f', '2016-01-22 16:15:43', '1');
INSERT INTO `jhac_customer` VALUES ('86b2d72a002d49a2aca44f02e4564472', '杨颖', '23432434343434', '027-434343434', '上海市松江区XX小区', null, 'ec0211a52af5486a9ab877e52ecfbe67', '2016-01-22 16:16:44', '1');
INSERT INTO `jhac_customer` VALUES ('95683e5fe60b455382ee9532d82df1e5', '胡八一', '4206211877665545678', '19876677878', '北京市长安区东直门大街100号', null, '5de74c6d5f5b40888f45157a7b32f15c', '2016-01-22 14:53:12', '1');

-- ----------------------------
-- Table structure for jhac_file
-- ----------------------------
DROP TABLE IF EXISTS `jhac_file`;
CREATE TABLE `jhac_file` (
  `file_id` varchar(32) NOT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  `file_description` varchar(255) DEFAULT NULL,
  `file_user_id` varchar(32) DEFAULT NULL,
  `file_add_date` datetime DEFAULT NULL,
  `file_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件上传表';

-- ----------------------------
-- Records of jhac_file
-- ----------------------------

-- ----------------------------
-- Table structure for jhac_login_log
-- ----------------------------
DROP TABLE IF EXISTS `jhac_login_log`;
CREATE TABLE `jhac_login_log` (
  `log_id` varchar(32) NOT NULL,
  `log_username` varchar(40) DEFAULT NULL,
  `log_in_date` datetime DEFAULT NULL,
  `log_out_date` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jhac_login_log
-- ----------------------------
INSERT INTO `jhac_login_log` VALUES ('007d9bacb10e4d108518af21134db602', 'admin123', '2016-01-14 17:52:07', '2016-01-14 17:56:18');
INSERT INTO `jhac_login_log` VALUES ('0091a979d46145e48a8eb1a0766221f6', 'admin123', '2016-01-14 10:43:42', null);
INSERT INTO `jhac_login_log` VALUES ('00a4bb821a224bcc948dce34a8edf447', 'admin123', '2016-01-19 11:53:27', '2016-01-19 11:54:02');
INSERT INTO `jhac_login_log` VALUES ('09321effd74549b2ba32dcf572208415', 'admin123', '2016-01-14 14:23:08', '2016-01-14 14:25:18');
INSERT INTO `jhac_login_log` VALUES ('094dc8b8988d41cebcf65d45301f5e8a', 'liyang', '2016-01-22 13:26:17', null);
INSERT INTO `jhac_login_log` VALUES ('09cd8b02b1564dc5969176866ded4303', 'liyang', '2016-01-21 17:08:11', null);
INSERT INTO `jhac_login_log` VALUES ('0c162eca426a4a7092550ec644b73c6a', 'liyang', '2016-01-20 17:54:05', null);
INSERT INTO `jhac_login_log` VALUES ('0e4f786fe2fd48b98a365e8dbcf9c4a8', 'admin123', '2016-01-14 16:34:35', null);
INSERT INTO `jhac_login_log` VALUES ('10ecca8411ef47bb9c43ed9fe88ad206', 'admin123', '2016-01-15 10:00:34', null);
INSERT INTO `jhac_login_log` VALUES ('10fc038593314377ab0bc8250363b6b9', 'admin123', '2016-01-22 10:57:46', '2016-01-22 10:57:53');
INSERT INTO `jhac_login_log` VALUES ('13f7cae564f4439bb4c50e0a83d52122', 'admin123', '2016-01-14 15:34:53', null);
INSERT INTO `jhac_login_log` VALUES ('15de6018371c458592b8b39876ae4553', 'zhangsan', '2016-01-14 14:47:28', null);
INSERT INTO `jhac_login_log` VALUES ('183aa737ad864621a005539fbf61c6cf', 'liyang', '2016-01-22 10:58:24', null);
INSERT INTO `jhac_login_log` VALUES ('190c57119d3047c0a7ec176a9176c93f', 'admin123', '2016-01-14 17:15:22', null);
INSERT INTO `jhac_login_log` VALUES ('19d73d302e4e4edc83623c5d176ed95f', 'admin123', '2016-01-14 14:26:39', '2016-01-14 14:27:15');
INSERT INTO `jhac_login_log` VALUES ('1d2c8323eee345558dabbc6cc3e80747', 'admin123', '2016-01-18 14:15:26', null);
INSERT INTO `jhac_login_log` VALUES ('20824d4270364aa4a4ee49a3db573be9', 'liyang', '2016-01-18 14:36:33', null);
INSERT INTO `jhac_login_log` VALUES ('22cef3551fad4986a92982535bb51641', 'admin123', '2016-01-15 11:08:20', null);
INSERT INTO `jhac_login_log` VALUES ('24493b5fd2854234909050746062e434', 'liyang', '2016-01-15 14:28:57', null);
INSERT INTO `jhac_login_log` VALUES ('2499440e8e644d28b2418d0d53f515f5', 'admin123', '2016-01-15 14:26:25', '2016-01-15 14:28:42');
INSERT INTO `jhac_login_log` VALUES ('263735a7fba94c60af908ebbab67ef75', 'admin123', '2016-01-20 17:02:52', '2016-01-20 17:04:44');
INSERT INTO `jhac_login_log` VALUES ('2679d65a96dd4356b621f60713629336', 'huoju', '2016-01-14 17:56:27', '2016-01-14 17:57:14');
INSERT INTO `jhac_login_log` VALUES ('2b44ea6843a34aa08e020999e397ece1', 'liyang', '2016-01-14 14:49:19', '2016-01-14 14:49:28');
INSERT INTO `jhac_login_log` VALUES ('2b896e15c9a5418ca81536fe1ea7a415', 'liyang', '2016-01-21 16:20:27', null);
INSERT INTO `jhac_login_log` VALUES ('2ec71944f6dc47e79b689efd9e5554c5', 'liyang', '2016-01-22 10:00:00', null);
INSERT INTO `jhac_login_log` VALUES ('30c46889ddf9419681741396188079df', 'admin123', '2016-01-15 11:24:41', null);
INSERT INTO `jhac_login_log` VALUES ('3564269fde7a41f6824c09dc26700ea8', 'admin123', '2016-01-15 14:04:04', '2016-01-15 14:07:02');
INSERT INTO `jhac_login_log` VALUES ('36438239195848eaa62ff760d6f9468c', 'admin123', '2016-01-14 17:03:44', null);
INSERT INTO `jhac_login_log` VALUES ('3727ae3f90d942dd9ecd833fc33572f5', 'admin123', '2016-01-14 15:17:20', null);
INSERT INTO `jhac_login_log` VALUES ('391bfa1f2ff241f7ab2b69955ec32f53', 'admin123', '2016-01-22 17:38:36', '2016-01-22 17:39:59');
INSERT INTO `jhac_login_log` VALUES ('396a147bab3748e8a2b323eb034171b5', 'admin123', '2016-01-14 17:50:44', null);
INSERT INTO `jhac_login_log` VALUES ('3e40bf9adfc142578be7906e3b563dcb', 'admin123', '2016-01-21 10:06:04', '2016-01-21 10:06:27');
INSERT INTO `jhac_login_log` VALUES ('409a0161165e447c93594e9abb79caec', 'admin123', '2016-01-14 15:08:32', null);
INSERT INTO `jhac_login_log` VALUES ('4101b0c343a34f788b531cea6548a76f', 'admin123', '2016-01-14 10:39:48', null);
INSERT INTO `jhac_login_log` VALUES ('479361be550f43189225907334b664da', 'liyang', '2016-01-18 15:52:33', null);
INSERT INTO `jhac_login_log` VALUES ('4a382b8e63784b99a589b3e2732c6366', 'admin123', '2016-01-14 11:41:21', null);
INSERT INTO `jhac_login_log` VALUES ('4bddb2a06ace4aa1bd49b49b99ab7907', 'huoju', '2016-01-18 16:25:51', null);
INSERT INTO `jhac_login_log` VALUES ('4cdb58707209412e9aa5004c6f566583', 'liyang', '2016-01-22 16:45:11', '2016-01-22 16:45:56');
INSERT INTO `jhac_login_log` VALUES ('4e17e902f9ea4f45925b6ecb09e9d932', 'wuwei', '2016-01-18 17:05:31', null);
INSERT INTO `jhac_login_log` VALUES ('4fa21dc02bef4127bc8652f640393987', 'huoju', '2016-01-18 17:17:46', null);
INSERT INTO `jhac_login_log` VALUES ('4ffd170f9773487c9096af2dc08f2fcf', 'admin123', '2016-01-14 15:38:18', null);
INSERT INTO `jhac_login_log` VALUES ('50f56d8bb91145ccae47633ddc634066', 'admin123', '2016-01-20 13:56:41', null);
INSERT INTO `jhac_login_log` VALUES ('545c01ff969745229c2d8f75ca1f9ff7', 'huoju', '2016-01-18 14:24:10', '2016-01-18 14:27:01');
INSERT INTO `jhac_login_log` VALUES ('557b326b110e4510a17fb6f9eb9c1c71', 'admin123', '2016-01-14 15:16:15', null);
INSERT INTO `jhac_login_log` VALUES ('57e9ad6bfe7e462d884169f9b2bfcfa5', 'admin123', '2016-01-14 11:23:01', null);
INSERT INTO `jhac_login_log` VALUES ('5b594b72c3cc45ec8886cc6aec1ad857', 'liyang', '2016-01-18 15:41:49', null);
INSERT INTO `jhac_login_log` VALUES ('5b7d97604dc743d4a1496a31d47a0642', 'wuwei', '2016-01-18 16:34:52', null);
INSERT INTO `jhac_login_log` VALUES ('5cc2000ee3254b32a069f785edd5d756', 'wuwei', '2016-01-22 17:42:35', '2016-01-22 17:45:08');
INSERT INTO `jhac_login_log` VALUES ('5fec0854ba924fc69fb1016c943e6e18', 'liyang', '2016-01-14 14:46:10', '2016-01-14 14:47:19');
INSERT INTO `jhac_login_log` VALUES ('613e1c7db0124f589ad8849539c92aef', 'huoju', '2016-01-20 09:41:32', null);
INSERT INTO `jhac_login_log` VALUES ('61fe5c129b7245ada944a0002d0bcf20', 'huoju', '2016-01-15 14:07:36', '2016-01-15 14:26:17');
INSERT INTO `jhac_login_log` VALUES ('629d25faf1e4469695ac415523837b56', 'zhangsan', '2016-01-14 14:49:38', '2016-01-14 14:58:10');
INSERT INTO `jhac_login_log` VALUES ('6436fae4c9904931a06a0b65e7e9fb7a', 'liyang', '2016-01-15 14:41:00', null);
INSERT INTO `jhac_login_log` VALUES ('649265dac71443fb965323d679113f9b', 'admin123', '2016-01-14 14:58:21', '2016-01-14 14:59:52');
INSERT INTO `jhac_login_log` VALUES ('65e72780f1cc423aa79b4a867527dedf', 'admin123', '2016-01-22 09:59:28', '2016-01-22 09:59:42');
INSERT INTO `jhac_login_log` VALUES ('68ff54a19241485eb4be9d7168aa63b4', 'admin123', '2016-01-14 17:21:29', null);
INSERT INTO `jhac_login_log` VALUES ('6b522467b25c47a58d224347ded13b4b', 'admin123', '2016-01-15 15:47:53', '2016-01-15 15:48:02');
INSERT INTO `jhac_login_log` VALUES ('6b90a0220bb0417fa8d5a3a823d59b22', 'huoju', '2016-01-18 11:00:23', null);
INSERT INTO `jhac_login_log` VALUES ('6bfb1f4cb4ef4ce3bc077c44d7cb32c3', 'admin123', '2016-01-15 09:15:31', null);
INSERT INTO `jhac_login_log` VALUES ('6ec61d49b1614022982a2e085943b352', 'liyang', '2016-01-22 11:05:43', null);
INSERT INTO `jhac_login_log` VALUES ('6f74b93117f34298ad4923c156c1579c', null, null, '2016-01-20 11:18:24');
INSERT INTO `jhac_login_log` VALUES ('7008d4e2edbd407eba566bcd4331ad8a', 'admin123', '2016-01-14 09:03:49', '2016-01-14 09:04:56');
INSERT INTO `jhac_login_log` VALUES ('702cf95f3cf24ef9a4e209440f487e0a', 'liyang', '2016-01-22 15:57:20', null);
INSERT INTO `jhac_login_log` VALUES ('70cab442980b4b74ab6e0f1e765adf24', 'admin123', '2016-01-19 17:23:15', null);
INSERT INTO `jhac_login_log` VALUES ('7510c46ea5a8438e8bf28778ddbd281c', 'liyang', '2016-01-13 16:10:06', null);
INSERT INTO `jhac_login_log` VALUES ('75a423de04d54de4a0b09f33363740cb', null, null, '2016-01-14 14:43:50');
INSERT INTO `jhac_login_log` VALUES ('78b30a19065f4b00828dd82e0bd22708', 'admin123', '2016-01-22 17:48:12', '2016-01-22 17:49:08');
INSERT INTO `jhac_login_log` VALUES ('799dd811e78147fd9b65423892e33815', 'admin123', '2016-01-13 16:48:20', null);
INSERT INTO `jhac_login_log` VALUES ('79b6029c0dc645279a234e522619da23', 'longwu', '2016-01-22 16:46:09', '2016-01-22 16:46:51');
INSERT INTO `jhac_login_log` VALUES ('79c5b2bc308b4a3098692cb8b777599b', 'admin123', '2016-01-14 15:50:10', null);
INSERT INTO `jhac_login_log` VALUES ('7d717eb10aa6441591696026d1d32c37', 'admin123', '2016-01-14 11:27:18', null);
INSERT INTO `jhac_login_log` VALUES ('7d77378d1cf9463a9db54c994fc440a5', 'liyang', '2016-01-18 10:57:07', '2016-01-18 10:59:38');
INSERT INTO `jhac_login_log` VALUES ('7d909a767d2147dfb7bd2226382f35cd', 'admin123', '2016-01-14 11:44:15', null);
INSERT INTO `jhac_login_log` VALUES ('7f6a49b2151044028691511865586f1f', 'liyang', '2016-01-21 10:16:41', null);
INSERT INTO `jhac_login_log` VALUES ('7f7f237ad2f14435aeca37fccaa03723', 'admin123', '2016-01-14 09:00:52', null);
INSERT INTO `jhac_login_log` VALUES ('7f96cb03472b4e3490db907a0f42cd22', 'liyang', '2016-01-18 15:44:41', null);
INSERT INTO `jhac_login_log` VALUES ('8002dfb30b3b4ec4b05d9a9eea31e7b8', 'admin123', '2016-01-22 16:48:03', null);
INSERT INTO `jhac_login_log` VALUES ('80180c8b3c264cc08f4e46a1d841190b', 'huoju', '2016-01-19 10:54:04', '2016-01-19 10:59:05');
INSERT INTO `jhac_login_log` VALUES ('829dbea904e64d5884d14aaa6cfc0743', 'huoju', '2016-01-19 11:44:47', null);
INSERT INTO `jhac_login_log` VALUES ('830f0f268e59440f90b48c1494cc4255', 'liyang', '2016-01-22 16:23:48', '2016-01-22 16:44:16');
INSERT INTO `jhac_login_log` VALUES ('83a267fc977348aeb3a1f0197e1cb5c8', 'admin123', '2016-01-14 15:07:20', null);
INSERT INTO `jhac_login_log` VALUES ('84635c0f72d747128510184bd001f1d7', 'admin123', '2016-01-20 17:28:52', '2016-01-20 17:53:54');
INSERT INTO `jhac_login_log` VALUES ('849b3b12c5f14ae489dd883e605ef671', 'liyang', '2016-01-18 12:29:37', '2016-01-18 12:33:24');
INSERT INTO `jhac_login_log` VALUES ('883db59132ea4976bf23f1d000bab203', 'admin123', '2016-01-14 14:35:22', '2016-01-14 14:38:06');
INSERT INTO `jhac_login_log` VALUES ('89cbd7be294a4c66a12a0cb90e0866ec', 'admin123', '2016-01-15 11:05:53', null);
INSERT INTO `jhac_login_log` VALUES ('8a4d442f9faf44619451a9e96bae4510', 'huoju', '2016-01-14 17:58:03', null);
INSERT INTO `jhac_login_log` VALUES ('8f241ac11c4a4a06856e9f58afb0d48d', 'liyang', '2016-01-15 15:48:16', null);
INSERT INTO `jhac_login_log` VALUES ('945d4e8206bf46f19fd3221b2120c602', 'huoju', '2016-01-18 14:22:23', null);
INSERT INTO `jhac_login_log` VALUES ('954e75b6a6274d4c98fcb5b55ca6790e', 'admin123', '2016-01-14 17:59:35', '2016-01-14 17:59:44');
INSERT INTO `jhac_login_log` VALUES ('96a30b80c5c0427fa4a7d6760523c1ee', 'admin123', '2016-01-14 16:17:07', null);
INSERT INTO `jhac_login_log` VALUES ('980bbf3e885d450b8b360ec2c49acc3c', 'admin123', '2016-01-14 15:42:08', null);
INSERT INTO `jhac_login_log` VALUES ('9a11b9a4f19147e5b935102dbb08425d', 'huoju', '2016-01-18 17:10:00', '2016-01-18 17:16:50');
INSERT INTO `jhac_login_log` VALUES ('9b0bff501aae40f396bf661f2b8125ae', 'admin123', '2016-01-15 11:01:06', null);
INSERT INTO `jhac_login_log` VALUES ('9c07cd4e654345a0907bebb4e5a8dbf8', 'liyang', '2016-01-21 14:23:02', null);
INSERT INTO `jhac_login_log` VALUES ('a4a680eb18334a7492fc7df84b50403e', 'liyang', '2016-01-22 17:30:08', null);
INSERT INTO `jhac_login_log` VALUES ('a63868a1bcd34dee86efc5ef960b9b20', 'liyang', '2016-01-21 16:36:38', null);
INSERT INTO `jhac_login_log` VALUES ('ab09dd9c7d1544d6bdc73a027e8d1c3a', 'admin123', '2016-01-13 16:18:55', null);
INSERT INTO `jhac_login_log` VALUES ('ad36c9c9fa584400b0507018325d146e', 'liyang', '2016-01-22 15:10:46', null);
INSERT INTO `jhac_login_log` VALUES ('ae24de04736b4b7f94774249a5ad11a2', 'admin123', '2016-01-13 14:56:55', null);
INSERT INTO `jhac_login_log` VALUES ('aeb5770a18524e22a764659ceaf4adef', 'liyang', '2016-01-14 17:59:54', null);
INSERT INTO `jhac_login_log` VALUES ('b035a5d8d23b4412ac9c0b7e0d40160c', 'liyang', '2016-01-18 17:04:57', '2016-01-18 17:05:11');
INSERT INTO `jhac_login_log` VALUES ('b10744e69cca418ab750d6dab5066098', null, null, '2016-01-20 11:18:24');
INSERT INTO `jhac_login_log` VALUES ('b15f201bd7304d99ac63369404f2a9f1', 'admin123', '2016-01-19 11:44:32', '2016-01-19 11:44:38');
INSERT INTO `jhac_login_log` VALUES ('b1d08c980893460d935904147fb9ebb4', 'huoju', '2016-01-18 16:50:21', null);
INSERT INTO `jhac_login_log` VALUES ('b326e1a311b04fe8a3c8b25fd6266189', 'zonggongsi', '2016-01-22 17:49:20', null);
INSERT INTO `jhac_login_log` VALUES ('b4f2fdb3da8d474a8482aa21e0cbe313', 'huoju', '2016-01-19 10:59:48', '2016-01-19 11:25:52');
INSERT INTO `jhac_login_log` VALUES ('b4ffac198f094b2694c9d47c5c9a0ba4', 'liyang', '2016-01-22 15:58:49', null);
INSERT INTO `jhac_login_log` VALUES ('b546b5cd711e4b85b074c276fd5eae14', 'admin123', '2016-01-14 17:57:23', '2016-01-14 17:57:52');
INSERT INTO `jhac_login_log` VALUES ('b9f6712d5bbe454fb344d2eadc8c3c8d', 'liyang', '2016-01-21 16:40:37', null);
INSERT INTO `jhac_login_log` VALUES ('baa10262fe8242cd8cfb567e349685af', 'admin123', '2016-01-15 10:57:39', null);
INSERT INTO `jhac_login_log` VALUES ('bb9abc655574495786e4a4f45b6f7183', 'liyang', '2016-01-22 16:00:44', null);
INSERT INTO `jhac_login_log` VALUES ('bc35f16f987d4c38a649e6ba11c0ed8b', 'admin123', '2016-01-18 10:56:42', '2016-01-18 10:56:56');
INSERT INTO `jhac_login_log` VALUES ('bcd26df27f5a43a4a95d2e3a485025cc', 'zhangsan', '2016-01-14 14:27:27', '2016-01-14 14:35:15');
INSERT INTO `jhac_login_log` VALUES ('bcf7d04fd2384bcb891cfb52229498dc', 'admin123', '2016-01-22 13:25:55', '2016-01-22 13:25:59');
INSERT INTO `jhac_login_log` VALUES ('bd4324ba524e4400bea7a6cd45baefd0', 'admin123', '2016-01-18 17:17:02', '2016-01-18 17:17:36');
INSERT INTO `jhac_login_log` VALUES ('bd69e12c574a49cfb85db8c3ba38cfef', 'admin123', '2016-01-14 15:21:27', null);
INSERT INTO `jhac_login_log` VALUES ('bdb59572d9414194a12dd93733c876ab', null, null, '2016-01-22 17:29:01');
INSERT INTO `jhac_login_log` VALUES ('bf436132b362438f802267a7a72d41af', 'zhangsan', '2016-01-14 14:38:21', null);
INSERT INTO `jhac_login_log` VALUES ('c12da9368941473ea1444f26e1a4d2ed', 'liyang', '2016-01-21 10:06:45', null);
INSERT INTO `jhac_login_log` VALUES ('c1b9a5141ed14cd097abb42408a8e193', 'liyang', '2016-01-18 14:27:08', null);
INSERT INTO `jhac_login_log` VALUES ('c4ab6dfc6ebc40c8a7291a4cab8af7fe', 'liyang', '2016-01-19 10:59:21', '2016-01-19 10:59:38');
INSERT INTO `jhac_login_log` VALUES ('c4e80ae4419140b79816dc943eac7094', 'liyang', '2016-01-22 15:55:42', null);
INSERT INTO `jhac_login_log` VALUES ('c58d6755df2341f3bbb718397ad59040', 'huoju', '2016-01-18 11:09:50', null);
INSERT INTO `jhac_login_log` VALUES ('c7bc545b163e48b483a3d42dcfe2131b', 'liyang', '2016-01-22 15:47:28', null);
INSERT INTO `jhac_login_log` VALUES ('ca8d4353031248999fdc266f0f9d1692', 'admin123', '2016-01-14 11:34:38', null);
INSERT INTO `jhac_login_log` VALUES ('cc488cf2640848e4baf1dbf23424d4c9', 'liyang', '2016-01-14 15:00:02', '2016-01-14 15:03:58');
INSERT INTO `jhac_login_log` VALUES ('cdde0423620442b4827cc901e57aee98', 'admin123', '2016-01-14 09:49:10', null);
INSERT INTO `jhac_login_log` VALUES ('ce06cad6946f45fa984b80553bbf8a0b', 'admin123', '2016-01-22 17:19:33', '2016-01-22 17:25:42');
INSERT INTO `jhac_login_log` VALUES ('d18eace1574c4fab8c7537ad661b4da7', 'liyang', '2016-01-18 12:24:57', null);
INSERT INTO `jhac_login_log` VALUES ('d43b8374483a41f6b33720afdab1dbc7', 'liyang', '2016-01-14 14:44:01', null);
INSERT INTO `jhac_login_log` VALUES ('d5938a17b21146abae05e4a34210e308', 'huoju', '2016-01-14 14:17:29', '2016-01-14 14:22:59');
INSERT INTO `jhac_login_log` VALUES ('d5e502840ec24d28b3817394b9ee929b', 'admin123', '2016-01-20 11:18:30', null);
INSERT INTO `jhac_login_log` VALUES ('d7c73bacca90461f951203393b77b00f', 'liyang', '2016-01-20 17:05:01', null);
INSERT INTO `jhac_login_log` VALUES ('d8ea5efffa5c4c30af2b0b44acab1053', 'zhangsan', '2016-01-14 14:49:01', '2016-01-14 14:49:08');
INSERT INTO `jhac_login_log` VALUES ('d971d3307c7d4c29958da8290d428e82', 'admin123', '2016-01-14 10:31:07', null);
INSERT INTO `jhac_login_log` VALUES ('dba3292ab019447cbee90a5725be4dde', 'huoju', '2016-01-18 12:33:36', null);
INSERT INTO `jhac_login_log` VALUES ('ddeba18f868545869aa301ed838ae186', 'wuwei', '2016-01-18 10:59:47', '2016-01-18 11:00:15');
INSERT INTO `jhac_login_log` VALUES ('e042027e3c154181917400708a713a93', 'liyang', '2016-01-20 11:25:53', null);
INSERT INTO `jhac_login_log` VALUES ('e3722f2998684c14bf509a42fad5c039', 'admin123', '2016-01-14 11:56:03', '2016-01-14 14:17:18');
INSERT INTO `jhac_login_log` VALUES ('e4c4fb377a5c40f7a9fe1c449e928fa1', 'admin123', '2016-01-15 11:03:48', null);
INSERT INTO `jhac_login_log` VALUES ('e5472aecb719459cbba5b4681cad6625', 'admin123', '2016-01-13 15:03:18', null);
INSERT INTO `jhac_login_log` VALUES ('e6cfc6fe1c0140c09ac81a39a3472582', 'huoju', '2016-01-22 17:40:09', '2016-01-22 17:42:22');
INSERT INTO `jhac_login_log` VALUES ('ebcc4dbcf560473d95f51b5138d7bba9', 'wuwei', '2016-01-18 16:57:51', null);
INSERT INTO `jhac_login_log` VALUES ('ecb9ba6a261545618e3e38a570a7dbba', 'liyang', '2016-01-14 09:05:07', null);
INSERT INTO `jhac_login_log` VALUES ('edd06eb5b4ee435b9d8a5eafe0ea95f2', 'liyang', '2016-01-21 16:42:01', null);
INSERT INTO `jhac_login_log` VALUES ('ee2a8095847c4b0195ed3436d27f4e1d', 'liyang', '2016-01-18 15:51:14', null);
INSERT INTO `jhac_login_log` VALUES ('f4241bfd73ab4b308fb4c902e18f9a03', 'liyang', '2016-01-22 16:20:16', null);
INSERT INTO `jhac_login_log` VALUES ('f50bcb951d814a619b9a3643cd56f090', 'admin123', '2016-01-13 15:39:34', null);
INSERT INTO `jhac_login_log` VALUES ('f61a72160b084820957edf285ee8439f', 'admin123', '2016-01-14 15:04:03', null);
INSERT INTO `jhac_login_log` VALUES ('f66ad15f3aba4e4d8d4781686ddedef3', 'liyang', '2016-01-22 13:28:12', null);
INSERT INTO `jhac_login_log` VALUES ('f855211681534c3eb157e9f8d6bdf656', 'admin123', '2016-01-13 14:53:37', null);
INSERT INTO `jhac_login_log` VALUES ('f94bd4b576bf4dd4ac0528ad3eb3d15f', 'admin123', '2016-01-15 14:02:39', null);
INSERT INTO `jhac_login_log` VALUES ('fb81dd77622b46eeba52720365544efe', 'liyang', '2016-01-18 15:57:18', '2016-01-18 16:25:36');

-- ----------------------------
-- Table structure for jhac_navi
-- ----------------------------
DROP TABLE IF EXISTS `jhac_navi`;
CREATE TABLE `jhac_navi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='导航信息表';

-- ----------------------------
-- Records of jhac_navi
-- ----------------------------
INSERT INTO `jhac_navi` VALUES ('37', '合作商信息管理(基础数据维护)', 'company.do', '0');
INSERT INTO `jhac_navi` VALUES ('38', '车辆类别信息(基础数据维护)', 'carclass.do', '0');
INSERT INTO `jhac_navi` VALUES ('39', '产品类别管理(基础数据维护)', 'productclass.do', '0');
INSERT INTO `jhac_navi` VALUES ('40', '区域信息管理(基础数据维护)', 'area.do', '0');
INSERT INTO `jhac_navi` VALUES ('41', '订货管理(区域用户)', 'order.do', '0');
INSERT INTO `jhac_navi` VALUES ('42', '产品管理', 'product.do', '0');
INSERT INTO `jhac_navi` VALUES ('43', '售后信息管理', 'backservice.do', '0');
INSERT INTO `jhac_navi` VALUES ('44', '回访信息管理', 'turnvisit.do', '0');
INSERT INTO `jhac_navi` VALUES ('45', '保险信息管理', 'baoxian.do', '0');
INSERT INTO `jhac_navi` VALUES ('46', '用户信息管理', 'user.do', '0');
INSERT INTO `jhac_navi` VALUES ('47', '装车人员信息管理', 'person.do', '0');
INSERT INTO `jhac_navi` VALUES ('48', '系统权限URL访问配置', 'url.do', '0');
INSERT INTO `jhac_navi` VALUES ('49', '装车数据录入', 'OutAdd', '1');
INSERT INTO `jhac_navi` VALUES ('50', '客户信息和车辆信息录入', 'CustomerAdd', '1');
INSERT INTO `jhac_navi` VALUES ('51', '查询数据', 'Search', '1');
INSERT INTO `jhac_navi` VALUES ('52', '装车记录', 'Out', '1');
INSERT INTO `jhac_navi` VALUES ('53', '用户管理', 'User', '1');
INSERT INTO `jhac_navi` VALUES ('54', '基础数据管理', 'Basedata', '1');
INSERT INTO `jhac_navi` VALUES ('55', '关于软件', 'About', '1');
INSERT INTO `jhac_navi` VALUES ('56', '客户信息管理', 'customer.do', '0');

-- ----------------------------
-- Table structure for jhac_order
-- ----------------------------
DROP TABLE IF EXISTS `jhac_order`;
CREATE TABLE `jhac_order` (
  `or_id` varchar(32) NOT NULL COMMENT '订单主键id',
  `or_user_id` varchar(32) DEFAULT NULL COMMENT '订单发起人id',
  `or_add_date` datetime DEFAULT NULL COMMENT '订单创建时间',
  `or_area_code` varchar(10) DEFAULT NULL COMMENT '发起人区域代码',
  `or_status` int(1) DEFAULT '0' COMMENT '订单状态  0--未处理/1--已处理/2--发货/3--不受理/4--已撤销',
  `or_sum` decimal(10,2) DEFAULT NULL COMMENT '订单总额',
  `or_operate_id` varchar(32) DEFAULT NULL,
  `or_operate_date` datetime DEFAULT NULL,
  `or_data_status` int(1) DEFAULT '1' COMMENT '数据是否可用 1-可用/0-不可用',
  PRIMARY KEY (`or_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jhac_order
-- ----------------------------
INSERT INTO `jhac_order` VALUES ('JM1453106098500', '28dd0af3be81406aa60b6686fab9e59a', '2016-01-18 16:35:05', 'JM', '3', '4800.00', '0ab5e465b1bf4d4d8d4ff2ae64589f4c', '2016-01-18 16:35:34', '1');
INSERT INTO `jhac_order` VALUES ('JM1453106156233', '28dd0af3be81406aa60b6686fab9e59a', '2016-01-18 16:36:01', 'JM', '2', '365.00', '0ab5e465b1bf4d4d8d4ff2ae64589f4c', '2016-01-18 16:50:35', '1');
INSERT INTO `jhac_order` VALUES ('JM1453106237211', '28dd0af3be81406aa60b6686fab9e59a', '2016-01-18 16:37:25', 'JM', '2', '1.00', '0ab5e465b1bf4d4d8d4ff2ae64589f4c', '2016-01-18 16:50:41', '1');
INSERT INTO `jhac_order` VALUES ('JM1453106393728', '28dd0af3be81406aa60b6686fab9e59a', '2016-01-18 16:39:58', 'JM', '2', '30.00', '0ab5e465b1bf4d4d8d4ff2ae64589f4c', '2016-01-18 16:51:53', '1');
INSERT INTO `jhac_order` VALUES ('JM1453107553200', '28dd0af3be81406aa60b6686fab9e59a', '2016-01-18 16:59:24', 'JM', '2', '6000.00', '0ab5e465b1bf4d4d8d4ff2ae64589f4c', '2016-01-19 10:54:52', '1');
INSERT INTO `jhac_order` VALUES ('JM1453107600255', '28dd0af3be81406aa60b6686fab9e59a', '2016-01-18 17:00:03', 'JM', '4', '730.00', '28dd0af3be81406aa60b6686fab9e59a', '2016-01-18 17:05:38', '1');
INSERT INTO `jhac_order` VALUES ('JZ1453091382268', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-22 12:30:17', 'JZ', '2', '1400.00', '0ab5e465b1bf4d4d8d4ff2ae64589f4c', '2016-01-18 14:22:32', '1');
INSERT INTO `jhac_order` VALUES ('JZ1453091508713', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-18 12:32:08', 'JZ', '3', '6396.00', '0ab5e465b1bf4d4d8d4ff2ae64589f4c', '2016-01-18 14:24:41', '1');
INSERT INTO `jhac_order` VALUES ('JZ1453172367868', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-19 10:59:35', 'JZ', '1', '1500.00', '0ab5e465b1bf4d4d8d4ff2ae64589f4c', '2016-01-20 11:11:32', '1');
INSERT INTO `jhac_order` VALUES ('JZ1453365906762', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-21 16:45:17', 'JZ', '4', '7000.00', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-21 16:55:40', '1');
INSERT INTO `jhac_order` VALUES ('JZ1453366120600', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-21 16:49:00', 'JZ', '4', '4400.00', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-21 16:55:08', '1');
INSERT INTO `jhac_order` VALUES ('JZ1453366366406', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-21 16:53:06', 'JZ', '4', '1400.00', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-21 16:54:18', '1');
INSERT INTO `jhac_order` VALUES ('JZ1453366389993', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-21 16:53:53', 'JZ', '4', '10500.00', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-21 16:54:14', '1');
INSERT INTO `jhac_order` VALUES ('JZ1453369787895', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-21 17:51:23', 'JZ', '4', '3130.00', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-22 15:23:14', '1');
INSERT INTO `jhac_order` VALUES ('JZ1453447445687', '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '2016-01-22 15:24:31', 'JZ', '0', '395.00', null, null, '1');

-- ----------------------------
-- Table structure for jhac_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `jhac_order_detail`;
CREATE TABLE `jhac_order_detail` (
  `ord_id` varchar(32) NOT NULL,
  `ord_ids` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `ord_name` varchar(255) DEFAULT NULL COMMENT '订单商品名称',
  `ord_xinghao` varchar(50) DEFAULT NULL,
  `ord_price` decimal(10,2) DEFAULT NULL,
  `ord_num` int(11) DEFAULT NULL COMMENT '订单商品数量',
  `ord_data_status` int(1) DEFAULT '1' COMMENT '数据是否可用 1-可用/0-不可用',
  PRIMARY KEY (`ord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jhac_order_detail
-- ----------------------------
INSERT INTO `jhac_order_detail` VALUES ('01c449b2ab9e40779eeeef92707d1558', 'JM1453107553200', '启动F型编码器', 'TBS-001', '3000.00', '2', '1');
INSERT INTO `jhac_order_detail` VALUES ('0622d97b11f64aca9627c03e30508922', 'JZ1453369787895', '1个月SAAS化服务', 'SAAS-M-01', '30.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('074d2bad0d6c45a6ae320ff28b870d3b', 'JZ1453091508713', '启动F型编码器', 'TBS-001', '3000.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('0a9052bd8b8249c292cb73abf2d03a94', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('0f807a7cd849474d84ddb5967637b04c', 'JZ1453366389993', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('10ce92999c4542f0b90124fa01722192', 'JZ1453366389993', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('1280741880ed4251ba2699b9d035e7f9', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('16d43dcfd7094f33ac02e699f0d9fc49', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('1ed5f917d6b5443d88e8261083f22d58', 'JZ1453366389993', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('202be915b77a47578d629c63c1d74ca1', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('221868500a3448cf94a7b4aa8bcb0b6a', 'JZ1453091508713', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('23666ac3fcf94e3dac6b70626c8806a5', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('288299821b0e4029945994b7952e5617', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('2aaab11a28e64b8d88d50dd395e9de8d', 'JM1453106098500', '一键启动F型', 'RL-PVE-31(A)', '1600.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('2cc2db171253421faf0079e138c94f85', 'JZ1453091508713', '一键启动F型', 'RL-PVE-31(A)', '1600.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('2ead14641b2e456099843cf56b17bb81', 'JZ1453369787895', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('32cfce61e5b5417e961408b8570a522d', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('34f96fda1e2f40a7a102fbbe9d3fb174', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('368ea83c6b9645ed8a1c21992e2afaa5', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('3cd41da5ee6e455e8e677b23d8023379', 'JZ1453091508713', '1个月SAAS化服务', 'SAAS-M-01', '30.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('3e43cea0f2ce42ba91c15de7a0420662', 'JZ1453369887671', '一键启动F型', 'RL-PVE-31(A)', '1600.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('5c3d5240e8234c3294a35f70e3816cc7', 'JZ1453366120600', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('5c6b34e68d0c43dc9bcb7a7637b5aba4', 'JZ1453366389993', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('5cc4c6e58771407ab925beb437b213c5', 'JZ1453091382268', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('6888577937d047309e6c369870e0afdb', 'JZ1453366276967', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('69b75a63795e40448dafe3b381eb953e', 'JM1453107436475', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('69fb7179c57c43c19f4fabf5973aa308', 'JZ1453447445687', '1年SAAS化服务', 'SAAS-Y-01', '365.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('72c1bdb0fac04cb7bdb3a1a7d1c93a3b', 'JM1453106237211', '1天SAAS化服务', 'SAAS-D-01', '1.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('74608e67ff214f6689df92c4af4b1d1f', 'JZ1453172367868', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('76095def367b4b7b88dd5cbf0748ea50', 'JZ1453365906762', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '5', '1');
INSERT INTO `jhac_order_detail` VALUES ('7d50059c4ba6492e8aa9b7050d338ef4', 'JM1453106098500', '一键启动F型', 'RL-PVE-31(A)', '1600.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('88778a06bdef42fdb227b4262e5ea78c', 'JZ1453366389993', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('8fb114eac9904d73acf6ca52f0b8b5bf', 'JZ1453366120600', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('91f9e53ad6d148a59689c051a19aae1a', 'JM1453106098500', '一键启动F型', 'RL-PVE-31(A)', '1600.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('93785752027142a9812d2f694a5ddd11', 'JZ1453366120600', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('9f9b1e09b6a64732a36033bf4278fdef', 'JZ1453366389993', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('a1beb0c903b04c979ec19e868825a2b2', 'JZ1453366306358', '一键启动F型', 'RL-PVE-31(A)', '1600.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('a1cc96645d38405195798a7e0dc10126', 'JM1453107436475', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('af085b620561498a956d1c7b1364bed4', 'JM1453106156233', '1年SAAS化服务', 'SAAS-Y-01', '365.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('b03742e4d1be4b709169ff2cfb5af7e7', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('b5843fc5167f4514a0267ddf23bb3433', 'JZ1453366389993', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('bbf82442d7f94e9fab9e6a49bfe60549', 'JM1453107600255', '1年SAAS化服务', 'SAAS-Y-01', '365.00', '2', '1');
INSERT INTO `jhac_order_detail` VALUES ('bdf082266da44a828d0d4b46007a36bf', 'JZ1453091508713', '1年SAAS化服务', 'SAAS-Y-01', '365.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('bfd4c496013e4a838bb584f202aba0cb', 'JZ1453447445687', '1个月SAAS化服务', 'SAAS-M-01', '30.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('cfac6a3b13864d608d23dd0d7956f153', 'JZ1453366336511', '一键启动F型', 'RL-PVE-31(A)', '1600.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('d3cd4ea71f2d4ea088a542ee0bf97e3b', 'JM1453106393728', '1个月SAAS化服务', 'SAAS-M-01', '30.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('dc815d38a01f4c128cf4c5419d1952ae', 'JZ1453365932601', '一键启动F型', 'RL-PVE-31(A)', '1600.00', '5', '1');
INSERT INTO `jhac_order_detail` VALUES ('ea532ec08b9f4389ac4f1fcb6f91636c', 'JZ1453369787895', '一键启动F型', 'RL-PVE-31(A)', '1600.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('ec02e8b57a5349d08fd0b22b0ac4c77c', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('eddd5b138cf84c2ea0dbf4c181d60c90', 'JZ1453366152936', '1个月SAAS化服务', 'SAAS-M-01', '30.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('eef70b3e90cf466a9728e789e8409197', 'JZ1453366366406', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('ef3b90f73cd446f2ad2443ee1484e954', 'JM1453107436475', 'T-car', 'T2015', '1500.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('f4e280d044e64e3e9d7c86a82fa09d4b', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('f76b2ea5c1a34756b3ffb306f0fed580', 'JZ1453098539139', '一键启动C型', 'RL-PVE-200(E)', '1400.00', '1', '1');
INSERT INTO `jhac_order_detail` VALUES ('ff1f031deb6b4f8aa4ada05bda5fe9a7', 'JZ1453091508713', '1天SAAS化服务', 'SAAS-D-01', '1.00', '1', '1');

-- ----------------------------
-- Table structure for jhac_out
-- ----------------------------
DROP TABLE IF EXISTS `jhac_out`;
CREATE TABLE `jhac_out` (
  `out_id` varchar(32) NOT NULL COMMENT '主键',
  `out_serialno` varchar(30) DEFAULT NULL COMMENT '序列号',
  `out_frameno` varchar(20) DEFAULT NULL COMMENT '车架号',
  `out_pc_id` varchar(32) DEFAULT NULL,
  `out_is_check_car` int(1) DEFAULT NULL COMMENT '是否检查车辆',
  `out_is_test_car` int(1) DEFAULT NULL COMMENT '是否测试车辆',
  `out_is_sign` int(1) DEFAULT NULL COMMENT '是否签单',
  `out_frameno_pic` varchar(255) DEFAULT NULL COMMENT '车架号照片',
  `out_serialno_pic` varchar(255) DEFAULT NULL COMMENT '序列号照片',
  `out_sign_pic` varchar(255) DEFAULT NULL COMMENT '签单照片',
  `out_person` varchar(32) DEFAULT NULL COMMENT '装车人',
  `out_address` varchar(32) DEFAULT NULL COMMENT '装车地址',
  `out_beizhu` varchar(255) DEFAULT NULL COMMENT '装车备注',
  `out_auth_telephone` varchar(18) DEFAULT NULL COMMENT '绑定电话',
  `out_area_code` varchar(10) DEFAULT NULL COMMENT '区域代码',
  `out_add_date` datetime DEFAULT NULL COMMENT '录入日期',
  `out_data_status` int(1) DEFAULT '1' COMMENT '数据状态：1-可用、0-删除',
  PRIMARY KEY (`out_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='装车信息表';

-- ----------------------------
-- Records of jhac_out
-- ----------------------------
INSERT INTO `jhac_out` VALUES ('0503185f0e134e6bb98b77f0a25b17e1', 'D0E15954', 'LVGBF53K3EG110344', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '0cc91e4fe67548d3a3febff210ff0a0a', '', '', 'JZ', '2016-01-22 14:28:47', '1');
INSERT INTO `jhac_out` VALUES ('1544a7a7406f4a58a6015a975c07471c', 'D0E18590', 'LVGDC46A7DG000000', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 15:15:09', '1');
INSERT INTO `jhac_out` VALUES ('15f46c33dc5e4502a0ac0afe3bea0c7b', '7121768', 'LVHRE487095034885', 'b20bb93044ed4dc4a34e893a66f38185', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', '4ab4c6735fea44eb971209846a0c16e5', '', '', 'JZ', '2016-01-22 14:29:54', '1');
INSERT INTO `jhac_out` VALUES ('25ecc580b36043f1a716ca1e6653b8e4', 'D0E24799', 'LVGBH42K5BG524596', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 14:31:02', '1');
INSERT INTO `jhac_out` VALUES ('3b61cd0ec2c345c3bc5eeb80f695fc70', 'D0E14733', 'LVGBM51K4FG527885', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 14:31:35', '1');
INSERT INTO `jhac_out` VALUES ('3d4f3e8179274c009494ab4e17f6a775', 'D0E18552', 'LVGDC46A3EG594918', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 15:17:17', '1');
INSERT INTO `jhac_out` VALUES ('3f9cbe8645504b9b827b5e35a464e57f', 'D0E20701', 'LVGBH51K0EG528342', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 16:10:32', '1');
INSERT INTO `jhac_out` VALUES ('4d46cc3b0d954bb8a2e3ff6948c8903d', 'D0E24768', 'LVGDC46A7EG589754', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 14:33:47', '1');
INSERT INTO `jhac_out` VALUES ('4d8d0954c6864b96852d6e1a745d2368', 'D0E24886', 'LVGDC46A2EG530529', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 14:33:09', '1');
INSERT INTO `jhac_out` VALUES ('565455ebedea48429f875e875bc9e248', 'D0E20627', 'LVGDC46A7DG499437', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 15:12:05', '1');
INSERT INTO `jhac_out` VALUES ('5de74c6d5f5b40888f45157a7b32f15c', 'D0E11111', 'LVGBH51K2EG141234', '9b63e549adf042ec92cf23be98d59bc3', '0', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 13:39:45', '1');
INSERT INTO `jhac_out` VALUES ('69090f20cf74402e85e781c0d54e1b4e', 'D0E24771', 'LVGDC46A0EG610377', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 14:33:26', '1');
INSERT INTO `jhac_out` VALUES ('6fb44e94ba7145f2b67c93970f5f3a9e', 'D0E24934', 'LVGBH42K6BG458799', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', 'camry', '123', 'JZ', '2016-01-22 14:34:36', '1');
INSERT INTO `jhac_out` VALUES ('7d7f10e6ef3e4a43b35deaa47a9701fa', 'D0E20685', 'LVGDC46A7EG566409', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 14:44:35', '1');
INSERT INTO `jhac_out` VALUES ('80e91683fe4342dbb0615efacb101a8f', 'D0E24854', 'LVGDC46A9EG602956', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 14:32:40', '1');
INSERT INTO `jhac_out` VALUES ('8d3289fd843440cc834d51436eea5eb8', 'D0E20687', 'LVGBH42K4DG767416', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 15:11:19', '1');
INSERT INTO `jhac_out` VALUES ('d6f2c6bb3947418cbdb1cfb33ffb72f3', 'D0E11112', 'LVGBH51K3EG891287', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 14:10:31', '1');
INSERT INTO `jhac_out` VALUES ('e3e0003aaf0547c98661e015020ee5a3', 'D0E24772', 'LVGDC46A6FG611941', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 14:34:04', '1');
INSERT INTO `jhac_out` VALUES ('ec0211a52af5486a9ab877e52ecfbe67', 'D0E20926', 'LVGBV87EG016124', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 15:18:37', '1');
INSERT INTO `jhac_out` VALUES ('ee42c9718d4643e0bb72695ab8cf5241', 'D0E20936', 'LVGDC46A7DG456880', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 15:15:43', '1');
INSERT INTO `jhac_out` VALUES ('f28ceb00e62c4d2684aac548a0dc208e', 'D0D20605', 'LVGBH51K9EG521373', '9b63e549adf042ec92cf23be98d59bc3', '1', '1', '1', null, null, null, '8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'c55f4e5cba4949ea92111aa07e5e23d4', '', '', 'JZ', '2016-01-22 14:43:45', '1');

-- ----------------------------
-- Table structure for jhac_product_class
-- ----------------------------
DROP TABLE IF EXISTS `jhac_product_class`;
CREATE TABLE `jhac_product_class` (
  `pc_id` varchar(32) NOT NULL,
  `pc_name` varchar(50) DEFAULT NULL,
  `pc_xinghao` varchar(50) DEFAULT NULL,
  `pc_data_status` int(1) DEFAULT '1',
  `pc_add_date` datetime DEFAULT NULL,
  `pc_price` decimal(10,2) DEFAULT NULL,
  `pc_type` int(11) DEFAULT NULL COMMENT '类别 1：装车  2：服务',
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='产品类别表（基础数据表）';

-- ----------------------------
-- Records of jhac_product_class
-- ----------------------------
INSERT INTO `jhac_product_class` VALUES ('18eedf6f796945bd90369f5c189d6102', '启动F型编码器', 'TBS-001', '1', '2016-01-14 15:20:22', '3000.00', '2');
INSERT INTO `jhac_product_class` VALUES ('4c9c5633e2f343009b06363aa3454249', '1天SAAS化服务', 'SAAS-D-01', '1', '2016-01-18 11:16:38', '1.00', '2');
INSERT INTO `jhac_product_class` VALUES ('595020a431a9415c851f256169146da1', '3M胶带', '3M-001', '1', '2016-01-22 17:57:42', '5.00', null);
INSERT INTO `jhac_product_class` VALUES ('80429c2d0db246698d7b32944d820d42', '1年SAAS化服务', 'SAAS-Y-01', '1', '2016-01-18 11:12:46', '365.00', '2');
INSERT INTO `jhac_product_class` VALUES ('83e5ea8f93e749adad8e3fd58643f51d', '1个月SAAS化服务', 'SAAS-M-01', '1', '2016-01-18 11:16:11', '30.00', '2');
INSERT INTO `jhac_product_class` VALUES ('9b63e549adf042ec92cf23be98d59bc3', '一键启动F型', 'RL-PVE-31(A)', '1', '2015-10-12 10:39:55', '1600.00', '1');
INSERT INTO `jhac_product_class` VALUES ('b20bb93044ed4dc4a34e893a66f38185', '一键启动C型', 'RL-PVE-200(E)', '1', '2015-10-12 10:40:21', '1400.00', '1');
INSERT INTO `jhac_product_class` VALUES ('fd8848f835fb4acdafbf0a5fd02ac1c7', 'T-car', 'T2015', '1', '2015-10-31 14:13:19', '1500.00', '1');

-- ----------------------------
-- Table structure for jhac_role
-- ----------------------------
DROP TABLE IF EXISTS `jhac_role`;
CREATE TABLE `jhac_role` (
  `role_id` int(10) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';

-- ----------------------------
-- Records of jhac_role
-- ----------------------------
INSERT INTO `jhac_role` VALUES ('1', '超级管理员');
INSERT INTO `jhac_role` VALUES ('2', '总公司');
INSERT INTO `jhac_role` VALUES ('3', '区域总监');
INSERT INTO `jhac_role` VALUES ('4', '区域员工');

-- ----------------------------
-- Table structure for jhac_saas_operate
-- ----------------------------
DROP TABLE IF EXISTS `jhac_saas_operate`;
CREATE TABLE `jhac_saas_operate` (
  `operate_id` varchar(255) NOT NULL,
  `operate_new_expire_date` datetime DEFAULT NULL,
  `operate_old_expire_date` datetime DEFAULT NULL,
  `operate_new_begin_date` datetime DEFAULT NULL,
  `operate_tenant_id` varchar(32) DEFAULT NULL,
  `operate_order_id` varchar(32) DEFAULT NULL,
  `operate_date` datetime DEFAULT NULL,
  PRIMARY KEY (`operate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jhac_saas_operate
-- ----------------------------
INSERT INTO `jhac_saas_operate` VALUES ('09e652bfd0a549e886514c6296dd5782', '2016-03-14 11:51:00', null, '2016-03-14 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115106', '2016-01-14 11:51:06');
INSERT INTO `jhac_saas_operate` VALUES ('11ec7bd757014e5a99b956e2e580d111', '2016-04-14 11:51:00', null, '2016-04-14 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115111', '2016-01-14 11:51:11');
INSERT INTO `jhac_saas_operate` VALUES ('130ab6e5deb249dda9da86a92d27699c', '2016-06-14 11:51:00', null, '2016-06-14 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115121', '2016-01-14 11:51:21');
INSERT INTO `jhac_saas_operate` VALUES ('152069a3dd52485b85dad500e05dd881', '2018-02-14 11:44:27', null, '2018-02-14 11:44:27', '374e0900a1cc4c369d7a7aa2b5b4f53d', 'SR20160114114633', '2016-01-14 11:46:33');
INSERT INTO `jhac_saas_operate` VALUES ('16046977d2bb4218847765521904e38d', '2016-05-14 11:51:00', null, '2016-05-14 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115116', '2016-01-14 11:51:16');
INSERT INTO `jhac_saas_operate` VALUES ('166f5d084f2e4db49774566189d655d6', '2017-02-14 11:48:48', null, '2017-02-14 11:48:48', 'b60e4bed72f4477b80f101d2b852657d', 'SR20160114114856', '2016-01-14 11:48:56');
INSERT INTO `jhac_saas_operate` VALUES ('2301ea30e00d44f1bc32f8d8a772361d', '2016-07-05 11:51:00', null, '2016-07-05 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115159', '2016-01-14 11:51:59');
INSERT INTO `jhac_saas_operate` VALUES ('2418f404bf7840fe94524f0ba8f740a9', '2019-01-15 14:05:17', null, '2019-01-15 14:05:17', 'c3ffc58344684980a257f6ff281cc743', 'SR20160115140748', '2016-01-15 14:07:48');
INSERT INTO `jhac_saas_operate` VALUES ('27bb2256201144d69280deb4588d53ce', '2016-06-20 11:51:00', null, '2016-06-20 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115135', '2016-01-14 11:51:35');
INSERT INTO `jhac_saas_operate` VALUES ('3666d615fa20429083e9ef26c190d6ee', '2017-01-15 14:05:11', null, '2016-01-15 14:05:11', 'e16511da4b464fd08cd82f4f241c13a4', 'SC20160115140511', '2016-01-15 14:05:11');
INSERT INTO `jhac_saas_operate` VALUES ('42a4783be0834dc6a08db2f6e903a7ed', '2016-07-06 11:51:00', null, '2016-07-06 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115202', '2016-01-14 11:52:02');
INSERT INTO `jhac_saas_operate` VALUES ('59b35e4507194b3dbd4aecd0e7467c3a', '2016-07-03 11:51:00', null, '2016-07-03 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115145', '2016-01-14 11:51:45');
INSERT INTO `jhac_saas_operate` VALUES ('5c22f13b9c7847138a55ab33ad4cd1b3', '2016-07-07 11:51:00', null, '2016-07-07 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115205', '2016-01-14 11:52:05');
INSERT INTO `jhac_saas_operate` VALUES ('5d762a17e73044de8eaea3ae3dc0cb5e', '2016-07-09 11:51:00', null, '2016-07-09 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115213', '2016-01-14 11:52:13');
INSERT INTO `jhac_saas_operate` VALUES ('6e66e852acba498f85f40f6c712874e2', '2018-01-14 11:44:27', null, '2018-01-14 11:44:27', '374e0900a1cc4c369d7a7aa2b5b4f53d', 'SR20160114114550', '2016-01-14 11:45:50');
INSERT INTO `jhac_saas_operate` VALUES ('719b8c5544844b5495e6bf25051cf4a6', '2016-07-08 11:51:00', null, '2016-07-08 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115209', '2016-01-14 11:52:09');
INSERT INTO `jhac_saas_operate` VALUES ('7a76764cc7de42b4b4bd681b4bac8e0c', '2016-07-04 11:51:00', null, '2016-07-04 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115155', '2016-01-14 11:51:55');
INSERT INTO `jhac_saas_operate` VALUES ('87fec66191b74934a9fd2644b1ad2b24', '2018-01-14 11:48:34', null, '2018-01-14 11:48:34', '0603025844b64755992b2ce481cc16fd', 'SR20160114114840', '2016-01-14 11:48:40');
INSERT INTO `jhac_saas_operate` VALUES ('8e2d97aaf929411d805a5f428dd1d397', '2017-01-15 12:35:30', null, '2016-01-15 12:35:30', '65c04d9bed4f47528049a1918e0a0ac7', 'SC20160115123530', '2016-01-15 12:35:30');
INSERT INTO `jhac_saas_operate` VALUES ('901591ae38da4503b157f07955b8cad0', '2017-01-15 14:04:16', null, '2016-01-15 14:04:16', 'a78817dfc7234f57a7664d4a85747cde', 'SC20160115140416', '2016-01-15 14:04:16');
INSERT INTO `jhac_saas_operate` VALUES ('95b0def67f204074a6a935e2e2929ee9', '2016-08-13 11:51:00', null, '2016-08-13 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115226', '2016-01-14 11:52:26');
INSERT INTO `jhac_saas_operate` VALUES ('98082c4638b54bd7ad967d31fd5ae7d8', '2017-01-15 14:05:17', null, '2016-01-15 14:05:17', 'c3ffc58344684980a257f6ff281cc743', 'SC20160115140517', '2016-01-15 14:05:17');
INSERT INTO `jhac_saas_operate` VALUES ('9cb62649fe924185a34f2e161c4c7825', '2018-01-15 14:05:17', null, '2018-01-15 14:05:17', 'c3ffc58344684980a257f6ff281cc743', 'SR20160115140525', '2016-01-15 14:05:25');
INSERT INTO `jhac_saas_operate` VALUES ('9fb5b35691404b56bc37a5960e4f512e', '2016-02-14 11:51:00', null, '2016-01-14 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SC20160114115100', '2016-01-14 11:51:00');
INSERT INTO `jhac_saas_operate` VALUES ('a3f144ee3bf84bfd9dbeea90ede64697', '2019-08-14 11:48:34', null, '2019-08-14 11:48:34', '0603025844b64755992b2ce481cc16fd', 'SR20160118110529', '2016-01-18 11:05:29');
INSERT INTO `jhac_saas_operate` VALUES ('b1f29f9b641e452cb70f8d8aa333efc4', '2016-06-15 11:51:00', null, '2016-06-15 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115126', '2016-01-14 11:51:26');
INSERT INTO `jhac_saas_operate` VALUES ('bc888acf53e04db1bf21e24535be5d45', '2017-01-14 11:48:48', null, '2016-01-14 11:48:48', 'b60e4bed72f4477b80f101d2b852657d', 'SC20160114114848', '2016-01-14 11:48:48');
INSERT INTO `jhac_saas_operate` VALUES ('bf44a75030014f60afd9ae56f6b9bf41', '2016-09-05 11:51:00', null, '2016-09-05 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115230', '2016-01-14 11:52:30');
INSERT INTO `jhac_saas_operate` VALUES ('cc3d17ca784c4b46bf530e83085989a1', '2019-01-14 11:48:34', null, '2019-01-14 11:48:34', '0603025844b64755992b2ce481cc16fd', 'SR20160118110522', '2016-01-18 11:05:22');
INSERT INTO `jhac_saas_operate` VALUES ('d0f8ac86747840f9912055e31d12120b', '2017-01-15 14:05:04', null, '2016-01-15 14:05:04', '2a51b7080d8f4c78a96010bc84512c54', 'SC20160115140504', '2016-01-15 14:05:04');
INSERT INTO `jhac_saas_operate` VALUES ('decc651b648d4cc5950ba5ca15f6a25c', '2017-01-14 11:44:27', null, '2016-01-14 11:44:27', '374e0900a1cc4c369d7a7aa2b5b4f53d', 'SC20160114114427', '2016-01-14 11:44:27');
INSERT INTO `jhac_saas_operate` VALUES ('e1729a99487c42ad857e47e16f106976', '2018-03-14 11:44:27', null, '2018-03-14 11:44:27', '374e0900a1cc4c369d7a7aa2b5b4f53d', 'SR20160114114705', '2016-01-14 11:47:05');
INSERT INTO `jhac_saas_operate` VALUES ('ea600cc7ed1d4402bd7c6259842f0a87', '2017-01-14 11:48:34', null, '2016-01-14 11:48:34', '0603025844b64755992b2ce481cc16fd', 'SC20160114114834', '2016-01-14 11:48:34');
INSERT INTO `jhac_saas_operate` VALUES ('f456a3b731274cb8a7d44b9c71ce5e02', '2018-01-14 11:35:20', null, '2018-01-14 11:35:20', '129fa2356eb04005ab4a2b6bf83a6a9b', 'SR20160114114149', '2016-01-14 11:41:49');
INSERT INTO `jhac_saas_operate` VALUES ('f69628586fb845a1a73d02e21abcb522', '2016-07-21 11:51:00', null, '2016-07-21 11:51:00', 'f067bd86d2634d2990c5fb2848f3e700', 'SR20160114115218', '2016-01-14 11:52:18');

-- ----------------------------
-- Table structure for jhac_saas_order
-- ----------------------------
DROP TABLE IF EXISTS `jhac_saas_order`;
CREATE TABLE `jhac_saas_order` (
  `jhac_order_id` varchar(32) NOT NULL,
  `jhac_order_pay_user_id` varchar(32) DEFAULT NULL,
  `jhac_order_checkout_user_id` varchar(32) DEFAULT NULL,
  `jhac_order_money` float(10,2) DEFAULT NULL,
  `jhac_order_time_type` varchar(2) DEFAULT NULL,
  `jhac_order_time_num` int(10) DEFAULT NULL,
  `jhac_order_date` datetime DEFAULT NULL,
  PRIMARY KEY (`jhac_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jhac_saas_order
-- ----------------------------
INSERT INTO `jhac_saas_order` VALUES ('SC20160114114427', null, null, '547.50', 'y', '1', '2016-01-14 11:44:27');
INSERT INTO `jhac_saas_order` VALUES ('SC20160114114834', null, null, '547.50', 'y', '1', '2016-01-14 11:48:34');
INSERT INTO `jhac_saas_order` VALUES ('SC20160114114848', null, null, '547.50', 'y', '1', '2016-01-14 11:48:48');
INSERT INTO `jhac_saas_order` VALUES ('SC20160114115100', null, null, '45.00', 'm', '1', '2016-01-14 11:51:00');
INSERT INTO `jhac_saas_order` VALUES ('SC20160115123530', null, null, '547.50', 'y', '1', '2016-01-15 12:35:30');
INSERT INTO `jhac_saas_order` VALUES ('SC20160115140416', null, null, '547.50', 'y', '1', '2016-01-15 14:04:16');
INSERT INTO `jhac_saas_order` VALUES ('SC20160115140504', null, null, '547.50', 'y', '1', '2016-01-15 14:05:04');
INSERT INTO `jhac_saas_order` VALUES ('SC20160115140511', null, null, '547.50', 'y', '1', '2016-01-15 14:05:11');
INSERT INTO `jhac_saas_order` VALUES ('SC20160115140517', null, null, '547.50', 'y', '1', '2016-01-15 14:05:17');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114114550', null, null, '547.50', 'y', '1', '2016-01-14 11:45:50');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114114633', null, null, '45.00', 'm', '1', '2016-01-14 11:46:33');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114114705', null, null, '45.00', 'm', '1', '2016-01-14 11:47:05');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114114840', null, null, '547.50', 'y', '1', '2016-01-14 11:48:40');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114114856', null, null, '45.00', 'm', '1', '2016-01-14 11:48:56');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115106', null, null, '45.00', 'm', '1', '2016-01-14 11:51:06');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115111', null, null, '45.00', 'm', '1', '2016-01-14 11:51:11');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115116', null, null, '45.00', 'm', '1', '2016-01-14 11:51:16');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115121', null, null, '45.00', 'm', '1', '2016-01-14 11:51:21');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115126', null, null, '1.50', 'd', '1', '2016-01-14 11:51:26');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115135', null, null, '7.50', 'd', '5', '2016-01-14 11:51:35');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115145', null, null, '19.50', 'd', '13', '2016-01-14 11:51:45');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115155', null, null, '1.50', 'd', '1', '2016-01-14 11:51:55');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115159', null, null, '1.50', 'd', '1', '2016-01-14 11:51:59');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115202', null, null, '1.50', 'd', '1', '2016-01-14 11:52:02');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115205', null, null, '1.50', 'd', '1', '2016-01-14 11:52:05');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115209', null, null, '1.50', 'd', '1', '2016-01-14 11:52:09');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115213', null, null, '1.50', 'd', '1', '2016-01-14 11:52:13');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115218', null, null, '18.00', 'd', '12', '2016-01-14 11:52:18');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115226', null, null, '34.50', 'd', '23', '2016-01-14 11:52:26');
INSERT INTO `jhac_saas_order` VALUES ('SR20160114115230', null, null, '34.50', 'd', '23', '2016-01-14 11:52:30');
INSERT INTO `jhac_saas_order` VALUES ('SR20160115140525', null, null, '547.50', 'y', '1', '2016-01-15 14:05:25');
INSERT INTO `jhac_saas_order` VALUES ('SR20160115140748', null, null, '547.50', 'y', '1', '2016-01-15 14:07:48');
INSERT INTO `jhac_saas_order` VALUES ('SR20160118110522', null, null, '547.50', 'y', '1', '2016-01-18 11:05:22');
INSERT INTO `jhac_saas_order` VALUES ('SR20160118110529', null, null, '315.00', 'm', '7', '2016-01-18 11:05:29');

-- ----------------------------
-- Table structure for jhac_tenant
-- ----------------------------
DROP TABLE IF EXISTS `jhac_tenant`;
CREATE TABLE `jhac_tenant` (
  `tenant_id` varchar(32) NOT NULL,
  `tenant_operate_user` varchar(32) DEFAULT NULL,
  `tenant_area_code` varchar(20) DEFAULT NULL,
  `tenant_begin_date` datetime DEFAULT NULL,
  `tenant_expire_date` datetime DEFAULT NULL,
  `tenant_status` int(2) DEFAULT NULL COMMENT '租户状态: 0  待开通   1 已开通  2 过期暂停',
  `tenant_operate_date` datetime DEFAULT NULL,
  PRIMARY KEY (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jhac_tenant
-- ----------------------------
INSERT INTO `jhac_tenant` VALUES ('0603025844b64755992b2ce481cc16fd', '1', 'JM', '2016-01-14 11:48:34', '2019-08-14 11:48:34', '1', '2016-01-14 11:48:34');
INSERT INTO `jhac_tenant` VALUES ('2a51b7080d8f4c78a96010bc84512c54', '1', 'XY', '2016-01-15 14:05:04', '2017-01-15 14:05:04', '1', '2016-01-15 14:05:04');
INSERT INTO `jhac_tenant` VALUES ('374e0900a1cc4c369d7a7aa2b5b4f53d', '1', 'WH', '2016-01-14 11:44:27', '2018-03-14 11:44:27', '1', '2016-01-14 11:44:27');
INSERT INTO `jhac_tenant` VALUES ('65c04d9bed4f47528049a1918e0a0ac7', '1', 'YC', '2016-01-15 12:35:30', '2017-01-15 12:35:30', '1', '2016-01-15 12:35:30');
INSERT INTO `jhac_tenant` VALUES ('a78817dfc7234f57a7664d4a85747cde', '1', 'HF', '2016-01-15 14:04:16', '2017-01-15 14:04:16', '1', '2016-01-15 14:04:16');
INSERT INTO `jhac_tenant` VALUES ('b60e4bed72f4477b80f101d2b852657d', '1', 'JZ', '2016-01-14 11:48:48', '2017-02-14 11:48:48', '1', '2016-01-14 11:48:48');
INSERT INTO `jhac_tenant` VALUES ('c3ffc58344684980a257f6ff281cc743', '1', 'XJ', '2016-01-15 14:05:17', '2019-01-15 14:05:17', '1', '2016-01-15 14:05:17');
INSERT INTO `jhac_tenant` VALUES ('e16511da4b464fd08cd82f4f241c13a4', '1', 'CS', '2016-01-15 14:05:11', '2017-01-15 14:05:11', '1', '2016-01-15 14:05:11');
INSERT INTO `jhac_tenant` VALUES ('f067bd86d2634d2990c5fb2848f3e700', '1', 'XN', '2016-01-14 11:51:00', '2016-09-05 11:51:00', '1', '2016-01-14 11:51:00');

-- ----------------------------
-- Table structure for jhac_turnvisit
-- ----------------------------
DROP TABLE IF EXISTS `jhac_turnvisit`;
CREATE TABLE `jhac_turnvisit` (
  `tur_id` varchar(32) NOT NULL COMMENT '主键',
  `tur_type` int(1) DEFAULT '2' COMMENT '回访类型 新车回访--1  售后回访--2',
  `tur_out_id` varchar(32) DEFAULT NULL COMMENT '业务ID',
  `tur_is_visit` int(1) DEFAULT '0' COMMENT '是否回访  已回访--1  未回访--0',
  `tur_add_date` datetime DEFAULT NULL,
  `tur_area_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tur_id`),
  KEY `jhac_turnvisit_business` (`tur_out_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='客户回访记录表';

-- ----------------------------
-- Records of jhac_turnvisit
-- ----------------------------
INSERT INTO `jhac_turnvisit` VALUES ('1512bae0045141088d62219c9adab6b0', '1', 'ee42c9718d4643e0bb72695ab8cf5241', '0', '2016-01-22 15:15:43', 'JZ');
INSERT INTO `jhac_turnvisit` VALUES ('6856707550534b19b9d8b292f03faf89', '1', '1544a7a7406f4a58a6015a975c07471c', '0', '2016-01-22 15:15:09', 'JZ');
INSERT INTO `jhac_turnvisit` VALUES ('6c1078330a7447c2b5905f2bc46d3e26', '1', '565455ebedea48429f875e875bc9e248', '0', '2016-01-22 15:12:05', 'JZ');
INSERT INTO `jhac_turnvisit` VALUES ('6d3d00185ad843b9a0bfa960837907a1', '1', '3d4f3e8179274c009494ab4e17f6a775', '0', '2016-01-22 15:17:17', 'JZ');
INSERT INTO `jhac_turnvisit` VALUES ('a834bea5b4324082abe16009d03e966a', '1', 'ec0211a52af5486a9ab877e52ecfbe67', '0', '2016-01-22 15:18:37', 'JZ');
INSERT INTO `jhac_turnvisit` VALUES ('efb2571069354700b9809587062860e1', '1', '3f9cbe8645504b9b827b5e35a464e57f', '0', '2016-01-22 16:10:32', 'JZ');

-- ----------------------------
-- Table structure for jhac_url
-- ----------------------------
DROP TABLE IF EXISTS `jhac_url`;
CREATE TABLE `jhac_url` (
  `url_id` varchar(32) NOT NULL,
  `url_name` varchar(50) DEFAULT NULL,
  `url_link` varchar(300) DEFAULT NULL,
  `url_parent` varchar(32) DEFAULT NULL,
  `url_date` datetime DEFAULT NULL,
  `url_plateform` int(1) DEFAULT NULL COMMENT '归属平台：1 web端；2 手机端',
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jhac_url
-- ----------------------------
INSERT INTO `jhac_url` VALUES ('0467d06e5ffe4e2c9369200b61257fd5', '订货管理[租户]', 'order.html', '5', '2015-12-31 10:02:32', '1');
INSERT INTO `jhac_url` VALUES ('1', '基础数据管理', '', '0', '2015-12-29 10:33:45', '1');
INSERT INTO `jhac_url` VALUES ('112e5ef477534b24aa57dccb26067d48', '区域信息管理', 'area.html', '1', '2015-12-31 09:51:47', '1');
INSERT INTO `jhac_url` VALUES ('12d36d4386a9445ba1ed8340a359127b', '用户管理', 'user.html', '1', '2015-12-31 09:46:40', '1');
INSERT INTO `jhac_url` VALUES ('14e70d5b259d45988d5b3203c78a4ae8', '月装车报表', 'outReport.html', '7', '2016-01-11 10:58:18', null);
INSERT INTO `jhac_url` VALUES ('2', '保险管理', '', '0', '2015-12-29 10:37:26', '1');
INSERT INTO `jhac_url` VALUES ('23e790f33abe48519e7e5cc2a8057f5d', '车辆类别管理', 'carclass.html', '1', '2015-12-31 09:51:26', '1');
INSERT INTO `jhac_url` VALUES ('3', '装车业务', '', '0', '2015-12-29 10:34:02', '1');
INSERT INTO `jhac_url` VALUES ('4', '系统信息管理', '', '0', '2015-12-29 10:38:16', '1');
INSERT INTO `jhac_url` VALUES ('4372156c5e374d3981815495164b08a2', 'SAAS化服务[租户]', 'saas_tenant.html', '6', '2016-01-14 14:59:23', null);
INSERT INTO `jhac_url` VALUES ('47afcf94e0e64c848d584b6d077934bb', '回访管理', 'turnvisit.html', '3', '2015-12-31 09:59:49', '1');
INSERT INTO `jhac_url` VALUES ('497f9c9023c540df84a59148645119e1', '用户角色管理', 'role.html', '4', '2015-12-31 09:55:31', '1');
INSERT INTO `jhac_url` VALUES ('5', '订货管理', '', '0', '2015-12-31 10:01:30', '1');
INSERT INTO `jhac_url` VALUES ('5c60f77183d14d11889bc9dda769531f', '客户信息管理', 'customer.html', '3', '2015-12-31 09:59:03', '1');
INSERT INTO `jhac_url` VALUES ('5eb6af1371d64600b4868489109e8d26', '订货管理[总公司]', 'order_manage.html', '5', '2016-01-14 15:36:33', null);
INSERT INTO `jhac_url` VALUES ('6', 'SAAS化服务管理', '', '0', '2016-01-06 18:07:58', null);
INSERT INTO `jhac_url` VALUES ('60142695e9be4ef5bca14d6603482f23', '货物类别', 'productclass.html', '5', '2016-01-14 15:04:33', null);
INSERT INTO `jhac_url` VALUES ('6337c80b1c4a4de3903a77ca81800280', '装车记录管理', 'out.html', '3', '2015-12-31 10:00:03', '1');
INSERT INTO `jhac_url` VALUES ('6e8f2ef4ef0044e88b91ca7d3ad39f07', '亚美数据库生效保单查询', 'yameiSearch.html', '2', '2016-01-08 11:35:03', null);
INSERT INTO `jhac_url` VALUES ('7', '报表生成', '', '0', '2016-01-11 10:48:09', null);
INSERT INTO `jhac_url` VALUES ('708bf7ef192b49d7a3f16a246a2f8f22', '合作商信息管理', 'company.html', '1', '2015-12-31 09:50:41', '1');
INSERT INTO `jhac_url` VALUES ('72175c520d134281b72979927b920b21', 'SAAS化服务[总公司]', 'saas.html', '6', '2016-01-07 10:10:42', null);
INSERT INTO `jhac_url` VALUES ('86888717f3cb427a81746078fa4fb53a', '装车车辆信息管理', 'carinfo.html', '3', '2015-12-31 09:59:23', '1');
INSERT INTO `jhac_url` VALUES ('869dee4373624148af8bdb263123f060', '保险信息管理', 'baoxian.html', '2', '2015-12-31 09:57:01', '1');
INSERT INTO `jhac_url` VALUES ('926a8bd9d9214aca839cf1fadbf908c8', '移动端配置数据管理', 'appconfig.html', '1', '2015-12-31 09:52:28', '1');
INSERT INTO `jhac_url` VALUES ('a5880b743d1f4247a42749d4fa9c5931', '售后管理', 'backservice.html', '3', '2015-12-31 09:59:37', '1');
INSERT INTO `jhac_url` VALUES ('bef04c2664a340ba80296c809396d45d', '产品类别管理', 'product.html', '1', '2015-12-31 09:51:09', '1');
INSERT INTO `jhac_url` VALUES ('c1ed547524d4408ebde776ecb4e1eda2', '角色菜单管理', 'roleurl.html', '4', '2015-12-31 09:55:57', '1');
INSERT INTO `jhac_url` VALUES ('f1083c36bc4a4954b5b7aba93d1a5164', '系统菜单管理', 'menu.html', '4', '2015-12-31 09:53:55', '1');

-- ----------------------------
-- Table structure for jhac_user
-- ----------------------------
DROP TABLE IF EXISTS `jhac_user`;
CREATE TABLE `jhac_user` (
  `user_id` varchar(32) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(32) DEFAULT NULL,
  `user_telephone` varchar(50) DEFAULT NULL,
  `user_truename` varchar(50) DEFAULT NULL,
  `user_role_id` varchar(32) DEFAULT '4',
  `user_area_code` varchar(10) DEFAULT NULL,
  `user_status` int(1) DEFAULT '0' COMMENT '用户状态：0 未通过审核；1 通过审核，无服务；2 通过审核并开通了服务;3服务到期暂停;4.冻结',
  `user_add_date` datetime DEFAULT NULL,
  `user_data_status` int(1) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of jhac_user
-- ----------------------------
INSERT INTO `jhac_user` VALUES ('0ab5e465b1bf4d4d8d4ff2ae64589f4c', 'huoju', '21232F297A57A5A743894A0E4A801FC3', '18976556544', '霍炬', '2', 'ALL', '2', '2016-01-12 17:42:47', '1');
INSERT INTO `jhac_user` VALUES ('1', 'admin123', '21232f297a57a5a743894a0e4a801fc3', '15555555555', '超级管理员', '1', 'ALL', '2', '2015-07-08 00:00:00', '1');
INSERT INTO `jhac_user` VALUES ('28dd0af3be81406aa60b6686fab9e59a', 'wuwei', '21232F297A57A5A743894A0E4A801FC3', '15434567865', '吴伟', '3', 'JM', '2', '2016-01-12 17:40:55', '1');
INSERT INTO `jhac_user` VALUES ('4c48d09ef188422dbce2290a468c708c', 'liyanghefei', '21232F297A57A5A743894A0E4A801FC3', '18942984088', '李扬', '3', 'HF', '2', '2016-01-12 17:44:14', '1');
INSERT INTO `jhac_user` VALUES ('53000e5595e9457395bfcc2507b1d5c7', 'jingmenxiaoli', '21232F297A57A5A743894A0E4A801FC3', '19877778888', '荆门小李', '4', 'JM', '2', '2016-01-12 17:44:54', '1');
INSERT INTO `jhac_user` VALUES ('8b8a4f3b38c64bb8bfe5a9fe5c4df1ab', 'liyang', '21232F297A57A5A743894A0E4A801FC3', '18942984088', '李扬', '3', 'JZ', '2', '2016-01-12 17:41:37', '1');
INSERT INTO `jhac_user` VALUES ('8c8e39e1b01249f6bff1334a9dd3dbeb', 'zonggongsi', '21232F297A57A5A743894A0E4A801FC3', '027-51243186', '总公司', '2', 'ALL', '2', '2016-01-22 17:47:20', '1');
INSERT INTO `jhac_user` VALUES ('931948d9c1fc46868bde2ff575798a36', 'zhangchuancun', '21232F297A57A5A743894A0E4A801FC3', '176678777667', '张传存', '4', 'JZ', '2', '2016-01-13 10:19:59', '1');
INSERT INTO `jhac_user` VALUES ('a729cc504c98484b815a5dca7cd2238a', 'zhangsan', '21232F297A57A5A743894A0E4A801FC3', '177778888787', '张三', '3', 'YC', '2', '2016-01-14 14:25:58', '1');
INSERT INTO `jhac_user` VALUES ('bb56077570b14a44b968cd9b6b6496c2', 'longwu', '21232F297A57A5A743894A0E4A801FC3', '18735467654', '龙五', '4', 'JZ', '2', '2016-01-22 16:44:56', '1');

-- ----------------------------
-- Table structure for role_url
-- ----------------------------
DROP TABLE IF EXISTS `role_url`;
CREATE TABLE `role_url` (
  `ru_id` varchar(32) NOT NULL,
  `ru_role_id` varchar(32) DEFAULT NULL,
  `ru_url_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ru_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_url
-- ----------------------------
INSERT INTO `role_url` VALUES ('0a3ce175623d45d8a21ca837096740cc', '2', '112e5ef477534b24aa57dccb26067d48');
INSERT INTO `role_url` VALUES ('0d3e5d36321c4cb7b8b9b4172824d252', '3', '4372156c5e374d3981815495164b08a2');
INSERT INTO `role_url` VALUES ('16db4d82f5f34306bef1cbbc497ba73d', '2', '3');
INSERT INTO `role_url` VALUES ('18afdcb452ce4e7fbd084bb804a12fb4', '2', 'bef04c2664a340ba80296c809396d45d');
INSERT INTO `role_url` VALUES ('1d8bbe6138714ed7a74136d549afd88a', '1', '47afcf94e0e64c848d584b6d077934bb');
INSERT INTO `role_url` VALUES ('20ca6d2119cf4435896b53370595711a', '3', '6e8f2ef4ef0044e88b91ca7d3ad39f07');
INSERT INTO `role_url` VALUES ('22a2b408111a4d378ed4c9f9e6de072d', '2', '12d36d4386a9445ba1ed8340a359127b');
INSERT INTO `role_url` VALUES ('322c322b9bcb42749ff0031b0534e968', '2', '2');
INSERT INTO `role_url` VALUES ('33067c0043244b52a04de7859906dec0', '3', '86888717f3cb427a81746078fa4fb53a');
INSERT INTO `role_url` VALUES ('361a0eeb3a3d4a4fb5971a8b0e9e6857', '3', '23e790f33abe48519e7e5cc2a8057f5d');
INSERT INTO `role_url` VALUES ('3887ce6c9ffd422badde3a005e41e97c', '1', 'a5880b743d1f4247a42749d4fa9c5931');
INSERT INTO `role_url` VALUES ('3b404c3e2aeb431894e92ba173635998', '3', '869dee4373624148af8bdb263123f060');
INSERT INTO `role_url` VALUES ('3d2d307311d34b6eb352a1b324d0b7fe', '3', '6');
INSERT INTO `role_url` VALUES ('3e59c9727f614f1e8a0bbda2ffc65854', '2', '6');
INSERT INTO `role_url` VALUES ('4094dc34f9c44d33b45dab6f6314f580', '2', '23e790f33abe48519e7e5cc2a8057f5d');
INSERT INTO `role_url` VALUES ('4836a26840584d028da65f2dab7ea5af', '1', '86888717f3cb427a81746078fa4fb53a');
INSERT INTO `role_url` VALUES ('4982203a1a8c464e9a348a674a7a482d', '1', '5eb6af1371d64600b4868489109e8d26');
INSERT INTO `role_url` VALUES ('4cb4b4bec96a4c91b9db13a615b7908a', '2', '5c60f77183d14d11889bc9dda769531f');
INSERT INTO `role_url` VALUES ('4e2c1ab34778468e96e5ce4c93a68416', '1', '708bf7ef192b49d7a3f16a246a2f8f22');
INSERT INTO `role_url` VALUES ('4f636037236c479f84509cfc13cba1f8', '1', '6e8f2ef4ef0044e88b91ca7d3ad39f07');
INSERT INTO `role_url` VALUES ('4fe994bbf25b4408b140b7f4f6c52dde', '2', '6337c80b1c4a4de3903a77ca81800280');
INSERT INTO `role_url` VALUES ('556d3aef46a6435d9dfd23b710dcc893', '2', '869dee4373624148af8bdb263123f060');
INSERT INTO `role_url` VALUES ('565fd7129b6841fb8588e509d096f4d1', '1', '72175c520d134281b72979927b920b21');
INSERT INTO `role_url` VALUES ('56b9f0d12fb042dd9e721f1b59a5c056', '4', '3');
INSERT INTO `role_url` VALUES ('5b53a511b0924a9eb98a19d9cc5d2a73', '1', '1');
INSERT INTO `role_url` VALUES ('5df8dc0a38674497a8299979e378ae99', '1', '18697dc95ac44d95b8eacae25c6c32cf');
INSERT INTO `role_url` VALUES ('5f11b9b4f14c4adea414f20d14e8924d', '4', '869dee4373624148af8bdb263123f060');
INSERT INTO `role_url` VALUES ('60912ac267f94f46ac01d8fd44c3352d', '2', '1');
INSERT INTO `role_url` VALUES ('60915d412ea1455db1820c4040eb4124', '1', 'c1ed547524d4408ebde776ecb4e1eda2');
INSERT INTO `role_url` VALUES ('6787a90633464fdba4ab0290182aba65', '4', '72175c520d134281b72979927b920b21');
INSERT INTO `role_url` VALUES ('6c10e9623c0a42ec88d4f78ebc7d8cbc', '1', 'bef04c2664a340ba80296c809396d45d');
INSERT INTO `role_url` VALUES ('6e3f95b28de64ce1831045ddea49641a', '1', '2');
INSERT INTO `role_url` VALUES ('6f5c2718a70442c89e4bcf209f010d1d', '2', '708bf7ef192b49d7a3f16a246a2f8f22');
INSERT INTO `role_url` VALUES ('72458bc7250a454ba8c0872d6eeaa09a', '1', '0467d06e5ffe4e2c9369200b61257fd5');
INSERT INTO `role_url` VALUES ('735b2efc02e743a3a8d79130103591d6', '1', '14e70d5b259d45988d5b3203c78a4ae8');
INSERT INTO `role_url` VALUES ('73a732152571480b8a64e720b046989b', '2', '72175c520d134281b72979927b920b21');
INSERT INTO `role_url` VALUES ('7b84c41cf3614ae9bc2cdfdd4f0d435f', '3', '1');
INSERT INTO `role_url` VALUES ('80a839d8744d46b9be2719c85f3dcbe7', '1', '4');
INSERT INTO `role_url` VALUES ('80c386da1b924a018d86077b85a2bb73', '1', '869dee4373624148af8bdb263123f060');
INSERT INTO `role_url` VALUES ('837f32a7a69e4b788e7a9915054f5361', '3', '2');
INSERT INTO `role_url` VALUES ('8867bbb1b5964cd881a9a2df4e26a527', '3', 'a5880b743d1f4247a42749d4fa9c5931');
INSERT INTO `role_url` VALUES ('8f716ee88e7a40e990572f59d354196c', '1', '7');
INSERT INTO `role_url` VALUES ('913ede64cf214675a3ec4987d57f6409', '3', '5c60f77183d14d11889bc9dda769531f');
INSERT INTO `role_url` VALUES ('9ad7bfecf5af4f6992866d84116acc7e', '1', '6');
INSERT INTO `role_url` VALUES ('9ae4b82435d94c7e86ed7787e3006e6e', '3', '708bf7ef192b49d7a3f16a246a2f8f22');
INSERT INTO `role_url` VALUES ('9f118469e97448978dbb32ed021b96a4', '3', '0467d06e5ffe4e2c9369200b61257fd5');
INSERT INTO `role_url` VALUES ('9f64359ebd3d4e3a9b7ebc9c4afd502e', '3', '3');
INSERT INTO `role_url` VALUES ('a11816c968964c81ba570b383e5ae686', '2', '7');
INSERT INTO `role_url` VALUES ('a27adbf38baf4bae86394504396c74ab', '2', '86888717f3cb427a81746078fa4fb53a');
INSERT INTO `role_url` VALUES ('a2cbd35069b6405baf22123ab4c76d84', '1', '112e5ef477534b24aa57dccb26067d48');
INSERT INTO `role_url` VALUES ('b232cd6409fe4ce0bb72439e73e24722', '3', '12d36d4386a9445ba1ed8340a359127b');
INSERT INTO `role_url` VALUES ('b34a595b44da4aec9958c3869bc89add', '2', '14e70d5b259d45988d5b3203c78a4ae8');
INSERT INTO `role_url` VALUES ('c1231967775b49c6bad9937a99f6e67c', '3', '5');
INSERT INTO `role_url` VALUES ('c85b5a3dcb1046998a2125770ea13ae8', '2', 'a5880b743d1f4247a42749d4fa9c5931');
INSERT INTO `role_url` VALUES ('c8d0d0a1fd69485e8b3be8fa6d8cadbf', '4', '5c60f77183d14d11889bc9dda769531f');
INSERT INTO `role_url` VALUES ('cf4c2e0fbf174844b7912f0c4c8b6dc4', '1', '5c60f77183d14d11889bc9dda769531f');
INSERT INTO `role_url` VALUES ('cfbbeeb95b7343d9a1f9a0aa46c22489', '1', '12d36d4386a9445ba1ed8340a359127b');
INSERT INTO `role_url` VALUES ('d093d640de044cb1bfc93b24335a91d8', '3', '6337c80b1c4a4de3903a77ca81800280');
INSERT INTO `role_url` VALUES ('d4c298a2a8fb4c3d998f1d3c67e6fdbe', '1', 'f1083c36bc4a4954b5b7aba93d1a5164');
INSERT INTO `role_url` VALUES ('d5d8496dc45d4c85b026eb93877d11ad', '1', '6337c80b1c4a4de3903a77ca81800280');
INSERT INTO `role_url` VALUES ('d972db532b5d462aa3aca2171d338a0f', '2', '5');
INSERT INTO `role_url` VALUES ('de06418fa91b4d54bd1fe6142e8934e3', '2', '6e8f2ef4ef0044e88b91ca7d3ad39f07');
INSERT INTO `role_url` VALUES ('e0de4d841ff94ef2a8bed8ede02089db', '3', '7');
INSERT INTO `role_url` VALUES ('e396459e08d147c291d9dd8e75c5b65c', '1', '5');
INSERT INTO `role_url` VALUES ('e5418dc32bf342f2a8f574074db60305', '2', '5eb6af1371d64600b4868489109e8d26');
INSERT INTO `role_url` VALUES ('e57708dc8b0041e1b165b4ca01cd56ea', '3', '47afcf94e0e64c848d584b6d077934bb');
INSERT INTO `role_url` VALUES ('e7c816f5175b41a298cd4e00fdcf4dad', '1', '3');
INSERT INTO `role_url` VALUES ('e862ee4185e84d5d915d44dc61ab058e', '1', '497f9c9023c540df84a59148645119e1');
INSERT INTO `role_url` VALUES ('e8b34663e83145bdbefefda8e44cc485', '3', '14e70d5b259d45988d5b3203c78a4ae8');
INSERT INTO `role_url` VALUES ('efc8c4f7072a4dd4b6596c8811e3fbfb', '2', '47afcf94e0e64c848d584b6d077934bb');
INSERT INTO `role_url` VALUES ('f38d37444cb54a9abcb3f789ddac2943', '4', '2');
INSERT INTO `role_url` VALUES ('fa32b251739c40d7a9c843b63e5fb6da', '1', '926a8bd9d9214aca839cf1fadbf908c8');
INSERT INTO `role_url` VALUES ('fcfb8a5ef80549a9910aea3c021effc1', '1', '23e790f33abe48519e7e5cc2a8057f5d');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `ur_id` varchar(32) NOT NULL,
  `ur_user_id` varchar(32) DEFAULT NULL,
  `ur_role_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
