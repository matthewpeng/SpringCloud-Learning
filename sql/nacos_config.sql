/*
Navicat MySQL Data Transfer

Source Server         : 43.154.70.143
Source Server Version : 50736
Source Host           : 43.154.70.143:3306
Source Database       : nacos_config

Target Server Type    : MYSQL
Target Server Version : 50736
File Encoding         : 65001

Date: 2021-12-13 20:39:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `c_use` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `effect` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `c_schema` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfo_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info';

-- ----------------------------
-- Records of config_info
-- ----------------------------
INSERT INTO `config_info` VALUES ('1', 'nacos-config-client-dev.yaml', 'DEV_GROUP', 0x636F6E6669673A200A20202020696E666F3A2066386537636437642D316265342D343734312D616330372D643132316166333562393235202C206E61636F732D636F6E6669672D636C69656E742D6465762E79616D6C202C204445565F47524F5550202C2076657273696F6E203D3120, '76108948bfda04b275e0616a862a129c', '2020-04-18 00:38:33', '2020-04-18 00:38:33', null, '0:0:0:0:0:0:0:1', '', 'f8e7cd7d-1be4-4741-ac07-d121af35b925', null, null, null, 'yaml', null);
INSERT INTO `config_info` VALUES ('13', 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', 0x636F6E6669673A200A20202020696E666F3A2066726F6D20636F6E6669672063656E746572202C206E61636F732D636F6E6669672D636C69656E742D6465762E79616D6C202C2076657273696F6E203D20323B0A6E61636F733A0A2020636F6E6669673A0A202020207365727665725F616464723A2034332E3135342E37302E3134333A383834380A20202020646174615F69643A207A75756C2D726566726573682D6465762E6A736F6E0A2020202067726F75703A2044454641554C545F47524F55500A202020206E616D6573706163653A2066666135323731382D656138392D343531302D613361392D633030383561653562613637, '36b3ef981e3e571760b30d3c791c4152', '2020-04-19 20:48:49', '2021-12-13 06:10:19', 0x6E61636F73, '49.157.30.149', '', '', 'null', 'null', 'null', 'yaml', 0x6E756C6C);
INSERT INTO `config_info` VALUES ('19', 'zuul-refresh-dev.json', 'DEFAULT_GROUP', 0x7B0A20202020227265667265736847617465776179526F757465223A747275652C0A2020202022726F7574654C697374223A5B0A20202020202020207B0A202020202020202020202020226964223A226769746875625F726F757465222C0A2020202020202020202020202270726564696361746573223A5B0A202020202020202020202020202020207B0A2020202020202020202020202020202020202020226E616D65223A2250617468222C0A20202020202020202020202020202020202020202261726773223A7B0A202020202020202020202020202020202020202020202020225F67656E6B65795F30223A222F61220A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020205D2C0A2020202020202020202020202266696C74657273223A5B0A0A2020202020202020202020205D2C0A20202020202020202020202022757269223A2268747470733A2F2F6769746875622E636F6D222C0A202020202020202020202020226F72646572223A300A20202020202020207D0A202020205D0A7D, '33c9d01db8bbd63b2c45f9cfedefcd34', '2020-04-19 22:22:04', '2021-12-13 06:38:00', 0x6E61636F73, '49.157.30.149', '', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67', 'null', 'null', 'null', 'json', 0x6E756C6C);
INSERT INTO `config_info` VALUES ('20', 'cloudalibaba-sentinel-service', 'DEFAULT_GROUP', 0x205B0A20202020202020207B0A20202020202020202020227265736F75726365223A20222F726174654C696D69742F627955726C222C0A20202020202020202020226C696D6974417070223A202264656661756C74222C0A20202020202020202020226772616465223A20312C0A2020202020202020202022636F756E74223A20312C0A20202020202020202020227374726174656779223A20302C0A2020202020202020202022636F6E74726F6C4265686176696F72223A20302C0A2020202020202020202022636C75737465724D6F6465223A2066616C73650A20202020202020207D0A5D, '336c83bdd516e7283158993ba6ed2bb9', '2020-05-13 06:58:15', '2020-05-13 07:10:19', null, '0:0:0:0:0:0:0:1', '', '', 'null', 'null', 'null', 'json', 0x6E756C6C);

-- ----------------------------
-- Table structure for config_info_aggr
-- ----------------------------
DROP TABLE IF EXISTS `config_info_aggr`;
CREATE TABLE `config_info_aggr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT '内容',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfoaggr_datagrouptenantdatum` (`data_id`,`group_id`,`tenant_id`,`datum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='增加租户字段';

-- ----------------------------
-- Records of config_info_aggr
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS `config_info_beta`;
CREATE TABLE `config_info_beta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `beta_ips` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT 'betaIps',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfobeta_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info_beta';

-- ----------------------------
-- Records of config_info_beta
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS `config_info_tag`;
CREATE TABLE `config_info_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tag_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfotag_datagrouptenanttag` (`data_id`,`group_id`,`tenant_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info_tag';

-- ----------------------------
-- Records of config_info_tag
-- ----------------------------

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS `config_tags_relation`;
CREATE TABLE `config_tags_relation` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `tag_name` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `uk_configtagrelation_configidtag` (`id`,`tag_name`,`tag_type`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_tag_relation';

-- ----------------------------
-- Records of config_tags_relation
-- ----------------------------

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS `group_capacity`;
CREATE TABLE `group_capacity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
  `quota` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数，，0表示使用默认值',
  `max_aggr_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='集群、各Group容量信息表';

-- ----------------------------
-- Records of group_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS `his_config_info`;
CREATE TABLE `his_config_info` (
  `id` bigint(64) unsigned NOT NULL,
  `nid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL,
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL,
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00',
  `src_user` text COLLATE utf8_bin,
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `op_type` char(10) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`nid`),
  KEY `idx_gmt_create` (`gmt_create`),
  KEY `idx_gmt_modified` (`gmt_modified`),
  KEY `idx_did` (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='多租户改造';

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
INSERT INTO `his_config_info` VALUES ('13', '55', 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 0x636F6E6669673A200A20202020696E666F3A2066726F6D20636F6E6669672063656E746572202C206E61636F732D636F6E6669672D636C69656E742D6465762E79616D6C202C2076657273696F6E203D20323B0A6E61636F733A0A2020636F6E6669673A0A202020207365727665725F616464723A203132372E302E302E313A383834380A20202020646174615F69643A207A75756C2D726566726573682D6465762E6A736F6E0A2020202067726F75703A2044454641554C545F47524F55500A202020206E616D6573706163653A2066666135323731382D656138392D343531302D613361392D633030383561653562613637, '86b25d1f77126b44ac9f37cc0d12bc16', '2010-05-05 00:00:00', '2021-12-13 06:09:42', 0x6E61636F73, '49.157.30.149', 'U', '');
INSERT INTO `his_config_info` VALUES ('13', '56', 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 0x636F6E6669673A200A20202020696E666F3A2066726F6D20636F6E6669672063656E746572202C206E61636F732D636F6E6669672D636C69656E742D6465762E79616D6C202C2076657273696F6E203D20323B0A6E61636F733A0A2020636F6E6669673A0A202020207365727665725F616464723A2034332E3135342E37302E31343A383834380A20202020646174615F69643A207A75756C2D726566726573682D6465762E6A736F6E0A2020202067726F75703A2044454641554C545F47524F55500A202020206E616D6573706163653A2066666135323731382D656138392D343531302D613361392D633030383561653562613637, '7c728a2222abd1a19514858becf6d4c2', '2010-05-05 00:00:00', '2021-12-13 06:10:19', 0x6E61636F73, '49.157.30.149', 'U', '');
INSERT INTO `his_config_info` VALUES ('19', '57', 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', 0x7B0A20202020227265667265736847617465776179526F757465223A747275652C0A2020202022726F7574654C697374223A5B0A20202020202020207B0A202020202020202020202020226964223A226769746875625F726F757465222C0A2020202020202020202020202270726564696361746573223A5B0A202020202020202020202020202020207B0A2020202020202020202020202020202020202020226E616D65223A2250617468222C0A20202020202020202020202020202020202020202261726773223A7B0A202020202020202020202020202020202020202020202020225F67656E6B65795F30223A222F61220A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020205D2C0A2020202020202020202020202266696C74657273223A5B0A0A2020202020202020202020205D2C0A20202020202020202020202022757269223A2268747470733A2F2F6769746875622E636F6D222C0A202020202020202020202020226F72646572223A300A20202020202020207D0A202020205D0A7D, '33c9d01db8bbd63b2c45f9cfedefcd34', '2010-05-05 00:00:00', '2021-12-13 06:37:38', 0x6E61636F73, '49.157.30.149', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES ('19', '58', 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', 0x7B0A20202020227265667265736847617465776179526F757465223A747275652C0A2020202022726F7574654C697374223A5B0A20202020202020207B0A202020202020202020202020226964223A226769746875625F726F757465222C0A2020202020202020202020202270726564696361746573223A5B0A202020202020202020202020202020207B0A2020202020202020202020202020202020202020226E616D65223A2250617468222C0A20202020202020202020202020202020202020202261726773223A7B0A202020202020202020202020202020202020202020202020225F67656E6B65795F30223A222F61220A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020205D2C0A2020202020202020202020202266696C74657273223A5B0A0A2020202020202020202020205D2C0A20202020202020202020202022757269223A2268747470733A2F2F6769746875622E636F222C0A202020202020202020202020226F72646572223A300A20202020202020207D0A202020205D0A7D, 'b55b165d2f1b626384e602718b421148', '2010-05-05 00:00:00', '2021-12-13 06:38:00', 0x6E61636F73, '49.157.30.149', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `role` varchar(50) NOT NULL,
  `resource` varchar(255) NOT NULL,
  `action` varchar(8) NOT NULL,
  UNIQUE KEY `uk_role_permission` (`role`,`resource`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `username` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('nacos', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS `tenant_capacity`;
CREATE TABLE `tenant_capacity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tenant_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数',
  `max_aggr_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='租户容量信息表';

-- ----------------------------
-- Records of tenant_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_info_kptenantid` (`kp`,`tenant_id`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='tenant_info';

-- ----------------------------
-- Records of tenant_info
-- ----------------------------
INSERT INTO `tenant_info` VALUES ('2', '1', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67', 'gateway', '.', 'nacos', '1587305881420', '1587305881420');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('nacos', '$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu', '1');
