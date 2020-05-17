/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : nacos_config

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 18/05/2020 01:17:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info';

-- ----------------------------
-- Records of config_info
-- ----------------------------
BEGIN;
INSERT INTO `config_info` VALUES (1, 'nacos-config-client-dev.yaml', 'DEV_GROUP', 'config: \n    info: f8e7cd7d-1be4-4741-ac07-d121af35b925 , nacos-config-client-dev.yaml , DEV_GROUP , version =1 ', '76108948bfda04b275e0616a862a129c', '2020-04-18 00:38:33', '2020-04-18 00:38:33', NULL, '0:0:0:0:0:0:0:1', '', 'f8e7cd7d-1be4-4741-ac07-d121af35b925', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (13, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', 'config: \n    info: from config center , nacos-config-client-dev.yaml , version = 2;\nnacos:\n  config:\n    server_addr: 127.0.0.1:8848\n    data_id: zuul-refresh-dev.json\n    group: DEFAULT_GROUP\n    namespace: ffa52718-ea89-4510-a3a9-c0085ae5ba67', '86b25d1f77126b44ac9f37cc0d12bc16', '2020-04-19 20:48:49', '2020-04-20 05:24:55', NULL, '0:0:0:0:0:0:0:1', '', '', 'null', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (19, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '33c9d01db8bbd63b2c45f9cfedefcd34', '2020-04-19 22:22:04', '2020-04-20 06:19:43', NULL, '0:0:0:0:0:0:0:1', '', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67', 'null', 'null', 'null', 'json', 'null');
INSERT INTO `config_info` VALUES (20, 'cloudalibaba-sentinel-service', 'DEFAULT_GROUP', ' [\n        {\n          \"resource\": \"/rateLimit/byUrl\",\n          \"limitApp\": \"default\",\n          \"grade\": 1,\n          \"count\": 1,\n          \"strategy\": 0,\n          \"controlBehavior\": 0,\n          \"clusterMode\": false\n        }\n]', '336c83bdd516e7283158993ba6ed2bb9', '2020-05-13 06:58:15', '2020-05-13 07:10:19', NULL, '0:0:0:0:0:0:0:1', '', '', 'null', 'null', 'null', 'json', 'null');
COMMIT;

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
BEGIN;
COMMIT;

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
BEGIN;
COMMIT;

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
BEGIN;
COMMIT;

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
BEGIN;
COMMIT;

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
BEGIN;
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='多租户改造';

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
BEGIN;
INSERT INTO `his_config_info` VALUES (0, 2, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: nacos config center , nacos-config-client-dev.yaml , version = 1', 'e37c54574a4d57717f939f30cb821a3d', '2010-05-05 00:00:00', '2020-04-18 07:29:30', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (2, 3, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: nacos config center , nacos-config-client-dev.yaml , version = 1', 'e37c54574a4d57717f939f30cb821a3d', '2010-05-05 00:00:00', '2020-04-18 07:31:05', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (2, 4, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: nacos config center , nacos-config-client-dev.yaml , version = 2', '1daa8a34e46207d835c79373bacabd62', '2010-05-05 00:00:00', '2020-04-18 07:31:22', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (2, 5, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: nacos config center , nacos-config-client-dev.yaml , version = 1', 'e37c54574a4d57717f939f30cb821a3d', '2010-05-05 00:00:00', '2020-04-19 18:48:47', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (2, 6, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: nacos config center , nacos-config-client-dev.yaml , version = 2', '1daa8a34e46207d835c79373bacabd62', '2010-05-05 00:00:00', '2020-04-19 18:49:38', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (0, 7, 'sc-gateway', 'matthew_test', '', '{\n	\"filters\": [],\n	\"id\": \"jd_route\",\n	\"order\": 0,\n	\"predicates\": [{\n		\"args\": {\n			\"pattern\": \"/jd\"\n		},\n		\"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.jd.com\"\n}', '3f7c6a4b8578d05c1d7c28348016890d', '2010-05-05 00:00:00', '2020-04-19 19:03:34', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (7, 8, 'sc-gateway', 'matthew_test', '', '{\n	\"filters\": [],\n	\"id\": \"jd_route\",\n	\"order\": 0,\n	\"predicates\": [{\n		\"args\": {\n			\"pattern\": \"/jd\"\n		},\n		\"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.jd.com\"\n}', '3f7c6a4b8578d05c1d7c28348016890d', '2010-05-05 00:00:00', '2020-04-19 19:15:21', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (7, 9, 'sc-gateway', 'matthew_test', '', '{\n    \"filters\": [],\n    \"id\": \"jd_route\",\n    \"order\": 0,\n    \"predicates\": [{\n        \"args\": {\n            \"pattern\": \"/jd\"\n        },\n        \"name\": \"Path\"\n    }],\n    \"uri\": \"http://www.jd.com\"\n}', '0eb9f870c132ed01ce8bc9282df5be08', '2010-05-05 00:00:00', '2020-04-19 20:12:05', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (0, 10, 'gateway_config_json', 'refresh_config_json', '', '[{\n    \"filters\": [{\n         \"args\": {\n            \"parts\": \"1\"\n        },\n        \"name\": \"StripPrefix\"\n    }],\n    \"id\": \"hello-service\",\n    \"order\": 0,\n    \"predicates\": [{\n        \"args\": {\n            \"pattern\": \"/hello-service/**\"\n        },\n        \"name\": \"Path\"\n    }],\n    \"uri\": \"lb://hello-service\"\n},{\n    \"filters\": [{\n         \"args\": {\n            \"parts\": \"1\"\n        },\n        \"name\": \"StripPrefix\"\n    }],\n    \"id\": \"eat-service\",\n    \"order\": 0,\n    \"predicates\": [{\n        \"args\": {\n            \"pattern\": \"/eat-service/**\"\n        },\n        \"name\": \"Path\"\n    }],\n    \"uri\": \"lb://eat-service\"\n}]', '532059a8588c20c3feaa89696852c8bb', '2010-05-05 00:00:00', '2020-04-19 20:13:34', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 11, 'gateway-server.yml', 'pay', '', 'spring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: ${spring.cloud.nacos.config.server-addr}\n      locator:\n          enabled: true\n          lowerCaseServiceId: true\n\n        \nnacos:\n  dataId: gateway_config_json\n  group: refresh_config_json\n\nserver:\n  port: 5008\n\n# 配置输出日志\nlogging:\n  level:\n    org.springframework.cloud.gateway: TRACE\n    org.springframework.http.server.reactive: DEBUG\n    org.springframework.web.reactive: DEBUG\n    reactor.ipc.netty: DEBUG\n\n#开启端点\nmanagement:\n  endpoints:\n    web:\n      exposure:\n        include: \'*\'\n  security:\n    enabled: false', 'bcad7c52b5bf9661da0328bb191d285a', '2010-05-05 00:00:00', '2020-04-19 20:17:59', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (9, 12, 'gateway_config_json', 'refresh_config_json', '', '[{\n    \"filters\": [{\n         \"args\": {\n            \"parts\": \"1\"\n        },\n        \"name\": \"StripPrefix\"\n    }],\n    \"id\": \"hello-service\",\n    \"order\": 0,\n    \"predicates\": [{\n        \"args\": {\n            \"pattern\": \"/hello-service/**\"\n        },\n        \"name\": \"Path\"\n    }],\n    \"uri\": \"lb://hello-service\"\n},{\n    \"filters\": [{\n         \"args\": {\n            \"parts\": \"1\"\n        },\n        \"name\": \"StripPrefix\"\n    }],\n    \"id\": \"eat-service\",\n    \"order\": 0,\n    \"predicates\": [{\n        \"args\": {\n            \"pattern\": \"/eat-service/**\"\n        },\n        \"name\": \"Path\"\n    }],\n    \"uri\": \"lb://eat-service\"\n}]', '532059a8588c20c3feaa89696852c8bb', '2010-05-05 00:00:00', '2020-04-19 20:21:20', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (9, 13, 'gateway_config_json', 'refresh_config_json', '', '[{\n    \"filters\": [{\n         \"args\": {\n            \"parts\": \"1\"\n        },\n        \"name\": \"StripPrefix\"\n    }],\n    \"id\": \"hello-service\",\n    \"order\": 0,\n    \"predicates\": [{\n        \"args\": {\n            \"pattern\": \"/hello-service/**\"\n        },\n        \"name\": \"Path\"\n    }],\n    \"uri\": \"www.baidu.com\"\n},{\n    \"filters\": [{\n         \"args\": {\n            \"parts\": \"1\"\n        },\n        \"name\": \"StripPrefix\"\n    }],\n    \"id\": \"eat-service\",\n    \"order\": 0,\n    \"predicates\": [{\n        \"args\": {\n            \"pattern\": \"/eat-service/**\"\n        },\n        \"name\": \"Path\"\n    }],\n    \"uri\": \"lb://eat-service\"\n}]', '7a631b50534b28a4464bc751e7df04ea', '2010-05-05 00:00:00', '2020-04-19 20:26:10', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (10, 14, 'gateway-server.yml', 'pay', '', 'spring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: ${spring.cloud.nacos.config.server-addr}\n      locator:\n          enabled: true\n          lowerCaseServiceId: true\n\n        \nnacos:\n  dataId: gateway_config_json\n  group: refresh_config_json\n\nserver:\n  port: 5008\n\n# 配置输出日志\nlogging:\n  level:\n    org.springframework.cloud.gateway: TRACE\n    org.springframework.http.server.reactive: DEBUG\n    org.springframework.web.reactive: DEBUG\n    reactor.ipc.netty: DEBUG\n\n#开启端点\nmanagement:\n  endpoints:\n    web:\n      exposure:\n        include: \'*\'\n  security:\n    enabled: false', 'bcad7c52b5bf9661da0328bb191d285a', '2010-05-05 00:00:00', '2020-04-19 20:34:36', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (9, 15, 'gateway_config_json', 'refresh_config_json', '', '[\n	{\n	\"filters\": [],\n	\"id\": \"blog1\",\n	\"order\": 0,\n	\"predicates\": [{\n		\"args\": {\n			\"pattern\": \"/z\"\n		},\n		\"name\": \"Path\"\n	}],\n	\"uri\": \"https://blog.csdn.net/zhangchangbin123\"\n},\n {\n	\"filters\": [],\n	\"id\": \"blog1\",\n	\"order\": 0,\n	\"predicates\": [{\n		\"args\": {\n			\"pattern\": \"/c\"\n		},\n		\"name\": \"Path\"\n	}],\n	\"uri\": \"https://blog.csdn.net/zhangchangbin123\"\n}\n]', '4830ed0338e7ed8ab898857733b20d7e', '2010-05-05 00:00:00', '2020-04-19 20:34:40', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (2, 16, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: nacos config center , nacos-config-client-dev.yaml , version = 2', '1daa8a34e46207d835c79373bacabd62', '2010-05-05 00:00:00', '2020-04-19 20:48:06', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (0, 17, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: from config center , nacos-config-client-dev.yaml , version = ;', 'dabc3d7540962008b8324737082052ca', '2010-05-05 00:00:00', '2020-04-19 20:48:49', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (13, 18, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: from config center , nacos-config-client-dev.yaml , version = ;', 'dabc3d7540962008b8324737082052ca', '2010-05-05 00:00:00', '2020-04-19 20:51:06', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 19, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: from config center , nacos-config-client-dev.yaml , version = 2;', '82a5e538cd1bbce8a3292f82ff2380b3', '2010-05-05 00:00:00', '2020-04-19 20:55:10', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 20, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: from config center , nacos-config-client-dev.yaml , version = 2;\nserver: \n    port: 3377', 'caf437151b3e391922abe9bbf60aa908', '2010-05-05 00:00:00', '2020-04-19 20:58:38', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 21, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: from config center , nacos-config-client-dev.yaml , version = 2;\nserver: \n    port: 3378', 'b7320c4141613d0b49d421cc93475d38', '2010-05-05 00:00:00', '2020-04-19 21:01:51', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (0, 22, 'dhap-gateway', 'AAAA', '', '[\n	{\n	\"filters\": [],\n	\"id\": \"blog1\",\n	\"order\": 0,\n	\"predicates\": [{\n		\"args\": {\n			\"pattern\": \"/z\"\n		},\n		\"name\": \"Path\"\n	}],\n	\"uri\": \"https://blog.csdn.net/zhangchangbin123\"\n},\n {\n	\"filters\": [],\n	\"id\": \"blog1\",\n	\"order\": 0,\n	\"predicates\": [{\n		\"args\": {\n			\"pattern\": \"/c\"\n		},\n		\"name\": \"Path\"\n	}],\n	\"uri\": \"https://blog.csdn.net/zhangchangbin123\"\n}\n]', '4830ed0338e7ed8ab898857733b20d7e', '2010-05-05 00:00:00', '2020-04-19 21:35:26', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (18, 23, 'dhap-gateway', 'AAAA', '', '[\n	{\n	\"filters\": [],\n	\"id\": \"blog1\",\n	\"order\": 0,\n	\"predicates\": [{\n		\"args\": {\n			\"pattern\": \"/z\"\n		},\n		\"name\": \"Path\"\n	}],\n	\"uri\": \"https://blog.csdn.net/zhangchangbin123\"\n},\n {\n	\"filters\": [],\n	\"id\": \"blog1\",\n	\"order\": 0,\n	\"predicates\": [{\n		\"args\": {\n			\"pattern\": \"/c\"\n		},\n		\"name\": \"Path\"\n	}],\n	\"uri\": \"https://blog.csdn.net/zhangchangbin123\"\n}\n]', '4830ed0338e7ed8ab898857733b20d7e', '2010-05-05 00:00:00', '2020-04-19 22:16:39', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (0, 24, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":false,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/meteor1993\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', 'ef3e8b95d8f4a71b1e439821bda77023', '2010-05-05 00:00:00', '2020-04-19 22:22:04', NULL, '0:0:0:0:0:0:0:1', 'I', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 25, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":false,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/meteor1993\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', 'ef3e8b95d8f4a71b1e439821bda77023', '2010-05-05 00:00:00', '2020-04-19 22:37:55', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 26, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/meteor1993\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '89a7c9e56f0a9bd52419d4261ded41a8', '2010-05-05 00:00:00', '2020-04-19 22:50:26', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 27, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"pattern\":\"/a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', 'e2cd2696947f57a7c7ce8732fc857e2d', '2010-05-05 00:00:00', '2020-04-19 23:08:02', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 28, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"pattern\":\"\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '42dc282d905641ba4c147d68f17c06b8', '2010-05-05 00:00:00', '2020-04-19 23:24:33', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 29, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"pattern\":\"a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '001edf08e8253a07174a326e6b76f0d5', '2010-05-05 00:00:00', '2020-04-19 23:25:15', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 30, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"pattern\":\"\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '42dc282d905641ba4c147d68f17c06b8', '2010-05-05 00:00:00', '2020-04-19 23:27:06', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 31, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"pattern\":\"/a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', 'e2cd2696947f57a7c7ce8732fc857e2d', '2010-05-05 00:00:00', '2020-04-19 23:29:37', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 32, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '33c9d01db8bbd63b2c45f9cfedefcd34', '2010-05-05 00:00:00', '2020-04-19 23:33:54', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 33, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '579d087c91f2fde6fadbd3ce853cf970', '2010-05-05 00:00:00', '2020-04-20 04:55:12', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 34, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '6c5587f2dd3ae22060220dd49b8aa333', '2010-05-05 00:00:00', '2020-04-20 04:56:24', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 35, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '33c9d01db8bbd63b2c45f9cfedefcd34', '2010-05-05 00:00:00', '2020-04-20 04:59:31', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 36, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '579d087c91f2fde6fadbd3ce853cf970', '2010-05-05 00:00:00', '2020-04-20 05:02:42', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 37, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '33c9d01db8bbd63b2c45f9cfedefcd34', '2010-05-05 00:00:00', '2020-04-20 05:06:30', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 38, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '579d087c91f2fde6fadbd3ce853cf970', '2010-05-05 00:00:00', '2020-04-20 05:14:37', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 39, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '33c9d01db8bbd63b2c45f9cfedefcd34', '2010-05-05 00:00:00', '2020-04-20 05:16:55', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (13, 40, 'nacos-config-client-dev.yaml', 'DEFAULT_GROUP', '', 'config: \n    info: from config center , nacos-config-client-dev.yaml , version = 2;', '82a5e538cd1bbce8a3292f82ff2380b3', '2010-05-05 00:00:00', '2020-04-20 05:24:55', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (19, 41, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '579d087c91f2fde6fadbd3ce853cf970', '2010-05-05 00:00:00', '2020-04-20 05:26:41', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 42, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '33c9d01db8bbd63b2c45f9cfedefcd34', '2010-05-05 00:00:00', '2020-04-20 05:34:27', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 43, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '579d087c91f2fde6fadbd3ce853cf970', '2010-05-05 00:00:00', '2020-04-20 05:40:17', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 44, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '33c9d01db8bbd63b2c45f9cfedefcd34', '2010-05-05 00:00:00', '2020-04-20 05:44:05', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 45, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '579d087c91f2fde6fadbd3ce853cf970', '2010-05-05 00:00:00', '2020-04-20 05:44:49', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 46, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '33c9d01db8bbd63b2c45f9cfedefcd34', '2010-05-05 00:00:00', '2020-04-20 05:45:22', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 47, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '579d087c91f2fde6fadbd3ce853cf970', '2010-05-05 00:00:00', '2020-04-20 06:09:26', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 48, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/a\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '33c9d01db8bbd63b2c45f9cfedefcd34', '2010-05-05 00:00:00', '2020-04-20 06:16:21', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (19, 49, 'zuul-refresh-dev.json', 'DEFAULT_GROUP', '', '{\n    \"refreshGatewayRoute\":true,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}', '579d087c91f2fde6fadbd3ce853cf970', '2010-05-05 00:00:00', '2020-04-20 06:19:43', NULL, '0:0:0:0:0:0:0:1', 'U', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67');
INSERT INTO `his_config_info` VALUES (0, 50, 'cloudalibaba-sentinel-service', 'DEFAULT_GROUP', '', '{\n	\"resource\": \"/rateLimit/byUrl\",\n	\"limitApp\": \"default\",\n	\"grade\": 1,\n	\"count\": 1,\n	\"strategy\": 0,\n	\"controlBehavior\": 0,\n	\"clusterMode\": false\n}', 'e0ebea12114b632a13c0e93b4e952059', '2010-05-05 00:00:00', '2020-05-13 06:58:15', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (20, 51, 'cloudalibaba-sentinel-service', 'DEFAULT_GROUP', '', '{\n	\"resource\": \"/rateLimit/byUrl\",\n	\"limitApp\": \"default\",\n	\"grade\": 1,\n	\"count\": 1,\n	\"strategy\": 0,\n	\"controlBehavior\": 0,\n	\"clusterMode\": false\n}', 'e0ebea12114b632a13c0e93b4e952059', '2010-05-05 00:00:00', '2020-05-13 07:01:03', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (20, 52, 'cloudalibaba-sentinel-service', 'DEFAULT_GROUP', '', '{\n	\"resource\": \"/rateLimit/byUrl\",\n	\"limitApp\": \"default\",\n	\"grade\": 1,\n	\"count\": 1,\n	\"strategy\": 0,\n	\"controlBehavior\": 0,\n	\"clusterMode\": false\n}', 'e0ebea12114b632a13c0e93b4e952059', '2010-05-05 00:00:00', '2020-05-13 07:03:19', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (20, 53, 'cloudalibaba-sentinel-service', 'DEFAULT_GROUP', '', '[\n	{\n		\"resource\": \"/rateLimit/byUrl\",\n		\"limitApp\": \"default\",\n		\"grade\": 1,\n		\"count\": 1,\n		\"strategy\": 0,\n		\"controlBehavior\": 0,\n		\"clusterMode\": false\n	}\n]', 'fa991849679d5fb66b4c3c6e21200935', '2010-05-05 00:00:00', '2020-05-13 07:08:33', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (20, 54, 'cloudalibaba-sentinel-service', 'DEFAULT_GROUP', '', '[\n	\n]', 'ba3c5689ada6e5edc30ad6e7485de4f2', '2010-05-05 00:00:00', '2020-05-13 07:10:19', NULL, '0:0:0:0:0:0:0:1', 'U', '');
COMMIT;

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
BEGIN;
INSERT INTO `roles` VALUES ('nacos', 'ROLE_ADMIN');
COMMIT;

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
BEGIN;
COMMIT;

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
BEGIN;
INSERT INTO `tenant_info` VALUES (2, '1', 'ffa52718-ea89-4510-a3a9-c0085ae5ba67', 'gateway', '.', 'nacos', 1587305881420, 1587305881420);
COMMIT;

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
BEGIN;
INSERT INTO `users` VALUES ('nacos', '$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
